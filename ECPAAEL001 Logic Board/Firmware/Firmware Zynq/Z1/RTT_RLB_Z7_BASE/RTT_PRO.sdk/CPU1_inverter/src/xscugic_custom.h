
#ifndef XSCUGIC_CUSTOM_H /* prevent circular inclusions */
#define XSCUGIC_CUSTOM_H /* by using protection macros */

/***************************** Include Files *********************************/
#include "xil_types.h"
#include "xscugic.h"

/*****************************************************************************/
/**
*
* CfgInitialize a specific interrupt controller instance/driver. The
* initialization entails:
*
* - Initialize fields of the XScuGic structure
* - Initial vector table with stub function calls
* - All interrupt sources are disabled
*
* @param	InstancePtr is a pointer to the XScuGic instance.
* @param	ConfigPtr is a pointer to a config table for the particular
*		device this driver is associated with.
* @param	EffectiveAddr is the device base address in the virtual memory
*		address space. The caller is responsible for keeping the address
*		mapping from EffectiveAddr to the device physical base address
*		unchanged once this function is invoked. Unexpected errors may
*		occur if the address mapping changes after this function is
*		called. If address translation is not used, use
*		Config->BaseAddress for this parameters, passing the physical
*		address instead.
*
* @return
*		- XST_SUCCESS if initialization was successful
*
* @note		None.
*
******************************************************************************/
s32  XScuGic_CfgInitialize_Custom(XScuGic *InstancePtr,
				XScuGic_Config *ConfigPtr,
				u32 EffectiveAddr);

#endif
