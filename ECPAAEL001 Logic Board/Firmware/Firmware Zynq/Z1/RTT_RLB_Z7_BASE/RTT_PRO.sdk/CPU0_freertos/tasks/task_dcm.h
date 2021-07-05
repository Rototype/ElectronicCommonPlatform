#ifndef TASK_DCM_H
#define TASK_DCM_H



/**************/
/* inclusions */
/**************/

#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"

#include "xil_types.h"

#include "DCM.h"



/***********/
/* defines */
/***********/

/* task priority */
#define TASK_DCM_COMMANDS_PRIORITY  (tskIDLE_PRIORITY +1u)

/* number of devices (solenoids) */
#define TASK_DCM_NUM_DEVICES        (5u)   						    /* 10 DCM */
#define TASK_DCM_NUM_DEVICES_CMN    (TASK_DCM_NUM_DEVICES)			/* no CMN device */

#define TASK_DCM_UNKNOWN_OBJECT     (0xFFFFFFFFu)

/* devices identifiers */
#define DCM_0     ( 0u)
#define DCM_1     ( 1u)
#define DCM_2     ( 2u)
#define DCM_3     ( 3u)
#define DCM_4     ( 4u)
#define DCM_5     ( 5u)



/*****************/
/* queue handles */
/*****************/

extern QueueHandle_t  TASK_DCM_xQueueCommands;



/*************/
/* functions */
/*************/

/******************************************************************************
 * TASK_DCM_Initialize executes the module initialisation
 ******************************************************************************/
u32 TASK_DCM_Initialize(void);


/******************************************************************************
 * TASK_DCM_TakeDevice register the device to be used by the specified object
 * returns FAIL if the device is not available within the timeout
 * it must be released with TASK_DCM_Deactivate
 ******************************************************************************/
u8 TASK_DCM_TakeDevice(u32 objectId, u8 deviceId, u32 timeoutDeviceSeconds);


/******************************************************************************
 * TASK_DCM_ReleaseDevice releases the device
 * returns FAIL if the device is not held by the object task
 ******************************************************************************/
u8 TASK_DCM_ReleaseDevice(u32 objectId, u8 deviceId);


/******************************************************************************
 * TASK_DCM_Activate activates the DC motor
 * returns FAIL if the device is not held by the object task
 ******************************************************************************/
u8 TASK_DCM_Activate(u32 objectId, u8 deviceId, u8 pwmValue, u8 pwmFrequency, DCM_direction_t direction);


/******************************************************************************
 * TASK_DCM_Deactivate deactivates the DC motor
 * returns FAIL if the device is not held by the object task
 * calling this function
 ******************************************************************************/
u8 TASK_DCM_Deactivate(u32 objectId, u8 deviceId);


/******************************************************************************
 * TASK_DCM_SetBrake sets the DC motor brake mode (0=free, 1=braked)
 * returns FAIL if the device is not held by the object task
 * calling this function
 ******************************************************************************/
u8 TASK_DCM_SetBrake(u32 objectId, u8 deviceId, u8 brakeMode);


/******************************************************************************
 * TASK_DCM_IsRunning checks if the DC motor is running (1)
 ******************************************************************************/
u8 TASK_DCM_IsRunning(u8 deviceId);


/******************************************************************************
 * TASK_DCM_GetDirection returns the DC motor direction
 ******************************************************************************/
DCM_direction_t TASK_DCM_GetDirection(u8 deviceId);


/******************************************************************************
 * TASK_DCM_IsBraked checks if the DC motor is braked  (0=free, 1=braked)
 ******************************************************************************/
u8 TASK_DCM_IsBraked(u8 deviceId);


#endif  /* TASK_DCM_H */
