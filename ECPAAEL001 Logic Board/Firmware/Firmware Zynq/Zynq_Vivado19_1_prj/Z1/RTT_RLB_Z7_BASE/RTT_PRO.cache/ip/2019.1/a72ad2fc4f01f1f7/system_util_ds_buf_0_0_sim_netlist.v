// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon Apr 27 15:31:11 2020
// Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_util_ds_buf_0_0_sim_netlist.v
// Design      : system_util_ds_buf_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_util_ds_buf_0_0,util_ds_buf,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "util_ds_buf,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (IBUF_DS_P,
    IBUF_DS_N,
    IBUF_OUT);
  (* x_interface_info = "xilinx.com:interface:diff_clock:1.0 CLK_IN_D CLK_P" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK_IN_D, BOARD.ASSOCIATED_PARAM DIFF_CLK_IN_BOARD_INTERFACE, CAN_DEBUG false, FREQ_HZ 200000000" *) input [0:0]IBUF_DS_P;
  (* x_interface_info = "xilinx.com:interface:diff_clock:1.0 CLK_IN_D CLK_N" *) input [0:0]IBUF_DS_N;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 IBUF_OUT CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME IBUF_OUT, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN system_util_ds_buf_0_0_IBUF_OUT, INSERT_VIP 0" *) output [0:0]IBUF_OUT;

  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) wire [0:0]IBUF_DS_N;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) wire [0:0]IBUF_DS_P;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) wire [0:0]IBUF_OUT;
  wire [0:0]NLW_U0_BUFGCE_O_UNCONNECTED;
  wire [0:0]NLW_U0_BUFG_GT_O_UNCONNECTED;
  wire [0:0]NLW_U0_BUFG_O_UNCONNECTED;
  wire [0:0]NLW_U0_BUFHCE_O_UNCONNECTED;
  wire [0:0]NLW_U0_BUFH_O_UNCONNECTED;
  wire [0:0]NLW_U0_IBUF_DS_ODIV2_UNCONNECTED;
  wire [0:0]NLW_U0_IOBUF_DS_N_UNCONNECTED;
  wire [0:0]NLW_U0_IOBUF_DS_P_UNCONNECTED;
  wire [0:0]NLW_U0_IOBUF_IO_IO_UNCONNECTED;
  wire [0:0]NLW_U0_IOBUF_IO_O_UNCONNECTED;
  wire [0:0]NLW_U0_OBUF_DS_N_UNCONNECTED;
  wire [0:0]NLW_U0_OBUF_DS_P_UNCONNECTED;

  (* C_BUFGCE_DIV = "1" *) 
  (* C_BUF_TYPE = "IBUFDS" *) 
  (* C_SIZE = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_ds_buf U0
       (.BUFGCE_CE(1'b0),
        .BUFGCE_CLR(1'b0),
        .BUFGCE_I(1'b0),
        .BUFGCE_O(NLW_U0_BUFGCE_O_UNCONNECTED[0]),
        .BUFG_GT_CE(1'b0),
        .BUFG_GT_CEMASK(1'b0),
        .BUFG_GT_CLR(1'b0),
        .BUFG_GT_CLRMASK(1'b0),
        .BUFG_GT_DIV({1'b0,1'b0,1'b0}),
        .BUFG_GT_I(1'b0),
        .BUFG_GT_O(NLW_U0_BUFG_GT_O_UNCONNECTED[0]),
        .BUFG_I(1'b0),
        .BUFG_O(NLW_U0_BUFG_O_UNCONNECTED[0]),
        .BUFHCE_CE(1'b0),
        .BUFHCE_I(1'b0),
        .BUFHCE_O(NLW_U0_BUFHCE_O_UNCONNECTED[0]),
        .BUFH_I(1'b0),
        .BUFH_O(NLW_U0_BUFH_O_UNCONNECTED[0]),
        .IBUF_DS_CEB(1'b0),
        .IBUF_DS_N(IBUF_DS_N),
        .IBUF_DS_ODIV2(NLW_U0_IBUF_DS_ODIV2_UNCONNECTED[0]),
        .IBUF_DS_P(IBUF_DS_P),
        .IBUF_OUT(IBUF_OUT),
        .IOBUF_DS_N(NLW_U0_IOBUF_DS_N_UNCONNECTED[0]),
        .IOBUF_DS_P(NLW_U0_IOBUF_DS_P_UNCONNECTED[0]),
        .IOBUF_IO_I(1'b0),
        .IOBUF_IO_IO(NLW_U0_IOBUF_IO_IO_UNCONNECTED[0]),
        .IOBUF_IO_O(NLW_U0_IOBUF_IO_O_UNCONNECTED[0]),
        .IOBUF_IO_T(1'b0),
        .OBUF_DS_N(NLW_U0_OBUF_DS_N_UNCONNECTED[0]),
        .OBUF_DS_P(NLW_U0_OBUF_DS_P_UNCONNECTED[0]),
        .OBUF_IN(1'b0));
endmodule

(* C_BUFGCE_DIV = "1" *) (* C_BUF_TYPE = "IBUFDS" *) (* C_SIZE = "1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_ds_buf
   (IBUF_DS_P,
    IBUF_DS_N,
    IBUF_OUT,
    IBUF_DS_ODIV2,
    IBUF_DS_CEB,
    OBUF_IN,
    OBUF_DS_P,
    OBUF_DS_N,
    IOBUF_DS_P,
    IOBUF_DS_N,
    IOBUF_IO_T,
    IOBUF_IO_I,
    IOBUF_IO_O,
    IOBUF_IO_IO,
    BUFG_I,
    BUFG_O,
    BUFGCE_I,
    BUFGCE_CE,
    BUFGCE_O,
    BUFGCE_CLR,
    BUFH_I,
    BUFH_O,
    BUFHCE_I,
    BUFHCE_CE,
    BUFHCE_O,
    BUFG_GT_I,
    BUFG_GT_CE,
    BUFG_GT_CEMASK,
    BUFG_GT_CLR,
    BUFG_GT_CLRMASK,
    BUFG_GT_DIV,
    BUFG_GT_O);
  input [0:0]IBUF_DS_P;
  input [0:0]IBUF_DS_N;
  output [0:0]IBUF_OUT;
  output [0:0]IBUF_DS_ODIV2;
  input [0:0]IBUF_DS_CEB;
  input [0:0]OBUF_IN;
  output [0:0]OBUF_DS_P;
  output [0:0]OBUF_DS_N;
  inout [0:0]IOBUF_DS_P;
  inout [0:0]IOBUF_DS_N;
  input [0:0]IOBUF_IO_T;
  input [0:0]IOBUF_IO_I;
  output [0:0]IOBUF_IO_O;
  inout [0:0]IOBUF_IO_IO;
  input [0:0]BUFG_I;
  output [0:0]BUFG_O;
  input [0:0]BUFGCE_I;
  input [0:0]BUFGCE_CE;
  output [0:0]BUFGCE_O;
  input [0:0]BUFGCE_CLR;
  input [0:0]BUFH_I;
  output [0:0]BUFH_O;
  input [0:0]BUFHCE_I;
  input [0:0]BUFHCE_CE;
  output [0:0]BUFHCE_O;
  input [0:0]BUFG_GT_I;
  input [0:0]BUFG_GT_CE;
  input [0:0]BUFG_GT_CEMASK;
  input [0:0]BUFG_GT_CLR;
  input [0:0]BUFG_GT_CLRMASK;
  input [2:0]BUFG_GT_DIV;
  output [0:0]BUFG_GT_O;

  wire \<const0> ;
  wire [0:0]IBUF_DS_N;
  wire [0:0]IBUF_DS_P;
  wire [0:0]IBUF_OUT;

  assign BUFGCE_O[0] = IOBUF_DS_P[0];
  assign BUFG_GT_O[0] = IOBUF_DS_P[0];
  assign BUFG_O[0] = IOBUF_DS_P[0];
  assign BUFHCE_O[0] = IOBUF_DS_P[0];
  assign BUFH_O[0] = IOBUF_DS_P[0];
  assign IBUF_DS_ODIV2[0] = IOBUF_DS_P[0];
  assign IOBUF_IO_O[0] = IOBUF_DS_P[0];
  assign OBUF_DS_N[0] = IOBUF_DS_P[0];
  assign OBUF_DS_P[0] = IOBUF_DS_P[0];
  xVIA IOBUF_DS_N_0via (IOBUF_DS_N[0], IOBUF_DS_P[0]);
  GND GND
       (.G(IOBUF_DS_P[0]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \USE_IBUFDS.GEN_IBUFDS[0].IBUFDS_I 
       (.I(IBUF_DS_P),
        .IB(IBUF_DS_N),
        .O(IBUF_OUT));
endmodule
module xVIA(.a(w),.b(w));
inout w;
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
