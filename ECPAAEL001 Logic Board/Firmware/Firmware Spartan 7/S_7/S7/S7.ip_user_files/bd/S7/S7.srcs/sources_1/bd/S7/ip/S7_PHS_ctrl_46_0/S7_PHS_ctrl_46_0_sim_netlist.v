// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
// Date        : Thu Oct 22 16:03:55 2020
// Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top S7_PHS_ctrl_46_0 -prefix
//               S7_PHS_ctrl_46_0_ S7_PHS_ctrl_5_0_sim_netlist.v
// Design      : S7_PHS_ctrl_5_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s100fgga676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module S7_PHS_ctrl_46_0_PHS_ctrl
   (status,
    irq0_L2S,
    irq1_S2L,
    vld_in,
    port_pwm_out,
    ena_out,
    aresetn,
    aclk,
    ena_in,
    port_phs_in,
    irq0_clr,
    irq1_clr,
    vld_out,
    pwm_val);
  output status;
  output irq0_L2S;
  output irq1_S2L;
  output vld_in;
  output port_pwm_out;
  output ena_out;
  input aresetn;
  input aclk;
  input ena_in;
  input port_phs_in;
  input irq0_clr;
  input irq1_clr;
  input vld_out;
  input [9:0]pwm_val;

  wire aclk;
  wire aresetn;
  wire ena_in;
  wire ena_out;
  wire irq0_L2S;
  wire irq0_clr;
  wire irq1_S2L;
  wire irq1_clr;
  wire port_phs_in;
  wire port_pwm_out;
  wire [9:0]pwm_val;
  wire status;
  wire vld_in;
  wire vld_out;

  S7_PHS_ctrl_46_0_PHS_ctrl_real \R.PHS_ctrl 
       (.aclk(aclk),
        .aresetn(aresetn),
        .ena_in(ena_in),
        .ena_out(ena_out),
        .irq0_L2S(irq0_L2S),
        .irq0_clr(irq0_clr),
        .irq1_S2L(irq1_S2L),
        .irq1_clr(irq1_clr),
        .port_phs_in(port_phs_in),
        .port_pwm_out(port_pwm_out),
        .pwm_val(pwm_val),
        .status(status),
        .vld_in(vld_in),
        .vld_out(vld_out));
endmodule

module S7_PHS_ctrl_46_0_PHS_ctrl_real
   (status,
    irq0_L2S,
    irq1_S2L,
    vld_in,
    port_pwm_out,
    ena_out,
    aresetn,
    aclk,
    ena_in,
    port_phs_in,
    irq0_clr,
    irq1_clr,
    vld_out,
    pwm_val);
  output status;
  output irq0_L2S;
  output irq1_S2L;
  output vld_in;
  output port_pwm_out;
  output ena_out;
  input aresetn;
  input aclk;
  input ena_in;
  input port_phs_in;
  input irq0_clr;
  input irq1_clr;
  input vld_out;
  input [9:0]pwm_val;

  wire aclk;
  wire aresetn;
  wire \deb_cnt[4]_i_2_n_0 ;
  wire \deb_cnt[4]_i_3_n_0 ;
  wire \deb_cnt[5]_i_2_n_0 ;
  wire \deb_cnt[5]_i_3_n_0 ;
  wire \deb_cnt[6]_i_1_n_0 ;
  wire \deb_cnt[6]_i_3_n_0 ;
  wire \deb_cnt[6]_i_4_n_0 ;
  wire \deb_cnt[7]_i_2_n_0 ;
  wire \deb_cnt_reg_n_0_[0] ;
  wire \deb_cnt_reg_n_0_[1] ;
  wire \deb_cnt_reg_n_0_[2] ;
  wire \deb_cnt_reg_n_0_[3] ;
  wire \deb_cnt_reg_n_0_[4] ;
  wire \deb_cnt_reg_n_0_[5] ;
  wire \deb_cnt_reg_n_0_[6] ;
  wire ena;
  wire \ena_dly_cnt[7]_i_1_n_0 ;
  wire \ena_dly_cnt[7]_i_2_n_0 ;
  wire \ena_dly_cnt[7]_i_4_n_0 ;
  wire [7:0]ena_dly_cnt_reg;
  wire ena_in;
  wire ena_out;
  wire ena_out_i_1_n_0;
  wire ena_out_i_2_n_0;
  wire eqOp8_in;
  wire \eqOp_inferred__5/i__carry_n_1 ;
  wire \eqOp_inferred__5/i__carry_n_2 ;
  wire \eqOp_inferred__5/i__carry_n_3 ;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire irq0_L2S;
  wire irq0_L2S_i;
  wire irq0_L2S_i_i_1_n_0;
  wire irq0_clr;
  wire irq0_clr_i;
  wire irq1_S2L;
  wire irq1_S2L_i;
  wire irq1_S2L_i_i_1_n_0;
  wire irq1_clr;
  wire irq1_clr_i;
  wire p_0_in7_in;
  wire [7:1]p_1_in;
  wire [0:0]plusOp;
  wire [7:0]plusOp__0;
  wire [9:0]plusOp__1;
  (* async_reg = "true" *) wire port_phs;
  wire port_phs_in;
  (* async_reg = "true" *) wire port_phs_meta;
  wire port_pwm_out;
  wire port_pwm_out3_out;
  wire port_pwm_out6_out;
  wire port_pwm_out_i_10_n_0;
  wire port_pwm_out_i_11_n_0;
  wire port_pwm_out_i_12_n_0;
  wire port_pwm_out_i_3_n_0;
  wire port_pwm_out_i_4_n_0;
  wire port_pwm_out_i_5_n_0;
  wire port_pwm_out_i_6_n_0;
  wire port_pwm_out_i_7_n_0;
  wire port_pwm_out_i_8_n_0;
  wire port_pwm_out_i_9_n_0;
  wire \pwm_cnt[2]_i_1_n_0 ;
  wire \pwm_cnt[5]_i_1_n_0 ;
  wire \pwm_cnt[7]_i_1_n_0 ;
  wire \pwm_cnt[9]_i_1_n_0 ;
  wire \pwm_cnt[9]_i_2_n_0 ;
  wire \pwm_cnt[9]_i_4_n_0 ;
  wire [9:0]pwm_cnt_reg;
  wire [9:0]pwm_int;
  wire \pwm_maxcnt[3]_i_1_n_0 ;
  wire \pwm_maxcnt[4]_i_1_n_0 ;
  wire \pwm_maxcnt[5]_i_1_n_0 ;
  wire \pwm_maxcnt[6]_i_1_n_0 ;
  wire \pwm_maxcnt[7]_i_1_n_0 ;
  wire \pwm_maxcnt[8]_i_1_n_0 ;
  wire \pwm_maxcnt[9]_i_1_n_0 ;
  wire \pwm_maxcnt[9]_i_2_n_0 ;
  wire \pwm_maxcnt[9]_i_3_n_0 ;
  wire \pwm_maxcnt[9]_i_4_n_0 ;
  wire \pwm_maxcnt[9]_i_5_n_0 ;
  wire \pwm_maxcnt_reg_n_0_[0] ;
  wire \pwm_maxcnt_reg_n_0_[1] ;
  wire \pwm_maxcnt_reg_n_0_[2] ;
  wire \pwm_maxcnt_reg_n_0_[3] ;
  wire \pwm_maxcnt_reg_n_0_[4] ;
  wire \pwm_maxcnt_reg_n_0_[5] ;
  wire \pwm_maxcnt_reg_n_0_[6] ;
  wire \pwm_maxcnt_reg_n_0_[7] ;
  wire \pwm_maxcnt_reg_n_0_[8] ;
  wire \pwm_maxcnt_reg_n_0_[9] ;
  wire [9:0]pwm_val;
  wire reset;
  wire resetn;
  wire status;
  wire status_i;
  wire vld;
  wire vld_in;
  wire vld_in_i;
  wire vld_in_i_i_1_n_0;
  wire vld_out;
  wire [3:0]\NLW_eqOp_inferred__5/i__carry_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \deb_cnt[0]_i_1 
       (.I0(\deb_cnt_reg_n_0_[0] ),
        .O(plusOp));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \deb_cnt[1]_i_1 
       (.I0(\deb_cnt[4]_i_2_n_0 ),
        .I1(\deb_cnt_reg_n_0_[0] ),
        .I2(\deb_cnt_reg_n_0_[1] ),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6CC9)) 
    \deb_cnt[2]_i_1 
       (.I0(\deb_cnt[4]_i_2_n_0 ),
        .I1(\deb_cnt_reg_n_0_[2] ),
        .I2(\deb_cnt_reg_n_0_[0] ),
        .I3(\deb_cnt_reg_n_0_[1] ),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFE8001)) 
    \deb_cnt[3]_i_1 
       (.I0(\deb_cnt[4]_i_2_n_0 ),
        .I1(\deb_cnt_reg_n_0_[2] ),
        .I2(\deb_cnt_reg_n_0_[0] ),
        .I3(\deb_cnt_reg_n_0_[1] ),
        .I4(\deb_cnt_reg_n_0_[3] ),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h6CCCCCCCCCCCCCC9)) 
    \deb_cnt[4]_i_1 
       (.I0(\deb_cnt[4]_i_2_n_0 ),
        .I1(\deb_cnt_reg_n_0_[4] ),
        .I2(\deb_cnt_reg_n_0_[2] ),
        .I3(\deb_cnt_reg_n_0_[3] ),
        .I4(\deb_cnt_reg_n_0_[1] ),
        .I5(\deb_cnt_reg_n_0_[0] ),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'h0004FFFFFFFF0000)) 
    \deb_cnt[4]_i_2 
       (.I0(\deb_cnt_reg_n_0_[4] ),
        .I1(\deb_cnt[4]_i_3_n_0 ),
        .I2(\deb_cnt_reg_n_0_[5] ),
        .I3(\deb_cnt_reg_n_0_[6] ),
        .I4(port_phs_meta),
        .I5(p_0_in7_in),
        .O(\deb_cnt[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \deb_cnt[4]_i_3 
       (.I0(\deb_cnt_reg_n_0_[0] ),
        .I1(\deb_cnt_reg_n_0_[1] ),
        .I2(\deb_cnt_reg_n_0_[3] ),
        .I3(\deb_cnt_reg_n_0_[2] ),
        .O(\deb_cnt[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h909F09F9808E09F9)) 
    \deb_cnt[5]_i_1 
       (.I0(\deb_cnt_reg_n_0_[5] ),
        .I1(\deb_cnt[5]_i_2_n_0 ),
        .I2(port_phs_meta),
        .I3(\deb_cnt[5]_i_3_n_0 ),
        .I4(p_0_in7_in),
        .I5(\deb_cnt_reg_n_0_[6] ),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \deb_cnt[5]_i_2 
       (.I0(\deb_cnt_reg_n_0_[4] ),
        .I1(\deb_cnt_reg_n_0_[2] ),
        .I2(\deb_cnt_reg_n_0_[3] ),
        .I3(\deb_cnt_reg_n_0_[1] ),
        .I4(\deb_cnt_reg_n_0_[0] ),
        .O(\deb_cnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9555555555555555)) 
    \deb_cnt[5]_i_3 
       (.I0(\deb_cnt_reg_n_0_[5] ),
        .I1(\deb_cnt_reg_n_0_[0] ),
        .I2(\deb_cnt_reg_n_0_[1] ),
        .I3(\deb_cnt_reg_n_0_[3] ),
        .I4(\deb_cnt_reg_n_0_[2] ),
        .I5(\deb_cnt_reg_n_0_[4] ),
        .O(\deb_cnt[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3F33737333333F33)) 
    \deb_cnt[6]_i_1 
       (.I0(\deb_cnt[6]_i_3_n_0 ),
        .I1(resetn),
        .I2(\deb_cnt_reg_n_0_[6] ),
        .I3(\deb_cnt[6]_i_4_n_0 ),
        .I4(port_phs_meta),
        .I5(p_0_in7_in),
        .O(\deb_cnt[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6015F906)) 
    \deb_cnt[6]_i_2 
       (.I0(p_0_in7_in),
        .I1(port_phs_meta),
        .I2(\deb_cnt[6]_i_3_n_0 ),
        .I3(\deb_cnt_reg_n_0_[6] ),
        .I4(\deb_cnt[6]_i_4_n_0 ),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \deb_cnt[6]_i_3 
       (.I0(\deb_cnt_reg_n_0_[0] ),
        .I1(\deb_cnt_reg_n_0_[1] ),
        .I2(\deb_cnt_reg_n_0_[3] ),
        .I3(\deb_cnt_reg_n_0_[2] ),
        .I4(\deb_cnt_reg_n_0_[4] ),
        .I5(\deb_cnt_reg_n_0_[5] ),
        .O(\deb_cnt[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \deb_cnt[6]_i_4 
       (.I0(\deb_cnt_reg_n_0_[5] ),
        .I1(\deb_cnt_reg_n_0_[0] ),
        .I2(\deb_cnt_reg_n_0_[1] ),
        .I3(\deb_cnt_reg_n_0_[3] ),
        .I4(\deb_cnt_reg_n_0_[2] ),
        .I5(\deb_cnt_reg_n_0_[4] ),
        .O(\deb_cnt[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAA2AAAAAAA)) 
    \deb_cnt[7]_i_1 
       (.I0(p_0_in7_in),
        .I1(\deb_cnt_reg_n_0_[5] ),
        .I2(\deb_cnt_reg_n_0_[4] ),
        .I3(\deb_cnt[7]_i_2_n_0 ),
        .I4(\deb_cnt_reg_n_0_[6] ),
        .I5(port_phs_meta),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \deb_cnt[7]_i_2 
       (.I0(\deb_cnt_reg_n_0_[0] ),
        .I1(\deb_cnt_reg_n_0_[1] ),
        .I2(\deb_cnt_reg_n_0_[3] ),
        .I3(\deb_cnt_reg_n_0_[2] ),
        .O(\deb_cnt[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \deb_cnt_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp),
        .Q(\deb_cnt_reg_n_0_[0] ),
        .R(\deb_cnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \deb_cnt_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(\deb_cnt_reg_n_0_[1] ),
        .R(\deb_cnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \deb_cnt_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(\deb_cnt_reg_n_0_[2] ),
        .R(\deb_cnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \deb_cnt_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(\deb_cnt_reg_n_0_[3] ),
        .R(\deb_cnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \deb_cnt_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(\deb_cnt_reg_n_0_[4] ),
        .R(\deb_cnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \deb_cnt_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(\deb_cnt_reg_n_0_[5] ),
        .R(\deb_cnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \deb_cnt_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(\deb_cnt_reg_n_0_[6] ),
        .R(\deb_cnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \deb_cnt_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(p_0_in7_in),
        .R(reset));
  LUT1 #(
    .INIT(2'h1)) 
    \ena_dly_cnt[0]_i_1 
       (.I0(ena_dly_cnt_reg[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ena_dly_cnt[1]_i_1 
       (.I0(ena_dly_cnt_reg[0]),
        .I1(ena_dly_cnt_reg[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \ena_dly_cnt[2]_i_1 
       (.I0(ena_dly_cnt_reg[2]),
        .I1(ena_dly_cnt_reg[0]),
        .I2(ena_dly_cnt_reg[1]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \ena_dly_cnt[3]_i_1 
       (.I0(ena_dly_cnt_reg[3]),
        .I1(ena_dly_cnt_reg[1]),
        .I2(ena_dly_cnt_reg[0]),
        .I3(ena_dly_cnt_reg[2]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \ena_dly_cnt[4]_i_1 
       (.I0(ena_dly_cnt_reg[2]),
        .I1(ena_dly_cnt_reg[0]),
        .I2(ena_dly_cnt_reg[1]),
        .I3(ena_dly_cnt_reg[3]),
        .I4(ena_dly_cnt_reg[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \ena_dly_cnt[5]_i_1 
       (.I0(ena_dly_cnt_reg[5]),
        .I1(ena_dly_cnt_reg[2]),
        .I2(ena_dly_cnt_reg[0]),
        .I3(ena_dly_cnt_reg[1]),
        .I4(ena_dly_cnt_reg[3]),
        .I5(ena_dly_cnt_reg[4]),
        .O(plusOp__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \ena_dly_cnt[6]_i_1 
       (.I0(ena_dly_cnt_reg[6]),
        .I1(\ena_dly_cnt[7]_i_4_n_0 ),
        .I2(ena_dly_cnt_reg[5]),
        .O(plusOp__0[6]));
  LUT6 #(
    .INIT(64'h00000008FFFFFFFF)) 
    \ena_dly_cnt[7]_i_1 
       (.I0(ena_dly_cnt_reg[4]),
        .I1(ena_dly_cnt_reg[1]),
        .I2(ena_dly_cnt_reg[5]),
        .I3(ena_dly_cnt_reg[3]),
        .I4(ena_out_i_2_n_0),
        .I5(resetn),
        .O(\ena_dly_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ena_dly_cnt[7]_i_2 
       (.I0(ena_out_i_2_n_0),
        .I1(ena_dly_cnt_reg[1]),
        .I2(ena),
        .I3(ena_dly_cnt_reg[4]),
        .I4(ena_dly_cnt_reg[3]),
        .I5(ena_dly_cnt_reg[5]),
        .O(\ena_dly_cnt[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \ena_dly_cnt[7]_i_3 
       (.I0(ena_dly_cnt_reg[7]),
        .I1(ena_dly_cnt_reg[5]),
        .I2(\ena_dly_cnt[7]_i_4_n_0 ),
        .I3(ena_dly_cnt_reg[6]),
        .O(plusOp__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \ena_dly_cnt[7]_i_4 
       (.I0(ena_dly_cnt_reg[4]),
        .I1(ena_dly_cnt_reg[3]),
        .I2(ena_dly_cnt_reg[1]),
        .I3(ena_dly_cnt_reg[0]),
        .I4(ena_dly_cnt_reg[2]),
        .O(\ena_dly_cnt[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ena_dly_cnt_reg[0] 
       (.C(aclk),
        .CE(\ena_dly_cnt[7]_i_2_n_0 ),
        .D(plusOp__0[0]),
        .Q(ena_dly_cnt_reg[0]),
        .R(\ena_dly_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ena_dly_cnt_reg[1] 
       (.C(aclk),
        .CE(\ena_dly_cnt[7]_i_2_n_0 ),
        .D(plusOp__0[1]),
        .Q(ena_dly_cnt_reg[1]),
        .R(\ena_dly_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ena_dly_cnt_reg[2] 
       (.C(aclk),
        .CE(\ena_dly_cnt[7]_i_2_n_0 ),
        .D(plusOp__0[2]),
        .Q(ena_dly_cnt_reg[2]),
        .R(\ena_dly_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ena_dly_cnt_reg[3] 
       (.C(aclk),
        .CE(\ena_dly_cnt[7]_i_2_n_0 ),
        .D(plusOp__0[3]),
        .Q(ena_dly_cnt_reg[3]),
        .R(\ena_dly_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ena_dly_cnt_reg[4] 
       (.C(aclk),
        .CE(\ena_dly_cnt[7]_i_2_n_0 ),
        .D(plusOp__0[4]),
        .Q(ena_dly_cnt_reg[4]),
        .R(\ena_dly_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ena_dly_cnt_reg[5] 
       (.C(aclk),
        .CE(\ena_dly_cnt[7]_i_2_n_0 ),
        .D(plusOp__0[5]),
        .Q(ena_dly_cnt_reg[5]),
        .R(\ena_dly_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ena_dly_cnt_reg[6] 
       (.C(aclk),
        .CE(\ena_dly_cnt[7]_i_2_n_0 ),
        .D(plusOp__0[6]),
        .Q(ena_dly_cnt_reg[6]),
        .R(\ena_dly_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ena_dly_cnt_reg[7] 
       (.C(aclk),
        .CE(\ena_dly_cnt[7]_i_2_n_0 ),
        .D(plusOp__0[7]),
        .Q(ena_dly_cnt_reg[7]),
        .R(\ena_dly_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    ena_out_i_1
       (.I0(ena_dly_cnt_reg[4]),
        .I1(ena_dly_cnt_reg[1]),
        .I2(ena_dly_cnt_reg[5]),
        .I3(ena_dly_cnt_reg[3]),
        .I4(ena_out_i_2_n_0),
        .I5(resetn),
        .O(ena_out_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ena_out_i_2
       (.I0(ena_dly_cnt_reg[7]),
        .I1(ena_dly_cnt_reg[0]),
        .I2(ena_dly_cnt_reg[6]),
        .I3(ena_dly_cnt_reg[2]),
        .O(ena_out_i_2_n_0));
  FDRE ena_out_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ena_out_i_1_n_0),
        .Q(ena_out),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ena_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ena_in),
        .Q(ena),
        .R(reset));
  CARRY4 \eqOp_inferred__5/i__carry 
       (.CI(1'b0),
        .CO({eqOp8_in,\eqOp_inferred__5/i__carry_n_1 ,\eqOp_inferred__5/i__carry_n_2 ,\eqOp_inferred__5/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_eqOp_inferred__5/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1
       (.I0(\pwm_maxcnt_reg_n_0_[9] ),
        .I1(pwm_cnt_reg[9]),
        .O(i__carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2
       (.I0(\pwm_maxcnt_reg_n_0_[7] ),
        .I1(pwm_cnt_reg[7]),
        .I2(pwm_cnt_reg[8]),
        .I3(\pwm_maxcnt_reg_n_0_[8] ),
        .I4(pwm_cnt_reg[6]),
        .I5(\pwm_maxcnt_reg_n_0_[6] ),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3
       (.I0(\pwm_maxcnt_reg_n_0_[5] ),
        .I1(pwm_cnt_reg[5]),
        .I2(pwm_cnt_reg[3]),
        .I3(\pwm_maxcnt_reg_n_0_[3] ),
        .I4(pwm_cnt_reg[4]),
        .I5(\pwm_maxcnt_reg_n_0_[4] ),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4
       (.I0(\pwm_maxcnt_reg_n_0_[2] ),
        .I1(pwm_cnt_reg[2]),
        .I2(pwm_cnt_reg[0]),
        .I3(\pwm_maxcnt_reg_n_0_[0] ),
        .I4(pwm_cnt_reg[1]),
        .I5(\pwm_maxcnt_reg_n_0_[1] ),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h7530)) 
    irq0_L2S_i_i_1
       (.I0(irq0_clr_i),
        .I1(p_0_in7_in),
        .I2(status_i),
        .I3(irq0_L2S_i),
        .O(irq0_L2S_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    irq0_L2S_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(irq0_L2S_i_i_1_n_0),
        .Q(irq0_L2S_i),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    irq0_L2S_loc_reg
       (.C(aclk),
        .CE(1'b1),
        .D(irq0_L2S_i),
        .Q(irq0_L2S),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    irq0_clr_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(irq0_clr),
        .Q(irq0_clr_i),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7530)) 
    irq1_S2L_i_i_1
       (.I0(irq1_clr_i),
        .I1(status_i),
        .I2(p_0_in7_in),
        .I3(irq1_S2L_i),
        .O(irq1_S2L_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    irq1_S2L_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(irq1_S2L_i_i_1_n_0),
        .Q(irq1_S2L_i),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    irq1_S2L_loc_reg
       (.C(aclk),
        .CE(1'b1),
        .D(irq1_S2L_i),
        .Q(irq1_S2L),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    irq1_clr_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(irq1_clr),
        .Q(irq1_clr_i),
        .R(reset));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    port_phs_meta_reg
       (.C(aclk),
        .CE(1'b1),
        .D(port_phs),
        .Q(port_phs_meta),
        .R(reset));
  (* ASYNC_REG *) 
  (* IOB = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    port_phs_reg
       (.C(aclk),
        .CE(1'b1),
        .D(port_phs_in),
        .Q(port_phs),
        .R(reset));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    port_pwm_out_i_1
       (.I0(resetn),
        .I1(port_pwm_out_i_4_n_0),
        .I2(port_pwm_out_i_5_n_0),
        .I3(pwm_int[2]),
        .I4(pwm_int[1]),
        .I5(pwm_int[0]),
        .O(port_pwm_out6_out));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h80)) 
    port_pwm_out_i_10
       (.I0(pwm_cnt_reg[2]),
        .I1(pwm_cnt_reg[1]),
        .I2(pwm_cnt_reg[0]),
        .O(port_pwm_out_i_10_n_0));
  LUT4 #(
    .INIT(16'hEFFF)) 
    port_pwm_out_i_11
       (.I0(pwm_cnt_reg[4]),
        .I1(pwm_cnt_reg[3]),
        .I2(pwm_cnt_reg[9]),
        .I3(pwm_cnt_reg[6]),
        .O(port_pwm_out_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFF)) 
    port_pwm_out_i_12
       (.I0(\pwm_maxcnt_reg_n_0_[7] ),
        .I1(\pwm_maxcnt_reg_n_0_[9] ),
        .I2(\pwm_maxcnt_reg_n_0_[3] ),
        .I3(\pwm_maxcnt_reg_n_0_[6] ),
        .I4(\pwm_maxcnt_reg_n_0_[8] ),
        .I5(\pwm_maxcnt_reg_n_0_[1] ),
        .O(port_pwm_out_i_12_n_0));
  LUT4 #(
    .INIT(16'hAAA8)) 
    port_pwm_out_i_2
       (.I0(resetn),
        .I1(port_pwm_out_i_6_n_0),
        .I2(port_pwm_out_i_4_n_0),
        .I3(eqOp8_in),
        .O(port_pwm_out3_out));
  LUT4 #(
    .INIT(16'hF8FA)) 
    port_pwm_out_i_3
       (.I0(port_pwm_out_i_7_n_0),
        .I1(port_pwm_out_i_6_n_0),
        .I2(port_pwm_out_i_4_n_0),
        .I3(eqOp8_in),
        .O(port_pwm_out_i_3_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    port_pwm_out_i_4
       (.I0(pwm_cnt_reg[6]),
        .I1(pwm_cnt_reg[9]),
        .I2(pwm_cnt_reg[5]),
        .I3(pwm_cnt_reg[7]),
        .I4(port_pwm_out_i_8_n_0),
        .O(port_pwm_out_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    port_pwm_out_i_5
       (.I0(pwm_int[7]),
        .I1(pwm_int[8]),
        .I2(pwm_int[6]),
        .I3(pwm_int[5]),
        .I4(pwm_int[9]),
        .I5(port_pwm_out_i_9_n_0),
        .O(port_pwm_out_i_5_n_0));
  LUT5 #(
    .INIT(32'h20000000)) 
    port_pwm_out_i_6
       (.I0(port_pwm_out_i_10_n_0),
        .I1(port_pwm_out_i_11_n_0),
        .I2(pwm_cnt_reg[8]),
        .I3(pwm_cnt_reg[5]),
        .I4(pwm_cnt_reg[7]),
        .O(port_pwm_out_i_6_n_0));
  LUT5 #(
    .INIT(32'h00000004)) 
    port_pwm_out_i_7
       (.I0(\pwm_maxcnt_reg_n_0_[2] ),
        .I1(\pwm_maxcnt_reg_n_0_[5] ),
        .I2(\pwm_maxcnt_reg_n_0_[0] ),
        .I3(\pwm_maxcnt_reg_n_0_[4] ),
        .I4(port_pwm_out_i_12_n_0),
        .O(port_pwm_out_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    port_pwm_out_i_8
       (.I0(pwm_cnt_reg[1]),
        .I1(pwm_cnt_reg[0]),
        .I2(pwm_cnt_reg[2]),
        .I3(pwm_cnt_reg[8]),
        .I4(pwm_cnt_reg[3]),
        .I5(pwm_cnt_reg[4]),
        .O(port_pwm_out_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h1)) 
    port_pwm_out_i_9
       (.I0(pwm_int[3]),
        .I1(pwm_int[4]),
        .O(port_pwm_out_i_9_n_0));
  (* IOB = "TRUE" *) 
  FDRE port_pwm_out_reg
       (.C(aclk),
        .CE(port_pwm_out3_out),
        .D(port_pwm_out_i_3_n_0),
        .Q(port_pwm_out),
        .R(port_pwm_out6_out));
  LUT1 #(
    .INIT(2'h1)) 
    \pwm_cnt[0]_i_1 
       (.I0(pwm_cnt_reg[0]),
        .O(plusOp__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pwm_cnt[1]_i_1 
       (.I0(pwm_cnt_reg[0]),
        .I1(pwm_cnt_reg[1]),
        .O(plusOp__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \pwm_cnt[2]_i_1 
       (.I0(pwm_cnt_reg[2]),
        .I1(pwm_cnt_reg[1]),
        .I2(pwm_cnt_reg[0]),
        .O(\pwm_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \pwm_cnt[3]_i_1 
       (.I0(pwm_cnt_reg[3]),
        .I1(pwm_cnt_reg[0]),
        .I2(pwm_cnt_reg[1]),
        .I3(pwm_cnt_reg[2]),
        .O(plusOp__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \pwm_cnt[4]_i_1 
       (.I0(pwm_cnt_reg[4]),
        .I1(pwm_cnt_reg[3]),
        .I2(pwm_cnt_reg[0]),
        .I3(pwm_cnt_reg[1]),
        .I4(pwm_cnt_reg[2]),
        .O(plusOp__1[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \pwm_cnt[5]_i_1 
       (.I0(pwm_cnt_reg[5]),
        .I1(pwm_cnt_reg[4]),
        .I2(pwm_cnt_reg[3]),
        .I3(pwm_cnt_reg[0]),
        .I4(pwm_cnt_reg[1]),
        .I5(pwm_cnt_reg[2]),
        .O(\pwm_cnt[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \pwm_cnt[6]_i_1 
       (.I0(pwm_cnt_reg[6]),
        .I1(\pwm_cnt[9]_i_4_n_0 ),
        .I2(pwm_cnt_reg[5]),
        .O(plusOp__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \pwm_cnt[7]_i_1 
       (.I0(pwm_cnt_reg[7]),
        .I1(pwm_cnt_reg[5]),
        .I2(\pwm_cnt[9]_i_4_n_0 ),
        .I3(pwm_cnt_reg[6]),
        .O(\pwm_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \pwm_cnt[8]_i_1 
       (.I0(pwm_cnt_reg[8]),
        .I1(pwm_cnt_reg[6]),
        .I2(\pwm_cnt[9]_i_4_n_0 ),
        .I3(pwm_cnt_reg[5]),
        .I4(pwm_cnt_reg[7]),
        .O(plusOp__1[8]));
  LUT2 #(
    .INIT(4'hB)) 
    \pwm_cnt[9]_i_1 
       (.I0(port_pwm_out_i_6_n_0),
        .I1(resetn),
        .O(\pwm_cnt[9]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \pwm_cnt[9]_i_2 
       (.I0(ena),
        .I1(port_pwm_out_i_4_n_0),
        .O(\pwm_cnt[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \pwm_cnt[9]_i_3 
       (.I0(pwm_cnt_reg[9]),
        .I1(pwm_cnt_reg[7]),
        .I2(pwm_cnt_reg[5]),
        .I3(\pwm_cnt[9]_i_4_n_0 ),
        .I4(pwm_cnt_reg[6]),
        .I5(pwm_cnt_reg[8]),
        .O(plusOp__1[9]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \pwm_cnt[9]_i_4 
       (.I0(pwm_cnt_reg[2]),
        .I1(pwm_cnt_reg[1]),
        .I2(pwm_cnt_reg[0]),
        .I3(pwm_cnt_reg[3]),
        .I4(pwm_cnt_reg[4]),
        .O(\pwm_cnt[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cnt_reg[0] 
       (.C(aclk),
        .CE(\pwm_cnt[9]_i_2_n_0 ),
        .D(plusOp__1[0]),
        .Q(pwm_cnt_reg[0]),
        .R(\pwm_cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cnt_reg[1] 
       (.C(aclk),
        .CE(\pwm_cnt[9]_i_2_n_0 ),
        .D(plusOp__1[1]),
        .Q(pwm_cnt_reg[1]),
        .R(\pwm_cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cnt_reg[2] 
       (.C(aclk),
        .CE(\pwm_cnt[9]_i_2_n_0 ),
        .D(\pwm_cnt[2]_i_1_n_0 ),
        .Q(pwm_cnt_reg[2]),
        .R(\pwm_cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cnt_reg[3] 
       (.C(aclk),
        .CE(\pwm_cnt[9]_i_2_n_0 ),
        .D(plusOp__1[3]),
        .Q(pwm_cnt_reg[3]),
        .R(\pwm_cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cnt_reg[4] 
       (.C(aclk),
        .CE(\pwm_cnt[9]_i_2_n_0 ),
        .D(plusOp__1[4]),
        .Q(pwm_cnt_reg[4]),
        .R(\pwm_cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cnt_reg[5] 
       (.C(aclk),
        .CE(\pwm_cnt[9]_i_2_n_0 ),
        .D(\pwm_cnt[5]_i_1_n_0 ),
        .Q(pwm_cnt_reg[5]),
        .R(\pwm_cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cnt_reg[6] 
       (.C(aclk),
        .CE(\pwm_cnt[9]_i_2_n_0 ),
        .D(plusOp__1[6]),
        .Q(pwm_cnt_reg[6]),
        .R(\pwm_cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cnt_reg[7] 
       (.C(aclk),
        .CE(\pwm_cnt[9]_i_2_n_0 ),
        .D(\pwm_cnt[7]_i_1_n_0 ),
        .Q(pwm_cnt_reg[7]),
        .R(\pwm_cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cnt_reg[8] 
       (.C(aclk),
        .CE(\pwm_cnt[9]_i_2_n_0 ),
        .D(plusOp__1[8]),
        .Q(pwm_cnt_reg[8]),
        .R(\pwm_cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cnt_reg[9] 
       (.C(aclk),
        .CE(\pwm_cnt[9]_i_2_n_0 ),
        .D(plusOp__1[9]),
        .Q(pwm_cnt_reg[9]),
        .R(\pwm_cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_int_reg[0] 
       (.C(aclk),
        .CE(vld),
        .D(pwm_val[0]),
        .Q(pwm_int[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_int_reg[1] 
       (.C(aclk),
        .CE(vld),
        .D(pwm_val[1]),
        .Q(pwm_int[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_int_reg[2] 
       (.C(aclk),
        .CE(vld),
        .D(pwm_val[2]),
        .Q(pwm_int[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_int_reg[3] 
       (.C(aclk),
        .CE(vld),
        .D(pwm_val[3]),
        .Q(pwm_int[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_int_reg[4] 
       (.C(aclk),
        .CE(vld),
        .D(pwm_val[4]),
        .Q(pwm_int[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_int_reg[5] 
       (.C(aclk),
        .CE(vld),
        .D(pwm_val[5]),
        .Q(pwm_int[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_int_reg[6] 
       (.C(aclk),
        .CE(vld),
        .D(pwm_val[6]),
        .Q(pwm_int[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_int_reg[7] 
       (.C(aclk),
        .CE(vld),
        .D(pwm_val[7]),
        .Q(pwm_int[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_int_reg[8] 
       (.C(aclk),
        .CE(vld),
        .D(pwm_val[8]),
        .Q(pwm_int[8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_int_reg[9] 
       (.C(aclk),
        .CE(vld),
        .D(pwm_val[9]),
        .Q(pwm_int[9]),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \pwm_maxcnt[3]_i_1 
       (.I0(pwm_int[3]),
        .I1(\pwm_maxcnt[9]_i_3_n_0 ),
        .O(\pwm_maxcnt[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \pwm_maxcnt[4]_i_1 
       (.I0(\pwm_maxcnt[9]_i_3_n_0 ),
        .I1(resetn),
        .O(\pwm_maxcnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \pwm_maxcnt[5]_i_1 
       (.I0(pwm_int[5]),
        .I1(\pwm_maxcnt[9]_i_3_n_0 ),
        .O(\pwm_maxcnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \pwm_maxcnt[6]_i_1 
       (.I0(pwm_int[6]),
        .I1(\pwm_maxcnt[9]_i_3_n_0 ),
        .O(\pwm_maxcnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \pwm_maxcnt[7]_i_1 
       (.I0(pwm_int[7]),
        .I1(\pwm_maxcnt[9]_i_3_n_0 ),
        .O(\pwm_maxcnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \pwm_maxcnt[8]_i_1 
       (.I0(pwm_int[8]),
        .I1(\pwm_maxcnt[9]_i_3_n_0 ),
        .O(\pwm_maxcnt[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pwm_maxcnt[9]_i_1 
       (.I0(ena),
        .I1(\pwm_maxcnt[9]_i_3_n_0 ),
        .O(\pwm_maxcnt[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \pwm_maxcnt[9]_i_2 
       (.I0(pwm_int[9]),
        .I1(\pwm_maxcnt[9]_i_3_n_0 ),
        .O(\pwm_maxcnt[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EC000000)) 
    \pwm_maxcnt[9]_i_3 
       (.I0(\pwm_maxcnt[9]_i_4_n_0 ),
        .I1(pwm_int[4]),
        .I2(pwm_int[3]),
        .I3(pwm_int[8]),
        .I4(pwm_int[9]),
        .I5(\pwm_maxcnt[9]_i_5_n_0 ),
        .O(\pwm_maxcnt[9]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \pwm_maxcnt[9]_i_4 
       (.I0(pwm_int[2]),
        .I1(pwm_int[1]),
        .I2(pwm_int[0]),
        .O(\pwm_maxcnt[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \pwm_maxcnt[9]_i_5 
       (.I0(pwm_int[7]),
        .I1(ena),
        .I2(pwm_int[6]),
        .I3(pwm_int[5]),
        .O(\pwm_maxcnt[9]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_maxcnt_reg[0] 
       (.C(aclk),
        .CE(ena),
        .D(pwm_int[0]),
        .Q(\pwm_maxcnt_reg_n_0_[0] ),
        .R(\pwm_maxcnt[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_maxcnt_reg[1] 
       (.C(aclk),
        .CE(ena),
        .D(pwm_int[1]),
        .Q(\pwm_maxcnt_reg_n_0_[1] ),
        .R(\pwm_maxcnt[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_maxcnt_reg[2] 
       (.C(aclk),
        .CE(ena),
        .D(pwm_int[2]),
        .Q(\pwm_maxcnt_reg_n_0_[2] ),
        .R(\pwm_maxcnt[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_maxcnt_reg[3] 
       (.C(aclk),
        .CE(\pwm_maxcnt[9]_i_1_n_0 ),
        .D(\pwm_maxcnt[3]_i_1_n_0 ),
        .Q(\pwm_maxcnt_reg_n_0_[3] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_maxcnt_reg[4] 
       (.C(aclk),
        .CE(ena),
        .D(pwm_int[4]),
        .Q(\pwm_maxcnt_reg_n_0_[4] ),
        .R(\pwm_maxcnt[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_maxcnt_reg[5] 
       (.C(aclk),
        .CE(\pwm_maxcnt[9]_i_1_n_0 ),
        .D(\pwm_maxcnt[5]_i_1_n_0 ),
        .Q(\pwm_maxcnt_reg_n_0_[5] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_maxcnt_reg[6] 
       (.C(aclk),
        .CE(\pwm_maxcnt[9]_i_1_n_0 ),
        .D(\pwm_maxcnt[6]_i_1_n_0 ),
        .Q(\pwm_maxcnt_reg_n_0_[6] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_maxcnt_reg[7] 
       (.C(aclk),
        .CE(\pwm_maxcnt[9]_i_1_n_0 ),
        .D(\pwm_maxcnt[7]_i_1_n_0 ),
        .Q(\pwm_maxcnt_reg_n_0_[7] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_maxcnt_reg[8] 
       (.C(aclk),
        .CE(\pwm_maxcnt[9]_i_1_n_0 ),
        .D(\pwm_maxcnt[8]_i_1_n_0 ),
        .Q(\pwm_maxcnt_reg_n_0_[8] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_maxcnt_reg[9] 
       (.C(aclk),
        .CE(\pwm_maxcnt[9]_i_1_n_0 ),
        .D(\pwm_maxcnt[9]_i_2_n_0 ),
        .Q(\pwm_maxcnt_reg_n_0_[9] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    resetn_reg
       (.C(aclk),
        .CE(1'b1),
        .D(aresetn),
        .Q(resetn),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    status_i_1
       (.I0(resetn),
        .O(reset));
  FDRE #(
    .INIT(1'b0)) 
    status_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in7_in),
        .Q(status_i),
        .R(reset));
  FDRE status_reg
       (.C(aclk),
        .CE(1'b1),
        .D(status_i),
        .Q(status),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    vld_in_i_i_1
       (.I0(p_0_in7_in),
        .I1(status_i),
        .O(vld_in_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    vld_in_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(vld_in_i_i_1_n_0),
        .Q(vld_in_i),
        .R(reset));
  FDRE vld_in_reg
       (.C(aclk),
        .CE(1'b1),
        .D(vld_in_i),
        .Q(vld_in),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    vld_reg
       (.C(aclk),
        .CE(1'b1),
        .D(vld_out),
        .Q(vld),
        .R(reset));
endmodule

(* CHECK_LICENSE_TYPE = "S7_PHS_ctrl_5_0,PHS_ctrl,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "PHS_ctrl,Vivado 2019.1.3" *) 
(* NotValidForBitStream *)
module S7_PHS_ctrl_46_0
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, ASSOCIATED_BUSIF PHS_regs, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN S7_util_ds_buf_0_0_IBUF_OUT, INSERT_VIP 0" *) input aclk;
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
  (* x_interface_info = "Mindway:user:PHS_IOs:1.0 PHS_ios phs_in" *) input port_phs_in;

  wire aclk;
  wire aresetn;
  wire ena_in;
  wire ena_out;
  wire irq0_L2S;
  wire irq0_clr;
  wire irq1_S2L;
  wire irq1_clr;
  (* IOB = "TRUE" *) wire port_phs_in;
  wire port_pwm_out;
  wire [9:0]pwm_val;
  wire status;
  wire vld_in;
  wire vld_out;

  S7_PHS_ctrl_46_0_PHS_ctrl U0
       (.aclk(aclk),
        .aresetn(aresetn),
        .ena_in(ena_in),
        .ena_out(ena_out),
        .irq0_L2S(irq0_L2S),
        .irq0_clr(irq0_clr),
        .irq1_S2L(irq1_S2L),
        .irq1_clr(irq1_clr),
        .port_phs_in(port_phs_in),
        .port_pwm_out(port_pwm_out),
        .pwm_val(pwm_val),
        .status(status),
        .vld_in(vld_in),
        .vld_out(vld_out));
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
