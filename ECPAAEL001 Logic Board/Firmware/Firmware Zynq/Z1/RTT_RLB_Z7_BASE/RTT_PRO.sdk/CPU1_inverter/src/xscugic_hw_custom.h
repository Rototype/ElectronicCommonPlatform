
#ifndef XSCUGIC_HW_CUSTOM_H /* prevent circular inclusions */
#define XSCUGIC_HW_CUSTOM_H /* by using protection macros */

/***************************** Include Files *********************************/
#include "xil_types.h"

/*****************************************************************************/
/**
*
* Initialize the GIC based on the device id. The
* initialization entails:
*
* - Initialize distributor interface
* - Initialize cpu interface
*
* @param DeviceId is device id to be worked on.
*
* @return
*
* - XST_SUCCESS if initialization was successful
*
* @note
*
* None.
*
******************************************************************************/
s32 XScuGic_DeviceInitialize_Custom(u32 DeviceId);

#endif
