/**************/
/* inclusions */
/**************/

#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"
#include "queue.h"

#include "portmacro.h"
#include "xscugic.h"
#include "xil_types.h"
#include "xil_printf.h"

#include "task_sm.h"

#include "common.h"
#include "defines_c2c.h"
#include "stepper.h"

#include "protocol.h"
#include "task_spi.h"



/***********/
/* defines */
/***********/

/* DEPENDS ON PLATFORM */
#define SM_INITIAL_SPEED           (100u)


#define OBJ_SPI                    (0u)

#define TASK_SM_INTERRUPT_WAIT     (portMAX_DELAY)
#define TASK_SM_REGISTRATION_WAIT  (1000 / portTICK_PERIOD_MS)

#define SM_INTERRUPT               (XPAR_FABRIC_SM_20_SM_REGS_0_SM_IRQ_INTR)

#define QUEUE_LENGTH               (1u)
#define COMMAND_SIZE               (sizeof(receivedData_t))

#define COMMAND_WAIT               (portMAX_DELAY)
#define ANSWER_WAIT				   (10 / portTICK_PERIOD_MS)

typedef enum
{
	NONE       = 0u,
	SLOW_STEP  = 1u,
	FAST_STEP  = 2u,
	SPEED      = 3u,
	BRAKE      = 4u
}
irqType_t;

typedef struct
{
	u32		   objectId;
	irqType_t  irqType;
}
registrationSM_s;



/********************/
/* global variables */
/********************/

/* devices structures */
STEPPER_t            TASK_SM_device[TASK_SM_NUM_DEVICES_CMN];					/* CMN last */

/* semaphores to access devices */
SemaphoreHandle_t    TASK_SM_xSemaphoreDevice[TASK_SM_NUM_DEVICES];


/* array to store tasks waiting notifications from devices */
registrationSM_s     TASK_SM_registration[TASK_SM_NUM_DEVICES];


/* registration semaphore to read/write registration table */
SemaphoreHandle_t    TASK_SM_xSemaphoreRegistration;


/* semaphores for status notifications */
SemaphoreHandle_t    TASK_SM_xSemaphoreNotifications[TASK_SM_MAX_OBJ_SERVED];


/* semaphores for interrupts */
SemaphoreHandle_t    TASK_SM_xSemaphoreInterrupt;

/* GIC initialised at the start of the scheduler */
extern XScuGic       xInterruptController;

/* queue handle to receive commands */
QueueHandle_t  TASK_SM_xQueueCommands = NULL;



/**************/
/* prototypes */
/**************/

             u32 TASK_SM_Initialize(void);

static      void TASK_SM_ConfigInterrupt(void);
static      void TASK_SM_InterruptHandler(void);
static      void prvTask_SM_ManageInterrupt(void *pvParameters);
static      void TASK_SM_Actions(void);
static      void prvTask_SM_ServeCommands(void *pvParameters);

              u8 TASK_SM_SetResolution(u8 deviceId, u8 value, u32 timeoutSeconds);
              u8 TASK_SM_SetLoad(u8 deviceId, u8 value, u32 timeoutSeconds);

              u8 TASK_SM_SlowStep(u32 objectId,
             		 	 	 	  u8 deviceId,
		     					  STEPPER_Direction_t direction,
		     					  u32 initialSpeed,
             		              u32 stepNumber,
		     					  u32 timeoutDeviceSeconds,
		     					  u32 timeoutNotificationSeconds);

              u8 TASK_SM_FastStep(u32 objectId,
             		 	 	 	  u8 deviceId,
		     					  STEPPER_Direction_t direction,
		     					  u32 stepNumber,
             		 	 	 	  u16 initialSpeed,
		     					  u32 targetSpeed,
		     					  u32 maxAcceleration,
		     					  u32 timeoutDeviceSeconds,
		     					  u32 timeoutNotificationSeconds);

              u8 TASK_SM_SpeedStart(u32 objectId,
             		 	 	 	    u8 deviceId,
		     					    STEPPER_Direction_t direction,
		     					    u32 initialSpeed,
		     					    u32 targetSpeed,
		     					    u32 maxAcceleration,
		     					    u32 timeoutDeviceSeconds);

              u8 TASK_SM_SpeedChange(u32 objectId, u8 deviceId, u32 targetSpeed);

              u8 TASK_SM_AccelerationChange(u32 objectId, u8 deviceId, u32 maxAcceleration);			// 20210625: added

              u8 TASK_SM_SpeedStop(u32 objectId, u8 deviceId, u32 timeoutNotificationSeconds);
              u8 TASK_SM_IsRunning(u8 deviceId);
              u8 TASK_SM_IsStable(u8 deviceId);
             u32 TASK_SM_StepCount(u8 deviceId);

static      void TASK_SM_Register(u32 objectId, u8 deviceId, irqType_t irqId);
static        u8 TASK_SM_CheckRegistration(u32 objectId, u8 deviceId, irqType_t irqId);
static      void TASK_SM_ClearRegistration(u8 deviceId);
static       u32 TASK_SM_ReadObjectIdRegistration(u8 deviceId);
static irqType_t TASK_SM_ReadIrqIdRegistration(u8 deviceId);

/* note: previous functions are blocking when waiting for an interrupt notification to arrive.
 * The following functions are the non blocking copies, used to manage SPI commands
 */

/* functions to serve SPI commands, without wait of notifications in return */

static        u8 TASK_SM_SlowStep_SPI(u32 objectId,
					                  u8 deviceId,
					                  STEPPER_Direction_t direction,
					                  u32 targetSpeed,
					                  u32 stepNumber,
					                  u32 timeoutDeviceSeconds);

static        u8 TASK_SM_FastStep_SPI(u32 objectId,
				           	          u8 deviceId,
					                  STEPPER_Direction_t direction,
					                  u32 stepNumber,
					                  u32 initialSpeed,
					                  u32 targetSpeed,
					                  u32 maxAcceleration,
					                  u32 timeoutDeviceSeconds);

static        u8 TASK_SM_SpeedStop_SPI(u32 objectId,
		                               u8 deviceId);

static        u8 TASK_SM_SetBrake_SPI(u32 objectId, u8 deviceId, u32 timeoutSeconds);

static      void TASK_SM_SendEventAnswerToParser_SPI (u8 deviceId);



/******************************************************************************/
/* TASK_SM_Initialize executes the module initialisation                      */
/******************************************************************************/

u32 TASK_SM_Initialize(void)
{
	u32          result = PASS;
	BaseType_t   xStatus;
    u8           i;

   	/* initialise devices */
   	for (i = 0u; i < TASK_SM_NUM_DEVICES; i++)
   	{
   		STEPPER_Init(&TASK_SM_device[i]);
   	}
   	STEPPER_CMN_Init(&TASK_SM_device[SM_CMN]);

   	/* configure devices */
	for (i = 0u; i < TASK_SM_NUM_DEVICES; i++)
	{
		STEPPER_Configure(&TASK_SM_device[i], XPAR_SM_20_SM_REGS_0_S00_AXI_BASEADDR, i);
		// configASSERT(TASK_SM_device[i].status == REQ_OK);
		if (TASK_SM_device[i].status != REQ_OK)
		{
			result = FAIL;
		}
	}
	STEPPER_CMN_Configure(&TASK_SM_device[SM_CMN], XPAR_SM_20_SM_REGS_0_S00_AXI_BASEADDR);
	// configASSERT(TASK_SM_device[SM_CMN].status == REQ_OK);
	if (TASK_SM_device[SM_CMN].status != REQ_OK)
	{
		result = FAIL;
	}

	/* create semaphore for registration table (the semaphore is taken) */
	TASK_SM_xSemaphoreRegistration = xSemaphoreCreateBinary();
	if (TASK_SM_xSemaphoreRegistration == NULL)
	{
		result = FAIL;
	}
	/* release semaphore */
	xSemaphoreGive(TASK_SM_xSemaphoreRegistration);

    /* initialise the registration array */
    for (i = 0u; i < TASK_SM_NUM_DEVICES; i++)
    {
    	TASK_SM_ClearRegistration(i);
    }

	/* create semaphore for devices access (the semaphore is taken) */
    for (i=0u; i < TASK_SM_NUM_DEVICES; i++)
    {
    	TASK_SM_xSemaphoreDevice[i] = xSemaphoreCreateBinary();
    	if (TASK_SM_xSemaphoreDevice[i] == NULL)
    	{
    		result = FAIL;
    	}
    	/* release semaphore */
    	xSemaphoreGive(TASK_SM_xSemaphoreDevice[i]);
    }

	/* create semaphore for interrupts (the semaphore is taken) */
    TASK_SM_xSemaphoreInterrupt = xSemaphoreCreateBinary();
    if (TASK_SM_xSemaphoreInterrupt == NULL)
    {
    	result = FAIL;
    }

	/* create semaphores for status notifications (the semaphore is taken) */
    for (i=0u; i < TASK_SM_MAX_OBJ_SERVED; i++)
    {
    	TASK_SM_xSemaphoreNotifications[i] = xSemaphoreCreateBinary();
    	if (TASK_SM_xSemaphoreNotifications[i] == NULL)
    	{
    		result = FAIL;
    	}
    }

    /* Create the task to manage interrupts */
    xStatus = xTaskCreate(prvTask_SM_ManageInterrupt,  /* The function that implements the task. */
                         "Task_SM",                    /* The text name assigned to the task - for debug only. */
                         512,						   // configMINIMAL_STACK_SIZE,     /* The size of the stack to allocate to the task. (128) */
                         NULL,                         /* The parameter passed to the task. */
                         TASK_SM_INTERRUPTS_PRIORITY,  /* The priority assigned to the task. */
                         NULL);                        /* The task handle. */

    if ( xStatus != pdPASS )
    {
    	result = FAIL;
    }

    /* create queue to receive commands */
    TASK_SM_xQueueCommands = xQueueCreate(QUEUE_LENGTH, COMMAND_SIZE);

    if (TASK_SM_xQueueCommands == NULL)
    {
    	result = FAIL;
    }

    /* Create the task to manage commands */
    xStatus = xTaskCreate(prvTask_SM_ServeCommands,     /* The function that implements the task. */
                          "Task_PHS_CMDS",              /* The text name assigned to the task - for debug only. */
                          512,							//configMINIMAL_STACK_SIZE,     /* The size of the stack to allocate to the task. (128) */
         				  (void *)OBJ_SPI,              /* The parameter passed to the task. */
                          TASK_SM_COMMANDS_PRIORITY,    /* The priority assigned to the task. */
                          NULL);                        /* The task handle. */

    if ( xStatus != pdPASS )
    {
     	result = FAIL;
    }

	return (result);
}



/******************************************************************************/
/* TASK_SM_ConfigInterrupt configures interrupts from SM devices              */
/******************************************************************************/

static void TASK_SM_ConfigInterrupt(void)
{
	u32   result = PASS;
	u8    deviceStatus;
	u8    i;

	/* enable masks */
	for (i = 0u; i < TASK_SM_NUM_DEVICES; i++)
	{
		STEPPER_EnableMask(&TASK_SM_device[i]);
		// configASSERT(TASK_SM_device[i].status == REQ_OK);
		if (TASK_SM_device[i].status != REQ_OK)
		{
			result = FAIL;
		}
	}

	/* enable interrupts */
	for (i = 0u; i < TASK_SM_NUM_DEVICES; i++)
	{
		STEPPER_EnableIRQ(&TASK_SM_device[i]);
		// configASSERT(TASK_SM_device[i].status == REQ_OK);
		if (TASK_SM_device[i].status != REQ_OK)
		{
			result = FAIL;
		}

		deviceStatus = STEPPER_IsIRQEnabled(&TASK_SM_device[i]);
		// configASSERT(TASK_SM_device[i].status == REQ_OK);
		if ((TASK_SM_device[i].status != REQ_OK) || (deviceStatus == FALSE))
		{
			result = FAIL;
		}
	}

	/* set priority and trigger type (rising edge) for the interrupts */
   	XScuGic_SetPriorityTriggerType(&xInterruptController, SM_INTERRUPT, 0xA0, 0x3);

	/* Connect the handler that will be called when an interrupt occurs */
	deviceStatus = xPortInstallInterruptHandler(SM_INTERRUPT, (Xil_ExceptionHandler)TASK_SM_InterruptHandler, NULL);
	if (deviceStatus != pdPASS)
	{
		result = FAIL;
	}

	/* Enable the interrupts on GIC */
	vPortEnableInterrupt(SM_INTERRUPT);

   	// configASSERT(result == PASS);
   	if (result == FAIL)  {  for (;;);  }
}



/******************************************************************************/
/* TASK_SM_InterruptHandler signals the interrupt to the task that manages it */
/******************************************************************************/

static void TASK_SM_InterruptHandler(void)
{
	s32   xHigherPriorityTaskWoken = pdFALSE;

#if PRINT_DEBUG
	xil_printf("interrupt in handler SM\n\r");
#endif

	/* disable the interrupt */
	vPortDisableInterrupt(SM_INTERRUPT);

	/* release the interrupt semaphore */
    xSemaphoreGiveFromISR(TASK_SM_xSemaphoreInterrupt, (s32*)&xHigherPriorityTaskWoken);

    /* ensure interrupt returns directly to the unblocked, higher priority, task, if any */
    portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
}



/******************************************************************************/
/* task that manages the interrupts                                           */
/******************************************************************************/

static void prvTask_SM_ManageInterrupt(void *pvParameters)
{
	/* parameters not used */
	(void)pvParameters;

    TASK_SM_ConfigInterrupt();

    /* clear interrupts at the start */
    for (u8 i = 0; i < TASK_SM_NUM_DEVICES; i++)
    {
    	STEPPER_ClearIRQ(&TASK_SM_device[i]);
    }

    xil_printf("task SM interrupt started\n\r");

#if PRINT_DEBUG
    {
    	u32 value;
    	value = STEPPER_CMN_ReadIRQs(&TASK_SM_device[SM_CMN]);
    	xil_printf("SM : %d\n\r", value);
    }
#endif

    /* enter the loop that defines the task behaviour */
    for( ;; )
    {
    	/* wait for an interrupt from SM */
    	if (xSemaphoreTake(TASK_SM_xSemaphoreInterrupt, TASK_SM_INTERRUPT_WAIT) == pdPASS)
    	{
    		xil_printf("interrupt in task SM\n\r");

    		TASK_SM_Actions();
    	}
    }
}



/******************************************************************************/
/* TASK_SM_Actions executes task operations                                   */
/******************************************************************************/

static void TASK_SM_Actions()
{
	u32   interruptsRegister = 0u;	/* common interrupt register value */
   	u8    i;						/* index for cycles */
	u8    fired;					/* local variable to check interrupt value */
   	u32   registeredObjectId;				/* id of the registered task */

	/* read the common interrupts register */
	interruptsRegister = STEPPER_CMN_ReadIRQs(&TASK_SM_device[SM_CMN]);
	// configASSERT(TASK_SM_device[SM_CMN].status == REQ_OK);
	if(TASK_SM_device[SM_CMN].status != REQ_OK)  {  for(;;);  }

	while (interruptsRegister != 0u)
	{
		/* for each device */
		for (i = 0; i < TASK_SM_IRQS_IN_REGISTER; i++)
		{
			/* check if fired */
			fired = STEPPER_GetIRQ(&TASK_SM_device[i]);
			// configASSERT(TASK_SM_device[i].status == REQ_OK);
			if(TASK_SM_device[i].status != REQ_OK)  {  for(;;);  }

			if (fired == TRUE)
			{
				/* read the registered id */
				registeredObjectId = TASK_SM_ReadObjectIdRegistration(i);

				/* if task registered */
				if (registeredObjectId != TASK_SM_UNKNOWN_OBJECT)
				{
					switch (TASK_SM_ReadIrqIdRegistration(i))
					{
						case SPEED:
						case SLOW_STEP:
						case FAST_STEP:
						{
							/* delete registration */
							TASK_SM_ClearRegistration(i);

							/* if the registered object is the SPI commands server */
							if (registeredObjectId == OBJ_SPI)
							{
								/* set the load */
								STEPPER_SetLoad(&TASK_SM_device[i], STEPPER_DISABLE);		/* 0 */
								// configASSERT(TASK_SM_device[i].status == REQ_OK);
								if (TASK_SM_device[i].status != REQ_OK)  {  for (;;);  }

								/* release the device that sent interrupt */
								xSemaphoreGive(TASK_SM_xSemaphoreDevice[i]);

								/* send answer to the parser */
								TASK_SM_SendEventAnswerToParser_SPI (i);

							}
							/* if the registered object is an 'application' task */
							else
							{
								/* send answer in related queue (the device semaphore is released by waiting function)*/
								xSemaphoreGive(TASK_SM_xSemaphoreNotifications[registeredObjectId]);
							}
								break;
						}
						case BRAKE:
						{
							/* nothing */
							break;
						}
						case NONE:
						default:
						{
							// configASSERT(0);
							for (;;);
							break;
						}
					}
				}

				/* clear irq for the current device */
				STEPPER_ClearIRQ(&TASK_SM_device[i]);
				// configASSERT(TASK_SM_device[i].status == REQ_OK);
				if (TASK_SM_device[i].status != REQ_OK)  {  for (;;);  }

				/* check if cleared */
				fired = STEPPER_GetIRQ(&TASK_SM_device[i]);
				// configASSERT(TASK_SM_device[i].status == REQ_OK);
				if ((TASK_SM_device[i].status != REQ_OK) || fired == TRUE)  {  for (;;);  }
			}
		}

		/* read the common interrupts register */
		interruptsRegister = STEPPER_CMN_ReadIRQs(&TASK_SM_device[SM_CMN]);
		// configASSERT(TASK_SM_device[SM_CMN].status == REQ_OK);
		if(TASK_SM_device[SM_CMN].status != REQ_OK)  {  for(;;);  }
	}

	/* enable interrupt */
	vPortEnableInterrupt(SM_INTERRUPT);
}



/******************************************************************************/
/* task that serves commands via SPI                                          */
/******************************************************************************/

static void prvTask_SM_ServeCommands(void *pvParameters)
{
    receivedData_t  received;
    answersData_t   answer;

    u32   objectId = (u32)pvParameters;

    xil_printf("task SM started\n\r");

    /* enter the loop that defines the task behaviour */
    for( ;; )
    {
    	/* wait for a command from parser */
   		if (xQueueReceive(TASK_SM_xQueueCommands, &received, COMMAND_WAIT) == pdPASS)
   		{
    		/* decode command */
    		switch (received.opCode)
    		{
    		    /***********************/
         		/* Start Stepper Motor */
    		    /***********************/
    			case CMD_START_STEPPER_MOTOR:
    			{
    				u8                   result;
    				u8                   load;
    				STEPPER_Direction_t  direction;
    				STEPPER_Resolution_t resolution;

    			    u8  deviceId     = (u8)received.deviceId;
    			    u16 stepResCmd   =     received.stepsResolution;
    			    u16 loadCmd      =     received.load;
    			    u16 dirCmd       =     received.dirCommand;
    			    u32 targetSpeed  =	   received.targetSpeed;
    			    u32 maxAcc       =     received.maxAcceleration;
    			    u16 mode         =     received.counterMode;
    			    u32 counterValue =     received.counterValue;

			    	/* if command = brake */
			    	if (dirCmd == 0u)
			    	{
			    		/* set the brake */
			    		result = TASK_SM_SetBrake_SPI(objectId, deviceId, 0u);
			    	}
			    	else
			    	{
				    	/* check the received load value */
				    	if (loadCmd == 100u)
				    	{
				    		load = STEPPER_ENABLE_FULL;
				    	}
				    	else
				    	{
				    		load = STEPPER_ENABLE_HALF;
				    	}

			    		/* determine the direction */
			    		direction = (STEPPER_Direction_t)(dirCmd-1u);

			    		/* set the load */
			    		result = TASK_SM_SetLoad(deviceId, load, 0u);

			    		if (result == PASS)
			    		{
			    		    if      (stepResCmd ==  16u) { resolution =  STEPPER_RES2; }			// 20210625: modified from STEPPER_RES3
			    		    else if (stepResCmd ==   8u) { resolution =  STEPPER_RES3; }			// 20210625: modified from STEPPER_RES2
			    		    else if (stepResCmd ==   2u) { resolution =  STEPPER_RES1; }
			    		    else if (stepResCmd ==   1u) { resolution =  STEPPER_RES0; }

			    		    /* set resolution */
			    		    result = TASK_SM_SetResolution(deviceId, resolution, 0u);

			    		    if (result == PASS)
			    		    {
			    		        /* start the motor in the requested mode */
			    		        switch (mode)
			    		        {
			    		            case 0u:    /* no counter mode -> SPEED */
			    		            {
			    		                /* start speed change mode */
			    		                result = TASK_SM_SpeedStart(objectId,
			    		                                            deviceId,
			    		                                            direction,
			    		                                            SM_INITIAL_SPEED,
			    		                                            targetSpeed,
			    		                                            maxAcc,
			    		                                            0u);
			    		                break;
			    		            }
			    		            case 1u:    /* with fixed speed -> SLOW_STEP */
			    		            {
			    		                result = TASK_SM_SlowStep_SPI(objectId,
			    		                                              deviceId,
			    		                                              direction,
			    		                                              targetSpeed,
			    		                                              counterValue,
			    		                                              0u);
			    		                break;
			    		            }
			    		            case 2u:    /* with ramps -> FAST_STEP */
			    		            {
			    		                result = TASK_SM_FastStep_SPI(objectId,
			    		                                              deviceId,
			    		                                              direction,
			    		                                              counterValue,    /* stepNumber */
			    		                                              SM_INITIAL_SPEED,
			    		                                              targetSpeed,
			    		                                              maxAcc,
			    		                                              0u);
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

    				/* build answer */
			    	answer.opCode   = RESP_START_STEPPER_MOTOR;
			        answer.options  = 0x0000u;
			    	answer.status   = (result == PASS) ? 0x0000u : 0xFFFFu;

    				/* send answer back */
			    	xQueueSend(TASK_SPI_xQueueTx, &answer, ANSWER_WAIT);
			    	break;
    			}
    			/**********************/
    			/* Stop Stepper Motor */
    			/**********************/
    			case CMD_STOP_STEPPER_MOTOR:
    			{
    				u8 result;

    				u8  deviceId = (u8)received.deviceId;

    				/* stop motor */
    				result = TASK_SM_SpeedStop_SPI(objectId, deviceId);

					/* build answer */
    				answer.opCode   = RESP_STOP_STEPPER_MOTOR;
    				answer.options  = 0x0000u;
    				answer.status   = (result == PASS) ? 0x0000u : 0xFFFFu;

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
/* TASK_SM_SetResolution sets the value of resolution                         */
/* returns FAIL if the device is not available within the timeout             */
/******************************************************************************/

u8 TASK_SM_SetResolution(u8 deviceId, u8 value, u32 timeoutSeconds)
{
	u8 result = FAIL;

	/* take the device semaphore */
	if (xSemaphoreTake(TASK_SM_xSemaphoreDevice[deviceId], ((timeoutSeconds*1000)/portTICK_PERIOD_MS)) == pdPASS)
	{
		/* set the value */
		STEPPER_SetResolution(&TASK_SM_device[deviceId], value);

		// configASSERT(TASK_SM_device[deviceId].status == REQ_OK);
		if (TASK_SM_device[deviceId].status != REQ_OK)
		{
			/* return error (wrong value) and reset the device status */
			result = FAIL;
			TASK_SM_device[deviceId].status = REQ_OK;
		}
		else
		{
			result = PASS;
		}

		/* release device semaphore */
		xSemaphoreGive(TASK_SM_xSemaphoreDevice[deviceId]);
	}

	return (result);
}



/******************************************************************************/
/* TASK_SM_SetLoad sets the value of load                                     */
/* returns FAIL if the device is not available within the timeout             */
/******************************************************************************/

u8 TASK_SM_SetLoad(u8 deviceId, u8 value, u32 timeoutSeconds)
{
	u8 result = FAIL;

	/* take the device semaphore */
	if (xSemaphoreTake(TASK_SM_xSemaphoreDevice[deviceId], ((timeoutSeconds*1000)/portTICK_PERIOD_MS)) == pdPASS)
	{
		/* set the value */
		STEPPER_SetLoad(&TASK_SM_device[deviceId], value);

		// configASSERT(TASK_SM_device[deviceId].status == REQ_OK);
		if (TASK_SM_device[deviceId].status != REQ_OK)
		{
			/* return error (wrong value) and reset the device status */
			result = FAIL;
			TASK_SM_device[deviceId].status = REQ_OK;
		}
		else
		{
			result = PASS;
		}

		/* release device semaphore */
		xSemaphoreGive(TASK_SM_xSemaphoreDevice[deviceId]);
	}

	return (result);
}



/******************************************************************************/
/* TASK_SM_SlowStep executes the slow step                                    */
/* returns FAIL if:                                                           */
/* - the device is not available within the timeout                           */
/* - the device does not generate interrupt within the timeout                */
/******************************************************************************/

u8 TASK_SM_SlowStep(u32 objectId,
					u8 deviceId,
					STEPPER_Direction_t direction,
					u32 initialSpeed,
					u32 stepNumber,
					u32 timeoutDeviceSeconds,
					u32 timeoutNotificationSeconds)
{
	u8          result  = FAIL;
	STEPPER_t  *stepper = &TASK_SM_device[deviceId];

	/* take the device semaphore */
	if (xSemaphoreTake(TASK_SM_xSemaphoreDevice[deviceId], ((timeoutDeviceSeconds*1000)/portTICK_PERIOD_MS)) == pdPASS)
	{
		/* register */
		TASK_SM_Register(objectId, deviceId, SLOW_STEP);

		/* set initial speed */
		STEPPER_SetInitialSpeed(stepper, initialSpeed);
		// configASSERT(stepper->status == REQ_OK);

		/* set the step number */
		STEPPER_SetStepNumber(stepper, stepNumber);
		// configASSERT(stepper->status == REQ_OK);

		/* set the direction */
		STEPPER_SetDirection (stepper, direction);
		// configASSERT(stepper->status == REQ_OK);

		/* send the impulsive start */
		STEPPER_SetStepSlow (stepper);
		// configASSERT(stepper->status == REQ_OK);

		STEPPER_CleanStepSlow (stepper);
		// configASSERT(stepper->status == REQ_OK);

		if (stepper->status != REQ_OK)
		{
			/* (return FAIL and) reset the device status */
			stepper->status = REQ_OK;
		}
		else
		{
			/* wait for notification */
			if (xSemaphoreTake(TASK_SM_xSemaphoreNotifications[objectId], ((timeoutNotificationSeconds*1000)/portTICK_PERIOD_MS)) == pdPASS)
			{
#if PRINT_DEBUG
				xil_printf("notification for %d\n\r", deviceId);
#endif

				result = PASS;
			}
			else
			{
				/* clear registration */
				TASK_SM_ClearRegistration(deviceId);
			}
		}

		/* release device semaphore */
		xSemaphoreGive(TASK_SM_xSemaphoreDevice[deviceId]);
	}

	return (result);
}



/******************************************************************************/
/* TASK_SM_FastStep executes the fast step                                    */
/* returns FAIL if:                                                           */
/* - the device is not available within the timeout                           */
/* - the device does not generate interrupt within the timeout                */
/******************************************************************************/

u8 TASK_SM_FastStep(u32 objectId,
					u8 deviceId,
					STEPPER_Direction_t direction,
					u32 stepNumber,
					u16 initialSpeed,
					u32 targetSpeed,
					u32 maxAcceleration,
					u32 timeoutDeviceSeconds,
					u32 timeoutNotificationSeconds)
{
	u8          result  = FAIL;
	STEPPER_t  *stepper = &TASK_SM_device[deviceId];

	/* take the device semaphore */
	if (xSemaphoreTake(TASK_SM_xSemaphoreDevice[deviceId], ((timeoutDeviceSeconds*1000)/portTICK_PERIOD_MS)) == pdPASS)
	{
		/* register */
		TASK_SM_Register(objectId, deviceId, FAST_STEP);

		/* set maximum acceleration */
		STEPPER_SetMaxAcceleration(stepper, maxAcceleration);
		// configASSERT(stepper->status == REQ_OK);

		/* set initial speed */
		STEPPER_SetInitialSpeed(stepper, initialSpeed);
		// configASSERT(stepper->status == REQ_OK);

		/* set target speed */
		STEPPER_SetTargetSpeed(stepper, targetSpeed);
		// configASSERT(stepper->status == REQ_OK);

		/* set the number of steps */
		STEPPER_SetStepNumber(stepper, stepNumber);
		// configASSERT(stepper->status == REQ_OK);

		/* set the direction */
		STEPPER_SetDirection(stepper, direction);
		// configASSERT(stepper->status == REQ_OK);

		/* send the impulsive start */
		STEPPER_SetStepFast(stepper);
		// configASSERT(stepper->status == REQ_OK);

		STEPPER_CleanStepFast(stepper);
		// configASSERT(stepper->status == REQ_OK);

		if (stepper->status != REQ_OK)
		{
			/* (return FAIL and) reset the device status */
			stepper->status = REQ_OK;
		}
		else
		{
			/* wait for notification */
			if (xSemaphoreTake(TASK_SM_xSemaphoreNotifications[objectId], ((timeoutNotificationSeconds*1000)/portTICK_PERIOD_MS)) == pdPASS)
			{
#if PRINT_DEBUG
				xil_printf("notification for %d\n\r", deviceId);
#endif

				result = PASS;
			}
			else
			{
				/* clear registration */
				TASK_SM_ClearRegistration(deviceId);
			}
		}

		/* release device semaphore */
		xSemaphoreGive(TASK_SM_xSemaphoreDevice[deviceId]);
	}

	return (result);
}



/******************************************************************************/
/* TASK_SM_SpeedStart executes the speed start                                */
/* returns FAIL if the device is not available within the timeout             */
/* When the function ends, the device semaphore is not released;              */
/* it is released when device finishes or if TASK_SM_SpeedStop                */
/* is called afterwards                                                       */
/******************************************************************************/

u8 TASK_SM_SpeedStart(u32 objectId,
					  u8 deviceId,
					  STEPPER_Direction_t direction,
					  u32 initialSpeed,
					  u32 targetSpeed,
					  u32 maxAcceleration,
					  u32 timeoutDeviceSeconds)
{
	u8          result  = FAIL;
	STEPPER_t  *stepper = &TASK_SM_device[deviceId];

	/* take the device semaphore */
	if (xSemaphoreTake(TASK_SM_xSemaphoreDevice[deviceId], ((timeoutDeviceSeconds*1000)/portTICK_PERIOD_MS)) == pdPASS)
	{
		/* register */
		TASK_SM_Register(objectId, deviceId, SPEED);

		/* set the maximum acceleration */
		STEPPER_SetMaxAcceleration(stepper, maxAcceleration);
		// configASSERT(stepper->status == REQ_OK);

		/* set the initial speed */
		STEPPER_SetInitialSpeed(stepper, initialSpeed);
		// configASSERT(stepper->status == REQ_OK);

		/* set the target speed */
		STEPPER_SetTargetSpeed(stepper, targetSpeed);
		// configASSERT(stepper->status == REQ_OK);

		/* set the direction */
		STEPPER_SetDirection(stepper, direction);
		// configASSERT(stepper->status == REQ_OK);

		/* send the impulsive start */
		STEPPER_SetStart(stepper);
		// configASSERT(stepper->status == REQ_OK);

		STEPPER_CleanStart(stepper);
		// configASSERT(stepper->status == REQ_OK);

		if (stepper->status != REQ_OK)
		{
			/* (return FAIL and) reset the device status */
			stepper->status = REQ_OK;
		}
		else
		{
			result = PASS;
		}

		/* the device semaphore is not released; it will be released when interrupt is generated */
	}

	return (result);
}



/******************************************************************************/
/* TASK_SM_SpeedChange changes the speed                                      */
/* returns FAIL if the device is not held by the object task                  */
/* calling this function                                                      */
/* When the function ends, the device semaphore is not released;              */
/* it is released when device finishes or if TASK_SM_SpeedStop                */
/* is called afterwards                                                       */
/******************************************************************************/
u8 TASK_SM_SpeedChange(u32 objectId, u8 deviceId, u32 targetSpeed)
{
	u8          result  = FAIL;
	u8 			stable;

	STEPPER_t  *stepper = &TASK_SM_device[deviceId];

	if (TASK_SM_CheckRegistration(objectId, deviceId, SPEED) == PASS)
	{
		/* check if the device is stable */
		stable = STEPPER_IsStable(stepper);

		// configASSERT(stepper->status == REQ_OK);
		if(stepper->status != REQ_OK)  {  for(;;);  }

		if (stable == TRUE)
		{
			/* set the target speed */
			STEPPER_SetTargetSpeed(stepper, targetSpeed);
			// configASSERT(stepper->status == REQ_OK);

			/* send the impulsive start */
			STEPPER_SetSpeedChange(stepper);
			// configASSERT(stepper->status == REQ_OK);

			STEPPER_CleanSpeedChange(stepper);
			// configASSERT(stepper->status == REQ_OK);

			if (stepper->status != REQ_OK)
			{
				/* (return FAIL and) reset device */
				stepper->status = REQ_OK;
			}
			else
			{
				result = PASS;
			}
		}
	}

	return (result);
}



/******************************************************************************/
/* TASK_SM_AccelerationChange changes the acceleration                        */
/* returns FAIL if the device is not held by the object task                  */
/* calling this function                                                      */
/* When the function ends, the device semaphore is not released;              */
/* it is released when device finishes or if TASK_SM_SpeedStop                */
/* is called afterwards                                                       */
/******************************************************************************/
u8 TASK_SM_AccelerationChange(u32 objectId, u8 deviceId, u32 maxAcceleration)			// 20210625: added
{
	u8          result  = FAIL;
	u8 			stable;

	STEPPER_t  *stepper = &TASK_SM_device[deviceId];

	if (TASK_SM_CheckRegistration(objectId, deviceId, SPEED) == PASS)
	{
		/* check if the device is stable */
		stable = STEPPER_IsStable(stepper);

		// configASSERT(stepper->status == REQ_OK);
		if(stepper->status != REQ_OK)  {  for(;;);  }

		if (stable == TRUE)
		{
			/* set the maximum acceleration */
			STEPPER_SetMaxAcceleration(stepper, maxAcceleration);
			// configASSERT(stepper->status == REQ_OK);

			if (stepper->status != REQ_OK)
			{
				/* (return FAIL and) reset device */
				stepper->status = REQ_OK;
			}
			else
			{
				result = PASS;
			}
		}
	}

	return (result);
}








/******************************************************************************/
/* TASK_SM_SpeedStop stops the speed                                          */
/* returns FAIL:                                                              */
/* - if the device is not held by the object task calling                     */
/*   this function                                                            */
/* - the device does not generate interrupt within the timeout                */
/* When the function ends, the device semaphore is released.                  */
/******************************************************************************/

u8 TASK_SM_SpeedStop(u32 objectId, u8 deviceId, u32 timeoutNotificationSeconds)
{
	u8          result  = FAIL;
	STEPPER_t  *stepper = &TASK_SM_device[deviceId];

	if (TASK_SM_CheckRegistration(objectId, deviceId, SPEED) == PASS)
	{
		/* send the impulsive start */
		STEPPER_SetStop(stepper);
		// configASSERT(stepper->status == REQ_OK);

		STEPPER_CleanStop(stepper);
		// configASSERT(stepper->status == REQ_OK);
		if(stepper->status != REQ_OK)  {  for(;;);  }

		/* wait for notification */
		if (xSemaphoreTake(TASK_SM_xSemaphoreNotifications[objectId], ((timeoutNotificationSeconds*1000)/portTICK_PERIOD_MS)) == pdPASS)
		{
#if PRINT_DEBUG
			xil_printf("notification for %d\n\r", deviceId);
#endif

			result = PASS;
		}

		/* release device semaphore */
		xSemaphoreGive(TASK_SM_xSemaphoreDevice[deviceId]);
	}
	return (result);
}



/******************************************************************************/
/* TASK_SM_IsRunning checks if the device is running (1)                      */
/******************************************************************************/

u8 TASK_SM_IsRunning(u8 deviceId)
{
	STEPPER_t  *stepper = &TASK_SM_device[deviceId];
	u8          running;

	/* check if the device is running */
	running = STEPPER_IsRunning(stepper);

	// configASSERT(stepper->status == REQ_OK);
	if(stepper->status != REQ_OK)  {  for(;;);  }

	return (running);
}



/******************************************************************************/
/* TASK_SM_IsStable checks if the device is stable (1)                        */
/******************************************************************************/

u8 TASK_SM_IsStable(u8 deviceId)
{
	STEPPER_t  *stepper = &TASK_SM_device[deviceId];
	u8          stable;

	/* check if the device is stable */
	stable = STEPPER_IsStable(stepper);

	// configASSERT(stepper->status == REQ_OK);
	if(stepper->status != REQ_OK)  {  for(;;);  }

	return (stable);
}



/******************************************************************************/
/* TASK_SM_StepCount returns the current step number                          */
/******************************************************************************/

u32 TASK_SM_StepCount(u8 deviceId)
{
	STEPPER_t  *stepper = &TASK_SM_device[deviceId];
	u32         counter;

	/* read the current step number */
	counter = STEPPER_GetCurrStepNum(stepper);

	// configASSERT(stepper->status == REQ_OK);
	if(stepper->status != REQ_OK)  {  for(;;);  }

	return (counter);
}



/******************************************************************************/
/* TASK_SM_Register registers a request of notification        */
/* stops execution if registration table is not available within              */
/* TASK_SM_REGISTRATION_WAIT                                                  */
/******************************************************************************/

static void TASK_SM_Register(u32 objectId, u8 deviceId, irqType_t irqId)
{
	/* take registration semaphore */
	if (xSemaphoreTake(TASK_SM_xSemaphoreRegistration, TASK_SM_REGISTRATION_WAIT) == pdTRUE)
	{
		TASK_SM_registration[deviceId].objectId    = objectId;
		TASK_SM_registration[deviceId].irqType     = irqId;

		/* release registration semaphore */
		xSemaphoreGive(TASK_SM_xSemaphoreRegistration);

#if PRINT_DEBUG
		xil_printf ("registration for %d\n\r", objectId);
#endif

	}
	else
	{
		/* if the registration semaphore is not taken within
		 * TASK_SM_REGISTRATION_WAIT milliseconds, there is a blocking error */
		// configASSERT(0);
		for (;;);
	}
}



/******************************************************************************/
/* TASK_SM_CheckRegistration checks if the current object is registered for   */
/* the device, with a SPEED operation flag                                    */
/******************************************************************************/

static u8 TASK_SM_CheckRegistration(u32 objectId, u8 deviceId, irqType_t irqId)
{
	u8  result  = FAIL;

	if ((TASK_SM_registration[deviceId].objectId == objectId)
	 && (TASK_SM_registration[deviceId].irqType  == irqId))
	{
		result = PASS;
	}

	return (result);
}



/******************************************************************************/
/* TASK_SM_ClearRegistration clears the registration for the specified        */
/* device                                                                     */
/******************************************************************************/

static void TASK_SM_ClearRegistration(u8 deviceId)
{
	/* take registration semaphore */
	if (xSemaphoreTake(TASK_SM_xSemaphoreRegistration, TASK_SM_REGISTRATION_WAIT) == pdTRUE)
	{
		TASK_SM_registration[deviceId].objectId = TASK_SM_UNKNOWN_OBJECT;
		TASK_SM_registration[deviceId].irqType  = NONE;

		/* release registration semaphore */
		xSemaphoreGive(TASK_SM_xSemaphoreRegistration);
	}
	else
	{
		// configASSERT(0);
		for (;;);
	}
}



/******************************************************************************/
/* TASK_SM_ReadRegistration returns the registered objectId                   */
/* for the specified device                                                   */
/******************************************************************************/

static u32 TASK_SM_ReadObjectIdRegistration(u8 deviceId)
{
	return (TASK_SM_registration[deviceId].objectId);
}



/******************************************************************************/
/* TASK_SM_ReadRegistration returns the registered objectId                   */
/* for the specified device                                                   */
/******************************************************************************/

static irqType_t TASK_SM_ReadIrqIdRegistration(u8 deviceId)
{
	return (TASK_SM_registration[deviceId].irqType);
}



/******************************************************************************/
/* TASK_SM_SlowStep_SPI executes the slow step command from SPI               */
/* returns FAIL if the device is not available within the timeout             */
/******************************************************************************/

static u8 TASK_SM_SlowStep_SPI(u32 objectId,
					           u8 deviceId,
					           STEPPER_Direction_t direction,
					           u32 targetSpeed,
					           u32 stepNumber,
					           u32 timeoutDeviceSeconds)
{
	u8          result  = FAIL;
	STEPPER_t  *stepper = &TASK_SM_device[deviceId];

	/* take the device semaphore */
	if (xSemaphoreTake(TASK_SM_xSemaphoreDevice[deviceId], ((timeoutDeviceSeconds*1000)/portTICK_PERIOD_MS)) == pdPASS)
	{
		/* register */
		TASK_SM_Register(objectId, deviceId, SLOW_STEP);

		/* set initial speed */
		/* NOTE: constant speed => the initial speed is set equal to the target speed */
		STEPPER_SetInitialSpeed(stepper, targetSpeed);
		// configASSERT(stepper->status == REQ_OK);

		/* set the step number */
		STEPPER_SetStepNumber(stepper, stepNumber);
		// configASSERT(stepper->status == REQ_OK);

		/* set the direction */
		STEPPER_SetDirection (stepper, direction);
		// configASSERT(stepper->status == REQ_OK);

		/* send the impulsive start */
		STEPPER_SetStepSlow (stepper);
		// configASSERT(stepper->status == REQ_OK);

		STEPPER_CleanStepSlow (stepper);
		// configASSERT(stepper->status == REQ_OK);

		if (stepper->status != REQ_OK)
		{
			/* (return FAIL and) reset the device status */
			stepper->status = REQ_OK;
		}
		else
		{
			result = PASS;
		}
	}

	return (result);
}



/******************************************************************************/
/* TASK_SM_FastStep_SPI executes the fast step command from SPI               */
/* returns FAIL if the device is not available within the timeout             */
/******************************************************************************/

static u8 TASK_SM_FastStep_SPI(u32 objectId,
					    u8 deviceId,
					    STEPPER_Direction_t direction,
					    u32 stepNumber,
					    u32 initialSpeed,
					    u32 targetSpeed,
					    u32 maxAcceleration,
					    u32 timeoutDeviceSeconds)
{
	u8          result  = FAIL;
	STEPPER_t  *stepper = &TASK_SM_device[deviceId];

	/* take the device semaphore */
	if (xSemaphoreTake(TASK_SM_xSemaphoreDevice[deviceId], ((timeoutDeviceSeconds*1000)/portTICK_PERIOD_MS)) == pdPASS)
	{
		/* register */
		TASK_SM_Register(objectId, deviceId, FAST_STEP);

		/* set maximum acceleration */
		STEPPER_SetMaxAcceleration(stepper, maxAcceleration);
		// configASSERT(stepper->status == REQ_OK);

		/* set initial speed */
		STEPPER_SetInitialSpeed(stepper, initialSpeed);
		// configASSERT(stepper->status == REQ_OK);

		/* set target speed */
		STEPPER_SetTargetSpeed(stepper, targetSpeed);
		// configASSERT(stepper->status == REQ_OK);

		/* set the number of steps */
		STEPPER_SetStepNumber(stepper, stepNumber);
		// configASSERT(stepper->status == REQ_OK);

		/* set the direction */
		STEPPER_SetDirection(stepper, direction);
		// configASSERT(stepper->status == REQ_OK);

		/* send the impulsive start */
		STEPPER_SetStepFast(stepper);
		// configASSERT(stepper->status == REQ_OK);

		STEPPER_CleanStepFast(stepper);
		// configASSERT(stepper->status == REQ_OK);

		if (stepper->status != REQ_OK)
		{
			/* (return FAIL and) reset the device status */
			stepper->status = REQ_OK;
		}
		else
		{
			result = PASS;
		}
	}

	return (result);
}



/******************************************************************************/
/* TASK_SM_SpeedStop_SPI executes the stop command from SPI                   */
/* returns FAIL if the device is not held by the object task calling this     */
/* function                                                                   */
/******************************************************************************/

static u8 TASK_SM_SpeedStop_SPI(u32 objectId, u8 deviceId)
{
	u8          result  = FAIL;
	STEPPER_t  *stepper = &TASK_SM_device[deviceId];

	if (TASK_SM_CheckRegistration(objectId, deviceId, SPEED) == PASS)
	{
		/* send the impulsive stop */
		STEPPER_SetStop(stepper);
		// configASSERT(stepper->status == REQ_OK);

		STEPPER_CleanStop(stepper);
		// configASSERT(stepper->status == REQ_OK);
		if(stepper->status != REQ_OK)  {  for(;;);  }

		/* release the device */
		xSemaphoreGive(TASK_SM_xSemaphoreDevice[deviceId]);

		result = PASS;
	}
	else if (TASK_SM_CheckRegistration(objectId, deviceId, BRAKE) == PASS)
	{
		/* set the load */
		STEPPER_SetLoad(&TASK_SM_device[deviceId], STEPPER_DISABLE);		/* 0 */
		// configASSERT(TASK_SM_device[deviceId].status == REQ_OK);
		if (TASK_SM_device[deviceId].status != REQ_OK)  {  for (;;);  }

		/* clear registration */
		TASK_SM_ClearRegistration(deviceId);

		/* release the device */
		xSemaphoreGive(TASK_SM_xSemaphoreDevice[deviceId]);

		result = PASS;
	}

	return (result);
}



/******************************************************************************/
/* TASK_SM_SetBrake_SPI executes the start command from SPI with              */
/* command = 0 (brake)                                                        */
/* returns FAIL if the device is not available within the timeout             */
/******************************************************************************/

static u8 TASK_SM_SetBrake_SPI(u32 objectId, u8 deviceId, u32 timeoutSeconds)
{
	u8 result = FAIL;

	/* take the device semaphore */
	if (xSemaphoreTake(TASK_SM_xSemaphoreDevice[deviceId], ((timeoutSeconds*1000)/portTICK_PERIOD_MS)) == pdPASS)
	{
		/* register */
		TASK_SM_Register(objectId, deviceId, BRAKE);

		/* set the load */
		STEPPER_SetLoad(&TASK_SM_device[deviceId], STEPPER_ENABLE_FULL);		/* 2 */
		// configASSERT(TASK_SM_device[deviceId].status == REQ_OK);
		if (TASK_SM_device[deviceId].status != REQ_OK)  {  for (;;);  }

		result = PASS;
	}

	return (result);
}



/******************************************************************************/
/* TASK_SM_SendEventAnswerToParser_SPI sends to the parser the data           */
/* related to the interrupt event                                             */
/******************************************************************************/

static void TASK_SM_SendEventAnswerToParser_SPI (u8 deviceId)
{
    answersData_t   answer;

    answer.opCode   = EVT_STEPPER_MOTOR_SELF_STOP;
    answer.options  = 0x0000u;
    answer.deviceId = (u16)deviceId;

	/* send answer back */
    xQueueSend(TASK_SPI_xQueueTx, &answer, ANSWER_WAIT);
}
