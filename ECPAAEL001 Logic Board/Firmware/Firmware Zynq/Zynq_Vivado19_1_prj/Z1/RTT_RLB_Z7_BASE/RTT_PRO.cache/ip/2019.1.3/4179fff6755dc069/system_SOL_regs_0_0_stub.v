// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
// Date        : Mon May 11 22:47:50 2020
// Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_SOL_regs_0_0_stub.v
// Design      : system_SOL_regs_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "SOL_regs_v1_0,Vivado 2019.1.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(SOL0_pwm_val, SOL0_time_full, SOL0_run, 
  SOL0_status, SOL0_vld_in, SOL0_vld_out, SOL1_pwm_val, SOL1_time_full, SOL1_run, SOL1_status, 
  SOL1_vld_in, SOL1_vld_out, SOL2_pwm_val, SOL2_time_full, SOL2_run, SOL2_status, SOL2_vld_in, 
  SOL2_vld_out, SOL3_pwm_val, SOL3_time_full, SOL3_run, SOL3_status, SOL3_vld_in, SOL3_vld_out, 
  SOL4_pwm_val, SOL4_time_full, SOL4_run, SOL4_status, SOL4_vld_in, SOL4_vld_out, SOL5_pwm_val, 
  SOL5_time_full, SOL5_run, SOL5_status, SOL5_vld_in, SOL5_vld_out, SOL6_pwm_val, 
  SOL6_time_full, SOL6_run, SOL6_status, SOL6_vld_in, SOL6_vld_out, SOL7_pwm_val, 
  SOL7_time_full, SOL7_run, SOL7_status, SOL7_vld_in, SOL7_vld_out, SOL8_pwm_val, 
  SOL8_time_full, SOL8_run, SOL8_status, SOL8_vld_in, SOL8_vld_out, SOL9_pwm_val, 
  SOL9_time_full, SOL9_run, SOL9_status, SOL9_vld_in, SOL9_vld_out, s00_axi_awaddr, 
  s00_axi_awprot, s00_axi_awvalid, s00_axi_awready, s00_axi_wdata, s00_axi_wstrb, 
  s00_axi_wvalid, s00_axi_wready, s00_axi_bresp, s00_axi_bvalid, s00_axi_bready, 
  s00_axi_araddr, s00_axi_arprot, s00_axi_arvalid, s00_axi_arready, s00_axi_rdata, 
  s00_axi_rresp, s00_axi_rvalid, s00_axi_rready, s00_axi_aclk, s00_axi_aresetn)
/* synthesis syn_black_box black_box_pad_pin="SOL0_pwm_val[7:0],SOL0_time_full[10:0],SOL0_run,SOL0_status[1:0],SOL0_vld_in,SOL0_vld_out,SOL1_pwm_val[7:0],SOL1_time_full[10:0],SOL1_run,SOL1_status[1:0],SOL1_vld_in,SOL1_vld_out,SOL2_pwm_val[7:0],SOL2_time_full[10:0],SOL2_run,SOL2_status[1:0],SOL2_vld_in,SOL2_vld_out,SOL3_pwm_val[7:0],SOL3_time_full[10:0],SOL3_run,SOL3_status[1:0],SOL3_vld_in,SOL3_vld_out,SOL4_pwm_val[7:0],SOL4_time_full[10:0],SOL4_run,SOL4_status[1:0],SOL4_vld_in,SOL4_vld_out,SOL5_pwm_val[7:0],SOL5_time_full[10:0],SOL5_run,SOL5_status[1:0],SOL5_vld_in,SOL5_vld_out,SOL6_pwm_val[7:0],SOL6_time_full[10:0],SOL6_run,SOL6_status[1:0],SOL6_vld_in,SOL6_vld_out,SOL7_pwm_val[7:0],SOL7_time_full[10:0],SOL7_run,SOL7_status[1:0],SOL7_vld_in,SOL7_vld_out,SOL8_pwm_val[7:0],SOL8_time_full[10:0],SOL8_run,SOL8_status[1:0],SOL8_vld_in,SOL8_vld_out,SOL9_pwm_val[7:0],SOL9_time_full[10:0],SOL9_run,SOL9_status[1:0],SOL9_vld_in,SOL9_vld_out,s00_axi_awaddr[7:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[7:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready,s00_axi_aclk,s00_axi_aresetn" */;
  output [7:0]SOL0_pwm_val;
  output [10:0]SOL0_time_full;
  output SOL0_run;
  input [1:0]SOL0_status;
  input SOL0_vld_in;
  output SOL0_vld_out;
  output [7:0]SOL1_pwm_val;
  output [10:0]SOL1_time_full;
  output SOL1_run;
  input [1:0]SOL1_status;
  input SOL1_vld_in;
  output SOL1_vld_out;
  output [7:0]SOL2_pwm_val;
  output [10:0]SOL2_time_full;
  output SOL2_run;
  input [1:0]SOL2_status;
  input SOL2_vld_in;
  output SOL2_vld_out;
  output [7:0]SOL3_pwm_val;
  output [10:0]SOL3_time_full;
  output SOL3_run;
  input [1:0]SOL3_status;
  input SOL3_vld_in;
  output SOL3_vld_out;
  output [7:0]SOL4_pwm_val;
  output [10:0]SOL4_time_full;
  output SOL4_run;
  input [1:0]SOL4_status;
  input SOL4_vld_in;
  output SOL4_vld_out;
  output [7:0]SOL5_pwm_val;
  output [10:0]SOL5_time_full;
  output SOL5_run;
  input [1:0]SOL5_status;
  input SOL5_vld_in;
  output SOL5_vld_out;
  output [7:0]SOL6_pwm_val;
  output [10:0]SOL6_time_full;
  output SOL6_run;
  input [1:0]SOL6_status;
  input SOL6_vld_in;
  output SOL6_vld_out;
  output [7:0]SOL7_pwm_val;
  output [10:0]SOL7_time_full;
  output SOL7_run;
  input [1:0]SOL7_status;
  input SOL7_vld_in;
  output SOL7_vld_out;
  output [7:0]SOL8_pwm_val;
  output [10:0]SOL8_time_full;
  output SOL8_run;
  input [1:0]SOL8_status;
  input SOL8_vld_in;
  output SOL8_vld_out;
  output [7:0]SOL9_pwm_val;
  output [10:0]SOL9_time_full;
  output SOL9_run;
  input [1:0]SOL9_status;
  input SOL9_vld_in;
  output SOL9_vld_out;
  input [7:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [7:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;
  input s00_axi_aclk;
  input s00_axi_aresetn;
endmodule
