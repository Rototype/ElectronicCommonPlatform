/**************/
/* inclusions */
/**************/

#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"
#include "queue.h"

#include "portmacro.h"
#include "xil_types.h"
#include "xil_printf.h"

#include "task_dcm.h"

#include "common.h"
#include "defines_c2c.h"
#include "DCM.h"

#include "protocol.h"
#include "task_spi.h"



/***********/
/* defines */
/***********/

#define OBJ_SPI   (0u)

#define TASK_DCM_REGISTRATION_WAIT   (1000 / portTICK_PERIOD_MS)

typedef struct
{
	u32	 objectId;
}
registrationDCM_s;

#define QUEUE_LENGTH            (1u)
#define COMMAND_SIZE            (sizeof(receivedData_t))

#define COMMAND_WAIT            (portMAX_DELAY)
#define ANSWER_WAIT				(10 / portTICK_PERIOD_MS)



/********************/
/* global variables */
/********************/

/* devices structures */
DCM_t              TASK_DCM_device[TASK_DCM_NUM_DEVICES_CMN];					/* no CMN device */

/* semaphores to access devices */
SemaphoreHandle_t  TASK_DCM_xSemaphoreDevice[TASK_DCM_NUM_DEVICES];


/* array to store tasks registrations */
registrationDCM_s  TASK_DCM_registration[TASK_DCM_NUM_DEVICES];


/* registration semaphore to read/write registration table */
SemaphoreHandle_t  TASK_DCM_xSemaphoreRegistration;

/* queue handle to receive commands */
QueueHandle_t      TASK_DCM_xQueueCommands = NULL;




/**************/
/* prototypes */
/**************/

            u32 TASK_DCM_Initialize(void);

static     void prvTask_DCM_ServeCommands(void *pvParameters);

             u8 TASK_DCM_TakeDevice(u32 objectId, u8 deviceId, u32 timeoutDeviceSeconds);
			 u8 TASK_DCM_ReleaseDevice(u32 objectId, u8 deviceId);
             u8 TASK_DCM_Activate(u32 objectId, u8 deviceId, u8 pwmValue, u8 pwmFrequency, DCM_direction_t direction);
             u8 TASK_DCM_Deactivate(u32 objectId, u8 deviceId);
             u8 TASK_DCM_SetBrake(u32 objectId, u8 deviceId, u8 brakeMode);
             u8 TASK_DCM_IsRunning(u8 deviceId);
DCM_direction_t TASK_DCM_GetDirection(u8 deviceId);
             u8 TASK_DCM_IsBraked(u8 deviceId);

static     void TASK_DCM_Register(u32 objectId, u8 deviceId);
static       u8 TASK_DCM_CheckRegistration(u32 objectId, u8 deviceId);
static     void TASK_DCM_ClearRegistration(u8 deviceId);


/******************************************************************************/
/* TASK_DCM_Initialize executes the module initialisation                     */
/******************************************************************************/

u32 TASK_DCM_Initialize(void)
{
	u32          result = PASS;
    u8           i;
    BaseType_t   xStatus;

    /* initialise devices */
	for (i = 0u; i < TASK_DCM_NUM_DEVICES; i++)
	{
		DCM_Init(&TASK_DCM_device[i]);
	}

	/* configure devices */
		for (i = 0u; i < TASK_DCM_NUM_DEVICES; i++)
		{
			DCM_Configure(&TASK_DCM_device[i], XPAR_DCM_6_DCM_REGS_0_S00_AXI_BASEADDR, i);
			// configASSERT(TASK_DCM_device[i].status == REQ_OK);
			if (TASK_DCM_device[i].status != REQ_OK)
			{
				result = FAIL;
			}
 		}

	/* create semaphore for registration table (the semaphore is taken) */
	TASK_DCM_xSemaphoreRegistration = xSemaphoreCreateBinary();
	if (TASK_DCM_xSemaphoreRegistration == NULL)
	{
		result = FAIL;
	}
	/* release semaphore */
	xSemaphoreGive(TASK_DCM_xSemaphoreRegistration);

    /* initialise the registration array */
    for (i = 0u; i < TASK_DCM_NUM_DEVICES; i++)
    {
    	TASK_DCM_ClearRegistration(i);
    }

	/* create semaphore for devices access (the semaphore is taken) */
    for (i=0u; i < TASK_DCM_NUM_DEVICES; i++)
    {
    	TASK_DCM_xSemaphoreDevice[i] = xSemaphoreCreateBinary();
    	if (TASK_DCM_xSemaphoreDevice[i] == NULL)
    	{
    		result = FAIL;
    	}
    	/* release semaphore */
    	xSemaphoreGive(TASK_DCM_xSemaphoreDevice[i]);
    }

    /* create queue to receive commands */
    TASK_DCM_xQueueCommands = xQueueCreate(QUEUE_LENGTH, COMMAND_SIZE);
    if (TASK_DCM_xQueueCommands == NULL)
    {
    	result = FAIL;
    }

    /* Create the task to manage commands */
    xStatus = xTaskCreate(prvTask_DCM_ServeCommands,    /* The function that implements the task. */
                          "Task_PHS_CMDS",              /* The text name assigned to the task - for debug only. */
                          512,							// configMINIMAL_STACK_SIZE,     /* The size of the stack to allocate to the task. (128) */
        				  (void *)OBJ_SPI,              /* The parameter passed to the task. */
                          TASK_DCM_COMMANDS_PRIORITY,   /* The priority assigned to the task. */
                          NULL);                        /* The task handle. */

    if ( xStatus != pdPASS )
    {
    	result = FAIL;
    }

	return (result);
}



/******************************************************************************/
/* task that serves commands via SPI                                          */
/******************************************************************************/

static void prvTask_DCM_ServeCommands(void *pvParameters)
{
    receivedData_t  received;
    answersData_t   answer;

    u32   objectId = (u32)pvParameters;

    xil_printf("task DCM started\n\r");

    /* enter the loop that defines the task behaviour */
    for( ;; )
    {
    	/* wait for a command from parser */
        if (xQueueReceive(TASK_DCM_xQueueCommands, &received, COMMAND_WAIT) == pdPASS)
    	{
			/* decode command */
    		switch (received.opCode)
    		{
    			/******************/
    			/* Start DC Motor */
    			/******************/
    			case CMD_START_DC_MOTOR:
    			{
    				u8  result;

    			    u8  deviceId  = (u8) received.deviceId;
    				u16 commandId =      received.dirCommand;
    				u8  pwmValue  = (u8) received.pwm;
    				u8  pwmFreq   = (u8) received.pwmFreq;

    				/* take the device */
    				result = TASK_DCM_TakeDevice(objectId, deviceId, 0u);

    				if (result == PASS)
    				{
    					/* if command = brake */
    					if (commandId == 0u)
    					{
    						/* set brake */
    						result = TASK_DCM_SetBrake(objectId,
    								         		   deviceId,
											           1u);				/* brakeMode: braked */
    					}
    					else
    					{
    						DCM_direction_t direction;

    						/* determine the direction */
    						direction = (DCM_direction_t)(commandId-1u);

    						/*  activate */
    						result = TASK_DCM_Activate(objectId, deviceId, pwmValue, pwmFreq, direction);
    					}
    				}

					/* build answer */
    				answer.opCode         = RESP_START_DC_MOTOR;
    				answer.options        = 0x0000u;
    				answer.status         = (result == PASS) ? 0x0000u : 0xFFFFu;

    				/* send answer back */
    				xQueueSend(TASK_SPI_xQueueTx, &answer, ANSWER_WAIT);
    				break;
    			}
    			/*****************/
    			/* Stop DC Motor */
    			/*****************/
    			case CMD_STOP_DC_MOTOR:
    			{
    				u8  result;

    				u8  deviceId = received.deviceId;

    				/* if braked */
    				if (TASK_DCM_IsBraked(deviceId) == TRUE)
    				{
    					/* unbrake */
						result = TASK_DCM_SetBrake(objectId, deviceId, 0u);			/* 0 = brakeMode: unbraked */
    				}
    				/* else */
    				{
    					/* deactivate */
    					result = TASK_DCM_Deactivate(objectId, deviceId);
    				}

    				if (result == PASS)
    				{
    					/* release */
    					result = TASK_DCM_ReleaseDevice(objectId, deviceId);
    				}

    				/* build answer */
    				answer.opCode         = RESP_STOP_DC_MOTOR;
    				answer.options        = 0x0000u;
    				answer.status         = (result == PASS) ? 0x0000u : 0xFFFFu;

    				/* send answer back */
    				xQueueSend(TASK_SPI_xQueueTx, &answer, ANSWER_WAIT);
    				break;
    			}
    			default:
    			{
    				break;
    			}
    		}
    	}
    }
}



/******************************************************************************/
/* TASK_DCM_TakeDevice register the device to be used by the specified object */
/* returns FAIL if the device is not available within the timeout             */
/* it must be released with TASK_DCM_Deactivate                               */
/******************************************************************************/

u8 TASK_DCM_TakeDevice(u32 objectId, u8 deviceId, u32 timeoutDeviceSeconds)
{
	u8   result  = FAIL;

	/* take the device semaphore */
	if (xSemaphoreTake(TASK_DCM_xSemaphoreDevice[deviceId], ((timeoutDeviceSeconds*1000)/portTICK_PERIOD_MS)) == pdPASS)
	{
		/* register */
		TASK_DCM_Register(objectId, deviceId);

		result = PASS;
	}
	return (result);
}



/******************************************************************************/
/* TASK_DCM_ReleaseDevice releases the device                                 */
/* returns FAIL if the device is not held by the object task                  */
/******************************************************************************/

u8 TASK_DCM_ReleaseDevice(u32 objectId, u8 deviceId)
{
	u8   result  = FAIL;

	if (TASK_DCM_CheckRegistration(objectId, deviceId) == PASS)
	{
		/* cancel registration */
		TASK_DCM_ClearRegistration(deviceId);

		/* release device semaphore */
		xSemaphoreGive(TASK_DCM_xSemaphoreDevice[deviceId]);

		result = PASS;
	}

	return (result);
}



/******************************************************************************/
/* TASK_DCM_Activate activates the DC motor                                   */
/* returns FAIL if the device is not held by the object task                  */
/******************************************************************************/

u8 TASK_DCM_Activate(u32 objectId, u8 deviceId, u8 pwmValue, u8 pwmFrequency, DCM_direction_t direction)
{
	u8      result  = FAIL;
	DCM_t  *dcm     = &TASK_DCM_device[deviceId];

	/* check if registered for the device */
	if (TASK_DCM_CheckRegistration(objectId, deviceId) == PASS)
	{
		/* set the pwm value */
		DCM_SetPWMValue(dcm, pwmValue);
		// configASSERT(dcm->status == REQ_OK);

		/* set the pwm frequency */
		DCM_SetPWMFrequency(dcm, pwmFrequency);
		// configASSERT(dcm->status == REQ_OK);

		/* set the direction */
		DCM_SetDirection(dcm, direction);
		// configASSERT(dcm->status == REQ_OK);

		/* run */
		DCM_SetRun(dcm);
		// configASSERT(dcm->status == REQ_OK);

		if (dcm->status != REQ_OK)
		{
			/* (return FAIL and) reset the device status */
			dcm->status = REQ_OK;
		}
		else
		{
			result = PASS;
		}
	}
	return (result);
}



/******************************************************************************/
/* TASK_DCM_Deactivate deactivates the DC motor                               */
/* returns FAIL if the device is not held by the object task                  */
/* calling this function                                                      */
/******************************************************************************/

u8 TASK_DCM_Deactivate(u32 objectId, u8 deviceId)
{
	u8      result  = FAIL;
	DCM_t  *dcm     = &TASK_DCM_device[deviceId];

	if (TASK_DCM_CheckRegistration(objectId, deviceId) == PASS)
	{
		/* set brake */
		DCM_SetBrake(dcm);
		// configASSERT(dcm->status == REQ_OK);

		/* clear brake */
		DCM_ClearBrake(dcm);
		// configASSERT(dcm->status == REQ_OK);

		/* deactivate */
		DCM_ClearRun(dcm);
		// configASSERT(dcm->status == REQ_OK);
		if(dcm->status != REQ_OK)  {  for(;;);  }

		result = PASS;
	}

	return (result);
}



/******************************************************************************/
/* TASK_DCM_SetBrake sets the DC motor brake mode (0=free, 1=braked)          */
/* returns FAIL if the device is not held by the object task                  */
/* calling this function                                                      */
/******************************************************************************/

u8 TASK_DCM_SetBrake(u32 objectId, u8 deviceId, u8 brakeMode)
{
	u8      result = FAIL;
	DCM_t  *dcm    = &TASK_DCM_device[deviceId];

	if (TASK_DCM_CheckRegistration(objectId, deviceId) == PASS)
	{
		if (brakeMode == 1)
		{
			/* set brake */
			DCM_SetBrake(dcm);
			// configASSERT(dcm->status == REQ_OK);
			if(dcm->status != REQ_OK)  {  for(;;);  }
		}
		else
		{
			/* clear brake */
			DCM_ClearBrake(dcm);
			// configASSERT(dcm->status == REQ_OK);
			if(dcm->status != REQ_OK)  {  for(;;);  }
		}

		result = PASS;
	}

	return (result);
}



/******************************************************************************/
/* TASK_DCM_IsRunning checks if the DC motor is running (1)                   */
/******************************************************************************/

u8 TASK_DCM_IsRunning(u8 deviceId)
{
	u8      result = FALSE;
	DCM_t  *dcm    = &TASK_DCM_device[deviceId];
	DCM_status_run_t status;

	/* check if device is running */
	status = DCM_GetStatusRun(dcm);
	// configASSERT(dcm->status == REQ_OK);
	if(dcm->status != REQ_OK)  {  for(;;);  }

	if (status == STATUS_RUNNING)
	{
		result = TRUE;
	}
	return (result);
}



/******************************************************************************/
/* TASK_DCM_GetDirection returns the DC motor direction                       */
/******************************************************************************/

DCM_direction_t TASK_DCM_GetDirection(u8 deviceId)
{
	DCM_t           *dcm = &TASK_DCM_device[deviceId];
	DCM_direction_t  direction;

	/* get the direction */
	direction = DCM_GetDirection(dcm);

	// configASSERT(dcm->status == REQ_OK);
	if(dcm->status != REQ_OK)  {  for(;;);  }

	return (direction);
}



/******************************************************************************/
/* TASK_DCM_IsBraked checks if the DC motor is braked  (0=free, 1=braked)     */
/******************************************************************************/

u8 TASK_DCM_IsBraked(u8 deviceId)
{
	u8      result = FALSE;
	DCM_t  *dcm    = &TASK_DCM_device[deviceId];
	DCM_status_run_t status;

	/* check if the device is braked */
	status = DCM_GetStatusRun(dcm);
	// configASSERT(dcm->status == REQ_OK);
	if(dcm->status != REQ_OK)  {  for(;;);  }

	if (status == STATUS_BRAKED)
	{
		result = TRUE;
	}
	return (result);
}



/******************************************************************************/
/* TASK_DCM_Register registers the current user of a DC motor                 */
/* stops execution if registration table is not available within              */
/* TASK_DCM_REGISTRATION_WAIT                                                 */
/******************************************************************************/

static void TASK_DCM_Register(u32 objectId, u8 deviceId)
{
	/* take registration semaphore */
	if (xSemaphoreTake(TASK_DCM_xSemaphoreRegistration, TASK_DCM_REGISTRATION_WAIT) == pdTRUE)
	{
		TASK_DCM_registration[deviceId].objectId    = objectId;

		/* release registration semaphore */
		xSemaphoreGive(TASK_DCM_xSemaphoreRegistration);

#if PRINT_DEBUG
		xil_printf ("registration for %d\n\r", objectId);
#endif
	}
	else
	{
		/* if the registration semaphore is not taken within TASK_DCM_REGISTRATION_WAIT milliseconds,
		 * there is a blocking error */
		// configASSERT(0);
		for (;;);
	}
}



/******************************************************************************/
/* TASK_DCM_CheckRegistration checks if the caller is registered as the DCM   */
/* user                                                                       */
/******************************************************************************/

static u8 TASK_DCM_CheckRegistration(u32 objectId, u8 deviceId)
{
	u8   result  = FAIL;

	if (TASK_DCM_registration[deviceId].objectId == objectId)
	{
		result = PASS;
	}

	return (result);
}



/******************************************************************************/
/* TASK_DCM_ClearRegistration clears the registration for the specified        */
/* device                                                                     */
/******************************************************************************/

static void TASK_DCM_ClearRegistration(u8 deviceId)
{
	/* take registration semaphore */
	if (xSemaphoreTake(TASK_DCM_xSemaphoreRegistration, TASK_DCM_REGISTRATION_WAIT) == pdTRUE)
	{
		TASK_DCM_registration[deviceId].objectId = TASK_DCM_UNKNOWN_OBJECT;

		/* release registration semaphore */
		xSemaphoreGive(TASK_DCM_xSemaphoreRegistration);
	}
	else
	{
		// configASSERT(0);
		for (;;);
	}
}
