// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
// Date        : Mon Feb  1 16:31:53 2021
// Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top S7_DCM_ctrl_3_0 -prefix
//               S7_DCM_ctrl_3_0_ S7_DCM_ctrl_1_0_sim_netlist.v
// Design      : S7_DCM_ctrl_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s100fgga676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module S7_DCM_ctrl_3_0_DCM_ctrl
   (status,
    vld_in,
    port_pwm,
    port_in1,
    port_in2,
    aresetn,
    clk200,
    vld_out,
    brake,
    run,
    pwm_frq,
    aclk,
    pwm_val,
    dir);
  output [1:0]status;
  output vld_in;
  output port_pwm;
  output port_in1;
  output port_in2;
  input aresetn;
  input clk200;
  input vld_out;
  input brake;
  input run;
  input [6:0]pwm_frq;
  input aclk;
  input [7:0]pwm_val;
  input dir;

  wire \R.DCM_ctrl_i_n_2 ;
  wire \R.DCM_ctrl_i_n_3 ;
  wire \R.DCM_ctrl_i_n_4 ;
  wire aclk;
  wire aresetn;
  wire brake;
  wire clk200;
  wire dir;
  wire port_in1;
  wire port_in2;
  wire port_pwm;
  wire [6:0]pwm_frq;
  wire [7:0]pwm_val;
  wire rst_200_loc;
  wire run;
  wire [1:0]status;
  wire vld_in;
  wire vld_out;

  S7_DCM_ctrl_3_0_DCM_ctrl_real \R.DCM_ctrl_i 
       (.aclk(aclk),
        .aresetn(aresetn),
        .brake(brake),
        .clk200(clk200),
        .dir(dir),
        .port_in1_reg_0(\R.DCM_ctrl_i_n_2 ),
        .port_in2_reg_0(\R.DCM_ctrl_i_n_3 ),
        .port_pwm_reg_0(\R.DCM_ctrl_i_n_4 ),
        .pwm_frq(pwm_frq),
        .pwm_val(pwm_val),
        .rst_200_loc(rst_200_loc),
        .run(run),
        .status(status),
        .vld_in(vld_in),
        .vld_out(vld_out));
  (* IOB = "TRUE" *) 
  FDRE port_in1_reg
       (.C(clk200),
        .CE(1'b1),
        .D(\R.DCM_ctrl_i_n_2 ),
        .Q(port_in1),
        .R(rst_200_loc));
  (* IOB = "TRUE" *) 
  FDRE port_in2_reg
       (.C(clk200),
        .CE(1'b1),
        .D(\R.DCM_ctrl_i_n_3 ),
        .Q(port_in2),
        .R(rst_200_loc));
  (* IOB = "TRUE" *) 
  FDRE port_pwm_reg
       (.C(clk200),
        .CE(1'b1),
        .D(\R.DCM_ctrl_i_n_4 ),
        .Q(port_pwm),
        .R(rst_200_loc));
endmodule

module S7_DCM_ctrl_3_0_DCM_ctrl_real
   (rst_200_loc,
    vld_in,
    port_in1_reg_0,
    port_in2_reg_0,
    port_pwm_reg_0,
    status,
    aresetn,
    clk200,
    vld_out,
    brake,
    run,
    aclk,
    dir,
    pwm_frq,
    pwm_val);
  output rst_200_loc;
  output vld_in;
  output port_in1_reg_0;
  output port_in2_reg_0;
  output port_pwm_reg_0;
  output [1:0]status;
  input aresetn;
  input clk200;
  input vld_out;
  input brake;
  input run;
  input aclk;
  input dir;
  input [6:0]pwm_frq;
  input [7:0]pwm_val;

  wire aclk;
  wire aresetn;
  wire aresetn_loc;
  wire aresetn_loc_200;
  wire brake;
  wire brake_d1;
  wire brake_d2;
  wire brake_loc;
  wire brake_loc_i_1_n_0;
  wire clk200;
  wire dir;
  wire dir_d1;
  wire dir_d2;
  wire dir_loc;
  wire [8:1]ena_cnt;
  wire \ena_cnt[0]_i_1_n_0 ;
  wire \ena_cnt[2]_i_2_n_0 ;
  wire \ena_cnt[3]_i_2_n_0 ;
  wire \ena_cnt[4]_i_2_n_0 ;
  wire \ena_cnt[5]_i_2_n_0 ;
  wire \ena_cnt[6]_i_2_n_0 ;
  wire \ena_cnt[7]_i_2_n_0 ;
  wire \ena_cnt[8]_i_2_n_0 ;
  wire \ena_cnt_reg_n_0_[0] ;
  wire \ena_cnt_reg_n_0_[1] ;
  wire \ena_cnt_reg_n_0_[2] ;
  wire \ena_cnt_reg_n_0_[3] ;
  wire \ena_cnt_reg_n_0_[4] ;
  wire \ena_cnt_reg_n_0_[5] ;
  wire \ena_cnt_reg_n_0_[6] ;
  wire \ena_cnt_reg_n_0_[7] ;
  wire \ena_cnt_reg_n_0_[8] ;
  wire ena_i_1_n_0;
  wire ena_i_2_n_0;
  wire ena_i_3_n_0;
  wire ena_i_4_n_0;
  wire ena_reg_n_0;
  wire eqOp2_in;
  wire \eqOp_inferred__1/i__carry_n_2 ;
  wire \eqOp_inferred__1/i__carry_n_3 ;
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
  wire neqOp__0;
  wire [7:0]plusOp;
  wire port_in1_i_1_n_0;
  wire port_in1_reg_0;
  wire port_in2_i_1_n_0;
  wire port_in2_reg_0;
  wire port_pwm_i_1_n_0;
  wire port_pwm_i_2_n_0;
  wire port_pwm_i_3_n_0;
  wire port_pwm_reg_0;
  wire \pwm_cnt[7]_i_1_n_0 ;
  wire \pwm_cnt[7]_i_3_n_0 ;
  wire \pwm_cnt[7]_i_4_n_0 ;
  wire [7:0]pwm_cnt_reg;
  wire [8:0]pwm_ena;
  wire pwm_ena0;
  wire [8:0]pwm_ena_loc;
  wire \pwm_ena_loc[0]_i_2_n_0 ;
  wire \pwm_ena_loc[0]_i_3_n_0 ;
  wire \pwm_ena_loc[1]_i_2_n_0 ;
  wire \pwm_ena_loc[1]_i_3_n_0 ;
  wire \pwm_ena_loc[2]_i_2_n_0 ;
  wire \pwm_ena_loc[2]_i_3_n_0 ;
  wire \pwm_ena_loc[3]_i_2_n_0 ;
  wire \pwm_ena_loc[3]_i_3_n_0 ;
  wire \pwm_ena_loc[4]_i_2_n_0 ;
  wire \pwm_ena_loc[4]_i_3_n_0 ;
  wire \pwm_ena_loc[5]_i_2_n_0 ;
  wire \pwm_ena_loc[5]_i_3_n_0 ;
  wire \pwm_ena_loc[6]_i_2_n_0 ;
  wire \pwm_ena_loc[6]_i_3_n_0 ;
  wire \pwm_ena_loc[7]_i_2_n_0 ;
  wire \pwm_ena_loc[7]_i_3_n_0 ;
  wire \pwm_ena_loc[8]_i_2_n_0 ;
  wire \pwm_ena_loc[8]_i_3_n_0 ;
  wire [8:0]pwm_ena_loc_0;
  wire [6:0]pwm_frq;
  wire [6:0]pwm_frq_loc;
  wire [7:0]pwm_val;
  wire [7:0]pwm_val_loc;
  wire reset;
  wire reset_200_i_1_n_0;
  wire reset_i_1_n_0;
  wire rst_200_loc;
  wire run;
  wire run_d1;
  wire run_d2;
  wire run_fine_i_1_n_0;
  wire run_fine_i_2_n_0;
  wire run_fine_reg_n_0;
  wire run_loc;
  wire run_loc_i_1_n_0;
  wire run_on;
  wire run_on0;
  wire [1:0]status;
  wire \status_loc[0]_i_1_n_0 ;
  wire [1:0]status_loc_d1;
  wire [1:0]status_loc_d2;
  wire \status_loc_reg_n_0_[0] ;
  wire \status_loc_reg_n_0_[1] ;
  wire vld_in;
  wire vld_in_loc;
  wire vld_out;
  wire vld_out_loc;
  wire [3:3]\NLW_eqOp_inferred__1/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_eqOp_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:0]NLW_gtOp_carry_O_UNCONNECTED;

  FDRE #(
    .INIT(1'b1)) 
    aresetn_loc_200_reg
       (.C(clk200),
        .CE(1'b1),
        .D(aresetn),
        .Q(aresetn_loc_200),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    aresetn_loc_reg
       (.C(aclk),
        .CE(1'b1),
        .D(aresetn),
        .Q(aresetn_loc),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    brake_d1_reg
       (.C(clk200),
        .CE(vld_out_loc),
        .D(brake),
        .Q(brake_d1),
        .R(rst_200_loc));
  FDRE #(
    .INIT(1'b0)) 
    brake_d2_reg
       (.C(clk200),
        .CE(1'b1),
        .D(brake_d1),
        .Q(brake_d2),
        .R(rst_200_loc));
  LUT3 #(
    .INIT(8'hB2)) 
    brake_loc_i_1
       (.I0(brake_d1),
        .I1(brake_d2),
        .I2(brake_loc),
        .O(brake_loc_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    brake_loc_reg
       (.C(clk200),
        .CE(1'b1),
        .D(brake_loc_i_1_n_0),
        .Q(brake_loc),
        .R(rst_200_loc));
  FDRE #(
    .INIT(1'b0)) 
    dir_d1_reg
       (.C(clk200),
        .CE(vld_out_loc),
        .D(dir),
        .Q(dir_d1),
        .R(rst_200_loc));
  FDRE #(
    .INIT(1'b0)) 
    dir_d2_reg
       (.C(clk200),
        .CE(1'b1),
        .D(dir_d1),
        .Q(dir_d2),
        .R(rst_200_loc));
  FDRE #(
    .INIT(1'b0)) 
    dir_loc_reg
       (.C(clk200),
        .CE(1'b1),
        .D(dir_d2),
        .Q(dir_loc),
        .R(rst_200_loc));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \ena_cnt[0]_i_1 
       (.I0(\ena_cnt_reg_n_0_[0] ),
        .I1(eqOp2_in),
        .I2(ena_i_2_n_0),
        .I3(rst_200_loc),
        .O(\ena_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7444747774777444)) 
    \ena_cnt[1]_i_1 
       (.I0(run_on),
        .I1(ena_i_2_n_0),
        .I2(ena_i_3_n_0),
        .I3(eqOp2_in),
        .I4(\ena_cnt_reg_n_0_[0] ),
        .I5(\ena_cnt_reg_n_0_[1] ),
        .O(ena_cnt[1]));
  LUT6 #(
    .INIT(64'h7477744474447477)) 
    \ena_cnt[2]_i_1 
       (.I0(run_on),
        .I1(ena_i_2_n_0),
        .I2(ena_i_3_n_0),
        .I3(eqOp2_in),
        .I4(\ena_cnt_reg_n_0_[2] ),
        .I5(\ena_cnt[2]_i_2_n_0 ),
        .O(ena_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \ena_cnt[2]_i_2 
       (.I0(\ena_cnt_reg_n_0_[0] ),
        .I1(\ena_cnt_reg_n_0_[1] ),
        .O(\ena_cnt[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7444747774777444)) 
    \ena_cnt[3]_i_1 
       (.I0(run_on),
        .I1(ena_i_2_n_0),
        .I2(ena_i_3_n_0),
        .I3(eqOp2_in),
        .I4(\ena_cnt_reg_n_0_[3] ),
        .I5(\ena_cnt[3]_i_2_n_0 ),
        .O(ena_cnt[3]));
  LUT3 #(
    .INIT(8'h80)) 
    \ena_cnt[3]_i_2 
       (.I0(\ena_cnt_reg_n_0_[2] ),
        .I1(\ena_cnt_reg_n_0_[1] ),
        .I2(\ena_cnt_reg_n_0_[0] ),
        .O(\ena_cnt[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h74777444)) 
    \ena_cnt[4]_i_1 
       (.I0(run_on),
        .I1(ena_i_2_n_0),
        .I2(ena_i_3_n_0),
        .I3(eqOp2_in),
        .I4(\ena_cnt[4]_i_2_n_0 ),
        .O(ena_cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \ena_cnt[4]_i_2 
       (.I0(\ena_cnt_reg_n_0_[4] ),
        .I1(\ena_cnt_reg_n_0_[2] ),
        .I2(\ena_cnt_reg_n_0_[1] ),
        .I3(\ena_cnt_reg_n_0_[0] ),
        .I4(\ena_cnt_reg_n_0_[3] ),
        .O(\ena_cnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7444747774777444)) 
    \ena_cnt[5]_i_1 
       (.I0(run_on),
        .I1(ena_i_2_n_0),
        .I2(ena_i_3_n_0),
        .I3(eqOp2_in),
        .I4(\ena_cnt_reg_n_0_[5] ),
        .I5(\ena_cnt[5]_i_2_n_0 ),
        .O(ena_cnt[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \ena_cnt[5]_i_2 
       (.I0(\ena_cnt_reg_n_0_[0] ),
        .I1(\ena_cnt_reg_n_0_[1] ),
        .I2(\ena_cnt_reg_n_0_[2] ),
        .I3(\ena_cnt_reg_n_0_[4] ),
        .I4(\ena_cnt_reg_n_0_[3] ),
        .O(\ena_cnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7444747774777444)) 
    \ena_cnt[6]_i_1 
       (.I0(run_on),
        .I1(ena_i_2_n_0),
        .I2(ena_i_3_n_0),
        .I3(eqOp2_in),
        .I4(\ena_cnt_reg_n_0_[6] ),
        .I5(\ena_cnt[6]_i_2_n_0 ),
        .O(ena_cnt[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \ena_cnt[6]_i_2 
       (.I0(\ena_cnt_reg_n_0_[3] ),
        .I1(\ena_cnt_reg_n_0_[4] ),
        .I2(\ena_cnt_reg_n_0_[2] ),
        .I3(\ena_cnt_reg_n_0_[1] ),
        .I4(\ena_cnt_reg_n_0_[0] ),
        .I5(\ena_cnt_reg_n_0_[5] ),
        .O(\ena_cnt[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7444747774777444)) 
    \ena_cnt[7]_i_1 
       (.I0(run_on),
        .I1(ena_i_2_n_0),
        .I2(ena_i_3_n_0),
        .I3(eqOp2_in),
        .I4(\ena_cnt_reg_n_0_[7] ),
        .I5(\ena_cnt[7]_i_2_n_0 ),
        .O(ena_cnt[7]));
  LUT3 #(
    .INIT(8'h80)) 
    \ena_cnt[7]_i_2 
       (.I0(\ena_cnt_reg_n_0_[6] ),
        .I1(\ena_cnt_reg_n_0_[5] ),
        .I2(\ena_cnt[5]_i_2_n_0 ),
        .O(\ena_cnt[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000F0DDFFDDF0DD)) 
    \ena_cnt[8]_i_1 
       (.I0(\ena_cnt[8]_i_2_n_0 ),
        .I1(\ena_cnt_reg_n_0_[8] ),
        .I2(ena_i_3_n_0),
        .I3(eqOp2_in),
        .I4(ena_i_2_n_0),
        .I5(run_on),
        .O(ena_cnt[8]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \ena_cnt[8]_i_2 
       (.I0(\ena_cnt_reg_n_0_[7] ),
        .I1(\ena_cnt[5]_i_2_n_0 ),
        .I2(\ena_cnt_reg_n_0_[5] ),
        .I3(\ena_cnt_reg_n_0_[6] ),
        .O(\ena_cnt[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \ena_cnt_reg[0] 
       (.C(clk200),
        .CE(1'b1),
        .D(\ena_cnt[0]_i_1_n_0 ),
        .Q(\ena_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \ena_cnt_reg[1] 
       (.C(clk200),
        .CE(1'b1),
        .D(ena_cnt[1]),
        .Q(\ena_cnt_reg_n_0_[1] ),
        .S(rst_200_loc));
  FDSE #(
    .INIT(1'b1)) 
    \ena_cnt_reg[2] 
       (.C(clk200),
        .CE(1'b1),
        .D(ena_cnt[2]),
        .Q(\ena_cnt_reg_n_0_[2] ),
        .S(rst_200_loc));
  FDSE #(
    .INIT(1'b1)) 
    \ena_cnt_reg[3] 
       (.C(clk200),
        .CE(1'b1),
        .D(ena_cnt[3]),
        .Q(\ena_cnt_reg_n_0_[3] ),
        .S(rst_200_loc));
  FDSE #(
    .INIT(1'b1)) 
    \ena_cnt_reg[4] 
       (.C(clk200),
        .CE(1'b1),
        .D(ena_cnt[4]),
        .Q(\ena_cnt_reg_n_0_[4] ),
        .S(rst_200_loc));
  FDSE #(
    .INIT(1'b1)) 
    \ena_cnt_reg[5] 
       (.C(clk200),
        .CE(1'b1),
        .D(ena_cnt[5]),
        .Q(\ena_cnt_reg_n_0_[5] ),
        .S(rst_200_loc));
  FDSE #(
    .INIT(1'b1)) 
    \ena_cnt_reg[6] 
       (.C(clk200),
        .CE(1'b1),
        .D(ena_cnt[6]),
        .Q(\ena_cnt_reg_n_0_[6] ),
        .S(rst_200_loc));
  FDSE #(
    .INIT(1'b1)) 
    \ena_cnt_reg[7] 
       (.C(clk200),
        .CE(1'b1),
        .D(ena_cnt[7]),
        .Q(\ena_cnt_reg_n_0_[7] ),
        .S(rst_200_loc));
  FDSE #(
    .INIT(1'b1)) 
    \ena_cnt_reg[8] 
       (.C(clk200),
        .CE(1'b1),
        .D(ena_cnt[8]),
        .Q(\ena_cnt_reg_n_0_[8] ),
        .S(rst_200_loc));
  LUT4 #(
    .INIT(16'h88B8)) 
    ena_i_1
       (.I0(run_on),
        .I1(ena_i_2_n_0),
        .I2(eqOp2_in),
        .I3(ena_i_3_n_0),
        .O(ena_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    ena_i_2
       (.I0(\ena_cnt[5]_i_2_n_0 ),
        .I1(\ena_cnt_reg_n_0_[5] ),
        .I2(\ena_cnt_reg_n_0_[6] ),
        .I3(\ena_cnt_reg_n_0_[7] ),
        .I4(\ena_cnt_reg_n_0_[8] ),
        .O(ena_i_2_n_0));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    ena_i_3
       (.I0(run_loc),
        .I1(ena_i_4_n_0),
        .I2(pwm_cnt_reg[5]),
        .I3(pwm_cnt_reg[0]),
        .I4(pwm_cnt_reg[6]),
        .I5(pwm_cnt_reg[2]),
        .O(ena_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ena_i_4
       (.I0(pwm_cnt_reg[3]),
        .I1(pwm_cnt_reg[1]),
        .I2(pwm_cnt_reg[7]),
        .I3(pwm_cnt_reg[4]),
        .O(ena_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ena_reg
       (.C(clk200),
        .CE(1'b1),
        .D(ena_i_1_n_0),
        .Q(ena_reg_n_0),
        .R(rst_200_loc));
  CARRY4 \eqOp_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\NLW_eqOp_inferred__1/i__carry_CO_UNCONNECTED [3],eqOp2_in,\eqOp_inferred__1/i__carry_n_2 ,\eqOp_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_eqOp_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0}));
  CARRY4 gtOp_carry
       (.CI(1'b0),
        .CO({gtOp,gtOp_carry_n_1,gtOp_carry_n_2,gtOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({gtOp_carry_i_1_n_0,gtOp_carry_i_2_n_0,gtOp_carry_i_3_n_0,gtOp_carry_i_4_n_0}),
        .O(NLW_gtOp_carry_O_UNCONNECTED[3:0]),
        .S({gtOp_carry_i_5_n_0,gtOp_carry_i_6_n_0,gtOp_carry_i_7_n_0,gtOp_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    gtOp_carry_i_1
       (.I0(pwm_cnt_reg[7]),
        .I1(pwm_val_loc[7]),
        .I2(pwm_cnt_reg[6]),
        .I3(pwm_val_loc[6]),
        .O(gtOp_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    gtOp_carry_i_2
       (.I0(pwm_cnt_reg[5]),
        .I1(pwm_val_loc[5]),
        .I2(pwm_cnt_reg[4]),
        .I3(pwm_val_loc[4]),
        .O(gtOp_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    gtOp_carry_i_3
       (.I0(pwm_cnt_reg[3]),
        .I1(pwm_val_loc[3]),
        .I2(pwm_cnt_reg[2]),
        .I3(pwm_val_loc[2]),
        .O(gtOp_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    gtOp_carry_i_4
       (.I0(pwm_cnt_reg[1]),
        .I1(pwm_val_loc[1]),
        .I2(pwm_cnt_reg[0]),
        .I3(pwm_val_loc[0]),
        .O(gtOp_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_5
       (.I0(pwm_val_loc[7]),
        .I1(pwm_cnt_reg[7]),
        .I2(pwm_val_loc[6]),
        .I3(pwm_cnt_reg[6]),
        .O(gtOp_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_6
       (.I0(pwm_val_loc[5]),
        .I1(pwm_cnt_reg[5]),
        .I2(pwm_val_loc[4]),
        .I3(pwm_cnt_reg[4]),
        .O(gtOp_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_7
       (.I0(pwm_val_loc[3]),
        .I1(pwm_cnt_reg[3]),
        .I2(pwm_val_loc[2]),
        .I3(pwm_cnt_reg[2]),
        .O(gtOp_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_8
       (.I0(pwm_val_loc[1]),
        .I1(pwm_cnt_reg[1]),
        .I2(pwm_val_loc[0]),
        .I3(pwm_cnt_reg[0]),
        .O(gtOp_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1
       (.I0(\ena_cnt_reg_n_0_[6] ),
        .I1(pwm_ena[6]),
        .I2(\ena_cnt_reg_n_0_[7] ),
        .I3(pwm_ena[7]),
        .I4(pwm_ena[8]),
        .I5(\ena_cnt_reg_n_0_[8] ),
        .O(i__carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2
       (.I0(pwm_ena[5]),
        .I1(\ena_cnt_reg_n_0_[5] ),
        .I2(\ena_cnt_reg_n_0_[3] ),
        .I3(pwm_ena[3]),
        .I4(\ena_cnt_reg_n_0_[4] ),
        .I5(pwm_ena[4]),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3
       (.I0(\ena_cnt_reg_n_0_[2] ),
        .I1(pwm_ena[2]),
        .I2(\ena_cnt_reg_n_0_[0] ),
        .I3(pwm_ena[0]),
        .I4(pwm_ena[1]),
        .I5(\ena_cnt_reg_n_0_[1] ),
        .O(i__carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    neqOp
       (.I0(status_loc_d2[0]),
        .I1(status_loc_d1[0]),
        .I2(status_loc_d2[1]),
        .I3(status_loc_d1[1]),
        .O(neqOp__0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFEAA)) 
    port_in1_i_1
       (.I0(brake_loc),
        .I1(run_loc),
        .I2(run_fine_reg_n_0),
        .I3(dir_loc),
        .O(port_in1_i_1_n_0));
  FDRE port_in1_reg
       (.C(clk200),
        .CE(1'b1),
        .D(port_in1_i_1_n_0),
        .Q(port_in1_reg_0),
        .R(rst_200_loc));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hAAFE)) 
    port_in2_i_1
       (.I0(brake_loc),
        .I1(run_loc),
        .I2(run_fine_reg_n_0),
        .I3(dir_loc),
        .O(port_in2_i_1_n_0));
  FDRE port_in2_reg
       (.C(clk200),
        .CE(1'b1),
        .D(port_in2_i_1_n_0),
        .Q(port_in2_reg_0),
        .R(rst_200_loc));
  LUT6 #(
    .INIT(64'h00000000000000A8)) 
    port_pwm_i_1
       (.I0(port_pwm_i_2_n_0),
        .I1(run_fine_reg_n_0),
        .I2(run_loc),
        .I3(rst_200_loc),
        .I4(brake_loc),
        .I5(gtOp),
        .O(port_pwm_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    port_pwm_i_2
       (.I0(pwm_val_loc[1]),
        .I1(pwm_val_loc[2]),
        .I2(pwm_val_loc[0]),
        .I3(pwm_val_loc[3]),
        .I4(port_pwm_i_3_n_0),
        .O(port_pwm_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    port_pwm_i_3
       (.I0(pwm_val_loc[7]),
        .I1(pwm_val_loc[4]),
        .I2(pwm_val_loc[6]),
        .I3(pwm_val_loc[5]),
        .O(port_pwm_i_3_n_0));
  FDRE port_pwm_reg
       (.C(clk200),
        .CE(1'b1),
        .D(port_pwm_i_1_n_0),
        .Q(port_pwm_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \pwm_cnt[0]_i_1 
       (.I0(pwm_cnt_reg[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pwm_cnt[1]_i_1 
       (.I0(pwm_cnt_reg[0]),
        .I1(pwm_cnt_reg[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \pwm_cnt[2]_i_1 
       (.I0(pwm_cnt_reg[2]),
        .I1(pwm_cnt_reg[0]),
        .I2(pwm_cnt_reg[1]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \pwm_cnt[3]_i_1 
       (.I0(pwm_cnt_reg[3]),
        .I1(pwm_cnt_reg[1]),
        .I2(pwm_cnt_reg[0]),
        .I3(pwm_cnt_reg[2]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \pwm_cnt[4]_i_1 
       (.I0(pwm_cnt_reg[2]),
        .I1(pwm_cnt_reg[0]),
        .I2(pwm_cnt_reg[1]),
        .I3(pwm_cnt_reg[3]),
        .I4(pwm_cnt_reg[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \pwm_cnt[5]_i_1 
       (.I0(pwm_cnt_reg[5]),
        .I1(pwm_cnt_reg[2]),
        .I2(pwm_cnt_reg[0]),
        .I3(pwm_cnt_reg[1]),
        .I4(pwm_cnt_reg[3]),
        .I5(pwm_cnt_reg[4]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \pwm_cnt[6]_i_1 
       (.I0(pwm_cnt_reg[6]),
        .I1(\pwm_cnt[7]_i_4_n_0 ),
        .I2(pwm_cnt_reg[5]),
        .O(plusOp[6]));
  LUT3 #(
    .INIT(8'hBA)) 
    \pwm_cnt[7]_i_1 
       (.I0(rst_200_loc),
        .I1(\pwm_cnt[7]_i_3_n_0 ),
        .I2(ena_reg_n_0),
        .O(\pwm_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \pwm_cnt[7]_i_2 
       (.I0(pwm_cnt_reg[7]),
        .I1(pwm_cnt_reg[5]),
        .I2(\pwm_cnt[7]_i_4_n_0 ),
        .I3(pwm_cnt_reg[6]),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \pwm_cnt[7]_i_3 
       (.I0(pwm_cnt_reg[2]),
        .I1(pwm_cnt_reg[6]),
        .I2(pwm_cnt_reg[0]),
        .I3(pwm_cnt_reg[5]),
        .I4(ena_i_4_n_0),
        .O(\pwm_cnt[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \pwm_cnt[7]_i_4 
       (.I0(pwm_cnt_reg[4]),
        .I1(pwm_cnt_reg[3]),
        .I2(pwm_cnt_reg[1]),
        .I3(pwm_cnt_reg[0]),
        .I4(pwm_cnt_reg[2]),
        .O(\pwm_cnt[7]_i_4_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \pwm_cnt_reg[0] 
       (.C(clk200),
        .CE(ena_reg_n_0),
        .D(plusOp[0]),
        .Q(pwm_cnt_reg[0]),
        .S(\pwm_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cnt_reg[1] 
       (.C(clk200),
        .CE(ena_reg_n_0),
        .D(plusOp[1]),
        .Q(pwm_cnt_reg[1]),
        .R(\pwm_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cnt_reg[2] 
       (.C(clk200),
        .CE(ena_reg_n_0),
        .D(plusOp[2]),
        .Q(pwm_cnt_reg[2]),
        .R(\pwm_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cnt_reg[3] 
       (.C(clk200),
        .CE(ena_reg_n_0),
        .D(plusOp[3]),
        .Q(pwm_cnt_reg[3]),
        .R(\pwm_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cnt_reg[4] 
       (.C(clk200),
        .CE(ena_reg_n_0),
        .D(plusOp[4]),
        .Q(pwm_cnt_reg[4]),
        .R(\pwm_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cnt_reg[5] 
       (.C(clk200),
        .CE(ena_reg_n_0),
        .D(plusOp[5]),
        .Q(pwm_cnt_reg[5]),
        .R(\pwm_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cnt_reg[6] 
       (.C(clk200),
        .CE(ena_reg_n_0),
        .D(plusOp[6]),
        .Q(pwm_cnt_reg[6]),
        .R(\pwm_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cnt_reg[7] 
       (.C(clk200),
        .CE(ena_reg_n_0),
        .D(plusOp[7]),
        .Q(pwm_cnt_reg[7]),
        .R(\pwm_cnt[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pwm_ena[8]_i_1 
       (.I0(ena_reg_n_0),
        .I1(run_on),
        .O(pwm_ena0));
  LUT6 #(
    .INIT(64'h1200000000040000)) 
    \pwm_ena_loc[0]_i_2 
       (.I0(pwm_frq_loc[1]),
        .I1(pwm_frq_loc[6]),
        .I2(pwm_frq_loc[5]),
        .I3(pwm_frq_loc[3]),
        .I4(pwm_frq_loc[4]),
        .I5(pwm_frq_loc[2]),
        .O(\pwm_ena_loc[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000820100020800)) 
    \pwm_ena_loc[0]_i_3 
       (.I0(pwm_frq_loc[1]),
        .I1(pwm_frq_loc[2]),
        .I2(pwm_frq_loc[4]),
        .I3(pwm_frq_loc[3]),
        .I4(pwm_frq_loc[5]),
        .I5(pwm_frq_loc[6]),
        .O(\pwm_ena_loc[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000200001008000)) 
    \pwm_ena_loc[1]_i_2 
       (.I0(pwm_frq_loc[1]),
        .I1(pwm_frq_loc[2]),
        .I2(pwm_frq_loc[4]),
        .I3(pwm_frq_loc[3]),
        .I4(pwm_frq_loc[5]),
        .I5(pwm_frq_loc[6]),
        .O(\pwm_ena_loc[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000020100000000)) 
    \pwm_ena_loc[1]_i_3 
       (.I0(pwm_frq_loc[1]),
        .I1(pwm_frq_loc[2]),
        .I2(pwm_frq_loc[4]),
        .I3(pwm_frq_loc[3]),
        .I4(pwm_frq_loc[5]),
        .I5(pwm_frq_loc[6]),
        .O(\pwm_ena_loc[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000014808000000)) 
    \pwm_ena_loc[2]_i_2 
       (.I0(pwm_frq_loc[1]),
        .I1(pwm_frq_loc[6]),
        .I2(pwm_frq_loc[5]),
        .I3(pwm_frq_loc[4]),
        .I4(pwm_frq_loc[3]),
        .I5(pwm_frq_loc[2]),
        .O(\pwm_ena_loc[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0820120000000004)) 
    \pwm_ena_loc[2]_i_3 
       (.I0(pwm_frq_loc[1]),
        .I1(pwm_frq_loc[6]),
        .I2(pwm_frq_loc[5]),
        .I3(pwm_frq_loc[3]),
        .I4(pwm_frq_loc[4]),
        .I5(pwm_frq_loc[2]),
        .O(\pwm_ena_loc[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000010802000020)) 
    \pwm_ena_loc[3]_i_2 
       (.I0(pwm_frq_loc[1]),
        .I1(pwm_frq_loc[2]),
        .I2(pwm_frq_loc[3]),
        .I3(pwm_frq_loc[4]),
        .I4(pwm_frq_loc[5]),
        .I5(pwm_frq_loc[6]),
        .O(\pwm_ena_loc[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0004100000000824)) 
    \pwm_ena_loc[3]_i_3 
       (.I0(pwm_frq_loc[1]),
        .I1(pwm_frq_loc[6]),
        .I2(pwm_frq_loc[5]),
        .I3(pwm_frq_loc[3]),
        .I4(pwm_frq_loc[4]),
        .I5(pwm_frq_loc[2]),
        .O(\pwm_ena_loc[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB7DBFDFF)) 
    \pwm_ena_loc[4]_i_2 
       (.I0(pwm_frq_loc[1]),
        .I1(pwm_frq_loc[2]),
        .I2(pwm_frq_loc[5]),
        .I3(pwm_frq_loc[3]),
        .I4(pwm_frq_loc[4]),
        .I5(pwm_frq_loc[6]),
        .O(\pwm_ena_loc[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF7BFFF7F)) 
    \pwm_ena_loc[4]_i_3 
       (.I0(pwm_frq_loc[1]),
        .I1(pwm_frq_loc[2]),
        .I2(pwm_frq_loc[3]),
        .I3(pwm_frq_loc[4]),
        .I4(pwm_frq_loc[5]),
        .I5(pwm_frq_loc[6]),
        .O(\pwm_ena_loc[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000041000840)) 
    \pwm_ena_loc[5]_i_2 
       (.I0(pwm_frq_loc[1]),
        .I1(pwm_frq_loc[5]),
        .I2(pwm_frq_loc[3]),
        .I3(pwm_frq_loc[4]),
        .I4(pwm_frq_loc[2]),
        .I5(pwm_frq_loc[6]),
        .O(\pwm_ena_loc[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004820000)) 
    \pwm_ena_loc[5]_i_3 
       (.I0(pwm_frq_loc[1]),
        .I1(pwm_frq_loc[2]),
        .I2(pwm_frq_loc[4]),
        .I3(pwm_frq_loc[3]),
        .I4(pwm_frq_loc[5]),
        .I5(pwm_frq_loc[6]),
        .O(\pwm_ena_loc[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008420)) 
    \pwm_ena_loc[6]_i_2 
       (.I0(pwm_frq_loc[1]),
        .I1(pwm_frq_loc[2]),
        .I2(pwm_frq_loc[3]),
        .I3(pwm_frq_loc[4]),
        .I4(pwm_frq_loc[5]),
        .I5(pwm_frq_loc[6]),
        .O(\pwm_ena_loc[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \pwm_ena_loc[6]_i_3 
       (.I0(pwm_frq_loc[6]),
        .I1(pwm_frq_loc[5]),
        .I2(pwm_frq_loc[3]),
        .I3(pwm_frq_loc[4]),
        .I4(pwm_frq_loc[2]),
        .I5(pwm_frq_loc[1]),
        .O(\pwm_ena_loc[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFFDFEBFD7EBFF7F)) 
    \pwm_ena_loc[7]_i_2 
       (.I0(pwm_frq_loc[1]),
        .I1(pwm_frq_loc[6]),
        .I2(pwm_frq_loc[2]),
        .I3(pwm_frq_loc[3]),
        .I4(pwm_frq_loc[4]),
        .I5(pwm_frq_loc[5]),
        .O(\pwm_ena_loc[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFDFEFFD7EBFF7FB)) 
    \pwm_ena_loc[7]_i_3 
       (.I0(pwm_frq_loc[1]),
        .I1(pwm_frq_loc[6]),
        .I2(pwm_frq_loc[2]),
        .I3(pwm_frq_loc[3]),
        .I4(pwm_frq_loc[4]),
        .I5(pwm_frq_loc[5]),
        .O(\pwm_ena_loc[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFFDFEBFD7EBFD7F)) 
    \pwm_ena_loc[8]_i_2 
       (.I0(pwm_frq_loc[1]),
        .I1(pwm_frq_loc[6]),
        .I2(pwm_frq_loc[2]),
        .I3(pwm_frq_loc[3]),
        .I4(pwm_frq_loc[4]),
        .I5(pwm_frq_loc[5]),
        .O(\pwm_ena_loc[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFDFEFFD7EBFD7FB)) 
    \pwm_ena_loc[8]_i_3 
       (.I0(pwm_frq_loc[1]),
        .I1(pwm_frq_loc[6]),
        .I2(pwm_frq_loc[2]),
        .I3(pwm_frq_loc[3]),
        .I4(pwm_frq_loc[4]),
        .I5(pwm_frq_loc[5]),
        .O(\pwm_ena_loc[8]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_ena_loc_reg[0] 
       (.C(clk200),
        .CE(1'b1),
        .D(pwm_ena_loc_0[0]),
        .Q(pwm_ena_loc[0]),
        .R(rst_200_loc));
  MUXF7 \pwm_ena_loc_reg[0]_i_1 
       (.I0(\pwm_ena_loc[0]_i_2_n_0 ),
        .I1(\pwm_ena_loc[0]_i_3_n_0 ),
        .O(pwm_ena_loc_0[0]),
        .S(pwm_frq_loc[0]));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_ena_loc_reg[1] 
       (.C(clk200),
        .CE(1'b1),
        .D(pwm_ena_loc_0[1]),
        .Q(pwm_ena_loc[1]),
        .R(rst_200_loc));
  MUXF7 \pwm_ena_loc_reg[1]_i_1 
       (.I0(\pwm_ena_loc[1]_i_2_n_0 ),
        .I1(\pwm_ena_loc[1]_i_3_n_0 ),
        .O(pwm_ena_loc_0[1]),
        .S(pwm_frq_loc[0]));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_ena_loc_reg[2] 
       (.C(clk200),
        .CE(1'b1),
        .D(pwm_ena_loc_0[2]),
        .Q(pwm_ena_loc[2]),
        .R(rst_200_loc));
  MUXF7 \pwm_ena_loc_reg[2]_i_1 
       (.I0(\pwm_ena_loc[2]_i_2_n_0 ),
        .I1(\pwm_ena_loc[2]_i_3_n_0 ),
        .O(pwm_ena_loc_0[2]),
        .S(pwm_frq_loc[0]));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_ena_loc_reg[3] 
       (.C(clk200),
        .CE(1'b1),
        .D(pwm_ena_loc_0[3]),
        .Q(pwm_ena_loc[3]),
        .R(rst_200_loc));
  MUXF7 \pwm_ena_loc_reg[3]_i_1 
       (.I0(\pwm_ena_loc[3]_i_2_n_0 ),
        .I1(\pwm_ena_loc[3]_i_3_n_0 ),
        .O(pwm_ena_loc_0[3]),
        .S(pwm_frq_loc[0]));
  FDSE #(
    .INIT(1'b1)) 
    \pwm_ena_loc_reg[4] 
       (.C(clk200),
        .CE(1'b1),
        .D(pwm_ena_loc_0[4]),
        .Q(pwm_ena_loc[4]),
        .S(rst_200_loc));
  MUXF7 \pwm_ena_loc_reg[4]_i_1 
       (.I0(\pwm_ena_loc[4]_i_2_n_0 ),
        .I1(\pwm_ena_loc[4]_i_3_n_0 ),
        .O(pwm_ena_loc_0[4]),
        .S(pwm_frq_loc[0]));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_ena_loc_reg[5] 
       (.C(clk200),
        .CE(1'b1),
        .D(pwm_ena_loc_0[5]),
        .Q(pwm_ena_loc[5]),
        .R(rst_200_loc));
  MUXF7 \pwm_ena_loc_reg[5]_i_1 
       (.I0(\pwm_ena_loc[5]_i_2_n_0 ),
        .I1(\pwm_ena_loc[5]_i_3_n_0 ),
        .O(pwm_ena_loc_0[5]),
        .S(pwm_frq_loc[0]));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_ena_loc_reg[6] 
       (.C(clk200),
        .CE(1'b1),
        .D(pwm_ena_loc_0[6]),
        .Q(pwm_ena_loc[6]),
        .R(rst_200_loc));
  MUXF7 \pwm_ena_loc_reg[6]_i_1 
       (.I0(\pwm_ena_loc[6]_i_2_n_0 ),
        .I1(\pwm_ena_loc[6]_i_3_n_0 ),
        .O(pwm_ena_loc_0[6]),
        .S(pwm_frq_loc[0]));
  FDSE #(
    .INIT(1'b1)) 
    \pwm_ena_loc_reg[7] 
       (.C(clk200),
        .CE(1'b1),
        .D(pwm_ena_loc_0[7]),
        .Q(pwm_ena_loc[7]),
        .S(rst_200_loc));
  MUXF7 \pwm_ena_loc_reg[7]_i_1 
       (.I0(\pwm_ena_loc[7]_i_2_n_0 ),
        .I1(\pwm_ena_loc[7]_i_3_n_0 ),
        .O(pwm_ena_loc_0[7]),
        .S(pwm_frq_loc[0]));
  FDSE #(
    .INIT(1'b1)) 
    \pwm_ena_loc_reg[8] 
       (.C(clk200),
        .CE(1'b1),
        .D(pwm_ena_loc_0[8]),
        .Q(pwm_ena_loc[8]),
        .S(rst_200_loc));
  MUXF7 \pwm_ena_loc_reg[8]_i_1 
       (.I0(\pwm_ena_loc[8]_i_2_n_0 ),
        .I1(\pwm_ena_loc[8]_i_3_n_0 ),
        .O(pwm_ena_loc_0[8]),
        .S(pwm_frq_loc[0]));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_ena_reg[0] 
       (.C(clk200),
        .CE(pwm_ena0),
        .D(pwm_ena_loc[0]),
        .Q(pwm_ena[0]),
        .R(rst_200_loc));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_ena_reg[1] 
       (.C(clk200),
        .CE(pwm_ena0),
        .D(pwm_ena_loc[1]),
        .Q(pwm_ena[1]),
        .R(rst_200_loc));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_ena_reg[2] 
       (.C(clk200),
        .CE(pwm_ena0),
        .D(pwm_ena_loc[2]),
        .Q(pwm_ena[2]),
        .R(rst_200_loc));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_ena_reg[3] 
       (.C(clk200),
        .CE(pwm_ena0),
        .D(pwm_ena_loc[3]),
        .Q(pwm_ena[3]),
        .R(rst_200_loc));
  FDSE #(
    .INIT(1'b1)) 
    \pwm_ena_reg[4] 
       (.C(clk200),
        .CE(pwm_ena0),
        .D(pwm_ena_loc[4]),
        .Q(pwm_ena[4]),
        .S(rst_200_loc));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_ena_reg[5] 
       (.C(clk200),
        .CE(pwm_ena0),
        .D(pwm_ena_loc[5]),
        .Q(pwm_ena[5]),
        .R(rst_200_loc));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_ena_reg[6] 
       (.C(clk200),
        .CE(pwm_ena0),
        .D(pwm_ena_loc[6]),
        .Q(pwm_ena[6]),
        .R(rst_200_loc));
  FDSE #(
    .INIT(1'b1)) 
    \pwm_ena_reg[7] 
       (.C(clk200),
        .CE(pwm_ena0),
        .D(pwm_ena_loc[7]),
        .Q(pwm_ena[7]),
        .S(rst_200_loc));
  FDSE #(
    .INIT(1'b1)) 
    \pwm_ena_reg[8] 
       (.C(clk200),
        .CE(pwm_ena0),
        .D(pwm_ena_loc[8]),
        .Q(pwm_ena[8]),
        .S(rst_200_loc));
  FDSE \pwm_frq_loc_reg[0] 
       (.C(clk200),
        .CE(vld_out_loc),
        .D(pwm_frq[0]),
        .Q(pwm_frq_loc[0]),
        .S(rst_200_loc));
  FDRE \pwm_frq_loc_reg[1] 
       (.C(clk200),
        .CE(vld_out_loc),
        .D(pwm_frq[1]),
        .Q(pwm_frq_loc[1]),
        .R(rst_200_loc));
  FDSE \pwm_frq_loc_reg[2] 
       (.C(clk200),
        .CE(vld_out_loc),
        .D(pwm_frq[2]),
        .Q(pwm_frq_loc[2]),
        .S(rst_200_loc));
  FDRE \pwm_frq_loc_reg[3] 
       (.C(clk200),
        .CE(vld_out_loc),
        .D(pwm_frq[3]),
        .Q(pwm_frq_loc[3]),
        .R(rst_200_loc));
  FDRE \pwm_frq_loc_reg[4] 
       (.C(clk200),
        .CE(vld_out_loc),
        .D(pwm_frq[4]),
        .Q(pwm_frq_loc[4]),
        .R(rst_200_loc));
  FDRE \pwm_frq_loc_reg[5] 
       (.C(clk200),
        .CE(vld_out_loc),
        .D(pwm_frq[5]),
        .Q(pwm_frq_loc[5]),
        .R(rst_200_loc));
  FDRE \pwm_frq_loc_reg[6] 
       (.C(clk200),
        .CE(vld_out_loc),
        .D(pwm_frq[6]),
        .Q(pwm_frq_loc[6]),
        .R(rst_200_loc));
  FDRE \pwm_val_loc_reg[0] 
       (.C(clk200),
        .CE(vld_out_loc),
        .D(pwm_val[0]),
        .Q(pwm_val_loc[0]),
        .R(rst_200_loc));
  FDRE \pwm_val_loc_reg[1] 
       (.C(clk200),
        .CE(vld_out_loc),
        .D(pwm_val[1]),
        .Q(pwm_val_loc[1]),
        .R(rst_200_loc));
  FDRE \pwm_val_loc_reg[2] 
       (.C(clk200),
        .CE(vld_out_loc),
        .D(pwm_val[2]),
        .Q(pwm_val_loc[2]),
        .R(rst_200_loc));
  FDRE \pwm_val_loc_reg[3] 
       (.C(clk200),
        .CE(vld_out_loc),
        .D(pwm_val[3]),
        .Q(pwm_val_loc[3]),
        .R(rst_200_loc));
  FDRE \pwm_val_loc_reg[4] 
       (.C(clk200),
        .CE(vld_out_loc),
        .D(pwm_val[4]),
        .Q(pwm_val_loc[4]),
        .R(rst_200_loc));
  FDRE \pwm_val_loc_reg[5] 
       (.C(clk200),
        .CE(vld_out_loc),
        .D(pwm_val[5]),
        .Q(pwm_val_loc[5]),
        .R(rst_200_loc));
  FDRE \pwm_val_loc_reg[6] 
       (.C(clk200),
        .CE(vld_out_loc),
        .D(pwm_val[6]),
        .Q(pwm_val_loc[6]),
        .R(rst_200_loc));
  FDRE \pwm_val_loc_reg[7] 
       (.C(clk200),
        .CE(vld_out_loc),
        .D(pwm_val[7]),
        .Q(pwm_val_loc[7]),
        .R(rst_200_loc));
  LUT1 #(
    .INIT(2'h1)) 
    reset_200_i_1
       (.I0(aresetn_loc_200),
        .O(reset_200_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    reset_200_reg
       (.C(clk200),
        .CE(1'b1),
        .D(reset_200_i_1_n_0),
        .Q(rst_200_loc),
        .R(1'b0));
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
        .Q(reset),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    run_d1_reg
       (.C(clk200),
        .CE(vld_out_loc),
        .D(run),
        .Q(run_d1),
        .R(rst_200_loc));
  FDRE #(
    .INIT(1'b0)) 
    run_d2_reg
       (.C(clk200),
        .CE(1'b1),
        .D(run_d1),
        .Q(run_d2),
        .R(rst_200_loc));
  LUT5 #(
    .INIT(32'h0000AA2A)) 
    run_fine_i_1
       (.I0(run_fine_i_2_n_0),
        .I1(ena_i_3_n_0),
        .I2(eqOp2_in),
        .I3(ena_i_2_n_0),
        .I4(rst_200_loc),
        .O(run_fine_i_1_n_0));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    run_fine_i_2
       (.I0(run_on),
        .I1(\ena_cnt_reg_n_0_[8] ),
        .I2(\ena_cnt_reg_n_0_[6] ),
        .I3(\ena_cnt[6]_i_2_n_0 ),
        .I4(\ena_cnt_reg_n_0_[7] ),
        .I5(run_fine_reg_n_0),
        .O(run_fine_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    run_fine_reg
       (.C(clk200),
        .CE(1'b1),
        .D(run_fine_i_1_n_0),
        .Q(run_fine_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
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
       (.C(clk200),
        .CE(1'b1),
        .D(run_loc_i_1_n_0),
        .Q(run_loc),
        .R(rst_200_loc));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    run_on_i_1
       (.I0(run_d1),
        .I1(run_d2),
        .O(run_on0));
  FDRE #(
    .INIT(1'b0)) 
    run_on_reg
       (.C(clk200),
        .CE(1'b1),
        .D(run_on0),
        .Q(run_on),
        .R(rst_200_loc));
  LUT4 #(
    .INIT(16'h000E)) 
    \status_loc[0]_i_1 
       (.I0(run_fine_reg_n_0),
        .I1(run_loc),
        .I2(rst_200_loc),
        .I3(brake_loc),
        .O(\status_loc[0]_i_1_n_0 ));
  FDRE \status_loc_d1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\status_loc_reg_n_0_[0] ),
        .Q(status_loc_d1[0]),
        .R(reset));
  FDRE \status_loc_d1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\status_loc_reg_n_0_[1] ),
        .Q(status_loc_d1[1]),
        .R(reset));
  FDRE \status_loc_d2_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(status_loc_d1[0]),
        .Q(status_loc_d2[0]),
        .R(reset));
  FDRE \status_loc_d2_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(status_loc_d1[1]),
        .Q(status_loc_d2[1]),
        .R(reset));
  FDRE \status_loc_reg[0] 
       (.C(clk200),
        .CE(1'b1),
        .D(\status_loc[0]_i_1_n_0 ),
        .Q(\status_loc_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \status_loc_reg[1] 
       (.C(clk200),
        .CE(1'b1),
        .D(brake_loc),
        .Q(\status_loc_reg_n_0_[1] ),
        .R(rst_200_loc));
  FDRE \status_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(status_loc_d2[0]),
        .Q(status[0]),
        .R(reset));
  FDRE \status_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(status_loc_d2[1]),
        .Q(status[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    vld_in_loc_reg
       (.C(aclk),
        .CE(1'b1),
        .D(neqOp__0),
        .Q(vld_in_loc),
        .R(reset));
  FDRE vld_in_reg
       (.C(aclk),
        .CE(1'b1),
        .D(vld_in_loc),
        .Q(vld_in),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    vld_out_loc_reg
       (.C(clk200),
        .CE(1'b1),
        .D(vld_out),
        .Q(vld_out_loc),
        .R(rst_200_loc));
endmodule

(* CHECK_LICENSE_TYPE = "S7_DCM_ctrl_1_0,DCM_ctrl,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "DCM_ctrl,Vivado 2019.1.3" *) 
(* NotValidForBitStream *)
module S7_DCM_ctrl_3_0
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, ASSOCIATED_BUSIF DCM_IO:DCM_reg_if, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN S7_util_ds_buf_0_0_IBUF_OUT, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk200 CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk200, ASSOCIATED_RESET aresetn, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN S7_util_ds_buf_0_0_IBUF_OUT, INSERT_VIP 0" *) input clk200;
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

  wire aclk;
  wire aresetn;
  wire brake;
  wire clk200;
  wire dir;
  wire port_in1;
  wire port_in2;
  wire port_pwm;
  wire [6:0]pwm_frq;
  wire [7:0]pwm_val;
  wire run;
  wire [1:0]status;
  wire vld_in;
  wire vld_out;

  S7_DCM_ctrl_3_0_DCM_ctrl U0
       (.aclk(aclk),
        .aresetn(aresetn),
        .brake(brake),
        .clk200(clk200),
        .dir(dir),
        .port_in1(port_in1),
        .port_in2(port_in2),
        .port_pwm(port_pwm),
        .pwm_frq(pwm_frq),
        .pwm_val(pwm_val),
        .run(run),
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
