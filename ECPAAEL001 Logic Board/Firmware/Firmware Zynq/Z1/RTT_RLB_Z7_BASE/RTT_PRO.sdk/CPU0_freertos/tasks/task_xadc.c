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

#include "task_xadc.h"

#include "common.h"

#include "protocol.h"
#include "task_spi.h"

#include "xsysmon.h"


/***********/
/* defines */
/***********/

#define XSM_CH_AUX_0        XSM_CH_AUX_MIN          /* Channel number for 1st Aux Channel */
#define XSM_CH_AUX_1        17                      /* Channel number for 2nd Aux Channel */
#define XSM_CH_AUX_2        18                      /* Channel number for 3rd Aux Channel */
#define XSM_CH_AUX_3        19                      /* Channel number for 4th Aux Channel */
#define XSM_CH_AUX_4        20                      /* Channel number for 5th Aux Channel */

#define QUEUE_LENGTH            (1u)
#define COMMAND_SIZE            (sizeof(receivedData_t))

#define COMMAND_WAIT            (portMAX_DELAY)
#define ANSWER_WAIT             (10 / portTICK_PERIOD_MS)



/********************/
/* global variables */
/********************/

/* System Monitor driver instance */
static XSysMon SysMonInst;

/* semaphore to access device */
SemaphoreHandle_t    TASK_XADC_xSemaphoreDevice;

/* queue handle to receive commands */
QueueHandle_t  TASK_XADC_xQueueCommands = NULL;



/**************/
/* prototypes */
/**************/

        u32 TASK_XADC_Initialize(void);
static  s32 TASK_XADC_ConfigDevice(void);

static void prvTask_XADC_ServeCommands(void *pvParameters);

         u8 TASK_XADC_GetAnalogStatus(u16 *values, u32 timeout);



/******************************************************************************/
/* TASK_XADC_Initialize executes the module initialisation                     */
/******************************************************************************/

u32 TASK_XADC_Initialize(void)
{
    u32          result = PASS;
    BaseType_t   xStatus;
    s32          Status;

    /* initialise the System Monitor/ADC device */
    Status = TASK_XADC_ConfigDevice();
    if (Status != XST_SUCCESS)
    {
        result = FAIL;
    }

    /* create semaphore for device access (the semaphore is taken) */
    TASK_XADC_xSemaphoreDevice = xSemaphoreCreateBinary();
    if (TASK_XADC_xSemaphoreDevice == NULL)
    {
        result = FAIL;
    }
    /* release semaphore */
    xSemaphoreGive(TASK_XADC_xSemaphoreDevice);

    /* create queue to receive commands */
    TASK_XADC_xQueueCommands = xQueueCreate(QUEUE_LENGTH, COMMAND_SIZE);
    if (TASK_XADC_xQueueCommands == NULL)
    {
        result = FAIL;
    }

    /* Create the task to manage commands */
    xStatus = xTaskCreate(prvTask_XADC_ServeCommands,    /* The function that implements the task. */
                          "Task_XADC_CMDS",              /* The text name assigned to the task - for debug only. */
                          512,							 // configMINIMAL_STACK_SIZE,      /* The size of the stack to allocate to the task. (128) */
                          NULL,                          /* The parameter passed to the task. */
                          TASK_XADC_COMMANDS_PRIORITY,   /* The priority assigned to the task. */
                          NULL);                         /* The task handle. */

    if ( xStatus != pdPASS )
    {
         result = FAIL;
    }

    return (result);
}



/******************************************************************************/
/* task that serves commands via SPI                                          */
/******************************************************************************/

static void prvTask_XADC_ServeCommands(void *pvParameters)
{
    receivedData_t  received;
    answersData_t   answer;

    /* parameters not used */
    (void)pvParameters;

    xil_printf("task XADC started\n\r");

    /* enter the loop that defines the task behaviour */
    for( ;; )
    {
        /* wait for a command from parser */
        if (xQueueReceive(TASK_XADC_xQueueCommands, &received, COMMAND_WAIT) == pdPASS)
        {
            /* decode command */
            switch (received.opCode)
            {
                /***************************/
                /* Get Analog Input Status */
                /***************************/
                case CMD_GET_ANALOG_INPUT_STATUS:
                {
                    u8  result     = PASS;
                    u16 values[5u] = {0u};

                    /* read the channel values */
                    result = TASK_XADC_GetAnalogStatus(values , 0u);

                    /* build answer */
                    answer.opCode  = RESP_GET_ANALOG_INPUT_STATUS;
                    answer.options = 0x0000u;
                    answer.status  = (result == PASS) ? 0x0000u : 0xFFFFu;
                    answer.ADC0Val = values[0];
                    answer.ADC1Val = values[1];
                    answer.ADC2Val = values[2];
                    answer.ADC3Val = values[3];
                    answer.ADC4Val = values[4];

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
/* TASK_XADC_GetAnalogStatus returns the analog status                        */
/* returns FAIL if the device is not available within the timeout             */
/******************************************************************************/

u8 TASK_XADC_GetAnalogStatus(u16 *values, u32 timeout)
{
    u8  result = FAIL;

    /* take the device semaphore */
    if (xSemaphoreTake(TASK_XADC_xSemaphoreDevice, (timeout/portTICK_PERIOD_MS)) == pdPASS)
    {
        /* Clear the old status */
        XSysMon_GetStatus(&SysMonInst);

        /* Wait till the End of Sequence occurs */
        while ((XSysMon_GetStatus(&SysMonInst) & XSM_SR_EOS_MASK) != XSM_SR_EOS_MASK)
        {
            ;   /* wait, do nothing */
        }

        /* Read the ADC converted Data from the data registers of the channels */
        /* The result is just in the 12 MSBs (pag 38 of ug480 XADC Manual)*/
        values[0] = ( XSysMon_GetAdcData(&SysMonInst, XSM_CH_AUX_0) >> 4u );
        values[1] = ( XSysMon_GetAdcData(&SysMonInst, XSM_CH_AUX_1) >> 4u );
        values[2] = ( XSysMon_GetAdcData(&SysMonInst, XSM_CH_AUX_2) >> 4u );
        values[3] = ( XSysMon_GetAdcData(&SysMonInst, XSM_CH_AUX_3) >> 4u );
        values[4] = ( XSysMon_GetAdcData(&SysMonInst, XSM_CH_AUX_4) >> 4u );

        /* release device semaphore */
        xSemaphoreGive(TASK_XADC_xSemaphoreDevice);

        result = PASS;
    }

    return (result);
}



/******************************************************************************/
/* TASK_XADC_ConfigDevice initializes the System Monitor/ADC device           */
/******************************************************************************/

static s32 TASK_XADC_ConfigDevice(void)
{
    s32             Status;
    XSysMon_Config *ConfigPtr;

    /* Initialise the SysMon driver  */
    ConfigPtr = XSysMon_LookupConfig(XPAR_SYSMON_0_DEVICE_ID);
    if (ConfigPtr == NULL) {
        return (XST_FAILURE);
    }

    Status = XSysMon_CfgInitialize(&SysMonInst,
                                   ConfigPtr,
                                   ConfigPtr->BaseAddress);
    if (Status != XST_SUCCESS)
    {
        return (XST_FAILURE);
    }

    /* Self Test the System Monitor/ADC device */
    Status = XSysMon_SelfTest(&SysMonInst);
    if (Status != XST_SUCCESS)
    {
        return (XST_FAILURE);
    }

    /* Disable the Channel Sequencer before configuring the Sequence registers */
    XSysMon_SetSequencerMode(&SysMonInst, XSM_SEQ_MODE_SAFE);

    /* Setup the Averaging to be done for the channels in the
       Configuration 0 register as 64 samples */
    XSysMon_SetAvg(&SysMonInst, XSM_AVG_64_SAMPLES);

    /* Set the Bipolar Mode */
    Status = XSysMon_SetSeqInputMode(&SysMonInst,
                                     XSM_SEQ_CH_AUX00 | XSM_SEQ_CH_AUX01 | XSM_SEQ_CH_AUX02 | XSM_SEQ_CH_AUX03 | XSM_SEQ_CH_AUX04);
    if (Status != XST_SUCCESS)
    {
        return (XST_FAILURE);
    }

    /* Enable the averaging on the channels in the Sequencer registers */
    Status =  XSysMon_SetSeqAvgEnables(&SysMonInst,
                                       XSM_SEQ_CH_AUX00 | XSM_SEQ_CH_AUX01 | XSM_SEQ_CH_AUX02 | XSM_SEQ_CH_AUX03 | XSM_SEQ_CH_AUX04);
    if (Status != XST_SUCCESS)
    {
        return (XST_FAILURE);
    }

    /* Enable the channels in the Sequencer registers */
    Status =  XSysMon_SetSeqChEnables(&SysMonInst,
                                      XSM_SEQ_CH_AUX00 | XSM_SEQ_CH_AUX01 | XSM_SEQ_CH_AUX02 | XSM_SEQ_CH_AUX03 | XSM_SEQ_CH_AUX04);
    if (Status != XST_SUCCESS)
    {
        return (XST_FAILURE);
    }

    /* Set the ADCCLK frequency equal to 1/32 of System clock for the System
       Monitor/ADC in the Configuration Register 2 */
    XSysMon_SetAdcClkDivisor(&SysMonInst, 32);

    /* Enable the Channel Sequencer in continuous sequencer cycling mode */
    XSysMon_SetSequencerMode(&SysMonInst, XSM_SEQ_MODE_CONTINPASS);

    return (XST_SUCCESS);
}
