/**************/
/* inclusions */
/**************/

#include "protocol.h"
#include "xil_types.h"
#include "xil_printf.h"
#include "common.h"
#include "crc16.h"



/***********/
/* defines */
/***********/

#define HWCC_MAX_SIZE       (0x1000u)      /* size of the temporary area for hwcc data - max config file size */


/********************/
/* global variables */
/********************/

/* temporary area for hwcc data */
typedef struct
{
    u16  blockNumber;
    u16  options;
    u32  fileLength;
     u8  file[HWCC_MAX_SIZE];
    u32  index;
     u8  operation; 						// 0= read, 1 = write
} hwccData;

hwccData  hwccArea = {0u, 0u, 0u, {0u}, 0u, 0u};


/**************/
/* prototypes */
/**************/

u8 Protocol_Receiver(u8 *spiData, u8 spiLength, u8 *dataField, u8 *flagLast);
u8 Protocol_Transmitter(u8 *dataField, u8 flagLast, u8 *spiData, u8 *spiLength );
u8 Protocol_Parser (u8 *dataField, u8 flagLast, receivedData_t *receivedData);
u8 Protocol_Formatter (answersData_t *transmitData, u8 *dataField, u8 *flagLast);


/*************/
/* functions */
/*************/

/******************************************************************************
 * Protocol_Receiver: given data from SPI and their length, it:
 * - checks the data format
 * - deletes the doubled DLE bytes form the payload
 * - extracts the Data Field of the packet
 * -  signals if it is the last of a packet series
 ******************************************************************************/

u8 Protocol_Receiver(u8 *spiData, u8 spiLength, u8 *dataField, u8 *flagLast)
{
    u8 result  = FAIL;
    u8 flagDle = FALSE;    /* flag to check double DLE    */
    u8 byte;               /* current byte                */
    u8 i;                  /* index to read data from SPI */
    u8 j=0u;               /* index to output data        */

    u16 currLength = 0u;   /* current dataField length    */
    u16 lengthField;       /* transmitted length          */
    u16 crcField;          /* transmitted crc             */

    if ((spiData != NULL) && (dataField != NULL))
    {
        /* check if the control characters are present */
        if (( spiData[0u]             == DLE) &&
            ( spiData[1u]             == STX) &&
            ( spiData[spiLength - 4u] == DLE) &&
            ((spiData[spiLength - 3u] == ETB) || (spiData[spiLength - 3u] == ETX)))
        {
            /* initialise CRC */
            CrcInit();

            /* manage data field */
            for (i = 2u; i < spiLength - 4u; i++)
            {
                /* read the current byte */
                byte = spiData[i];

                /* if it is a DLE */
                if (byte == DLE)
                {
                    if (flagDle == FALSE)       /* previous byte != DLE */
                    {
                        /* write the byte in the output */
                        dataField[j++] = byte;
                        currLength++;

                        /* update the CRC */
                        CrcUpdate(byte);

                        /* set the flag */
                        flagDle = TRUE;
                    }
                    else        /* previous byte == DLE */
                    {
                        /* don't write, reset the flag */
                        flagDle = FALSE;
                    }
                }
                /* if it is NOT a DLE */
                else
                {
                    if (flagDle == TRUE)        /* previous byte == DLE */
                    {
                        /* error, the DLE was not duplicated */
                        result = FAIL;
                    }
                    else
                    {
                        /* write the byte in the output */
                        dataField[j++] = byte;
                        currLength++;

                        /* update the CRC */
                        CrcUpdate(byte);
                    }
                }
            }

            /* read transmitted length */
            lengthField = ((((u16)dataField[4])<<8u) | ((u16)dataField[5]));

            /* read transmitted CRC */
            crcField = ((((u16)spiData[spiLength - 2u])<<8u) | ((u16)spiData[spiLength - 1u]));

            /* check values */
            if ((lengthField == (currLength - 6u)) &&                /* payload length = dataField length - 6 bytes (block num, opCode, length)*/
                (crcField == CrcGet()))
            {
                result = PASS;
            }

            /* signal if it is the last block of a sequence */
            *flagLast = spiData[spiLength - 3u];
        }
    }

    return (result);
}



u8 Protocol_Transmitter(u8 *dataField, u8 flagLast, u8 *spiData, u8 *spiLength )
{
    u8  result = FAIL;
    u8  byte;                  /* current byte      */
    u16 length;                /* data field length */
    u16 crc;                   /* computed crc */
    u8  i;                     /* index to read data from dataField */
    u8  j=0u;                  /* index to write data to spiData */

    if ((dataField != NULL) && (spiData != NULL) && (spiLength != NULL))
    {
        /* initialise CRC */
        CrcInit();

        spiData[j++] = DLE;
        spiData[j++] = STX;

        length = ((((u16)dataField[ 4])<<8u) |                  /* payload length */
                   ((u16)dataField[ 5]));
        length = length + 6u;                                   /* bytes with block number, opCode and length */

        for (i = 0u; i < length; i++)
        {
            /* read the current byte from dataField */
            byte = *(dataField + i);

            /* write the byte in output to spi */
            spiData[j++] = byte;

            /* update the CRC */
            CrcUpdate(byte);

            /* if it is a DLE, double it in output (not considered in CRC) */
            if (byte == DLE)
            {
                spiData[j++] = byte;
            }
        }

        spiData[j++] = DLE;
        spiData[j++] = flagLast;

        /* read the final CRC */
        crc = CrcGet();

        spiData[j++] = (u8)((crc & 0xFF00u)>>8u);
        spiData[j++] = (u8)((crc & 0x00FFu)    );

        *spiLength = j;

        result = PASS;
    }

    return (result);
}



u8 Protocol_Parser (u8 *dataField, u8 flagLast, receivedData_t *receivedData)
{
    u8 result = PASS;

    if ((dataField == NULL) || (receivedData == NULL))
    {
        result = FAIL;
    }
    else
    {
        /* extract the command opCode */
        receivedData->opCode = (protocolCommandList_e)((((u16)dataField[2])<<8u) | ((u16)dataField[3]));

        /* extract other fields */
        switch(receivedData->opCode)
        {
            case CMD_GET_DIGITAL_INPUT_STATUS:
            {
                receivedData->options     = ((((u16)dataField[ 6])<<8u) |
                                              ((u16)dataField[ 7]));
                break;
            }
            case CMD_GET_ANALOG_INPUT_STATUS:
            {
                receivedData->options     = ((((u16)dataField[ 6])<<8u) |
                                              ((u16)dataField[ 7]));
                break;
            }
            case CMD_SET_DIGITAL_OUTPUT:
            {
                receivedData->options     = ((((u16)dataField[ 6])<<8u) |
                                              ((u16)dataField[ 7]));
                receivedData->deviceId    = ((((u16)dataField[ 8])<<8u) |
                                              ((u16)dataField[ 9]));
                receivedData->outputValue = ((((u16)dataField[10])<<8u) |
                                              ((u16)dataField[11]));
                break;
            }
            case CMD_SET_ANALOG_OUTPUT:
            {
                receivedData->options     = ((((u16)dataField[ 6])<<8u) |
                                              ((u16)dataField[ 7]));
                receivedData->deviceId    = ((((u16)dataField[ 8])<<8u) |
                                              ((u16)dataField[ 9]));
                receivedData->outputValue = ((((u16)dataField[10])<<8u) |
                                              ((u16)dataField[11]));
                break;
            }
            case CMD_START_STEPPER_MOTOR:
            {
                receivedData->options         = ((((u16)dataField[ 6])<< 8u) |
                                                  ((u16)dataField[ 7]));
                receivedData->deviceId        = ((((u16)dataField[ 8])<< 8u) |
                                                  ((u16)dataField[ 9]));
                receivedData->stepsResolution = ((((u16)dataField[10])<< 8u) |
                                                  ((u16)dataField[11]));
                receivedData->load            = ((((u16)dataField[12])<< 8u) |
                                                  ((u16)dataField[13]));
                receivedData->dirCommand      = ((((u16)dataField[14])<< 8u) |
                                                  ((u16)dataField[15]));
                receivedData->targetSpeed     = ((((u32)dataField[16])<<24u) |
                                                 (((u32)dataField[17])<<16u) |
                                                 (((u32)dataField[18])<< 8u) |
                                                  ((u32)dataField[19]));
                receivedData->maxAcceleration = ((((u32)dataField[20])<<24u) |
                                                 (((u32)dataField[21])<<16u) |
                                                 (((u32)dataField[22])<< 8u) |
                                                  ((u32)dataField[23]));
                receivedData->counterMode     = ((((u16)dataField[24])<< 8u) |
                                                  ((u16)dataField[25]));
                receivedData->counterValue    = ((((u32)dataField[26])<<24u) |
                                                 (((u32)dataField[27])<<16u) |
                                                 (((u32)dataField[28])<< 8u) |
                                                  ((u32)dataField[29]));
                break;
            }
            case CMD_STOP_STEPPER_MOTOR:
            {
                receivedData->options     = ((((u16)dataField[ 6])<<8u) |
                                              ((u16)dataField[ 7]));
                receivedData->deviceId    = ((((u16)dataField[ 8])<<8u) |
                                              ((u16)dataField[ 9]));
                break;
            }
            case CMD_SOLENOID_ACTIVATION:
            {
                receivedData->options     = ((((u16)dataField[ 6])<<8u) |
                                              ((u16)dataField[ 7]));
                receivedData->deviceId    = ((((u16)dataField[ 8])<<8u) |
                                              ((u16)dataField[ 9]));
                receivedData->initTime    = ((((u16)dataField[10])<<8u) |
                                              ((u16)dataField[11]));
                receivedData->pwm         = ((((u16)dataField[12])<<8u) |
                                              ((u16)dataField[13]));
                break;
            }
            case CMD_SOLENOID_DEACTIVATION:
            {
                receivedData->options     = ((((u16)dataField[ 6])<<8u) |
                                              ((u16)dataField[ 7]));
                receivedData->deviceId    = ((((u16)dataField[ 8])<<8u) |
                                              ((u16)dataField[ 9]));
                break;
            }
            case CMD_START_DC_MOTOR:
            {
                receivedData->options     = ((((u16)dataField[ 6])<<8u) |
                                              ((u16)dataField[ 7]));
                receivedData->deviceId    = ((((u16)dataField[ 8])<<8u) |
                                              ((u16)dataField[ 9]));
                receivedData->dirCommand  = ((((u16)dataField[10])<<8u) |
                                              ((u16)dataField[11]));
                receivedData->pwm         = ((((u16)dataField[12])<<8u) |
                                              ((u16)dataField[13]));
                receivedData->pwmFreq     = ((((u16)dataField[14])<<8u) |
                                              ((u16)dataField[15]));
                break;
            }
            case CMD_STOP_DC_MOTOR:
            {
                receivedData->options     = ((((u16)dataField[ 6])<<8u) |
                                              ((u16)dataField[ 7]));
                receivedData->deviceId    = ((((u16)dataField[ 8])<<8u) |
                                              ((u16)dataField[ 9]));
                break;
            }
            case CMD_READ_HWC_CONFIGURATION_FILE:
            {
                receivedData->options     = ((((u16)dataField[ 6])<<8u) |
                                              ((u16)dataField[ 7]));

                /* pass the pointer to the local memory where to temporarily
                 * save the data read by eeprom before sending them via spi */

                hwccArea.blockNumber = 0u;
                hwccArea.operation   = READ;

                /* clean area */
                for (u32 k=0; k<HWCC_MAX_SIZE; k++)
                {
                	hwccArea.file[k] = 0u;
                }

                receivedData->hwcc_read = hwccArea.file;
                break;
            }
            case CMD_WRITE_HWC_CONFIGURATION_FILE:
            {
                u16 block;                 /* current block number */
                u16 length;                /* current data length */

                block = ((((u16)dataField[ 0])<<8u) |
                          ((u16)dataField[ 1]));

                length = ((((u16)dataField[ 4])<<8u) |                  /* payload length */
                           ((u16)dataField[ 5]));

                if (block == 1u)
                {
                    /* clean area */
                    for (u32 k=0; k<HWCC_MAX_SIZE; k++)
                    {
                    	hwccArea.file[k] = 0u;
                    }

                    /* save data in local memory */
                    hwccArea.blockNumber = block;
                    hwccArea.operation   = WRITE;

                    hwccArea.options = ((((u16)dataField[ 6])<<8u) |
                                         ((u16)dataField[ 7]));

                    hwccArea.fileLength  = ((((u32)dataField[26])<<24u) |             // TODO IPOTESI: pacchetto più lungo di 36 byte (57)
                                            (((u32)dataField[27])<<16u) |
                                            (((u32)dataField[28])<< 8u) |
                                             ((u32)dataField[29]));

                    hwccArea.index = 0u;

                    length = length - 24u;              /* current payoad length - data bytes preceding file bytes     */
                                                        /* 20 = 2 options + 16 file name + 2 reserved + 2 length(file) */

                    for (u32 i = 0u; i < length  ; i++)
                    {
                        hwccArea.file[hwccArea.index++] = dataField[30 + i];
                    }
                }
                else if ((block == (hwccArea.blockNumber + 1u)) && (hwccArea.operation == WRITE))
                {
                    /* save data in local memory */
                    for (u32 i = 0u; i < length  ; i++)
                    {
                        hwccArea.file[hwccArea.index++] = dataField[6 + i];
                    }

                    /* save block number */
                    hwccArea.blockNumber++;
                }
                else
                {
                    /* error, out of sequence */
                    result = FAIL;
                }

#if PRINT_DEBUG_FILE
                /* print area */
                xil_printf("\n\rDATA TO SAVE\n\r");
                for (u32 k=0; k<(hwccArea.fileLength); k++)
                {
                	xil_printf("%c",hwccArea.file[k]);
                }
                xil_printf("\n\r");
#endif

                if (flagLast == ETX)
                {
                    /* check length */
                    if (hwccArea.index == hwccArea.fileLength)
                    {
                        receivedData->options    = hwccArea.options;

                        /* pass the pointer to the local memory where
                         * the data to be written to eeprom have been
                         * temporarily stored while arriving from spi */
                        receivedData->hwcc_write = hwccArea.file;
                        receivedData->length     = hwccArea.fileLength;

                        result = PASS;
                    }
                    else
                    {
                        result = FAIL;
                    }
                }

                if ((result == FAIL) || (flagLast == ETX))
                {
                    /* reset local memory */
                    hwccArea.blockNumber = 0u;
                    hwccArea.options     = 0u;
                    hwccArea.fileLength  = 0u;
                    hwccArea.index       = 0u;
                }
                break;
            }
            default:
            {
                result = FAIL;
                break;
            }
        }
    }

    return (result);
}



u8 Protocol_Formatter (answersData_t *transmitData, u8 *dataField, u8 *flagLast)
{
    u8 result = PASS;

    if ((dataField == NULL) || (transmitData == NULL) || (flagLast == NULL))
    {
        result = FAIL;
    }
    else
    {
        /* create data field according to opCode */
        switch(transmitData->opCode)
        {
            case RESP_GET_DIGITAL_INPUT_STATUS:
            {
                dataField[ 0] = 0x00u;                                                                    /* block number */
                dataField[ 1] = 0x01u;
                dataField[ 2] = (u8)((((u16)(transmitData->opCode)) & 0xFF00u)>>8u);                      /* opCode */
                dataField[ 3] = (u8)((((u16)(transmitData->opCode)) & 0x00FFu)>>0u);
                dataField[ 4] =  0u;                                                                      /* length */
                dataField[ 5] = 12u;

                dataField[ 6] = (u8)(((transmitData->options           ) & 0xFF00u            )>> 8u);    /* options */
                dataField[ 7] = (u8)(((transmitData->options           ) & 0x00FFu            )>> 0u);
                dataField[ 8] = (u8)(((transmitData->status            ) & 0xFF00u            )>> 8u);    /* status */
                dataField[ 9] = (u8)(((transmitData->status            ) & 0x00FFu            )>> 0u);
                dataField[10] = (u8)(((transmitData->digitalInputStatus) & 0xFF00000000000000u)>>56u);    /* Input63-48*/
                dataField[11] = (u8)(((transmitData->digitalInputStatus) & 0x00FF000000000000u)>>48u);
                dataField[12] = (u8)(((transmitData->digitalInputStatus) & 0x0000FF0000000000u)>>40u);    /* Input47-32 */
                dataField[13] = (u8)(((transmitData->digitalInputStatus) & 0x000000FF00000000u)>>32u);
                dataField[14] = (u8)(((transmitData->digitalInputStatus) & 0x00000000FF000000u)>>24u);    /* Input31-16 */
                dataField[15] = (u8)(((transmitData->digitalInputStatus) & 0x0000000000FF0000u)>>16u);
                dataField[16] = (u8)(((transmitData->digitalInputStatus) & 0x000000000000FF00u)>> 8u);    /* Input15-0 */
                dataField[17] = (u8)(((transmitData->digitalInputStatus) & 0x00000000000000FFu)>> 0u);

                *flagLast = ETX;
                break;
            }
            case RESP_GET_ANALOG_INPUT_STATUS:
            {
                dataField[ 0] = 0x00u;                                                  /* block number */
                dataField[ 1] = 0x01u;
                dataField[ 2] = (u8)((((u16)(transmitData->opCode)) & 0xFF00u)>>8u);    /* opCode */
                dataField[ 3] = (u8)((((u16)(transmitData->opCode)) & 0x00FFu)>>0u);
                dataField[ 4] =  0u;                                                    /* length */
                dataField[ 5] = 14u;

                dataField[ 6] = (u8)(((transmitData->options) & 0xFF00u)>>8u);          /* Options */
                dataField[ 7] = (u8)(((transmitData->options) & 0x00FFu)>>0u);
                dataField[ 8] = (u8)(((transmitData->status ) & 0xFF00u)>>8u);          /* Status  */
                dataField[ 9] = (u8)(((transmitData->status ) & 0x00FFu)>>0u);
                dataField[10] = (u8)(((transmitData->ADC0Val) & 0xFF00u)>>8u);          /* ADC0Val */
                dataField[11] = (u8)(((transmitData->ADC0Val) & 0x00FFu)>>0u);
                dataField[12] = (u8)(((transmitData->ADC1Val) & 0xFF00u)>>8u);          /* ADC1Val */
                dataField[13] = (u8)(((transmitData->ADC1Val) & 0x00FFu)>>0u);
                dataField[14] = (u8)(((transmitData->ADC2Val) & 0xFF00u)>>8u);          /* ADC2Val */
                dataField[15] = (u8)(((transmitData->ADC2Val) & 0x00FFu)>>0u);
                dataField[16] = (u8)(((transmitData->ADC3Val) & 0xFF00u)>>8u);          /* ADC3Val */
                dataField[17] = (u8)(((transmitData->ADC3Val) & 0x00FFu)>>0u);
                dataField[18] = (u8)(((transmitData->ADC4Val) & 0xFF00u)>>8u);          /* ADC4Val */
                dataField[19] = (u8)(((transmitData->ADC4Val) & 0x00FFu)>>0u);

                *flagLast = ETX;
                break;
            }
            case RESP_SET_DIGITAL_OUTPUT:
            {
                dataField[ 0] = 0x00u;                                                  /* block number */
                dataField[ 1] = 0x01u;
                dataField[ 2] = (u8)((((u16)(transmitData->opCode)) & 0xFF00u)>>8u);    /* opCode */
                dataField[ 3] = (u8)((((u16)(transmitData->opCode)) & 0x00FFu)>>0u);
                dataField[ 4] =  0u;                                                    /* length */
                dataField[ 5] =  4u;

                dataField[ 6] = (u8)(((transmitData->options) & 0xFF00u)>>8u);          /* Options */
                dataField[ 7] = (u8)(((transmitData->options) & 0x00FFu)>>0u);
                dataField[ 8] = (u8)(((transmitData->status ) & 0xFF00u)>>8u);          /* Status  */
                dataField[ 9] = (u8)(((transmitData->status ) & 0x00FFu)>>0u);

                *flagLast = ETX;
                break;
            }
            case RESP_SET_ANALOG_OUTPUT:
            {
                dataField[ 0] = 0x00u;                                                  /* block number */
                dataField[ 1] = 0x01u;
                dataField[ 2] = (u8)((((u16)(transmitData->opCode)) & 0xFF00u)>>8u);    /* opCode */
                dataField[ 3] = (u8)((((u16)(transmitData->opCode)) & 0x00FFu)>>0u);
                dataField[ 4] =  0u;                                                    /* length */
                dataField[ 5] =  4u;

                dataField[ 6] = (u8)(((transmitData->options) & 0xFF00u)>>8u);          /* Options */
                dataField[ 7] = (u8)(((transmitData->options) & 0x00FFu)>>0u);
                dataField[ 8] = (u8)(((transmitData->status ) & 0xFF00u)>>8u);          /* Status  */
                dataField[ 9] = (u8)(((transmitData->status ) & 0x00FFu)>>0u);

                *flagLast = ETX;
                break;
            }
            case RESP_START_STEPPER_MOTOR:
            {
                dataField[ 0] = 0x00u;                                                  /* block number */
                dataField[ 1] = 0x01u;
                dataField[ 2] = (u8)((((u16)(transmitData->opCode)) & 0xFF00u)>>8u);    /* opCode */
                dataField[ 3] = (u8)((((u16)(transmitData->opCode)) & 0x00FFu)>>0u);
                dataField[ 4] =  0u;                                                    /* length */
                dataField[ 5] =  4u;

                dataField[ 6] = (u8)(((transmitData->options) & 0xFF00u)>>8u);          /* Options */
                dataField[ 7] = (u8)(((transmitData->options) & 0x00FFu)>>0u);
                dataField[ 8] = (u8)(((transmitData->status ) & 0xFF00u)>>8u);          /* Status  */
                dataField[ 9] = (u8)(((transmitData->status ) & 0x00FFu)>>0u);

                *flagLast = ETX;
                break;
            }
            case RESP_STOP_STEPPER_MOTOR:
            {
                dataField[ 0] = 0x00u;                                                  /* block number */
                dataField[ 1] = 0x01u;
                dataField[ 2] = (u8)((((u16)(transmitData->opCode)) & 0xFF00u)>>8u);    /* opCode */
                dataField[ 3] = (u8)((((u16)(transmitData->opCode)) & 0x00FFu)>>0u);
                dataField[ 4] =  0u;                                                    /* length */
                dataField[ 5] =  4u;

                dataField[ 6] = (u8)(((transmitData->options) & 0xFF00u)>>8u);          /* Options */
                dataField[ 7] = (u8)(((transmitData->options) & 0x00FFu)>>0u);
                dataField[ 8] = (u8)(((transmitData->status ) & 0xFF00u)>>8u);          /* Status  */
                dataField[ 9] = (u8)(((transmitData->status ) & 0x00FFu)>>0u);

                *flagLast = ETX;
                break;
            }
            case RESP_SOLENOID_ACTIVATION:
            {
                dataField[ 0] = 0x00u;                                                  /* block number */
                dataField[ 1] = 0x01u;
                dataField[ 2] = (u8)((((u16)(transmitData->opCode)) & 0xFF00u)>>8u);    /* opCode */
                dataField[ 3] = (u8)((((u16)(transmitData->opCode)) & 0x00FFu)>>0u);
                dataField[ 4] =  0u;                                                    /* length */
                dataField[ 5] =  4u;

                dataField[ 6] = (u8)(((transmitData->options) & 0xFF00u)>>8u);          /* Options */
                dataField[ 7] = (u8)(((transmitData->options) & 0x00FFu)>>0u);
                dataField[ 8] = (u8)(((transmitData->status ) & 0xFF00u)>>8u);          /* Status  */
                dataField[ 9] = (u8)(((transmitData->status ) & 0x00FFu)>>0u);

                *flagLast = ETX;
                break;
            }
            case RESP_SOLENOID_DEACTIVATION:
            {
                dataField[ 0] = 0x00u;                                                  /* block number */
                dataField[ 1] = 0x01u;
                dataField[ 2] = (u8)((((u16)(transmitData->opCode)) & 0xFF00u)>>8u);    /* opCode */
                dataField[ 3] = (u8)((((u16)(transmitData->opCode)) & 0x00FFu)>>0u);
                dataField[ 4] =  0u;                                                    /* length */
                dataField[ 5] =  4u;

                dataField[ 6] = (u8)(((transmitData->options) & 0xFF00u)>>8u);          /* Options */
                dataField[ 7] = (u8)(((transmitData->options) & 0x00FFu)>>0u);
                dataField[ 8] = (u8)(((transmitData->status ) & 0xFF00u)>>8u);          /* Status  */
                dataField[ 9] = (u8)(((transmitData->status ) & 0x00FFu)>>0u);

                *flagLast = ETX;
                break;
            }
            case RESP_START_DC_MOTOR:
            {
                dataField[ 0] = 0x00u;                                                  /* block number */
                dataField[ 1] = 0x01u;
                dataField[ 2] = (u8)((((u16)(transmitData->opCode)) & 0xFF00u)>>8u);    /* opCode */
                dataField[ 3] = (u8)((((u16)(transmitData->opCode)) & 0x00FFu)>>0u);
                dataField[ 4] =  0u;                                                    /* length */
                dataField[ 5] =  4u;

                dataField[ 6] = (u8)(((transmitData->options) & 0xFF00u)>>8u);          /* Options */
                dataField[ 7] = (u8)(((transmitData->options) & 0x00FFu)>>0u);
                dataField[ 8] = (u8)(((transmitData->status ) & 0xFF00u)>>8u);          /* Status  */
                dataField[ 9] = (u8)(((transmitData->status ) & 0x00FFu)>>0u);

                *flagLast = ETX;
                break;
            }
            case RESP_STOP_DC_MOTOR:
            {
                dataField[ 0] = 0x00u;                                                  /* block number */
                dataField[ 1] = 0x01u;
                dataField[ 2] = (u8)((((u16)(transmitData->opCode)) & 0xFF00u)>>8u);    /* opCode */
                dataField[ 3] = (u8)((((u16)(transmitData->opCode)) & 0x00FFu)>>0u);
                dataField[ 4] =  0u;                                                    /* length */
                dataField[ 5] =  4u;

                dataField[ 6] = (u8)(((transmitData->options) & 0xFF00u)>>8u);          /* Options */
                dataField[ 7] = (u8)(((transmitData->options) & 0x00FFu)>>0u);
                dataField[ 8] = (u8)(((transmitData->status ) & 0xFF00u)>>8u);          /* Status  */
                dataField[ 9] = (u8)(((transmitData->status ) & 0x00FFu)>>0u);

                *flagLast = ETX;
                break;
            }
            case RESP_READ_HWC_CONFIGURATION_FILE:
            {
                u16 payloadLength;          /* current payload length */
                u16 fillLength;             /* file bytes to fill payload */

                    /* if transmission start */
                    if ((hwccArea.blockNumber == 0u) && (hwccArea.operation == READ))
                    {
                        if (transmitData->hwcc_tx == NULL)
                        {
                            result = FAIL;
                        }
                        else
                        {
                            /* initialise local memory and copy data */
                            hwccArea.blockNumber = 1u;
                            hwccArea.fileLength  = transmitData->length;
                            hwccArea.index       = 0u;
                            for (u32 i = 0u; i < hwccArea.fileLength ; i++)
                            {
                                hwccArea.file[i] = *((transmitData->hwcc_tx) + i);
                            }

                            /* determine the payload length and the file bytes to use */
                            if ((hwccArea.fileLength) >= (MAX_PAYLOAD_LENGTH - 26u))               /* 26 = bytes preceding file data */
                            {
                                payloadLength = MAX_PAYLOAD_LENGTH;
                                fillLength    = MAX_PAYLOAD_LENGTH - 26u;
                            }
                            else
                            {
                                payloadLength = (u16)(hwccArea.fileLength + 26u);
                                fillLength    = (u16)(hwccArea.fileLength);
                            }

                            dataField[ 0] = (u8)((hwccArea.blockNumber & 0xFF00)>>8u);              /* block number */
                            dataField[ 1] = (u8)((hwccArea.blockNumber & 0x00FF)>>0u);
                            dataField[ 2] = (u8)((((u16)(transmitData->opCode)) & 0xFF00u)>>8u);    /* opCode */
                            dataField[ 3] = (u8)((((u16)(transmitData->opCode)) & 0x00FFu)>>0u);
                            dataField[ 4] = (u8)((payloadLength & 0xFF00)>>8u);                     /* length */
                            dataField[ 5] = (u8)((payloadLength & 0x00FF)>>0u);

                            dataField[ 6] = (u8)(((transmitData->options) & 0xFF00u)>>8u);          /* Options */
                            dataField[ 7] = (u8)(((transmitData->options) & 0x00FFu)>>0u);
                            dataField[ 8] = (u8)(((transmitData->status ) & 0xFF00u)>>8u);          /* Status  */
                            dataField[ 9] = (u8)(((transmitData->status ) & 0x00FFu)>>0u);
                            dataField[10] = 0x00u;                                                  /* unicode C */
                            dataField[11] = 0x43u;
                            dataField[12] = 0x00u;                                                  /* unicode N */
                            dataField[13] = 0x4Eu;
                            dataField[14] = 0x00u;                                                  /* unicode F */
                            dataField[15] = 0x46u;
                            dataField[16] = 0x00u;                                                  /* unicode I */
                            dataField[17] = 0x49u;
                            dataField[18] = 0x00u;                                                  /* unicode M */
                            dataField[19] = 0x4Du;
                            dataField[20] = 0x00u;                                                  /* unicode A */
                            dataField[21] = 0x41u;
                            dataField[22] = 0x00u;                                                  /* unicode G */
                            dataField[23] = 0x47u;
                            dataField[24] = 0x00u;                                                  /* unicode E */
                            dataField[25] = 0x45u;
                            dataField[26] = 0x00u;                                                  /* reserved */
                            dataField[27] = 0x00u;
                            dataField[28] = (u8)(((hwccArea.fileLength) & 0xFF000000u)>>24u);       /* file length */
                            dataField[29] = (u8)(((hwccArea.fileLength) & 0x00FF0000u)>>16u);
                            dataField[30] = (u8)(((hwccArea.fileLength) & 0x0000FF00u)>> 8u);
                            dataField[31] = (u8)(((hwccArea.fileLength) & 0x000000FFu)>> 0u);

                            /* fill payload with file bytes */
                            for (u32 i = 0u; i < fillLength  ; i++)
                            {
                                dataField[32 + i] = hwccArea.file[hwccArea.index++];
                            }

                            hwccArea.blockNumber++;
                        }
                    }
                    /* if transmission continues */
                    else if (hwccArea.operation == READ)
                    {
                        /* determine the payload length (the same number of file bytes are used */
                        if ((hwccArea.fileLength - hwccArea.index) >= MAX_PAYLOAD_LENGTH)
                        {
                            payloadLength = MAX_PAYLOAD_LENGTH;
                        }
                        else
                        {
                            payloadLength = (u16)(hwccArea.fileLength - hwccArea.index);
                        }

                        dataField[ 0] = (u8)((hwccArea.blockNumber & 0xFF00)>>8u);              /* block number */
                        dataField[ 1] = (u8)((hwccArea.blockNumber & 0x00FF)>>0u);
                        dataField[ 2] = (u8)((((u16)(transmitData->opCode)) & 0xFF00u)>>8u);    /* opCode */
                        dataField[ 3] = (u8)((((u16)(transmitData->opCode)) & 0x00FFu)>>0u);
                        dataField[ 4] = (u8)((payloadLength & 0xFF00)>>8u);                     /* length */
                        dataField[ 5] = (u8)((payloadLength & 0x00FF)>>0u);

                        /* fill payload with file bytes */
                        for (u32 i = 0u; i < payloadLength  ; i++)
                        {
                            dataField[6 + i] = hwccArea.file[hwccArea.index++];
                        }

                        hwccArea.blockNumber++;
                    }

#if PRINT_DEBUG_FILE
                    /* print area */
                    xil_printf("\n\rDATA TO SEND\n\r");
                    for (u32 k=0; k < (payloadLength + 6); k++)
                    {
                    	xil_printf("%c",dataField[k]);
                    }
                    xil_printf("\n\r");
#endif

                    /* check if it is the last block */
                    if (hwccArea.index == hwccArea.fileLength)
                    {
                        *flagLast = ETX;
                    }
                    else
                    {
                        *flagLast = ETB;
                    }

                    if ((result == FAIL) || (*flagLast == ETX))
                    {
                        /* reset local memory */
                        hwccArea.blockNumber = 0u;
                        hwccArea.fileLength  = 0u;
                        hwccArea.index       = 0u;
                    }
                break;
            }
            case RESP_WRITE_HWC_CONFIGURATION_FILE:
            {
                dataField[ 0] = 0x00u;                                                  /* block number */
                dataField[ 1] = 0x01u;
                dataField[ 2] = (u8)((((u16)(transmitData->opCode)) & 0xFF00u)>>8u);    /* opCode */
                dataField[ 3] = (u8)((((u16)(transmitData->opCode)) & 0x00FFu)>>0u);
                dataField[ 4] =  0u;                                                    /* length */
                dataField[ 5] =  4u;

                dataField[ 6] = (u8)(((transmitData->options) & 0xFF00u)>>8u);          /* Options */
                dataField[ 7] = (u8)(((transmitData->options) & 0x00FFu)>>0u);
                dataField[ 8] = (u8)(((transmitData->status ) & 0xFF00u)>>8u);          /* Status  */
                dataField[ 9] = (u8)(((transmitData->status ) & 0x00FFu)>>0u);

                *flagLast = ETX;
                break;
            }
            case EVT_STEPPER_MOTOR_SELF_STOP:
            {
                dataField[ 0] = 0x00u;                                                  /* block number */
                dataField[ 1] = 0x01u;
                dataField[ 2] = (u8)((((u16)(transmitData->opCode)) & 0xFF00u)>>8u);    /* opCode */
                dataField[ 3] = (u8)((((u16)(transmitData->opCode)) & 0x00FFu)>>0u);
                dataField[ 4] =  0u;                                                    /* length */
                dataField[ 5] =  4u;

                dataField[ 6] = (u8)(((transmitData->options)  & 0xFF00u)>>8u);         /* Options */
                dataField[ 7] = (u8)(((transmitData->options)  & 0x00FFu)>>0u);
                dataField[ 8] = (u8)(((transmitData->deviceId) & 0xFF00u)>>8u);         /* MotorId */
                dataField[ 9] = (u8)(((transmitData->deviceId) & 0x00FFu)>>0u);

                *flagLast = ETX;
                break;
            }
            default:
            {
                result = FAIL;
                break;
            }
        }
    }

    return (result);
}
