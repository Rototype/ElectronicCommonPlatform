#include <string.h>
#include "phs.h"

//Struttura dati PHS
typedef struct
{
	u16           PwmValue; //10bit
	u8            status; //Status 

	u8            S2L_Enabled;
	u8            L2S_Enabled;
	
	u8            S2L_Fired;
	u8            L2S_Fired;

} PHSData_t;

#define OH_PWM_VAL                        0x00000001UL
#define OH_IRQ_S2L                        0x00000002UL
#define OH_IRQ_L2S                        0x00000004UL
#define OH_CLR_IRQ_S2L                    0x00000008UL
#define OH_CLR_IRQ_L2S                    0x00000010UL
#define OH_STATUS                         0x00000020UL

/*---------------------------------------------------------------------------*/
/* PRIVATE FUNCTIONS                                                         */
/*---------------------------------------------------------------------------*/

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
static const u32 OFF_STATUS             = 0x00000004UL;
static const u32 OFF_IRQ_MASK           = 0x00000008UL;
static const u32 OFF_IRQ_SET            = 0x0000000CUL;

/* 
	DATA LIMITS
	Red data must be in this limits
*/
static const u32 MAX_PWM_VAL            =        1000UL;
static const u32 MAX_STATUS             =          1UL;
static const u32 MAX_IRQ_MASK_ENABLED   =          3UL;
static const u32 MAX_IRQS               =          3UL;
static const u32 MAX_SUBDEVICES         =          49UL;


/* 
	MASK
	MASK to set bit register
*/
// static const u32 LIGHT_2_SHADE_MASK = 0xFFFFFFFD;
// static const u32 SHADE_2_LIGHT_MASK = 0xFFFFFFFE;

static void PHS_marshall(PHS_t* dev, PHSData_t* data, u32 reg);
static void PHS_unmarshall(PHS_t* dev, PHSData_t* data, u32 reg);

static void PHS_marshall(PHS_t* dev, PHSData_t* data, u32 reg) {
	if (dev == NULL) {
		return ;
	}

	if (data == NULL) {
		dev->status = REQ_ERROR | 0x0AU;
		return;
	}

	if (dev->location == 0) {
		dev->status = REQ_ERROR | 0x0BU;
		return;
	}

	if (dev->subdevice > MAX_SUBDEVICES) {
		dev->status = REQ_ERROR | 0x0DU;
		return ;
	}

	if (data->status > MAX_STATUS) {
		dev->status = REQ_ERROR | 0x0EU;
		return ;
	}

	switch ( reg ) {
	case OH_PWM_VAL:
		if (data->PwmValue >= MAX_PWM_VAL) {
			dev->status = REQ_ERROR | 0x0CU;
		} else {
		    volatile u32* reg_pwm_value = ((volatile u32 *) ( dev->location + dev->subdevice*PHS_SPACING + OFF_PWM_VAL  ));
		                 *reg_pwm_value = 0x00000000UL | ((u32)data->PwmValue);
		                 dev->status = REQ_OK;
	    }
		break;
	case OH_IRQ_S2L:
		if (data->S2L_Enabled > 1) {
			dev->status = REQ_ERROR | 0xAAU;
		} else {
			volatile u32* reg_irq_mask    = ((volatile u32 *) ( dev->location + dev->subdevice*PHS_SPACING + OFF_IRQ_MASK ));
			if (data->S2L_Enabled == 1) {
				*reg_irq_mask |= (data->S2L_Enabled << 0);
			} else {
				*reg_irq_mask &= ~(data->S2L_Enabled << 0);
			}
            dev->status = REQ_OK;
		}
	    break;
	case OH_IRQ_L2S:
		if (data->L2S_Enabled > 1) {
			dev->status = REQ_ERROR | 0x0FU;
		} else {
			volatile u32* reg_irq_mask = ((volatile u32 *) ( dev->location + dev->subdevice*PHS_SPACING + OFF_IRQ_MASK ));
			if (data->L2S_Enabled == 1) {
				*reg_irq_mask |= (data->L2S_Enabled << 0UL);
			} else {
				*reg_irq_mask &= ~(data->L2S_Enabled << 0UL);
			}
			dev->status = REQ_OK;
		}
		break;
	case OH_CLR_IRQ_S2L:
		if (data->S2L_Fired > 1) {
			dev->status = REQ_ERROR | 0xACU;
		} else {
			volatile u32* reg_irq_status = ((volatile u32 *) ( dev->location + dev->subdevice*PHS_SPACING + OFF_IRQ_SET  ));
			             *reg_irq_status &= ~(data->S2L_Fired << 0UL); /* Clear fired s2l */
			              dev->status = REQ_OK;
		}
		break;
	case OH_CLR_IRQ_L2S:
		if (data->L2S_Fired > 1) {
			dev->status = REQ_ERROR | 0xABU;
		} else {
			volatile u32* reg_irq_status = ((volatile u32 *) ( dev->location + dev->subdevice*PHS_SPACING + OFF_IRQ_SET  ));
			             *reg_irq_status &= ~(data->S2L_Fired << 1UL); /* Clear fired l2s */
			              dev->status = REQ_OK;
		}
		break;
	default:
		dev->status = REQ_ERROR;
		break;
	}
}

#if 0
static void PHS_marshall(PHS_t* dev, PHSData_t* data) {

	/* INPUT DATA CHECKING */
	if (dev == NULL)                                  {                                  }
	else if (data == NULL)                            { dev->status = REQ_ERROR | 0x0AU; }
	else if (dev->location == 0)                      { dev->status = REQ_ERROR | 0x0BU; }
    else if (data->PwmValue >= MAX_PWM_VAL)           { dev->status = REQ_ERROR | 0x0CU; }
	else if (dev->subdevice > MAX_SUBDEVICES)         { dev->status = REQ_ERROR | 0x0DU; }
    else if (data->status > MAX_STATUS)               { dev->status = REQ_ERROR | 0x0EU; }
	else if (data->L2S_Enabled > 1)                   { dev->status = REQ_ERROR | 0x0FU; }
	else if (data->S2L_Enabled > 1)                   { dev->status = REQ_ERROR | 0xAAU; }
	else if (data->L2S_Fired > 1)                     { dev->status = REQ_ERROR | 0xABU; }
	else if (data->S2L_Fired > 1)                     { dev->status = REQ_ERROR | 0xACU; }
	else {

		/* ADDRESS COMPUTATION */

		u32* reg_pwm_value   = ((u32 *) ( dev->location + dev->subdevice*PHS_SPACING + OFF_PWM_VAL  ));
		u32* reg_irq_mask    = ((u32 *) ( dev->location + dev->subdevice*PHS_SPACING + OFF_IRQ_MASK ));
		u32* reg_irq_status  = ((u32 *) ( dev->location + dev->subdevice*PHS_SPACING + OFF_IRQ_SET  ));

		/* DATA WRITE TO REGISTER SPACE */

		*reg_pwm_value  = 0x00000000UL | ((u32)data->PwmValue);
		*reg_irq_mask   = 0x00000000UL | (data->L2S_Enabled << 0) | (data->S2L_Enabled << 1);

		if (data->L2S_Fired == 0x0U) {
			*reg_irq_status = 0xFFFFFFFEUL; /* Clear fired l2s - Bit 0 */
		}
		if (data->S2L_Fired == 0x0U) {
			*reg_irq_status = 0xFFFFFFFDUL; /* Clear fired s2l - Bit 1 */
		}
		

		/* END OF MARSHAL */

	}
}
#endif

static void PHS_unmarshall(PHS_t* dev, PHSData_t* data, u32 reg) {
	if (dev == NULL) {
		return;
	}

    if (data == NULL) {
    	dev->status = REQ_ERROR | 0x0AUL;
    	return ;
    }


    if (dev->location == 0) {
    	dev->status = REQ_ERROR | 0x0BUL;
    	return ;
    }

	if (dev->subdevice > MAX_SUBDEVICES) {
		dev->status = REQ_ERROR | 0x0CUL;
		return ;
	}

	switch ( reg ) {
	case OH_PWM_VAL:
	    {
	    	volatile u32* reg_pwm_value =  ((volatile u32 *) (dev->location + dev->subdevice*PHS_SPACING + OFF_PWM_VAL  ));
	    	         u32  pwm_value     = *reg_pwm_value;
	    	 		 if (pwm_value > MAX_PWM_VAL) {
	    	 			 dev->status = REQ_ERROR | 0x01U;
	    	 		 } else {
	    	 			data->PwmValue = (u16)  pwm_value;
	    	 			dev->status    = REQ_OK;
	    	 		 }
	    }
		break;
	case OH_IRQ_S2L:
		{
			volatile u32* reg_irq_mask =  ((volatile u32 *) (dev->location + dev->subdevice*PHS_SPACING + OFF_IRQ_MASK ));
					 u32  irq_mask     = *reg_irq_mask;
			         if (irq_mask > MAX_IRQ_MASK_ENABLED) {
			        	 dev->status = REQ_ERROR | 0x02U;
			         } else {
					     data->S2L_Enabled = ((irq_mask & 0x00000002) == 0) ? 0 : 1;
			             dev->status = REQ_OK;
			         }
		}
	    break;
	case OH_IRQ_L2S:
	    {
	    	volatile u32* reg_irq_mask =  ((volatile u32 *) (dev->location + dev->subdevice*PHS_SPACING + OFF_IRQ_MASK ));
			         u32  irq_mask     = *reg_irq_mask;
			         if (irq_mask > MAX_IRQ_MASK_ENABLED) {
			        	 dev->status = REQ_ERROR | 0x02U;
			         } else {
			             data->L2S_Enabled = ((irq_mask & 0x00000001) == 0) ? 0 : 1;
			             dev->status = REQ_OK;
			         }
	    }
		break;
	case OH_CLR_IRQ_S2L:
	    {
	    	volatile u32* reg_status = ((volatile u32 *) (dev->location + dev->subdevice*PHS_SPACING + OFF_STATUS   ));
			         u32  status     = *reg_status;
					 if (status > MAX_STATUS) {
					 	 dev->status = REQ_ERROR | 0x04U;
					 } else {
			             data->S2L_Fired = ((status & 0x00000002) == 0) ? 0 : 1;
					     dev->status  = REQ_OK;
					 }
	    }
		break;
	case OH_CLR_IRQ_L2S:
		{
			volatile u32* reg_status = ((volatile u32 *) (dev->location + dev->subdevice*PHS_SPACING + OFF_STATUS   ));
					 u32  status     = *reg_status;
					 if (status > MAX_STATUS) {
					 	 dev->status = REQ_ERROR | 0x04U;
					 } else {
						 data->L2S_Fired = ((status & 0x00000001) == 0) ? 0 : 1;
						 dev->status  = REQ_OK;
					 }
		}
		break;
	case OH_STATUS:
        {
		    volatile u32* reg_status =  ((volatile u32 *) (dev->location + dev->subdevice*PHS_SPACING + OFF_STATUS   ));
		             u32  status      = *reg_status;
			if (status > MAX_STATUS) {
				dev->status = REQ_ERROR | 0x04U;
			} else {
				data->status = (u8)  status;
				dev->status  = REQ_OK;
			}
	    }
	    break;
	default:
		dev->status = REQ_ERROR;
		break;
	}
}
#if 0
static void PHS_unmarshall(PHS_t* dev, PHSData_t* data) {

	/* INPUT DATA CHECKING */

	if (dev == NULL)                             {                                   }
	else if (data == NULL)                       { dev->status = REQ_ERROR | 0x0AUL; }
	else if (dev->location == 0)                 { dev->status = REQ_ERROR | 0x0BUL; }
	else if (dev->subdevice > MAX_SUBDEVICES)    { dev->status = REQ_ERROR | 0x0CUL; }
	else {

		/* ADDRESS COMPUTATION */
		u32* reg_pwm_value =  ((u32 *) (dev->location + dev->subdevice*PHS_SPACING + OFF_PWM_VAL  ));
		u32* reg_status    =  ((u32 *) (dev->location + dev->subdevice*PHS_SPACING + OFF_STATUS   ));
		u32* reg_irq_mask  =  ((u32 *) (dev->location + dev->subdevice*PHS_SPACING + OFF_IRQ_MASK ));
		u32* reg_irqs      =  ((u32 *) (dev->location + dev->subdevice*PHS_SPACING + OFF_IRQ_SET  ));

		/* DATA READ TO REGISTER SPACE */
		u32 pwm_value   = *reg_pwm_value;
		u32 status      = *reg_status;
		u32 irq_mask    = *reg_irq_mask;
		u32 irqs        = *reg_irqs;

		/* FPGA DATA CHECKING */
		if (pwm_value > MAX_PWM_VAL)                 { dev->status = REQ_ERROR | 0x01U; }
		else if (irq_mask > MAX_IRQ_MASK_ENABLED)    { dev->status = REQ_ERROR | 0x02U; } 
		else if (irqs > MAX_IRQS)                    { dev->status = REQ_ERROR | 0x03U; }
		else if (status > MAX_STATUS)                { dev->status = REQ_ERROR | 0x04U; }
		else {

			/* UNMARSHAL */
			data->PwmValue         = (u16)  pwm_value;
			data->status           = (u8)  status;

			if (irq_mask & 0x00000001 == 0)  data->L2S_Enabled = 0;
			else                             data->L2S_Enabled = 1;
			if (status   & 0x00000001 == 0)  data->L2S_Fired   = 0;
			else                             data->L2S_Fired   = 1;
			
			if (irq_mask & 0x00000002 == 0)  data->S2L_Enabled = 0;
			else                             data->S2L_Enabled = 1;
			if (status   & 0x00000002 == 0)  data->S2L_Fired   = 0;
			else                             data->S2L_Fired   = 1;

			dev->status = REQ_OK;

		}
		/* END OF UNMARSHAL */


	}


}
#endif

/*---------------------------------------------------------------------------*/
/* PUBLIC FUNCTIONS                                                          */
/*---------------------------------------------------------------------------*/

void PHS_Init(PHS_t *dev) {
	if ( dev != NULL ) {
		dev->location = 0U;
		dev->status = REQ_ERROR | 0xFU;
		dev->subdevice = MAX_SUBDEVICES+1;
	}
}

void PHS_Configure(PHS_t *dev, u32 location, u8 subdevice) {
	if ( dev != NULL ) {
		if ( location != 0 ) {
			if (subdevice < MAX_SUBDEVICES) {
				dev->location = location;
				dev->subdevice = subdevice;
				dev->status = REQ_OK;
			}
		}
	}
}

void PHS_Cleanup(PHS_t *dev) {
	if ( dev != NULL ) {
		dev->location = 0U;
		dev->status = REQ_ERROR | 0xFU;
		dev->subdevice = MAX_SUBDEVICES+1;
	}
}

void PHS_SetPWMValue(PHS_t* dev, u16 value) {
	
	PHSData_t data;

	if ( dev != NULL ) {
		if ( value > 100 ) {
			if (dev->status == REQ_OK) {
				data.PwmValue = value;
				PHS_marshall(dev, &data, OH_PWM_VAL);
			}
		}
	}
}

u16 PHS_GetPWMValue(PHS_t* dev) {
	
	PHSData_t data;

	if ( dev != NULL ) {
		memset(&data, 0, sizeof(data));
		PHS_unmarshall(dev, &data, OH_PWM_VAL);
		return ((dev->status == REQ_OK) ? data.PwmValue : 0);
	} else {
		return 0;
	}
}

u8 PHS_GetStatusValue(PHS_t* dev) {
	
	PHSData_t data;

	if ( dev != NULL ) {
		memset(&data, 0, sizeof(data));
		PHS_unmarshall(dev, &data, OH_STATUS);
		return ((dev->status == REQ_OK) ? data.status : 0);
	} else {
		return 0;
	}
}


void PHS_EnableIRQ_S2L (PHS_t* dev) {

	PHSData_t data;

	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.S2L_Enabled = 1;
			PHS_marshall(dev, &data, OH_IRQ_S2L);
		}
	}
}

void PHS_DisableIRQ_S2L (PHS_t* dev) {

	PHSData_t data;

	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			data.S2L_Enabled = 0;
			PHS_marshall(dev, &data, OH_IRQ_S2L);
		}
	}
}

u8 PHS_IsIRQEndabled_S2L (PHS_t* dev) {

	PHSData_t data;

	if ( dev != NULL ) {
		memset(&data, 0, sizeof(data));
		PHS_unmarshall(dev, &data, OH_CLR_IRQ_S2L);
		return ((dev->status == REQ_OK) ? data.S2L_Enabled : 0);
	} else {
		return 0;
	}
}

u8 PHS_GetIRQStatus_S2L (PHS_t* dev) {

	PHSData_t data;

	if ( dev != NULL ) {
		memset(&data, 0, sizeof(data));
		PHS_unmarshall(dev, &data, OH_IRQ_S2L);
		return ((dev->status == REQ_OK) ? data.S2L_Fired : 0);
	} else {
		return 0;
	}
}

void PHS_ClearIRQStatus_S2L (PHS_t* dev) {

	PHSData_t data;

	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.S2L_Fired = 0;
			PHS_marshall(dev, &data, OH_CLR_IRQ_S2L);
		}
	}
}




void PHS_EnableIRQ_L2S (PHS_t* dev) {

	PHSData_t data;

	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.L2S_Enabled = 1;
			PHS_marshall(dev, &data, OH_IRQ_L2S);
		}
	}
}

void PHS_DisableIRQ_L2S (PHS_t* dev) {

	PHSData_t data;
	if (dev->status == REQ_OK) {
		data.L2S_Enabled = 0;
		PHS_marshall(dev, &data, OH_IRQ_L2S);
	}

}

u8 PHS_IsIRQEndabled_L2S (PHS_t* dev) {

	PHSData_t data;

	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			PHS_unmarshall(dev, &data, OH_CLR_IRQ_L2S);
			return ((dev->status == REQ_OK) ? data.L2S_Enabled : 0);
		} else {
			return 0;
		}
	} else {
		return 0;
	}
}

u8 PHS_GetIRQStatus_L2S (PHS_t* dev) {

	PHSData_t data;

	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			PHS_unmarshall(dev, &data, OH_IRQ_L2S);
			return ((dev->status == REQ_OK) ? data.L2S_Fired : 0);
		} else {
			return 0;
		}
	} else {
		return 0;
	}
}

void PHS_ClearIRQStatus_L2S (PHS_t* dev) {

	PHSData_t data;

	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.L2S_Fired = 0;
			PHS_marshall(dev, &data, OH_CLR_IRQ_L2S);
		}
	}
}
