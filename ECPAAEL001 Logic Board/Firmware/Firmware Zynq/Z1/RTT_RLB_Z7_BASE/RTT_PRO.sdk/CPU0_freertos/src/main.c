#include <stdio.h>

#include "FreeRTOS.h"
#include "xil_types.h"

#include "xil_printf.h"

#include "common.h"
#include "task_phs.h"
#include "task_sm.h"
#include "task_object.h"
#include "task_sol.h"
#include "task_dcm.h"
#include "task_spi.h"
#include "task_xadc.h"
#include "task_dout.h"
#include "task_hwcc.h"
#include "task_cpu1.h"
#include "xil_io.h"



////////////////////////////////////////////////////////////////////////////////
//NOTE: all configASSERT in files of folder "tasks" have been commented  		// 20210625: previously redefined
////////////////////////////////////////////////////////////////////////////////



/*****************/
/* main function */
/*****************/

int main()
{
    u32 status  = PASS;		/* status of the current initialisation */
    u32 success = PASS;		/* status of the global initialisation process */

    xil_printf("MAIN - START\n\r");

    /* configuration required to put zynq in tri-state after boot */
    {
    	u32 value;

    	/* UNLOCK write to System Level Control Registers */
    	Xil_Out32(0xF8000008, 0xDF0D);

    	/* MIO Pin 1 Control */
    	value = Xil_In32(0xF8000704);   xil_printf("\n\rMIO1:            %8x ->", value);
    	value = value & 0xFFFFFF01;
    	value = value | 0x00000001;
    	Xil_Out32(0xF8000704, value);
    	value = Xil_In32(0xF8000704);   xil_printf(" %8x\n\r", value);

    	/* MIO Pin 2 Control */
    	value = Xil_In32(0xF8000708);   xil_printf("MIO2:            %8x ->", value);
    	value = value & 0xFFFFFF01;
    	value = value | 0x00000001;
    	Xil_Out32(0xF8000708, value);
    	value = Xil_In32(0xF8000708);   xil_printf(" %8x\n\r", value);

    	/* MIO Pin 3 Control */
    	value = Xil_In32(0xF800070C);   xil_printf("MIO3:            %8x ->", value);
    	value = value & 0xFFFFFF01;
    	value = value | 0x00000001;
    	Xil_Out32(0xF800070C, value);
    	value = Xil_In32(0xF800070C);   xil_printf(" %8x\n\r", value);

    	/* MIO Pin 4 Control */
    	value = Xil_In32(0xF8000710);   xil_printf("MIO4:            %8x ->", value);
    	value = value & 0xFFFFFF01;
    	value = value | 0x00000001;
    	Xil_Out32(0xF8000710, value);
    	value = Xil_In32(0xF8000710);   xil_printf(" %8x\n\r", value);

    	/* MIO Pin 5 Control */
    	value = Xil_In32(0xF8000714);   xil_printf("MIO5:            %8x ->", value);
    	value = value & 0xFFFFFF01;
    	value = value | 0x00000001;
    	Xil_Out32(0xF8000714, value);
    	value = Xil_In32(0xF8000714);   xil_printf(" %8x\n\r", value);

    	/* MIO Pin 6 Control */
    	value = Xil_In32(0xF8000718);   xil_printf("MIO6:            %8x ->", value);
    	value = value & 0xFFFFFF01;
    	value = value | 0x00000001;
    	Xil_Out32(0xF8000718, value);
    	value = Xil_In32(0xF8000718);   xil_printf(" %8x\n\r", value);

    	/* QSPI configuration register */
    	value = Xil_In32(0xE000D000);	xil_printf("QSPI config reg: %8x ->", value);
    	value = value & 0x7FFFFFFF;
    	value = value | 0x00008406;
    	Xil_Out32(0xE000D000, value);
    	value = Xil_In32(0xE000D000);	xil_printf(" %8x\n\r", value);

    	/* Quad SPI Ref Clock Control */
    	value = Xil_In32(0xF800014C);	xil_printf("QSPI clk reg:    %8x ->", value);
    	value = value & 0xFFFFFFFE;
    	Xil_Out32(0xF800014C, value);
    	value = Xil_In32(0xF800014C);	xil_printf(" %8x\n\r", value);

    	/* LOCK write to System Level Control Registers */
    	Xil_Out32(0xF8000004, 0x767B);
    }

    /* initialise CPU1 task */
    status = TASK_CPU1_Initialize();
    success = success && status;

    /* initialise PHS */
    status = TASK_PHS_Initialize();
    success = success && status;

    /* initialise SM */
    status = TASK_SM_Initialize();
    success = success && status;

    /* initialise SOL */
    status = TASK_SOL_Initialize();
    success = success && status;

    /* initialise DCM */
    status = TASK_DCM_Initialize();
    success = success && status;

    /* initialise XADC */
    status = TASK_XADC_Initialize();
    success = success && status;

    /* initialise DOUT */
    status = TASK_DOUT_Initialize();
    success = success && status;

    /* initialise HWCC */
    status = TASK_HWCC_Initialize();
    success = success && status;

    /* initialise object #1 and #2 */
    status = TASK_OBJ_Initialize();
    success = success && status;

    /* initialise SPI */
    TASK_SPI_Initialize();
    success = success && status;

    if (success == PASS)
    {
        /* Start the tasks and timer running. */
        vTaskStartScheduler();
    }

    return (-1);
}