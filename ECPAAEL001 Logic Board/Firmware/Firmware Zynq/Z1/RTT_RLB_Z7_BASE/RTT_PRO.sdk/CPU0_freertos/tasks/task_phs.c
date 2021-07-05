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

#include "task_phs.h"

#include "common.h"
#include "defines_c2c.h"
#include "phs.h"

#include "protocol.h"
#include "task_spi.h"



/***********/
/* defines */
/***********/

#define OBJ_SPI                     (0u)

#define TASK_PHS_INTERRUPT_WAIT     (portMAX_DELAY)
#define TASK_PHS_REGISTRATION_WAIT  (1000 / portTICK_PERIOD_MS)

#define PHS_INTERRUPT_L2S_0         (XPAR_FABRIC_PHS_50_PHS_REGS_0_PHS_IRQ_L2S_0_INTR)
#define PHS_INTERRUPT_S2L_0         (XPAR_FABRIC_PHS_50_PHS_REGS_0_PHS_IRQ_S2L_0_INTR)
#define PHS_INTERRUPT_L2S_1         (XPAR_FABRIC_PHS_50_PHS_REGS_0_PHS_IRQ_L2S_1_INTR)
#define PHS_INTERRUPT_S2L_1         (XPAR_FABRIC_PHS_50_PHS_REGS_0_PHS_IRQ_S2L_1_INTR)

#define S2L_0                       (0u)
#define S2L_1                       (1u)
#define L2S_0                       (2u)
#define L2S_1                       (3u)
#define NUM_INTERRUPTS              (4u)

#define QUEUE_LENGTH                (1u)
#define COMMAND_SIZE                (sizeof(receivedData_t))

#define COMMAND_WAIT                (portMAX_DELAY)
#define ANSWER_WAIT			        (10 / portTICK_PERIOD_MS)



/********************/
/* global variables */
/********************/

/* devices structures */
PHS_t              TASK_PHS_device[TASK_PHS_NUM_DEVICES_CMN];		/* CMN last */

/* semaphores to access devices */
SemaphoreHandle_t  TASK_PHS_xSemaphoreDevice[TASK_PHS_NUM_DEVICES];


/* array to store tasks waiting notifications from devices */
SemaphoreHandle_t  TASK_PHS_registration[TASK_PHS_NUM_DEVICES][TASK_PHS_MAX_OBJ_SERVED][PHS_NUM_STATUS];

/* registration semaphore to read/write registration table */
SemaphoreHandle_t  TASK_PHS_xSemaphoreRegistration;


/* semaphores for status notifications */
SemaphoreHandle_t  TASK_PHS_xSemaphoreNotifications[TASK_PHS_MAX_OBJ_SERVED];


/* semaphores for interrupts */
SemaphoreHandle_t  TASK_PHS_xSemaphoreInterrupt[NUM_INTERRUPTS];

/* GIC initialised at the start of the scheduler */
extern XScuGic     xInterruptController;

/* configuration flag */
u8 configured = FALSE;

/* queue handle to receive commands */
QueueHandle_t  TASK_PHS_xQueueCommands = NULL;



/**************/
/* prototypes */
/**************/

                     u32 TASK_PHS_Initialize(void);

static              void TASK_PHS_ConfigInterrupt(void);
static              void TASK_PHS_InterruptHandler_S2L_0(void);
static              void TASK_PHS_InterruptHandler_S2L_1(void);
static              void TASK_PHS_InterruptHandler_L2S_0(void);
static              void TASK_PHS_InterruptHandler_L2S_1(void);
static              void prvTask_PHS_ManageInterrupt(void *pvParameters);
static              void TASK_PHS_Actions(u32 interruptId);
static              void prvTask_PHS_ServeCommands(void *pvParameters);

                      u16 TASK_PHS_GetPWM(u8 deviceId);
                       u8 TASK_PHS_SetPWM(u8 deviceId, u16 value, u32 timeoutSeconds);
             PHS_status_t TASK_PHS_GetDigitalStatus(u8 deviceId);
                       u8 TASK_PHS_WaitDigitalStatus(u32 objectId, u8 deviceId, PHS_status_t status, u32 timeoutSeconds);

 static              void TASK_PHS_Register(u32 object_id, u8 deviceId, PHS_status_t status);
 static              void TASK_PHS_ClearRegistration(u32 objectId, u8 deviceId, PHS_status_t status);
 static SemaphoreHandle_t TASK_PHS_ReadRegistration(u32 objectId, u8 deviceId, PHS_status_t status);



/******************************************************************************/
/* TASK_PHS_Initialize executes the module initialization                     */
/******************************************************************************/

u32 TASK_PHS_Initialize(void)
{
	u32          result = PASS;
	BaseType_t   xStatus;
    u8           i,k;
    u32          j;

	/* initialise devices */
	for (i = 0u; i < TASK_PHS_NUM_DEVICES; i++)
	{
		PHS_Init(&TASK_PHS_device[i]);
	}
	PHS_CMN_Init(&TASK_PHS_device[PHS_CMN]);

	/* configure devices */
	for (i = 0u; i < TASK_PHS_NUM_DEVICES; i++)
	{
		PHS_Configure(&TASK_PHS_device[i], XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR, i);
		// configASSERT(TASK_PHS_device[i].status == REQ_OK);
		if (TASK_PHS_device[i].status != REQ_OK)
		{
			result = FAIL;
		}
	}
	PHS_CMN_Configure(&TASK_PHS_device[PHS_CMN], XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR);
	// configASSERT(TASK_PHS_device[PHS_CMN].status == REQ_OK);
	if (TASK_PHS_device[PHS_CMN].status != REQ_OK)
	{
		result = FAIL;
	}

	/* create semaphore for registration table (the semaphore is taken) */
	TASK_PHS_xSemaphoreRegistration = xSemaphoreCreateBinary();
	if (TASK_PHS_xSemaphoreRegistration == NULL)
	{
		result = FAIL;
	}
	/* release semaphore */
	xSemaphoreGive(TASK_PHS_xSemaphoreRegistration);

    /* initialise the registration array */
    for (i = 0u; i < TASK_PHS_NUM_DEVICES; i++)
    {
    	for (j = 0u; j < TASK_PHS_MAX_OBJ_SERVED; j++)
    	{
    		for (k = 0; k < 2; k++)
    		{
    			TASK_PHS_ClearRegistration(j, i, k);
    		}
    	}
    }


	/* create semaphore for devices access (the semaphore is taken) */
    for (i=0u; i < TASK_PHS_NUM_DEVICES; i++)
    {
    	TASK_PHS_xSemaphoreDevice[i] = xSemaphoreCreateBinary();
    	if (TASK_PHS_xSemaphoreDevice[i] == NULL)
    	{
    		result = FAIL;
    	}
    	/* release semaphore */
    	xSemaphoreGive(TASK_PHS_xSemaphoreDevice[i]);
    }

	/* create semaphores for interrupts (the semaphore is taken) */
    for (i=0u; i < NUM_INTERRUPTS; i++)
    {
    	TASK_PHS_xSemaphoreInterrupt[i] = xSemaphoreCreateBinary();
    	if (TASK_PHS_xSemaphoreInterrupt[i] == NULL)
    	{
    		result = FAIL;
    	}
    }

	/* create semaphore for status notifications (the semaphore is taken) */
    for (i=0u; i < TASK_PHS_MAX_OBJ_SERVED; i++)
    {
    	TASK_PHS_xSemaphoreNotifications[i] = xSemaphoreCreateBinary();
    	if (TASK_PHS_xSemaphoreNotifications[i] == NULL)
    	{
    		result = FAIL;
    	}
    }

    /* create queue to receive commands */
    TASK_PHS_xQueueCommands = xQueueCreate(QUEUE_LENGTH, COMMAND_SIZE);
    if (TASK_PHS_xQueueCommands == NULL)
    {
    	result = FAIL;
    }

    /* Create the task to manage commands */
    xStatus = xTaskCreate(prvTask_PHS_ServeCommands,    /* The function that implements the task. */
    					  "Task_PHS_CMDS",              /* The text name assigned to the task - for debug only. */
						  512,							// configMINIMAL_STACK_SIZE,     /* The size of the stack to allocate to the task. (128) */
						  (void *)OBJ_SPI,              /* The parameter passed to the task. */
						  TASK_PHS_COMMANDS_PRIORITY,   /* The priority assigned to the task. */
						  NULL);                        /* The task handle. */

    if ( xStatus != pdPASS )
    {
    	result = FAIL;
    }

    /* Create the tasks to manage interrupts */
    xStatus = xTaskCreate(prvTask_PHS_ManageInterrupt, /* The function that implements the task. */
                         "Task_PHS_S2L_0",             /* The text name assigned to the task - for debug only. */
                         512,						   // configMINIMAL_STACK_SIZE,     /* The size of the stack to allocate to the task. (128) */
                         (void *)S2L_0,                /* The parameter passed to the task. */
                         TASK_PHS_INTERRUPTS_PRIORITY, /* The priority assigned to the task. */
                         NULL);                        /* The task handle. */

    if ( xStatus != pdPASS )
    {
    	result = FAIL;
    }

    xStatus = xTaskCreate(prvTask_PHS_ManageInterrupt, /* The function that implements the task. */
                         "Task_PHS_S2L_1",             /* The text name assigned to the task - for debug only. */
                         512,						   // configMINIMAL_STACK_SIZE,     /* The size of the stack to allocate to the task. (128) */
                         (void *)S2L_1,                /* The parameter passed to the task. */
                         TASK_PHS_INTERRUPTS_PRIORITY, /* The priority assigned to the task. */
                         NULL);                        /* The task handle. */

    if ( xStatus != pdPASS )
    {
    	result = FAIL;
    }

    xStatus = xTaskCreate(prvTask_PHS_ManageInterrupt, /* The function that implements the task. */
                         "Task_PHS_L2S_0",             /* The text name assigned to the task - for debug only. */
                         512,						   // configMINIMAL_STACK_SIZE,     /* The size of the stack to allocate to the task. (128) */
                         (void *)L2S_0,                /* The parameter passed to the task. */
                         TASK_PHS_INTERRUPTS_PRIORITY, /* The priority assigned to the task. */
                         NULL);                        /* The task handle. */
    if ( xStatus != pdPASS )
    {
    	result = FAIL;
    }

    xStatus = xTaskCreate(prvTask_PHS_ManageInterrupt, /* The function that implements the task. */
                         "Task_PHS_L2S_1",             /* The text name assigned to the task - for debug only. */
                         512,						   // configMINIMAL_STACK_SIZE,     /* The size of the stack to allocate to the task. (128) */
                         (void *)L2S_1,                /* The parameter passed to the task. */
                         TASK_PHS_INTERRUPTS_PRIORITY, /* The priority assigned to the task. */
                         NULL);                        /* The task handle. */
    if ( xStatus != pdPASS )
    {
    	result = FAIL;
    }

	return (result);
}



/******************************************************************************/
/* TASK_PHS_ConfigInterrupt configures interrupts from PHS devices            */
/******************************************************************************/

static void TASK_PHS_ConfigInterrupt(void)
{
	u32  result = PASS;
	u8   deviceStatus;
	u8   i;

    /* only the first task initialises interrupt mechanism */
    if (configured == FALSE)
    {
    	configured = TRUE;

		/* enable masks */
		for (i = 0u; i < TASK_PHS_NUM_DEVICES; i++)
		{
			PHS_EnableMask_S2L(&TASK_PHS_device[i]);
			// configASSERT(TASK_PHS_device[i].status == REQ_OK);
			if (TASK_PHS_device[i].status != REQ_OK)
			{
				result = FAIL;
			}

			PHS_EnableMask_L2S(&TASK_PHS_device[i]);
			// configASSERT(TASK_PHS_device[i].status == REQ_OK);
			if (TASK_PHS_device[i].status != REQ_OK)
			{
				result = FAIL;
			}
		}

		/* enable interrupts */
		for (i = 0u; i < TASK_PHS_NUM_DEVICES; i++)
		{
			PHS_EnableIRQ_S2L(&TASK_PHS_device[i]);
			// configASSERT(TASK_PHS_device[i].status == REQ_OK);
			if (TASK_PHS_device[i].status != REQ_OK)
			{
				result = FAIL;
			}

			deviceStatus = PHS_IsIRQEndabled_S2L(&TASK_PHS_device[i]);
			// configASSERT(TASK_PHS_device[i].status == REQ_OK);
			if ((TASK_PHS_device[i].status != REQ_OK) || (deviceStatus == FALSE))
			{
				result = FAIL;
			}

			PHS_EnableIRQ_L2S(&TASK_PHS_device[i]);
			// configASSERT(TASK_PHS_device[i].status == REQ_OK);
			if (TASK_PHS_device[i].status != REQ_OK)
			{
				result = FAIL;
			}

			deviceStatus = PHS_IsIRQEndabled_L2S(&TASK_PHS_device[i]);
			// configASSERT(TASK_PHS_device[i].status == REQ_OK);
			if ((TASK_PHS_device[i].status != REQ_OK) || (deviceStatus == FALSE))
			{
				result = FAIL;
			}
		}

		/* set priority and trigger type (rising edge) for the interrupts */
		XScuGic_SetPriorityTriggerType(&xInterruptController, PHS_INTERRUPT_S2L_0, 0xA0, 0x3);
		XScuGic_SetPriorityTriggerType(&xInterruptController, PHS_INTERRUPT_S2L_1, 0xA0, 0x3);
		XScuGic_SetPriorityTriggerType(&xInterruptController, PHS_INTERRUPT_L2S_0, 0xA0, 0x3);
		XScuGic_SetPriorityTriggerType(&xInterruptController, PHS_INTERRUPT_L2S_1, 0xA0, 0x3);

		/* Connect the handler that will be called when an interrupt occurs */
		deviceStatus = xPortInstallInterruptHandler(PHS_INTERRUPT_S2L_0, (Xil_ExceptionHandler)TASK_PHS_InterruptHandler_S2L_0, NULL);
		if (deviceStatus != pdPASS)
		{
			result = FAIL;
		}
		deviceStatus = xPortInstallInterruptHandler(PHS_INTERRUPT_S2L_1, (Xil_ExceptionHandler)TASK_PHS_InterruptHandler_S2L_1, NULL);
		if (deviceStatus != pdPASS)
		{
			result = FAIL;
		}
		deviceStatus = xPortInstallInterruptHandler(PHS_INTERRUPT_L2S_0, (Xil_ExceptionHandler)TASK_PHS_InterruptHandler_L2S_0, NULL);
		if (deviceStatus != pdPASS)
		{
			result = FAIL;
		}
		deviceStatus = xPortInstallInterruptHandler(PHS_INTERRUPT_L2S_1, (Xil_ExceptionHandler)TASK_PHS_InterruptHandler_L2S_1, NULL);
		if (deviceStatus != pdPASS)
		{
			result = FAIL;
		}

		/* Enable the interrupts on GIC */
		vPortEnableInterrupt(PHS_INTERRUPT_S2L_0);
		vPortEnableInterrupt(PHS_INTERRUPT_S2L_1);
		vPortEnableInterrupt(PHS_INTERRUPT_L2S_0);
		vPortEnableInterrupt(PHS_INTERRUPT_L2S_1);

		// configASSERT(result == PASS);
	   	if (result == FAIL)  {  for (;;);  }
    }
}



/******************************************************************************/
/* TASK_PHS_InterruptHandler_xxx signals the interrupt to the task that       */
/* manages it (4 interrupts)                                                  */
/******************************************************************************/

static void TASK_PHS_InterruptHandler_S2L_0(void)
{
	s32      xHigherPriorityTaskWoken = pdFALSE;

#if PRINT_DEBUG
	xil_printf("interrupt in handler S2L_0\n\r");
    u32 value;
    value = PHS_CMN_ReadIRQs_L2S_0(&TASK_PHS_device[PHS_CMN]);
    xil_printf("L2S_0 : %d\n\r", value);
    value = PHS_CMN_ReadIRQs_L2S_1(&TASK_PHS_device[PHS_CMN]);
    xil_printf("L2S_1 : %d\n\r", value);
    value = PHS_CMN_ReadIRQs_S2L_0(&TASK_PHS_device[PHS_CMN]);
    xil_printf("S2L_0 : %d\n\r", value);
    value = PHS_CMN_ReadIRQs_S2L_1(&TASK_PHS_device[PHS_CMN]);
    xil_printf("S2L_1 : %d\n\r", value);
#endif

	/* disable the interrupt */
	vPortDisableInterrupt(PHS_INTERRUPT_S2L_0);

	/* release the interrupt semaphore */
    xSemaphoreGiveFromISR( TASK_PHS_xSemaphoreInterrupt[S2L_0], (s32*)&xHigherPriorityTaskWoken );

	/* ensure interrupt returns directly to the unblocked, higher priority, task, if any */
    portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
}

static void TASK_PHS_InterruptHandler_S2L_1(void)
{
	s32      xHigherPriorityTaskWoken = pdFALSE;

#if PRINT_DEBUG
	xil_printf("interrupt in handler S2L_1\n\r");
    u32 value;
    value = PHS_CMN_ReadIRQs_L2S_0(&TASK_PHS_device[PHS_CMN]);
    xil_printf("L2S_0 : %d\n\r", value);
    value = PHS_CMN_ReadIRQs_L2S_1(&TASK_PHS_device[PHS_CMN]);
    xil_printf("L2S_1 : %d\n\r", value);
    value = PHS_CMN_ReadIRQs_S2L_0(&TASK_PHS_device[PHS_CMN]);
    xil_printf("S2L_0 : %d\n\r", value);
    value = PHS_CMN_ReadIRQs_S2L_1(&TASK_PHS_device[PHS_CMN]);
    xil_printf("S2L_1 : %d\n\r", value);
#endif

	/* disable the interrupt */
	vPortDisableInterrupt(PHS_INTERRUPT_S2L_1);

	/* release the interrupt semaphore */
    xSemaphoreGiveFromISR( TASK_PHS_xSemaphoreInterrupt[S2L_1], (s32*)&xHigherPriorityTaskWoken );

	/* ensure interrupt returns directly to the unblocked, higher priority, task, if any */
    portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
}

static void TASK_PHS_InterruptHandler_L2S_0(void)
{
	s32      xHigherPriorityTaskWoken = pdFALSE;

#if PRINT_DEBUG
	xil_printf("interrupt in handler L2S_0\n\r");
    u32 value;
    value = PHS_CMN_ReadIRQs_L2S_0(&TASK_PHS_device[PHS_CMN]);
    xil_printf("L2S_0 : %d\n\r", value);
    value = PHS_CMN_ReadIRQs_L2S_1(&TASK_PHS_device[PHS_CMN]);
    xil_printf("L2S_1 : %d\n\r", value);
    value = PHS_CMN_ReadIRQs_S2L_0(&TASK_PHS_device[PHS_CMN]);
    xil_printf("S2L_0 : %d\n\r", value);
    value = PHS_CMN_ReadIRQs_S2L_1(&TASK_PHS_device[PHS_CMN]);
    xil_printf("S2L_1 : %d\n\r", value);
#endif

	/* disable the interrupt */
	vPortDisableInterrupt(PHS_INTERRUPT_L2S_0);

	/* release the interrupt semaphore */
    xSemaphoreGiveFromISR( TASK_PHS_xSemaphoreInterrupt[L2S_0], (s32*)&xHigherPriorityTaskWoken );

	/* ensure interrupt returns directly to the unblocked, higher priority, task, if any */
    portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
}

static void TASK_PHS_InterruptHandler_L2S_1(void)
{
	s32      xHigherPriorityTaskWoken = pdFALSE;

#if PRINT_DEBUG
	xil_printf("interrupt in handler L2S_1\n\r");
    u32 value;
    value = PHS_CMN_ReadIRQs_L2S_0(&TASK_PHS_device[PHS_CMN]);
    xil_printf("L2S_0 : %d\n\r", value);
    value = PHS_CMN_ReadIRQs_L2S_1(&TASK_PHS_device[PHS_CMN]);
    xil_printf("L2S_1 : %d\n\r", value);
    value = PHS_CMN_ReadIRQs_S2L_0(&TASK_PHS_device[PHS_CMN]);
    xil_printf("S2L_0 : %d\n\r", value);
    value = PHS_CMN_ReadIRQs_S2L_1(&TASK_PHS_device[PHS_CMN]);
    xil_printf("S2L_1 : %d\n\r", value);
#endif

	/* disable the interrupt */
	vPortDisableInterrupt(PHS_INTERRUPT_L2S_1);

	/* release the interrupt semaphore */
    xSemaphoreGiveFromISR( TASK_PHS_xSemaphoreInterrupt[L2S_1], (s32*)&xHigherPriorityTaskWoken );

	/* ensure interrupt returns directly to the unblocked, higher priority, task, if any */
    portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
}



/******************************************************************************/
/* task that manages the interrupts                                           */
/******************************************************************************/

static void prvTask_PHS_ManageInterrupt(void *pvParameters)
{
	u32 interruptId = (u32)pvParameters;

    TASK_PHS_ConfigInterrupt();

    /* clear pending interrupts at the start */
    for (u8 i = 0; i < TASK_PHS_NUM_DEVICES; i++)
    {
    	PHS_ClearIRQ_S2L(&TASK_PHS_device[i]);
    	PHS_ClearIRQ_L2S(&TASK_PHS_device[i]);
    }

    xil_printf("task PHS interrupt %d started\n\r", interruptId);

#if PRINT_DEBUG
    {
    	u32 value;
    	value = PHS_CMN_ReadIRQs_L2S_0(&TASK_PHS_device[PHS_CMN]);
    	xil_printf("L2S_0 : %d\n\r", value);
    	value = PHS_CMN_ReadIRQs_L2S_1(&TASK_PHS_device[PHS_CMN]);
    	xil_printf("L2S_1 : %d\n\r", value);
    	value = PHS_CMN_ReadIRQs_S2L_0(&TASK_PHS_device[PHS_CMN]);
    	xil_printf("S2L_0 : %d\n\r", value);
    	value = PHS_CMN_ReadIRQs_S2L_1(&TASK_PHS_device[PHS_CMN]);
    	xil_printf("S2L_1 : %d\n\r", value);
    }
#endif

    /* enter the loop that defines the task behaviour */
    for( ;; )
    {
    	/* wait for an interrupt from PHS */
    	  if (xSemaphoreTake(TASK_PHS_xSemaphoreInterrupt[interruptId], TASK_PHS_INTERRUPT_WAIT) == pdPASS)
    	  {
    		  if (interruptId == 0)   xil_printf("interrupt in task PHS S2L_0\n\r");
    		  if (interruptId == 1)   xil_printf("interrupt in task PHS S2L_1\n\r");
    		  if (interruptId == 2)   xil_printf("interrupt in task PHS L2S_0\n\r");
    		  if (interruptId == 3)   xil_printf("interrupt in task PHS L2S_1\n\r");

        	  TASK_PHS_Actions(interruptId);
    	  }
    }
}



/******************************************************************************/
/* TASK_PHS_Actions executes task operations                                  */
/******************************************************************************/

static void TASK_PHS_Actions(u32 interruptId)
{
	u32                (*functionCmnReadIrqs) (PHS_t* dev);	 /* function to read the common interrupt register */
	u8                 (*functionGetIrq) (PHS_t* dev);		 /* function to read the interrupt of a single device */
	void               (*functionClearIrq) (PHS_t* dev);	 /* function to read the interrupt of a single device */

	u8                 deviceStart;							 /* index of the first device to check */
	u32                interruptsRegister = 0u;				 /* common interrupt register value */
	u8                 i, j;								 /* index for cycles */
	u8                 fired;								 /* local variable to check interrupt value */
	SemaphoreHandle_t  registeredId;						 /* id of the registered task */
	PHS_status_t       status;								 /* status of the photosensor (shade, light) */
	u8                 gicInterruptId;						 /* id of the interrupt to re-enable */

	/* select the drivers to use depending on arrived interrupt */
	switch (interruptId)
	{
		case S2L_0:
		{
			functionCmnReadIrqs = PHS_CMN_ReadIRQs_S2L_0;
			functionGetIrq      = PHS_GetIRQ_S2L;
			functionClearIrq    = PHS_ClearIRQ_S2L;
			deviceStart         = PHS_0;
			status              = LIGHT;
			gicInterruptId      = PHS_INTERRUPT_S2L_0;
			break;
		}
		case S2L_1:
		{
			functionCmnReadIrqs = PHS_CMN_ReadIRQs_S2L_1;
			functionGetIrq      = PHS_GetIRQ_S2L;
			functionClearIrq    = PHS_ClearIRQ_S2L;
			deviceStart         = PHS_25;
			status              = LIGHT;
			gicInterruptId      = PHS_INTERRUPT_S2L_1;
			break;
		}
		case L2S_0:
		{
			functionCmnReadIrqs = PHS_CMN_ReadIRQs_L2S_0;
			functionGetIrq      = PHS_GetIRQ_L2S;
			functionClearIrq    = PHS_ClearIRQ_L2S;
			deviceStart         = PHS_0;
			status              = SHADE;
			gicInterruptId      = PHS_INTERRUPT_L2S_0;
			break;
		}
		case L2S_1:
		{
			functionCmnReadIrqs = PHS_CMN_ReadIRQs_L2S_1;
			functionGetIrq      = PHS_GetIRQ_L2S;
			functionClearIrq    = PHS_ClearIRQ_L2S;
			deviceStart         = PHS_25;
			status              = SHADE;
			gicInterruptId      = PHS_INTERRUPT_L2S_1;
			break;
		}
		default:
		{
			/* exit */
			// configASSERT(0);
			for (;;);
			break;
		}
	}

	/* read the common interrupts register */
	interruptsRegister = functionCmnReadIrqs(&TASK_PHS_device[PHS_CMN]);
	// configASSERT(TASK_PHS_device[PHS_CMN].status == REQ_OK);
	if(TASK_PHS_device[PHS_CMN].status != REQ_OK)  {  for(;;);  }

	while (interruptsRegister != 0u)
	{
		/* for each device */
		for (i = 0; i < TASK_PHS_IRQS_IN_REGISTER; i++)
		{
			/* check if fired */
			fired = (*functionGetIrq)(&TASK_PHS_device[deviceStart + i]);
			// configASSERT(TASK_PHS_device[deviceStart + i].status == REQ_OK);
			if(TASK_PHS_device[deviceStart + i].status != REQ_OK)  {  for(;;);  }

			if (fired == TRUE)
			{
				for (j = 0; j < TASK_PHS_MAX_OBJ_SERVED; j++)
				{
					/* read the registered id */
					registeredId = TASK_PHS_ReadRegistration(j, (deviceStart + i), status);

					/* if a task registered */
					if (registeredId != NULL)
					{
						/* send answer in related queue */
						xSemaphoreGive(registeredId);

						/* delete registration */
						TASK_PHS_ClearRegistration(j, (deviceStart + i), status);
					}
				}

				/* clear irq for the current device */
				(*functionClearIrq)(&TASK_PHS_device[deviceStart + i]);
				// configASSERT(TASK_PHS_device[deviceStart + i].status == REQ_OK);
				if (TASK_PHS_device[deviceStart + i].status != REQ_OK)  {  for (;;);  }

				/* check if cleared */
				fired = (*functionGetIrq)(&TASK_PHS_device[deviceStart + i]);
				// configASSERT(TASK_PHS_device[deviceStart + i].status == REQ_OK);
				if ((TASK_PHS_device[deviceStart + i].status != REQ_OK) || fired == TRUE)  {  for (;;);  }
			}
		}

		/* read the common interrupts register */
		interruptsRegister = functionCmnReadIrqs(&TASK_PHS_device[PHS_CMN]);
		// configASSERT(TASK_PHS_device[PHS_CMN].status == REQ_OK);
		if(TASK_PHS_device[PHS_CMN].status != REQ_OK)  {  for(;;);  }
	}

	/* enable interrupt */
	vPortEnableInterrupt(gicInterruptId);
}



/******************************************************************************/
/* task that serves commands via SPI                                          */
/******************************************************************************/

static void prvTask_PHS_ServeCommands(void *pvParameters)
{
    receivedData_t  received;
    answersData_t   answer;

    /* parameters not used */
    (void)pvParameters;

    xil_printf("task PHS started\n\r");

    /* enter the loop that defines the task behaviour */
    for( ;; )
    {
        /* wait for a command from parser */
        if (xQueueReceive(TASK_PHS_xQueueCommands, &received, COMMAND_WAIT) == pdPASS)
    	{
			/* decode command */
    		switch (received.opCode)
    		{
    			/****************************/
    			/* Get Digital Input Status */
    			/****************************/
    			case CMD_GET_DIGITAL_INPUT_STATUS:
    			{
    			    u64           results = 0u;
    			    PHS_status_t  status;

    				/*  for each device */
    				for (int i = 0u; i < TASK_PHS_NUM_DEVICES; i++)
    				{
						/* read device status */
						status = TASK_PHS_GetDigitalStatus(i);

						/* save in answer */
						results = results | (((u64)status) << i);
    				}

    				/* build answer */
    				answer.opCode             = RESP_GET_DIGITAL_INPUT_STATUS;
    				answer.options            = 0x0000u;
    				answer.status             = 0x0000u;    /* success */
    				answer.digitalInputStatus = results;

    				/* send answer back */
    				xQueueSend(TASK_SPI_xQueueTx, &answer, ANSWER_WAIT);
    				break;
    			}


    			/*********************/
    			/* Set Analog Output */
    			/*********************/
    			case CMD_SET_ANALOG_OUTPUT:
    			{
    				u8  result;

    			    u8  deviceId = (u8)received.deviceId;
    			    u16 value    =     received.outputValue;

    				/* set the value */
    				result = TASK_PHS_SetPWM(deviceId, value, 0u);

    				/* build answer */
    				answer.opCode           = RESP_SET_ANALOG_OUTPUT;
    				answer.options          = 0x0000u;
    				answer.status           = (result == PASS) ? 0x0000u : 0xFFFFu;

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
/* TASK_PHS_GetPWM returns the value of PWM                                   */
/******************************************************************************/

u16 TASK_PHS_GetPWM(u8 deviceId)
{
	u16 value;

	/* read the PWM value */
	value = PHS_GetPWMValue(&TASK_PHS_device[deviceId]);

	// configASSERT(TASK_PHS_device[deviceId].status == REQ_OK);
	if(TASK_PHS_device[deviceId].status != REQ_OK)  {  for(;;);  }

	return (value);
}



/******************************************************************************/
/* TASK_PHS_SetPWM sets the value of PWM                                      */
/* returns FAIL if the device is not available within the timeout             */
/******************************************************************************/

u8 TASK_PHS_SetPWM(u8 deviceId, u16 value, u32 timeoutSeconds)
{
	u8 result = FAIL;

	/* take the device semaphore */
	if (xSemaphoreTake(TASK_PHS_xSemaphoreDevice[deviceId], ((timeoutSeconds*1000)/portTICK_PERIOD_MS)) == pdPASS)
	{
		/* set the value */
		PHS_SetPWMValue(&TASK_PHS_device[deviceId], value);

		// configASSERT(TASK_PHS_device[deviceId].status == REQ_OK);
		if (TASK_PHS_device[deviceId].status != REQ_OK)
		{
			/* return error (wrong value) and reset the device status */
			result = FAIL;
			TASK_PHS_device[deviceId].status = REQ_OK;
		}
		else
		{
			result = PASS;
		}

		/* release device semaphore */
		xSemaphoreGive(TASK_PHS_xSemaphoreDevice[deviceId]);
	}

	return (result);
}



/******************************************************************************/
/* TASK_PHS_GetDigitalStatus returns the digital status                       */
/******************************************************************************/

PHS_status_t TASK_PHS_GetDigitalStatus(u8 deviceId)
{
	u8 value;

	/* read the value */
	value = PHS_GetStatusValue(&TASK_PHS_device[deviceId]);
	// configASSERT(TASK_PHS_device[deviceId].status == REQ_OK);
	if(TASK_PHS_device[deviceId].status != REQ_OK)  {  for(;;);  }

	return (value);
}



/******************************************************************************/
/* TASK_PHS_WaitDigitalStatus signals when the specified status is achieved   */
/* returns FAIL if status is not achieved within the timeout                  */
/******************************************************************************/

u8 TASK_PHS_WaitDigitalStatus(u32 objectId, u8 deviceId, PHS_status_t status, u32 timeoutSeconds)
{
	u8           result = FAIL;
	PHS_status_t value;

	/* read status */
	value = PHS_GetStatusValue(&TASK_PHS_device[deviceId]);
	// configASSERT(TASK_PHS_device[deviceId].status == REQ_OK);
	if (TASK_PHS_device[deviceId].status != REQ_OK)  {  for (;;);  }

	/* if the current status is equal to the specified, return ok */
	if (value == status)
	{

#if PRINT_DEBUG
		xil_printf("current status for %d\n\r", objectId);
#endif

		result = PASS;
	}
	/* otherwise register and wait for notification */
	else
	{
		/* register for notification */
		TASK_PHS_Register(objectId, deviceId, status);

		/* wait for notification */
		if (xSemaphoreTake(TASK_PHS_xSemaphoreNotifications[objectId], ((timeoutSeconds*1000)/portTICK_PERIOD_MS)) == pdPASS)
		{

#if PRINT_DEBUG
			xil_printf("notification for %d\n\r", objectId);
#endif

			result = PASS;
		}
		else
		{
			/* clear registration */
			TASK_PHS_ClearRegistration(objectId, deviceId, status);
		}
	}
	return (result);
}



/******************************************************************************/
/* TASK_PHS_Register registers a request of notification                      */
/* stops execution if registration table is not available within              */
/* TASK_PHS_REGISTRATION_WAIT                                                 */
/******************************************************************************/

static void TASK_PHS_Register(u32 objectId, u8 deviceId, PHS_status_t status)
{
	/* take registration semaphore */
	if (xSemaphoreTake(TASK_PHS_xSemaphoreRegistration, TASK_PHS_REGISTRATION_WAIT) == pdTRUE)
	{
		TASK_PHS_registration[deviceId][objectId][status] = TASK_PHS_xSemaphoreNotifications[objectId];

		/* release registration semaphore */
		xSemaphoreGive(TASK_PHS_xSemaphoreRegistration);

#if PRINT_DEBUG
		xil_printf ("registration for %d\n\r", objectId);
#endif

	}
	else
	{
		/* if the registration semaphore is not taken within
		 * TASK_PHS_REGISTRATION_WAIT milliseconds, blocking error */
		// configASSERT(0);
		for (;;);
	}
}



/******************************************************************************/
/* TASK_PHS_ClearRegistration clears the registration for the specified       */
/* device                                                                     */
/******************************************************************************/

static void TASK_PHS_ClearRegistration(u32 objectId, u8 deviceId, PHS_status_t status)
{
	/* take registration semaphore */
	if (xSemaphoreTake(TASK_PHS_xSemaphoreRegistration, TASK_PHS_REGISTRATION_WAIT) == pdTRUE)
	{
		TASK_PHS_registration[deviceId][objectId][status] = NULL;

		/* release registration semaphore */
		xSemaphoreGive(TASK_PHS_xSemaphoreRegistration);
	}
	else
	{
		// configASSERT(0);
		for (;;);
	}
}



/******************************************************************************/
/* TASK_PHS_ReadRegistration returns the registered semaphore for the         */
/* specified device, status and object                                        */
/******************************************************************************/

static SemaphoreHandle_t TASK_PHS_ReadRegistration(u32 objectId, u8 deviceId, PHS_status_t status)
{
    return (TASK_PHS_registration[deviceId][objectId][status]);
}
