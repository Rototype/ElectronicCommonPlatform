#ifndef TASK_HWCC_H
#define TASK_HWCC_H



#if 1



/**************/
/* inclusions */
/**************/

#include "FreeRTOS.h"
#include "task.h"
//#include "queue.h"

#include "xil_types.h"



/***********/
/* defines */
/***********/

/* task priority */
#define TASK_HWCC_COMMANDS_PRIORITY  (tskIDLE_PRIORITY +1u)



/*****************/
/* queue handles */
/*****************/

extern QueueHandle_t  TASK_HWCC_xQueueCommands;



/*************/
/* functions */
/*************/

/******************************************************************************/
/* TASK_HWCC_Initialize executes the module initialisation                     */
/******************************************************************************/
u32 TASK_HWCC_Initialize(void);


/******************************************************************************/
/* TASK_HWCC_ReadFromEeeprom reads data from eeprom                           */
/* returns FAIL if the device is not available within the timeout             */
/******************************************************************************/
u8 TASK_HWCC_ReadFromEeeprom(u8  *dataPtr, u32 *dataLength, u32 timeout);


/******************************************************************************/
/* TASK_HWCC_WriteToEeeprom reads data from eeprom                           */
/* returns FAIL if the device is not available within the timeout             */
/******************************************************************************/
u8 TASK_HWCC_WriteToEeeprom(u8  *dataPtr, u32 dataLength, u32 timeout);



#endif



#endif  /* TASK_HWCC_H */
