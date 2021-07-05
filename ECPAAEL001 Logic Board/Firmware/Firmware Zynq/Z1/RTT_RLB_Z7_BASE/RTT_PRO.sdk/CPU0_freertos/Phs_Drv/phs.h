#ifndef _PHS_H_
#define _PHS_H_

#include "xil_types.h"

/*---------------------------------------------------------------------------*/
/* L1 COMUNICATION PROTOCOL                                                  */
/*---------------------------------------------------------------------------*/

#include "error_management.h"

typedef enum
{
    SHADE = 0x0,
    LIGHT = 0x1
}PHS_status_t;

#define PHS_NUM_STATUS         ( 2u)

typedef enum
{
    LIGHT_2_SHADE = 0b10,
    SHADE_2_LIGHT = 0b01
} PHS_irq_mask_value_t;

typedef struct
{
    u32 location;
    u8 subdevice;
    u32 status;

    u32 mask_S2L_0;
    u32 mask_S2L_1;
    u32 mask_L2S_0;
    u32 mask_L2S_1;

    u32 irq_S2L_0;
	u32 irq_S2L_1;
    u32 irq_L2S_0;
	u32 irq_L2S_1;

} PHS_t;


/* DEVICE CONFIG */
void PHS_Init(PHS_t *dev);
void PHS_Configure(PHS_t *dev, u32 location, u8 subdevice);
void PHS_Cleanup(PHS_t *dev);

void PHS_SetPWMValue(PHS_t* dev, u16 value);
u16  PHS_GetPWMValue(PHS_t* dev);
u8   PHS_GetStatusValue(PHS_t* dev);

/* IRQ CONFIG */
/* Two types of interrupts are available for each subdevice */
/*                                                          */
/* Light 2 Shade: Light __    (FALLING EDGE)                */
/*                Shade   |__                               */
/*                                                          */
/* Shade 2 Light: Light    __ (RISING EDGE)                 */
/*                Shade __|                                 */
/*                                                          */

void  PHS_EnableIRQ_S2L          (PHS_t* dev);
void  PHS_DisableIRQ_S2L         (PHS_t* dev);
u8    PHS_IsIRQEndabled_S2L      (PHS_t* dev);
u8    PHS_GetIRQ_S2L             (PHS_t* dev);
void  PHS_ClearIRQ_S2L           (PHS_t* dev);

void  PHS_EnableIRQ_L2S          (PHS_t* dev);
void  PHS_DisableIRQ_L2S         (PHS_t* dev);
u8    PHS_IsIRQEndabled_L2S      (PHS_t* dev);
u8    PHS_GetIRQ_L2S             (PHS_t* dev);
void  PHS_ClearIRQ_L2S           (PHS_t* dev);

void  PHS_EnableMask_L2S         (PHS_t* dev);
void  PHS_DisableMask_L2S        (PHS_t* dev);
u8    PHS_IsMaskEndabled_L2S     (PHS_t* dev);

void  PHS_EnableMask_S2L         (PHS_t* dev);
void  PHS_DisableMask_S2L        (PHS_t* dev);
u8    PHS_IsMaskEndabled_S2L     (PHS_t* dev);

void  PHS_CMN_Init               (PHS_t *dev);
void  PHS_CMN_Configure          (PHS_t *dev, u32 location);
u32   PHS_CMN_ReadIRQs_L2S_0     (PHS_t* dev);
u32   PHS_CMN_ReadIRQs_L2S_1     (PHS_t* dev);
u32   PHS_CMN_ReadIRQs_S2L_0     (PHS_t* dev);
u32   PHS_CMN_ReadIRQs_S2L_1     (PHS_t* dev);

#endif /* _PHS_H_ */
