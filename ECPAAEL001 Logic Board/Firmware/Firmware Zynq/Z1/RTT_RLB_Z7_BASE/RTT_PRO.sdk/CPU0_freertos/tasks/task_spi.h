#ifndef TASK_SPI_H
#define TASK_SPI_H



/**************/
/* inclusions */
/**************/

#include "FreeRTOS.h"
#include "task.h"

#include "xil_types.h"



/***********/
/* defines */
/***********/

/* task priority */
#define TASK_SPI_RX_PRIORITY            (tskIDLE_PRIORITY +1u)
#define TASK_SPI_TX_PRIORITY            (tskIDLE_PRIORITY +1u)

#define MAX_SPI_SIZE            (127u)


/*****************/
/* queue handles */
/*****************/

extern QueueHandle_t  TASK_SPI_xQueueTx;



/*************/
/* functions */
/*************/

/******************************************************************************/
/* TASK_SPI_Initialize executes the module initialisation                      */
/******************************************************************************/

u32 TASK_SPI_Initialize(void);



#endif  /* TASK_SPI_H */
