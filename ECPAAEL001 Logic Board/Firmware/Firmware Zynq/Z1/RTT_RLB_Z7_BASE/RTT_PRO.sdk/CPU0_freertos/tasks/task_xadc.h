#ifndef TASK_XADC_H
#define TASK_XADC_H



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
#define TASK_XADC_COMMANDS_PRIORITY              (tskIDLE_PRIORITY +1u)



/*****************/
/* queue handles */
/*****************/

extern QueueHandle_t  TASK_XADC_xQueueCommands;



/*************/
/* functions */
/*************/

/******************************************************************************
 * TASK_XADC_Initialize executes the module initialisation
 ******************************************************************************/
u32 TASK_XADC_Initialize(void);



/******************************************************************************/
/* TASK_XADC_GetAnalogStatus returns the analog channels values               */
/* returns FAIL if the device is not available within the timeout             */
/******************************************************************************/

u8 TASK_XADC_GetAnalogStatus(u16 *values, u32 timeout);



#endif  /* TASK_XADC_H */
