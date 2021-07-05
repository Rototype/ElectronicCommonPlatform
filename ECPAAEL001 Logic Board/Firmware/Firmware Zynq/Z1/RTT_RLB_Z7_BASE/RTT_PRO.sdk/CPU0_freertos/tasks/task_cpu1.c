/**************/
/* inclusions */
/**************/

#include "FreeRTOS.h"
#include "task.h"

#include "portmacro.h"
#include "xil_types.h"

#include "task_cpu1.h"

#include "common.h"

#include "xil_mmu.h"
#include "xil_io.h"
#include "xscugic.h"
#include "xspips_hw.h"
#include "xparameters.h"



/***********/
/* defines */
/***********/

/* task priority */
#define TASK_CPU1_PRIORITY            (tskIDLE_PRIORITY +1u)

/* sev command define (to start ARM1) */
#define sev() __asm__("sev")

/* ARM1 addresses */
#define ARM1_STARTADR 0xFFFFFFF0
#define ARM1_BASEADDR 0x10080000



/********************/
/* global variables */
/********************/

/* task handle */
TaskHandle_t TASK_CPU1_xHandle = NULL;

/* GIC initialised at the start of the scheduler */
extern XScuGic       xInterruptController;



/**************/
/* prototypes */
/**************/

             u32 TASK_CPU1_Initialize(void);

static void prvTask_CPU1(void *pvParameters);



/******************************************************************************/
/* TASK_CPU1_Initialize executes the module initialisation                      */
/******************************************************************************/

u32 TASK_CPU1_Initialize(void)
{
	u32          result = PASS;
	BaseType_t   xStatus;

    /* Create the task to manage cpu1 */
    xStatus = xTaskCreate(prvTask_CPU1,                 /* The function that implements the task. */
                          "Task_CPU1",                  /* The text name assigned to the task - for debug only. */
                          512,							// configMINIMAL_STACK_SIZE,     /* The size of the stack to allocate to the task. (128) */
         				  NULL,                         /* The parameter passed to the task. */
                          TASK_CPU1_PRIORITY,           /* The priority assigned to the task. */
                          &TASK_CPU1_xHandle);          /* The task handle. */

    if ( xStatus != pdPASS )
    {
     	result = FAIL;
    }

	return (result);
}



/******************************************************************************/
/* task that selects interrupts for CPU-1 and sends command to start CPU-1    */
/******************************************************************************/

static void prvTask_CPU1(void *pvParameters)
{
    (void)pvParameters;

    /* CPU 1 interrupts */
    XScuGic_InterruptMaptoCpu(&xInterruptController, 1, XPAR_SCUTIMER_INTR);
    XScuGic_InterruptMaptoCpu(&xInterruptController, 1, XPS_FPGA6_INT_ID);	//*/ XPAR_FABRIC_AXI_DMA_0_MM2S_INTROUT_INTR);
    XScuGic_InterruptMaptoCpu(&xInterruptController, 1, XPS_FPGA7_INT_ID);		//*/ XPAR_FABRIC_AXI_DMA_0_S2MM_INTROUT_INTR);
    XScuGic_InterruptMaptoCpu(&xInterruptController, 1, XPS_GEM0_INT_ID);
    XScuGic_InterruptMaptoCpu(&xInterruptController, 1, XPS_GEM0_WAKE_INT_ID);

    /* Disable cache on OCM */
    /* S=b1 TEX=b100 AP=b11, Domain=b1111, C=b0, B=b0 */
    Xil_SetTlbAttributes(0xFFFF0000,0x14de2);

    /* write address for ARM1 */
    Xil_Out32(ARM1_STARTADR, ARM1_BASEADDR);

    /* wait until write has finished */
    dmb();

    /* send SEV to wake up ARM1 */
    sev();

    /* kill the task */
    vTaskDelete(TASK_CPU1_xHandle);
}
