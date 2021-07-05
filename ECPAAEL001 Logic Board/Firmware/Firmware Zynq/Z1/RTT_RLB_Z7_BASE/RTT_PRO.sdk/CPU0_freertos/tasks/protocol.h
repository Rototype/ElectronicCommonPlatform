#ifndef PROTOCOL_H
#define PROTOCOL_H


#include "xil_types.h"


#define STX  (0x02u)                  /* Inizio blocco            */
#define ETX  (0x03u)                  /* Fine ultimo blocco       */
#define ETB  (0x17u)                  /* Fine non ultimo blocco   */
#define ACK  (0x06u)                  /* Ricezione corretta       */
#define NAK  (0x15u)                  /* Ricezione scorretta      */
#define DLE  (0x10u)                  /* Incapsulatore            */

#define READ    (0u)
#define WRITE   (1u)

#define MAX_PAYLOAD_LENGTH    (57u)
#define MAX_DATA_FIELD_LENGTH (MAX_PAYLOAD_LENGTH + 6u)

// al massimo pacchetti spi da 127 byte;
// 6 byte di caratteri speciali
// 6 byte di datafield fissi
// al massimo 127-6-6 = 115 byte di payload, CONTANDO I DLE DOPPI!
// volendo essere sicuri, nel caso venga trasmesso un payload di soli DLE, quindi tutto raddoppiato,
// al massimo posso trasmettere in ogni pacchetti 57 byte di dati
// nel caso non ci siano duplicazioni, trasmetterò pacchetti di 69 byte



/* Enum Command ID Received from Protocol */
typedef enum protocolCommandList {
    CMD_GET_DIGITAL_INPUT_STATUS      = 0x1001,
    CMD_GET_ANALOG_INPUT_STATUS       = 0x1002,
    CMD_SET_DIGITAL_OUTPUT            = 0x1003,
    CMD_SET_ANALOG_OUTPUT             = 0x1004,
    CMD_START_STEPPER_MOTOR           = 0x1005,
    CMD_STOP_STEPPER_MOTOR            = 0x1006,
    CMD_SOLENOID_ACTIVATION           = 0x1007,
    CMD_SOLENOID_DEACTIVATION         = 0x1008,
    CMD_START_DC_MOTOR                = 0x1009,
    CMD_STOP_DC_MOTOR                 = 0x100A,
    CMD_READ_HWC_CONFIGURATION_FILE   = 0x100B,
    CMD_WRITE_HWC_CONFIGURATION_FILE  = 0x100C
} protocolCommandList_e;



/* Enum Response ID to Send on Protocol */
typedef enum Protocol_ResponseList {
    RESP_GET_DIGITAL_INPUT_STATUS     = 0x2001,
    RESP_GET_ANALOG_INPUT_STATUS      = 0x2002,
    RESP_SET_DIGITAL_OUTPUT           = 0x2003,
    RESP_SET_ANALOG_OUTPUT            = 0x2004,
    RESP_START_STEPPER_MOTOR          = 0x2005,
    RESP_STOP_STEPPER_MOTOR           = 0x2006,
    RESP_SOLENOID_ACTIVATION          = 0x2007,
    RESP_SOLENOID_DEACTIVATION        = 0x2008,
    RESP_START_DC_MOTOR               = 0x2009,
    RESP_STOP_DC_MOTOR                = 0x200A,
    RESP_READ_HWC_CONFIGURATION_FILE  = 0x200B,
    RESP_WRITE_HWC_CONFIGURATION_FILE = 0x200C,
    EVT_STEPPER_MOTOR_SELF_STOP       = 0x3006
} protocolResponsesList_e;



typedef struct receivedData
{
    protocolCommandList_e  opCode;             /* common    */
    u16                    options;            /* common    */
    u16                    deviceId;           /* common    */
    u16                    outputValue;        /* PHS, DOUT */
    u16                    stepsResolution;    /* SM        */
    u16                    load;               /* SM        */
    u16                    dirCommand;         /* SM, DCM   */
    u32                    targetSpeed;        /* SM        */
    u32                    initialSpeed;       /* SM        */
    u32                    maxAcceleration;    /* SM        */
    u16                    counterMode;        /* SM        */
    u32                    counterValue;       /* SM        */
    u16                    initTime;           /* SOL       */
    u16                    pwm;                /* SOL, DCM  */
    u16                    pwmFreq;            /* DCM       */
    u8                    *hwcc_read;          /* HWCC      */
    u8                    *hwcc_write;         /* HWCC      */
    u32                    length;             /* HWCC      */
} receivedData_t;



typedef struct answersData
{
    protocolResponsesList_e  opCode;                /* common            */
    u16                      options;               /* common            */
    u16                      status;                /* common (no event) */
    u64                      digitalInputStatus;    /* PHS               */
    u16                      ADC0Val;               /* XADC              */
    u16                      ADC1Val;               /* XADC              */
    u16                      ADC2Val;               /* XADC              */
    u16                      ADC3Val;               /* XADC              */
    u16                      ADC4Val;               /* XADC              */
    u16                      deviceId;              /* SM                */
    u8                      *hwcc_rx;               /* HWCC              */
    u8                      *hwcc_tx;               /* HWCC              */
    u32                      length;                /* HWCC              */
} answersData_t;


u8 Protocol_Receiver(u8 *spiData, u8 spiLength, u8 *dataField, u8 *flagLast);
u8 Protocol_Transmitter(u8 *dataField, u8 flagLast, u8 *spiData, u8 *spiLength );
u8 Protocol_Parser (u8 *dataField, u8 flagLast, receivedData_t *receivedData);
u8 Protocol_Formatter (answersData_t *transmitData, u8 *dataField, u8 *flagLast);

#endif  /* PROTOCOL_H */
