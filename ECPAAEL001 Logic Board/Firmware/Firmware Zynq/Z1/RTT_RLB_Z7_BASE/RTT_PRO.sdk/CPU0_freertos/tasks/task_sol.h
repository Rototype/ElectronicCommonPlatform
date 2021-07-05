#ifndef TASK_SOL_H
#define TASK_SOL_H



/**************/
/* inclusions */
/**************/

#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"

#include "xil_types.h"

#include "solenoide.h"



/***********/
/* defines */
/***********/

/* task priority */
#define TASK_SOL_COMMANDS_PRIORITY              (tskIDLE_PRIORITY +1u)

/* number of devices (solenoids) */
#define TASK_SOL_NUM_DEVICES        (10u)   						    /* 10 solenoids */
#define TASK_SOL_NUM_DEVICES_CMN    (TASK_SOL_NUM_DEVICES)			    /* no CMN device */

#define TASK_SOL_UNKNOWN_OBJECT      (0xFFFFFFFFu)

/* devices identifiers */
#define SOL_0     ( 0u)
#define SOL_1     ( 1u)
#define SOL_2     ( 2u)
#define SOL_3     ( 3u)
#define SOL_4     ( 4u)
#define SOL_5     ( 5u)
#define SOL_6     ( 6u)
#define SOL_7     ( 7u)
#define SOL_8     ( 8u)
#define SOL_9     ( 9u)



/*****************/
/* queue handles */
/*****************/

extern QueueHandle_t  TASK_SOL_xQueueCommands;



/*************/
/* functions */
/*************/

/******************************************************************************
 * TASK_SOL_Initialize executes the module initialisation
 ******************************************************************************/
u32 TASK_SOL_Initialize(void);


/******************************************************************************
 * TASK_SOL_Activate activates the solenoid
 * returns FAIL if the device is not available within the timeout
 * When the function ends, the device semaphore is not released;
 * it is released with TASK_SOL_Deactivate
 ******************************************************************************/
u8 TASK_SOL_Activate(u32 objectId, u8 deviceId, u8 pwmValue, u16 fullLoadDuration, u32 timeoutDeviceSeconds);


/******************************************************************************
 * TASK_SOL_Deactivate deactivates the solenoid
 * returns FAIL if the device is not held by the object task
 * calling this function
 ******************************************************************************/
u8 TASK_SOL_Deactivate(u32 objectId, u8 deviceId);


/******************************************************************************
 * TASK_SOL_IsRunning checks if the device is running (1)
 ******************************************************************************/
SOL_status_t TASK_SOL_IsRunning(u8 deviceId);


#endif  /* TASK_SOL_H */
