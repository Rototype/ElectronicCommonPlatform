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

/* Connection handle for a TCP Client session */

#include "tcp_perf_client.h"


#define MAX_DIM_INPUT_FILE 20000000


extern struct tcp_pcb *c_pcb;				/*same struct that receives the image from the PC*/
static char send_buf[TCP_SEND_BUFSIZE];		/*buffer used to send the image to the PC*/


extern u8 inverted_img[MAX_DIM_INPUT_FILE];		/*Array storing the inverted data to be received from the PL*/
extern u8_t memory_ordered[MAX_DIM_INPUT_FILE]; /*Array storing the data to be sent to the PL*/

extern u32_t inversion_done;					/*flag that tells us that all the image has returned from the PL, and so it is inverted*/

extern u32_t pkt_cnt;							/*counter of the incoming packets*/
extern u32_t effective_pkt_cnt;					/*net counter of the incoming packets, basically we remove the CURL_HEADER_LNT Bytes from pkt_cnt*/
extern u32_t file_dim;							/*variable that contains the file dimension, calculated from the BMP header*/
extern u32_t file_dim_curl;						/*variable that contains the file dimension, adding the CURL header*/

extern u8 img_ready;							/*after each transfer from PC->FPGA and FPGA->PC we are ready to manage another image*/
extern u32 port_index;


/*This function is called at each clock cycle by the main, but we use this only when the FPGA (tcp_perf_server) has read all the packets (inversion_done = 1)*/
static err_t tcp_send_perf_traffic(void)
{
	err_t err;
	u8_t apiflags = TCP_WRITE_FLAG_COPY | TCP_WRITE_FLAG_MORE;

	static u32_t mem_index = 0;					/*index of the memory ordered initialized to 0*/
	static u32_t pkt_remaining = 0;				/*remaining packets to be read from the memory*/
	static u8_t first_cycle_flag = 1;			/*flag used to understand if we are in the first reading cycle, and so we have to initialize packet_remaining to pkt_cnt*/


	if (c_pcb == NULL) {

		return ERR_CONN;

	}

#ifdef __MICROBLAZE__
	/* Zero-copy pbufs is used to get maximum performance for Microblaze.
	 * For Zynq A9, ZynqMP A53 and R5 zero-copy pbufs does not give
	 * significant improvement hense not used. */
	apiflags = 0;
#endif


	/*if we have read and received (from the DDR) all the packets, then inversion_done=1 and so the FPGA can start retransmitting back to the PC all the packets*/
	if (inversion_done == 1){

		/*if it is the first time we enter the function, we initialize the packet remaining to effective_pkt_cnt and mem_index to 0*/
		if (first_cycle_flag == 1){
			pkt_remaining = effective_pkt_cnt;
			mem_index = 0;
			first_cycle_flag = 0;
		}

		/*while the overall send buffer is larger than the quantity of packets that we want to send, we send the packets*/
		while (tcp_sndbuf(c_pcb) > TCP_SEND_BUFSIZE && pkt_remaining > 0){

			/*if the number of remaining packets is larger than the packets that we want to send, we send TCP_SEND_BUFSIZE packets*/
			if (pkt_remaining >= TCP_SEND_BUFSIZE){

				memcpy(send_buf,&inverted_img[mem_index],TCP_SEND_BUFSIZE);
				err = tcp_write(c_pcb, send_buf, TCP_SEND_BUFSIZE, apiflags);
				//err = tcp_output(c_pcb);
				mem_index = mem_index+TCP_SEND_BUFSIZE;				/* We increase the address of the pointer*/
				pkt_remaining = pkt_remaining - TCP_SEND_BUFSIZE;	/* We decrease the number of remaining packets*/
			}

			/*if the number of remaining packets is smaller than the packets that we want to send, we send the remainder*/
			else if (pkt_remaining  < TCP_SEND_BUFSIZE && pkt_remaining > 0){

				memcpy(send_buf,&inverted_img[mem_index],(pkt_remaining % TCP_SEND_BUFSIZE));

				mem_index = mem_index + pkt_remaining;
				err = tcp_write(c_pcb, send_buf, pkt_remaining, apiflags);
				err = tcp_output(c_pcb);
				pkt_remaining = 0;
				inversion_done = 0;
				tcp_close(c_pcb);
				img_ready = 1;
				effective_pkt_cnt = 0;
				pkt_cnt = 0;
				file_dim = 0;
				file_dim_curl = 0;
				first_cycle_flag = 1;
				tcp_abort(c_pcb);
				break;/*this avoids the print of -11 error on tcp_write*/


			};

			/* This is used just to avoid the continuous printing of the -11 error on tcp_write on the serial*/
			if (err == ERR_CONN && pkt_remaining == 0){
				inversion_done = 0;

			}


			if (err != ERR_OK) {
				xil_printf("TCP client: Error on tcp_write: %d\r\n",
						err);
				return err;
			}

			err = tcp_output(c_pcb);

			if (err != ERR_OK) {
				xil_printf("TCP client: Error on tcp_output: %d\r\n",
						err);
				return err;
			}



				}


			}




	return ERR_OK;


}



void transfer_data(void)
{
		tcp_send_perf_traffic();

}


