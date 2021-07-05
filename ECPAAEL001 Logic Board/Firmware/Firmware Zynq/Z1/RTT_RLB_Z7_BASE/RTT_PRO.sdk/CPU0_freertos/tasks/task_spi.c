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

#include "task_spi.h"
#include "xspips.h"
#include "xspips_custom.h"

#include "common.h"
#include "protocol.h"

#include "task_phs.h"
#include "task_sm.h"
#include "task_sol.h"
#include "task_dcm.h"

#include "task_xadc.h"
#include "task_dout.h"
#include "task_hwcc.h"

#include "xscugic.h"


/***********/
/* defines */
/***********/

/* timeout for ask/nak ; the same value of configurator */
#define TASK_SPI_ACK_TIMEOUT    (500 / portTICK_PERIOD_MS)

#define SPI_DEVICE_ID_SLAVE     (XPAR_XSPIPS_0_DEVICE_ID)
#define SPI_INTR_ID_SLAVE       (XPAR_XSPIPS_0_INTR)
#define SPI_DEVICE_ID_MASTER    (XPAR_XSPIPS_1_DEVICE_ID)
#define SPI_INTR_ID_MASTER      (XPAR_XSPIPS_1_INTR)

#define HEADER_LNT              (  2u)


typedef enum
{
    HEADER = 0u,
    DATA   = 1u
}
packetType_t;


/* structure containing data from SPI */
typedef struct
{
    u8  data[MAX_SPI_SIZE];
    u8  size;
}
spiData_s;


#define RX_QUEUE_LENGTH         (5u)
#define RX_DATA_SIZE            (sizeof(spiData_s))

#define TX_QUEUE_LENGTH         (10u)

#define ACK_QUEUE_LENGTH        (1u)
#define ACK_SIZE                (sizeof(u8))

#define TX_DATA_SIZE            (sizeof(answersData_t))

#define TASK_SPI_RX_WAIT        (portMAX_DELAY)
#define TASK_SPI_DISPATCH_WAIT  (10000 / portTICK_PERIOD_MS)

#define TASK_SPI_TX_WAIT        (portMAX_DELAY)
#define TASK_SPI_DEVICE_WAIT    (1000 / portTICK_PERIOD_MS)



/********************/
/* global variables */
/********************/

/* SPI instances */
static XSpiPs SpiInstanceSlave;
static XSpiPs SpiInstanceMaster;

static packetType_t  nextPacket;
static u32           nextDimension;

/* queue handle to receive data from SPI */
QueueHandle_t  TASK_SPI_xQueueRx = NULL;

/* queue handle for data to transmit */
QueueHandle_t  TASK_SPI_xQueueTx = NULL;

/* queue to signal ACK reception */
QueueHandle_t  TASK_SPI_xQueueAcknowledge;

/* semaphore to access SPI master */
SemaphoreHandle_t  TASK_SPI_xSemaphoreMaster;



/**************/
/* prototypes */
/**************/

        u32 TASK_SPI_Initialize(void);
 static s32 TASK_SPI_ConfigSlave(void);
 static s32 TASK_SPI_ConfigMaster(void);

static void prvTask_SPI_Receive (void *pvParameters);
static void prvTask_SPI_Transmit(void *pvParameters);

static void TASK_SPI_HandlerMaster(void *CallBackRef, u32 StatusEvent);
static void TASK_SPI_HandlerSlave(void *CallBackRef, u32 StatusEvent) ;
static void TASK_SPI_WriteMaster(spiData_s toTransmit);



/******************************************************************************/
/* TASK_SPI_Initialize executes the module initialisation                      */
/******************************************************************************/

u32 TASK_SPI_Initialize(void)
{
    u32          result = PASS;
    BaseType_t   xStatus;

    /* create semaphore to access the SPI Master (the semaphore is taken) */
    TASK_SPI_xSemaphoreMaster = xSemaphoreCreateBinary();
    if (TASK_SPI_xSemaphoreMaster == NULL)
    {
        result = FAIL;
    }
    /* release semaphore */
    xSemaphoreGive(TASK_SPI_xSemaphoreMaster);

    /* create queue to pass the ack byte */
    TASK_SPI_xQueueAcknowledge = xQueueCreate(ACK_QUEUE_LENGTH, ACK_SIZE);

    if (TASK_SPI_xQueueRx == NULL)
    {
        result = FAIL;
    }

    /* create queue to receive data from SPI */
    TASK_SPI_xQueueRx = xQueueCreate(RX_QUEUE_LENGTH, RX_DATA_SIZE);

    if (TASK_SPI_xQueueRx == NULL)
    {
        result = FAIL;
    }

    /* create queue to receive data from SPI */
    TASK_SPI_xQueueTx = xQueueCreate(TX_QUEUE_LENGTH, TX_DATA_SIZE);

    if (TASK_SPI_xQueueTx == NULL)
    {
        result = FAIL;
    }

    /* Create the task to receive from SPI */
    xStatus = xTaskCreate(prvTask_SPI_Receive,         /* The function that implements the task. */
                         "Task_SPI_RX",                /* The text name assigned to the task - for debug only. */
                         512,						   // configMINIMAL_STACK_SIZE,     /* The size of the stack to allocate to the task. (128) */
                         NULL,                         /* The parameter passed to the task. */
                         TASK_SPI_RX_PRIORITY,         /* The priority assigned to the task. */
                         NULL);                        /* The task handle. */

    if ( xStatus != pdPASS )
    {
        result = FAIL;
    }

    /* Create the task to transmit on SPI */
    xStatus = xTaskCreate(prvTask_SPI_Transmit,        /* The function that implements the task. */
                          "Task_SPI_TX",               /* The text name assigned to the task - for debug only. */
                          512,						   // configMINIMAL_STACK_SIZE,    /* The size of the stack to allocate to the task. (128) */
                          NULL,                        /* The parameter passed to the task. */
                          TASK_SPI_TX_PRIORITY,        /* The priority assigned to the task. */
                          NULL);                       /* The task handle. */

    if ( xStatus != pdPASS )
    {
        result = FAIL;
    }

    return (result);
}



/******************************************************************************/
/* TASK_SPI_ConfigSlave configures the slave SPI (receiver)                   */
/******************************************************************************/

static s32 TASK_SPI_ConfigSlave(void)
{
    s32        Status;
    BaseType_t deviceStatus;

    XSpiPs_Config *SpiConfigSlave;

    /* Initialise the SPI 0 - SLAVE */

    SpiConfigSlave = XSpiPs_LookupConfig(SPI_DEVICE_ID_SLAVE);
    if (SpiConfigSlave == NULL)
    {
        return (XST_FAILURE);
    }

    Status = XSpiPs_CfgInitialize(&SpiInstanceSlave,
                                  SpiConfigSlave,
                                  SpiConfigSlave->BaseAddress);
    if (Status != XST_SUCCESS)
    {
        return (XST_FAILURE);
    }

    /* Set the SPI device as a slave */
    Status = XSpiPs_SetOptions(&SpiInstanceSlave, 0x00000000U);
    if (Status != XST_SUCCESS)
    {
        return (XST_FAILURE);
    }

    /* Connect the device driver handler that will be called when an
     * interrupt for the device occurs, the handler defined above performs
     * the specific interrupt processing for the device */
    deviceStatus = xPortInstallInterruptHandler(SPI_INTR_ID_SLAVE, (Xil_ExceptionHandler)TASK_SPI_HandlerSlave, NULL);
    if (deviceStatus != pdPASS)
    {
        return (XST_FAILURE);
    }

     /* Enable the interrupt for the Spi device */
     vPortEnableInterrupt(SPI_INTR_ID_SLAVE);

     /* SLAVE initial settings */

     /* waiting for a header as first packet */
     nextPacket    = HEADER;
     nextDimension = HEADER_LNT;

     /* set the initial threshold for spi read equal to header length */
     XSpiPs_SetRXWatermark(&SpiInstanceSlave,HEADER_LNT);

     /* Enable the slave device */
     XSpiPs_Enable(&SpiInstanceSlave);

     /* Clear all the slave interrupts */
      XSpiPs_WriteReg(SpiInstanceSlave.Config.BaseAddress,
                      XSPIPS_SR_OFFSET,
                      XSPIPS_IXR_WR_TO_CLR_MASK);

      /* Enable interrupts */
      XSpiPs_WriteReg(SpiInstanceSlave.Config.BaseAddress,
                      XSPIPS_IER_OFFSET,
                      0x10);

      return (XST_SUCCESS);
}



/******************************************************************************/
/* TASK_SPI_ConfigMaster configures the master SPI (transmitter)              */
/******************************************************************************/

static s32 TASK_SPI_ConfigMaster(void)
{
    s32        Status;
    BaseType_t deviceStatus;

    XSpiPs_Config *SpiConfigMaster;

    /* Initialise the SPI 1 - MASTER */

    SpiConfigMaster = XSpiPs_LookupConfig(SPI_DEVICE_ID_MASTER);
    if (SpiConfigMaster == NULL)
    {
        return (XST_FAILURE);
    }

    Status = XSpiPs_CfgInitialize(&SpiInstanceMaster,
                                  SpiConfigMaster,
                                  SpiConfigMaster->BaseAddress);
    if (Status != XST_SUCCESS)
    {
        return (XST_FAILURE);
    }

    /* Set the SPI device as a master with manual start and manual
     * chip select mode options */
    Status = XSpiPs_SetOptions(&SpiInstanceMaster,
                               XSPIPS_MANUAL_START_OPTION | XSPIPS_MASTER_OPTION | XSPIPS_FORCE_SSELECT_OPTION);
    if (Status != XST_SUCCESS)
    {
        return (XST_FAILURE);
    }

    /* Set the SPI device pre-scalar to divide by 8 */
    Status = XSpiPs_SetClkPrescaler(&SpiInstanceMaster, XSPIPS_CLK_PRESCALE_8);
    if (Status != XST_SUCCESS)
    {
        return (XST_FAILURE);
    }

    /* Connect the device driver handler that will be called when an
     * interrupt for the device occurs, the handler defined above performs
     * the specific interrupt processing for the device */
    deviceStatus = xPortInstallInterruptHandler(SPI_INTR_ID_MASTER, (Xil_ExceptionHandler)TASK_SPI_HandlerMaster, NULL);
    if (deviceStatus != pdPASS)
    {
        return (XST_FAILURE);
    }

     /* Enable the interrupt for the Spi device */
     vPortEnableInterrupt(SPI_INTR_ID_MASTER);

     /* MASTER initial settings */

     /*slave select */
     XSpiPs_SetSlaveSelect(&SpiInstanceMaster, 0);

      return (XST_SUCCESS);
}



/******************************************************************************/
/* task that receives commands from SPI                                       */
/******************************************************************************/

static void prvTask_SPI_Receive(void *pvParameters)
{
    s32             config;
    u8              result;
    spiData_s       received;
    u8              dataField[MAX_DATA_FIELD_LENGTH];
    u8              flagLast;
    receivedData_t  receivedData;
    spiData_s       ackTransmit;
    s32 			printIdx;

    /* parameters not used */
    (void)pvParameters;

    config = TASK_SPI_ConfigSlave();

    // configASSERT(config == XST_SUCCESS);
    if (config != XST_SUCCESS)  {  for (;;);  }

    xil_printf("task SPI RX started\n\r");

    /* enter the loop that defines the task behaviour */
    for( ;; )
    {
    	/* wait for data from SPI */
        if (xQueueReceive(TASK_SPI_xQueueRx, &received, TASK_SPI_RX_WAIT) == pdPASS)
        {
            /* if it is an ack/nak */
            if ((received.size == 1u) &&
                ((received.data[0] == ACK) || (received.data[0] == NAK)))
            {
                /* pass the ack to the task waiting for it */
                xQueueSend(TASK_SPI_xQueueAcknowledge, &received.data[0], TASK_SPI_DISPATCH_WAIT);

                xil_printf("received ack/nak\n\r");
            }
            else
            {
                /* check packet and extract data field */
                result = Protocol_Receiver(received.data, received.size, dataField, &flagLast);

                xil_printf("\n\rreceived packet, result=%d \n\r", result);
                for (printIdx = 0; printIdx < received.size; printIdx++)
                {
                    xil_printf("%02x ", received.data[printIdx]);
                }
                xil_printf("\n\r");

                /* if operation successful send ACK, otherwise send NAK */
                ackTransmit.data[0] = (result == PASS) ? ACK : NAK;
                ackTransmit.size = 1;
                TASK_SPI_WriteMaster(ackTransmit);

                xil_printf("transmitted ack/nak\n\r");

                if (result == PASS)
                {
                    /* extract command */
                    result = Protocol_Parser (dataField, flagLast, &receivedData);

                    if (result == PASS)
                    {
                        /* if ETX */
                        if (flagLast == ETX)
                        {
                            xil_printf("execute\n\r");

                            /* send command to the related task */
                            switch (receivedData.opCode)
                            {
                                /* photosensors commands */
                                case CMD_GET_DIGITAL_INPUT_STATUS:
                                case CMD_SET_ANALOG_OUTPUT:
                                {
                                    xQueueSend(TASK_PHS_xQueueCommands, &receivedData, TASK_SPI_DISPATCH_WAIT);
                                    break;
                                }
                                /* xadc commands */
                                case CMD_GET_ANALOG_INPUT_STATUS:
                                {
                                    xQueueSend(TASK_XADC_xQueueCommands, &receivedData, TASK_SPI_DISPATCH_WAIT);
                                    break;
                                }
                                /* digital output (gpio) commands */
                                case CMD_SET_DIGITAL_OUTPUT:
                                {
                                    xQueueSend(TASK_DOUT_xQueueCommands, &receivedData, TASK_SPI_DISPATCH_WAIT);
                                    break;
                                }
                                /* stepper motors commands */
                                case CMD_START_STEPPER_MOTOR:
                                case CMD_STOP_STEPPER_MOTOR:
                                {
                                    xQueueSend(TASK_SM_xQueueCommands, &receivedData, TASK_SPI_DISPATCH_WAIT);
                                    break;
                                }
                                /* solenoids commands */
                                case CMD_SOLENOID_ACTIVATION:
                                case CMD_SOLENOID_DEACTIVATION:
                                {
                                    xQueueSend(TASK_SOL_xQueueCommands, &receivedData, TASK_SPI_DISPATCH_WAIT);
                                    break;
                                }
                                /* dc motors */
                                case CMD_START_DC_MOTOR:
                                case CMD_STOP_DC_MOTOR:
                                {
                                    xQueueSend(TASK_DCM_xQueueCommands, &receivedData, TASK_SPI_DISPATCH_WAIT);
                                    break;
                                }
                                case CMD_READ_HWC_CONFIGURATION_FILE:
                                case CMD_WRITE_HWC_CONFIGURATION_FILE:
                                {
                                    xQueueSend(TASK_HWCC_xQueueCommands, &receivedData, TASK_SPI_DISPATCH_WAIT);
                                    break;
                                }
                                default:
                                {
                                    break;
                                }
                            }
                        }
                        /* else (only for I2C) */
                            /* wait next message */
                    }
                }
            }
        }
    }
}



/******************************************************************************/
/* task that sends answers on SPI                                             */
/******************************************************************************/

static void prvTask_SPI_Transmit(void *pvParameters)
{
    answersData_t  received;
    s32            config;
    u8             dataField[MAX_DATA_FIELD_LENGTH];
    u8             flagLast;
    u8             result;
    spiData_s      toTransmit;
    u8             ackByte;

    /* parameters not used */
    (void)pvParameters;

    config = TASK_SPI_ConfigMaster();

    // configASSERT(config == XST_SUCCESS);
    if (config != XST_SUCCESS)  {  for (;;);  }

    xil_printf("task SPI TX started\n\r");

    /* enter the loop that defines the task behaviour */
    for( ;; )
    {
        /* wait for data to send */
        if (xQueueReceive(TASK_SPI_xQueueTx, &received, TASK_SPI_TX_WAIT) == pdPASS)
        {
            do
            {
                xil_printf("\n\rcreate answer %x\n\r", received.opCode);

                /* prepare dataField form information to be transmitted */
                result = Protocol_Formatter(&received, dataField, &flagLast);

                // configASSERT(result == PASS);

                /* create protocol packet */
                result = Protocol_Transmitter(dataField, flagLast, toTransmit.data, &(toTransmit.size) );

                // configASSERT(result == PASS);

                xil_printf("packet to transmit, result=%d \n\r", result);
                for (int i = 0; i < toTransmit.size; i++)
                {
                    xil_printf("%02x ", toTransmit.data[i]);
                }
                xil_printf("\n\r");

                /* initialise retransmissions counter */
                u8 numRetransmit = 0u;

                do
                {
                    xil_printf("send answer #%d\n\r", numRetransmit);

                    /* send via spi */
                    TASK_SPI_WriteMaster(toTransmit);

                    /* wait for ack/nak */
                    if (xQueueReceive(TASK_SPI_xQueueAcknowledge, &ackByte, TASK_SPI_ACK_TIMEOUT) != pdPASS)
                    {
                        /* timeout, assign to the ack byte the value nak */
                        ackByte = NAK;
                    }

                    /* count retransmissions */
                    numRetransmit++;

                  /* if nak (received nak or timeout), retransmit for 5 times maximum; if ack (received) do nothing*/
#if RETRANSMIT
                } while ((ackByte == NAK) && (numRetransmit < 6u));
#else
            	} while (0);
#endif
            }
            while (flagLast != ETX);
        }
    }
}



/******************************************************************************/
/* TASK_SPI_HandlerSlave manages interrupts of the SPI 0 - SLAVE              */
/******************************************************************************/

static void TASK_SPI_HandlerSlave(void *CallBackRef, u32 StatusEvent)
{
    s32        Status;
    spiData_s  arrived;
    BaseType_t xHigherPriorityTaskWoken;

    /* read the interrupt status register */
    Status = XSpiPs_ReadReg(SpiInstanceSlave.Config.BaseAddress,
                            XSPIPS_SR_OFFSET);

    /* disable interrupts */
    XSpiPs_WriteReg(SpiInstanceSlave.Config.BaseAddress,
                    XSPIPS_IDR_OFFSET,
                    0x7f);

    /* check the status event */
    if (Status & XSPIPS_IXR_RXNEMPTY_MASK)
    {
        /* read spi data */
        for(u32 Count = 0; Count < nextDimension; Count++)
        {
            arrived.data[Count] = XSpiPs_RecvByte(SpiInstanceSlave.Config.BaseAddress);
        }
        arrived.size = nextDimension;

        /* if waiting for an header */
        if (nextPacket == HEADER)
        {
            /* check if it a header */
            if (arrived.data[0] == 0x55)
            {
                /* prepare to receive packet of data */
                nextPacket = DATA;

                /* save length */
                nextDimension = arrived.data[1];

                /* set threshold */
                XSpiPs_SetRXWatermark(&SpiInstanceSlave, nextDimension);
            }
        }
        else /* waiting for data */
        {
            /* prepare to receive another header packet */
            nextPacket = HEADER;

            /* save length */
            nextDimension = HEADER_LNT;

            /* set threshold */
            XSpiPs_SetRXWatermark(&SpiInstanceSlave, nextDimension);

            /* put data in receiving queue */
            xQueueSendFromISR(TASK_SPI_xQueueRx, &arrived, &xHigherPriorityTaskWoken );

            /* Now the buffer is empty we can switch context if necessary. */
            portYIELD_FROM_ISR (xHigherPriorityTaskWoken);
        }
    }

    /* Enable the device */
    XSpiPs_Enable(&SpiInstanceSlave);

    /* Clear all the interrupts */
    XSpiPs_WriteReg(SpiInstanceSlave.Config.BaseAddress,
                    XSPIPS_SR_OFFSET,
                    XSPIPS_IXR_WR_TO_CLR_MASK);

    /* enable interrupt */
    XSpiPs_WriteReg(SpiInstanceSlave.Config.BaseAddress, XSPIPS_IER_OFFSET, 0x10);
}



/******************************************************************************/
/* TASK_SPI_HandlerMaster manages interrupts of the SPI 1 - MASTER            */
/******************************************************************************/

static void TASK_SPI_HandlerMaster(void *CallBackRef, u32 StatusEvent)
{
    BaseType_t xHigherPriorityTaskWoken;

    s32 Status;

    Status = XSpiPs_ReadReg(SpiInstanceMaster.Config.BaseAddress,
            XSPIPS_SR_OFFSET);

    XSpiPs_WriteReg(SpiInstanceMaster.Config.BaseAddress,
            XSPIPS_IDR_OFFSET, 0x7f);

    if(Status & XSPIPS_IXR_TXOW_MASK)
    {
        SpiInstanceMaster.IsBusy = FALSE;

        /* release the SPI semaphore */
        xSemaphoreGiveFromISR(TASK_SPI_xSemaphoreMaster, &xHigherPriorityTaskWoken);

        /* Now the buffer is empty we can switch context if necessary. */
        portYIELD_FROM_ISR (xHigherPriorityTaskWoken);
    }
}



/******************************************************************************/
/* TASK_SPI_WriteMaster transmits the data, preceded by an header             */
/* that declares the packet dimension                                         */
/******************************************************************************/

static void TASK_SPI_WriteMaster(spiData_s toTransmit)
{
    vTaskDelay(10u / portTICK_PERIOD_MS);

    /* transmit the header */

    /* take the device */
    if (xSemaphoreTake(TASK_SPI_xSemaphoreMaster, TASK_SPI_DEVICE_WAIT) == pdTRUE)
    {
        u8 header[HEADER_LNT];

        header[0] = 0x55u;
        header[1] = toTransmit.size;

        /* send via spi */
        XSpiPs_Transfer_Master(&SpiInstanceMaster, header, NULL, HEADER_LNT);

        /* semaphore released in the interrupt handler */
    }
    else
    {
        /* if the registration semaphore is not taken within
         * TASK_SPI_DEVICE_WAIT milliseconds, there is a blocking error */
        // configASSERT(0);
        for (;;);
    }

    /* delay at least 2ms */
    vTaskDelay(10u / portTICK_PERIOD_MS);

    /* transmit the packet */

    /* take the device */
    if (xSemaphoreTake(TASK_SPI_xSemaphoreMaster, TASK_SPI_DEVICE_WAIT) == pdTRUE)
    {
        /* send via spi */
        XSpiPs_Transfer_Master(&SpiInstanceMaster, toTransmit.data, NULL, toTransmit.size);

        /* semaphore released in the interrupt handler */
    }
    else
    {
        /* if the registration semaphore is not taken within
         * TASK_SPI_DEVICE_WAIT milliseconds, there is a blocking error */
        // configASSERT(0);
        for (;;);
    }
}
