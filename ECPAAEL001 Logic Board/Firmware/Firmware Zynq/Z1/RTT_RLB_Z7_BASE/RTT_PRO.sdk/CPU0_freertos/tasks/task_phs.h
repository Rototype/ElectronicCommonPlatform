#ifndef TASK_PHS_H
#define TASK_PHS_H



/**************/
/* inclusions */
/**************/

#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"

#include "xil_types.h"

#include "phs.h"



/***********/
/* defines */
/***********/

/* task priority */
#define TASK_PHS_INTERRUPTS_PRIORITY  (tskIDLE_PRIORITY +1u)
#define TASK_PHS_COMMANDS_PRIORITY    (tskIDLE_PRIORITY +1u)

/* number of devices (photosensors + common) */
#define TASK_PHS_NUM_DEVICES          (50u)       						/* 50 photosensors */
#define TASK_PHS_NUM_DEVICES_CMN      (TASK_PHS_NUM_DEVICES + 1u)		/* photosensors + CMN */
#define TASK_PHS_IRQS_IN_REGISTER     (25u)

/* maximum number of object tasks served */
#define TASK_PHS_MAX_OBJ_SERVED       (3u)		    					/* SPI + num task_objects */

/* devices identifiers */
#define PHS_0     ( 0u)
#define PHS_1     ( 1u)
#define PHS_2     ( 2u)
#define PHS_3     ( 3u)
#define PHS_4     ( 4u)
#define PHS_5     ( 5u)
#define PHS_6     ( 6u)
#define PHS_7     ( 7u)
#define PHS_8     ( 8u)
#define PHS_9     ( 9u)
#define PHS_10    (10u)
#define PHS_11    (11u)
#define PHS_12    (12u)
#define PHS_13    (13u)
#define PHS_14    (14u)
#define PHS_15    (15u)
#define PHS_16    (16u)
#define PHS_17    (17u)
#define PHS_18    (18u)
#define PHS_19    (19u)
#define PHS_20    (20u)
#define PHS_21    (21u)
#define PHS_22    (22u)
#define PHS_23    (23u)
#define PHS_24    (24u)
#define PHS_25    (25u)
#define PHS_26    (26u)
#define PHS_27    (27u)
#define PHS_28    (28u)
#define PHS_29    (29u)
#define PHS_30    (30u)
#define PHS_31    (31u)
#define PHS_32    (32u)
#define PHS_33    (33u)
#define PHS_34    (34u)
#define PHS_35    (35u)
#define PHS_36    (36u)
#define PHS_37    (37u)
#define PHS_38    (38u)
#define PHS_39    (39u)
#define PHS_40    (40u)
#define PHS_41    (41u)
#define PHS_42    (42u)
#define PHS_43    (43u)
#define PHS_44    (44u)
#define PHS_45    (45u)
#define PHS_46    (46u)
#define PHS_47    (47u)
#define PHS_48    (48u)
#define PHS_49    (49u)
#define PHS_CMN   (50u)



/*****************/
/* queue handles */
/*****************/

extern QueueHandle_t  TASK_PHS_xQueueCommands;



/*************/
/* functions */
/*************/

/******************************************************************************
 * TASK_PHS_Initialize executes the module initialization
 ******************************************************************************/
u32 TASK_PHS_Initialize(void);


/******************************************************************************
 * TASK_PHS_GetPWM returns the value of PWM
 ******************************************************************************/
u16 TASK_PHS_GetPWM(u8 deviceId);


/******************************************************************************
 * TASK_PHS_SetPWM sets the value of PWM
 * returns FAIL if the device is not available within the timeout
 ******************************************************************************/
u8 TASK_PHS_SetPWM(u8 deviceId, u16 value, u32 timeoutSeconds);


/******************************************************************************
 * TASK_PHS_GetDigitalStatus returns the value of PWM
 ******************************************************************************/
PHS_status_t TASK_PHS_GetDigitalStatus(u8 deviceId);


/******************************************************************************
 * TASK_PHS_WaitDigitalStatus signals when the specified status is achieved
 * returns FAIL if status is not achieved within the timeout
 ******************************************************************************/
u8 TASK_PHS_WaitDigitalStatus(u32 objectId, u8 deviceId, PHS_status_t status, u32 timeoutSeconds);



#endif  /* TASK_PHS_H */
