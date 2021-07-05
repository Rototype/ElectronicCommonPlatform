#include <string.h>
#include "solenoide.h"



/* data structure for SOL devices */
typedef struct
{
	u8            PwmValue;
	u16           FullLoadDuration;
	SOL_status_t  status;
	u8            running;
} SolenoidData_t;



/*---------------------------------------------------------------------------*/
/* PRIVATE FUNCTIONS                                                         */
/*---------------------------------------------------------------------------*/

#define OH_PWM_VAL                        0x00000001UL
#define OH_TIME_FULL                      0x00000002UL
#define OH_RUN                            0x00000004UL
#define OH_STATUS                         0x00000008UL


/* 
   SOL_SPACING
   How far one peripheral of the same type is in the contiguos memory region.
*/
static const u32 SOL_SPACING            = 0x00000010UL;


/* 
   OFFSETS
   Offset for registers of the single peripheral
   Relative to the SOL peripheral base address.
*/
static const u32 OFF_PWM_VAL            = 0x00000000UL;
static const u32 OFF_TIME_FULL          = 0x00000004UL;
static const u32 OFF_RUN                = 0x00000008UL;
static const u32 OFF_STATUS             = 0x0000000CUL;


/* 
	DATA LIMITS
	Red data must be in this limits
*/
static const u32 MAX_FULL_LOAD_DURATION	=       2000UL;
static const u32 MAX_PWM_VAL            =        100UL;					// 255UL;
static const u32 MAX_RUN_CMD            =          1UL;
static const u32 MAX_STATUS             =          2UL;
static const u32 MAX_SUBDEVICES         =         10UL;  				// 9U ;



static void SOL_marshall(SOL_t* dev, SolenoidData_t* data, u32 reg);
static void SOL_unmarshall(SOL_t* dev, SolenoidData_t* data, u32 reg);



static void SOL_marshall(SOL_t* dev, SolenoidData_t* data, u32 reg) {

	if (dev == NULL) {
		return;
	}
	if (data == NULL) {
		dev->status = REQ_ERROR | E_MARSHAL | 0x1001U;
		return;
	}
	if (dev->location == 0) {
		dev->status = REQ_ERROR | E_MARSHAL | 0x1002U;
		return;
	}
	if (dev->subdevice > (MAX_SUBDEVICES -1)) {
		dev->status = REQ_ERROR | E_MARSHAL | 0x1003U;
		return ;
	}

    switch (reg) {

    case OH_PWM_VAL:

    	if (data->PwmValue > MAX_PWM_VAL) {
    		dev->status = REQ_ERROR | E_MARSHAL | 0x1004U;
    	} else {
    		volatile u32* reg_pwm_value = (volatile u32 *) (dev->location + dev->subdevice*SOL_SPACING + OFF_PWM_VAL  );
    		             *reg_pwm_value = 0x00000000UL | ((u32)data->PwmValue);
    		              dev->status   = REQ_OK;
    	}
    	break;

    case OH_TIME_FULL:
    	if (data->FullLoadDuration > MAX_FULL_LOAD_DURATION) {
    		dev->status = REQ_ERROR | E_MARSHAL | 0x1005U;
    	} else {
    		volatile u32* reg_time_full = (volatile u32 *) (dev->location + dev->subdevice*SOL_SPACING + OFF_TIME_FULL);
    		             *reg_time_full = ((u32)data->FullLoadDuration);
    		              dev->status   = REQ_OK;
    	}
    	break;

    case OH_RUN:
    	if (data->running > MAX_RUN_CMD) {
    		dev->status = REQ_ERROR | E_MARSHAL | 0x1006U;
    	} else {
    	    volatile u32* reg_run_cmd = (volatile u32 *) (dev->location + dev->subdevice*SOL_SPACING + OFF_RUN      );
    	                 *reg_run_cmd = ((u32)data->running);
    	                  dev->status = REQ_OK;
        }
    	break;

    default:
        dev->status = REQ_ERROR;
    	break;
    }
}



static void SOL_unmarshall(SOL_t* dev, SolenoidData_t* data, u32 reg) {

	if (dev == NULL) {
		return;
	}
    if (data == NULL) {
    	dev->status = REQ_ERROR | E_MARSHAL | 0x2001UL;
    	return ;
    }
	if (dev->location == 0) {
		dev->status = REQ_ERROR | E_MARSHAL | 0x2002UL;
		return ;
	}
    if (dev->subdevice > (MAX_SUBDEVICES -1)) {
    	dev->status = REQ_ERROR | E_MARSHAL | 0x2003UL;
    	return ;
    }

    switch (reg) {

    case OH_PWM_VAL:
        {
    		volatile u32* reg_pwm_value = (volatile u32 *) (dev->location + dev->subdevice*SOL_SPACING + OFF_PWM_VAL  );
    		         u32  pwm_value     = *reg_pwm_value;
    		         if (pwm_value > MAX_PWM_VAL) {
    		        	 dev->status = REQ_ERROR | E_UNMARSHAL | 0x3004UL;
    		         } else {
    		              data->PwmValue = (u8)  pwm_value;
    		              dev->status    = REQ_OK;
    		         }
    	}
    	break;

    case OH_TIME_FULL:
    	{
    		volatile u32* reg_time_full = (volatile u32 *) (dev->location + dev->subdevice*SOL_SPACING + OFF_TIME_FULL);
           		     u32  time_full              = *reg_time_full;
           		     if (time_full > MAX_FULL_LOAD_DURATION) {
           		    	 dev->status = REQ_ERROR | E_UNMARSHAL | 0x3005UL;
           		     } else {
			              data->FullLoadDuration = (u16) time_full;
    		              dev->status            = REQ_OK;
           		     }
    	}
    	break;

    case OH_RUN:
    	{
    	    volatile u32* reg_run_cmd = (volatile u32 *) (dev->location + dev->subdevice*SOL_SPACING + OFF_RUN      );
    		         u32  run_cmd       = *reg_run_cmd;
    		         if (run_cmd > MAX_RUN_CMD) {
    		        	 dev->status = REQ_ERROR | E_UNMARSHAL | 0x3006UL;
    		         } else {
    					  data->running = (u8)run_cmd;
    	                  dev->status   = REQ_OK;
    		         }
        }
    	break;
    case OH_STATUS:
        {
		    volatile u32* reg_status = (volatile u32 *) (dev->location + dev->subdevice*SOL_SPACING + OFF_STATUS   );
		             u32 status    = *reg_status;
		             if (status > MAX_STATUS) {
		            	 dev->status = REQ_ERROR | E_UNMARSHAL | 0x3007UL;
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


/*---------------------------------------------------------------------------*/
/* PUBLIC FUNCTIONS                                                          */
/*---------------------------------------------------------------------------*/

void SOL_Init(SOL_t *dev) {

	if ( dev != NULL ) {
		dev->location = 0;
		dev->status = REQ_ERROR | 0xF;
		dev->subdevice = MAX_SUBDEVICES+1;
	}
}

void SOL_Configure(SOL_t *dev, u32 location, u8 subdevice) {

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

void SOL_Cleanup(SOL_t *dev) {

	if ( dev != NULL ) {
		dev->location = 0;
		dev->status = REQ_ERROR | 0xF;
		dev->subdevice = MAX_SUBDEVICES+1;
	}
}

void SOL_SetPWMValue(SOL_t* dev, u8 value) {
	
	SolenoidData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.PwmValue = value;
			SOL_marshall(dev, &data, OH_PWM_VAL);
		}
	}
}

u8 SOL_GetPWMValue(SOL_t* dev) {
	
	SolenoidData_t data;
	if ( dev != NULL ) {
		memset(&data, 0, sizeof(data));
		SOL_unmarshall(dev, &data, OH_PWM_VAL);
		return ((dev->status == REQ_OK) ? data.PwmValue : (u8)0 );
	} else {
		return (u8)0;
	}
}

void SOL_SetFullLoadDuration(SOL_t* dev, u16 value) {
	
	SolenoidData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.FullLoadDuration = value;
			SOL_marshall(dev, &data, OH_TIME_FULL);
		}
	}
}

u16 SOL_GetFullLoadDuration(SOL_t* dev) {
	
	SolenoidData_t data;
	if ( dev != NULL ) {
		memset(&data, 0, sizeof(data));
		SOL_unmarshall(dev, &data, OH_TIME_FULL);
		return ((dev->status == REQ_OK) ? data.FullLoadDuration : (u16)0);
	} else {
		return (u16)0;
	}
}

SOL_status_t SOL_GetStatus(SOL_t* dev) {
	
	SolenoidData_t data;
	if ( dev != NULL ) {
		memset(&data, 0, sizeof(data));
		SOL_unmarshall(dev, &data, OH_STATUS);
		return ((dev->status == REQ_OK) ? data.status : (SOL_status_t)NULL);
	} else {
		return ((SOL_status_t)NULL);
	}
}

void SOL_SetRunning(SOL_t* dev) {
	
	SolenoidData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.running = TRUE;
			SOL_marshall(dev, &data, OH_RUN);
		}
	}
}

void SOL_ClearRunning(SOL_t* dev) {

	SolenoidData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.running = FALSE;
			SOL_marshall(dev, &data, OH_RUN);
		}
	}
}
