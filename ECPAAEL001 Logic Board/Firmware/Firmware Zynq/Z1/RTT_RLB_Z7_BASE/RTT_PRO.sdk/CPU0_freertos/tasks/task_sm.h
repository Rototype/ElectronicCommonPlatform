#ifndef TASK_SM_H
#define TASK_SM_H



/**************/
/* inclusions */
/**************/

#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"

#include "xil_types.h"

#include "stepper.h"



/***********/
/* defines */
/***********/

/* task priority */
#define TASK_SM_INTERRUPTS_PRIORITY            (tskIDLE_PRIORITY +1u)
#define TASK_SM_COMMANDS_PRIORITY              (tskIDLE_PRIORITY +1u)

/* number of devices (motors + common) */
#define TASK_SM_NUM_DEVICES        (20u)   						    /* 20 motors */
#define TASK_SM_NUM_DEVICES_CMN    (TASK_SM_NUM_DEVICES + 1u)		/* motors + CMN */
#define TASK_SM_IRQS_IN_REGISTER   (TASK_SM_NUM_DEVICES)

/* maximum number of object tasks served */
#define TASK_SM_MAX_OBJ_SERVED      (3u)				// num task_objects + SPI
#define TASK_SM_UNKNOWN_OBJECT      (0xFFFFFFFFu)

/* devices identifiers */
#define SM_0     ( 0u)
#define SM_1     ( 1u)
#define SM_2     ( 2u)
#define SM_3     ( 3u)
#define SM_4     ( 4u)
#define SM_5     ( 5u)
#define SM_6     ( 6u)
#define SM_7     ( 7u)
#define SM_8     ( 8u)
#define SM_9     ( 9u)
#define SM_10    (10u)
#define SM_11    (11u)
#define SM_12    (12u)
#define SM_13    (13u)
#define SM_14    (14u)
#define SM_15    (15u)
#define SM_16    (16u)
#define SM_17    (17u)
#define SM_18    (18u)
#define SM_19    (19u)
#define SM_CMN   (20u)



/*****************/
/* queue handles */
/*****************/

extern QueueHandle_t  TASK_SM_xQueueCommands;



/*************/
/* functions */
/*************/

/******************************************************************************
 * TASK_SM_Initialize executes the module initialisation
 ******************************************************************************/
u32 TASK_SM_Initialize(void);


/*****************************************************************************
 * TASK_SM_SetResolution sets the value of resolution
 * returns FAIL if the device is not available within the timeout
 ******************************************************************************/
u8 TASK_SM_SetResolution(u8 deviceId, u8 value, u32 timeoutSeconds);


/******************************************************************************
 * TASK_SM_SetLoad sets the value of load
 * returns FAIL if the device is not available within the timeout
 ******************************************************************************/
u8 TASK_SM_SetLoad(u8 deviceId, u8 value, u32 timeoutSeconds);


/******************************************************************************
 * TASK_SM_SlowStep executes the slow step
 * returns FAIL if:
 * - the device is not available within the timeout
 * - the device does not generate interrupt within the timeout
 ******************************************************************************/
u8 TASK_SM_SlowStep(u32 objectId,
                    u8 deviceId,
                    STEPPER_Direction_t direction,
                    u32 initialSpeed,
                    u32 stepNumber,
                    u32 timeoutDeviceSeconds,
                    u32 timeoutNotificationSeconds);


/******************************************************************************
 * TASK_SM_FastStep executes the fast step
 * returns FAIL if:
 * - the device is not available within the timeout
 * - the device does not generate interrupt within the timeout
 ******************************************************************************/
u8 TASK_SM_FastStep(u32 objectId,
                    u8 deviceId,
                    STEPPER_Direction_t direction,
                    u32 stepNumber,
                    u16 initialSpeed,
                    u32 targetSpeed,
                    u32 maxAcceleration,
                    u32 timeoutDeviceSeconds,
                    u32 timeoutNotificationSeconds);


/******************************************************************************
 * TASK_SM_SpeedStart executes the speed start
 * returns FAIL if the device is not available within the timeout
 * When the function ends, the device semaphore is not released;
 * it is released when device finishes or if TASK_SM_SpeedStop
 * is called afterwards
 ******************************************************************************/
u8 TASK_SM_SpeedStart(u32 objectId,
                      u8 deviceId,
                      STEPPER_Direction_t direction,
                      u32 initialSpeed,
                      u32 targetSpeed,
                      u32 maxAcceleration,
                      u32 timeoutDeviceSeconds);


/******************************************************************************
 * TASK_SM_SpeedChange changes the speed
 * returns FAIL if the device is not held by the object task
 * calling this function
 * When the function ends, the device semaphore is not released;
 * it is released when device finishes or if TASK_SM_SpeedStop
 * is called afterwards
 ******************************************************************************/
u8 TASK_SM_SpeedChange(u32 objectId, u8 deviceId, u32 targetSpeed);


/******************************************************************************/
/* TASK_SM_AccelerationChange changes the acceleration                        */
/* returns FAIL if the device is not held by the object task                  */
/* calling this function                                                      */
/* When the function ends, the device semaphore is not released;              */
/* it is released when device finishes or if TASK_SM_SpeedStop                */
/* is called afterwards                                                       */
/******************************************************************************/
u8 TASK_SM_AccelerationChange(u32 objectId, u8 deviceId, u32 maxAcceleration);			// 20210625: added


/******************************************************************************
 * TASK_SM_SpeedStop stops the speed
 * returns FAIL:
 * - if the device is not held by the object task calling
 *   this function
 * - the device does not generate interrupt within the timeout
 * When the function ends, the device semaphore is released.
 ******************************************************************************/
u8 TASK_SM_SpeedStop(u32 objectId, u8 deviceId, u32 timeoutNotificationSeconds);


/******************************************************************************
 * TASK_SM_IsRunning checks if the device is running (1)
 ******************************************************************************/
u8 TASK_SM_IsRunning(u8 deviceId);


/******************************************************************************
 * TASK_SM_IsStable checks if the device is stable (1)
 ******************************************************************************/
u8 TASK_SM_IsStable(u8 deviceId);


/******************************************************************************
 * TASK_SM_StepCount returns the current step number
 ******************************************************************************/
u32 TASK_SM_StepCount(u8 deviceId);


#endif  /* TASK_SM_H */
