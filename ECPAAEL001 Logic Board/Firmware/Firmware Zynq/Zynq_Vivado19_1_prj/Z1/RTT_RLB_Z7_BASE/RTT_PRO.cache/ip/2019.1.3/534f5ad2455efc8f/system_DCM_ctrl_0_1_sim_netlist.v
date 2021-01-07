// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
// Date        : Thu May 14 13:22:43 2020
// Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_DCM_ctrl_0_1_sim_netlist.v
// Design      : system_DCM_ctrl_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_DCM_ctrl_0_1,DCM_ctrl,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "DCM_ctrl,Vivado 2019.1.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aresetn,
    clk200,
    pwm_val,
    pwm_frq,
    dir,
    run,
    brake,
    status,
    vld_in,
    vld_out,
    port_pwm,
    port_in1,
    port_in2);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, ASSOCIATED_BUSIF DCM_IO:DCM_reg_if, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk200 CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk200, ASSOCIATED_RESET aresetn, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input clk200;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM_reg_if pwm_val" *) input [7:0]pwm_val;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM_reg_if pwm_frq" *) input [6:0]pwm_frq;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM_reg_if dir" *) input dir;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM_reg_if run" *) input run;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM_reg_if brake" *) input brake;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM_reg_if status" *) output [1:0]status;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM_reg_if vld_in" *) output vld_in;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM_reg_if vld_out" *) input vld_out;
  (* x_interface_info = "Mindway:user:DCM_IOs:1.0 DCM_IO pwm" *) output port_pwm;
  (* x_interface_info = "Mindway:user:DCM_IOs:1.0 DCM_IO in1" *) output port_in1;
  (* x_interface_info = "Mindway:user:DCM_IOs:1.0 DCM_IO in2" *) output port_in2;

  wire \<const0> ;

  assign port_in1 = \<const0> ;
  assign port_in2 = \<const0> ;
  assign port_pwm = \<const0> ;
  assign status[1] = \<const0> ;
  assign status[0] = \<const0> ;
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
