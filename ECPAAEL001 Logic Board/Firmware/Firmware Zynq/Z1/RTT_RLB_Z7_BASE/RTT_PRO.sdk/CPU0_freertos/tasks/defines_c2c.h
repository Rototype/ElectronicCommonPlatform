#ifndef DEFINES_C2C_H
#define DEFINES_C2C_H


/****************************************************************************************************/
/* defines from external FPGA                                                                       */
/****************************************************************************************************/


/******************************************************************/

/* Definitions for driver DCM_REGS */
#define XPAR_DCM_REGS_NUM_INSTANCES 1

/* Definitions for peripheral DCM_5_DCM_REGS_0 */
#define XPAR_DCM_5_DCM_REGS_0_DEVICE_ID 0
#define XPAR_DCM_5_DCM_REGS_0_S00_AXI_BASEADDR 0x50030000
#define XPAR_DCM_5_DCM_REGS_0_S00_AXI_HIGHADDR 0x5003FFFF


/******************************************************************/

/* Definitions for driver PHS_REGS */
#define XPAR_PHS_REGS_NUM_INSTANCES 1

/* Definitions for peripheral PHS_50_PHS_REGS_0 */
#define XPAR_PHS_50_PHS_REGS_0_DEVICE_ID 0
#define XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR 0x50020000
#define XPAR_PHS_50_PHS_REGS_0_S00_AXI_HIGHADDR 0x5002FFFF


/******************************************************************/

/* Definitions for driver SM_REGS */
#define XPAR_SM_REGS_NUM_INSTANCES 1

/* Definitions for peripheral SM_20_SM_REGS_0 */
#define XPAR_SM_20_SM_REGS_0_DEVICE_ID 0
#define XPAR_SM_20_SM_REGS_0_S00_AXI_BASEADDR 0x50010000
#define XPAR_SM_20_SM_REGS_0_S00_AXI_HIGHADDR 0x5001FFFF


/******************************************************************/

/* Definitions for driver SOL_REGS */
#define XPAR_SOL_REGS_NUM_INSTANCES 1

/* Definitions for peripheral SOL_10_SOL_REGS_0 */
#define XPAR_SOL_10_SOL_REGS_0_DEVICE_ID 0
#define XPAR_SOL_10_SOL_REGS_0_S00_AXI_BASEADDR 0x50000000
#define XPAR_SOL_10_SOL_REGS_0_S00_AXI_HIGHADDR 0x5000FFFF


/******************************************************************/


/* FOR COMPATIBILITY */

#define XPAR_DCM_6_DCM_REGS_0_S00_AXI_BASEADDR				(XPAR_DCM_5_DCM_REGS_0_S00_AXI_BASEADDR)
#define XPAR_SOL_6_SOL_REGS_0_S00_AXI_BASEADDR				(XPAR_SOL_10_SOL_REGS_0_S00_AXI_BASEADDR)

#define XPAR_FABRIC_PHS_50_PHS_REGS_0_PHS_IRQ_L2S_0_INTR	(XPAR_FABRIC_WIRE2IRQ_0_WIRE_IRQ0_INTR)
#define XPAR_FABRIC_PHS_50_PHS_REGS_0_PHS_IRQ_S2L_0_INTR	(XPAR_FABRIC_WIRE2IRQ_0_WIRE_IRQ1_INTR)
#define XPAR_FABRIC_PHS_50_PHS_REGS_0_PHS_IRQ_L2S_1_INTR	(XPAR_FABRIC_WIRE2IRQ_0_WIRE_IRQ2_INTR)
#define XPAR_FABRIC_PHS_50_PHS_REGS_0_PHS_IRQ_S2L_1_INTR	(XPAR_FABRIC_WIRE2IRQ_0_WIRE_IRQ3_INTR)
#define XPAR_FABRIC_SM_20_SM_REGS_0_SM_IRQ_INTR				(XPAR_FABRIC_SM_IRQ_INTR)
#define XPAR_FABRIC_AXI_GPIO_1_IP2INTC_IRPT_INTR			(XPAR_FABRIC_XADC_WIZ_0_IP2INTC_IRPT_INTR)


#endif /* DEFINES_C2C_H */
