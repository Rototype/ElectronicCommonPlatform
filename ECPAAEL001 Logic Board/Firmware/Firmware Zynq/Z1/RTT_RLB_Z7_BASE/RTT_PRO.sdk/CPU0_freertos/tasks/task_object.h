#ifndef TASK_OBJECT_H
#define TASK_OBJECT_H


#include "FreeRTOS.h"
#include "task.h"
#include "xil_types.h"


/* task priority */
#define TASK_OBJ_PRIORITY                    (tskIDLE_PRIORITY +1u)


/* function to initialiaze object task */
u32 TASK_OBJ_Initialize(void);


#endif  /* TASK_OBJECT_H */
