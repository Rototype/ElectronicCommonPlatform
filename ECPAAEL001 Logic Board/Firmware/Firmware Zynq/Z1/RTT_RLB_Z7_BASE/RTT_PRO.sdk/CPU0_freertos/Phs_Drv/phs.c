#include <string.h>
#include "phs.h"



/* data structure for PHS devices */
typedef struct
{
	u16           PwmValue; //10bit
	u8            status; 	//0 or 1
	u8            mask; 	//0 or 1
	u32		      irqs;		//MAX_IRQS_ENABLED

	u8            S2L_Enabled;
	u8            L2S_Enabled;
	
	u8            S2L_Fired;
	u8            L2S_Fired;

} PHSData_t;


/* data structure for PHS_CMN */
typedef struct
{
	u32            S2L_CMN_Enabled_0_24;
	u32            S2L_CMN_Enabled_25_49;
	u32            L2S_CMN_Enabled_0_24;
	u32            L2S_CMN_Enabled_25_49;

	u32            S2L_CMN_Fired_0_24;;
	u32            S2L_CMN_Fired_25_49;
	u32            L2S_CMN_Fired_0_24;;
	u32            L2S_CMN_Fired_25_49;

} PHSCMNData_t;



/*---------------------------------------------------------------------------*/
/* PRIVATE FUNCTIONS                                                         */
/*---------------------------------------------------------------------------*/

#define OH_WR_PWM                         0x00000001UL
#define OH_RD_PWM                         0x00000002UL
#define OH_WR_MSK_S2L                     0x00000004UL
#define OH_WR_MSK_L2S                     0x00000008UL
#define OH_RD_MSK_S2L                     0x00000010UL
#define OH_RD_MSK_L2S                     0x00000020UL
#define OH_RD_IRQ_S2L                     0x00000040UL
#define OH_RD_IRQ_L2S                     0x00000080UL
#define OH_CLR_IRQ_S2L                    0x00000100UL
#define OH_CLR_IRQ_L2S                    0x00000200UL
#define OH_STATUS                         0x00000400UL
#define OH_CMN_WR_MSK_S2L_0               0x00000800UL
#define OH_CMN_WR_MSK_L2S_0               0x00001000UL
#define OH_CMN_RD_MSK_S2L_0               0x00002000UL
#define OH_CMN_RD_MSK_L2S_0               0x00004000UL
#define OH_CMN_RD_IRQ_S2L_0               0x00008000UL
#define OH_CMN_RD_IRQ_L2S_0               0x00010000UL
#define OH_CMN_WR_MSK_S2L_1               0x00020000UL
#define OH_CMN_WR_MSK_L2S_1               0x00040000UL
#define OH_CMN_RD_MSK_S2L_1               0x00080000UL
#define OH_CMN_RD_MSK_L2S_1               0x00100000UL
#define OH_CMN_RD_IRQ_S2L_1               0x00200000UL
#define OH_CMN_RD_IRQ_L2S_1               0x00400000UL
#define OH_CLR_SINGLEDEVICE               0x00800000UL
#define OH_CLR_IRQMASKS                   0x01000000UL

#define OH_NULL_DATA_PTR                  0x02000000UL
#define OH_WRONG_LOCATION                 0x04000000UL
#define OH_WRONG_SUBDEVICE                0x08000000UL


/* 
   PHS_SPACING
   How far one peripheral of the same type is in the contiguos memory region.
*/
static const u32 PHS_SPACING            = 0x00000010UL;


/* 
   OFFSETS
   Offset for regsiters of the single peripheral
   Relative to the PHS peripheral base address.
*/
static const u32 OFF_PWM_VAL            = 0x00000000UL;
static const u32 OFF_STATUS             = 0x00000004UL;		// read only
static const u32 OFF_IRQ_MASK           = 0x00000008UL;
static const u32 OFF_IRQ_SET            = 0x0000000CUL;

static const u32 OFF_PHS_S2L0_Irq_Mask	= 0x00000320UL;
static const u32 OFF_PHS_S2L1_Irq_Mask	= 0x00000324UL;
static const u32 OFF_PHS_S2L0_Irq		= 0x00000328UL;		// read only
static const u32 OFF_PHS_S2L1_Irq		= 0x0000032CUL;		// read only
static const u32 OFF_PHS_L2S0_Irq_Mask	= 0x00000330UL;
static const u32 OFF_PHS_L2S1_Irq_Mask	= 0x00000334UL;
static const u32 OFF_PHS_L2S0_Irq		= 0x00000338UL;		// read only
static const u32 OFF_PHS_L2S1_Irq		= 0x0000033CUL;		// read only


/*
	DATA LIMITS
	Red data must be in this limits
*/
static const u32 MAX_PWM_VAL            =        1000UL;
static const u32 MAX_STATUS             =          1UL;
static const u32 MAX_IRQ_MASK_ENABLED   =          3UL;
static const u32 MAX_IRQS               =          3UL;
static const u32 MAX_SUBDEVICES         =          50UL;
static const u32 MAX_MASK_ENABLED       =   0x1FFFFFFUL;
static const u32 MAX_IRQS_ENABLED       =   0x1FFFFFFUL;



static void PHS_marshall(PHS_t* dev, PHSData_t* data, u32 reg);
static void PHS_unmarshall(PHS_t* dev, PHSData_t* data, u32 reg);



static void PHS_marshall(PHS_t* dev, PHSData_t* data, u32 reg) {

	if (dev == NULL) {
		return ;
	}
	if (data == NULL) {
		dev->status = REQ_ERROR | OH_NULL_DATA_PTR;
		return;
	}
	if (dev->location == 0U) {
		dev->status = REQ_ERROR | OH_WRONG_LOCATION;
		return;
	}
	if (((uint32_t) (dev->subdevice)) > (MAX_SUBDEVICES -1U)) {
		dev->status = REQ_ERROR | OH_WRONG_SUBDEVICE;
		return ;
	}

	switch ( reg ) {

	case OH_WR_PWM:
		if (data->PwmValue > MAX_PWM_VAL) {
			dev->status = REQ_ERROR | OH_WR_PWM;
		} else {
		    volatile u32* reg_pwm_value = ((volatile u32 *) ( dev->location + dev->subdevice*PHS_SPACING + OFF_PWM_VAL  ));
		                 *reg_pwm_value = 0x00000000UL | ((u32)data->PwmValue);
		                 dev->status = REQ_OK;
	    }
		break;

	case OH_WR_MSK_S2L:
		if (data->S2L_Enabled > 1U) {
			dev->status = REQ_ERROR | OH_WR_MSK_S2L;
		} else {
			volatile u32* reg_irq_mask    = ((volatile u32 *) ( dev->location + dev->subdevice*PHS_SPACING + OFF_IRQ_MASK ));
			if (data->S2L_Enabled == 1U) {
				*reg_irq_mask |=  0x00000002U;
			} else {
				*reg_irq_mask &= ~0x00000002U;
			}
            dev->status = REQ_OK;
		}
	    break;

	case OH_WR_MSK_L2S:
		if (data->L2S_Enabled > 1U) {
			dev->status = REQ_ERROR | OH_WR_MSK_L2S;
		} else {
			volatile u32* reg_irq_mask = ((volatile u32 *) ( dev->location + dev->subdevice*PHS_SPACING + OFF_IRQ_MASK ));
			if (data->L2S_Enabled == 1U) {
				*reg_irq_mask |=  0x00000001U;
			} else {
				*reg_irq_mask &= ~0x00000001U;
			}
			dev->status = REQ_OK;
		}
		break;

	case OH_CLR_IRQ_S2L:
		{
			volatile u32* reg_irqs = ((volatile u32 *) ( dev->location + dev->subdevice*PHS_SPACING + OFF_IRQ_SET ));

			*reg_irqs = 0x00000002u;			/* set 1 only for the interrupt to clear */
			*reg_irqs = 0x00000000u;			/* stop impulse signal */

			dev->status = REQ_OK;
		}
		break;

	case OH_CLR_IRQ_L2S:
		{
			volatile u32* reg_irq_status = ((volatile u32 *) ( dev->location + dev->subdevice*PHS_SPACING + OFF_IRQ_SET ));

			*reg_irq_status = 0x00000001u;			/* set 1 only for the interrupt to clear */
			*reg_irq_status = 0x00000000u;			/* stop impulse signal */

			dev->status = REQ_OK;
		}
		break;

	case OH_CMN_WR_MSK_S2L_0:
		{
			if (data->L2S_Enabled > 1U) {
				dev->status = REQ_ERROR | OH_CMN_WR_MSK_S2L_0;
			} else {
				volatile u32* reg_S2L0_irq_mask  = ((volatile u32 *) ( dev->location + OFF_PHS_S2L0_Irq_Mask ));
				if (data->S2L_Enabled == 1U) {
					*reg_S2L0_irq_mask |=  (0x00000001 << dev->subdevice);
				} else {
					*reg_S2L0_irq_mask &= ~(0x00000001 << dev->subdevice);
				}
				dev->status = REQ_OK;
			}
		}
		break;

	case OH_CMN_WR_MSK_S2L_1:
		{
			if (data->L2S_Enabled > 1U) {
				dev->status = REQ_ERROR | OH_CMN_WR_MSK_S2L_1;
			} else {
				volatile u32* reg_S2L1_irq_mask  = ((volatile u32 *) ( dev->location + OFF_PHS_S2L1_Irq_Mask ));
				if (data->S2L_Enabled == 1U) {
					*reg_S2L1_irq_mask |=  (0x00000001 << (dev->subdevice - 25U));
				} else {
					*reg_S2L1_irq_mask &= ~(0x00000001 << (dev->subdevice - 25U));
				}
				dev->status = REQ_OK;
			}
		}
		break;

	case OH_CMN_WR_MSK_L2S_0:
		{
			if (data->L2S_Enabled > 1U) {
				dev->status = REQ_ERROR | OH_CMN_WR_MSK_L2S_0;
			} else {
				volatile u32* reg_L2S0_irq_mask  = ((volatile u32 *) ( dev->location + OFF_PHS_L2S0_Irq_Mask ));
				if (data->L2S_Enabled == 1U) {
					*reg_L2S0_irq_mask |=  (0x00000001 << dev->subdevice);
				} else {
					*reg_L2S0_irq_mask &= ~(0x00000001 << dev->subdevice);
				}
				dev->status = REQ_OK;
			}
		}
		break;

	case OH_CMN_WR_MSK_L2S_1:
		{
			if (data->L2S_Enabled > 1U) {
				dev->status = REQ_ERROR | OH_CMN_WR_MSK_L2S_0;
			} else {
				volatile u32* reg_L2S1_irq_mask  = ((volatile u32 *) ( dev->location + OFF_PHS_L2S1_Irq_Mask ));
				if (data->L2S_Enabled == 1) {
					*reg_L2S1_irq_mask |=  (0x00000001 << (dev->subdevice - 25U));
				} else {
					*reg_L2S1_irq_mask &= ~(0x00000001 << (dev->subdevice - 25U));
				}
				dev->status = REQ_OK;
			}
		}
		break;

	case OH_CLR_IRQMASKS:
		{
			volatile u32* reg_S2L0_irq_mask  = ((volatile u32 *) ( dev->location + OFF_PHS_S2L0_Irq_Mask ));
			volatile u32* reg_S2L1_irq_mask  = ((volatile u32 *) ( dev->location + OFF_PHS_S2L1_Irq_Mask ));
			volatile u32* reg_L2S0_irq_mask  = ((volatile u32 *) ( dev->location + OFF_PHS_L2S0_Irq_Mask ));
			volatile u32* reg_L2S1_irq_mask  = ((volatile u32 *) ( dev->location + OFF_PHS_L2S1_Irq_Mask ));

			*reg_S2L0_irq_mask		= 0x00000000UL;
			*reg_S2L1_irq_mask		= 0x00000000UL;
			*reg_L2S0_irq_mask		= 0x00000000UL;
			*reg_L2S1_irq_mask		= 0x00000000UL;

			dev->status    = REQ_OK;
		}
		break;

    case OH_CLR_SINGLEDEVICE:
    	{
	    volatile u32* reg_pwm_value  = ((volatile u32 *) ( dev->location + dev->subdevice*PHS_SPACING + OFF_PWM_VAL ));
		volatile u32* reg_irq_mask   = ((volatile u32 *) ( dev->location + dev->subdevice*PHS_SPACING + OFF_IRQ_MASK ));
		volatile u32* reg_irqs       = ((volatile u32 *) ( dev->location + dev->subdevice*PHS_SPACING + OFF_IRQ_SET  ));

		 *reg_pwm_value  = 0x00000000UL;
		 *reg_irq_mask   = 0x00000000UL;

		 *reg_irqs       = 0x00000003UL;  // Pulse to clear pending interrupts
		 *reg_irqs       = 0x00000000UL;

		 dev->status    = REQ_OK;
		}
    	break;

	default:
		dev->status = REQ_ERROR;
		break;
	}
}



static void PHS_unmarshall(PHS_t* dev, PHSData_t* data, u32 reg) {

	if (dev == NULL) {
		return;
	}
	if (data == NULL) {
    	dev->status = REQ_ERROR | OH_NULL_DATA_PTR;
    	return ;
    }
    if (dev->location == 0U) {
    	dev->status = REQ_ERROR | OH_WRONG_LOCATION;
    	return ;
    }
	if (((uint32_t) (dev->subdevice)) > (MAX_SUBDEVICES -1U)) {
		dev->status = REQ_ERROR | OH_WRONG_SUBDEVICE;
		return ;
	}

	switch ( reg ) {

	case OH_RD_PWM:
	    {
	    	volatile u32* reg_pwm_value =  ((volatile u32 *) (dev->location + dev->subdevice*PHS_SPACING + OFF_PWM_VAL  ));
	    	         u32  pwm_value     = *reg_pwm_value;
	    	 		 if (pwm_value > MAX_PWM_VAL) {
	    	 			 dev->status = REQ_ERROR | OH_RD_PWM;
	    	 		 } else {
	    	 			data->PwmValue = (u16)  pwm_value;
	    	 			dev->status    = REQ_OK;
	    	 		 }
	    }
		break;

	case OH_RD_MSK_S2L:
		{
			volatile u32* reg_irq_mask =  ((volatile u32 *) (dev->location + dev->subdevice*PHS_SPACING + OFF_IRQ_MASK ));
					 u32  irq_mask     = *reg_irq_mask;
			         if (irq_mask > MAX_IRQ_MASK_ENABLED) {
			        	 dev->status = REQ_ERROR | OH_RD_MSK_S2L;
			         } else {
					     data->S2L_Enabled = ((irq_mask & 0x00000002U) == 0U) ? 0U : 1U;
			             dev->status = REQ_OK;
			         }
		}
	    break;

	case OH_RD_MSK_L2S:
	    {
	    	volatile u32* reg_irq_mask =  ((volatile u32 *) (dev->location + dev->subdevice*PHS_SPACING + OFF_IRQ_MASK ));
			         u32  irq_mask     = *reg_irq_mask;
			         if (irq_mask > MAX_IRQ_MASK_ENABLED) {
			        	 dev->status = REQ_ERROR | OH_RD_MSK_L2S;
			         } else {
			             data->L2S_Enabled = ((irq_mask & 0x00000001U) == 0U) ? 0U : 1U;
			             dev->status = REQ_OK;
			         }
	    }
		break;

	case OH_RD_IRQ_S2L:
	    {
	    	volatile u32* reg_irqs = ((volatile u32 *) (dev->location + dev->subdevice*PHS_SPACING + OFF_IRQ_SET   ));
			u32  irqsStatus     = *reg_irqs;
			if (irqsStatus > MAX_IRQS) {
			 dev->status = REQ_ERROR | OH_RD_IRQ_S2L;
			} else {
			 data->S2L_Fired = ((irqsStatus & 0x00000002U) == 0U) ? 0U : 1U;
			 dev->status  = REQ_OK;
			}
	    }
		break;

	case OH_RD_IRQ_L2S:
		{
			volatile u32* reg_irqs = ((volatile u32 *) (dev->location + dev->subdevice*PHS_SPACING + OFF_IRQ_SET   ));
			u32  irqStatus     = *reg_irqs;
			if (irqStatus > MAX_IRQS) {
			 dev->status = REQ_ERROR | OH_RD_IRQ_L2S;
			} else {
			 data->L2S_Fired = ((irqStatus & 0x00000001U) == 0U) ? 0U : 1U;
			 dev->status  = REQ_OK;
			}
		}
		break;

	case OH_STATUS:
        {
		    volatile u32* reg_status =  ((volatile u32 *) (dev->location + dev->subdevice*PHS_SPACING + OFF_STATUS   ));
		    u32  status      = *reg_status;
			if (status > MAX_STATUS) {
				dev->status = REQ_ERROR | OH_STATUS;
			} else {
				data->status = (u8)  status;
				dev->status  = REQ_OK;
			}
	    }
	    break;

	case OH_CMN_RD_MSK_S2L_0:
		{
			 volatile u32* reg_S2L0_irq_mask  = ((volatile u32 *) ( dev->location + OFF_PHS_S2L0_Irq_Mask ));
	         u32  mask     = *reg_S2L0_irq_mask;
			 if (mask > MAX_MASK_ENABLED) {
			 	 dev->status = REQ_ERROR | OH_CMN_RD_MSK_S2L_0;
			 } else {
	             data->mask = ((mask & (0x00000001U << dev->subdevice)) == 0U) ? 0U : 1U;
			     dev->status  = REQ_OK;
			 }
		}
		break;

	case OH_CMN_RD_MSK_L2S_0:
		{
			 volatile u32* reg_L2S0_irq_mask  = ((volatile u32 *) ( dev->location + OFF_PHS_L2S0_Irq_Mask ));
	         u32  mask     = *reg_L2S0_irq_mask;
			 if (mask > MAX_MASK_ENABLED) {
			 	 dev->status = REQ_ERROR | OH_CMN_RD_MSK_L2S_0;
			 } else {
	             data->mask = ((mask & (0x00000001U << dev->subdevice)) == 0U) ? 0U : 1U;
			     dev->status  = REQ_OK;
			 }
		}
		break;
	case OH_CMN_RD_IRQ_S2L_0:
		{
			 volatile u32* reg_S2L0_irq  = ((volatile u32 *) ( dev->location + OFF_PHS_S2L0_Irq ));
	         u32  irqs  = *reg_S2L0_irq;
			 if (irqs > MAX_IRQS_ENABLED) {
			 	 dev->status = REQ_ERROR | OH_CMN_RD_IRQ_S2L_0;
			 } else {
	             data->irqs = irqs;  //direct read; single irq detection to be implemented in ISR
			     dev->status  = REQ_OK;
			 }
		}
		break;

	case OH_CMN_RD_IRQ_L2S_0:
		{
			 volatile u32* reg_L2S0_irq  = ((volatile u32 *) ( dev->location + OFF_PHS_L2S0_Irq ));
	         u32  irqs  = *reg_L2S0_irq;
			 if (irqs > MAX_IRQS_ENABLED) {
			 	 dev->status = REQ_ERROR | OH_CMN_RD_IRQ_L2S_0;
			 } else {
	             data->irqs = irqs;  //direct read; single irq detection to be implemented in ISR
			     dev->status  = REQ_OK;
			 }
		}
		break;

	case OH_CMN_RD_MSK_S2L_1:
		{
			 volatile u32* reg_S2L1_irq_mask  = ((volatile u32 *) ( dev->location + OFF_PHS_S2L1_Irq_Mask ));
	         u32  mask  = *reg_S2L1_irq_mask;
			 if (mask > MAX_MASK_ENABLED) {
			 	 dev->status = REQ_ERROR | OH_CMN_RD_MSK_S2L_1;
			 } else {
	             data->mask = ((mask & (0x00000001U << (dev->subdevice - 25U))) == 0U) ? 0U : 1U;
			     dev->status  = REQ_OK;
			 }
		}
		break;
	case OH_CMN_RD_MSK_L2S_1:
		{
			 volatile u32* reg_L2S1_irq_mask  = ((volatile u32 *) ( dev->location + OFF_PHS_L2S1_Irq_Mask ));
	         u32  mask     = *reg_L2S1_irq_mask;
			 if (mask > MAX_MASK_ENABLED) {
			 	 dev->status = REQ_ERROR | OH_CMN_RD_MSK_L2S_1;
			 } else {
	             data->mask = ((mask & (0x00000001U << (dev->subdevice - 25U))) == 0U) ? 0U : 1U;
			     dev->status  = REQ_OK;
			 }
		}
		break;
	case OH_CMN_RD_IRQ_S2L_1:
		{
			 volatile u32* reg_S2L1_irq  = ((volatile u32 *) ( dev->location + OFF_PHS_S2L1_Irq ));
	         u32  irqs  = *reg_S2L1_irq;
			 if (irqs > MAX_IRQS_ENABLED) {
			 	 dev->status = REQ_ERROR | OH_CMN_RD_IRQ_S2L_1;
			 } else {
	             data->irqs = irqs;  //direct read; single irq detection to be implemented in ISR
			     dev->status  = REQ_OK;
			 }
		}
		break;

	case OH_CMN_RD_IRQ_L2S_1:
		{
			 volatile u32* reg_L2S1_irq  = ((volatile u32 *) ( dev->location + OFF_PHS_L2S1_Irq ));
	         u32  irqs  = *reg_L2S1_irq;
			 if (irqs > MAX_IRQS_ENABLED) {
			 	 dev->status = REQ_ERROR | OH_CMN_RD_IRQ_L2S_1;
			 } else {
	             data->irqs = irqs;  //direct read; single irq detection to be implemented in ISR
			     dev->status  = REQ_OK;
			 }
		}
		break;

	default:
		dev->status = REQ_ERROR;
		break;
	}
}




/*---------------------------------------------------------------------------*/
/* PUBLIC FUNCTIONS                                                          */
/*---------------------------------------------------------------------------*/

void PHS_Init(PHS_t *dev) {

	if ( dev != NULL ) {
		dev->location = 0U;
		dev->status = REQ_ERROR | 0xFU;
		dev->subdevice = MAX_SUBDEVICES + 1U;
	}
}

void PHS_Configure(PHS_t *dev, u32 location, u8 subdevice) {

	PHSData_t data;
	if ( dev != NULL ) {
		if ( location != 0U ) {
			if (subdevice < MAX_SUBDEVICES) {
				memset(&data, 0, sizeof(data));
				dev->location = location;
				dev->subdevice = subdevice;
				dev->status = REQ_OK;
				PHS_marshall(dev, &data, OH_CLR_SINGLEDEVICE);
			}
		}
	}
}

void PHS_Cleanup(PHS_t *dev) {
	if ( dev != NULL ) {
		dev->location = 0U;
		dev->status = REQ_ERROR | 0xFU;
		dev->subdevice = MAX_SUBDEVICES + 1U;
	}
}

void PHS_SetPWMValue(PHS_t* dev, u16 value) {

	PHSData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.PwmValue = value;
			PHS_marshall(dev, &data, OH_WR_PWM);
		}
	}
}

u16 PHS_GetPWMValue(PHS_t* dev) {

	PHSData_t data;
	if ( dev != NULL ) {
		memset(&data, 0, sizeof(data));
		PHS_unmarshall(dev, &data, OH_RD_PWM);
		return ((dev->status == REQ_OK) ? data.PwmValue : 0U);
	} else {
		return 0U;
	}
}

u8 PHS_GetStatusValue(PHS_t* dev) {

	PHSData_t data;
	if ( dev != NULL ) {
		memset(&data, 0, sizeof(data));
		PHS_unmarshall(dev, &data, OH_STATUS);
		return ((dev->status == REQ_OK) ? data.status : 0U);
	} else {
		return 0U;
	}
}

void PHS_EnableIRQ_S2L (PHS_t* dev) {

	PHSData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.S2L_Enabled = 1U;
			PHS_marshall(dev, &data, OH_WR_MSK_S2L);
		}
	}
}

void PHS_DisableIRQ_S2L (PHS_t* dev) {

	PHSData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.S2L_Enabled = 0U;
			PHS_marshall(dev, &data, OH_WR_MSK_S2L);
		}
	}
}

u8 PHS_IsIRQEndabled_S2L (PHS_t* dev) {

	PHSData_t data;

	if ( dev != NULL ) {
		memset(&data, 0, sizeof(data));
		PHS_unmarshall(dev, &data, OH_RD_MSK_S2L);
		return ((dev->status == REQ_OK) ? data.S2L_Enabled : 0U);
	} else {
		return 0U;
	}
}

u8 PHS_GetIRQ_S2L (PHS_t* dev) {

	PHSData_t data;
	if ( dev != NULL ) {
		memset(&data, 0, sizeof(data));
		PHS_unmarshall(dev, &data, OH_RD_IRQ_S2L);
		return ((dev->status == REQ_OK) ? data.S2L_Fired : 0U);
	} else {
		return 0U;
	}
}

void PHS_ClearIRQ_S2L (PHS_t* dev) {

	PHSData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			PHS_marshall(dev, &data, OH_CLR_IRQ_S2L);
		}
	}
}

void PHS_EnableIRQ_L2S (PHS_t* dev) {

	PHSData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.L2S_Enabled = 1U;
			PHS_marshall(dev, &data, OH_WR_MSK_L2S);
		}
	}
}

void PHS_DisableIRQ_L2S (PHS_t* dev) {

	PHSData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.L2S_Enabled = 0U;
			PHS_marshall(dev, &data, OH_WR_MSK_L2S);
		}
	}
}

u8 PHS_IsIRQEndabled_L2S (PHS_t* dev) {

	PHSData_t data;
	if ( dev != NULL ) {
		memset(&data, 0, sizeof(data));
		PHS_unmarshall(dev, &data, OH_RD_MSK_L2S);
		return ((dev->status == REQ_OK) ? data.L2S_Enabled : 0U);
	} else {
		return 0U;
	}
}

u8 PHS_GetIRQ_L2S (PHS_t* dev) {

	PHSData_t data;
	if ( dev != NULL ) {
			memset(&data, 0, sizeof(data));
			PHS_unmarshall(dev, &data, OH_RD_IRQ_L2S);
			return ((dev->status == REQ_OK) ? data.L2S_Fired : 0U);
	} else {
		return 0U;
	}
}

void PHS_ClearIRQ_L2S (PHS_t* dev) {

	PHSData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			PHS_marshall(dev, &data, OH_CLR_IRQ_L2S);
		}
	}
}

//----------------------------

void PHS_CMN_Init(PHS_t *dev){

	if ( dev != NULL ) {
		dev->mask_S2L_0 = 0U;
		dev->mask_S2L_1 = 0U;
		dev->mask_L2S_0 = 0U;
		dev->mask_L2S_1 = 0U;
	}
}

void  PHS_CMN_Configure(PHS_t *dev, u32 location) {

	PHSData_t data;
	if ( dev != NULL ) {
		if ( location != 0U ) {
			dev->location = location;
			dev->status = REQ_OK;
			PHS_marshall(dev, &data, OH_CLR_IRQMASKS);
		}
	}
}

void  PHS_EnableMask_L2S (PHS_t* dev) {

	PHSData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.L2S_Enabled = 1U;
			if (dev->subdevice < 25U) {
				PHS_marshall(dev, &data, OH_CMN_WR_MSK_L2S_0);
			} else {
				PHS_marshall(dev, &data, OH_CMN_WR_MSK_L2S_1);
			}
		}
	}
}

void  PHS_DisableMask_L2S    (PHS_t* dev) {

	PHSData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.L2S_Enabled = 0U;
			if (dev->subdevice < 25U) {
				PHS_marshall(dev, &data, OH_CMN_WR_MSK_L2S_0);
			} else {
				PHS_marshall(dev, &data, OH_CMN_WR_MSK_L2S_1);
			}
		}
	}
}

u8    PHS_IsMaskEndabled_L2S (PHS_t* dev) {

	PHSData_t data;
	if ( dev != NULL ) {
		memset(&data, 0, sizeof(data));
		if (dev->subdevice < 25U) {
			PHS_unmarshall(dev, &data, OH_CMN_RD_MSK_L2S_0);
		} else {
			PHS_unmarshall(dev, &data, OH_CMN_RD_MSK_L2S_1);
		}
		return ((dev->status == REQ_OK) ? data.mask : 0U);
	} else {
		return 0U;
	}
}

u32   PHS_CMN_ReadIRQs_L2S_0      (PHS_t* dev) {

	PHSData_t data;
	if ( dev != NULL ) {
		memset(&data, 0, sizeof(data));
		PHS_unmarshall(dev, &data, OH_CMN_RD_IRQ_L2S_0);
		return (data.irqs);
	}
	else {
		return 0U;
	}
}

u32   PHS_CMN_ReadIRQs_L2S_1      (PHS_t* dev) {

	PHSData_t data;
	if ( dev != NULL ) {
		memset(&data, 0, sizeof(data));
		PHS_unmarshall(dev, &data, OH_CMN_RD_IRQ_L2S_1);
		return (data.irqs);
	}
	else {
		return 0U;
	}
}

//---------------------

void  PHS_EnableMask_S2L     (PHS_t* dev) {

	PHSData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.S2L_Enabled = 1U;
			if (dev->subdevice < 25U) {
				PHS_marshall(dev, &data, OH_CMN_WR_MSK_S2L_0);
			} else {
				PHS_marshall(dev, &data, OH_CMN_WR_MSK_S2L_1);
			}
		}
	}
}

void  PHS_DisableMask_S2L    (PHS_t* dev) {

	PHSData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.L2S_Enabled = 0U;
			if (dev->subdevice < 25U) {
				PHS_marshall(dev, &data, OH_CMN_WR_MSK_S2L_0);
			} else {
				PHS_marshall(dev, &data, OH_CMN_WR_MSK_S2L_1);
			}
		}
	}
}

u8    PHS_IsMaskEndabled_S2L (PHS_t* dev) {

	PHSData_t data;
	if ( dev != NULL ) {
		memset(&data, 0, sizeof(data));
		if (dev->subdevice < 25U) {
			PHS_unmarshall(dev, &data, OH_CMN_RD_MSK_S2L_0);
		} else {
			PHS_unmarshall(dev, &data, OH_CMN_RD_MSK_S2L_1);
		}
		return ((dev->status == REQ_OK) ? data.mask : 0U);
	} else {
		return 0U;
	}
}

u32   PHS_CMN_ReadIRQs_S2L_0 (PHS_t* dev) {

		PHSData_t data;
		if ( dev != NULL ) {
			memset(&data, 0, sizeof(data));
			PHS_unmarshall(dev, &data, OH_CMN_RD_IRQ_S2L_0);
			return (data.irqs);
		} else {
			return 0U;
		}
}

u32   PHS_CMN_ReadIRQs_S2L_1 (PHS_t* dev) {

		PHSData_t data;
		if ( dev != NULL ) {
			memset(&data, 0, sizeof(data));
			PHS_unmarshall(dev, &data, OH_CMN_RD_IRQ_S2L_1);
			return (data.irqs);
		} else {
			return 0U;
		}
}
