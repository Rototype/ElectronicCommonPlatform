/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include <sleep.h>
#include "platform.h"
#include "xil_printf.h"
#include "solenoide.h"
#include "DCM.h"
#include "phs.h"
#include "stepper.h"

SOL_t Sol_0;
SOL_t Sol_1;
SOL_t Sol_2;
SOL_t Sol_3;
SOL_t Sol_4;
SOL_t Sol_5;
SOL_t Sol_6;
SOL_t Sol_7;
SOL_t Sol_8;
SOL_t Sol_9;

DCM_t DCM_0;
DCM_t DCM_1;
DCM_t DCM_2;
DCM_t DCM_3;
DCM_t DCM_4;

PHS_t PHS_0;
PHS_t PHS_1;
PHS_t PHS_2;
PHS_t PHS_3;
PHS_t PHS_4;
PHS_t PHS_5;
PHS_t PHS_6;
PHS_t PHS_7;
PHS_t PHS_8;
PHS_t PHS_9;
PHS_t PHS_10;
PHS_t PHS_11;
PHS_t PHS_12;
PHS_t PHS_13;
PHS_t PHS_14;
PHS_t PHS_15;
PHS_t PHS_16;
PHS_t PHS_17;
PHS_t PHS_18;
PHS_t PHS_19;
PHS_t PHS_20;
PHS_t PHS_21;
PHS_t PHS_22;
PHS_t PHS_23;
PHS_t PHS_24;
PHS_t PHS_25;
PHS_t PHS_26;
PHS_t PHS_27;
PHS_t PHS_28;
PHS_t PHS_29;
PHS_t PHS_30;
PHS_t PHS_31;
PHS_t PHS_32;
PHS_t PHS_33;
PHS_t PHS_34;
PHS_t PHS_35;
PHS_t PHS_36;
PHS_t PHS_37;
PHS_t PHS_38;
PHS_t PHS_39;
PHS_t PHS_40;
PHS_t PHS_41;
PHS_t PHS_42;
PHS_t PHS_43;
PHS_t PHS_44;
PHS_t PHS_45;
PHS_t PHS_46;
PHS_t PHS_47;
PHS_t PHS_48;
PHS_t PHS_49;

STEPPER_t SM_0;
STEPPER_t SM_1;
STEPPER_t SM_2;
STEPPER_t SM_3;
STEPPER_t SM_4;
STEPPER_t SM_5;
STEPPER_t SM_6;
STEPPER_t SM_7;
STEPPER_t SM_8;
STEPPER_t SM_9;
STEPPER_t SM_10;
STEPPER_t SM_11;
STEPPER_t SM_12;
STEPPER_t SM_13;
STEPPER_t SM_14;
STEPPER_t SM_15;
STEPPER_t SM_16;
STEPPER_t SM_17;
STEPPER_t SM_18;
STEPPER_t SM_19;


int main()
{
    init_platform();

    SOL_Init( &Sol_0);
    SOL_Init( &Sol_1);
    SOL_Init( &Sol_2);
    SOL_Init( &Sol_3);
    SOL_Init( &Sol_4);
    SOL_Init( &Sol_5);
    SOL_Init( &Sol_6);
    SOL_Init( &Sol_7);
    SOL_Init( &Sol_8);
    SOL_Init( &Sol_9);

    DCM_Init( &DCM_0);
    DCM_Init( &DCM_1);
    DCM_Init( &DCM_2);
    DCM_Init( &DCM_3);
    DCM_Init( &DCM_4);

    PHS_Init( &PHS_0);
    PHS_Init( &PHS_1);
    PHS_Init( &PHS_2);
    PHS_Init( &PHS_3);
    PHS_Init( &PHS_4);
    PHS_Init( &PHS_5);
    PHS_Init( &PHS_6);
    PHS_Init( &PHS_7);
    PHS_Init( &PHS_8);
    PHS_Init( &PHS_9);
    PHS_Init( &PHS_10);
    PHS_Init( &PHS_11);
    PHS_Init( &PHS_12);
    PHS_Init( &PHS_13);
    PHS_Init( &PHS_14);
    PHS_Init( &PHS_15);
    PHS_Init( &PHS_16);
    PHS_Init( &PHS_17);
    PHS_Init( &PHS_18);
    PHS_Init( &PHS_19);
    PHS_Init( &PHS_20);
    PHS_Init( &PHS_21);
    PHS_Init( &PHS_22);
    PHS_Init( &PHS_23);
    PHS_Init( &PHS_24);
    PHS_Init( &PHS_25);
    PHS_Init( &PHS_26);
    PHS_Init( &PHS_27);
    PHS_Init( &PHS_28);
    PHS_Init( &PHS_29);
    PHS_Init( &PHS_30);
    PHS_Init( &PHS_31);
    PHS_Init( &PHS_32);
    PHS_Init( &PHS_33);
    PHS_Init( &PHS_34);
    PHS_Init( &PHS_35);
    PHS_Init( &PHS_36);
    PHS_Init( &PHS_37);
    PHS_Init( &PHS_38);
    PHS_Init( &PHS_39);
    PHS_Init( &PHS_40);
    PHS_Init( &PHS_41);
    PHS_Init( &PHS_42);
    PHS_Init( &PHS_43);
    PHS_Init( &PHS_44);
    PHS_Init( &PHS_45);
    PHS_Init( &PHS_46);
    PHS_Init( &PHS_47);
    PHS_Init( &PHS_48);
    PHS_Init( &PHS_49);

    STEPPER_Init( &SM_0);
    STEPPER_Init( &SM_1);
    STEPPER_Init( &SM_2);
    STEPPER_Init( &SM_3);
    STEPPER_Init( &SM_4);
    STEPPER_Init( &SM_5);
    STEPPER_Init( &SM_6);
    STEPPER_Init( &SM_7);
    STEPPER_Init( &SM_8);
    STEPPER_Init( &SM_9);
    STEPPER_Init( &SM_10);
    STEPPER_Init( &SM_11);
    STEPPER_Init( &SM_12);
    STEPPER_Init( &SM_13);
    STEPPER_Init( &SM_14);
    STEPPER_Init( &SM_15);
    STEPPER_Init( &SM_16);
    STEPPER_Init( &SM_17);
    STEPPER_Init( &SM_18);
    STEPPER_Init( &SM_19);

    SOL_Configure( &Sol_0,  XPAR_SOL_1_SOL_REGS_0_S00_AXI_BASEADDR,  0);
    SOL_Configure( &Sol_1,  XPAR_SOL_1_SOL_REGS_0_S00_AXI_BASEADDR,  1);
    SOL_Configure( &Sol_2,  XPAR_SOL_1_SOL_REGS_0_S00_AXI_BASEADDR,  2);
    SOL_Configure( &Sol_3,  XPAR_SOL_1_SOL_REGS_0_S00_AXI_BASEADDR,  3);
    SOL_Configure( &Sol_4,  XPAR_SOL_1_SOL_REGS_0_S00_AXI_BASEADDR,  4);
    SOL_Configure( &Sol_5,  XPAR_SOL_1_SOL_REGS_0_S00_AXI_BASEADDR,  5);
    SOL_Configure( &Sol_6,  XPAR_SOL_1_SOL_REGS_0_S00_AXI_BASEADDR,  6);
    SOL_Configure( &Sol_7,  XPAR_SOL_1_SOL_REGS_0_S00_AXI_BASEADDR,  7);
    SOL_Configure( &Sol_8,  XPAR_SOL_1_SOL_REGS_0_S00_AXI_BASEADDR,  8);
    SOL_Configure( &Sol_9,  XPAR_SOL_1_SOL_REGS_0_S00_AXI_BASEADDR,  9);

    DCM_Configure( &DCM_0,  XPAR_DCM_1_DCM_REGS_0_S00_AXI_BASEADDR,  0);
    DCM_Configure( &DCM_1,  XPAR_DCM_1_DCM_REGS_0_S00_AXI_BASEADDR,  1);
    DCM_Configure( &DCM_2,  XPAR_DCM_1_DCM_REGS_0_S00_AXI_BASEADDR,  2);
    DCM_Configure( &DCM_3,  XPAR_DCM_1_DCM_REGS_0_S00_AXI_BASEADDR,  3);
    DCM_Configure( &DCM_4,  XPAR_DCM_1_DCM_REGS_0_S00_AXI_BASEADDR,  4);

    PHS_Configure( &PHS_0,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  0);
    PHS_Configure( &PHS_1,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  1);
    PHS_Configure( &PHS_2,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  2);
    PHS_Configure( &PHS_3,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  3);
    PHS_Configure( &PHS_4,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  4);
    PHS_Configure( &PHS_5,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  5);
    PHS_Configure( &PHS_6,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  6);
    PHS_Configure( &PHS_7,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  7);
    PHS_Configure( &PHS_8,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  8);
    PHS_Configure( &PHS_9,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  9);
    PHS_Configure(&PHS_10,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  10);
    PHS_Configure(&PHS_11,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  11);
    PHS_Configure(&PHS_12,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  12);
    PHS_Configure(&PHS_13,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  13);
    PHS_Configure(&PHS_14,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  14);
    PHS_Configure(&PHS_15,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  15);
    PHS_Configure(&PHS_16,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  16);
    PHS_Configure(&PHS_17,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  17);
    PHS_Configure(&PHS_18,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  18);
    PHS_Configure(&PHS_19,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  19);
    PHS_Configure(&PHS_20,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  20);
    PHS_Configure(&PHS_21,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  21);
    PHS_Configure(&PHS_22,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  22);
    PHS_Configure(&PHS_23,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  23);
    PHS_Configure(&PHS_24,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  24);
    PHS_Configure(&PHS_25,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  25);
    PHS_Configure(&PHS_26,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  26);
    PHS_Configure(&PHS_27,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  27);
    PHS_Configure(&PHS_28,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  28);
    PHS_Configure(&PHS_29,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  29);
    PHS_Configure(&PHS_30,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  30);
    PHS_Configure(&PHS_31,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  31);
    PHS_Configure(&PHS_32,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  32);
    PHS_Configure(&PHS_33,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  33);
    PHS_Configure(&PHS_34,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  34);
    PHS_Configure(&PHS_35,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  35);
    PHS_Configure(&PHS_36,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  36);
    PHS_Configure(&PHS_37,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  37);
    PHS_Configure(&PHS_38,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  38);
    PHS_Configure(&PHS_39,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  39);
    PHS_Configure(&PHS_40,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  40);
    PHS_Configure(&PHS_41,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  41);
    PHS_Configure(&PHS_42,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  42);
    PHS_Configure(&PHS_43,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  43);
    PHS_Configure(&PHS_44,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  44);
    PHS_Configure(&PHS_45,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  45);
    PHS_Configure(&PHS_46,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  46);
    PHS_Configure(&PHS_47,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  47);
    PHS_Configure(&PHS_48,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  48);
    PHS_Configure(&PHS_19,  XPAR_PHS_50_PHS_REGS_0_S00_AXI_BASEADDR,  49);

    STEPPER_Configure( &SM_0,  XPAR_SM_20_SM_REGS_0_S00_AXI_BASEADDR,  0);
    STEPPER_Configure( &SM_1,  XPAR_SM_20_SM_REGS_0_S00_AXI_BASEADDR,  1);
    STEPPER_Configure( &SM_2,  XPAR_SM_20_SM_REGS_0_S00_AXI_BASEADDR,  2);
    STEPPER_Configure( &SM_3,  XPAR_SM_20_SM_REGS_0_S00_AXI_BASEADDR,  3);
    STEPPER_Configure( &SM_4,  XPAR_SM_20_SM_REGS_0_S00_AXI_BASEADDR,  4);
    STEPPER_Configure( &SM_5,  XPAR_SM_20_SM_REGS_0_S00_AXI_BASEADDR,  5);
    STEPPER_Configure( &SM_6,  XPAR_SM_20_SM_REGS_0_S00_AXI_BASEADDR,  6);
    STEPPER_Configure( &SM_7,  XPAR_SM_20_SM_REGS_0_S00_AXI_BASEADDR,  7);
    STEPPER_Configure( &SM_8,  XPAR_SM_20_SM_REGS_0_S00_AXI_BASEADDR,  8);
    STEPPER_Configure( &SM_9,  XPAR_SM_20_SM_REGS_0_S00_AXI_BASEADDR,  9);
    STEPPER_Configure(&SM_10,  XPAR_SM_20_SM_REGS_0_S00_AXI_BASEADDR,  10);
    STEPPER_Configure(&SM_11,  XPAR_SM_20_SM_REGS_0_S00_AXI_BASEADDR,  11);
    STEPPER_Configure(&SM_12,  XPAR_SM_20_SM_REGS_0_S00_AXI_BASEADDR,  12);
    STEPPER_Configure(&SM_13,  XPAR_SM_20_SM_REGS_0_S00_AXI_BASEADDR,  13);
    STEPPER_Configure(&SM_14,  XPAR_SM_20_SM_REGS_0_S00_AXI_BASEADDR,  14);
    STEPPER_Configure(&SM_15,  XPAR_SM_20_SM_REGS_0_S00_AXI_BASEADDR,  15);
    STEPPER_Configure(&SM_16,  XPAR_SM_20_SM_REGS_0_S00_AXI_BASEADDR,  16);
    STEPPER_Configure(&SM_17,  XPAR_SM_20_SM_REGS_0_S00_AXI_BASEADDR,  17);
    STEPPER_Configure(&SM_18,  XPAR_SM_20_SM_REGS_0_S00_AXI_BASEADDR,  18);
    STEPPER_Configure(&SM_19,  XPAR_SM_20_SM_REGS_0_S00_AXI_BASEADDR,  19);
    //--------------------------------------------

    PHS_status_t phs_val;
    phs_val = PHS_GetStatusValue(&PHS_1);

    PHS_SetPWMValue(&PHS_1, 800);
    u16 phs_pwm;
    phs_pwm = PHS_GetPWMValue(&PHS_1);

    usleep(1000);

	while (1)
	{
	    if (PHS_GetStatusValue(&PHS_1) == LIGHT)
		{
	    	break;
		}
	    usleep(1000);
	}

    //--------------------------------------------

	// steps = 800 slow

	u8  SM_isrun = 0;
	u32 SM_steps = 0;
	STEPPER_Direction_t  SM_dir = STEPPER_CLOCKWISE;

// Slow step Position control; 10x360° at different speeds ----------------------------------------------------------------------

    for (int l = 0; l < 10; l++)
	{
		STEPPER_SetLoad(&SM_1,STEPPER_ENABLE_FULL);
		STEPPER_SetStepNumber(&SM_1,200);
		STEPPER_SetInitialSpeed(&SM_1,(80 + l*100));
		STEPPER_SetDirection(&SM_1, SM_dir);
		STEPPER_SetStepSlow(&SM_1);
		STEPPER_CleanStepSlow(&SM_1);


		u16 k = 0;
		while (1)
		{
			SM_isrun = STEPPER_IsRunning(&SM_1);
			if (SM_isrun == 0x00)
			{
				break;
			}
			k++;
			if (k == 1000)
			{
				SM_steps = STEPPER_GetCurrStepNum(&SM_1);
				usleep(1);
			}
			usleep(1000);
		}
		usleep(500000);

		if (SM_dir == STEPPER_CLOCKWISE)
		{
			SM_dir =STEPPER_COUNTERCLOCKWISE;
		}
		else
		{
			SM_dir =STEPPER_CLOCKWISE;
		}

		SM_steps = STEPPER_GetCurrStepNum(&SM_1);
		usleep(1);
	}

// Speed control: wait speed status STEADY goes TRUE before to issue a new speed variation ----------------------------------------------------------------------

	STEPPER_SetInitialSpeed(&SM_1,200);
	STEPPER_SetMaxAcceleration (&SM_1,1000);

	STEPPER_SetTargetSpeed  (&SM_1,2000);
	STEPPER_SetStart(&SM_1);
	STEPPER_CleanStart(&SM_1);
	while (1)
	{
	    if (STEPPER_IsRunning(&SM_1) == 0x03)
		{
	    	break;
		}
	    usleep(1000);
	}

	STEPPER_SetTargetSpeed  (&SM_1,100);
	STEPPER_SetSpeedChange(&SM_1);
	STEPPER_CleanSpeedChange(&SM_1);
	while (1)
	{
	    if (STEPPER_IsRunning(&SM_1) == 0x03)
		{
	    	break;
		}
	    usleep(1000);
	}

	STEPPER_SetTargetSpeed  (&SM_1,3000);
	STEPPER_SetSpeedChange(&SM_1);
	STEPPER_CleanSpeedChange(&SM_1);
	while (1)
	{
	    if (STEPPER_IsRunning(&SM_1) == 0x03)
		{
	    	break;
		}
	    usleep(1000);
	}

    STEPPER_SetStop(&SM_1);
    STEPPER_CleanStop(&SM_1);
	while (1)
	{
	    if (STEPPER_IsRunning(&SM_1) == 0x00)
		{
	    	break;
		}
	    usleep(1000);
	}
    usleep(2000000);

// fast step Position control; 1x3600° at little acceleration (200) ----------------------------------------------------------------------

	// Acc= 200, steps = 20000 fast
	STEPPER_SetStepNumber(&SM_1,2000);
	STEPPER_SetInitialSpeed(&SM_1,200);
	STEPPER_SetMaxAcceleration (&SM_1,100);
	STEPPER_SetTargetSpeed  (&SM_1,5000);
	STEPPER_SetStepFast(&SM_1);
	STEPPER_CleanStepFast(&SM_1);
	while (1)
	{
	    if (STEPPER_IsRunning(&SM_1) == 0x00)
		{
	    	break;
		}
	    usleep(1000);
	}
    usleep(2000000);

    SM_steps = STEPPER_GetCurrStepNum(&SM_1);
    usleep(1);


// fast step Position control; 1x3600° at medium acceleration (500) ----------------------------------------------------------------------

	// Acc= 500, steps = 20000 fast
	STEPPER_SetStepNumber(&SM_1,20000);
	STEPPER_SetInitialSpeed(&SM_1,200);
	STEPPER_SetMaxAcceleration (&SM_1,500);
	STEPPER_SetTargetSpeed  (&SM_1,5000);
	STEPPER_SetStepFast(&SM_1);
	STEPPER_CleanStepFast(&SM_1);
	while (1)
	{
	    if (STEPPER_IsRunning(&SM_1) == 0x00)
		{
	    	break;
		}
	    usleep(1000);
	}
    usleep(2000000);


// fast step Position control; 1x3600° at medium acceleration (2000) ----------------------------------------------------------------------

	// Acc= 200, steps = 20000 fast
	STEPPER_SetStepNumber(&SM_1,20000);
	STEPPER_SetInitialSpeed(&SM_1,200);
	STEPPER_SetMaxAcceleration (&SM_1,2000);
	STEPPER_SetTargetSpeed  (&SM_1,5000);
	STEPPER_SetStepFast(&SM_1);
	STEPPER_CleanStepFast(&SM_1);
	while (1)
	{
		SM_isrun = STEPPER_IsRunning(&SM_1);
	    if (SM_isrun == 0x00)
		{
	    	break;
		}
	    usleep(1000);
	}
    usleep(2000000);



    //--------------------------------------------

    SOL_SetPWMValue( &Sol_1, 20); // % [0..100]
    SOL_SetFullLoadDuration(&Sol_1, 400); // mS[0..2048]

    int i;
    int j;

    for(i=0;i<5;i++)
    {
		SOL_SetRunning(&Sol_1);

		j=0;
		do {
			usleep(1000);
		    if (PHS_GetStatusValue(&PHS_1) == LIGHT)
			{
		    	j++;
			}
		} while (j < 300);

		SOL_ClearRunning(&Sol_1);

		j=0;
		do {
			usleep(1000);
		    if (PHS_GetStatusValue(&PHS_1) == LIGHT)
			{
		    	j++;
			}
		} while (j < 200);
		usleep(300000);
    }

    //--------------------------------------------

    DCM_SetDirection(&DCM_1, CLOCKWISE);
    DCM_SetPWMFrequency(&DCM_1, 50);  // KHz

    DCM_SetPWMValue(&DCM_1, 75); // % [0..100]
    DCM_SetRun(&DCM_1);

	j=0;
	do {
		usleep(1000);
	    if (PHS_GetStatusValue(&PHS_1) == LIGHT)
		{
	        DCM_SetRun(&DCM_1);
	    	j++;
		}
	    else
	    {
	        DCM_ClearRun(&DCM_1);
	    }
	} while (j < 700);

    DCM_SetPWMValue(&DCM_1, 100); // % [0..100]

	j=0;
	do {
		usleep(1000);
	    if (PHS_GetStatusValue(&PHS_1) == LIGHT)
		{
	        DCM_SetRun(&DCM_1);
	    	j++;
		}
	    else
	    {
	        DCM_ClearRun(&DCM_1);
	    }
	} while (j < 1400);

    DCM_SetPWMValue(&DCM_1, 75); // % [0..100]

	j=0;
	do {
		usleep(1000);
	    if (PHS_GetStatusValue(&PHS_1) == LIGHT)
		{
	        DCM_SetRun(&DCM_1);
	    	j++;
		}
	    else
	    {
	        DCM_ClearRun(&DCM_1);
	    }
	} while (j < 1400);


    DCM_ClearRun(&DCM_1);

    //--------------------------------------------

    PHS_SetPWMValue(&PHS_1, 0);
	STEPPER_SetLoad(&SM_1,STEPPER_DISABLE);
    //--------------------------------------------

    SOL_Cleanup( &Sol_0);
    SOL_Cleanup( &Sol_1);
    SOL_Cleanup( &Sol_2);
    SOL_Cleanup( &Sol_3);
    SOL_Cleanup( &Sol_4);
    SOL_Cleanup( &Sol_5);
    SOL_Cleanup( &Sol_6);
    SOL_Cleanup( &Sol_7);
    SOL_Cleanup( &Sol_8);
    SOL_Cleanup( &Sol_9);

    DCM_Cleanup( &DCM_0);
    DCM_Cleanup( &DCM_1);
    DCM_Cleanup( &DCM_2);
    DCM_Cleanup( &DCM_3);
    DCM_Cleanup( &DCM_4);

    PHS_Cleanup( &PHS_0);
    PHS_Cleanup( &PHS_1);
    PHS_Cleanup( &PHS_2);
    PHS_Cleanup( &PHS_3);
    PHS_Cleanup( &PHS_4);
    PHS_Cleanup( &PHS_5);
    PHS_Cleanup( &PHS_6);
    PHS_Cleanup( &PHS_7);
    PHS_Cleanup( &PHS_8);
    PHS_Cleanup( &PHS_9);
    PHS_Cleanup( &PHS_10);
    PHS_Cleanup( &PHS_11);
    PHS_Cleanup( &PHS_12);
    PHS_Cleanup( &PHS_13);
    PHS_Cleanup( &PHS_14);
    PHS_Cleanup( &PHS_15);
    PHS_Cleanup( &PHS_16);
    PHS_Cleanup( &PHS_17);
    PHS_Cleanup( &PHS_18);
    PHS_Cleanup( &PHS_19);
    PHS_Cleanup( &PHS_20);
    PHS_Cleanup( &PHS_21);
    PHS_Cleanup( &PHS_22);
    PHS_Cleanup( &PHS_23);
    PHS_Cleanup( &PHS_24);
    PHS_Cleanup( &PHS_25);
    PHS_Cleanup( &PHS_26);
    PHS_Cleanup( &PHS_27);
    PHS_Cleanup( &PHS_28);
    PHS_Cleanup( &PHS_29);
    PHS_Cleanup( &PHS_30);
    PHS_Cleanup( &PHS_31);
    PHS_Cleanup( &PHS_32);
    PHS_Cleanup( &PHS_33);
    PHS_Cleanup( &PHS_34);
    PHS_Cleanup( &PHS_35);
    PHS_Cleanup( &PHS_36);
    PHS_Cleanup( &PHS_37);
    PHS_Cleanup( &PHS_38);
    PHS_Cleanup( &PHS_39);
    PHS_Cleanup( &PHS_40);
    PHS_Cleanup( &PHS_41);
    PHS_Cleanup( &PHS_42);
    PHS_Cleanup( &PHS_43);
    PHS_Cleanup( &PHS_44);
    PHS_Cleanup( &PHS_45);
    PHS_Cleanup( &PHS_46);
    PHS_Cleanup( &PHS_47);
    PHS_Cleanup( &PHS_48);
    PHS_Cleanup( &PHS_49);

    STEPPER_Cleanup( &SM_0);
    STEPPER_Cleanup( &SM_1);
    STEPPER_Cleanup( &SM_2);
    STEPPER_Cleanup( &SM_3);
    STEPPER_Cleanup( &SM_4);
    STEPPER_Cleanup( &SM_5);
    STEPPER_Cleanup( &SM_6);
    STEPPER_Cleanup( &SM_7);
    STEPPER_Cleanup( &SM_8);
    STEPPER_Cleanup( &SM_9);
    STEPPER_Cleanup( &SM_10);
    STEPPER_Cleanup( &SM_11);
    STEPPER_Cleanup( &SM_12);
    STEPPER_Cleanup( &SM_13);
    STEPPER_Cleanup( &SM_14);
    STEPPER_Cleanup( &SM_15);
    STEPPER_Cleanup( &SM_16);
    STEPPER_Cleanup( &SM_17);
    STEPPER_Cleanup( &SM_18);
    STEPPER_Cleanup( &SM_19);

    cleanup_platform();
    return 0;
}
