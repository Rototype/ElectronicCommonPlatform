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

#include "task_hwcc.h"
#include "iic_eeprom.h"

#include "common.h"

#include "protocol.h"
#include "task_spi.h"

#include "xstatus.h"



/***********/
/* defines */
/***********/

#define QUEUE_LENGTH            (1u)
#define COMMAND_SIZE            (sizeof(receivedData_t))

#define COMMAND_WAIT            (portMAX_DELAY)
#define ANSWER_WAIT             (10 / portTICK_PERIOD_MS)



/********************/
/* global variables */
/********************/

/* semaphore to access I2C */
SemaphoreHandle_t  TASK_HWCC_xSemaphoreDevice;

/* queue handle to receive commands */
QueueHandle_t      TASK_HWCC_xQueueCommands = NULL;



/**************/
/* prototypes */
/**************/

            u32 TASK_HWCC_Initialize(void);

static     void prvTask_HWCC_ServeCommands(void *pvParameters);

             u8 TASK_HWCC_ReadFromEeeprom(u8  *dataPtr, u32 *dataLength, u32 timeout);
             u8 TASK_HWCC_WriteToEeeprom(u8  *dataPtr, u32 dataLength, u32 timeout);



/******************************************************************************/
/* TASK_HWCC_Initialize executes the module initialisation                     */
/******************************************************************************/

u32 TASK_HWCC_Initialize(void)
{
    u32          result = PASS;
    BaseType_t   xStatus;
    s32          Status;

    /* find the eeprom slave device */
    Status = IicPsFindEeprom();
    if (Status != XST_SUCCESS)
    {
        result = FAIL;
    }

    /* create semaphore for device access (the semaphore is taken) */
    TASK_HWCC_xSemaphoreDevice = xSemaphoreCreateBinary();
    if (TASK_HWCC_xSemaphoreDevice == NULL)
    {
        result = FAIL;
    }
    /* release semaphore */
    xSemaphoreGive(TASK_HWCC_xSemaphoreDevice);

    /* create queue to receive commands */
    TASK_HWCC_xQueueCommands = xQueueCreate(QUEUE_LENGTH, COMMAND_SIZE);
    if (TASK_HWCC_xQueueCommands == NULL)
    {
        result = FAIL;
    }

    /* Create the task to manage commands */
    xStatus = xTaskCreate(prvTask_HWCC_ServeCommands,   /* The function that implements the task. */
                          "Task_HWCC_CMDS",             /* The text name assigned to the task - for debug only. */
                          512,							// configMINIMAL_STACK_SIZE,     /* The size of the stack to allocate to the task. (128) */
                          NULL,                         /* The parameter passed to the task. */
                          TASK_HWCC_COMMANDS_PRIORITY,  /* The priority assigned to the task. */
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

static void prvTask_HWCC_ServeCommands(void *pvParameters)
{
    receivedData_t  received;
    answersData_t   answer;

    /* parameters not used */
    (void)pvParameters;

    xil_printf("task HWCC started\n\r");

    /* enter the loop that defines the task behaviour */
    for( ;; )
    {
        /* wait for a command from parser */
        if (xQueueReceive(TASK_HWCC_xQueueCommands, &received, COMMAND_WAIT) == pdPASS)
        {
            /* decode command */
            switch (received.opCode)
            {
                /**************************/
                /* Read HWC Configuration */
                /**************************/
                case CMD_READ_HWC_CONFIGURATION_FILE:
                {
                    u8  result;
                    u32 readLength;

                    u8  *dataPtr  = received.hwcc_read;

                    /* read file from eeprom */
                    result = TASK_HWCC_ReadFromEeeprom(dataPtr, &readLength, 0u);

                    /* build answer */
                    answer.opCode  = RESP_READ_HWC_CONFIGURATION_FILE;
                    answer.options = 0x0000u;
                    answer.status  = (result == PASS) ? 0x0000u : 0xFFFFu;
                    answer.length  = readLength;
                    answer.hwcc_tx = dataPtr;

                    /* send answer back */
                    xQueueSend(TASK_SPI_xQueueTx, &answer, ANSWER_WAIT);
                    break;
                }
                /***************************/
                /* Write HWC Configuration */
                /***************************/
                case CMD_WRITE_HWC_CONFIGURATION_FILE:
                {
                    u8  result;

                    u32  writeLength = received.length;
                    u8  *dataPtr     = received.hwcc_write;

                    /* write file on eeprom */
                    result = TASK_HWCC_WriteToEeeprom(dataPtr, writeLength, 0u);

                    /* build answer */
                    answer.opCode  = RESP_WRITE_HWC_CONFIGURATION_FILE;
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
/* TASK_HWCC_ReadFromEeeprom reads data from eeprom                           */
/* returns FAIL if the device is not available within the timeout             */
/******************************************************************************/

u8 TASK_HWCC_ReadFromEeeprom(u8  *dataPtr, u32 *dataLength, u32 timeout)
{
    u8  result = PASS;
    s32 status;

    /* take the device semaphore */
    if (xSemaphoreTake(TASK_HWCC_xSemaphoreDevice, (timeout/portTICK_PERIOD_MS)) == pdPASS)
    {
        /* read file from eeprom */
    	status = IicEeprom_ReadFromEEPROM(dataPtr, dataLength);
    	if (status != XST_SUCCESS)
    	{
    		result = FAIL;
    	}

        /* release device semaphore */
        xSemaphoreGive(TASK_HWCC_xSemaphoreDevice);
    }
    else
    {
    	result = FAIL;
    }

    return (result);
}



/******************************************************************************/
/* TASK_HWCC_WriteToEeeprom reads data from eeprom                           */
/* returns FAIL if the device is not available within the timeout             */
/******************************************************************************/

u8 TASK_HWCC_WriteToEeeprom(u8  *dataPtr, u32 dataLength, u32 timeout)
{
    u8 result = PASS;
    s32 status;

    /* take the device semaphore */
    if (xSemaphoreTake(TASK_HWCC_xSemaphoreDevice, (timeout/portTICK_PERIOD_MS)) == pdPASS)
    {
        /* write data to eeprom */
    	status = IicEeprom_WriteToEEPROM(dataPtr, dataLength);
    	if (status != XST_SUCCESS)
    	{
    		result = FAIL;
    	}

        /* release device semaphore */
        xSemaphoreGive(TASK_HWCC_xSemaphoreDevice);
    }
    else
    {
    	result = FAIL;
    }

    return (result);
}
