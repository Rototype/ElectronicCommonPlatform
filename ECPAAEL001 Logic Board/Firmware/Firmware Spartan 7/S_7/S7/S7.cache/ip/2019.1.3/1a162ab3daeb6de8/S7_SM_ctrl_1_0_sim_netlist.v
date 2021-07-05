// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
// Date        : Mon Oct 12 11:19:15 2020
// Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ S7_SM_ctrl_1_0_sim_netlist.v
// Design      : S7_SM_ctrl_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s100fgga676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "S7_SM_ctrl_1_0,SM_ctrl,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "SM_ctrl,Vivado 2019.1.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aresetn,
    clk200,
    tgt_ACC,
    tgt_EC,
    dir,
    ena_load,
    res,
    init_EC,
    cnt_o,
    cnt_i,
    ramp_up,
    ramp_dwn,
    spd_chg,
    slw_stps,
    fst_stps,
    running,
    irq_mask,
    irq_in,
    irq_clr,
    vld_in,
    vld_out,
    port_ref,
    port_clk,
    port_ena,
    port_dir,
    port_m2P,
    port_m1P,
    smc_ACC,
    smc_EC,
    smc_RM,
    smc_req,
    smc_Next_EC,
    smc_Next_RM,
    smc_ack,
    dbg_ref,
    dbg_clk,
    dbg_ena,
    dbg_dir,
    dbg_m2P,
    dbg_m1P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN S7_util_ds_buf_0_0_IBUF_OUT, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk200 CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk200, ASSOCIATED_RESET aresetn, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN S7_util_ds_buf_0_0_IBUF_OUT, INSERT_VIP 0" *) input clk200;
  (* x_interface_info = "mindway:user:SM_reg_if:1.0 SM_reg_if tgt_ACC" *) input [23:0]tgt_ACC;
  (* x_interface_info = "mindway:user:SM_reg_if:1.0 SM_reg_if tgt_EC" *) input [21:0]tgt_EC;
  (* x_interface_info = "mindway:user:SM_reg_if:1.0 SM_reg_if dir" *) input dir;
  (* x_interface_info = "mindway:user:SM_reg_if:1.0 SM_reg_if load" *) input [1:0]ena_load;
  (* x_interface_info = "mindway:user:SM_reg_if:1.0 SM_reg_if res" *) input [1:0]res;
  (* x_interface_info = "mindway:user:SM_reg_if:1.0 SM_reg_if init_EC" *) input [21:0]init_EC;
  (* x_interface_info = "mindway:user:SM_reg_if:1.0 SM_reg_if cnt_o" *) input [31:0]cnt_o;
  (* x_interface_info = "mindway:user:SM_reg_if:1.0 SM_reg_if cnt_i" *) output [31:0]cnt_i;
  (* x_interface_info = "mindway:user:SM_reg_if:1.0 SM_reg_if ramp_up" *) input ramp_up;
  (* x_interface_info = "mindway:user:SM_reg_if:1.0 SM_reg_if ramp_dwn" *) input ramp_dwn;
  (* x_interface_info = "mindway:user:SM_reg_if:1.0 SM_reg_if spd_chg" *) input spd_chg;
  (* x_interface_info = "mindway:user:SM_reg_if:1.0 SM_reg_if slw_stps" *) input slw_stps;
  (* x_interface_info = "mindway:user:SM_reg_if:1.0 SM_reg_if fst_stps" *) input fst_stps;
  (* x_interface_info = "mindway:user:SM_reg_if:1.0 SM_reg_if running" *) output [1:0]running;
  (* x_interface_info = "mindway:user:SM_reg_if:1.0 SM_reg_if irq_mask" *) input irq_mask;
  (* x_interface_info = "mindway:user:SM_reg_if:1.0 SM_reg_if irq_in" *) output irq_in;
  (* x_interface_info = "mindway:user:SM_reg_if:1.0 SM_reg_if irq_clr" *) input irq_clr;
  (* x_interface_info = "mindway:user:SM_reg_if:1.0 SM_reg_if vld_in" *) output vld_in;
  (* x_interface_info = "mindway:user:SM_reg_if:1.0 SM_reg_if vld_out" *) input vld_out;
  (* x_interface_info = "xilinx.com:user:SM_IOs:1.0 SM_IO ref" *) output port_ref;
  (* x_interface_info = "xilinx.com:user:SM_IOs:1.0 SM_IO clk" *) output port_clk;
  (* x_interface_info = "xilinx.com:user:SM_IOs:1.0 SM_IO ena" *) output port_ena;
  (* x_interface_info = "xilinx.com:user:SM_IOs:1.0 SM_IO dir" *) output port_dir;
  (* x_interface_info = "xilinx.com:user:SM_IOs:1.0 SM_IO m2p" *) output port_m2P;
  (* x_interface_info = "xilinx.com:user:SM_IOs:1.0 SM_IO m1p" *) output port_m1P;
  (* x_interface_info = "mindway:user:SM_alg_if:1.0 smc ACC" *) output [21:0]smc_ACC;
  (* x_interface_info = "mindway:user:SM_alg_if:1.0 smc EC" *) output [21:0]smc_EC;
  (* x_interface_info = "mindway:user:SM_alg_if:1.0 smc RM" *) output [15:0]smc_RM;
  (* x_interface_info = "mindway:user:SM_alg_if:1.0 smc REQ" *) output smc_req;
  (* x_interface_info = "mindway:user:SM_alg_if:1.0 smc Next_EC" *) input [21:0]smc_Next_EC;
  (* x_interface_info = "mindway:user:SM_alg_if:1.0 smc Next_RM" *) input [15:0]smc_Next_RM;
  (* x_interface_info = "mindway:user:SM_alg_if:1.0 smc ACK" *) input smc_ack;
  (* x_interface_info = "xilinx.com:user:SM_IOs:1.0 dbg ref" *) output dbg_ref;
  (* x_interface_info = "xilinx.com:user:SM_IOs:1.0 dbg clk" *) output dbg_clk;
  (* x_interface_info = "xilinx.com:user:SM_IOs:1.0 dbg ena" *) output dbg_ena;
  (* x_interface_info = "xilinx.com:user:SM_IOs:1.0 dbg dir" *) output dbg_dir;
  (* x_interface_info = "xilinx.com:user:SM_IOs:1.0 dbg m2p" *) output dbg_m2P;
  (* x_interface_info = "xilinx.com:user:SM_IOs:1.0 dbg m1p" *) output dbg_m1P;

  wire aclk;
  wire aresetn;
  wire clk200;
  wire [31:0]cnt_i;
  wire [31:0]cnt_o;
  wire dbg_clk;
  wire dbg_dir;
  wire dbg_ena;
  wire dbg_m1P;
  wire dbg_m2P;
  wire dbg_ref;
  wire dir;
  wire [1:0]ena_load;
  wire fst_stps;
  wire [21:0]init_EC;
  wire irq_clr;
  wire irq_in;
  wire irq_mask;
  wire port_clk;
  wire port_dir;
  wire port_ena;
  wire port_m1P;
  wire port_m2P;
  wire port_ref;
  wire ramp_dwn;
  wire ramp_up;
  wire [1:0]res;
  wire [1:0]running;
  wire slw_stps;
  wire [21:0]smc_ACC;
  wire [21:0]smc_EC;
  wire [21:0]smc_Next_EC;
  wire [15:0]smc_Next_RM;
  wire [15:0]smc_RM;
  wire smc_ack;
  wire smc_req;
  wire spd_chg;
  wire [23:0]tgt_ACC;
  wire [21:0]tgt_EC;
  wire vld_in;
  wire vld_out;

  (* PRESENT = "0" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SM_ctrl U0
       (.aclk(aclk),
        .aresetn(aresetn),
        .clk200(clk200),
        .cnt_i(cnt_i),
        .cnt_o(cnt_o),
        .dbg_clk(dbg_clk),
        .dbg_dir(dbg_dir),
        .dbg_ena(dbg_ena),
        .dbg_m1P(dbg_m1P),
        .dbg_m2P(dbg_m2P),
        .dbg_ref(dbg_ref),
        .dir(dir),
        .ena_load(ena_load),
        .fst_stps(fst_stps),
        .init_EC(init_EC),
        .irq_clr(irq_clr),
        .irq_in(irq_in),
        .irq_mask(irq_mask),
        .port_clk(port_clk),
        .port_dir(port_dir),
        .port_ena(port_ena),
        .port_m1P(port_m1P),
        .port_m2P(port_m2P),
        .port_ref(port_ref),
        .ramp_dwn(ramp_dwn),
        .ramp_up(ramp_up),
        .res(res),
        .running(running),
        .slw_stps(slw_stps),
        .smc_ACC(smc_ACC),
        .smc_EC(smc_EC),
        .smc_Next_EC(smc_Next_EC),
        .smc_Next_RM(smc_Next_RM),
        .smc_RM(smc_RM),
        .smc_ack(smc_ack),
        .smc_req(smc_req),
        .spd_chg(spd_chg),
        .tgt_ACC(tgt_ACC),
        .tgt_EC(tgt_EC),
        .vld_in(vld_in),
        .vld_out(vld_out));
endmodule

(* PRESENT = "0" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SM_ctrl
   (aclk,
    aresetn,
    clk200,
    tgt_ACC,
    tgt_EC,
    dir,
    ena_load,
    res,
    init_EC,
    cnt_o,
    cnt_i,
    ramp_up,
    ramp_dwn,
    spd_chg,
    slw_stps,
    fst_stps,
    running,
    irq_mask,
    irq_in,
    irq_clr,
    vld_in,
    vld_out,
    port_ref,
    port_clk,
    port_ena,
    port_dir,
    port_m2P,
    port_m1P,
    smc_ACC,
    smc_EC,
    smc_RM,
    smc_req,
    smc_Next_EC,
    smc_Next_RM,
    smc_ack,
    dbg_ref,
    dbg_clk,
    dbg_ena,
    dbg_dir,
    dbg_m2P,
    dbg_m1P);
  input aclk;
  input aresetn;
  input clk200;
  input [23:0]tgt_ACC;
  input [21:0]tgt_EC;
  input dir;
  input [1:0]ena_load;
  input [1:0]res;
  input [21:0]init_EC;
  input [31:0]cnt_o;
  output [31:0]cnt_i;
  input ramp_up;
  input ramp_dwn;
  input spd_chg;
  input slw_stps;
  input fst_stps;
  output [1:0]running;
  input irq_mask;
  output irq_in;
  input irq_clr;
  output vld_in;
  input vld_out;
  output port_ref;
  output port_clk;
  output port_ena;
  output port_dir;
  output port_m2P;
  output port_m1P;
  output [21:0]smc_ACC;
  output [21:0]smc_EC;
  output [15:0]smc_RM;
  output smc_req;
  input [21:0]smc_Next_EC;
  input [15:0]smc_Next_RM;
  input smc_ack;
  output dbg_ref;
  output dbg_clk;
  output dbg_ena;
  output dbg_dir;
  output dbg_m2P;
  output dbg_m1P;

  wire \<const0> ;
  wire \<const1> ;

  assign cnt_i[31] = \<const0> ;
  assign cnt_i[30] = \<const0> ;
  assign cnt_i[29] = \<const0> ;
  assign cnt_i[28] = \<const0> ;
  assign cnt_i[27] = \<const0> ;
  assign cnt_i[26] = \<const0> ;
  assign cnt_i[25] = \<const0> ;
  assign cnt_i[24] = \<const0> ;
  assign cnt_i[23] = \<const0> ;
  assign cnt_i[22] = \<const0> ;
  assign cnt_i[21] = \<const0> ;
  assign cnt_i[20] = \<const0> ;
  assign cnt_i[19] = \<const0> ;
  assign cnt_i[18] = \<const0> ;
  assign cnt_i[17] = \<const0> ;
  assign cnt_i[16] = \<const0> ;
  assign cnt_i[15] = \<const0> ;
  assign cnt_i[14] = \<const0> ;
  assign cnt_i[13] = \<const0> ;
  assign cnt_i[12] = \<const0> ;
  assign cnt_i[11] = \<const0> ;
  assign cnt_i[10] = \<const0> ;
  assign cnt_i[9] = \<const0> ;
  assign cnt_i[8] = \<const0> ;
  assign cnt_i[7] = \<const0> ;
  assign cnt_i[6] = \<const0> ;
  assign cnt_i[5] = \<const0> ;
  assign cnt_i[4] = \<const0> ;
  assign cnt_i[3] = \<const0> ;
  assign cnt_i[2] = \<const0> ;
  assign cnt_i[1] = \<const0> ;
  assign cnt_i[0] = \<const0> ;
  assign dbg_clk = \<const0> ;
  assign dbg_dir = \<const0> ;
  assign dbg_ena = \<const0> ;
  assign dbg_m1P = \<const0> ;
  assign dbg_m2P = \<const0> ;
  assign dbg_ref = \<const0> ;
  assign irq_in = \<const0> ;
  assign port_clk = \<const0> ;
  assign port_dir = \<const0> ;
  assign port_ena = \<const0> ;
  assign port_m1P = \<const0> ;
  assign port_m2P = \<const0> ;
  assign port_ref = \<const0> ;
  assign running[1] = \<const0> ;
  assign running[0] = \<const0> ;
  assign smc_ACC[21] = \<const0> ;
  assign smc_ACC[20] = \<const0> ;
  assign smc_ACC[19] = \<const0> ;
  assign smc_ACC[18] = \<const0> ;
  assign smc_ACC[17] = \<const0> ;
  assign smc_ACC[16] = \<const0> ;
  assign smc_ACC[15] = \<const0> ;
  assign smc_ACC[14] = \<const0> ;
  assign smc_ACC[13] = \<const0> ;
  assign smc_ACC[12] = \<const0> ;
  assign smc_ACC[11] = \<const0> ;
  assign smc_ACC[10] = \<const0> ;
  assign smc_ACC[9] = \<const0> ;
  assign smc_ACC[8] = \<const0> ;
  assign smc_ACC[7] = \<const0> ;
  assign smc_ACC[6] = \<const0> ;
  assign smc_ACC[5] = \<const0> ;
  assign smc_ACC[4] = \<const0> ;
  assign smc_ACC[3] = \<const0> ;
  assign smc_ACC[2] = \<const0> ;
  assign smc_ACC[1] = \<const0> ;
  assign smc_ACC[0] = \<const0> ;
  assign smc_EC[21] = \<const1> ;
  assign smc_EC[20] = \<const1> ;
  assign smc_EC[19] = \<const1> ;
  assign smc_EC[18] = \<const1> ;
  assign smc_EC[17] = \<const1> ;
  assign smc_EC[16] = \<const1> ;
  assign smc_EC[15] = \<const1> ;
  assign smc_EC[14] = \<const1> ;
  assign smc_EC[13] = \<const1> ;
  assign smc_EC[12] = \<const1> ;
  assign smc_EC[11] = \<const1> ;
  assign smc_EC[10] = \<const1> ;
  assign smc_EC[9] = \<const1> ;
  assign smc_EC[8] = \<const1> ;
  assign smc_EC[7] = \<const1> ;
  assign smc_EC[6] = \<const1> ;
  assign smc_EC[5] = \<const1> ;
  assign smc_EC[4] = \<const1> ;
  assign smc_EC[3] = \<const1> ;
  assign smc_EC[2] = \<const1> ;
  assign smc_EC[1] = \<const1> ;
  assign smc_EC[0] = \<const1> ;
  assign smc_RM[15] = \<const0> ;
  assign smc_RM[14] = \<const0> ;
  assign smc_RM[13] = \<const0> ;
  assign smc_RM[12] = \<const0> ;
  assign smc_RM[11] = \<const0> ;
  assign smc_RM[10] = \<const0> ;
  assign smc_RM[9] = \<const0> ;
  assign smc_RM[8] = \<const0> ;
  assign smc_RM[7] = \<const0> ;
  assign smc_RM[6] = \<const0> ;
  assign smc_RM[5] = \<const0> ;
  assign smc_RM[4] = \<const0> ;
  assign smc_RM[3] = \<const0> ;
  assign smc_RM[2] = \<const0> ;
  assign smc_RM[1] = \<const0> ;
  assign smc_RM[0] = \<const0> ;
  assign smc_req = \<const0> ;
  assign vld_in = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
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
