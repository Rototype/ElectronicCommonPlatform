#include <string.h>
#include "DCM.h"



/* data structure for DCM devices */
typedef struct
{
	u8               pwm_val;
	u8               pwm_frq; //7 bit 
	DCM_direction_t  dir;
	u8			     dcm_run;
 	u8			     dcm_brake;
	DCM_status_run_t status;
} DCMData_t;



/*---------------------------------------------------------------------------*/
/* PRIVATE FUNCTIONS                                                         */
/*---------------------------------------------------------------------------*/

#define OH_PWM_VAL                        0x00000001UL
#define OH_PWM_FREQ_VAL                   0x00000002UL
#define OH_DIR		                      0x00000004UL
#define OH_RUN                            0x00000008UL
#define OH_BRAKE                          0x00000010UL
#define OH_STATUS                         0x00000020UL
#define OH_CLR_SINGLEDEVICE               0x00000040UL


/* 
   DCM_SPACING
   How far one peripheral of the same type is in the contiguous memory region.
*/
static const u32 DCM_SPACING            = 0x00000018UL;


/* 
   OFFSETS
   Offset for regsiters of the single peripheral
   Relative to the DCM peripheral base address.
*/
static const u32 OFF_PWM_VAL            = 0x00000000UL;
static const u32 OFF_PWM_FREQ_VAL       = 0x00000004UL;
static const u32 OFF_DIR		        = 0x00000008UL;
static const u32 OFF_RUN                = 0x0000000CUL;
static const u32 OFF_BRAKE              = 0x00000010UL;
static const u32 OFF_STATUS           	= 0x00000014UL;


/* 
	DATA LIMITS
	Red data must be in this limits
*/
static const u32 MAX_PWM_VAL            =        100UL;
static const u32 MAX_PWM_FREQ   		=        100UL;
static const u32 MIN_PWM_FREQ			= 		  20UL;
static const u32 MAX_DIR		        =          1UL;
static const u32 MAX_BRAKE		        =          1UL;
static const u32 MAX_RUN         		=          1UL;
static const u32 MAX_STATUS             =          2UL;
static const u32 MAX_SUBDEVICES         =          5UL;



static void DCM_marshall(DCM_t* dev, DCMData_t* data, u32 reg);
static void DCM_unmarshall(DCM_t* dev, DCMData_t* data, u32 reg);



static void DCM_marshall(DCM_t* dev, DCMData_t* data, u32 reg) {

	if (dev == NULL) {
		return;
	}
	if (data == NULL) {
		dev->status = REQ_ERROR | 0x0AU;
		return;
	}
    if (dev->location == 0U) {
		dev->status = REQ_ERROR | 0x0BU;
		return;
	}
	if (dev->subdevice > (MAX_SUBDEVICES -1U)) {
		dev->status = REQ_ERROR | 0x0DU;
		return;
	}

    switch (reg) {

    case OH_PWM_VAL:
        if(data->pwm_val > MAX_PWM_VAL ) {
            dev->status = REQ_ERROR | 0x0CU;
        } else {
        	volatile u32* reg_pwm_value = 	((volatile u32 *) (dev->location + dev->subdevice*DCM_SPACING + OFF_PWM_VAL  ));
        	             *reg_pwm_value = 0x00000000UL | ((u32)data->pwm_val);
        	         	  if(*reg_pwm_value != (0x00000000UL | (((u32)data->pwm_val)))) {
        	         		  dev->status = 0x01UL;
        	         	  } else {
        	     		      dev->status   = REQ_OK;
        	         	  }
        }
    	break;

    case OH_PWM_FREQ_VAL:
        if((data->pwm_frq > MAX_PWM_FREQ) ||
           (data->pwm_frq < MIN_PWM_FREQ) ||
    	  ((data->pwm_frq % 5) != 0)) {
    		dev->status = REQ_ERROR | 0x20U;
    	} else {
    		volatile u32* reg_pwm_freq = ((volatile u32 *) (dev->location + dev->subdevice*DCM_SPACING + OFF_PWM_FREQ_VAL ));
    		             *reg_pwm_freq = 0x00000000UL | ((u32)data->pwm_frq);
    		         	  if(*reg_pwm_freq  !=( 0x00000000UL | (((u32)data->pwm_frq)))) {
    		         		  dev->status = 0x02UL;
    		         	  } else {
    		     		      dev->status    = REQ_OK;
    		         	  }
    	}
    	break;

    case OH_DIR:
        if(data->dir > MAX_DIR){
    		dev->status = REQ_ERROR | 0x20U;
    	} else {
    		volatile u32* reg_dir = ((volatile u32 *) (dev->location + dev->subdevice*DCM_SPACING + OFF_DIR   ));
    		switch (data->dir)
    		{
    			case CLOCKWISE:
    				*reg_dir = 0x00000000UL;
    			break;
    			case COUNTER_CLOCKWISE:
    				*reg_dir = 0x00000001UL;
    			break;
    			default: /* This path is infeasable */
    				*reg_dir = 0xFFUL;
    				break;
    		}
    		if(*reg_dir != (0x00000000UL | (((u32)data->dir)))) {
    			dev->status = 0x03UL;
    		} else {
    		    dev->status = REQ_OK;
    		}
    	}
    	break;

    case OH_RUN:
        if(data->dcm_run > MAX_RUN) {
            dev->status = REQ_ERROR | 0x0FU;
        } else {
        	volatile u32* reg_run = ((volatile u32 *) (dev->location + dev->subdevice*DCM_SPACING + OFF_RUN   ));
        	             *reg_run = 0x00000000UL | ((u32)data->dcm_run);
        	         	if(*reg_run != (0x00000000UL | (((u32)data->dcm_run)))) {
        	         		dev->status = 0x04UL;
        	         	} else {
    		                dev->status = REQ_OK;
        	         	}
        }
    	break;

    case OH_BRAKE:
        if(data->dcm_brake > MAX_BRAKE){
            dev->status = REQ_ERROR | 0x10U;
        } else {
        	volatile u32* reg_brake = ((volatile u32 *) (dev->location + dev->subdevice*DCM_SPACING + OFF_BRAKE   ));
        	             *reg_brake = 0x00000000UL | ((u32)data->dcm_brake);
        	         	if(*reg_brake != (0x00000000UL | ((u32)data->dcm_brake))) {
        	         		dev->status = 0x05UL;
        	         	}else{
        	         		dev->status = REQ_OK;
        	         	}
        }
    	break;

    case OH_CLR_SINGLEDEVICE:
    {
			volatile u32* reg_pwm_value  = (volatile u32*) (dev->location + dev->subdevice*DCM_SPACING + OFF_PWM_VAL     );
			volatile u32* reg_pwm_freq   = (volatile u32*) (dev->location + dev->subdevice*DCM_SPACING + OFF_PWM_FREQ_VAL);
			volatile u32* reg_direction  = (volatile u32*) (dev->location + dev->subdevice*DCM_SPACING + OFF_DIR		 );
			volatile u32* reg_run        = (volatile u32*) (dev->location + dev->subdevice*DCM_SPACING + OFF_RUN         );
			volatile u32* reg_brake      = (volatile u32*) (dev->location + dev->subdevice*DCM_SPACING + OFF_BRAKE       );

			*reg_pwm_value = 0x00000000UL;
		    *reg_pwm_freq  = 0x00000014UL;
		    *reg_direction = 0x00000000UL;
		    *reg_run       = 0x00000000UL;
		    *reg_brake     = 0x00000000UL;

            dev->status = REQ_OK;
    }
    break;

    default:
    	dev->status = REQ_ERROR;
    	break;
    }
}



static void DCM_unmarshall(DCM_t* dev, DCMData_t* data, u32 reg) {

	if (dev == NULL) {
		return;
	}
    if (data == NULL) {
		dev->status = REQ_ERROR | 0x0AU;
		return;
	}
    if (dev->location == 0UL) {
		dev->status = REQ_ERROR | 0x0BU;
		return;
	}
    if (dev->subdevice > (MAX_SUBDEVICES -1)) {
		dev->status = REQ_ERROR | 0x0CU;
		return;
	}

    switch (reg) {

    case OH_PWM_VAL:
        {
        	volatile u32* reg_pwm_value = 	(volatile u32 *) (dev->location + dev->subdevice*DCM_SPACING + OFF_PWM_VAL  );
        	           u8 pwm_value     =   (u8)*reg_pwm_value;
        	       	   if(pwm_value > MAX_PWM_VAL){
        	       		   dev->status = REQ_ERROR | 0x01UL;
        	       	   } else {
        	       		   data->pwm_val = (u8) pwm_value;
        	       		   dev->status   = REQ_OK;
        	       	   }
        }
    	break;

    case OH_PWM_FREQ_VAL:
        {
        	volatile u32* reg_pwm_freq  = (volatile u32 *) (dev->location + dev->subdevice*DCM_SPACING + OFF_PWM_FREQ_VAL );
        	          u8  pwm_freq      = *reg_pwm_freq;
        	      	  if((pwm_freq > MAX_PWM_FREQ)  ||
        	      	     (pwm_freq < MIN_PWM_FREQ)  ||
						((pwm_freq % 5UL) != 0) ) {
        	      	      dev->status = REQ_ERROR | 0x02UL;
        	      	  } else {
        	      		  data->pwm_frq	= (u8) pwm_freq;
     	       		      dev->status   = REQ_OK;
        	      	  }
        }
    	break;

    case OH_DIR:
        {
        	volatile u32* reg_dir = (volatile u32 *) (dev->location + dev->subdevice*DCM_SPACING + OFF_DIR   );
        	          u8  dir     = *reg_dir;
        	          if(dir > MAX_DIR){
        	          	  dev->status = REQ_ERROR | 0x03UL;
        	      	  } else {
     	       		      dev->status = REQ_OK;
        	      		  switch (dir)
						  {
						      case 0:
							      data->dir = CLOCKWISE;
								break;
							  case 1:
								  data->dir = COUNTER_CLOCKWISE;
								break;
							  default:
								  data->dir = DIR_ERROR;
								  dev->status = REQ_ERROR | 0x03UL;
								break;
						  }
        	      	  }
    	}
    	break;

    case OH_RUN:
        {
        	volatile u32* reg_run = (volatile u32 *) (dev->location + dev->subdevice*DCM_SPACING + OFF_RUN   );
        	         u8   run = *reg_run;
        	         if(run > MAX_RUN){
        	             dev->status = REQ_ERROR | 0x05UL;
        	         } else {
        	     		 data->dcm_run = (u8) run;
        	        	 dev->status  = REQ_OK;
        	         }
        }
    	break;

    case OH_BRAKE:
        {
        	volatile u32* reg_brake = (volatile u32 *) (dev->location + dev->subdevice*DCM_SPACING + OFF_BRAKE   );
        	          u8  brake_value = *reg_brake;
        	          if(brake_value > MAX_BRAKE){
        	          		dev->status     = REQ_ERROR | 0x04UL;
        	          } else {
        	        	  data->dcm_brake	= (u8) brake_value;
        	        	  dev->status = REQ_OK;
         	          }
        }
    	break;

    case OH_STATUS:
        {
        	volatile u32* reg_status = (volatile u32 *) (dev->location + dev->subdevice*DCM_SPACING + OFF_STATUS   );
        	           u8 status     = *reg_status;
					   if(status > MAX_STATUS){
					       dev->status = REQ_ERROR | 0x06UL;
					   } else {
						    dev->status = REQ_OK;
							switch (status)
							{
							case 0:
								data->status = STATUS_FREE_MODE;
								break;
							case 1:
								data->status = STATUS_RUNNING;
								break;
							case 2:
								data->status = STATUS_BRAKED;
								break;
							default:
								data->status = STATUS_ERROR;
								dev->status = REQ_ERROR | 0x07UL;
								break;
							}
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

void DCM_Init(DCM_t *dev) {

	if ( dev != NULL ) {
		dev->location = 0U;
		dev->status = REQ_ERROR | 0xFU;
		dev->subdevice = MAX_SUBDEVICES + 1U;
	}
}

void DCM_Configure(DCM_t *dev, u32 location, u8 subdevice) {

	DCMData_t data;
	if ( dev != NULL ) {
		if ( location != 0U ) {
			if (subdevice < MAX_SUBDEVICES) {
				memset(&data, 0, sizeof(data));
				dev->location = location;
				dev->subdevice = subdevice;
				dev->status = REQ_OK;
				DCM_marshall(dev, &data, OH_CLR_SINGLEDEVICE);
			}
		}
	}
}

void DCM_Cleanup(DCM_t *dev) {

	if ( dev != NULL ) {
		dev->location = 0U;
		dev->status = REQ_ERROR | 0xF;
		dev->subdevice = MAX_SUBDEVICES + 1U;
	}
}

/******************* PWM VALUE ************************/

void DCM_SetPWMValue(DCM_t* dev, u8 value) {
	
	DCMData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.pwm_val = value;
			DCM_marshall(dev, &data, OH_PWM_VAL);
		}
	}

}

u8 DCM_GetPWMValue(DCM_t* dev) {
	
	DCMData_t data;
	if ( dev != NULL ) {
		memset(&data, 0, sizeof(data));
		DCM_unmarshall(dev, &data, OH_PWM_VAL);
		return ((dev->status == REQ_OK) ? data.pwm_val : 0 );
	} else {
		return 0;
	}
}

/******************* PWM FREQ ************************/

void DCM_SetPWMFrequency(DCM_t* dev, u8 value) {
	
	DCMData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.pwm_frq = value;
			DCM_marshall(dev, &data, OH_PWM_FREQ_VAL);
		}
	}
}

u8 DCM_GetPWMFrequency(DCM_t* dev) {
	
	DCMData_t data;
	if ( dev != NULL ) {
		DCM_unmarshall(dev, &data, OH_PWM_FREQ_VAL);
		return ((dev->status == REQ_OK) ? data.pwm_frq : 0 );
	} else {
		return 0;
	}
}


/*********************** DIR ******************/

void DCM_SetRun(DCM_t* dev) {
	
	DCMData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.dcm_run = 0x1;
			DCM_marshall(dev, &data, OH_RUN);
		}
	}

}

void DCM_ClearRun(DCM_t* dev) {
	
	DCMData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.dcm_run = 0x0;
			DCM_marshall(dev, &data, OH_RUN);
		}
	}
}

u8 DCM_GetRunValue(DCM_t* dev) {
	
	DCMData_t data;
	if ( dev != NULL ) {
		DCM_unmarshall(dev, &data, OH_RUN);
		return ((dev->status == REQ_OK) ? data.dcm_run : 0 );
	} else {
		return 0;
	}
}

/************ DIRECTION ******************/

void DCM_SetDirection(DCM_t* dev,DCM_direction_t value) {

	DCMData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.dir = value;
			DCM_marshall(dev, &data, OH_DIR);
		}
	}
}

DCM_direction_t DCM_GetDirection(DCM_t* dev) {
	
	DCMData_t data;
	if ( dev != NULL ) {
		memset(&data, 0, sizeof(data));
		DCM_unmarshall(dev, &data, OH_DIR);
		return ((dev->status == REQ_OK) ? data.dir : 0);
	} else {
		return 0;
	}
}

/************ BRAKE ******************/

void DCM_SetBrake(DCM_t* dev) {
	
	DCMData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.dcm_brake = 0x1;
			DCM_marshall(dev, &data, OH_BRAKE);
		}
	}
}

void DCM_ClearBrake(DCM_t* dev) {
	
	DCMData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
            memset(&data, 0, sizeof(data));
			data.dcm_brake = 0x0;
			DCM_marshall(dev, &data, OH_BRAKE);
		}
	}
}

u8 DCM_GetBrakeValue(DCM_t* dev) {
	
	DCMData_t data;
	if ( dev != NULL ) {
		memset(&data, 0, sizeof(data));
		DCM_unmarshall(dev, &data, OH_BRAKE);
		return ((dev->status == REQ_OK) ? data.dcm_brake : 0);
	} else {
		return 0;
	}
}

#if 0
/************** STATUS ******************/
DCM_status_run_t DCM_GetStatusRun(DCM_t* dev) {

	DCMData_t data;

	if ( dev != NULL ) {
		memset(&data, 0, sizeof(data));
		DCM_unmarshall(dev, &data, OH_BRAKE);
		return ((dev->status == REQ_OK) ? data.status : (DCM_status_run_t)NULL );
	} else {
        return (DCM_status_run_t)NULL;
	}
}
#else

/************** STATUS ******************/

DCM_status_run_t DCM_GetStatusRun(DCM_t* dev) {

	DCMData_t data;
	if ( dev != NULL ) {
		memset(&data, 0, sizeof(data));
		DCM_unmarshall(dev, &data, OH_STATUS);
		return ((dev->status == REQ_OK) ? data.status : (DCM_status_run_t)NULL );
	} else {
        return (DCM_status_run_t)NULL;
	}
}
#endif
