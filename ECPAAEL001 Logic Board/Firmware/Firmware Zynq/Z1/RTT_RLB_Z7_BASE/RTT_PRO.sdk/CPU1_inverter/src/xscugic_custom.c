/***************************** Include Files *********************************/

#include "xscugic_custom.h"

/************************** Constant Definitions *****************************/

/**************************** Type Definitions *******************************/

/***************** Macros (Inline Functions) Definitions *********************/

/************************** Variable Definitions *****************************/
static u32 CpuId = XPAR_CPU_ID; /**< CPU Core identifier */

/************************** Function Prototypes ******************************/

static void StubHandler(void *CallBackRef);
static void CPUInitialize(XScuGic *InstancePtr);
static void DistributorInit_Custom(XScuGic *InstancePtr, u32 CpuID);

#if !defined (versal) || defined (ARMR5)
/*****************************************************************************/
/**
*
* CPUInitialize initializes the CPU Interface of the GIC. The initialization
* entails:
*
*	- Set the priority of the CPU
*	- Enable the CPU interface
*
* @param	InstancePtr is a pointer to the XScuGic instance.
*
* @return	None
*
* @note		None.
*
******************************************************************************/
static void CPUInitialize(XScuGic *InstancePtr)
{
	/*
	 * Program the priority mask of the CPU using the Priority mask register
	 */
	XScuGic_CPUWriteReg(InstancePtr, XSCUGIC_CPU_PRIOR_OFFSET, 0xF0U);


	/*
	 * If the CPU operates in both security domains, set parameters in the
	 * control_s register.
	 * 1. Set FIQen=1 to use FIQ for secure interrupts,
	 * 2. Program the AckCtl bit
	 * 3. Program the SBPR bit to select the binary pointer behavior
	 * 4. Set EnableS = 1 to enable secure interrupts
	 * 5. Set EnbleNS = 1 to enable non secure interrupts
	 */

	/*
	 * If the CPU operates only in the secure domain, setup the
	 * control_s register.
	 * 1. Set FIQen=1,
	 * 2. Set EnableS=1, to enable the CPU interface to signal secure
	 *  interrupts. Only enable the IRQ output unless secure interrupts
	 * are needed.
	 */
	XScuGic_CPUWriteReg(InstancePtr, XSCUGIC_CONTROL_OFFSET, 0x07U);

}
#endif

/*****************************************************************************/
/**
*
* A stub for the asynchronous callback. The stub is here in case the upper
* layers forget to set the handler.
*
* @param	CallBackRef is a pointer to the upper layer callback reference
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
static void StubHandler(void *CallBackRef)
{
	/*
	 * verify that the inputs are valid
	 */
	Xil_AssertVoid(CallBackRef != NULL);

	/*
	 * Indicate another unhandled interrupt for stats
	 */
	((XScuGic *)((void *)CallBackRef))->UnhandledInterrupts++;
}

/*****************************************************************************/
/**
*
* DistributorInit initializes the distributor of the GIC. It calls
* DoDistributorInit to finish the initialization.
*
* @param	InstancePtr is a pointer to the XScuGic instance.
* @param	CpuID is the Cpu ID to be initialized.
*
* @return	None
*
* @note		None.
*
******************************************************************************/

/* NOTE: differences with the original function (DistributorInit):
 * - executes only the commands provided in case of activation of the
 *   compilation flag USE_AMP, necessary to use GIC on both CPUs
 */

static void DistributorInit_Custom(XScuGic *InstancePtr, u32 CpuID)
{
#warning "Building GIC for AMP"
	/*
	 * GIC initialization is taken care by master CPU in
	 * openamp configuration, so do nothing and return.
	 */
	return;
}

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

/* NOTE: differences with the original function (XScuGic_CfgInitialize):
 * - it doesn't call the function XScuGic_Stop
 * - it calls the modified function DistributorInit_Custom
 *   instead if DistributorInit
 */

s32  XScuGic_CfgInitialize_Custom(XScuGic *InstancePtr,
				XScuGic_Config *ConfigPtr,
				u32 EffectiveAddr)
{
	u32 Int_Id;
	u32 Cpu_Id = CpuId + (u32)1;
	(void) EffectiveAddr;

	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid(ConfigPtr != NULL);
	/*
     * Detect Zynq-7000 base silicon configuration,Dual or Single CPU.
     * If it is single CPU cnfiguration then invoke assert for CPU ID=1
	 */
#ifdef ARMA9
	if (XPAR_CPU_ID == 0x01) {
		Xil_AssertNonvoid((Xil_In32(XPS_EFUSE_BASEADDR
			+ EFUSE_STATUS_OFFSET) & EFUSE_STATUS_CPU_MASK) == 0);
	}
#endif

	if(InstancePtr->IsReady != XIL_COMPONENT_IS_READY) {

		InstancePtr->IsReady = 0U;
		InstancePtr->Config = ConfigPtr;

		for (Int_Id = 0U; Int_Id < XSCUGIC_MAX_NUM_INTR_INPUTS;
				Int_Id++) {
			/*
			* Initalize the handler to point to a stub to handle an
			* interrupt which has not been connected to a handler
			* Only initialize it if the handler is 0 which means it
			* was not initialized statically by the tools/user. Set
			* the callback reference to this instance so that
			* unhandled interrupts can be tracked.
			*/
			if ((InstancePtr->Config->HandlerTable[Int_Id].Handler
					== (Xil_InterruptHandler)NULL)) {
				InstancePtr->Config->HandlerTable[Int_Id].Handler
						= (Xil_InterruptHandler)StubHandler;
			}
			InstancePtr->Config->HandlerTable[Int_Id].CallBackRef =
								InstancePtr;
		}
#if defined (versal) && !defined(ARMR5)
	u32 Waker_State;
	xil_printf("Execuing on the a72\n");
	Waker_State = XScuGic_ReDistReadReg(InstancePtr,XSCUGIC_RDIST_WAKER_OFFSET);
	XScuGic_ReDistWriteReg(InstancePtr,XSCUGIC_RDIST_WAKER_OFFSET,
							Waker_State & (~ XSCUGIC_RDIST_WAKER_LOW_POWER_STATE_MASK));
		/* Enable system reg interface through ICC_SRE_EL1 */
		#if EL3
			XScuGic_Enable_SystemReg_CPU_Interface_EL3();
		#endif
			XScuGic_Enable_SystemReg_CPU_Interface_EL1();
		isb();
#endif

//		XScuGic_Stop(InstancePtr);
		DistributorInit_Custom(InstancePtr, Cpu_Id);

		#if defined (versal) && !defined(ARMR5)
		XScuGic_set_priority_filter(0xff);
#else
		CPUInitialize(InstancePtr);
#endif

		InstancePtr->IsReady = XIL_COMPONENT_IS_READY;
	}

	return XST_SUCCESS;
}
