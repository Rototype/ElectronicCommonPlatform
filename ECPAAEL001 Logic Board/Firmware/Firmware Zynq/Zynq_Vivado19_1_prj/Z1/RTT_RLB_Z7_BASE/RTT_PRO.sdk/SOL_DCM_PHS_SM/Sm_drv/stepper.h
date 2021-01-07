
#ifndef _STEPPER_H_
#define _STEPPER_H_

#include "xil_types.h"

/*---------------------------------------------------------------------------*/
/* L1 COMUNICATION PROTOCOL                                                  */
/*---------------------------------------------------------------------------*/

#include "error_management.h"

typedef struct
{
	u32 location;
	u8  subdevice;
	u32 status;
} STEPPER_t;


typedef enum {
	STEPPER_CLOCKWISE        = 0x00U,
	STEPPER_COUNTERCLOCKWISE = 0x01U
} STEPPER_Direction_t;

typedef enum {
	STEPPER_DISABLE          = 0x00U,
	STEPPER_DISABLE1         = 0x01U, /* Should never be used. */
	STEPPER_ENABLE_FULL      = 0x02U,
	STEPPER_ENABLE_HALF      = 0x03U,
} STEPPER_Load_t;

typedef enum {
	STEPPER_RES0             = 0x00U,
	STEPPER_RES1             = 0x01U,
	STEPPER_RES2             = 0x10U,
	STEPPER_RES3             = 0x11U
} STEPPER_Resolution_t;

/*---------------------------------------------------------------------------*/
/* EXPORTED PROCEDURES                                                       */
/*---------------------------------------------------------------------------*/

/* PROXY Services */
void STEPPER_Init               (STEPPER_t *dev);
void STEPPER_Configure          (STEPPER_t *dev, u32 location, u8 subdevice);
void STEPPER_Cleanup            (STEPPER_t *dev);

/* PARAMETERS SET */
void                 STEPPER_SetMaxAcceleration (STEPPER_t *dev, u32                  value);
void                 STEPPER_SetInitialSpeed    (STEPPER_t *dev, u16                  value);
void                 STEPPER_SetTargetSpeed     (STEPPER_t *dev, u32                  value);
void                 STEPPER_SetStepNumber      (STEPPER_t *dev, u32                  value);
void                 STEPPER_SetDirection       (STEPPER_t *dev, STEPPER_Direction_t  value);
void                 STEPPER_SetLoad            (STEPPER_t *dev, STEPPER_Load_t       value);
void                 STEPPER_SetResolution      (STEPPER_t *dev, STEPPER_Resolution_t value);

/* PARAMETERS GET */
u32                  STEPPER_GetMaxAcceleration (STEPPER_t *dev);
u16                  STEPPER_GetInitialSpeed    (STEPPER_t *dev);
u32                  STEPPER_GetTargetSpeed     (STEPPER_t *dev);
u32                  STEPPER_GetStepNumber      (STEPPER_t *dev);
STEPPER_Direction_t  STEPPER_GetDirection       (STEPPER_t *dev);
STEPPER_Load_t       STEPPER_GetLoad            (STEPPER_t *dev);
STEPPER_Resolution_t STEPPER_GetResolution      (STEPPER_t *dev);

/* COMMANDS  */
void                 STEPPER_SetStart           (STEPPER_t *dev);
void                 STEPPER_SetStop            (STEPPER_t *dev);
void                 STEPPER_SetSpeedChange     (STEPPER_t *dev);
void                 STEPPER_SetStepSlow        (STEPPER_t *dev);
void                 STEPPER_SetStepFast        (STEPPER_t *dev);

void                 STEPPER_CleanStart         (STEPPER_t *dev);
void                 STEPPER_CleanStop          (STEPPER_t *dev);
void                 STEPPER_CleanSpeedChange   (STEPPER_t *dev);
void                 STEPPER_CleanStepSlow      (STEPPER_t *dev);
void                 STEPPER_CleanStepFast      (STEPPER_t *dev);

/* STATUS */
u8                   STEPPER_IsRunning          (STEPPER_t *dev);
u32                  STEPPER_GetCurrStepNum     (STEPPER_t *dev);
/*---------------------------------------------------------------------------*/
/* EOF                                                                       */
/*---------------------------------------------------------------------------*/

#endif /* _STEPPER_H_ */
