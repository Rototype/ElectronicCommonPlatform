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

/** Connection handle for a TCP Server session */

#include "tcp_perf_server.h"
#include "xil_io.h"

#define MAX_DIM_INPUT_FILE 20000000	/*Maximum file dimension, this value will instantiate the necessary memory used to store the incoming data*/

/*#define BMP_FILE_ADDRESS 181		Last address (in case we send file with CURL) in which we can find the BMP file dimension in the BMP header(Byte 02-05 of the BMP header contains this information*/
/*#define FIRST_BMP_PACKET 176		If we send file with CURL, the first 178 bytes are occupied by the CURL header, and we are not interested in it*/

/*NB BMP_FILE_ADDRESS and FIRST_BMP_PACKET depend on the dimension of the file: for small files (<60kB) the combination is 181/176, for large files (>10MB) the combination
 * is 184/179. So before programming the FPGA be careful of the dimension of the file, and set these constants accordingly
 */

#define CURL_HEADER_LNT 19 /*If we remove all the unnecessary parts of the CURL header, we remain with a 19 Bytes long CURL header (POST 1.1 ...), independently from the file dimension*/


extern struct netif server_netif;
struct tcp_pcb *c_pcb;
static struct perf_stats server;

/*These global variables are in common among the server and client programs, first they change during the PC->FPGA communication
 * with the arrival of the incoming data, then their final value will be exploited by the FPGA->communication for resending back
 * the data
 */

u32_t pkt_cnt = 0;								/*counter of the incoming packets*/
u32_t effective_pkt_cnt = 0;					/*net counter of the incoming packets, basically we remove the CURL_HEADER_LNT Bytes from pkt_cnt*/
u8_t memory_ordered[MAX_DIM_INPUT_FILE];		/*memory in which we store the incoming packets in an ordered way: the first data in the first address, the last data in the last address*/
u8_t file_complete = 0;							/*Flag which tells us if we have received all the packets. If so, it becomes one, and we pass to the other side of the connection (FPGA->PC)*/
u32_t file_dim=0;								/*variable that contains the file dimension, calculated from the BMP header*/
u32_t file_dim_curl =0;							/*variable that contains the file dimension, adding the CURL_HEADER_LNT header*/

extern u32 port_index;
extern u8 img_ready;
extern u8 inversion_done;						/*flag that tells us that all the image has returned from the PL, and so it is inverted*/
void print_app_header(void)
{
	xil_printf("TCP server listening on port %d\r\n",
			TCP_CONN_PORT);
//#if LWIP_IPV6==1
//	xil_printf("On Host: Run $iperf -V -c %s%%<interface> -i %d -t 300 -w 2M\r\n",
//			inet6_ntoa(server_netif.ip6_addr[0]),
//			INTERIM_REPORT_INTERVAL);
//#else
//	xil_printf("On Host: Run $iperf -c %s -i %d -t 300 -w 2M\r\n",
//			inet_ntoa(server_netif.ip_addr),
//			INTERIM_REPORT_INTERVAL);
//#endif /* LWIP_IPV6 */
}

static void print_tcp_conn_stats(void)
{
#if LWIP_IPV6==1
	xil_printf("[%3d] local %s port %d connected with ",
			server.client_id, inet6_ntoa(c_pcb->local_ip),
			c_pcb->local_port);
	xil_printf("%s port %d\r\n",inet6_ntoa(c_pcb->remote_ip),
			c_pcb->remote_port);
#else
	xil_printf("\n\r[%3d] local %s port %d connected with ",
			server.client_id, inet_ntoa(c_pcb->local_ip),
			c_pcb->local_port);
	xil_printf("%s port %d\r\n",inet_ntoa(c_pcb->remote_ip),
			c_pcb->remote_port);
#endif /* LWIP_IPV6 */

	xil_printf("[ ID] Interval\t\tTransfer\n\r");
}

static void stats_buffer(char* outString,
		double data, enum measure_t type)
{
	int conv = KCONV_UNIT;
	const char *format;
	double unit = 1024.0;

	if (type == SPEED)
		unit = 1000.0;

	while (data >= unit && conv <= KCONV_GIGA) {
		data /= unit;
		conv++;
	}

	/* Fit data in 4 places */
	if (data < 9.995) { /* 9.995 rounded to 10.0 */
		format = "%4.2f %c"; /* #.## */
	} else if (data < 99.95) { /* 99.95 rounded to 100 */
		format = "%4.1f %c"; /* ##.# */
	} else {
		format = "%4.0f %c"; /* #### */
	}
	sprintf(outString, format, data, kLabel[conv]);
}


/** The report function of a TCP server session */
static void tcp_conn_report(u64_t diff,
		enum report_type report_type)
{


	u64_t total_len;
	double duration, bandwidth = 0;
	char data[16], perf[16], time[64];



	if (report_type == INTER_REPORT) {
		total_len = server.i_report.total_bytes;
	} else {
		server.i_report.last_report_time = 0;
		total_len = server.total_bytes;
	}

	/* Converting duration from milliseconds to secs,
	 * and bandwidth to bits/sec .
	 */
	duration = diff / 1000.0; /* secs */
	if (duration)
		bandwidth = (total_len / duration) * 8.0;

	stats_buffer(data, total_len, BYTES);
	stats_buffer(perf, bandwidth, SPEED);
	/* On 32-bit platforms, xil_printf is not able to print
	 * u64_t values, so converting these values in strings and
	 * displaying results
	 */
	sprintf(time, "%4.1f-%4.1f sec",
			(double)server.i_report.last_report_time,
			(double)(server.i_report.last_report_time + duration));
	xil_printf("[%3d] %s  %sBytes\n\r", server.client_id,
			time, data);



	if (report_type == INTER_REPORT)
		server.i_report.last_report_time += duration;
}

/** Close a tcp session */
static void tcp_server_close(struct tcp_pcb *pcb)
{
	err_t err;

	if (pcb != NULL) {
		tcp_recv(pcb, NULL);
		tcp_err(pcb, NULL);
		err = tcp_close(pcb);
		if (err != ERR_OK) {
			/* Free memory with abort */
			tcp_abort(pcb);
		}
	}
}

/** Error callback, tcp session aborted */
static void tcp_server_err(void *arg, err_t err)
{
	LWIP_UNUSED_ARG(err);
	u64_t now = get_time_ms();
	u64_t diff_ms = now - server.start_time;
	tcp_server_close(c_pcb);
	c_pcb = NULL;
	tcp_conn_report(diff_ms, TCP_ABORTED_REMOTE);
//	xil_printf("TCP connection aborted\n\r");
}


/** Receive data on a tcp session */
static err_t tcp_recv_perf_traffic(void *arg, struct tcp_pcb *tpcb,
		struct pbuf *p, err_t err)
{



	static u8_t *data_payload;			/*pointer that points to the incoming data*/
	static u8_t *data_payload_no_curl;	/*pointer that points to the 19th byte of the incoming data (the 20th byte is the first image byte, after the CURL header)*/
	static u8_t *bmp_header_dim;		/*pointer that points to the byte that contains the BMP header*/
	static u16_t plen_no_curl;			/*incoming packet length after removing CURL_HEADER_LNT bytes*/

	static u64_t start = 0u;			/*First packet timestamp*/

	static u8_t header_index;			/*variable used to count how many addresses we have explored while counting the file dimension looking at the BMP header*/


	/*First we make data_payload to point to the incoming data*/
	data_payload = p->payload;

	/*We copy the incoming data into our memory: if the incoming packet is the first one, we have to remove the CURL_HEADER_LNT, otherwise we take the packet as it is*/
	if (pkt_cnt == 0){
		start  = get_time_ms();

		data_payload_no_curl = data_payload + CURL_HEADER_LNT;			/* we point to the address of the first byte containing the data*/
		plen_no_curl = p->len - CURL_HEADER_LNT;						/* we remove from the packet length the CURL_HEADER_LNT, which is useless for our purpose*/
		memcpy(&memory_ordered[effective_pkt_cnt], data_payload_no_curl, plen_no_curl); /* we store in our array just the image, free from the CURL HEADER*/
	}

	else{
		data_payload_no_curl = data_payload;
		plen_no_curl = p->len;
		memcpy(&memory_ordered[effective_pkt_cnt], data_payload, p->len);

		u64_t current  = get_time_ms();
		if ((current - start) > 3000u)
		{
			tcp_abort(tpcb);
			xil_printf("timeout, TCP aborted\n\r");
		}
	}
//	xil_printf("pkt_cnt %d \n\r", pkt_cnt);
	//xil_printf("p %d", p);

	if (p == NULL) {


		u64_t now = get_time_ms();
		u64_t diff_ms = now - server.start_time;
		tcp_abort(tpcb);
		tcp_conn_report(diff_ms, TCP_DONE_SERVER);
		xil_printf("TCP test passed Successfully\n\r");
		img_ready = 1;
		pkt_cnt = 0;								/*counter of the incoming packets*/
		effective_pkt_cnt = 0;					/*net counter of the incoming packets, basically we remove the CURL_HEADER_LNT Bytes from pkt_cnt*/
		file_complete = 0;							/*Flag which tells us if we have received all the packets. If so, it becomes one, and we pass to the other side of the connection (FPGA->PC)*/
		file_dim=0;								/*variable that contains the file dimension, calculated from the BMP header*/
		file_dim_curl =0;
		inversion_done = 0;
		return ERR_OK;

	}

	/* Record total bytes for final report */
	server.total_bytes += p->tot_len;

	/* Pay attention that the address 184 depends on the size of file, indeed for small images it is 181 and the curl header is 176
	 * instead of 179. We make the pointer to point to the appropriate address containing the BMP file dimensions.
	 */
	bmp_header_dim = &memory_ordered[5];			/*The sixth byte (so index 5 starting from 0) is the last containing the file dimension*/

	/*If we have received the first 1 packet (the CURL packet) then we can search for the file dimension looking at the BMP header.
	 * We need the following calculation because the header is written in little endian, so we need to reverse it basically
	 */
	if (pkt_cnt > CURL_HEADER_LNT && pkt_cnt <1466){

		for (header_index=0;header_index< 4; header_index++){
			/*xil_printf("The data pointed is: %x \r\n", *bmp_header_dim);*/
			file_dim= file_dim | *bmp_header_dim;
			if (header_index < 3){
				file_dim = file_dim << 8;
			}

			bmp_header_dim --;
		}

		/*The file coming from CURL has in addition the header, which must be take into account, since pkt_cnt is counting it*/
		file_dim_curl = file_dim + CURL_HEADER_LNT;
		/*xil_printf("file_dim_curl %d \n\r", file_dim_curl);*/
	}

	/*We increment at every incoming packet the pkt_cnt by the dimension of the packet*/
	pkt_cnt = pkt_cnt + p->len;
	effective_pkt_cnt = pkt_cnt - CURL_HEADER_LNT;

	/*Once pkt_cnt has reached the file dimension described in the BMP header, we set the flag to 1*/
	if (pkt_cnt == file_dim_curl ){

		file_complete = 1;
		/*xil_printf("file_complete is %d \r\n", file_complete);*/
		/*tcp_close(tpcb);*/
	}


	if (server.i_report.report_interval_time) {
		u64_t now = get_time_ms();
		/* Record total bytes for interim report */
		server.i_report.total_bytes += p->tot_len;
		/*xil_printf("The packet length is %d \r\n", p->len);*/

		if (server.i_report.start_time) {
			u64_t diff_ms = now - server.i_report.start_time;

			if (diff_ms >= server.i_report.report_interval_time) {
				tcp_conn_report(diff_ms, INTER_REPORT);
				/* Reset Interim report counters */
				server.i_report.start_time = 0;
				server.i_report.total_bytes = 0;
			}
		} else {
			/* Save start time for interim report */
			server.i_report.start_time = now;
		}
	}


	tcp_recved(tpcb, p->tot_len);


	pbuf_free(p);

	return ERR_OK;
}

static err_t tcp_server_accept(void *arg, struct tcp_pcb *newpcb, err_t err)
{



	if ((err != ERR_OK) || (newpcb == NULL)) {
		return ERR_VAL;
	}
	/* Save connected client PCB */
	c_pcb = newpcb;

	/* Save start time for final report */
	server.start_time = get_time_ms();
	server.end_time = 0; /* ms */
	/* Update connected client ID */
	server.client_id++;
	server.total_bytes = 0;

	/* Initialize Interim report paramters */
	server.i_report.report_interval_time =
		INTERIM_REPORT_INTERVAL * 1000; /* ms */
	server.i_report.last_report_time = 0;
	server.i_report.start_time = 0;
	server.i_report.total_bytes = 0;

	print_tcp_conn_stats();

	/* setup callbacks for tcp rx connection */
	tcp_arg(c_pcb, NULL);
	tcp_recv(c_pcb, tcp_recv_perf_traffic);
	tcp_err(c_pcb, tcp_server_err);

	return ERR_OK;
}

void start_application(void)
{
	err_t err;
	struct tcp_pcb *pcb, *lpcb;

	if (port_index == 0){

	/* Create Server PCB */
	pcb = tcp_new_ip_type(IPADDR_TYPE_ANY);
	if (!pcb) {
		xil_printf("TCP server: Error creating PCB. Out of Memory\r\n");
		return;
	}

	err = tcp_bind(pcb, IP_ADDR_ANY, TCP_CONN_PORT);
	if (err != ERR_OK) {
		xil_printf("TCP server: Unable to bind to port %d: "
				"err = %d\r\n" , TCP_CONN_PORT, err);
		tcp_close(pcb);
		return;
	}

	/* Set connection queue limit to 1 to serve
	 * one client at a time
	 */
	lpcb = tcp_listen_with_backlog(pcb, 1);
	if (!lpcb) {
		xil_printf("TCP server: Out of memory while tcp_listen\r\n");
		tcp_close(pcb);
		return;
	}
	//	tcp_abort(c_pcb);


		/* we do not need any arguments to callback functions */
		tcp_arg(lpcb, NULL);
		/* specify callback to use for incoming connections */
		tcp_accept(lpcb, tcp_server_accept);

	}


	return;
}
