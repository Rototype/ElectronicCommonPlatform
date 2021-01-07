// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
// Date        : Mon May 11 08:42:38 2020
// Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_DCM_regs_0_0_stub.v
// Design      : system_DCM_regs_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "DCM_regs_v1_0,Vivado 2019.1.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(DCM0_pwm_val, DCM0_pwm_frq, DCM0_dir, DCM0_run, 
  DCM0_brake, DCM0_status, DCM0_vld_in, DCM0_vld_out, DCM1_pwm_val, DCM1_pwm_frq, DCM1_dir, 
  DCM1_run, DCM1_brake, DCM1_status, DCM1_vld_in, DCM1_vld_out, DCM2_pwm_val, DCM2_pwm_frq, 
  DCM2_dir, DCM2_run, DCM2_brake, DCM2_status, DCM2_vld_in, DCM2_vld_out, DCM3_pwm_val, 
  DCM3_pwm_frq, DCM3_dir, DCM3_run, DCM3_brake, DCM3_status, DCM3_vld_in, DCM3_vld_out, 
  DCM4_pwm_val, DCM4_pwm_frq, DCM4_dir, DCM4_run, DCM4_brake, DCM4_status, DCM4_vld_in, 
  DCM4_vld_out, s00_axi_awaddr, s00_axi_awprot, s00_axi_awvalid, s00_axi_awready, 
  s00_axi_wdata, s00_axi_wstrb, s00_axi_wvalid, s00_axi_wready, s00_axi_bresp, 
  s00_axi_bvalid, s00_axi_bready, s00_axi_araddr, s00_axi_arprot, s00_axi_arvalid, 
  s00_axi_arready, s00_axi_rdata, s00_axi_rresp, s00_axi_rvalid, s00_axi_rready, 
  s00_axi_aclk, s00_axi_aresetn)
/* synthesis syn_black_box black_box_pad_pin="DCM0_pwm_val[7:0],DCM0_pwm_frq[6:0],DCM0_dir,DCM0_run,DCM0_brake,DCM0_status[1:0],DCM0_vld_in,DCM0_vld_out,DCM1_pwm_val[7:0],DCM1_pwm_frq[6:0],DCM1_dir,DCM1_run,DCM1_brake,DCM1_status[1:0],DCM1_vld_in,DCM1_vld_out,DCM2_pwm_val[7:0],DCM2_pwm_frq[6:0],DCM2_dir,DCM2_run,DCM2_brake,DCM2_status[1:0],DCM2_vld_in,DCM2_vld_out,DCM3_pwm_val[7:0],DCM3_pwm_frq[6:0],DCM3_dir,DCM3_run,DCM3_brake,DCM3_status[1:0],DCM3_vld_in,DCM3_vld_out,DCM4_pwm_val[7:0],DCM4_pwm_frq[6:0],DCM4_dir,DCM4_run,DCM4_brake,DCM4_status[1:0],DCM4_vld_in,DCM4_vld_out,s00_axi_awaddr[6:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[6:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready,s00_axi_aclk,s00_axi_aresetn" */;
  output [7:0]DCM0_pwm_val;
  output [6:0]DCM0_pwm_frq;
  output DCM0_dir;
  output DCM0_run;
  output DCM0_brake;
  input [1:0]DCM0_status;
  input DCM0_vld_in;
  output DCM0_vld_out;
  output [7:0]DCM1_pwm_val;
  output [6:0]DCM1_pwm_frq;
  output DCM1_dir;
  output DCM1_run;
  output DCM1_brake;
  input [1:0]DCM1_status;
  input DCM1_vld_in;
  output DCM1_vld_out;
  output [7:0]DCM2_pwm_val;
  output [6:0]DCM2_pwm_frq;
  output DCM2_dir;
  output DCM2_run;
  output DCM2_brake;
  input [1:0]DCM2_status;
  input DCM2_vld_in;
  output DCM2_vld_out;
  output [7:0]DCM3_pwm_val;
  output [6:0]DCM3_pwm_frq;
  output DCM3_dir;
  output DCM3_run;
  output DCM3_brake;
  input [1:0]DCM3_status;
  input DCM3_vld_in;
  output DCM3_vld_out;
  output [7:0]DCM4_pwm_val;
  output [6:0]DCM4_pwm_frq;
  output DCM4_dir;
  output DCM4_run;
  output DCM4_brake;
  input [1:0]DCM4_status;
  input DCM4_vld_in;
  output DCM4_vld_out;
  input [6:0]s00_axi_awaddr;
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
  input [6:0]s00_axi_araddr;
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
