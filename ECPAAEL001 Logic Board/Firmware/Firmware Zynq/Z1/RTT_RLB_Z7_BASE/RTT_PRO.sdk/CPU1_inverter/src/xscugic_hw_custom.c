/***************************** Include Files *********************************/

#include "xil_types.h"
#include "xil_assert.h"
#include "xscugic.h"
#include "xparameters.h"


/************************** Constant Definitions *****************************/

/**************************** Type Definitions *******************************/

/***************** Macros (Inline Functions) Definitions *********************/

/************************** Function Prototypes ******************************/

static void DistInit_Custom(XScuGic_Config *Config, u32 CpuID);
static void CPUInit(XScuGic_Config *Config);

/************************** Variable Definitions *****************************/

extern XScuGic_Config XScuGic_ConfigTable[XPAR_XSCUGIC_NUM_INSTANCES];
extern u32 CpuId;

/*****************************************************************************/
/**
*
* DistInit_Custom initializes the distributor of the GIC. The
* initialization entails:
*
* - Write the trigger mode, priority and target CPU
* - All interrupt sources are disabled
* - Enable the distributor
*
* @param	InstancePtr is a pointer to the XScuGic instance.
* @param	CpuID is the Cpu ID to be initialized.
*
* @return	None
*
* @note		None.
*
******************************************************************************/

/* NOTE: differences with the original function (DistInit):
 * - executes only the commands provided in case of activation of the
 *   compilation flag USE_AMP
 */

static void DistInit_Custom(XScuGic_Config *Config, u32 CpuID)
{
    /*
	 * The distributor should not be initialized by FreeRTOS in the case of
	 * AMP -- it is assumed that Linux is the master of this device in that
	 * case.
	 */
	return;
}

/*****************************************************************************/
/**
*
* CPUInit initializes the CPU Interface of the GIC. The initialization entails:
*
* - Set the priority of the CPU.
* - Enable the CPU interface
*
* @param	ConfigPtr is a pointer to a config table for the particular
*		device this driver is associated with.
*
* @return	None
*
* @note		None.
*
******************************************************************************/
static void CPUInit(XScuGic_Config *Config)
{
	/*
	 * Program the priority mask of the CPU using the Priority mask
	 * register
	 */
	XScuGic_WriteReg(Config->CpuBaseAddress, XSCUGIC_CPU_PRIOR_OFFSET,
									0xF0U);

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
	 * 2. Set EnableS=1, to enable the CPU interface to signal secure .
	 * interrupts Only enable the IRQ output unless secure interrupts
	 * are needed.
	 */
	XScuGic_WriteReg(Config->CpuBaseAddress, XSCUGIC_CONTROL_OFFSET, 0x07U);

}

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
s32 XScuGic_DeviceInitialize_Custom(u32 DeviceId)
{
	XScuGic_Config *Config;
	u32 Cpu_Id = XScuGic_GetCpuID() + (u32)1;

	Config = &XScuGic_ConfigTable[(u32)DeviceId];

	DistInit_Custom(Config, Cpu_Id);

	CPUInit(Config);

	return XST_SUCCESS;
}
