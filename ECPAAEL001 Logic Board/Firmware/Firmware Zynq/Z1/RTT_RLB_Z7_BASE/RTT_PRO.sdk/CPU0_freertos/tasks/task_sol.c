/**************/
/* inclusions */
/**************/

#include "FreeRTOS.h"
#include "semphr.h"
#include "queue.h"

#include "portmacro.h"
#include "xil_types.h"
#include "xil_printf.h"

#include "task_sol.h"

#include "common.h"
#include "defines_c2c.h"
#include "solenoide.h"

#include "protocol.h"
#include "task_spi.h"


/***********/
/* defines */
/***********/

#define OBJ_SPI   (0u)

#define TASK_SOL_REGISTRATION_WAIT   (1000 / portTICK_PERIOD_MS)

typedef struct
{
	u32					objectId;
}
registrationSOL_s;

#define QUEUE_LENGTH            (1u)
#define COMMAND_SIZE            (sizeof(receivedData_t))

#define COMMAND_WAIT            (portMAX_DELAY)
#define ANSWER_WAIT				(10 / portTICK_PERIOD_MS)



/********************/
/* global variables */
/********************/

/* devices structures */
SOL_t            TASK_SOL_device[TASK_SOL_NUM_DEVICES_CMN];						/* no CMN device */

/* semaphores to access devices */
SemaphoreHandle_t    TASK_SOL_xSemaphoreDevice[TASK_SOL_NUM_DEVICES];


/* array to store tasks registrations */
registrationSOL_s    TASK_SOL_registration[TASK_SOL_NUM_DEVICES];


/* registration semaphore to read/write registration table */
SemaphoreHandle_t  TASK_SOL_xSemaphoreRegistration;

/* queue handle to receive commands */
QueueHandle_t  TASK_SOL_xQueueCommands = NULL;



/**************/
/* prototypes */
/**************/

         u32 TASK_SOL_Initialize(void);

static  void prvTask_SOL_ServeCommands(void *pvParameters);

          u8 TASK_SOL_Activate(u32 objectId, u8 deviceId, u8 pwmValue, u16 fullLoadDuration, u32 timeoutDeviceSeconds);
          u8 TASK_SOL_Deactivate(u32 objectId, u8 deviceId);
SOL_status_t TASK_SOL_IsRunning(u8 deviceId);

static  void TASK_SOL_Register(u32 objectId, u8 deviceId);
static    u8 TASK_SOL_CheckRegistration(u32 objectId, u8 deviceId);
static  void TASK_SOL_ClearRegistration(u8 deviceId);



/******************************************************************************/
/* TASK_SOL_Initialize executes the module initialisation                     */
/******************************************************************************/

u32 TASK_SOL_Initialize(void)
{
	u32          result = PASS;
    u8           i;
    BaseType_t   xStatus;

    /* initialise devices */
	for (i = 0u; i < TASK_SOL_NUM_DEVICES; i++)
	{
		SOL_Init(&TASK_SOL_device[i]);
	}

	/* configure devices */
		for (i = 0u; i < TASK_SOL_NUM_DEVICES; i++)
		{
			SOL_Configure(&TASK_SOL_device[i], XPAR_SOL_6_SOL_REGS_0_S00_AXI_BASEADDR, i);
			// configASSERT(TASK_SOL_device[i].status == REQ_OK);
			if (TASK_SOL_device[i].status != REQ_OK)
			{
				result = FAIL;
			}
 		}

	/* create semaphore for registration table (the semaphore is taken) */
	TASK_SOL_xSemaphoreRegistration = xSemaphoreCreateBinary();
	if (TASK_SOL_xSemaphoreRegistration == NULL)
	{
		result = FAIL;
	}
	/* release semaphore */
	xSemaphoreGive(TASK_SOL_xSemaphoreRegistration);

    /* initialise the registration array */
    for (i = 0u; i < TASK_SOL_NUM_DEVICES; i++)
    {
    	TASK_SOL_ClearRegistration(i);
    }

	/* create semaphore for devices access (the semaphore is taken) */
    for (i=0u; i < TASK_SOL_NUM_DEVICES; i++)
    {
    	TASK_SOL_xSemaphoreDevice[i] = xSemaphoreCreateBinary();
    	if (TASK_SOL_xSemaphoreDevice[i] == NULL)
    	{
    		result = FAIL;
    	}
    	/* release semaphore */
    	xSemaphoreGive(TASK_SOL_xSemaphoreDevice[i]);
    }

    /* create queue to receive commands */
    TASK_SOL_xQueueCommands = xQueueCreate(QUEUE_LENGTH, COMMAND_SIZE);
    if (TASK_SOL_xQueueCommands == NULL)
    {
    	result = FAIL;
    }

    /* Create the task to manage commands */
    xStatus = xTaskCreate(prvTask_SOL_ServeCommands,   /* The function that implements the task. */
                         "Task_PHS_CMDS",              /* The text name assigned to the task - for debug only. */
                         512,						   // configMINIMAL_STACK_SIZE,     /* The size of the stack to allocate to the task. (128) */
        				 (void *)OBJ_SPI,              /* The parameter passed to the task. */
                         TASK_SOL_COMMANDS_PRIORITY,   /* The priority assigned to the task. */
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

static void prvTask_SOL_ServeCommands(void *pvParameters)
{
    receivedData_t  received;
    answersData_t   answer;

    u32   objectId = (u32)pvParameters;

    xil_printf("task SOL started\n\r");

    /* enter the loop that defines the task behaviour */
    for( ;; )
    {
    	/* wait for a command from parser */
        if (xQueueReceive(TASK_SOL_xQueueCommands, &received, COMMAND_WAIT) == pdPASS)
    	{
    		/* decode command */
    		switch (received.opCode)
    		{
    		    /*********************/
         		/* Solenoid Activate */
    		    /*********************/
    			case CMD_SOLENOID_ACTIVATION:
    			{
    				u8  result;

    			    u8  deviceId = (u8) received.deviceId;
    				u16 initTime =      received.initTime;
    				u8  pwmValue = (u8) received.pwm;

    				/*  activate */
    				result = TASK_SOL_Activate(objectId, deviceId, pwmValue, initTime, 0u);

					/* build answer */
    				answer.opCode   = RESP_SOLENOID_ACTIVATION;
    				answer.options  = 0x0000u;
    				answer.status   = (result == PASS) ? 0x0000u : 0xFFFFu;

    				/* send answer back */
                    xQueueSend(TASK_SPI_xQueueTx, &answer, ANSWER_WAIT);
    				break;
    			}
    			/***********************/
    			/* Solenoid Deactivate */
    			/***********************/
    			case CMD_SOLENOID_DEACTIVATION:
    			{
    				u8  result;

    				u8  deviceId = (u8)received.deviceId;

    				/*  deactivate */
    				result = TASK_SOL_Deactivate(objectId, deviceId);

					/* build answer */
    				answer.opCode         = RESP_SOLENOID_DEACTIVATION;
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
/* TASK_SOL_Activate activates the solenoid                                   */
/* returns FAIL if the device is not available within the timeout             */
/* When the function ends, the device semaphore is not released;              */
/* it is released with TASK_SOL_Deactivate                                    */
/******************************************************************************/

u8 TASK_SOL_Activate(u32 objectId, u8 deviceId, u8 pwmValue, u16 fullLoadDuration, u32 timeoutDeviceSeconds)
{
	u8      result   = FAIL;
	SOL_t  *solenoid = &TASK_SOL_device[deviceId];

	/* take the device semaphore */
	if (xSemaphoreTake(TASK_SOL_xSemaphoreDevice[deviceId], ((timeoutDeviceSeconds*1000)/portTICK_PERIOD_MS)) == pdPASS)
	{
		/* set the pwm value */
		SOL_SetPWMValue(solenoid, pwmValue);
		// configASSERT(solenoid->status == REQ_OK);

		/* set the full load duration */
		SOL_SetFullLoadDuration(solenoid, fullLoadDuration);
		// configASSERT(solenoid->status == REQ_OK);

		/* set running */
		SOL_SetRunning(solenoid);
		// configASSERT(solenoid->status == REQ_OK);

		if (solenoid->status != REQ_OK)
		{
			/* (return FAIL and) reset the device status */
			solenoid->status = REQ_OK;
		}
		else
		{
			result = PASS;
		}

		/* register */
		TASK_SOL_Register(objectId, deviceId);

		/* the device semaphore is not released; it will be released with deactivation */
	}

	return (result);
}



/******************************************************************************/
/* TASK_SOL_Deactivate deactivates the solenoid                               */
/* returns FAIL if the device is not held by the object task                  */
/* calling this function                                                      */
/******************************************************************************/

u8 TASK_SOL_Deactivate(u32 objectId, u8 deviceId)
{
	u8      result   = FAIL;
	SOL_t  *solenoid = &TASK_SOL_device[deviceId];

	if (TASK_SOL_CheckRegistration(objectId, deviceId) == PASS)
	{
		/* deactivate */
		SOL_ClearRunning(solenoid);
		// configASSERT(solenoid->status == REQ_OK);
		if(solenoid->status != REQ_OK)  {  for(;;);  }

		/* cancel registration */
		TASK_SOL_ClearRegistration(deviceId);

		/* release device semaphore */
		xSemaphoreGive(TASK_SOL_xSemaphoreDevice[deviceId]);

		result = PASS;
	}

	return (result);
}



/******************************************************************************/
/* TASK_SOL_IsRunning checks if the device is running (1)                     */
/******************************************************************************/

SOL_status_t TASK_SOL_IsRunning(u8 deviceId)
{
	SOL_t  *solenoid = &TASK_SOL_device[deviceId];
	u8      running;

	/* check if the device is running */
	running = SOL_GetStatus(solenoid);

	// configASSERT(solenoid->status == REQ_OK);
	if(solenoid->status != REQ_OK)  {  for(;;);  }

	return (running);
}



/******************************************************************************/
/* TASK_SOL_Register registers a request for a device                         */
/* stops execution if registration table is not available within              */
/* TASK_SOL_REGISTRATION_WAIT                                                 */
/******************************************************************************/

static void TASK_SOL_Register(u32 objectId, u8 deviceId)
{
	/* take registration semaphore */
	if (xSemaphoreTake(TASK_SOL_xSemaphoreRegistration, TASK_SOL_REGISTRATION_WAIT) == pdTRUE)
	{
		TASK_SOL_registration[deviceId].objectId    = objectId;

		/* release registration semaphore */
		xSemaphoreGive(TASK_SOL_xSemaphoreRegistration);

#if PRINT_DEBUG
		xil_printf ("registration for %d\n\r", objectId);
#endif

	}
	else
	{
		/* if the registration semaphore is not taken within
		 * TASK_SOL_REGISTRATION_WAIT milliseconds, blocking error */
		// configASSERT(0);
		for (;;);
	}
}



/******************************************************************************/
/* TASK_SOL_CheckRegistration checks if the current object is registered for  */
/* the device                                                                 */
/******************************************************************************/

static u8 TASK_SOL_CheckRegistration(u32 objectId, u8 deviceId)
{
	u8   result  = FAIL;

	if (TASK_SOL_registration[deviceId].objectId == objectId)
	{
		result = PASS;
	}

	return (result);
}



/******************************************************************************/
/* TASK_SOL_ClearRegistration clears the registration for the specified        */
/* device                                                                     */
/******************************************************************************/

static void TASK_SOL_ClearRegistration(u8 deviceId)
{
	/* take registration semaphore */
	if (xSemaphoreTake(TASK_SOL_xSemaphoreRegistration, TASK_SOL_REGISTRATION_WAIT) == pdTRUE)
	{
		TASK_SOL_registration[deviceId].objectId = TASK_SOL_UNKNOWN_OBJECT;

		/* release registration semaphore */
		xSemaphoreGive(TASK_SOL_xSemaphoreRegistration);
	}
	else
	{
		// configASSERT(0);
		for (;;);
	}
}
