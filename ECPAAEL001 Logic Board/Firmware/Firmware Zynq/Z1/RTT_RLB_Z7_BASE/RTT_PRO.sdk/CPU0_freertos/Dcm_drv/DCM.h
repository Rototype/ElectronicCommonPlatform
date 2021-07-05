#ifndef _DCM_H_
#define _DCM_H_

#include "xil_types.h"

/*---------------------------------------------------------------------------*/
/* L1 COMUNICATION PROTOCOL                                                  */
/*---------------------------------------------------------------------------*/

#include "error_management.h"

typedef enum
{
    STATUS_FREE_MODE        = 0x00,
    STATUS_RUNNING          = 0x01,
    STATUS_BRAKED           = 0x02,
    STATUS_ERROR            = 0x03
} DCM_status_run_t;


typedef enum
{
    CLOCKWISE               = 0x00,
    COUNTER_CLOCKWISE       = 0x01,
    DIR_ERROR               = 0xFF
} DCM_direction_t;


typedef struct
{
    u32 location;
    u8 subdevice;
    u32 status;
} DCM_t;


void DCM_Init(DCM_t *dev);
void DCM_Configure(DCM_t *dev, u32 location, u8 subdevice);
void DCM_Cleanup(DCM_t *dev);

void DCM_SetPWMValue(DCM_t* dev, u8 value);
u8   DCM_GetPWMValue(DCM_t* dev);

void DCM_SetPWMFrequency(DCM_t* dev, u8 value);
u8   DCM_GetPWMFrequency(DCM_t* dev);

void DCM_SetRun(DCM_t* dev);
void DCM_ClearRun(DCM_t* dev);
u8   DCM_GetRunValue(DCM_t* dev);

void DCM_SetDirection(DCM_t* dev, DCM_direction_t value);
DCM_direction_t DCM_GetDirection(DCM_t* dev);

void DCM_SetBrake(DCM_t* dev);
void DCM_ClearBrake(DCM_t* dev);
u8   DCM_GetBrakeValue(DCM_t* dev);

DCM_status_run_t DCM_GetStatusRun(DCM_t* dev);

#endif /* _DCM_H_ */
