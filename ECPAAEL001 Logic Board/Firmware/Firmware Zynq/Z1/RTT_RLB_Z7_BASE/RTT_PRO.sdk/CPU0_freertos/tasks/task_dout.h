#ifndef TASK_DOUT_H
#define TASK_DOUT_H



/**************/
/* inclusions */
/**************/

#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"

#include "xil_types.h"



/***********/
/* defines */
/***********/

/* task priority */
#define TASK_DOUT_COMMANDS_PRIORITY              (tskIDLE_PRIORITY +1u)



/*****************/
/* queue handles */
/*****************/

extern QueueHandle_t  TASK_DOUT_xQueueCommands;



/*************/
/* functions */
/*************/

/******************************************************************************
 * TASK_XADC_Initialize executes the module initialisation
 ******************************************************************************/
u32 TASK_DOUT_Initialize(void);



/******************************************************************************/
/* TASK_DOUT_SetDigitalOutput sets the value of a gpio output                 */
/* returns FAIL if the device is not available within the timeout             */
/******************************************************************************/

u8 TASK_DOUT_SetDigitalOutput(u8 deviceId, u16 value, u32 timeout);



#endif  /* TASK_DOUT_H */
