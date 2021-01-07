#include <string.h>
#include "DCM.h"

//Struttura dati PHS
typedef struct
{
	u8               pwm_val;
	u8               pwm_frq; //7 bit 
	DCM_direction_t  dir;
	u8			     dcm_run;
 	u8			     dcm_break;
	DCM_status_run_t status;
} DCMData_t;

#define OH_PWM_VAL                        0x00000001UL
#define OH_PWM_FREQ_VAL                   0x00000002UL
#define OH_DIR		                      0x00000004UL
#define OH_RUN                            0x00000008UL
#define OH_BREAK                          0x00000010UL
#define OH_STATUS                         0x00000020UL




/*---------------------------------------------------------------------------*/
/* PRIVATE FUNCTIONS                                                         */
/*---------------------------------------------------------------------------*/

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
static const u32 OFF_BREAK              = 0x00000010UL;
static const u32 OFF_STATUS           	= 0x00000014UL;


/* 
	DATA LIMITS
	Red data must be in this limits
*/
static const u32 MAX_PWM_VAL            =        100UL;
static const u32 MAX_PWM_FREQ   		=        100UL;
static const u32 MIN_PWM_FREQ			= 		  20UL;
static const u32 MAX_DIR		        =          1UL;
static const u32 MAX_BREAK		        =          1UL;
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

    if (dev->location == 0) {
		dev->status = REQ_ERROR | 0x0BU;
		return;
	}

	if (dev->subdevice > MAX_SUBDEVICES) {
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
    case OH_BREAK:
        if(data->dcm_break > MAX_BREAK){
            dev->status = REQ_ERROR | 0x10U;
        } else {
        	volatile u32* reg_break = ((volatile u32 *) (dev->location + dev->subdevice*DCM_SPACING + OFF_BREAK   ));
        	             *reg_break = 0x00000000UL | ((u32)data->dcm_break);
        	         	if(*reg_break != (0x00000000UL | ((u32)data->dcm_break))) {
        	         		dev->status = 0x05UL;
        	         	}else{
        	         		dev->status = REQ_OK;
        	         	}
        }
    	break;
    default:
    	dev->status = REQ_ERROR;
    	break;
    }
}

#if 0
static void DCM_marshall(DCM_t* dev, DCMData_t* data) {

	/* INPUT DATA CHECKING */
	if (dev == NULL) {
		return;
	}
	else if (data == NULL) {
		dev->status = REQ_ERROR | 0x0AU;
		return;
	}
	else if (dev->location == 0) {
		dev->status = REQ_ERROR | 0x0BU;
		return;
	}
    else if(data->pwm_val > MAX_PWM_VAL )
    {
        dev->status = REQ_ERROR | 0x0CU;
		return;
    }
	else if((data->pwm_frq > MAX_PWM_FREQ) || (data->pwm_frq < MIN_PWM_FREQ) || ((data->pwm_frq % 5) != 0)){
		dev->status = REQ_ERROR | 0x20U;
		return;
	}
	else if (dev->subdevice > MAX_SUBDEVICES) {
		dev->status = REQ_ERROR | 0x0DU;
		return;
	}
    else if(data->status > MAX_STATUS)
    {
   		dev->status = REQ_ERROR | 0x0EU;
		return;
    }
    else if(data->dcm_run > MAX_RUN){
        dev->status = REQ_ERROR | 0x0FU;
		return;
    }
    else if(data->dcm_break > MAX_BREAK){
        dev->status = REQ_ERROR | 0x10U;
		return;
    }
	else if(data->dir > MAX_DIR){
		dev->status = REQ_ERROR | 0x20U;
		return;
	}
    
	/* ADDRESS COMPUTATION */
	u32* reg_pwm_value = 	((u32 *) (dev->location + dev->subdevice*DCM_SPACING + OFF_PWM_VAL  ));
	u32* reg_pwm_freq  = 	((u32 *) (dev->location + dev->subdevice*DCM_SPACING + OFF_PWM_FREQ_VAL ));
	u32* reg_dir   	   = 	((u32 *) (dev->location + dev->subdevice*DCM_SPACING + OFF_DIR   ));
  	u32* reg_run       = 	((u32 *) (dev->location + dev->subdevice*DCM_SPACING + OFF_RUN   ));
	u32* reg_break     = 	((u32 *) (dev->location + dev->subdevice*DCM_SPACING + OFF_BREAK   ));
              
	/* DATA WRITE TO REGISTER SPACE */

	*reg_pwm_value = 0x00000000UL | ((u32)data->pwm_val);
	*reg_pwm_freq  = 0x00000000UL | ((u32)data->pwm_frq); 

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

	*reg_run       = 0x00000000UL | ((u32)data->dcm_run);
	*reg_break     = 0x00000000UL | ((u32)data->dcm_break);

	/* END OF MARSHAL */

	if(*reg_pwm_value != 0x00000000UL | (((u32)data->pwm_val))) {
		dev->status = 0x01UL;
	}
	if(*reg_pwm_freq  != 0x00000000UL | (((u32)data->pwm_frq))) {
		dev->status = 0x02UL;
	}
	if(*reg_dir   	  != 0x00000000UL | (((u32)data->dir))) {
		dev->status = 0x03UL;
	}
	if(*reg_run       != 0x00000000UL | (((u32)data->dcm_run))) {
		dev->status = 0x04UL;
	}
	if(*reg_break     != (0x00000000UL | ((u32)data->dcm_break))) {
		dev->status = 0x05UL;
	}else{
		dev->status = REQ_OK;
	}
}
#endif

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

    if (dev->subdevice > MAX_SUBDEVICES) {
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
								break;
						  }
     	       		      dev->status = REQ_OK;
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
    case OH_BREAK:
        {
        	volatile u32* reg_break = (volatile u32 *) (dev->location + dev->subdevice*DCM_SPACING + OFF_BREAK   );
        	          u8  break_value = *reg_break;
        	          if(break_value > MAX_BREAK){
        	          		dev->status     = REQ_ERROR | 0x04UL;
        	        		data->dcm_break	= (u8) break_value;
        	          } else {
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
							switch (status)
							{
							case 0:
								data->status = STATUS_FREE_MODE;
								break;
							case 1:
								data->status = STATUS_RUNNING;
								break;
							case 2:
								data->status = STATUS_BREAKED;
								break;
							default:
								data->status = STATUS_ERROR;
								dev->status = REQ_ERROR | 0x07UL;
								break;
							}
	       	        	   dev->status = REQ_OK;
					   }
        }
    	break;

    default:
    	dev->status = REQ_ERROR;
    	break;
    }
}

#if 0
static void DCM_unmarshall(DCM_t* dev, DCMData_t* data) {

	/* INPUT DATA CHECKING */

	if (dev == NULL) {
		return;
	}
	else if (data == NULL) {
		dev->status = REQ_ERROR | 0x0AU;
		return;
	}
	else if (dev->location == 0UL) {
		dev->status = REQ_ERROR | 0x0BU;
		return;
	}
	else if (dev->subdevice > MAX_SUBDEVICES) {
		dev->status = REQ_ERROR | 0x0CU;
		return;
	}

	/* ADDRESS COMPUTATION */

	/* ADDRESS COMPUTATION */
	u32* reg_pwm_value = 	(u32 *) (dev->location + dev->subdevice*DCM_SPACING + OFF_PWM_VAL  );
	u32* reg_pwm_freq  = 	(u32 *) (dev->location + dev->subdevice*DCM_SPACING + OFF_PWM_FREQ_VAL );
	u32* reg_dir   	   = 	(u32 *) (dev->location + dev->subdevice*DCM_SPACING + OFF_DIR   );
  	u32* reg_run       = 	(u32 *) (dev->location + dev->subdevice*DCM_SPACING + OFF_RUN   );
	u32* reg_break     = 	(u32 *) (dev->location + dev->subdevice*DCM_SPACING + OFF_BREAK   );
	u32* reg_status    =  (u32 *) (dev->location + dev->subdevice*DCM_SPACING + OFF_STATUS   );

	/* DATA READ TO REGISTER SPACE */

	u8 pwm_value   = *reg_pwm_value;
	u8 pwm_freq    = *reg_pwm_freq;
	u8 dir   	   = *reg_dir;  	  
	u8 run         = *reg_run;
	u8 break_value = *reg_break;
	u8 status      = *reg_status;

	/* FPGA DATA CHECKING */

	if(pwm_value > MAX_PWM_VAL){
		dev->status = REQ_ERROR | 0x01UL;
		return;
	}
	else if((pwm_freq  > MAX_PWM_FREQ) || (pwm_freq < MIN_PWM_FREQ) || ((pwm_freq % 5UL) != 0) ){
		dev->status = REQ_ERROR | 0x02UL;
		return;
	}
	else if(dir > MAX_DIR){
		dev->status = REQ_ERROR | 0x03UL;
		return;
	}
	else if(break_value > MAX_BREAK){
		dev->status = REQ_ERROR | 0x04UL;
		return;
	}
	else if(run > MAX_RUN){
		dev->status = REQ_ERROR | 0x05UL;
		return;
	}
	else if(status > MAX_STATUS){
		dev->status = REQ_ERROR | 0x06UL;
		return;
	}
	else {

		/* UNMARSHAL */
		data->pwm_val		   = (u8) pwm_value;
		data->pwm_frq		   = (u8) pwm_freq;

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
				break;
		}

		data->dcm_run		   = (u8) run;
		data->dcm_break		   = (u8) break_value;

		switch (status)
		{
		case 0:
			data->status = STATUS_FREE_MODE;
			break;
		case 1:
			data->status = STATUS_RUNNING;
			break;
		case 2:
			data->status = STATUS_BREAKED;
			break;
		default:
			data->status = STATUS_ERROR;
			dev->status = REQ_ERROR | 0x07UL;
			break;
		}

		dev->status = REQ_OK;

	}
	/* END OF UNMARSHAL */

}
#endif

/*---------------------------------------------------------------------------*/
/* PUBLIC FUNCTIONS                                                          */
/*---------------------------------------------------------------------------*/

void DCM_Init(DCM_t *dev) {
	if ( dev != NULL ) {
		dev->location = 0UL;
		dev->status = REQ_ERROR | 0xF;
		dev->subdevice = MAX_SUBDEVICES+1UL;
	}
}
void DCM_Configure(DCM_t *dev, u32 location, u8 subdevice) {
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
void DCM_Cleanup(DCM_t *dev) {
	if ( dev != NULL ) {
		dev->location = 0UL;
		dev->status = REQ_ERROR | 0xF;
		dev->subdevice = MAX_SUBDEVICES+1;
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

// DCM_GetPMWFrequency
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
//DCM_direction_t
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

/************ BREAK ******************/
void DCM_SetBreak(DCM_t* dev) {
	
	DCMData_t data;

	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
			memset(&data, 0, sizeof(data));
			data.dcm_break = 0x1;
			DCM_marshall(dev, &data, OH_BREAK);
		}
	}
}

void DCM_ClearBreak(DCM_t* dev) {
	
	DCMData_t data;

	if ( dev != NULL ) {
		if (dev->status == REQ_OK) {
            memset(&data, 0, sizeof(data));
			data.dcm_break = 0x0;
			DCM_marshall(dev, &data, OH_BREAK);
		}
	}
}

u8 DCM_GetBreakValue(DCM_t* dev) {
	
	DCMData_t data;

	if ( dev != NULL ) {
		memset(&data, 0, sizeof(data));
		DCM_unmarshall(dev, &data, OH_BREAK);
		return ((dev->status == REQ_OK) ? data.dcm_break : 0);
	} else {
		return 0;
	}
}

/************** STATUS ******************/
DCM_status_run_t DCM_GetStatusRun(DCM_t* dev) {

	DCMData_t data;

	if ( dev != NULL ) {
		memset(&data, 0, sizeof(data));
		DCM_unmarshall(dev, &data, OH_BREAK);
		return ((dev->status == REQ_OK) ? data.status : (DCM_status_run_t)NULL );
	} else {
        return (DCM_status_run_t)NULL;
	}
}
