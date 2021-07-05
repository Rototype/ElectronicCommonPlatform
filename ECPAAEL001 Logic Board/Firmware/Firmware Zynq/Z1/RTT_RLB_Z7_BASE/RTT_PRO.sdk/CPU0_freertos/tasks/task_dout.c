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

#include "task_dout.h"
#include "xgpio.h"

#include "common.h"

#include "protocol.h"
#include "task_spi.h"



/***********/
/* defines */
/***********/

#define QUEUE_LENGTH            (1u)
#define COMMAND_SIZE            (sizeof(receivedData_t))

#define COMMAND_WAIT            (portMAX_DELAY)
#define ANSWER_WAIT             (10 / portTICK_PERIOD_MS)

#define DOUT_CHANNEL            (1u)

#define OUTPUTS_MASK            (0x00000000u)

#define NUM_GPIO                (10u)


/********************/
/* global variables */
/********************/

/* instance of the GPIO Driver */
XGpio Gpio;

/* semaphore to access device */
SemaphoreHandle_t    TASK_DOUT_xSemaphoreDevice;

/* queue handle to receive commands */
QueueHandle_t        TASK_DOUT_xQueueCommands = NULL;



/**************/
/* prototypes */
/**************/

        u32 TASK_DOUT_Initialize(void);

static void prvTask_DOUT_ServeCommands(void *pvParameters);

         u8 TASK_DOUT_SetDigitalOutput(u8 deviceId, u16 value, u32 timeout);



/******************************************************************************/
/* TASK_DOUT_Initialize executes the module initialisation                     */
/******************************************************************************/

u32 TASK_DOUT_Initialize(void)
{
    u32          result = PASS;
    BaseType_t   xStatus;
    s32          Status;

    /* initialise the gpio driver */
    Status = XGpio_Initialize(&Gpio, XPAR_GPIO_0_DEVICE_ID);
    if (Status != XST_SUCCESS)
    {
        result = FAIL;
    }
    else
    {
        /* Set the direction for all signals as output */
        XGpio_SetDataDirection(&Gpio, DOUT_CHANNEL, OUTPUTS_MASK);
    }

    /* create semaphore for device access (the semaphore is taken) */
    TASK_DOUT_xSemaphoreDevice = xSemaphoreCreateBinary();
    if (TASK_DOUT_xSemaphoreDevice == NULL)
    {
        result = FAIL;
    }
    /* release semaphore */
    xSemaphoreGive(TASK_DOUT_xSemaphoreDevice);

    /* create queue to receive commands */
    TASK_DOUT_xQueueCommands = xQueueCreate(QUEUE_LENGTH, COMMAND_SIZE);
    if (TASK_DOUT_xQueueCommands == NULL)
    {
        result = FAIL;
    }

    /* Create the task to manage commands */
    xStatus = xTaskCreate(prvTask_DOUT_ServeCommands,    /* The function that implements the task. */
                          "Task_DOUT_CMDS",              /* The text name assigned to the task - for debug only. */
                          512,							 // configMINIMAL_STACK_SIZE,      /* The size of the stack to allocate to the task. (128) */
                          NULL,                          /* The parameter passed to the task. */
                          TASK_DOUT_COMMANDS_PRIORITY,   /* The priority assigned to the task. */
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

static void prvTask_DOUT_ServeCommands(void *pvParameters)
{
    receivedData_t  received;
    answersData_t   answer;

    /* parameters not used */
    (void)pvParameters;

    xil_printf("task DOUT started\n\r");

    /* enter the loop that defines the task behaviour */
    for( ;; )
    {
        /* wait for a command from parser */
        if (xQueueReceive(TASK_DOUT_xQueueCommands, &received, COMMAND_WAIT) == pdPASS)
        {
            /* decode command */
            switch (received.opCode)
            {
                /**********************/
                /* Set Digital Output */
                /**********************/
                case CMD_SET_DIGITAL_OUTPUT:
                {
                    u8  result;

                    u8  deviceId = (u8)received.deviceId;
                    u16 value    =     received.outputValue;

                    /* set the value */
                    result = TASK_DOUT_SetDigitalOutput(deviceId, value, 0u);

                    /* build answer */
                    answer.opCode  = RESP_SET_DIGITAL_OUTPUT;
                    answer.options = 0x0000u;
                    answer.status  = (result == PASS) ? 0x0000u : 0xFFFFu;

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
/* TASK_DOUT_SetDigitalOutput sets the value of a gpio output                 */
/* returns FAIL if the device is not available within the timeout             */
/******************************************************************************/

u8 TASK_DOUT_SetDigitalOutput(u8 deviceId, u16 value, u32 timeout)
{
    u8  result = FAIL;
    u32 mask;               /* mask to set the bit of the device */

    /* check parameters range */
    if ((deviceId >= NUM_GPIO) || (value > 1u))
    {
        return (FAIL);
    }

    /* set the mask value */
    mask = ((u32)1u << deviceId);

    /* take the device semaphore */
    if (xSemaphoreTake(TASK_DOUT_xSemaphoreDevice, (timeout/portTICK_PERIOD_MS)) == pdPASS)
    {
        if (value == 1u)
        {
            /* set the bit to 1 */
            XGpio_DiscreteSet(&Gpio, DOUT_CHANNEL, mask);
        }
        else
        {
            /* set the bit to 0 */
            XGpio_DiscreteClear(&Gpio, DOUT_CHANNEL, mask);
        }

        /* release device semaphore */
        xSemaphoreGive(TASK_DOUT_xSemaphoreDevice);

        result = PASS;
    }

    return (result);
}
