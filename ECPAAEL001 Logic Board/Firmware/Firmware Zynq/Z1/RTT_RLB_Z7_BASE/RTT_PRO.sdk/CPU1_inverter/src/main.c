/*
 * Copyright (C) 2018 - 2019 Xilinx, Inc.
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

#include <stdio.h>
#include "xparameters.h"
#include "netif/xadapter.h"
#include "platform.h"
#include "platform_config.h"
#include "lwipopts.h"
#include "xil_printf.h"
#include "sleep.h"
#include "lwip/priv/tcp_priv.h"
#include "lwip/init.h"
#include "lwip/inet.h"



#if LWIP_IPV6==1
#include "lwip/ip6_addr.h"
#include "lwip/ip6.h"
#else

#if LWIP_DHCP==1
#include "lwip/dhcp.h"
extern volatile int dhcp_timoutcntr;
#endif
#define DEFAULT_IP_ADDRESS	"192.168.121.232"							// 20210625: modified from "192.168.1.10"
#define DEFAULT_IP_MASK		"255.255.255.0"
#define DEFAULT_GW_ADDRESS	"192.168.1.1"
#endif /* LWIP_IPV6 */

/*===============================================================================*/
/*DMA*/
#include "xaxidma.h"
#include "xil_io.h"
#include "xscugic.h"
#include "xil_exception.h"
#include "tcp_perf_client.h"
/*===============================================================================*/

/*************************** I2C Include Files *******************************/
#include "xiicps.h"
/*****************************************************************************/

/********************** Co-Processing Include Files **************************/
#include "xil_mmu.h"
/*****************************************************************************/

extern volatile int TcpFastTmrFlag;
extern volatile int TcpSlowTmrFlag;

extern XScuGic Intrp;

extern u32_t pkt_cnt;					/*counter of the incoming packets*/
//extern u32_t final_pkt_lnt;
extern u32_t effective_pkt_cnt;			/*net counter of the incoming packets, basically we remove the CURL_HEADER_LNT Bytes from pkt_cnt*/

void platform_enable_interrupts(void);
void start_application(void);
void start_application_client();
void transfer_data();
void print_app_header(void);
void print_app_header_client();

#if defined (__arm__) && !defined (ARMR5)
#if XPAR_GIGE_PCS_PMA_SGMII_CORE_PRESENT == 1 || \
		 XPAR_GIGE_PCS_PMA_1000BASEX_CORE_PRESENT == 1
int ProgramSi5324(void);
int ProgramSfpPhy(void);
#endif
#endif

#ifdef XPS_BOARD_ZCU102
#ifdef XPAR_XIICPS_0_DEVICE_ID
int IicPhyReset(void);
#endif
#endif

struct netif server_netif;

#if LWIP_IPV6==1
static void print_ipv6(char *msg, ip_addr_t *ip)
{
	print(msg);
	xil_printf(" %s\n\r", inet6_ntoa(*ip));
}
#else
static void print_ip(char *msg, ip_addr_t *ip)
{
	print(msg);
	xil_printf("%d.%d.%d.%d\r\n", ip4_addr1(ip), ip4_addr2(ip),
			ip4_addr3(ip), ip4_addr4(ip));
}

static void print_ip_settings(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
{
	print_ip("Board IP:       ", ip);
	print_ip("Netmask :       ", mask);
	print_ip("Gateway :       ", gw);
}

static void assign_default_ip(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
{
	int err;

	xil_printf("Configuring default IP %s \r\n", DEFAULT_IP_ADDRESS);

	err = inet_aton(DEFAULT_IP_ADDRESS, ip);
	if (!err)
		xil_printf("Invalid default IP address: %d\r\n", err);

	err = inet_aton(DEFAULT_IP_MASK, mask);
	if (!err)
		xil_printf("Invalid default IP MASK: %d\r\n", err);

	err = inet_aton(DEFAULT_GW_ADDRESS, gw);
	if (!err)
		xil_printf("Invalid default gateway address: %d\r\n", err);
}
#endif /* LWIP_IPV6 */

/*===============================================================================*/
/*DMA*/
#define DMA_DEV_ID		XPAR_AXIDMA_0_DEVICE_ID

#define DDR_BASE_ADDR		XPAR_AXI_7SDDR_0_S_AXI_BASEADDR

#define S2MM_INTR_ID		XPAR_FABRIC_AXIDMA_0_S2MM_INTROUT_VEC_ID
#define MMS2_INTR_ID		XPAR_FABRIC_AXIDMA_0_MM2S_INTROUT_VEC_ID

#define INTC_DEVICE_ID          XPAR_SCUGIC_SINGLE_DEVICE_ID

#define IMAGE_BYTES_SENT			500000			/*Number of integers number (number of image bytes) that we want to send*/

#define MAX_DIM_INPUT_FILE 20000000

extern u8_t memory_ordered[MAX_DIM_INPUT_FILE]; /*Array storing the data to be sent to the PL*/
extern u32_t pkt_cnt;							/*counter of the incoming packets*/
extern u32_t file_complete;						/*Flag which tells us if we have received all the packets. If so, it becomes one, and we pass to the other side of the connection (FPGA->PC)*/

extern XScuGic Intrp;
extern XAxiDma Dma;

u32 DMA_to_DEVICE_done;					/*flag set by the ISR of the DMA which tells us that the DMA to DEVICE transfer has been done*/
u32 DEVICE_to_DMA_done;					/*flag set by the ISR of the DMA which tells us that the DEVICE to DMA transfer has been done*/
u32 Error;								/*flag set by the ISR of the DMA which tells us that the transfer got an error*/
u8 inverted_img[MAX_DIM_INPUT_FILE];	/*Array storing the inverted data to be received from the PL*/
u8 inversion_done;						/*flag that tells us that all the image has returned from the PL, and so it is inverted*/

/*===============================================================================*/

/************************** I2C Constant Definitions ************************/
/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 * I2C1 is used
 */
#define IIC_DEVICE_ID		XPAR_XIICPS_1_DEVICE_ID

/*
 * The slave address to send to and receive from (1011_111).
 */
#define IIC_SLAVE_ADDR		0x5F
#define IIC_SCLK_RATE		100000

/*
 * The following constant controls the length of the buffers to be sent
 * and received with the IIC.
 */
#define TEST_BUFFER_SIZE	3
/*****************************************************************************/

/************************ I2C Function Prototypes ****************************/
int KSZ98983_delay_initialization_I2C1(u16 DeviceId);
/*****************************************************************************/

/************************ I2C Variable Definitions ***************************/

XIicPs Iic;		/**< Instance of the IIC Device */

/*
 * The following buffers are used in this example to send and receive data
 * with the IIC.
 */
u8 SendBuffer[TEST_BUFFER_SIZE];    /**< Buffer for Transmitting Data */
u8 RecvBuffer[TEST_BUFFER_SIZE];    /**< Buffer for Receiving Data */
/*****************************************************************************/
u8 img_ready = 1;			/*after each transfer from PC->FPGA and FPGA->PC we are ready to manage another image*/
u32 port_index = 0;

int main(void)
{

    xil_printf("CPU 1 started \r\n");


//	usleep(5*1000*1000);


	int Status;	//I2C Status

	//Disable cache on OCM
	// S=b1 TEX=b100 AP=b11, Domain=b1111, C=b0, B=b0
	Xil_SetTlbAttributes(0xFFFF0000,0x14de2);


	/************************ I2C Variable Definitions ***************************/
	xil_printf("IIC Master Polled Example Test \r\n");

	/*
	 * Run the Iic polled example in master mode, specify the Device
	 * ID that is specified in xparameters.h.
	 */
	Status = KSZ98983_delay_initialization_I2C1(IIC_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*****************************************************************************/



	static u32 status;

	static u32	packet_counter = 0;		/*Counter of how many packets has been sent and received*/
	static u32	FILE_DIMENSION = 0;		/*Dimension of the file that we want to send*/

	static u32	packet_remaining = 0;	/*Remaining packets to be sent and received to/from the PL*/

	struct netif *netif;

	/* the mac address of the board. this should be unique per board */
	unsigned char mac_ethernet_address[] = {
		0x00, 0x0a, 0x35, 0x00, 0x01, 0x02 };

	netif = &server_netif;
	#if defined (__arm__) && !defined (ARMR5)
	#if XPAR_GIGE_PCS_PMA_SGMII_CORE_PRESENT == 1 || \
			XPAR_GIGE_PCS_PMA_1000BASEX_CORE_PRESENT == 1
		ProgramSi5324();
		ProgramSfpPhy();
	#endif
	#endif

		/* Define this board specific macro in order perform PHY reset
		 * on ZCU102
		 */
	#ifdef XPS_BOARD_ZCU102
		IicPhyReset();
	#endif

	init_platform();

	xil_printf("\r\n\r\n");
	xil_printf("-----lwIP RAW Mode TCP Server Application-----\r\n");

	/* initialize lwIP */
	lwip_init();

	/* Add network interface to the netif_list, and set it as default */
	if (!xemac_add(netif, NULL, NULL, NULL, mac_ethernet_address,
				PLATFORM_EMAC_BASEADDR)) {
		xil_printf("Error adding N/W interface\r\n");
		return -1;
	}

#if LWIP_IPV6==1
	netif->ip6_autoconfig_enabled = 1;
	netif_create_ip6_linklocal_address(netif, 1);
	netif_ip6_addr_set_state(netif, 0, IP6_ADDR_VALID);
	print_ipv6("\n\rlink local IPv6 address is:", &netif->ip6_addr[0]);
#endif /* LWIP_IPV6 */

	netif_set_default(netif);

	/* now enable interrupts */
	platform_enable_interrupts();

	/* specify that the network if is up */
	netif_set_up(netif);

#if (LWIP_IPV6==0)
#if (LWIP_DHCP==1)
	/* Create a new DHCP client for this interface.
	 * Note: you must call dhcp_fine_tmr() and dhcp_coarse_tmr() at
	 * the predefined regular intervals after starting the client.
	 */
	dhcp_start(netif);

	dhcp_timoutcntr = 24;
	while (((netif->ip_addr.addr) == 0) && (dhcp_timoutcntr > 0))
		xemacif_input(netif);

	if (dhcp_timoutcntr <= 0) {
		if ((netif->ip_addr.addr) == 0) {
			xil_printf("DHCP request timed out, default IP assigned\r\n");
			assign_default_ip(&(netif->ip_addr),
					&(netif->netmask), &(netif->gw));
		}
	}


	/* print IP address, netmask and gateway */
#else
	assign_default_ip(&(netif->ip_addr), &(netif->netmask), &(netif->gw));
#endif
	print_ip_settings(&(netif->ip_addr), &(netif->netmask), &(netif->gw));
#endif /* LWIP_IPV6 */
//	u32 reg = Xil_In32(0xF8F00608);
//	xil_printf("MAIN Private_Timer_Control_Register %x \n\r", reg);
//	reg = Xil_In32(0xF8F01840);
//	xil_printf("MAIN ID 67 %x \n\r", reg);
//	reg = Xil_In32(0xF8F01844);
//	xil_printf("MAIN ID 68 %x \n\r", reg);
//	reg = Xil_In32(0xF8F0181C);
//	xil_printf("MAIN ID 29 %x \n\r", reg);
//	reg = Xil_In32(0xF8F01834);
//	xil_printf("MAIN ID X %x \n\r", reg);


	while (1) {
		if (TcpFastTmrFlag) {
			tcp_fasttmr();
			TcpFastTmrFlag = 0;
		}
		if (TcpSlowTmrFlag) {
			tcp_slowtmr();
			TcpSlowTmrFlag = 0;
		}

		xemacif_input(netif);

		if (img_ready == 1){

			/*before each transfer, we set to 0 the variables*/
			pkt_cnt = 0;
			effective_pkt_cnt = 0;
			packet_counter = 0;

			xil_printf("\r\n");

			/*we print the application header just 1 time (in correspondence of the first image)*/
			if (port_index == 0){
				/* print app header */
				print_app_header();

			}
			/* now enable interrupts */
			platform_enable_interrupts();
			/* start the application*/
			start_application();


			img_ready = 0;					/*we disable the img_ready flag*/
			port_index = port_index + 1;

			xil_printf("\r\n");
		}

		/*if we have received completely the image, we send (and receive immediately back) the image to the PL, by means of the DMA*/
		if (file_complete == 1 ){


			FILE_DIMENSION = effective_pkt_cnt;		/*We set the dimension of the file equal to the one extracted in tcp_server.c*/
			packet_remaining = FILE_DIMENSION;		/*At the first cycle all the packets are missing, so we make this initialization*/



			Xil_DCacheFlushRange((u32)&memory_ordered[0], FILE_DIMENSION*sizeof(u8));

			/*While we have not sent all the packets, we make a transfer of IMAGE_BYTES_SENT*sizeof(u8) packets per time (if the missing
			 * packets are more than IMAGE_BYTES_SENT, otherwise we sent just the remaining packets)*/
			while (packet_counter < FILE_DIMENSION){


				DMA_to_DEVICE_done = 0;
				DEVICE_to_DMA_done = 0;
				Error = 0;

				if ((packet_remaining) > IMAGE_BYTES_SENT ){

					/* The following function makes data to move from peripheral to DDR*/
					status = XAxiDma_SimpleTransfer(&Dma, (u32)&inverted_img[packet_counter], IMAGE_BYTES_SENT*sizeof(u8),
							XAXIDMA_DEVICE_TO_DMA);

					if (status != XST_SUCCESS){
						xil_printf("Peripheral to DMA transfer failed... \n\r");
						return XST_FAILURE;
					}

					/* The following function makes data to move from DDR to peripheral*/
					status = XAxiDma_SimpleTransfer(&Dma, (u32)&memory_ordered[packet_counter], IMAGE_BYTES_SENT*sizeof(u8),
										XAXIDMA_DMA_TO_DEVICE);

					if (status != XST_SUCCESS){
						xil_printf("DMA to Peripheral transfer failed... \n\r");
						xil_printf("Status is %d \n\r", status);

						return XST_FAILURE;
					}





					/*we flush the content of the Cache to the DDR*/
					Xil_DCacheFlushRange((u32)&inverted_img[packet_counter], IMAGE_BYTES_SENT*sizeof(u8));
				}

				else {

					/* The following function makes data to move from peripheral to DDR*/
					status = XAxiDma_SimpleTransfer(&Dma, (u32)&inverted_img[packet_counter], packet_remaining*sizeof(u8),
							XAXIDMA_DEVICE_TO_DMA);

					if (status != XST_SUCCESS){
						xil_printf("Peripheral to DMA transfer failed... \n\r");
						return XST_FAILURE;
					}

					/* The following function makes data to move from DDR to peripheral*/
					status = XAxiDma_SimpleTransfer(&Dma, (u32)&memory_ordered[packet_counter], packet_remaining*sizeof(u8),
										XAXIDMA_DMA_TO_DEVICE);

					if (status != XST_SUCCESS){
						xil_printf("DMA to Peripheral transfer failed... \n\r");
						return XST_FAILURE;
					}
						/* The following function makes data to move from DDR to peripheral and viceversa.*/





					/*we flush the content of the Cache to the DDR*/
					Xil_DCacheFlushRange((u32)&inverted_img[packet_counter], packet_remaining*sizeof(u8));

				}

				//xil_printf("DMA_to_DEVICE_done %d\n\r", DMA_to_DEVICE_done);
				//xil_printf("DEVICE_to_DMA_done %d\n\r", DEVICE_to_DMA_done);
				//xil_printf("Error %d\n\r", Error);
				 /*
				 * Wait TX done and RX done
				 */
				while (!DMA_to_DEVICE_done && !DEVICE_to_DMA_done && !Error) {
						/* NOP */
				}

				//xil_printf("DMA passed\n\r");
				/*if (Error) {
				  xil_printf("Failed test transmit%s done, "
				  "receive%s done\r\n", DMA_to_DEVICE_done? "":" not",
						  DEVICE_to_DMA_done? "":" not");
				}*/

				/*we increase/decrease the counter of the processed packets and the counter of the remaining packets respectively*/
				if ((packet_remaining) < IMAGE_BYTES_SENT ){

					packet_counter = packet_counter + packet_remaining;
					packet_remaining = packet_remaining - packet_remaining;
				}
				else {

					packet_counter = packet_counter + IMAGE_BYTES_SENT;
					packet_remaining = packet_remaining - IMAGE_BYTES_SENT;
				}


			}

			  /*XScuGic_Disconnect(&Intrp, MMS2_INTR_ID);
			  XScuGic_Disconnect(&Intrp, S2MM_INTR_ID);*/

			 /*after we have completed the processing of the PL, we reset to 0 the file_complete flag and we set to 1 the inversion_done flag,
			  * such that we can resend the image from FPGA to PC.
			  */
			  file_complete = 0;
			  inversion_done = 1;


		}

		transfer_data();





	}

	/* never reached */
	cleanup_platform();

	return 0;
}

/************************** I2C Function Body ****************************/
int KSZ98983_delay_initialization_I2C1(u16 DeviceId)
{
	int Status;
	XIicPs_Config *Config;

	/*
	 * Initialize the IIC driver so that it's ready to use
	 * Look up the configuration in the config table,
	 * then initialize it.
	 */
	Config = XIicPs_LookupConfig(DeviceId);
	if (NULL == Config) {
		xil_printf("IIC 1 LookupConfig Failed\r\n");
		return XST_FAILURE;
	}

	Status = XIicPs_CfgInitialize(&Iic, Config, Config->BaseAddress);
	if (Status != XST_SUCCESS) {
		xil_printf("IIC 1 CfgInitialize Failed\r\n");
		return XST_FAILURE;
	}

	/*
	 * Perform a self-test to ensure that the hardware was built correctly.
	 */
	Status = XIicPs_SelfTest(&Iic);
	if (Status != XST_SUCCESS) {
		xil_printf("IIC 1 SelfTest Failed\r\n");
		return XST_FAILURE;
	}

	/*
	 * Set the IIC serial clock rate.
	 */
	XIicPs_SetSClk(&Iic, IIC_SCLK_RATE);

	/*
	 * Initialise the send buffer bytes with a pattern to send and the
	 * the receive buffer bytes to zero to allow the receive data to be
	 * verified.
	 */

	SendBuffer[0] = 0x33;  // RGMII port register of KSZ98983
	SendBuffer[1] = 0x01;

	RecvBuffer[0] = 0;

	/*
	 * Send the buffer using the IIC and ignore the number of bytes sent
	 * as the return value since we are using it in interrupt mode.
	 */
	Status = XIicPs_MasterSendPolled(&Iic, SendBuffer,
			 2, IIC_SLAVE_ADDR);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	while (XIicPs_BusIsBusy(&Iic)) { /* NOP */ }

	Status = XIicPs_MasterRecvPolled(&Iic, RecvBuffer,
			  1, IIC_SLAVE_ADDR);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	while (XIicPs_BusIsBusy(&Iic)) { /* NOP */ }

	/*
	 * Print received data
	 */
	xil_printf("IIC 1 received data =%x\r\n",RecvBuffer[0]);
	xil_printf("KSZ98983 register 0x3301 default value is 0x4B\r\n");

	SendBuffer[0] = 0x33;  // RGMII port register of KSZ98983
	SendBuffer[1] = 0x01;
	SendBuffer[2] = 0x5B;  // default + turn on bit #4 RGMII Ingress Internal Delay (RGMII_ID_ig)
	RecvBuffer[0] = 0;


	Status = XIicPs_MasterSendPolled(&Iic, SendBuffer, 3, IIC_SLAVE_ADDR);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	while (XIicPs_BusIsBusy(&Iic)) { /* NOP */ }

	//Reread written data //

	Status = XIicPs_MasterSendPolled(&Iic, SendBuffer,
			 2, IIC_SLAVE_ADDR);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	while (XIicPs_BusIsBusy(&Iic)) { /* NOP */ }
	Status = XIicPs_MasterRecvPolled(&Iic, RecvBuffer,
			  1, IIC_SLAVE_ADDR);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	while (XIicPs_BusIsBusy(&Iic)) { /* NOP */ }
	/*
	 * Print received data
	 */
	xil_printf("IIC 1 received NEW data =%x\r\n",RecvBuffer[0]);
	return XST_SUCCESS;
}
/*************************************************************************/


