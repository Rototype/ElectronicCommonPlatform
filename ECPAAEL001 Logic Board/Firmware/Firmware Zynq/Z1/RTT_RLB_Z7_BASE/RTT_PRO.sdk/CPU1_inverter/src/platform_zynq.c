/*
 * Copyright (C) 2010 - 2019 Xilinx, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
 * OF SUCH DAMAGE.
 *
 */
/*
* platform_zynq.c
*
* Zynq platform specific functions.
*
* 02/29/2012: UART initialization is removed. Timer initializations are
* removed. All unnecessary include files and hash defines are removed.
* 03/01/2013: Timer initialization is added back. Support for SI #692601 is
* added in the timer callback. The SI #692601 refers to the following issue.
*
* The EmacPs has a HW bug on the Rx path for heavy Rx traffic.
* Under heavy Rx traffic because of the HW bug there are times when the Rx path
* becomes unresponsive. The workaround for it is to check for the Rx path for
* traffic (by reading the stats registers regularly). If the stats register
* does not increment for sometime (proving no Rx traffic), the function resets
* the Rx data path.
*
* </pre>
 */

#ifdef __arm__

#include "platform_config.h"
#ifdef PLATFORM_ZYNQ
#include "xparameters.h"
#include "xparameters_ps.h"	/* defines XPAR values */
#include "xil_cache.h"
#include "xscugic.h"
#include "xscugic_custom.h"
#include "xscugic_hw_custom.h"
#include "lwip/tcp.h"
#include "xil_printf.h"
#include "netif/xadapter.h"
#include "xscutimer.h"
#include "xtime_l.h"
#include "xaxidma.h"


#define INTC_DEVICE_ID		XPAR_SCUGIC_SINGLE_DEVICE_ID
#define TIMER_DEVICE_ID		XPAR_SCUTIMER_DEVICE_ID
#define INTC_BASE_ADDR		XPAR_SCUGIC_0_CPU_BASEADDR
#define INTC_DIST_BASE_ADDR	XPAR_SCUGIC_0_DIST_BASEADDR
#define TIMER_IRPT_INTR		XPAR_SCUTIMER_INTR

/* Timeout loop counter for reset
 */
#define RESET_TIMEOUT_COUNTER	10000

/*===============================================================================*/
/*DMA*/
#define DMA_DEV_ID		XPAR_AXIDMA_0_DEVICE_ID

#define DDR_BASE_ADDR		XPAR_AXI_7SDDR_0_S_AXI_BASEADDR

#define S2MM_INTR_ID		XPAR_FABRIC_S2MM_INTROUT_INTR				// XPAR_FABRIC_AXIDMA_0_S2MM_INTROUT_VEC_ID
#define MMS2_INTR_ID		XPAR_FABRIC_MM2S_INTROUT_INTR				// XPAR_FABRIC_AXIDMA_0_MM2S_INTROUT_VEC_ID

#define INTC_DEVICE_ID          XPAR_SCUGIC_SINGLE_DEVICE_ID
/*===============================================================================*/
#define RESET_RX_CNTR_LIMIT	400

void tcp_fasttmr(void);
void tcp_slowtmr(void);

static XScuTimer TimerInstance;
XScuGic Intrp;
XAxiDma Dma;

#ifndef USE_SOFTETH_ON_ZYNQ
static int ResetRxCntr = 0;
extern struct netif server_netif;
#endif

volatile int TcpFastTmrFlag = 0;
volatile int TcpSlowTmrFlag = 0;

#if LWIP_DHCP==1
volatile int dhcp_timoutcntr = 24;
void dhcp_fine_tmr();
void dhcp_coarse_tmr();
#endif

extern u32 DMA_to_DEVICE_done;
extern u32 DEVICE_to_DMA_done;
extern u32 Error;

/*In a ISR we have to follow some common steps:
 * 1) Disabling the corresponding interrupt
 * 2) Read the status register to check why the interrupt has been triggered
 * 3) Writing what the ISR has to do
 * 4) Enable again the interrupt
 */
static void MM2S_ISR(void *Callback){

  u32 IrqStatus;
  int TimeOut;
  XAxiDma *AxiDmaInst = (XAxiDma *)Callback;

  XScuGic_Disable(&Intrp, XPAR_FABRIC_MM2S_INTROUT_INTR);				// XPAR_FABRIC_AXI_DMA_0_MM2S_INTROUT_INTR);

  /* Read pending interrupts...read the source of the interrupt */
  IrqStatus = XAxiDma_IntrGetIrq(AxiDmaInst, XAXIDMA_DEVICE_TO_DMA);

  /* Acknowledge pending interrupts...futher AND check */
  XAxiDma_IntrAckIrq(AxiDmaInst, IrqStatus, XAXIDMA_DEVICE_TO_DMA);

  /*
  * If no interrupt is asserted, we do not do anything
  */
 if (!(IrqStatus & XAXIDMA_IRQ_ALL_MASK)) {
	 return;
 }

 if ((IrqStatus & XAXIDMA_IRQ_ERROR_MASK)) {

	 Error = 1;

	 /*
	 * Reset should never fail for transmit channel
	 */
	XAxiDma_Reset(AxiDmaInst);

	TimeOut = RESET_TIMEOUT_COUNTER;

	while (TimeOut) {
		if (XAxiDma_ResetIsDone(AxiDmaInst)) {
			break;
		}

		TimeOut -= 1;
	}

	 return;
 }
 /*
  * If completion interrupt is asserted, then set RxDone flag
  */
 if ((IrqStatus & XAXIDMA_IRQ_IOC_MASK)) {

	 DMA_to_DEVICE_done = 1;
 }

  XScuGic_Enable(&Intrp, XPAR_FABRIC_MM2S_INTROUT_INTR);				// XPAR_FABRIC_AXI_DMA_0_MM2S_INTROUT_INTR);
}

static void S2MM_ISR(void *Callback){

  u32 IrqStatus;
  int TimeOut;
  XAxiDma *AxiDmaInst = (XAxiDma *)Callback;

  XScuGic_Disable(&Intrp, S2MM_INTR_ID);				// XPAR_FABRIC_AXIDMA_0_S2MM_INTROUT_VEC_ID);

  /* Read pending interrupts */
  IrqStatus = XAxiDma_IntrGetIrq(AxiDmaInst, XAXIDMA_DEVICE_TO_DMA);

  /* Acknowledge pending interrupts */
  XAxiDma_IntrAckIrq(AxiDmaInst, IrqStatus, XAXIDMA_DEVICE_TO_DMA);

  /*
  * If no interrupt is asserted, we do not do anything
  */
 if (!(IrqStatus & XAXIDMA_IRQ_ALL_MASK)) {
   return;
 }

 if ((IrqStatus & XAXIDMA_IRQ_ERROR_MASK)) {

	 Error = 1;

	 /*
	 * Reset should never fail for transmit channel
	 */
	XAxiDma_Reset(AxiDmaInst);

	TimeOut = RESET_TIMEOUT_COUNTER;

	while (TimeOut) {
		if (XAxiDma_ResetIsDone(AxiDmaInst)) {
			break;
		}

		TimeOut -= 1;
	}

	 return;
 }

 /*
  * If completion interrupt is asserted, then set RxDone flag
  */
 if ((IrqStatus & XAXIDMA_IRQ_IOC_MASK)) {

  DEVICE_to_DMA_done = 1;
 }


  XScuGic_Enable(&Intrp, XPAR_FABRIC_S2MM_INTROUT_INTR);					// XPAR_FABRIC_AXI_DMA_0_S2MM_INTROUT_INTR);
}

void
timer_callback(XScuTimer * TimerInstance)
{
	/* we need to call tcp_fasttmr & tcp_slowtmr at intervals specified
	 * by lwIP. It is not important that the timing is absoluetly accurate.
	 */
	static int odd = 1;
#if LWIP_DHCP==1
    static int dhcp_timer = 0;
#endif
	 TcpFastTmrFlag = 1;

	odd = !odd;
#ifndef USE_SOFTETH_ON_ZYNQ
	ResetRxCntr++;
#endif
	if (odd) {
		TcpSlowTmrFlag = 1;
#if LWIP_DHCP==1
		dhcp_timer++;
		dhcp_timoutcntr--;
		dhcp_fine_tmr();
		if (dhcp_timer >= 120) {
			dhcp_coarse_tmr();
			dhcp_timer = 0;
		}
#endif
	}

	/* For providing an SW alternative for the SI #692601. Under heavy
	 * Rx traffic if at some point the Rx path becomes unresponsive, the
	 * following API call will ensures a SW reset of the Rx path. The
	 * API xemacpsif_resetrx_on_no_rxdata is called every 100 milliseconds.
	 * This ensures that if the above HW bug is hit, in the worst case,
	 * the Rx path cannot become unresponsive for more than 100
	 * milliseconds.
	 */
#ifndef USE_SOFTETH_ON_ZYNQ
	if (ResetRxCntr >= RESET_RX_CNTR_LIMIT) {
		xemacpsif_resetrx_on_no_rxdata(&server_netif);
		ResetRxCntr = 0;
	}
#endif
	XScuTimer_ClearInterruptStatus(TimerInstance);
}

void platform_setup_timer(void)
{
	int Status = XST_SUCCESS;
	XScuTimer_Config *ConfigPtr;
	int TimerLoadValue = 0;

	ConfigPtr = XScuTimer_LookupConfig(TIMER_DEVICE_ID);
	Status = XScuTimer_CfgInitialize(&TimerInstance, ConfigPtr,
			ConfigPtr->BaseAddr);
	if (Status != XST_SUCCESS) {

		xil_printf("In %s: Scutimer Cfg initialization failed...\r\n",
		__func__);
		return;
	}

	Status = XScuTimer_SelfTest(&TimerInstance);
	if (Status != XST_SUCCESS) {
		xil_printf("In %s: Scutimer Self test failed...\r\n",
		__func__);
		return;

	}

	XScuTimer_EnableAutoReload(&TimerInstance);
	/*
	 * Set for 250 milli seconds timeout.
	 */
	TimerLoadValue = XPAR_CPU_CORTEXA9_0_CPU_CLK_FREQ_HZ / 8;



	XScuTimer_LoadTimer(&TimerInstance, TimerLoadValue);
	return;
}

s32 platform_setup_DMA(void)
{
	u32 status;
	XAxiDma_Config *DmaConfig;


	/*In principle we have 2 ways to define the DmaConfig pointer: by XAxiDma_LookupConfigBaseAddr or
	 * byXAxiDma_LookupConfig. The only thing that changes is that in one case we pass the ID, in the other case
	 * we pass the Base ADDR.
	 */
	DmaConfig = XAxiDma_LookupConfigBaseAddr(XPAR_AXI_DMA_0_BASEADDR);
	if (!DmaConfig) {
	  xil_printf("No config found for %d\r\n", DMA_DEV_ID);

	  return XST_FAILURE;
	}
	/* Basically in the initialization we copy the content of DmaConfig into the Dma engine.
	 * This function initializes a DMA engine. This function must be called
	 * prior to using a DMA engine. Initializing a engine includes setting
	 * up the register base address, setting up the instance data, and ensuring the
	 * hardware is in a quiescent state. Basically in the initialization we pass the VHDL generics to the SW.
	 */
	status = XAxiDma_CfgInitialize(&Dma, DmaConfig);
	if (status != XST_SUCCESS){
		xil_printf("Initialization failed... \n\r");
		return XST_FAILURE;
	}


	return XST_SUCCESS;
}

s32 platform_setup_interrupts(void)
{
	u32 status;
	Xil_ExceptionInit();

	XScuGic_DeviceInitialize_Custom(INTC_DEVICE_ID);

	XScuGic_Config *IntrpConfig;



	IntrpConfig = XScuGic_LookupConfig(XPAR_PS7_SCUGIC_0_DEVICE_ID);
		if (NULL == IntrpConfig) {
			xil_printf("No config found for scugic\r\n");
		  return XST_FAILURE;
		}

	status = XScuGic_CfgInitialize_Custom(&Intrp, IntrpConfig,
			IntrpConfig->CpuBaseAddress);
	if (status != XST_SUCCESS){
		xil_printf("Interrupt Initialization failed... \n\r");
		return XST_FAILURE;
	}


	/*
	 * Connect the interrupt controller interrupt handler to the hardware
	 * interrupt handling logic in the processor.
	 */
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_IRQ_INT,
			(Xil_ExceptionHandler)XScuGic_DeviceInterruptHandler,
			(void *)INTC_DEVICE_ID);
	/*
	 * Connect the device driver handler that will be called when an
	 * interrupt for the device occurs, the handler defined above performs
	 * the specific interrupt processing for the device.
	 */
	XScuGic_RegisterHandler(INTC_BASE_ADDR, TIMER_IRPT_INTR,
					(Xil_ExceptionHandler)timer_callback,
					(void *)&TimerInstance);

	XScuGic_SetPriorityTriggerType(&Intrp, MMS2_INTR_ID, 0xA0, 0x3);
	status = XScuGic_Connect(&Intrp, MMS2_INTR_ID, (Xil_InterruptHandler)MM2S_ISR, (void*)&Dma );
	if (status != XST_SUCCESS){
		xil_printf("Interrupt connection failed... \n\r");
		return XST_FAILURE;
	}

	XScuGic_SetPriorityTriggerType(&Intrp, S2MM_INTR_ID, 0xA0, 0x3);
	status = XScuGic_Connect(&Intrp, S2MM_INTR_ID, (Xil_InterruptHandler)S2MM_ISR, (void*)&Dma );
	if (status != XST_SUCCESS){
	  xil_printf("Interrupt connection failed... \n\r");
	  return XST_FAILURE;
	}

	/*
	 * Enable the interrupt for scu timer.
	 */
	XScuGic_EnableIntr(INTC_DIST_BASE_ADDR, TIMER_IRPT_INTR);
	Xil_ExceptionEnable();

	return XST_SUCCESS;
}

void platform_enable_interrupts()
{
	/*
	 * Enable non-critical exceptions.
	 */
	Xil_ExceptionEnableMask(XIL_EXCEPTION_IRQ);
	XScuTimer_EnableInterrupt(&TimerInstance);
	XScuTimer_Start(&TimerInstance);
	/* Disable all interrupts before setup */

	XScuGic_Enable(&Intrp, MMS2_INTR_ID);
	XScuGic_Enable(&Intrp, S2MM_INTR_ID);

	XAxiDma_IntrDisable(&Dma, XAXIDMA_IRQ_ALL_MASK,
			  XAXIDMA_DMA_TO_DEVICE);

	XAxiDma_IntrDisable(&Dma, XAXIDMA_IRQ_ALL_MASK,
		  XAXIDMA_DEVICE_TO_DMA);

	/* Enable all interrupts */
	XAxiDma_IntrEnable(&Dma, XAXIDMA_IRQ_ALL_MASK,
				XAXIDMA_DMA_TO_DEVICE);

	XAxiDma_IntrEnable(&Dma, XAXIDMA_IRQ_ALL_MASK,
				XAXIDMA_DEVICE_TO_DMA);
	return;
}

void init_platform()
{
	platform_setup_timer();

	platform_setup_DMA();

	platform_setup_interrupts();

	return;
}

void cleanup_platform()
{
	Xil_ICacheDisable();
	Xil_DCacheDisable();
	return;
}

u64_t get_time_ms()
{
#define COUNTS_PER_MILLI_SECOND (COUNTS_PER_SECOND/1000)
	XTime tCur = 0;
	XTime_GetTime(&tCur);
	return (tCur/COUNTS_PER_MILLI_SECOND);
}

#endif
#endif
