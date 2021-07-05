// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri Apr 30 14:40:33 2021
// Host        : LAPTOP-3UDEBL19 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ S7_system_ila_0_0_stub.v
// Design      : S7_system_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s100fgga676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "bd_226f,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, SLOT_0_AXIS_tdata, SLOT_0_AXIS_tstrb, 
  SLOT_0_AXIS_tkeep, SLOT_0_AXIS_tlast, SLOT_0_AXIS_tvalid, SLOT_0_AXIS_tready, 
  SLOT_1_AXIS_tdata, SLOT_1_AXIS_tlast, SLOT_1_AXIS_tvalid, SLOT_1_AXIS_tready, 
  SLOT_2_AXIS_tdata, SLOT_2_AXIS_tlast, SLOT_2_AXIS_tvalid, SLOT_2_AXIS_tready, 
  SLOT_3_AXIS_tdata, SLOT_3_AXIS_tlast, SLOT_3_AXIS_tvalid, SLOT_3_AXIS_tready, resetn)
/* synthesis syn_black_box black_box_pad_pin="clk,SLOT_0_AXIS_tdata[31:0],SLOT_0_AXIS_tstrb[3:0],SLOT_0_AXIS_tkeep[3:0],SLOT_0_AXIS_tlast,SLOT_0_AXIS_tvalid,SLOT_0_AXIS_tready,SLOT_1_AXIS_tdata[31:0],SLOT_1_AXIS_tlast,SLOT_1_AXIS_tvalid,SLOT_1_AXIS_tready,SLOT_2_AXIS_tdata[31:0],SLOT_2_AXIS_tlast,SLOT_2_AXIS_tvalid,SLOT_2_AXIS_tready,SLOT_3_AXIS_tdata[31:0],SLOT_3_AXIS_tlast,SLOT_3_AXIS_tvalid,SLOT_3_AXIS_tready,resetn" */;
  input clk;
  input [31:0]SLOT_0_AXIS_tdata;
  input [3:0]SLOT_0_AXIS_tstrb;
  input [3:0]SLOT_0_AXIS_tkeep;
  input SLOT_0_AXIS_tlast;
  input SLOT_0_AXIS_tvalid;
  input SLOT_0_AXIS_tready;
  input [31:0]SLOT_1_AXIS_tdata;
  input SLOT_1_AXIS_tlast;
  input SLOT_1_AXIS_tvalid;
  input SLOT_1_AXIS_tready;
  input [31:0]SLOT_2_AXIS_tdata;
  input SLOT_2_AXIS_tlast;
  input SLOT_2_AXIS_tvalid;
  input SLOT_2_AXIS_tready;
  input [31:0]SLOT_3_AXIS_tdata;
  input SLOT_3_AXIS_tlast;
  input SLOT_3_AXIS_tvalid;
  input SLOT_3_AXIS_tready;
  input resetn;
endmodule
