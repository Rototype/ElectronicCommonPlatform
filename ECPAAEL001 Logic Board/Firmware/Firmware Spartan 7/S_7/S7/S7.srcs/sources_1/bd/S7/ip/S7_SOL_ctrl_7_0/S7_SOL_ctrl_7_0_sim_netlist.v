// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
// Date        : Sat Jun 26 15:42:50 2021
// Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top S7_SOL_ctrl_7_0 -prefix
//               S7_SOL_ctrl_7_0_ S7_SOL_ctrl_2_0_sim_netlist.v
// Design      : S7_SOL_ctrl_2_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s100fgga676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "S7_SOL_ctrl_2_0,SOL_ctrl,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "SOL_ctrl,Vivado 2019.1.3" *) 
(* NotValidForBitStream *)
module S7_SOL_ctrl_7_0
   (aclk,
    aresetn,
    pwm_val,
    time_full,
    run,
    status,
    vld_in,
    vld_out,
    port_pwm);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN S7_util_ds_buf_0_0_IBUF_OUT, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL_regs pwm_val" *) input [7:0]pwm_val;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL_regs time_full" *) input [10:0]time_full;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL_regs run" *) input run;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL_regs status" *) output [1:0]status;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL_regs vld_in" *) output vld_in;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL_regs vld_out" *) input vld_out;
  (* x_interface_info = "mindway:user:SOL_IOs:1.0 SOL_IOs port_pwm" *) output port_pwm;

  wire aclk;
  wire aresetn;
  wire port_pwm;
  wire [7:0]pwm_val;
  wire run;
  wire [1:0]status;
  wire [10:0]time_full;
  wire vld_in;
  wire vld_out;

  S7_SOL_ctrl_7_0_SOL_ctrl U0
       (.aclk(aclk),
        .aresetn(aresetn),
        .port_pwm(port_pwm),
        .pwm_val(pwm_val),
        .run(run),
        .status(status),
        .time_full(time_full),
        .vld_in(vld_in),
        .vld_out(vld_out));
endmodule

module S7_SOL_ctrl_7_0_SOL_ctrl
   (status,
    vld_in,
    port_pwm,
    aresetn,
    aclk,
    vld_out,
    run,
    time_full,
    pwm_val);
  output [1:0]status;
  output vld_in;
  output port_pwm;
  input aresetn;
  input aclk;
  input vld_out;
  input run;
  input [10:0]time_full;
  input [7:0]pwm_val;

  wire \R.SOL_ctrl_n_2 ;
  wire aclk;
  wire aresetn;
  wire port_pwm;
  wire [7:0]pwm_val;
  wire rst_100_loc;
  wire run;
  wire [1:0]status;
  wire [10:0]time_full;
  wire vld_in;
  wire vld_out;

  S7_SOL_ctrl_7_0_SOL_ctrl_real \R.SOL_ctrl 
       (.aclk(aclk),
        .aresetn(aresetn),
        .port_pwm_reg_0(\R.SOL_ctrl_n_2 ),
        .pwm_val(pwm_val),
        .rst_100_loc(rst_100_loc),
        .run(run),
        .status(status),
        .time_full(time_full),
        .vld_in(vld_in),
        .vld_out(vld_out));
  (* IOB = "TRUE" *) 
  FDRE port_pwm_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\R.SOL_ctrl_n_2 ),
        .Q(port_pwm),
        .R(rst_100_loc));
endmodule

module S7_SOL_ctrl_7_0_SOL_ctrl_real
   (rst_100_loc,
    vld_in,
    port_pwm_reg_0,
    status,
    aresetn,
    aclk,
    vld_out,
    run,
    time_full,
    pwm_val);
  output rst_100_loc;
  output vld_in;
  output port_pwm_reg_0;
  output [1:0]status;
  input aresetn;
  input aclk;
  input vld_out;
  input run;
  input [10:0]time_full;
  input [7:0]pwm_val;

  wire aclk;
  wire aresetn;
  wire aresetn_loc;
  wire ena;
  wire [11:1]ena_cnt;
  wire \ena_cnt[0]_i_1_n_0 ;
  wire \ena_cnt[11]_i_2_n_0 ;
  wire \ena_cnt[11]_i_3_n_0 ;
  wire \ena_cnt[11]_i_5_n_0 ;
  wire \ena_cnt[11]_i_6_n_0 ;
  wire \ena_cnt_reg_n_0_[0] ;
  wire \ena_cnt_reg_n_0_[10] ;
  wire \ena_cnt_reg_n_0_[11] ;
  wire \ena_cnt_reg_n_0_[1] ;
  wire \ena_cnt_reg_n_0_[2] ;
  wire \ena_cnt_reg_n_0_[3] ;
  wire \ena_cnt_reg_n_0_[4] ;
  wire \ena_cnt_reg_n_0_[5] ;
  wire \ena_cnt_reg_n_0_[6] ;
  wire \ena_cnt_reg_n_0_[7] ;
  wire \ena_cnt_reg_n_0_[8] ;
  wire \ena_cnt_reg_n_0_[9] ;
  wire ena_i_1_n_0;
  wire eqOp0_in;
  wire eqOp1_in;
  wire eqOp__10;
  wire \eqOp_inferred__3/i__carry_n_0 ;
  wire \eqOp_inferred__3/i__carry_n_1 ;
  wire \eqOp_inferred__3/i__carry_n_2 ;
  wire \eqOp_inferred__3/i__carry_n_3 ;
  wire gtOp;
  wire gtOp_carry_i_1_n_0;
  wire gtOp_carry_i_2_n_0;
  wire gtOp_carry_i_3_n_0;
  wire gtOp_carry_i_4_n_0;
  wire gtOp_carry_i_5_n_0;
  wire gtOp_carry_i_6_n_0;
  wire gtOp_carry_i_7_n_0;
  wire gtOp_carry_i_8_n_0;
  wire gtOp_carry_n_1;
  wire gtOp_carry_n_2;
  wire gtOp_carry_n_3;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire mS_cnt;
  wire \mS_cnt[7]_i_2_n_0 ;
  wire \mS_cnt[7]_i_6_n_0 ;
  wire \mS_cnt[7]_i_7_n_0 ;
  wire \mS_cnt[7]_i_8_n_0 ;
  wire [7:0]mS_cnt_reg;
  wire neqOp__0;
  wire [11:1]plusOp;
  wire [7:0]plusOp__0;
  wire [7:0]plusOp__1;
  wire [10:0]plusOp__2;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire port_pwm_i_1_n_0;
  wire port_pwm_i_2_n_0;
  wire port_pwm_i_3_n_0;
  wire port_pwm_reg_0;
  wire pwm_cnt;
  wire \pwm_cnt[7]_i_3_n_0 ;
  wire \pwm_cnt[7]_i_4_n_0 ;
  wire \pwm_cnt[7]_i_5_n_0 ;
  wire [7:0]pwm_cnt_reg;
  wire pwm_full_i_1_n_0;
  wire pwm_full_i_2_n_0;
  wire pwm_full_reg_n_0;
  wire [7:0]pwm_val;
  wire [7:0]pwm_val_loc;
  wire reset_i_1_n_0;
  wire rst_100_loc;
  wire run;
  wire run_d1;
  wire run_d2;
  wire run_loc;
  wire run_loc_i_1_n_0;
  wire run_off;
  wire run_off_i_1_n_0;
  wire run_on;
  wire run_on0;
  wire [1:0]status;
  wire [1:1]status_loc;
  wire \status_loc[0]_i_1_n_0 ;
  wire [1:0]status_loc_d1;
  wire \status_loc_reg_n_0_[0] ;
  wire \status_loc_reg_n_0_[1] ;
  wire time_cnt;
  wire \time_cnt[10]_i_1_n_0 ;
  wire \time_cnt[10]_i_4_n_0 ;
  wire [10:0]time_cnt_reg;
  wire [10:0]time_full;
  wire [10:0]time_full_loc;
  wire vld_in;
  wire vld_out;
  wire vld_out_loc;
  wire [3:0]\NLW_eqOp_inferred__3/i__carry_O_UNCONNECTED ;
  wire [3:0]NLW_gtOp_carry_O_UNCONNECTED;
  wire [3:2]NLW_plusOp_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__1_O_UNCONNECTED;

  FDRE #(
    .INIT(1'b1)) 
    aresetn_loc_reg
       (.C(aclk),
        .CE(1'b1),
        .D(aresetn),
        .Q(aresetn_loc),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFF2FFFF)) 
    \ena_cnt[0]_i_1 
       (.I0(\ena_cnt[11]_i_2_n_0 ),
        .I1(\ena_cnt[11]_i_3_n_0 ),
        .I2(eqOp__10),
        .I3(rst_100_loc),
        .I4(\ena_cnt_reg_n_0_[0] ),
        .O(\ena_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0FDD0FFF0F000F22)) 
    \ena_cnt[10]_i_1 
       (.I0(\ena_cnt[11]_i_2_n_0 ),
        .I1(\ena_cnt[11]_i_3_n_0 ),
        .I2(run_on),
        .I3(eqOp__10),
        .I4(run_loc),
        .I5(plusOp[10]),
        .O(ena_cnt[10]));
  LUT6 #(
    .INIT(64'h0FDD0FFF0F000F22)) 
    \ena_cnt[11]_i_1 
       (.I0(\ena_cnt[11]_i_2_n_0 ),
        .I1(\ena_cnt[11]_i_3_n_0 ),
        .I2(run_on),
        .I3(eqOp__10),
        .I4(run_loc),
        .I5(plusOp[11]),
        .O(ena_cnt[11]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \ena_cnt[11]_i_2 
       (.I0(\ena_cnt_reg_n_0_[10] ),
        .I1(\ena_cnt_reg_n_0_[9] ),
        .I2(\ena_cnt_reg_n_0_[11] ),
        .I3(\ena_cnt_reg_n_0_[6] ),
        .I4(\ena_cnt_reg_n_0_[7] ),
        .I5(\ena_cnt_reg_n_0_[8] ),
        .O(\ena_cnt[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF7F)) 
    \ena_cnt[11]_i_3 
       (.I0(\ena_cnt_reg_n_0_[1] ),
        .I1(\ena_cnt_reg_n_0_[4] ),
        .I2(\ena_cnt_reg_n_0_[5] ),
        .I3(\ena_cnt_reg_n_0_[3] ),
        .I4(\ena_cnt_reg_n_0_[0] ),
        .I5(\ena_cnt_reg_n_0_[2] ),
        .O(\ena_cnt[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ena_cnt[11]_i_4 
       (.I0(\ena_cnt[11]_i_5_n_0 ),
        .I1(\ena_cnt[11]_i_6_n_0 ),
        .O(eqOp__10));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \ena_cnt[11]_i_5 
       (.I0(\ena_cnt_reg_n_0_[9] ),
        .I1(\ena_cnt_reg_n_0_[11] ),
        .I2(\ena_cnt_reg_n_0_[10] ),
        .I3(\ena_cnt_reg_n_0_[8] ),
        .I4(\ena_cnt_reg_n_0_[6] ),
        .I5(\ena_cnt_reg_n_0_[7] ),
        .O(\ena_cnt[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \ena_cnt[11]_i_6 
       (.I0(\ena_cnt_reg_n_0_[0] ),
        .I1(\ena_cnt_reg_n_0_[1] ),
        .I2(\ena_cnt_reg_n_0_[2] ),
        .I3(\ena_cnt_reg_n_0_[3] ),
        .I4(\ena_cnt_reg_n_0_[4] ),
        .I5(\ena_cnt_reg_n_0_[5] ),
        .O(\ena_cnt[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0FDD0FFF0F000F22)) 
    \ena_cnt[1]_i_1 
       (.I0(\ena_cnt[11]_i_2_n_0 ),
        .I1(\ena_cnt[11]_i_3_n_0 ),
        .I2(run_on),
        .I3(eqOp__10),
        .I4(run_loc),
        .I5(plusOp[1]),
        .O(ena_cnt[1]));
  LUT6 #(
    .INIT(64'h0FDD0FFF0F000F22)) 
    \ena_cnt[2]_i_1 
       (.I0(\ena_cnt[11]_i_2_n_0 ),
        .I1(\ena_cnt[11]_i_3_n_0 ),
        .I2(run_on),
        .I3(eqOp__10),
        .I4(run_loc),
        .I5(plusOp[2]),
        .O(ena_cnt[2]));
  LUT6 #(
    .INIT(64'h0FDD0FFF0F000F22)) 
    \ena_cnt[3]_i_1 
       (.I0(\ena_cnt[11]_i_2_n_0 ),
        .I1(\ena_cnt[11]_i_3_n_0 ),
        .I2(run_on),
        .I3(eqOp__10),
        .I4(run_loc),
        .I5(plusOp[3]),
        .O(ena_cnt[3]));
  LUT6 #(
    .INIT(64'h0FDD0FFF0F000F22)) 
    \ena_cnt[4]_i_1 
       (.I0(\ena_cnt[11]_i_2_n_0 ),
        .I1(\ena_cnt[11]_i_3_n_0 ),
        .I2(run_on),
        .I3(eqOp__10),
        .I4(run_loc),
        .I5(plusOp[4]),
        .O(ena_cnt[4]));
  LUT6 #(
    .INIT(64'h0FDD0FFF0F000F22)) 
    \ena_cnt[5]_i_1 
       (.I0(\ena_cnt[11]_i_2_n_0 ),
        .I1(\ena_cnt[11]_i_3_n_0 ),
        .I2(run_on),
        .I3(eqOp__10),
        .I4(run_loc),
        .I5(plusOp[5]),
        .O(ena_cnt[5]));
  LUT6 #(
    .INIT(64'h0FDD0FFF0F000F22)) 
    \ena_cnt[6]_i_1 
       (.I0(\ena_cnt[11]_i_2_n_0 ),
        .I1(\ena_cnt[11]_i_3_n_0 ),
        .I2(run_on),
        .I3(eqOp__10),
        .I4(run_loc),
        .I5(plusOp[6]),
        .O(ena_cnt[6]));
  LUT6 #(
    .INIT(64'h0FDD0FFF0F000F22)) 
    \ena_cnt[7]_i_1 
       (.I0(\ena_cnt[11]_i_2_n_0 ),
        .I1(\ena_cnt[11]_i_3_n_0 ),
        .I2(run_on),
        .I3(eqOp__10),
        .I4(run_loc),
        .I5(plusOp[7]),
        .O(ena_cnt[7]));
  LUT6 #(
    .INIT(64'h0FDD0FFF0F000F22)) 
    \ena_cnt[8]_i_1 
       (.I0(\ena_cnt[11]_i_2_n_0 ),
        .I1(\ena_cnt[11]_i_3_n_0 ),
        .I2(run_on),
        .I3(eqOp__10),
        .I4(run_loc),
        .I5(plusOp[8]),
        .O(ena_cnt[8]));
  LUT6 #(
    .INIT(64'h0FDD0FFF0F000F22)) 
    \ena_cnt[9]_i_1 
       (.I0(\ena_cnt[11]_i_2_n_0 ),
        .I1(\ena_cnt[11]_i_3_n_0 ),
        .I2(run_on),
        .I3(eqOp__10),
        .I4(run_loc),
        .I5(plusOp[9]),
        .O(ena_cnt[9]));
  FDRE #(
    .INIT(1'b1)) 
    \ena_cnt_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\ena_cnt[0]_i_1_n_0 ),
        .Q(\ena_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \ena_cnt_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(ena_cnt[10]),
        .Q(\ena_cnt_reg_n_0_[10] ),
        .S(rst_100_loc));
  FDSE #(
    .INIT(1'b1)) 
    \ena_cnt_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(ena_cnt[11]),
        .Q(\ena_cnt_reg_n_0_[11] ),
        .S(rst_100_loc));
  FDSE #(
    .INIT(1'b1)) 
    \ena_cnt_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(ena_cnt[1]),
        .Q(\ena_cnt_reg_n_0_[1] ),
        .S(rst_100_loc));
  FDSE #(
    .INIT(1'b1)) 
    \ena_cnt_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(ena_cnt[2]),
        .Q(\ena_cnt_reg_n_0_[2] ),
        .S(rst_100_loc));
  FDSE #(
    .INIT(1'b1)) 
    \ena_cnt_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(ena_cnt[3]),
        .Q(\ena_cnt_reg_n_0_[3] ),
        .S(rst_100_loc));
  FDSE #(
    .INIT(1'b1)) 
    \ena_cnt_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(ena_cnt[4]),
        .Q(\ena_cnt_reg_n_0_[4] ),
        .S(rst_100_loc));
  FDSE #(
    .INIT(1'b1)) 
    \ena_cnt_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(ena_cnt[5]),
        .Q(\ena_cnt_reg_n_0_[5] ),
        .S(rst_100_loc));
  FDSE #(
    .INIT(1'b1)) 
    \ena_cnt_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(ena_cnt[6]),
        .Q(\ena_cnt_reg_n_0_[6] ),
        .S(rst_100_loc));
  FDSE #(
    .INIT(1'b1)) 
    \ena_cnt_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(ena_cnt[7]),
        .Q(\ena_cnt_reg_n_0_[7] ),
        .S(rst_100_loc));
  FDSE #(
    .INIT(1'b1)) 
    \ena_cnt_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(ena_cnt[8]),
        .Q(\ena_cnt_reg_n_0_[8] ),
        .S(rst_100_loc));
  FDSE #(
    .INIT(1'b1)) 
    \ena_cnt_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(ena_cnt[9]),
        .Q(\ena_cnt_reg_n_0_[9] ),
        .S(rst_100_loc));
  LUT6 #(
    .INIT(64'h00000000FF002020)) 
    ena_i_1
       (.I0(\ena_cnt[11]_i_2_n_0 ),
        .I1(\ena_cnt[11]_i_3_n_0 ),
        .I2(run_loc),
        .I3(run_on),
        .I4(eqOp__10),
        .I5(rst_100_loc),
        .O(ena_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ena_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ena_i_1_n_0),
        .Q(ena),
        .R(1'b0));
  CARRY4 \eqOp_inferred__3/i__carry 
       (.CI(1'b0),
        .CO({\eqOp_inferred__3/i__carry_n_0 ,\eqOp_inferred__3/i__carry_n_1 ,\eqOp_inferred__3/i__carry_n_2 ,\eqOp_inferred__3/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_eqOp_inferred__3/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 gtOp_carry
       (.CI(1'b0),
        .CO({gtOp,gtOp_carry_n_1,gtOp_carry_n_2,gtOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({gtOp_carry_i_1_n_0,gtOp_carry_i_2_n_0,gtOp_carry_i_3_n_0,gtOp_carry_i_4_n_0}),
        .O(NLW_gtOp_carry_O_UNCONNECTED[3:0]),
        .S({gtOp_carry_i_5_n_0,gtOp_carry_i_6_n_0,gtOp_carry_i_7_n_0,gtOp_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_1
       (.I0(pwm_cnt_reg[6]),
        .I1(pwm_val_loc[6]),
        .I2(pwm_val_loc[7]),
        .I3(pwm_cnt_reg[7]),
        .O(gtOp_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_2
       (.I0(pwm_cnt_reg[4]),
        .I1(pwm_val_loc[4]),
        .I2(pwm_val_loc[5]),
        .I3(pwm_cnt_reg[5]),
        .O(gtOp_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_3
       (.I0(pwm_cnt_reg[2]),
        .I1(pwm_val_loc[2]),
        .I2(pwm_val_loc[3]),
        .I3(pwm_cnt_reg[3]),
        .O(gtOp_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_4
       (.I0(pwm_cnt_reg[0]),
        .I1(pwm_val_loc[0]),
        .I2(pwm_val_loc[1]),
        .I3(pwm_cnt_reg[1]),
        .O(gtOp_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_5
       (.I0(pwm_cnt_reg[6]),
        .I1(pwm_val_loc[6]),
        .I2(pwm_cnt_reg[7]),
        .I3(pwm_val_loc[7]),
        .O(gtOp_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_6
       (.I0(pwm_cnt_reg[4]),
        .I1(pwm_val_loc[4]),
        .I2(pwm_cnt_reg[5]),
        .I3(pwm_val_loc[5]),
        .O(gtOp_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_7
       (.I0(pwm_cnt_reg[2]),
        .I1(pwm_val_loc[2]),
        .I2(pwm_cnt_reg[3]),
        .I3(pwm_val_loc[3]),
        .O(gtOp_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_8
       (.I0(pwm_cnt_reg[0]),
        .I1(pwm_val_loc[0]),
        .I2(pwm_cnt_reg[1]),
        .I3(pwm_val_loc[1]),
        .O(gtOp_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_1
       (.I0(time_cnt_reg[9]),
        .I1(time_full_loc[9]),
        .I2(time_cnt_reg[10]),
        .I3(time_full_loc[10]),
        .O(i__carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2
       (.I0(time_cnt_reg[6]),
        .I1(time_full_loc[6]),
        .I2(time_full_loc[8]),
        .I3(time_cnt_reg[8]),
        .I4(time_full_loc[7]),
        .I5(time_cnt_reg[7]),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3
       (.I0(time_cnt_reg[3]),
        .I1(time_full_loc[3]),
        .I2(time_full_loc[5]),
        .I3(time_cnt_reg[5]),
        .I4(time_full_loc[4]),
        .I5(time_cnt_reg[4]),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4
       (.I0(time_cnt_reg[0]),
        .I1(time_full_loc[0]),
        .I2(time_full_loc[2]),
        .I3(time_cnt_reg[2]),
        .I4(time_full_loc[1]),
        .I5(time_cnt_reg[1]),
        .O(i__carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \mS_cnt[0]_i_1 
       (.I0(mS_cnt_reg[0]),
        .O(plusOp__1[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \mS_cnt[1]_i_1 
       (.I0(mS_cnt_reg[0]),
        .I1(mS_cnt_reg[1]),
        .O(plusOp__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \mS_cnt[2]_i_1 
       (.I0(mS_cnt_reg[0]),
        .I1(mS_cnt_reg[1]),
        .I2(mS_cnt_reg[2]),
        .O(plusOp__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \mS_cnt[3]_i_1 
       (.I0(mS_cnt_reg[1]),
        .I1(mS_cnt_reg[0]),
        .I2(mS_cnt_reg[2]),
        .I3(mS_cnt_reg[3]),
        .O(plusOp__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \mS_cnt[4]_i_1 
       (.I0(mS_cnt_reg[2]),
        .I1(mS_cnt_reg[0]),
        .I2(mS_cnt_reg[1]),
        .I3(mS_cnt_reg[3]),
        .I4(mS_cnt_reg[4]),
        .O(plusOp__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \mS_cnt[5]_i_1 
       (.I0(mS_cnt_reg[3]),
        .I1(mS_cnt_reg[1]),
        .I2(mS_cnt_reg[0]),
        .I3(mS_cnt_reg[2]),
        .I4(mS_cnt_reg[4]),
        .I5(mS_cnt_reg[5]),
        .O(plusOp__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mS_cnt[6]_i_1 
       (.I0(\mS_cnt[7]_i_7_n_0 ),
        .I1(mS_cnt_reg[6]),
        .O(plusOp__1[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFDDDDDDD)) 
    \mS_cnt[7]_i_1 
       (.I0(run_loc),
        .I1(run_on),
        .I2(eqOp1_in),
        .I3(eqOp0_in),
        .I4(ena),
        .I5(\mS_cnt[7]_i_6_n_0 ),
        .O(mS_cnt));
  LUT1 #(
    .INIT(2'h1)) 
    \mS_cnt[7]_i_2 
       (.I0(\pwm_cnt[7]_i_3_n_0 ),
        .O(\mS_cnt[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \mS_cnt[7]_i_3 
       (.I0(\mS_cnt[7]_i_7_n_0 ),
        .I1(mS_cnt_reg[6]),
        .I2(mS_cnt_reg[7]),
        .O(plusOp__1[7]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \mS_cnt[7]_i_4 
       (.I0(pwm_cnt_reg[1]),
        .I1(pwm_cnt_reg[3]),
        .I2(pwm_cnt_reg[4]),
        .I3(pwm_cnt_reg[7]),
        .I4(\pwm_cnt[7]_i_5_n_0 ),
        .O(eqOp1_in));
  LUT5 #(
    .INIT(32'h00000001)) 
    \mS_cnt[7]_i_5 
       (.I0(mS_cnt_reg[3]),
        .I1(mS_cnt_reg[5]),
        .I2(mS_cnt_reg[7]),
        .I3(mS_cnt_reg[6]),
        .I4(\mS_cnt[7]_i_8_n_0 ),
        .O(eqOp0_in));
  LUT2 #(
    .INIT(4'hE)) 
    \mS_cnt[7]_i_6 
       (.I0(rst_100_loc),
        .I1(run_off),
        .O(\mS_cnt[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \mS_cnt[7]_i_7 
       (.I0(mS_cnt_reg[5]),
        .I1(mS_cnt_reg[3]),
        .I2(mS_cnt_reg[1]),
        .I3(mS_cnt_reg[0]),
        .I4(mS_cnt_reg[2]),
        .I5(mS_cnt_reg[4]),
        .O(\mS_cnt[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \mS_cnt[7]_i_8 
       (.I0(mS_cnt_reg[4]),
        .I1(mS_cnt_reg[2]),
        .I2(mS_cnt_reg[1]),
        .I3(mS_cnt_reg[0]),
        .O(\mS_cnt[7]_i_8_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \mS_cnt_reg[0] 
       (.C(aclk),
        .CE(\mS_cnt[7]_i_2_n_0 ),
        .D(plusOp__1[0]),
        .Q(mS_cnt_reg[0]),
        .S(mS_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \mS_cnt_reg[1] 
       (.C(aclk),
        .CE(\mS_cnt[7]_i_2_n_0 ),
        .D(plusOp__1[1]),
        .Q(mS_cnt_reg[1]),
        .R(mS_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \mS_cnt_reg[2] 
       (.C(aclk),
        .CE(\mS_cnt[7]_i_2_n_0 ),
        .D(plusOp__1[2]),
        .Q(mS_cnt_reg[2]),
        .R(mS_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \mS_cnt_reg[3] 
       (.C(aclk),
        .CE(\mS_cnt[7]_i_2_n_0 ),
        .D(plusOp__1[3]),
        .Q(mS_cnt_reg[3]),
        .R(mS_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \mS_cnt_reg[4] 
       (.C(aclk),
        .CE(\mS_cnt[7]_i_2_n_0 ),
        .D(plusOp__1[4]),
        .Q(mS_cnt_reg[4]),
        .R(mS_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \mS_cnt_reg[5] 
       (.C(aclk),
        .CE(\mS_cnt[7]_i_2_n_0 ),
        .D(plusOp__1[5]),
        .Q(mS_cnt_reg[5]),
        .R(mS_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \mS_cnt_reg[6] 
       (.C(aclk),
        .CE(\mS_cnt[7]_i_2_n_0 ),
        .D(plusOp__1[6]),
        .Q(mS_cnt_reg[6]),
        .R(mS_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \mS_cnt_reg[7] 
       (.C(aclk),
        .CE(\mS_cnt[7]_i_2_n_0 ),
        .D(plusOp__1[7]),
        .Q(mS_cnt_reg[7]),
        .R(mS_cnt));
  LUT4 #(
    .INIT(16'h6FF6)) 
    neqOp
       (.I0(status_loc_d1[0]),
        .I1(\status_loc_reg_n_0_[0] ),
        .I2(status_loc_d1[1]),
        .I3(\status_loc_reg_n_0_[1] ),
        .O(neqOp__0));
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(\ena_cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[4:1]),
        .S({\ena_cnt_reg_n_0_[4] ,\ena_cnt_reg_n_0_[3] ,\ena_cnt_reg_n_0_[2] ,\ena_cnt_reg_n_0_[1] }));
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[8:5]),
        .S({\ena_cnt_reg_n_0_[8] ,\ena_cnt_reg_n_0_[7] ,\ena_cnt_reg_n_0_[6] ,\ena_cnt_reg_n_0_[5] }));
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({NLW_plusOp_carry__1_CO_UNCONNECTED[3:2],plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__1_O_UNCONNECTED[3],plusOp[11:9]}),
        .S({1'b0,\ena_cnt_reg_n_0_[11] ,\ena_cnt_reg_n_0_[10] ,\ena_cnt_reg_n_0_[9] }));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h000D)) 
    port_pwm_i_1
       (.I0(gtOp),
        .I1(pwm_full_reg_n_0),
        .I2(port_pwm_i_2_n_0),
        .I3(rst_100_loc),
        .O(port_pwm_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    port_pwm_i_2
       (.I0(port_pwm_i_3_n_0),
        .I1(pwm_val_loc[7]),
        .I2(pwm_val_loc[6]),
        .I3(pwm_val_loc[4]),
        .I4(pwm_val_loc[5]),
        .I5(run_loc),
        .O(port_pwm_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    port_pwm_i_3
       (.I0(pwm_val_loc[2]),
        .I1(pwm_val_loc[3]),
        .I2(pwm_val_loc[0]),
        .I3(pwm_val_loc[1]),
        .O(port_pwm_i_3_n_0));
  FDRE port_pwm_reg
       (.C(aclk),
        .CE(1'b1),
        .D(port_pwm_i_1_n_0),
        .Q(port_pwm_reg_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \pwm_cnt[0]_i_1 
       (.I0(pwm_cnt_reg[0]),
        .O(plusOp__0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \pwm_cnt[1]_i_1 
       (.I0(pwm_cnt_reg[0]),
        .I1(pwm_cnt_reg[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pwm_cnt[2]_i_1 
       (.I0(pwm_cnt_reg[0]),
        .I1(pwm_cnt_reg[1]),
        .I2(pwm_cnt_reg[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pwm_cnt[3]_i_1 
       (.I0(pwm_cnt_reg[1]),
        .I1(pwm_cnt_reg[0]),
        .I2(pwm_cnt_reg[2]),
        .I3(pwm_cnt_reg[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \pwm_cnt[4]_i_1 
       (.I0(pwm_cnt_reg[2]),
        .I1(pwm_cnt_reg[0]),
        .I2(pwm_cnt_reg[1]),
        .I3(pwm_cnt_reg[3]),
        .I4(pwm_cnt_reg[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \pwm_cnt[5]_i_1 
       (.I0(pwm_cnt_reg[3]),
        .I1(pwm_cnt_reg[1]),
        .I2(pwm_cnt_reg[0]),
        .I3(pwm_cnt_reg[2]),
        .I4(pwm_cnt_reg[4]),
        .I5(pwm_cnt_reg[5]),
        .O(plusOp__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pwm_cnt[6]_i_1 
       (.I0(\pwm_cnt[7]_i_4_n_0 ),
        .I1(pwm_cnt_reg[6]),
        .O(plusOp__0[6]));
  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    \pwm_cnt[7]_i_1 
       (.I0(run_loc),
        .I1(run_on),
        .I2(\pwm_cnt[7]_i_3_n_0 ),
        .I3(rst_100_loc),
        .I4(run_off),
        .O(pwm_cnt));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pwm_cnt[7]_i_2 
       (.I0(\pwm_cnt[7]_i_4_n_0 ),
        .I1(pwm_cnt_reg[6]),
        .I2(pwm_cnt_reg[7]),
        .O(plusOp__0[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \pwm_cnt[7]_i_3 
       (.I0(ena),
        .I1(\pwm_cnt[7]_i_5_n_0 ),
        .I2(pwm_cnt_reg[7]),
        .I3(pwm_cnt_reg[4]),
        .I4(pwm_cnt_reg[3]),
        .I5(pwm_cnt_reg[1]),
        .O(\pwm_cnt[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \pwm_cnt[7]_i_4 
       (.I0(pwm_cnt_reg[5]),
        .I1(pwm_cnt_reg[3]),
        .I2(pwm_cnt_reg[1]),
        .I3(pwm_cnt_reg[0]),
        .I4(pwm_cnt_reg[2]),
        .I5(pwm_cnt_reg[4]),
        .O(\pwm_cnt[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF7FF)) 
    \pwm_cnt[7]_i_5 
       (.I0(pwm_cnt_reg[5]),
        .I1(pwm_cnt_reg[2]),
        .I2(pwm_cnt_reg[0]),
        .I3(pwm_cnt_reg[6]),
        .O(\pwm_cnt[7]_i_5_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \pwm_cnt_reg[0] 
       (.C(aclk),
        .CE(ena),
        .D(plusOp__0[0]),
        .Q(pwm_cnt_reg[0]),
        .S(pwm_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cnt_reg[1] 
       (.C(aclk),
        .CE(ena),
        .D(plusOp__0[1]),
        .Q(pwm_cnt_reg[1]),
        .R(pwm_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cnt_reg[2] 
       (.C(aclk),
        .CE(ena),
        .D(plusOp__0[2]),
        .Q(pwm_cnt_reg[2]),
        .R(pwm_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cnt_reg[3] 
       (.C(aclk),
        .CE(ena),
        .D(plusOp__0[3]),
        .Q(pwm_cnt_reg[3]),
        .R(pwm_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cnt_reg[4] 
       (.C(aclk),
        .CE(ena),
        .D(plusOp__0[4]),
        .Q(pwm_cnt_reg[4]),
        .R(pwm_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cnt_reg[5] 
       (.C(aclk),
        .CE(ena),
        .D(plusOp__0[5]),
        .Q(pwm_cnt_reg[5]),
        .R(pwm_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cnt_reg[6] 
       (.C(aclk),
        .CE(ena),
        .D(plusOp__0[6]),
        .Q(pwm_cnt_reg[6]),
        .R(pwm_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cnt_reg[7] 
       (.C(aclk),
        .CE(ena),
        .D(plusOp__0[7]),
        .Q(pwm_cnt_reg[7]),
        .R(pwm_cnt));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h02)) 
    pwm_full_i_1
       (.I0(pwm_full_i_2_n_0),
        .I1(run_off),
        .I2(rst_100_loc),
        .O(pwm_full_i_1_n_0));
  LUT6 #(
    .INIT(64'hEAEEEEEEAAAAAAAA)) 
    pwm_full_i_2
       (.I0(run_on),
        .I1(run_loc),
        .I2(\pwm_cnt[7]_i_3_n_0 ),
        .I3(\eqOp_inferred__3/i__carry_n_0 ),
        .I4(eqOp0_in),
        .I5(pwm_full_reg_n_0),
        .O(pwm_full_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pwm_full_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pwm_full_i_1_n_0),
        .Q(pwm_full_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_val_loc_reg[0] 
       (.C(aclk),
        .CE(vld_out_loc),
        .D(pwm_val[0]),
        .Q(pwm_val_loc[0]),
        .R(rst_100_loc));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_val_loc_reg[1] 
       (.C(aclk),
        .CE(vld_out_loc),
        .D(pwm_val[1]),
        .Q(pwm_val_loc[1]),
        .R(rst_100_loc));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_val_loc_reg[2] 
       (.C(aclk),
        .CE(vld_out_loc),
        .D(pwm_val[2]),
        .Q(pwm_val_loc[2]),
        .R(rst_100_loc));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_val_loc_reg[3] 
       (.C(aclk),
        .CE(vld_out_loc),
        .D(pwm_val[3]),
        .Q(pwm_val_loc[3]),
        .R(rst_100_loc));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_val_loc_reg[4] 
       (.C(aclk),
        .CE(vld_out_loc),
        .D(pwm_val[4]),
        .Q(pwm_val_loc[4]),
        .R(rst_100_loc));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_val_loc_reg[5] 
       (.C(aclk),
        .CE(vld_out_loc),
        .D(pwm_val[5]),
        .Q(pwm_val_loc[5]),
        .R(rst_100_loc));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_val_loc_reg[6] 
       (.C(aclk),
        .CE(vld_out_loc),
        .D(pwm_val[6]),
        .Q(pwm_val_loc[6]),
        .R(rst_100_loc));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_val_loc_reg[7] 
       (.C(aclk),
        .CE(vld_out_loc),
        .D(pwm_val[7]),
        .Q(pwm_val_loc[7]),
        .R(rst_100_loc));
  LUT1 #(
    .INIT(2'h1)) 
    reset_i_1
       (.I0(aresetn_loc),
        .O(reset_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    reset_reg
       (.C(aclk),
        .CE(1'b1),
        .D(reset_i_1_n_0),
        .Q(rst_100_loc),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    run_d1_reg
       (.C(aclk),
        .CE(vld_out_loc),
        .D(run),
        .Q(run_d1),
        .R(rst_100_loc));
  FDRE #(
    .INIT(1'b0)) 
    run_d2_reg
       (.C(aclk),
        .CE(1'b1),
        .D(run_d1),
        .Q(run_d2),
        .R(rst_100_loc));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    run_loc_i_1
       (.I0(run_d1),
        .I1(run_d2),
        .I2(run_loc),
        .O(run_loc_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    run_loc_reg
       (.C(aclk),
        .CE(1'b1),
        .D(run_loc_i_1_n_0),
        .Q(run_loc),
        .R(rst_100_loc));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h04)) 
    run_off_i_1
       (.I0(run_d1),
        .I1(run_d2),
        .I2(rst_100_loc),
        .O(run_off_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    run_off_reg
       (.C(aclk),
        .CE(1'b1),
        .D(run_off_i_1_n_0),
        .Q(run_off),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    run_on_i_1
       (.I0(run_d1),
        .I1(run_d2),
        .O(run_on0));
  FDRE #(
    .INIT(1'b0)) 
    run_on_reg
       (.C(aclk),
        .CE(1'b1),
        .D(run_on0),
        .Q(run_on),
        .R(rst_100_loc));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \status_loc[0]_i_1 
       (.I0(run_loc),
        .I1(pwm_full_reg_n_0),
        .I2(rst_100_loc),
        .O(\status_loc[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \status_loc[1]_i_1 
       (.I0(pwm_full_reg_n_0),
        .I1(run_loc),
        .O(status_loc));
  FDRE \status_loc_d1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\status_loc_reg_n_0_[0] ),
        .Q(status_loc_d1[0]),
        .R(rst_100_loc));
  FDRE \status_loc_d1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\status_loc_reg_n_0_[1] ),
        .Q(status_loc_d1[1]),
        .R(rst_100_loc));
  FDRE \status_loc_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\status_loc[0]_i_1_n_0 ),
        .Q(\status_loc_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \status_loc_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(status_loc),
        .Q(\status_loc_reg_n_0_[1] ),
        .R(rst_100_loc));
  FDRE \status_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(status_loc_d1[0]),
        .Q(status[0]),
        .R(rst_100_loc));
  FDRE \status_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(status_loc_d1[1]),
        .Q(status[1]),
        .R(rst_100_loc));
  LUT1 #(
    .INIT(2'h1)) 
    \time_cnt[0]_i_1 
       (.I0(time_cnt_reg[0]),
        .O(plusOp__2[0]));
  LUT3 #(
    .INIT(8'hFE)) 
    \time_cnt[10]_i_1 
       (.I0(rst_100_loc),
        .I1(run_on),
        .I2(run_off),
        .O(\time_cnt[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \time_cnt[10]_i_2 
       (.I0(run_loc),
        .I1(\eqOp_inferred__3/i__carry_n_0 ),
        .I2(eqOp0_in),
        .I3(\pwm_cnt[7]_i_3_n_0 ),
        .O(time_cnt));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \time_cnt[10]_i_3 
       (.I0(time_cnt_reg[8]),
        .I1(time_cnt_reg[6]),
        .I2(\time_cnt[10]_i_4_n_0 ),
        .I3(time_cnt_reg[7]),
        .I4(time_cnt_reg[9]),
        .I5(time_cnt_reg[10]),
        .O(plusOp__2[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \time_cnt[10]_i_4 
       (.I0(time_cnt_reg[5]),
        .I1(time_cnt_reg[3]),
        .I2(time_cnt_reg[1]),
        .I3(time_cnt_reg[0]),
        .I4(time_cnt_reg[2]),
        .I5(time_cnt_reg[4]),
        .O(\time_cnt[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \time_cnt[1]_i_1 
       (.I0(time_cnt_reg[0]),
        .I1(time_cnt_reg[1]),
        .O(plusOp__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \time_cnt[2]_i_1 
       (.I0(time_cnt_reg[0]),
        .I1(time_cnt_reg[1]),
        .I2(time_cnt_reg[2]),
        .O(plusOp__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \time_cnt[3]_i_1 
       (.I0(time_cnt_reg[1]),
        .I1(time_cnt_reg[0]),
        .I2(time_cnt_reg[2]),
        .I3(time_cnt_reg[3]),
        .O(plusOp__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \time_cnt[4]_i_1 
       (.I0(time_cnt_reg[2]),
        .I1(time_cnt_reg[0]),
        .I2(time_cnt_reg[1]),
        .I3(time_cnt_reg[3]),
        .I4(time_cnt_reg[4]),
        .O(plusOp__2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \time_cnt[5]_i_1 
       (.I0(time_cnt_reg[3]),
        .I1(time_cnt_reg[1]),
        .I2(time_cnt_reg[0]),
        .I3(time_cnt_reg[2]),
        .I4(time_cnt_reg[4]),
        .I5(time_cnt_reg[5]),
        .O(plusOp__2[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \time_cnt[6]_i_1 
       (.I0(\time_cnt[10]_i_4_n_0 ),
        .I1(time_cnt_reg[6]),
        .O(plusOp__2[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \time_cnt[7]_i_1 
       (.I0(\time_cnt[10]_i_4_n_0 ),
        .I1(time_cnt_reg[6]),
        .I2(time_cnt_reg[7]),
        .O(plusOp__2[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \time_cnt[8]_i_1 
       (.I0(time_cnt_reg[6]),
        .I1(\time_cnt[10]_i_4_n_0 ),
        .I2(time_cnt_reg[7]),
        .I3(time_cnt_reg[8]),
        .O(plusOp__2[8]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \time_cnt[9]_i_1 
       (.I0(time_cnt_reg[7]),
        .I1(\time_cnt[10]_i_4_n_0 ),
        .I2(time_cnt_reg[6]),
        .I3(time_cnt_reg[8]),
        .I4(time_cnt_reg[9]),
        .O(plusOp__2[9]));
  FDSE #(
    .INIT(1'b1)) 
    \time_cnt_reg[0] 
       (.C(aclk),
        .CE(time_cnt),
        .D(plusOp__2[0]),
        .Q(time_cnt_reg[0]),
        .S(\time_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_cnt_reg[10] 
       (.C(aclk),
        .CE(time_cnt),
        .D(plusOp__2[10]),
        .Q(time_cnt_reg[10]),
        .R(\time_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_cnt_reg[1] 
       (.C(aclk),
        .CE(time_cnt),
        .D(plusOp__2[1]),
        .Q(time_cnt_reg[1]),
        .R(\time_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_cnt_reg[2] 
       (.C(aclk),
        .CE(time_cnt),
        .D(plusOp__2[2]),
        .Q(time_cnt_reg[2]),
        .R(\time_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_cnt_reg[3] 
       (.C(aclk),
        .CE(time_cnt),
        .D(plusOp__2[3]),
        .Q(time_cnt_reg[3]),
        .R(\time_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_cnt_reg[4] 
       (.C(aclk),
        .CE(time_cnt),
        .D(plusOp__2[4]),
        .Q(time_cnt_reg[4]),
        .R(\time_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_cnt_reg[5] 
       (.C(aclk),
        .CE(time_cnt),
        .D(plusOp__2[5]),
        .Q(time_cnt_reg[5]),
        .R(\time_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_cnt_reg[6] 
       (.C(aclk),
        .CE(time_cnt),
        .D(plusOp__2[6]),
        .Q(time_cnt_reg[6]),
        .R(\time_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_cnt_reg[7] 
       (.C(aclk),
        .CE(time_cnt),
        .D(plusOp__2[7]),
        .Q(time_cnt_reg[7]),
        .R(\time_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_cnt_reg[8] 
       (.C(aclk),
        .CE(time_cnt),
        .D(plusOp__2[8]),
        .Q(time_cnt_reg[8]),
        .R(\time_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_cnt_reg[9] 
       (.C(aclk),
        .CE(time_cnt),
        .D(plusOp__2[9]),
        .Q(time_cnt_reg[9]),
        .R(\time_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \time_full_loc_reg[0] 
       (.C(aclk),
        .CE(vld_out_loc),
        .D(time_full[0]),
        .Q(time_full_loc[0]),
        .R(rst_100_loc));
  FDRE #(
    .INIT(1'b0)) 
    \time_full_loc_reg[10] 
       (.C(aclk),
        .CE(vld_out_loc),
        .D(time_full[10]),
        .Q(time_full_loc[10]),
        .R(rst_100_loc));
  FDRE #(
    .INIT(1'b0)) 
    \time_full_loc_reg[1] 
       (.C(aclk),
        .CE(vld_out_loc),
        .D(time_full[1]),
        .Q(time_full_loc[1]),
        .R(rst_100_loc));
  FDRE #(
    .INIT(1'b0)) 
    \time_full_loc_reg[2] 
       (.C(aclk),
        .CE(vld_out_loc),
        .D(time_full[2]),
        .Q(time_full_loc[2]),
        .R(rst_100_loc));
  FDRE #(
    .INIT(1'b0)) 
    \time_full_loc_reg[3] 
       (.C(aclk),
        .CE(vld_out_loc),
        .D(time_full[3]),
        .Q(time_full_loc[3]),
        .R(rst_100_loc));
  FDRE #(
    .INIT(1'b0)) 
    \time_full_loc_reg[4] 
       (.C(aclk),
        .CE(vld_out_loc),
        .D(time_full[4]),
        .Q(time_full_loc[4]),
        .R(rst_100_loc));
  FDRE #(
    .INIT(1'b0)) 
    \time_full_loc_reg[5] 
       (.C(aclk),
        .CE(vld_out_loc),
        .D(time_full[5]),
        .Q(time_full_loc[5]),
        .R(rst_100_loc));
  FDRE #(
    .INIT(1'b0)) 
    \time_full_loc_reg[6] 
       (.C(aclk),
        .CE(vld_out_loc),
        .D(time_full[6]),
        .Q(time_full_loc[6]),
        .R(rst_100_loc));
  FDRE #(
    .INIT(1'b0)) 
    \time_full_loc_reg[7] 
       (.C(aclk),
        .CE(vld_out_loc),
        .D(time_full[7]),
        .Q(time_full_loc[7]),
        .R(rst_100_loc));
  FDRE #(
    .INIT(1'b0)) 
    \time_full_loc_reg[8] 
       (.C(aclk),
        .CE(vld_out_loc),
        .D(time_full[8]),
        .Q(time_full_loc[8]),
        .R(rst_100_loc));
  FDRE #(
    .INIT(1'b0)) 
    \time_full_loc_reg[9] 
       (.C(aclk),
        .CE(vld_out_loc),
        .D(time_full[9]),
        .Q(time_full_loc[9]),
        .R(rst_100_loc));
  FDRE vld_in_reg
       (.C(aclk),
        .CE(1'b1),
        .D(neqOp__0),
        .Q(vld_in),
        .R(rst_100_loc));
  FDRE #(
    .INIT(1'b0)) 
    vld_out_loc_reg
       (.C(aclk),
        .CE(1'b1),
        .D(vld_out),
        .Q(vld_out_loc),
        .R(rst_100_loc));
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
