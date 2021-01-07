// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
// Date        : Tue May 12 18:27:19 2020
// Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_PHS_ctrl_28_0_sim_netlist.v
// Design      : system_PHS_ctrl_28_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_PHS_ctrl_28_0,PHS_ctrl,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "PHS_ctrl,Vivado 2019.1.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aresetn,
    ena_in,
    ena_out,
    pwm_val,
    status,
    irq_mask,
    irq0_L2S,
    irq1_S2L,
    irq0_clr,
    irq1_clr,
    vld_out,
    vld_in,
    port_pwm_out,
    port_phs_in);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input ena_in;
  output ena_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS_regs pwm_val" *) input [9:0]pwm_val;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS_regs status" *) output status;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS_regs irq_mask" *) input [1:0]irq_mask;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS_regs irq0_L2S" *) output irq0_L2S;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS_regs irq1_S2L" *) output irq1_S2L;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS_regs irq0_L2S_clr" *) input irq0_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS_regs irq1_S2L_clr" *) input irq1_clr;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS_regs vld_out" *) input vld_out;
  (* x_interface_info = "Mindway:user:PHS_reg_if:1.0 PHS_regs valid_in" *) output vld_in;
  (* x_interface_info = "Mindway:user:PHS_IOs:1.0 PHS_ios pwm_out" *) output port_pwm_out;
  (* IOB = "TRUE" *) (* x_interface_info = "Mindway:user:PHS_IOs:1.0 PHS_ios phs_in" *) input port_phs_in;

  wire \<const0> ;

  assign irq0_L2S = \<const0> ;
  assign irq1_S2L = \<const0> ;
  assign port_pwm_out = \<const0> ;
  assign status = \<const0> ;
  assign vld_in = \<const0> ;
  GND GND
       (.G(\<const0> ));
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
