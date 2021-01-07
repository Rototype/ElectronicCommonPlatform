
#ifndef _SOLENOIDE_H_
#define _SOLENOIDE_H_

#include "xil_types.h"

/*---------------------------------------------------------------------------*/
/* L1 COMUNICATION PROTOCOL                                                  */
/*---------------------------------------------------------------------------*/

#include "error_management.h"

typedef enum
{
	SOL_FREE = 0x00U,
	SOL_PWM  = 0x01U,
	SOL_FULL = 0x02U,
	SOL_ERROR = 0x03U
} SOL_status_t;

typedef struct
{
	u32 location;
	u8 subdevice;
	u32 status;
} SOL_t;

/*---------------------------------------------------------------------------*/
/* EXPORTED PROCEDURES                                                       */
/*---------------------------------------------------------------------------*/

/* PROXY Services */
void SOL_Init(SOL_t *dev);
void SOL_Configure(SOL_t *dev, u32 location, u8 subdevice);
void SOL_Cleanup(SOL_t *dev);

/* Device parameters */
void SOL_SetPWMValue(SOL_t* dev, u8 value);
u8   SOL_GetPWMValue(SOL_t* dev);

void SOL_SetFullLoadDuration(SOL_t* dev, u16 value);
u16  SOL_GetFullLoadDuration(SOL_t* dev);

/* Device status */
SOL_status_t SOL_GetStatus(SOL_t* dev);

/* Device control */
void SOL_SetRunning(SOL_t* dev);
void SOL_ClearRunning(SOL_t* dev);

/*---------------------------------------------------------------------------*/
/* EOF                                                                       */
/*---------------------------------------------------------------------------*/

#endif /* _SOLENOIDE_H_ */
