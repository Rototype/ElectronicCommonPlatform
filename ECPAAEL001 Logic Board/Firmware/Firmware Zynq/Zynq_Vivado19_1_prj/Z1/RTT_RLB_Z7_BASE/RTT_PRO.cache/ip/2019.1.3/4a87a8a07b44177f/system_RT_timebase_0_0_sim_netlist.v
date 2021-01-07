// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
// Date        : Tue May 12 18:27:19 2020
// Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_RT_timebase_0_0_sim_netlist.v
// Design      : system_RT_timebase_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RT_timebase
   (ena_PHS,
    aresetn,
    aclk);
  output ena_PHS;
  input aresetn;
  input aclk;

  wire aclk;
  wire aresetn;
  wire ena_PHS;
  wire ena_PHS_i_3_n_0;
  wire eqOp;
  wire \phs_cnt[0]_i_1_n_0 ;
  wire \phs_cnt[1]_i_1_n_0 ;
  wire \phs_cnt[2]_i_1_n_0 ;
  wire \phs_cnt[3]_i_1_n_0 ;
  wire \phs_cnt[4]_i_1_n_0 ;
  wire \phs_cnt[5]_i_1_n_0 ;
  wire \phs_cnt[5]_i_2_n_0 ;
  wire \phs_cnt[6]_i_1_n_0 ;
  wire \phs_cnt[7]_i_1_n_0 ;
  wire \phs_cnt[8]_i_1_n_0 ;
  wire \phs_cnt[9]_i_1_n_0 ;
  wire \phs_cnt[9]_i_2_n_0 ;
  wire \phs_cnt_reg_n_0_[0] ;
  wire \phs_cnt_reg_n_0_[1] ;
  wire \phs_cnt_reg_n_0_[2] ;
  wire \phs_cnt_reg_n_0_[3] ;
  wire \phs_cnt_reg_n_0_[4] ;
  wire \phs_cnt_reg_n_0_[5] ;
  wire \phs_cnt_reg_n_0_[6] ;
  wire \phs_cnt_reg_n_0_[7] ;
  wire \phs_cnt_reg_n_0_[8] ;
  wire \phs_cnt_reg_n_0_[9] ;
  wire reset;
  wire resetn;

  LUT1 #(
    .INIT(2'h1)) 
    ena_PHS_i_1
       (.I0(resetn),
        .O(reset));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    ena_PHS_i_2
       (.I0(ena_PHS_i_3_n_0),
        .I1(\phs_cnt_reg_n_0_[2] ),
        .I2(\phs_cnt_reg_n_0_[3] ),
        .I3(\phs_cnt_reg_n_0_[0] ),
        .I4(\phs_cnt_reg_n_0_[1] ),
        .O(eqOp));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    ena_PHS_i_3
       (.I0(\phs_cnt_reg_n_0_[5] ),
        .I1(\phs_cnt_reg_n_0_[4] ),
        .I2(\phs_cnt_reg_n_0_[6] ),
        .I3(\phs_cnt_reg_n_0_[7] ),
        .I4(\phs_cnt_reg_n_0_[9] ),
        .I5(\phs_cnt_reg_n_0_[8] ),
        .O(ena_PHS_i_3_n_0));
  FDRE ena_PHS_reg
       (.C(aclk),
        .CE(1'b1),
        .D(eqOp),
        .Q(ena_PHS),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \phs_cnt[0]_i_1 
       (.I0(\phs_cnt_reg_n_0_[0] ),
        .I1(eqOp),
        .O(\phs_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \phs_cnt[1]_i_1 
       (.I0(\phs_cnt_reg_n_0_[1] ),
        .I1(\phs_cnt_reg_n_0_[0] ),
        .I2(eqOp),
        .O(\phs_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \phs_cnt[2]_i_1 
       (.I0(\phs_cnt_reg_n_0_[2] ),
        .I1(\phs_cnt_reg_n_0_[0] ),
        .I2(\phs_cnt_reg_n_0_[1] ),
        .I3(eqOp),
        .O(\phs_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAA0000)) 
    \phs_cnt[3]_i_1 
       (.I0(\phs_cnt_reg_n_0_[3] ),
        .I1(\phs_cnt_reg_n_0_[2] ),
        .I2(\phs_cnt_reg_n_0_[1] ),
        .I3(\phs_cnt_reg_n_0_[0] ),
        .I4(resetn),
        .I5(eqOp),
        .O(\phs_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAA0000)) 
    \phs_cnt[4]_i_1 
       (.I0(\phs_cnt_reg_n_0_[4] ),
        .I1(\phs_cnt_reg_n_0_[3] ),
        .I2(\phs_cnt[5]_i_2_n_0 ),
        .I3(\phs_cnt_reg_n_0_[2] ),
        .I4(resetn),
        .I5(eqOp),
        .O(\phs_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \phs_cnt[5]_i_1 
       (.I0(\phs_cnt_reg_n_0_[5] ),
        .I1(\phs_cnt_reg_n_0_[4] ),
        .I2(\phs_cnt_reg_n_0_[2] ),
        .I3(\phs_cnt[5]_i_2_n_0 ),
        .I4(\phs_cnt_reg_n_0_[3] ),
        .I5(eqOp),
        .O(\phs_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \phs_cnt[5]_i_2 
       (.I0(\phs_cnt_reg_n_0_[0] ),
        .I1(\phs_cnt_reg_n_0_[1] ),
        .O(\phs_cnt[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \phs_cnt[6]_i_1 
       (.I0(\phs_cnt_reg_n_0_[6] ),
        .I1(\phs_cnt[9]_i_2_n_0 ),
        .I2(eqOp),
        .O(\phs_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \phs_cnt[7]_i_1 
       (.I0(\phs_cnt_reg_n_0_[7] ),
        .I1(\phs_cnt_reg_n_0_[6] ),
        .I2(\phs_cnt[9]_i_2_n_0 ),
        .I3(eqOp),
        .O(\phs_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \phs_cnt[8]_i_1 
       (.I0(\phs_cnt_reg_n_0_[8] ),
        .I1(\phs_cnt_reg_n_0_[7] ),
        .I2(\phs_cnt[9]_i_2_n_0 ),
        .I3(\phs_cnt_reg_n_0_[6] ),
        .I4(eqOp),
        .O(\phs_cnt[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \phs_cnt[9]_i_1 
       (.I0(\phs_cnt_reg_n_0_[9] ),
        .I1(\phs_cnt_reg_n_0_[8] ),
        .I2(\phs_cnt_reg_n_0_[6] ),
        .I3(\phs_cnt[9]_i_2_n_0 ),
        .I4(\phs_cnt_reg_n_0_[7] ),
        .I5(eqOp),
        .O(\phs_cnt[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \phs_cnt[9]_i_2 
       (.I0(\phs_cnt_reg_n_0_[5] ),
        .I1(\phs_cnt_reg_n_0_[3] ),
        .I2(\phs_cnt_reg_n_0_[0] ),
        .I3(\phs_cnt_reg_n_0_[1] ),
        .I4(\phs_cnt_reg_n_0_[2] ),
        .I5(\phs_cnt_reg_n_0_[4] ),
        .O(\phs_cnt[9]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \phs_cnt_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\phs_cnt[0]_i_1_n_0 ),
        .Q(\phs_cnt_reg_n_0_[0] ),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \phs_cnt_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\phs_cnt[1]_i_1_n_0 ),
        .Q(\phs_cnt_reg_n_0_[1] ),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \phs_cnt_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\phs_cnt[2]_i_1_n_0 ),
        .Q(\phs_cnt_reg_n_0_[2] ),
        .S(reset));
  FDRE #(
    .INIT(1'b0)) 
    \phs_cnt_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\phs_cnt[3]_i_1_n_0 ),
        .Q(\phs_cnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phs_cnt_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\phs_cnt[4]_i_1_n_0 ),
        .Q(\phs_cnt_reg_n_0_[4] ),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \phs_cnt_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\phs_cnt[5]_i_1_n_0 ),
        .Q(\phs_cnt_reg_n_0_[5] ),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \phs_cnt_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\phs_cnt[6]_i_1_n_0 ),
        .Q(\phs_cnt_reg_n_0_[6] ),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \phs_cnt_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\phs_cnt[7]_i_1_n_0 ),
        .Q(\phs_cnt_reg_n_0_[7] ),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \phs_cnt_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\phs_cnt[8]_i_1_n_0 ),
        .Q(\phs_cnt_reg_n_0_[8] ),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \phs_cnt_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\phs_cnt[9]_i_1_n_0 ),
        .Q(\phs_cnt_reg_n_0_[9] ),
        .S(reset));
  FDRE #(
    .INIT(1'b0)) 
    resetn_reg
       (.C(aclk),
        .CE(1'b1),
        .D(aresetn),
        .Q(resetn),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "system_RT_timebase_0_0,RT_timebase,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "RT_timebase,Vivado 2019.1.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aresetn,
    ena_PHS);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  output ena_PHS;

  wire aclk;
  wire aresetn;
  wire ena_PHS;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RT_timebase U0
       (.aclk(aclk),
        .aresetn(aresetn),
        .ena_PHS(ena_PHS));
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
