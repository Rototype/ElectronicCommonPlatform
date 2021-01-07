// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
// Date        : Wed Jul 29 06:15:47 2020
// Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ S7_SM_alg_server_2_0_stub.v
// Design      : S7_SM_alg_server_2_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s100fgga676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "SM_alg_server,Vivado 2019.1.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(aresetn, aclk, clk200, smc_0_ACC, smc_0_EC, 
  smc_0_RM, smc_0_req, smc_0_Next_EC, smc_0_Next_RM, smc_0_ack, smc_1_ACC, smc_1_EC, smc_1_RM, 
  smc_1_req, smc_1_Next_EC, smc_1_Next_RM, smc_1_ack, smc_2_ACC, smc_2_EC, smc_2_RM, smc_2_req, 
  smc_2_Next_EC, smc_2_Next_RM, smc_2_ack, smc_3_ACC, smc_3_EC, smc_3_RM, smc_3_req, 
  smc_3_Next_EC, smc_3_Next_RM, smc_3_ack, smc_4_ACC, smc_4_EC, smc_4_RM, smc_4_req, 
  smc_4_Next_EC, smc_4_Next_RM, smc_4_ack, smc_5_ACC, smc_5_EC, smc_5_RM, smc_5_req, 
  smc_5_Next_EC, smc_5_Next_RM, smc_5_ack, smc_6_ACC, smc_6_EC, smc_6_RM, smc_6_req, 
  smc_6_Next_EC, smc_6_Next_RM, smc_6_ack, smc_7_ACC, smc_7_EC, smc_7_RM, smc_7_req, 
  smc_7_Next_EC, smc_7_Next_RM, smc_7_ack, smc_8_ACC, smc_8_EC, smc_8_RM, smc_8_req, 
  smc_8_Next_EC, smc_8_Next_RM, smc_8_ack, smc_9_ACC, smc_9_EC, smc_9_RM, smc_9_req, 
  smc_9_Next_EC, smc_9_Next_RM, smc_9_ack)
/* synthesis syn_black_box black_box_pad_pin="aresetn,aclk,clk200,smc_0_ACC[21:0],smc_0_EC[21:0],smc_0_RM[15:0],smc_0_req,smc_0_Next_EC[21:0],smc_0_Next_RM[15:0],smc_0_ack,smc_1_ACC[21:0],smc_1_EC[21:0],smc_1_RM[15:0],smc_1_req,smc_1_Next_EC[21:0],smc_1_Next_RM[15:0],smc_1_ack,smc_2_ACC[21:0],smc_2_EC[21:0],smc_2_RM[15:0],smc_2_req,smc_2_Next_EC[21:0],smc_2_Next_RM[15:0],smc_2_ack,smc_3_ACC[21:0],smc_3_EC[21:0],smc_3_RM[15:0],smc_3_req,smc_3_Next_EC[21:0],smc_3_Next_RM[15:0],smc_3_ack,smc_4_ACC[21:0],smc_4_EC[21:0],smc_4_RM[15:0],smc_4_req,smc_4_Next_EC[21:0],smc_4_Next_RM[15:0],smc_4_ack,smc_5_ACC[21:0],smc_5_EC[21:0],smc_5_RM[15:0],smc_5_req,smc_5_Next_EC[21:0],smc_5_Next_RM[15:0],smc_5_ack,smc_6_ACC[21:0],smc_6_EC[21:0],smc_6_RM[15:0],smc_6_req,smc_6_Next_EC[21:0],smc_6_Next_RM[15:0],smc_6_ack,smc_7_ACC[21:0],smc_7_EC[21:0],smc_7_RM[15:0],smc_7_req,smc_7_Next_EC[21:0],smc_7_Next_RM[15:0],smc_7_ack,smc_8_ACC[21:0],smc_8_EC[21:0],smc_8_RM[15:0],smc_8_req,smc_8_Next_EC[21:0],smc_8_Next_RM[15:0],smc_8_ack,smc_9_ACC[21:0],smc_9_EC[21:0],smc_9_RM[15:0],smc_9_req,smc_9_Next_EC[21:0],smc_9_Next_RM[15:0],smc_9_ack" */;
  input aresetn;
  input aclk;
  input clk200;
  input [21:0]smc_0_ACC;
  input [21:0]smc_0_EC;
  input [15:0]smc_0_RM;
  input smc_0_req;
  output [21:0]smc_0_Next_EC;
  output [15:0]smc_0_Next_RM;
  output smc_0_ack;
  input [21:0]smc_1_ACC;
  input [21:0]smc_1_EC;
  input [15:0]smc_1_RM;
  input smc_1_req;
  output [21:0]smc_1_Next_EC;
  output [15:0]smc_1_Next_RM;
  output smc_1_ack;
  input [21:0]smc_2_ACC;
  input [21:0]smc_2_EC;
  input [15:0]smc_2_RM;
  input smc_2_req;
  output [21:0]smc_2_Next_EC;
  output [15:0]smc_2_Next_RM;
  output smc_2_ack;
  input [21:0]smc_3_ACC;
  input [21:0]smc_3_EC;
  input [15:0]smc_3_RM;
  input smc_3_req;
  output [21:0]smc_3_Next_EC;
  output [15:0]smc_3_Next_RM;
  output smc_3_ack;
  input [21:0]smc_4_ACC;
  input [21:0]smc_4_EC;
  input [15:0]smc_4_RM;
  input smc_4_req;
  output [21:0]smc_4_Next_EC;
  output [15:0]smc_4_Next_RM;
  output smc_4_ack;
  input [21:0]smc_5_ACC;
  input [21:0]smc_5_EC;
  input [15:0]smc_5_RM;
  input smc_5_req;
  output [21:0]smc_5_Next_EC;
  output [15:0]smc_5_Next_RM;
  output smc_5_ack;
  input [21:0]smc_6_ACC;
  input [21:0]smc_6_EC;
  input [15:0]smc_6_RM;
  input smc_6_req;
  output [21:0]smc_6_Next_EC;
  output [15:0]smc_6_Next_RM;
  output smc_6_ack;
  input [21:0]smc_7_ACC;
  input [21:0]smc_7_EC;
  input [15:0]smc_7_RM;
  input smc_7_req;
  output [21:0]smc_7_Next_EC;
  output [15:0]smc_7_Next_RM;
  output smc_7_ack;
  input [21:0]smc_8_ACC;
  input [21:0]smc_8_EC;
  input [15:0]smc_8_RM;
  input smc_8_req;
  output [21:0]smc_8_Next_EC;
  output [15:0]smc_8_Next_RM;
  output smc_8_ack;
  input [21:0]smc_9_ACC;
  input [21:0]smc_9_EC;
  input [15:0]smc_9_RM;
  input smc_9_req;
  output [21:0]smc_9_Next_EC;
  output [15:0]smc_9_Next_RM;
  output smc_9_ack;
endmodule
