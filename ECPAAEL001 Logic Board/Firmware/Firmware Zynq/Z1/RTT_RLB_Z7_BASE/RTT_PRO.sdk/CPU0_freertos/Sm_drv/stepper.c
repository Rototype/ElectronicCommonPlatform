#include <stdio.h>
#include <assert.h>
#include <stddef.h>
#include <limits.h>
#include <float.h>
#include <math.h>
#include <tgmath.h>
#include <string.h>
#include <errno.h>
#include "stepper.h"


typedef struct {

	/* PARAMETERS */
	u32           max_acceleration;
	u32           initial_speed;
	u32           target_speed;
	u32           step_number;
	u8            direction;
	u8            load;
	u8            resolution;
	/* COMMANDS */
	u8            cmd_start;
	u8            cmd_stop;
	u8            cmd_speed_change;
	u8            cmd_step_slow;
	u8            cmd_step_fast;
	/* STATUS */
	u8            motor_running;
	u32			  curr_step_number;
	/* IRQ */
	u8            irq_ena;
	u8            irq_status;
	/* COMMON */
	u32			  cmn_mask;
	u32			  cmn_irqs;
} StepperData_t;

/*---------------------------------------------------------------------------*/
/* PRIVATE FUNCTIONS                                                         */
/*---------------------------------------------------------------------------*/

/*
	DEFITION VALUE OF MASRHALL AND UNMARSHALL

*/
#define OH_MAX_ACC               0X00000000UL
#define OH_TARGET_SPEED          0X00000001UL
#define OH_DIRECTION             0x00000002UL
#define OH_LOAD                  0x00000004UL
#define OH_RESOLUTION            0x00000008UL
#define OH_INITIAL_SPEED         0x00000010UL
#define OH_STEP_CNT              0x00000020UL
#define OH_CMD_START             0x00000040UL	// ramp_up
#define OH_CMD_STOP              0x00000080UL	// ramp_dn
#define OH_CMD_SPEED_CHANGE      0x00000100UL	// spd_chg
#define OH_CMD_STEP_SLOW         0x00000200UL	// slw_stps
#define OH_CMD_STEP_FAST         0x00000400UL	// fst_steps
#define OH_STATUS                0x00000800UL
#define OH_GET_STEP              0x00001000UL	// steps_counter ?
#define OH_IRQ_ENA            	 0x00002000UL
#define OH_IRQ_STATUS            0x00004000UL
#define OH_CMN_MSK               0x00008000UL
#define OH_CMN_IRQS              0x00010000UL
#define OH_CLR_SINGLEDEVICE      0x00020000UL
#define OH_CLR_IRQMASKS          0x00040000UL

#define OH_NULL_DATA_PTR         0x00080000UL
#define OH_WRONG_LOCATION        0x00100000UL
#define OH_WRONG_SUBDEVICE       0x00200000UL

/*---------------------------------------------------------------------------*/
/* PRIVATE FUNCTIONS                                                         */
/*---------------------------------------------------------------------------*/

/* 
	CLOCK FREQUENCY
	The clock frequency used for STEPPER IP
 */
static const float clock_frequency          = 200000000.0;

/* 
   STEPPER_SPACING
   How far one peripheral of the same type is in the contiguos memory region.
*/
static const u32 STEPPER_SPACING            = 0x00000040UL;

/* 
   OFFSETS
   Offset for regsiters of the single peripheral
   Relative to the SM peripheral base address.
*/
static const u32 OFF_MAX_ACC            = 0x00000000UL;
static const u32 OFF_TARGET_SPEED       = 0x00000004UL;
static const u32 OFF_DIRECTION          = 0x00000008UL;
static const u32 OFF_LOAD               = 0x0000000CUL;
static const u32 OFF_RESOLUTION         = 0x00000010UL;
static const u32 OFF_INITIAL_SPEED      = 0x00000014UL;
static const u32 OFF_STEP_CNT           = 0x00000018UL;
static const u32 OFF_CMD_START          = 0x0000001CUL;
static const u32 OFF_CMD_STOP           = 0x00000020UL;
static const u32 OFF_CMD_SPEED_CHANGE   = 0x00000024UL;
static const u32 OFF_CMD_STEP_SLOW      = 0x00000028UL;
static const u32 OFF_CMD_STEP_FAST      = 0x0000002CUL;
static const u32 OFF_CMD_CURR_STEP_CNT  = 0x00000030UL;		// read only
static const u32 OFF_RUNNING            = 0x00000034UL;		// read only - two fields
static const u32 OFF_IRQ_ENA            = 0x00000038UL;
static const u32 OFF_IRQ_STATUS         = 0x0000003CUL;		// read only

static const u32 OFF_CMN_MASK        	= 0x00000500UL;
static const u32 OFF_CMN_IRQs           = 0x00000504UL;		// read only

/* 
	DATA LIMITS
	Red data must be within this limits
*/
static const u32 MAX_MAX_ACC            = 0x000FFFFFUL;
static const u32 MAX_SPEED              =      80000UL;
static const u32 MIN_SPEED              =         80UL;
static const u32 MAX_EC                 =    2500000UL;
static const u32 MIN_EC                 =       2500UL;
static const u32 MIN_STEPS              =          1UL;
static const u32 MAX_DIRECTION          =          1UL;
static const u32 MAX_LOAD               =          3UL;
static const u32 MAX_RESOLUTION         =          3UL;
static const u32 MAX_CMD                =          1UL;
static const u8  MAX_SUBDEVICES         =         20UL;
static const u32 MAX_IRQs         		= 0x000FFFFFUL;

// extern size_t popcount(uintmax_t);


inline static u32 ConvertECToSpeed (u32        EC                                ) __attribute__((always_inline));
inline static u32 ConvertSpeedToEC (u32        speed                             ) __attribute__((always_inline));
static void STEPPER_marshall       (STEPPER_t* dev, StepperData_t* data, u32 reg );
static void STEPPER_unmarshall     (STEPPER_t* dev, StepperData_t* data, u32 reg );

inline static u32 ConvertSpeedToEC(u32 speed) {
	float r_speed = (float)speed;
	float r_EC;
	u32   res;
    u32   fpscr_reg;

	assert(__builtin_popcount(LONG_MAX) <= DBL_MANT_DIG * log2(FLT_RADIX));

	if (isnan(r_speed)                    ||
		isgreater(fabs(r_speed), FLT_MAX) ||
		isless(fabs(r_speed), FLT_MIN)) {
		return 0;
	} else {
		if ( (__builtin_popcount(INT_MAX)                 < log2f(fabsf(r_speed)) ||
		     (r_speed != 0.0F && fabsf(r_speed) < FLT_MIN))) {
            return 0;
		} else {
			r_EC = clock_frequency / r_speed;
			asm("VMRS r0, FPSCR");
   		    asm("MOV %0, r0" : "=r"(fpscr_reg));
   		    if ((fpscr_reg == 0x01) || (fpscr_reg == 0x10)) {
   		    	return 0;
   		    } else {
			    res  = (u32)lrint(r_EC);
		        return res;
   		    }
		}
	}
}

inline static u32 ConvertECToSpeed(u32 EC) {
	float r_EC    = (float)EC;
	float r_speed;
	u32   res;
    u32   fpscr_reg;

	assert(__builtin_popcount(LONG_MAX) <= DBL_MANT_DIG * log2(FLT_RADIX));

	if (isnan(r_EC)                    ||
		isgreater(fabs(r_EC), FLT_MAX) ||
		isless(fabs(r_EC), FLT_MIN)) {
		return 0;
	} else {
		if ( (__builtin_popcount(INT_MAX)             < log2f(fabsf(r_EC)) ||
		     ((r_EC != 0.0F) && fabsf(r_EC) < FLT_MIN))) {
            return 0;
		} else {
			r_speed = clock_frequency / r_EC;
			asm("VMRS r0, FPSCR");
   		    asm("MOV %0, r0" : "=r"(fpscr_reg));
   		    if ((fpscr_reg == 0x01) || (fpscr_reg == 0x10)) {
   		    	return 0;
   		    } else {
				res  = (u32)lrint(r_speed);
				return res;
   		    }
		}
	}
}


static void STEPPER_marshall(STEPPER_t* dev, StepperData_t* data, u32 reg ) {

	if ( dev == NULL ) {
		return;
    }
	if ( data == NULL ) {
		dev->status = REQ_ERROR | E_MARSHAL | OH_NULL_DATA_PTR;
		return;
	}
	if ( dev->location == 0U ) {
		dev->status = REQ_ERROR | E_MARSHAL | OH_WRONG_LOCATION;
		return;
	}
	if ( (uint32_t) dev->subdevice > (MAX_SUBDEVICES - 1U) ) {
		dev->status = REQ_ERROR | E_MARSHAL | OH_WRONG_SUBDEVICE;
		return;
	}

    switch (reg) {

        case OH_MAX_ACC:
			if ( data->max_acceleration > MAX_MAX_ACC ) {
				dev->status = REQ_ERROR | E_MARSHAL | OH_MAX_ACC;
			} else {
				volatile u32* reg_max_acc = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_MAX_ACC );
		                     *reg_max_acc = data->max_acceleration;
		                      dev->status = REQ_OK;
			}
        break;

        case OH_TARGET_SPEED:
	        if (( data->target_speed < MIN_SPEED ) || ( data->target_speed > MAX_SPEED )) {
	        	dev->status = REQ_ERROR | E_MARSHAL | OH_TARGET_SPEED;
	        } else {
	    		volatile u32* reg_target_speed = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_TARGET_SPEED );
	    		             *reg_target_speed = ConvertSpeedToEC(data->target_speed);
		                      dev->status = REQ_OK;
	        }
        break;

        case OH_DIRECTION:
        	if ( data->direction != STEPPER_CLOCKWISE        &&
        		 data->direction != STEPPER_COUNTERCLOCKWISE  ) {
        		dev->status = REQ_ERROR | E_MARSHAL | OH_DIRECTION;
        	} else {
        		volatile u32* reg_direction = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_DIRECTION );
        		switch (data->direction) {
        			case STEPPER_CLOCKWISE:
        				*reg_direction  = 0x00000000UL;
        			break;
        			case STEPPER_COUNTERCLOCKWISE :
        				*reg_direction  = 0x00000001UL;
        			break;
        			default:
					break;
        		}
                dev->status = REQ_OK;
        	}
        break;

        case OH_LOAD:
        	if ( data->load != STEPPER_DISABLE     &&
  		         data->load != STEPPER_DISABLE1    &&
        		 data->load != STEPPER_ENABLE_FULL &&
        		 data->load != STEPPER_ENABLE_HALF  ) {
        	    dev->status = REQ_ERROR | E_MARSHAL | OH_LOAD;
        	} else {
        		volatile u32* reg_load = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_LOAD );
        		switch (data->load) {
        			case STEPPER_DISABLE:
        				*reg_load = 0x00000000UL;
        			break;
        			case STEPPER_DISABLE1:
        				*reg_load = 0x00000001UL;
        			break;
        			case STEPPER_ENABLE_FULL:
        				*reg_load = 0x00000002UL;
        			break;
        			case STEPPER_ENABLE_HALF:
        				*reg_load = 0x00000003UL;
        			break;
        			default:
					break;
        		}
                dev->status = REQ_OK;
        	}
        break;

        case OH_RESOLUTION:
        	if ( data->resolution != STEPPER_RES0 &&
  		         data->resolution != STEPPER_RES1 &&
        		 data->resolution != STEPPER_RES2 &&
        		 data->resolution != STEPPER_RES3  ) {
        		dev->status = REQ_ERROR | E_MARSHAL | OH_RESOLUTION;
        	} else {
        		volatile u32* reg_resolution = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_RESOLUTION );
        		switch (data->resolution) {
        			case STEPPER_RES0:
        				*reg_resolution = 0x00000000UL;
        			break;
        			case STEPPER_RES1:
        				*reg_resolution = 0x00000001UL;
        			break;
        			case STEPPER_RES2:
        				*reg_resolution = 0x00000002UL;
        			break;
        			case STEPPER_RES3:
        				*reg_resolution = 0x00000003UL;
        			break;
        			default:
       				break;
        		}
                dev->status = REQ_OK;
        	}
        break;

        case OH_INITIAL_SPEED:
        	if (( data->initial_speed < MIN_SPEED ) || ( data->initial_speed > MAX_SPEED )) {
        	    dev->status = REQ_ERROR | E_MARSHAL | OH_INITIAL_SPEED;
        	} else {
        		volatile u32* reg_initial_speed = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_INITIAL_SPEED );
        		             *reg_initial_speed = ConvertSpeedToEC(data->initial_speed);
                              dev->status = REQ_OK;
        	}
        break;

        case OH_STEP_CNT:
        	if ( data->step_number < MIN_STEPS ) {
        		dev->status = REQ_ERROR | E_MARSHAL | OH_STEP_CNT;
        	} else {
        		volatile u32* reg_step_cnt = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_STEP_CNT );
        		             *reg_step_cnt = data->step_number;
        		              dev->status = REQ_OK;
        	}
        break;

        case OH_CMD_START:
        	if ( data->cmd_start > MAX_CMD ) {
        		dev->status = REQ_ERROR | E_MARSHAL | OH_CMD_START;
        	} else {
        		volatile u32* reg_cmd_start = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_CMD_START );
        		             *reg_cmd_start = data->cmd_start;
        		              dev->status   = REQ_OK;
        	}
        break;

        case OH_CMD_STOP:
        	if ( data->cmd_stop > MAX_CMD ) {
        	    dev->status = REQ_ERROR | E_MARSHAL | OH_CMD_STOP;
        	} else {
        		volatile u32* reg_cmd_stop = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_CMD_STOP );
        		             *reg_cmd_stop = data->cmd_stop;
        		              dev->status  = REQ_OK;
        	}
        break;

        case OH_CMD_SPEED_CHANGE:
        	if ( data->cmd_speed_change > MAX_CMD ) {
        		dev->status = REQ_ERROR | E_MARSHAL | OH_CMD_SPEED_CHANGE;
        	} else {
        		volatile u32* reg_cmd_speed_change = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_CMD_SPEED_CHANGE);
        		             *reg_cmd_speed_change = data->cmd_speed_change;
       		                  dev->status          = REQ_OK;
        	}
		break;

        case OH_CMD_STEP_SLOW:
        	if ( data->cmd_step_slow > MAX_CMD ) {
        	    dev->status = REQ_ERROR | E_MARSHAL | OH_CMD_STEP_SLOW;
        	} else {
        		volatile u32* reg_cmd_step_slow = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_CMD_STEP_SLOW );
        		             *reg_cmd_step_slow = data->cmd_step_slow;
      		                  dev->status       = REQ_OK;
        	}
        break;

        case OH_CMD_STEP_FAST:
        	if ( data->cmd_step_fast > MAX_CMD ) {
        		dev->status = REQ_ERROR | E_MARSHAL | OH_CMD_STEP_FAST;
        	} else {
        		volatile u32* reg_cmd_step_fast = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_CMD_STEP_FAST );
        		             *reg_cmd_step_fast = data->cmd_step_fast;
     		                  dev->status       = REQ_OK;
        	}
        break;

//        case OH_STATUS:
//        {
//        	volatile u32* reg_running = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_RUNNING );
//    		             *reg_running = data->motor_running;
//    		              dev->status = REQ_OK;
//        }
//        break;

        case OH_IRQ_ENA:
        	if ( data->irq_ena > MAX_CMD ) {
        		dev->status = REQ_ERROR | E_MARSHAL | OH_IRQ_ENA;
        	} else {
        		volatile u32* reg_irq_ena = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_IRQ_ENA );
        		             *reg_irq_ena = data->irq_ena;
    		                  dev->status = REQ_OK;
        	}
        break;

        case OH_IRQ_STATUS:
        {
    		volatile u32* reg_irq_status = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_IRQ_STATUS );

            *reg_irq_status = 0x00000001u;			/* set 1 only for the interrupt to clear */
 			*reg_irq_status = 0x00000000u;			/* stop impulse signal */

 			dev->status = REQ_OK;
    	}
    	break;

        case OH_CMN_MSK:
        	if ( dev->subdevice >= MAX_SUBDEVICES ) {
        		dev->status = REQ_ERROR | E_MARSHAL | OH_CMN_MSK;
        	} else {
        		volatile u32* reg_cmn_mask  = (volatile u32*) (dev->location + OFF_CMN_MASK );
    			if (data->cmn_mask == 1U) {
    				*reg_cmn_mask |=  (0x00000001 << dev->subdevice);
    			} else {
    				*reg_cmn_mask &= ~(0x00000001 << dev->subdevice);
    			}
                dev->status = REQ_OK;
        	}
        break;

//        case OH_CMN_IRQS:
//        {
//
//        }
//        break;

        case OH_CLR_IRQMASKS:
        {
        		volatile u32* reg_cmn_mask  = (volatile u32*) (dev->location + OFF_CMN_MASK );

	            *reg_cmn_mask = 0x00000000UL;

	            dev->status = REQ_OK;
        }
        break;

        case OH_CLR_SINGLEDEVICE:
        {
				volatile u32* reg_max_acc          = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_MAX_ACC );
				volatile u32* reg_target_speed     = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_TARGET_SPEED );
				volatile u32* reg_direction        = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_DIRECTION );
				volatile u32* reg_load             = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_LOAD );
				volatile u32* reg_resolution       = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_RESOLUTION );
				volatile u32* reg_initial_speed    = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_INITIAL_SPEED );
				volatile u32* reg_step_cnt         = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_STEP_CNT );
				volatile u32* reg_cmd_start        = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_CMD_START );
				volatile u32* reg_cmd_stop         = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_CMD_STOP );
				volatile u32* reg_cmd_speed_change = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_CMD_SPEED_CHANGE);
				volatile u32* reg_cmd_step_slow    = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_CMD_STEP_SLOW );
				volatile u32* reg_cmd_step_fast    = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_CMD_STEP_FAST );
				volatile u32* reg_irq_ena          = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_IRQ_ENA );
           		volatile u32* reg_irq              = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_IRQ_STATUS );

				*reg_max_acc          = 0x00000000UL;
			    *reg_target_speed     = 0x00000000UL;
			    *reg_direction        = 0x00000000UL;
			    *reg_load             = 0x00000000UL;
			    *reg_resolution       = 0x00000000UL;
			    *reg_initial_speed    = 0x00000000UL;
			    *reg_step_cnt         = 0x00000000UL;
			    *reg_cmd_start        = 0x00000000UL;
			    *reg_cmd_stop         = 0x00000000UL;
			    *reg_cmd_speed_change = 0x00000000UL;
			    *reg_cmd_step_slow    = 0x00000000UL;
			    *reg_cmd_step_fast    = 0x00000000UL;
			    *reg_irq_ena          = 0x00000000UL;
                
                *reg_irq              = 0x00000001UL;  // Pulse to clear pending interrupts
                *reg_irq              = 0x00000000UL;


                dev->status = REQ_OK;
        }
        break;

        default:
        	dev->status = REQ_ERROR;
        break;
	}
}

static void STEPPER_unmarshall(STEPPER_t* dev, StepperData_t* data, u32 reg) {

	if      ( dev == NULL ) {
		return;
	}
	if ( data == NULL ) {
		dev->status = REQ_ERROR | E_UNMARSHAL | 0x2000UL;
	}
	if ( dev->location == 0U ) {
		dev->status = REQ_ERROR | E_UNMARSHAL | 0x2001UL;
	}
	if ( dev->subdevice > (MAX_SUBDEVICES -1U)) {
		dev->status = REQ_ERROR | E_UNMARSHAL | 0x2002UL;
	}

    switch (reg) {

        case OH_MAX_ACC:
        {
				volatile u32* reg_max_acc = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_MAX_ACC );
				u32 temp_max_acc       = *reg_max_acc;
	  			if (temp_max_acc > MAX_MAX_ACC ) {
	  				dev->status = REQ_ERROR | E_UNMARSHAL | 0x3001UL;
	  			} else {
		  			data->max_acceleration = temp_max_acc;
				    dev->status = REQ_OK;
	  			}
        }
		break;

        case OH_TARGET_SPEED:
        {
	    		volatile u32* reg_target_speed = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_TARGET_SPEED );
				u32 temp_target_speed          = *reg_target_speed;
				if (temp_target_speed < MIN_EC) {
					dev->status = REQ_ERROR | E_UNMARSHAL | 0x3004UL;
				}
				else if (temp_target_speed > MAX_EC) {
					dev->status = REQ_ERROR | E_UNMARSHAL | 0x3002UL;
				} else {
				    data->target_speed = ConvertECToSpeed(temp_target_speed);
                    dev->status = REQ_OK;
				}
        }
        break;

        case OH_DIRECTION:
        {
        		volatile u32* reg_direction = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_DIRECTION );
				u32 temp_direction             = *reg_direction;
				if (temp_direction > MAX_DIRECTION ) {
					dev->status = REQ_ERROR | E_UNMARSHAL | 0x3006UL;
				} else {
					switch (temp_direction) {
						case 0x00000000UL:
							data->direction = STEPPER_CLOCKWISE;
							break;
						case 0x00000001UL:
							data->direction = STEPPER_COUNTERCLOCKWISE ;
							break;
						default:
						break;
					}
					dev->status = REQ_OK;
				}
       	}
        break;

        case OH_LOAD:
        {
        		volatile u32* reg_load = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_LOAD );

				u32 temp_load                  = *reg_load;
				if (temp_load > MAX_LOAD ) {
					dev->status = REQ_ERROR | E_UNMARSHAL | 0x3007UL;
				} else {
					switch (temp_load) {
						case 0x00000000UL:
							data->load = STEPPER_DISABLE;
							break;
						case 0x00000001UL:
							data->load = STEPPER_DISABLE1;
							break;
						case 0x00000002UL:
							data->load = STEPPER_ENABLE_FULL;
							break;
						case 0x00000003UL:
							data->load = STEPPER_ENABLE_HALF;
							break;
					}
					dev->status = REQ_OK;
				}
        }
        break;

        case OH_RESOLUTION:
        {
        		volatile u32* reg_resolution = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_RESOLUTION );
				u32 temp_resolution          = *reg_resolution;
				if (temp_resolution > MAX_RESOLUTION) {
					dev->status = REQ_ERROR | E_UNMARSHAL | 0x3008UL;
				} else {
					switch (temp_resolution) {
						case 0x00000000UL:
							data->resolution = STEPPER_RES0;
							break;
						case 0x00000001UL:
							data->resolution = STEPPER_RES1;
							break;
						case 0x00000002UL:
							data->resolution = STEPPER_RES2;
							break;
						case 0x00000003UL:
							data->resolution = STEPPER_RES3;
							break;
					}
					dev->status = REQ_OK;
				}
       	}
        break;

        case OH_INITIAL_SPEED:
        {
        		volatile u32* reg_initial_speed = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_INITIAL_SPEED );
				u32 temp_initial_speed         = *reg_initial_speed;
				if ((temp_initial_speed < MIN_EC) || (temp_initial_speed > MAX_EC)) {
					dev->status = REQ_ERROR | E_UNMARSHAL | 0x3003UL;
				} else {
				    data->initial_speed = ConvertECToSpeed(temp_initial_speed);
                    dev->status = REQ_OK;
				}
       	}
        break;

        case OH_STEP_CNT:
        {
        		volatile u32* reg_step_cnt = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_STEP_CNT );
				u32 temp_step_cnt = *reg_step_cnt;
				if (temp_step_cnt < MIN_STEPS ) {
					dev->status = REQ_ERROR | E_UNMARSHAL | 0x3005UL;
				} else {
				    data->step_number = temp_step_cnt;
         		    dev->status = REQ_OK;
				}
       	}
        break;

        case OH_CMD_START:
        {
        		volatile u32* reg_cmd_start = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_CMD_START );
				u32 temp_cmd_start             = *reg_cmd_start;
				if (temp_cmd_start        > MAX_CMD       ) {
					dev->status = REQ_ERROR | E_UNMARSHAL | 0x3009UL;
				} else {
				    data->cmd_start         = temp_cmd_start;
        		    dev->status = REQ_OK;
				}
        }
        break;

        case OH_CMD_STOP:
        {
        		volatile u32* reg_cmd_stop = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_CMD_STOP );
				u32 temp_cmd_stop              = *reg_cmd_stop;
				if (temp_cmd_stop > MAX_CMD ) {
					dev->status = REQ_ERROR | E_UNMARSHAL | 0x3010UL;
				} else {
				    data->cmd_stop = temp_cmd_stop;
        		    dev->status = REQ_OK;
				}
       	}
        break;

        case OH_CMD_SPEED_CHANGE:
        {
        		volatile u32* reg_cmd_speed_change = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_CMD_SPEED_CHANGE);
				u32 temp_cmd_speed_change      = *reg_cmd_speed_change;
				if (temp_cmd_speed_change > MAX_CMD ) {
					dev->status = REQ_ERROR | E_UNMARSHAL | 0x3011UL;
				} else {
				    data->cmd_speed_change  = temp_cmd_speed_change;
       		        dev->status = REQ_OK;
				}
       	}
		break;

        case OH_CMD_STEP_SLOW:
        {
        		volatile u32* reg_cmd_step_slow = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_CMD_STEP_SLOW );
				u32 temp_cmd_step_slow         = *reg_cmd_step_slow;
				if (temp_cmd_step_slow > MAX_CMD ) {
					dev->status = REQ_ERROR | E_UNMARSHAL | 0x3012UL;
				} else {
				    data->cmd_step_slow     = temp_cmd_step_slow;
        		    dev->status = REQ_OK;
				}
       	}
        break;

        case OH_CMD_STEP_FAST:
        {
			volatile u32* reg_cmd_step_fast = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_CMD_STEP_FAST );
			u32 temp_cmd_step_fast         = *reg_cmd_step_fast;
			if (temp_cmd_step_fast > MAX_CMD ) {
				dev->status = REQ_ERROR | E_UNMARSHAL | 0x3013UL;
			} else {
				data->cmd_step_fast = temp_cmd_step_fast;
				dev->status = REQ_OK;
			}
       	}
        break;

        case OH_STATUS:
        {
        	volatile u32* reg_running = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_RUNNING );
			u32 temp_running               = *reg_running;
			data->motor_running     	   = temp_running;
        	dev->status = REQ_OK;
        }
        break;

        case OH_IRQ_ENA:
        {
			volatile u32* reg_irq_ena = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_IRQ_ENA );
			u32 temp_irq_ena               = *reg_irq_ena;
			if (temp_irq_ena > MAX_CMD ) {
				dev->status = REQ_ERROR | E_UNMARSHAL | 0x3015UL;
			} else {
			    data->irq_ena = temp_irq_ena;
			    dev->status   = REQ_OK;
			}
       	}
        break;

        case OH_GET_STEP:
        {
        	volatile u32* reg_counter_step = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_CMD_CURR_STEP_CNT );
        	u32 temp_reg_curr_step_cnt     = *reg_counter_step;
			data->curr_step_number  = temp_reg_curr_step_cnt;
            dev->status = REQ_OK;
        }
		break;

        case OH_IRQ_STATUS:
        {
    		volatile u32* reg_irq_status = (volatile u32*) (dev->location + dev->subdevice*STEPPER_SPACING + OFF_IRQ_STATUS );
			u32 temp_irq_status = *reg_irq_status;
			data->irq_status    = temp_irq_status;
		    dev->status         = REQ_OK;
        }
        break;

        case OH_CLR_IRQMASKS:
        {
        	volatile u32* reg_cmn_mask  = (volatile u32*) (dev->location + OFF_CMN_MASK );
    		u32 temp_cmn_mask = *reg_cmn_mask;
    		data->cmn_mask    = temp_cmn_mask;
	        dev->status = REQ_OK;
        }
        break;

        case OH_CMN_MSK:
        	if ( dev->subdevice >= MAX_SUBDEVICES ) {
        		dev->status = REQ_ERROR | E_MARSHAL | OH_CMN_MSK;
        	} else {
        		volatile u32* reg_cmn_mask  = (volatile u32*) (dev->location + OFF_CMN_MASK );
        		u32  cmn_mask     = *reg_cmn_mask;
        		if (cmn_mask > MAX_IRQs) {
            		dev->status = REQ_ERROR | E_MARSHAL | OH_CMN_MSK;
        		} else {
                    data->cmn_mask = ((cmn_mask & (0x00000001U << dev->subdevice)) == 0U) ? 0U : 1U;
       			    dev->status  = REQ_OK;
        		}
        	}
        break;

		case OH_CMN_IRQS:
		{
        	volatile u32* reg_cmn_irqs  = (volatile u32*) (dev->location + OFF_CMN_IRQs );
    		u32 temp_cmn_irqs = *reg_cmn_irqs;
    		data->cmn_irqs    = temp_cmn_irqs;
	        dev->status = REQ_OK;
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

void STEPPER_Init(STEPPER_t *dev) {

	if ( dev != NULL ) {
		dev->location = 0U;
		dev->status = REQ_ERROR | 0xFU;
		dev->subdevice = MAX_SUBDEVICES + 1U;
	}
}

void STEPPER_Configure(STEPPER_t *dev, u32 location, u8 subdevice) {

	StepperData_t data;
	if ( dev != NULL ) {
        if ( location != 0U ) {
    		if (subdevice < MAX_SUBDEVICES) {
    			memset(&data, 0, sizeof(data));
                dev->location = location;
                dev->subdevice = subdevice;
                dev->status = REQ_OK;
                STEPPER_marshall(dev, &data, OH_CLR_SINGLEDEVICE);
            }
		}
	}
}

void STEPPER_Cleanup(STEPPER_t *dev) {

	if ( dev != NULL ) {
		dev->location = 0U;
		dev->status = REQ_ERROR | 0xFU;
		dev->subdevice = MAX_SUBDEVICES + 1U;
	}
}

void STEPPER_SetMaxAcceleration (STEPPER_t *dev, u32 value) {

	StepperData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.max_acceleration = value;
			STEPPER_marshall(dev, &data, OH_MAX_ACC);
		}
	}
}

void STEPPER_SetInitialSpeed (STEPPER_t *dev, u16 value) {

	StepperData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.initial_speed = value;
			STEPPER_marshall(dev, &data, OH_INITIAL_SPEED);
		}
	}
}

void STEPPER_SetTargetSpeed (STEPPER_t *dev, u32 value) {

	StepperData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.target_speed = value;
			STEPPER_marshall(dev, &data, OH_TARGET_SPEED);
		}
	}
}

void STEPPER_SetStepNumber (STEPPER_t *dev, u32 value) {

	StepperData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.step_number = value;
			STEPPER_marshall(dev, &data, OH_STEP_CNT);
		}
	}
}

void STEPPER_SetDirection (STEPPER_t *dev, STEPPER_Direction_t value) {

	StepperData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.direction = value;
			STEPPER_marshall(dev, &data, OH_DIRECTION);
		}
	}
}

void STEPPER_SetLoad (STEPPER_t *dev, STEPPER_Load_t value) {

	StepperData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.load = value;
			STEPPER_marshall(dev, &data, OH_LOAD);
		}
	}
}

void STEPPER_SetResolution (STEPPER_t *dev, STEPPER_Resolution_t value) {

	StepperData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.resolution = value;
			STEPPER_marshall(dev, &data, OH_RESOLUTION);
		}
	}
}

u32 STEPPER_GetMaxAcceleration (STEPPER_t *dev) {

	StepperData_t data;
	if ( dev != NULL ) {
		memset(&data, 0, sizeof(data));
//		data.max_acceleration = 0;
		STEPPER_unmarshall(dev, &data, OH_MAX_ACC);
		return ((dev->status == REQ_OK) ? data.max_acceleration : (u32)0);
	} else {
		return (u32)0;
	}
}

u16 STEPPER_GetInitialSpeed (STEPPER_t *dev) {

	StepperData_t data;
	if ( dev != NULL ) {
		memset(&data, 0, sizeof(data));
//		data.initial_speed = 0;
		STEPPER_unmarshall(dev, &data, OH_INITIAL_SPEED);
		return ((dev->status == REQ_OK) ? data.initial_speed : (u16)0);
	} else {
		return (u16)0;
	}
}

u32 STEPPER_GetTargetSpeed (STEPPER_t *dev) {

	StepperData_t data;
	if ( dev != NULL ) {
		memset(&data, 0, sizeof(data));
//		data.target_speed = 0;
		STEPPER_unmarshall(dev, &data, OH_TARGET_SPEED);
		return ((dev->status == REQ_OK) ? data.target_speed : (u32)0);
	} else {
		return (u32)0;
	}
}

u32 STEPPER_GetStepNumber (STEPPER_t *dev) {

	StepperData_t data;
	if ( dev != NULL ) {
		memset(&data, 0, sizeof(data));
//		data.step_number = 0;
		STEPPER_unmarshall(dev, &data, OH_STEP_CNT);
		return ((dev->status == REQ_OK) ? data.step_number : (u32)0);
	} else {
		return (u32)0;
	}
}

STEPPER_Direction_t STEPPER_GetDirection (STEPPER_t *dev) {

	StepperData_t data;
	if ( dev != NULL ) {
		memset(&data, 0, sizeof(data));
//		data.direction = 0;
		STEPPER_unmarshall(dev, &data, OH_DIRECTION);
		return ((dev->status == REQ_OK) ? data.direction : (STEPPER_Direction_t)NULL );
	} else {
		return (STEPPER_Direction_t)NULL;
	}
}

STEPPER_Load_t STEPPER_GetLoad (STEPPER_t *dev) {

	StepperData_t data;
	if ( dev != NULL ) {
		memset(&data, 0, sizeof(data));
//		data.load = 0;
		STEPPER_unmarshall(dev, &data, OH_LOAD);
		return ((dev->status == REQ_OK) ? data.load : (STEPPER_Load_t)NULL );
	} else {
		return (STEPPER_Load_t)NULL;
	}
}

STEPPER_Resolution_t STEPPER_GetResolution (STEPPER_t *dev) {

	StepperData_t data;
	if ( dev != NULL ) {
		memset(&data, 0, sizeof(data));
//		data.resolution = 0;
		STEPPER_unmarshall(dev, &data, OH_RESOLUTION);
		return ((dev->status == REQ_OK) ? data.resolution : (STEPPER_Resolution_t)NULL);
	} else {
		return (STEPPER_Resolution_t)NULL;
	}
}

void STEPPER_SetStart (STEPPER_t *dev) {

	StepperData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.cmd_start = 0x01U;
			STEPPER_marshall(dev, &data, OH_CMD_START);
		}
	}
}

void STEPPER_SetStop (STEPPER_t *dev) {

	StepperData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.cmd_stop = 0x01U;
			STEPPER_marshall(dev, &data, OH_CMD_STOP);
		}
	}
}

void STEPPER_SetSpeedChange (STEPPER_t *dev) {

	StepperData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.cmd_speed_change = 0x01U;
			STEPPER_marshall(dev, &data, OH_CMD_SPEED_CHANGE);
		}
	}
}

void STEPPER_SetStepSlow (STEPPER_t *dev) {

	StepperData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.cmd_step_slow = 0x01U;
			STEPPER_marshall(dev, &data, OH_CMD_STEP_SLOW);
		}
	}
}

void STEPPER_SetStepFast (STEPPER_t *dev) {

	StepperData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.cmd_step_fast = 0x01U;
			STEPPER_marshall(dev, &data, OH_CMD_STEP_FAST);
		}
	}
}

void STEPPER_CleanStart (STEPPER_t *dev) {

	StepperData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.cmd_start = 0x00U;
			STEPPER_marshall(dev, &data, OH_CMD_START);
		}
	}
}

void STEPPER_CleanStop (STEPPER_t *dev) {

	StepperData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.cmd_stop = 0x00U;
			STEPPER_marshall(dev, &data, OH_CMD_STOP);
		}
	}
}

void STEPPER_CleanSpeedChange (STEPPER_t *dev) {

	StepperData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.cmd_speed_change = 0x00U;
			STEPPER_marshall(dev, &data, OH_CMD_SPEED_CHANGE);
		}
	}
}

void STEPPER_CleanStepSlow (STEPPER_t *dev) {

	StepperData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.cmd_step_slow = 0x00U;
			STEPPER_marshall(dev, &data, OH_CMD_STEP_SLOW);
		}
	}
}

void STEPPER_CleanStepFast (STEPPER_t *dev) {

	StepperData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.cmd_step_fast = 0x00U;
			STEPPER_marshall(dev, &data, OH_CMD_STEP_FAST);
		}
	}
}

u8 STEPPER_IsRunning (STEPPER_t *dev) {

	StepperData_t data;
	if ( dev != NULL ) {
		memset(&data, 0, sizeof(data));
//		data.motor_running = 0;
		STEPPER_unmarshall(dev, &data, OH_STATUS);
		return ((dev->status == REQ_OK) ? (data.motor_running & 0x01) : (u8)0 );
	} else {
		return (u8)0;
	}
}


u8 STEPPER_IsStable (STEPPER_t *dev) {

	StepperData_t data;
	if ( dev != NULL ) {
		memset(&data, 0, sizeof(data));
//		data.motor_running = 0;
		STEPPER_unmarshall(dev, &data, OH_STATUS);
		return ((dev->status == REQ_OK) ? ((data.motor_running & 0x02)>>1u) : (u8)0 );
	} else {
		return (u8)0;
	}
}


u32 STEPPER_GetCurrStepNum  (STEPPER_t *dev) {

	StepperData_t data;
	if ( dev != NULL ) {
		memset(&data, 0, sizeof(data));
//		data.curr_step_number = 0;
		STEPPER_unmarshall(dev, &data, OH_GET_STEP);
		return ((dev->status == REQ_OK) ? data.curr_step_number : (u32)0 );
	} else {
		return (u32)0;
	}
}


void STEPPER_EnableIRQ	(STEPPER_t* dev) {

	StepperData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.irq_ena = 0x01U;
			STEPPER_marshall(dev, &data, OH_IRQ_ENA);
		}
	}
}

void STEPPER_DisableIRQ	(STEPPER_t* dev) {

	StepperData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.irq_ena = 0x00U;
			STEPPER_marshall(dev, &data, OH_IRQ_ENA);
		}
	}
}

u8 STEPPER_IsIRQEnabled	(STEPPER_t* dev) {

	StepperData_t data;
	if ( dev != NULL ) {
		memset(&data, 0, sizeof(data));
//		data.irq_ena = 0;
		STEPPER_unmarshall(dev, &data, OH_IRQ_ENA);
		return ((dev->status == REQ_OK) ? (u8)data.irq_ena : (u8)0 );
	} else {
		return (u8)0;
	}
}

u8 STEPPER_GetIRQ	(STEPPER_t* dev) {

	StepperData_t data;
	if ( dev != NULL ) {
		memset(&data, 0, sizeof(data));
//		data.irq_status = 0;
		STEPPER_unmarshall(dev, &data, OH_IRQ_STATUS);
		return ((dev->status == REQ_OK) ? (u8) data.irq_status : (u8)0 );
	} else {
		return (u8)0;
	}
}

void STEPPER_ClearIRQ	(STEPPER_t* dev) {

	StepperData_t data;
	if ( dev != NULL ) {
		memset(&data, 0, sizeof(data));
		STEPPER_marshall(dev, &data, OH_IRQ_STATUS);
	}
}

void STEPPER_EnableMask	(STEPPER_t* dev) {

	StepperData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.cmn_mask = 1U;
			STEPPER_marshall(dev, &data, OH_CMN_MSK);
		}
	}
}

void STEPPER_DisableMask	(STEPPER_t* dev) {

	StepperData_t data;
	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.cmn_mask = 0U;
			STEPPER_marshall(dev, &data, OH_CMN_MSK);
		}
	}
}

u8 STEPPER_IsMaskEndabled	(STEPPER_t* dev) {

	StepperData_t data;
	if ( dev != NULL ) {
		memset(&data, 0, sizeof(data));
		STEPPER_unmarshall(dev, &data, OH_CMN_MSK);
		return ((dev->status == REQ_OK) ? data.cmn_mask : (u8)0);
	} else {
		return (u8)0;
	}
}


/* COMMON INTERRUPTS */
void STEPPER_CMN_Init	(STEPPER_t *dev) {

	if ( dev != NULL ) {
		dev->mask = 0U;
	}
}

void STEPPER_CMN_Configure	(STEPPER_t *dev, u32 location) {

	StepperData_t data;
	if ( dev != NULL ) {
		if ( location != 0U ) {
			dev->location = location;
			dev->status = REQ_OK;
			STEPPER_marshall(dev, &data, OH_CLR_IRQMASKS);
		}
	}
}

u32 STEPPER_CMN_ReadIRQs	(STEPPER_t* dev) {

	StepperData_t data;
	if ( dev != NULL ) {
		memset(&data, 0, sizeof(data));
		STEPPER_unmarshall(dev, &data, OH_CMN_IRQS);
		return (data.cmn_irqs);
	} else {
		return (u32) 0;
	}
}
