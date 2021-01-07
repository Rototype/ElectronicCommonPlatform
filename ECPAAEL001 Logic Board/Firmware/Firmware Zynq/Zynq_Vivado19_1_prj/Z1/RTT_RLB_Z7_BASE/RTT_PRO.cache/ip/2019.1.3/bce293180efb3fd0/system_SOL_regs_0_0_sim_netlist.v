// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
// Date        : Mon May 11 08:42:40 2020
// Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_SOL_regs_0_0_sim_netlist.v
// Design      : system_SOL_regs_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SOL_regs_v1_0
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    SOL0_pwm_val,
    SOL0_time_full,
    S_AXI_ARREADY,
    SOL1_pwm_val,
    SOL1_time_full,
    SOL2_pwm_val,
    SOL2_time_full,
    SOL3_pwm_val,
    SOL3_time_full,
    SOL4_pwm_val,
    SOL4_time_full,
    SOL5_pwm_val,
    SOL5_time_full,
    SOL6_pwm_val,
    SOL6_time_full,
    SOL7_pwm_val,
    SOL7_time_full,
    SOL8_pwm_val,
    SOL8_time_full,
    SOL9_pwm_val,
    SOL9_time_full,
    s00_axi_rdata,
    s00_axi_rvalid,
    SOL9_run,
    SOL8_run,
    SOL7_run,
    SOL6_run,
    SOL5_run,
    SOL4_run,
    SOL3_run,
    SOL2_run,
    SOL1_run,
    SOL0_run,
    s00_axi_bvalid,
    SOL0_vld_out,
    SOL1_vld_out,
    SOL2_vld_out,
    SOL3_vld_out,
    SOL4_vld_out,
    SOL5_vld_out,
    SOL6_vld_out,
    SOL7_vld_out,
    SOL8_vld_out,
    SOL9_vld_out,
    s00_axi_aresetn,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    SOL0_status,
    SOL1_status,
    SOL1_vld_in,
    SOL2_status,
    SOL2_vld_in,
    SOL3_status,
    SOL3_vld_in,
    SOL4_status,
    SOL4_vld_in,
    SOL5_status,
    SOL5_vld_in,
    SOL6_status,
    SOL6_vld_in,
    SOL7_status,
    SOL7_vld_in,
    SOL8_status,
    SOL9_status,
    s00_axi_awvalid,
    s00_axi_wvalid,
    SOL9_vld_in,
    SOL8_vld_in,
    SOL0_vld_in,
    s00_axi_arvalid,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output [7:0]SOL0_pwm_val;
  output [10:0]SOL0_time_full;
  output S_AXI_ARREADY;
  output [7:0]SOL1_pwm_val;
  output [10:0]SOL1_time_full;
  output [7:0]SOL2_pwm_val;
  output [10:0]SOL2_time_full;
  output [7:0]SOL3_pwm_val;
  output [10:0]SOL3_time_full;
  output [7:0]SOL4_pwm_val;
  output [10:0]SOL4_time_full;
  output [7:0]SOL5_pwm_val;
  output [10:0]SOL5_time_full;
  output [7:0]SOL6_pwm_val;
  output [10:0]SOL6_time_full;
  output [7:0]SOL7_pwm_val;
  output [10:0]SOL7_time_full;
  output [7:0]SOL8_pwm_val;
  output [10:0]SOL8_time_full;
  output [7:0]SOL9_pwm_val;
  output [10:0]SOL9_time_full;
  output [10:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output SOL9_run;
  output SOL8_run;
  output SOL7_run;
  output SOL6_run;
  output SOL5_run;
  output SOL4_run;
  output SOL3_run;
  output SOL2_run;
  output SOL1_run;
  output SOL0_run;
  output s00_axi_bvalid;
  output SOL0_vld_out;
  output SOL1_vld_out;
  output SOL2_vld_out;
  output SOL3_vld_out;
  output SOL4_vld_out;
  output SOL5_vld_out;
  output SOL6_vld_out;
  output SOL7_vld_out;
  output SOL8_vld_out;
  output SOL9_vld_out;
  input s00_axi_aresetn;
  input s00_axi_aclk;
  input [5:0]s00_axi_awaddr;
  input [10:0]s00_axi_wdata;
  input [5:0]s00_axi_araddr;
  input [1:0]SOL0_status;
  input [1:0]SOL1_status;
  input SOL1_vld_in;
  input [1:0]SOL2_status;
  input SOL2_vld_in;
  input [1:0]SOL3_status;
  input SOL3_vld_in;
  input [1:0]SOL4_status;
  input SOL4_vld_in;
  input [1:0]SOL5_status;
  input SOL5_vld_in;
  input [1:0]SOL6_status;
  input SOL6_vld_in;
  input [1:0]SOL7_status;
  input SOL7_vld_in;
  input [1:0]SOL8_status;
  input [1:0]SOL9_status;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input SOL9_vld_in;
  input SOL8_vld_in;
  input SOL0_vld_in;
  input s00_axi_arvalid;
  input s00_axi_bready;
  input s00_axi_rready;

  wire [7:0]SOL0_pwm_val;
  wire SOL0_run;
  wire [1:0]SOL0_status;
  wire [10:0]SOL0_time_full;
  wire SOL0_vld_in;
  wire SOL0_vld_out;
  wire [7:0]SOL1_pwm_val;
  wire SOL1_run;
  wire [1:0]SOL1_status;
  wire [10:0]SOL1_time_full;
  wire SOL1_vld_in;
  wire SOL1_vld_out;
  wire [7:0]SOL2_pwm_val;
  wire SOL2_run;
  wire [1:0]SOL2_status;
  wire [10:0]SOL2_time_full;
  wire SOL2_vld_in;
  wire SOL2_vld_out;
  wire [7:0]SOL3_pwm_val;
  wire SOL3_run;
  wire [1:0]SOL3_status;
  wire [10:0]SOL3_time_full;
  wire SOL3_vld_in;
  wire SOL3_vld_out;
  wire [7:0]SOL4_pwm_val;
  wire SOL4_run;
  wire [1:0]SOL4_status;
  wire [10:0]SOL4_time_full;
  wire SOL4_vld_in;
  wire SOL4_vld_out;
  wire [7:0]SOL5_pwm_val;
  wire SOL5_run;
  wire [1:0]SOL5_status;
  wire [10:0]SOL5_time_full;
  wire SOL5_vld_in;
  wire SOL5_vld_out;
  wire [7:0]SOL6_pwm_val;
  wire SOL6_run;
  wire [1:0]SOL6_status;
  wire [10:0]SOL6_time_full;
  wire SOL6_vld_in;
  wire SOL6_vld_out;
  wire [7:0]SOL7_pwm_val;
  wire SOL7_run;
  wire [1:0]SOL7_status;
  wire [10:0]SOL7_time_full;
  wire SOL7_vld_in;
  wire SOL7_vld_out;
  wire [7:0]SOL8_pwm_val;
  wire SOL8_run;
  wire [1:0]SOL8_status;
  wire [10:0]SOL8_time_full;
  wire SOL8_vld_in;
  wire SOL8_vld_out;
  wire [7:0]SOL9_pwm_val;
  wire SOL9_run;
  wire [1:0]SOL9_status;
  wire [10:0]SOL9_time_full;
  wire SOL9_vld_in;
  wire SOL9_vld_out;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire s00_axi_aclk;
  wire [5:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [5:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [10:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [10:0]s00_axi_wdata;
  wire s00_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SOL_regs_v1_0_S00_AXI SOL_regs_v1_0_S00_AXI_inst
       (.SOL0_pwm_val(SOL0_pwm_val),
        .SOL0_run(SOL0_run),
        .SOL0_status(SOL0_status),
        .SOL0_time_full(SOL0_time_full),
        .SOL0_vld_in(SOL0_vld_in),
        .SOL0_vld_out(SOL0_vld_out),
        .SOL1_pwm_val(SOL1_pwm_val),
        .SOL1_run(SOL1_run),
        .SOL1_status(SOL1_status),
        .SOL1_time_full(SOL1_time_full),
        .SOL1_vld_in(SOL1_vld_in),
        .SOL1_vld_out(SOL1_vld_out),
        .SOL2_pwm_val(SOL2_pwm_val),
        .SOL2_run(SOL2_run),
        .SOL2_status(SOL2_status),
        .SOL2_time_full(SOL2_time_full),
        .SOL2_vld_in(SOL2_vld_in),
        .SOL2_vld_out(SOL2_vld_out),
        .SOL3_pwm_val(SOL3_pwm_val),
        .SOL3_run(SOL3_run),
        .SOL3_status(SOL3_status),
        .SOL3_time_full(SOL3_time_full),
        .SOL3_vld_in(SOL3_vld_in),
        .SOL3_vld_out(SOL3_vld_out),
        .SOL4_pwm_val(SOL4_pwm_val),
        .SOL4_run(SOL4_run),
        .SOL4_status(SOL4_status),
        .SOL4_time_full(SOL4_time_full),
        .SOL4_vld_in(SOL4_vld_in),
        .SOL4_vld_out(SOL4_vld_out),
        .SOL5_pwm_val(SOL5_pwm_val),
        .SOL5_run(SOL5_run),
        .SOL5_status(SOL5_status),
        .SOL5_time_full(SOL5_time_full),
        .SOL5_vld_in(SOL5_vld_in),
        .SOL5_vld_out(SOL5_vld_out),
        .SOL6_pwm_val(SOL6_pwm_val),
        .SOL6_run(SOL6_run),
        .SOL6_status(SOL6_status),
        .SOL6_time_full(SOL6_time_full),
        .SOL6_vld_in(SOL6_vld_in),
        .SOL6_vld_out(SOL6_vld_out),
        .SOL7_pwm_val(SOL7_pwm_val),
        .SOL7_run(SOL7_run),
        .SOL7_status(SOL7_status),
        .SOL7_time_full(SOL7_time_full),
        .SOL7_vld_in(SOL7_vld_in),
        .SOL7_vld_out(SOL7_vld_out),
        .SOL8_pwm_val(SOL8_pwm_val),
        .SOL8_run(SOL8_run),
        .SOL8_status(SOL8_status),
        .SOL8_time_full(SOL8_time_full),
        .SOL8_vld_in(SOL8_vld_in),
        .SOL8_vld_out(SOL8_vld_out),
        .SOL9_pwm_val(SOL9_pwm_val),
        .SOL9_run(SOL9_run),
        .SOL9_status(SOL9_status),
        .SOL9_time_full(SOL9_time_full),
        .SOL9_vld_in(SOL9_vld_in),
        .SOL9_vld_out(SOL9_vld_out),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SOL_regs_v1_0_S00_AXI
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    SOL0_pwm_val,
    SOL0_time_full,
    S_AXI_ARREADY,
    SOL1_pwm_val,
    SOL1_time_full,
    SOL2_pwm_val,
    SOL2_time_full,
    SOL3_pwm_val,
    SOL3_time_full,
    SOL4_pwm_val,
    SOL4_time_full,
    SOL5_pwm_val,
    SOL5_time_full,
    SOL6_pwm_val,
    SOL6_time_full,
    SOL7_pwm_val,
    SOL7_time_full,
    SOL8_pwm_val,
    SOL8_time_full,
    SOL9_pwm_val,
    SOL9_time_full,
    s00_axi_rdata,
    s00_axi_rvalid,
    SOL9_run,
    SOL8_run,
    SOL7_run,
    SOL6_run,
    SOL5_run,
    SOL4_run,
    SOL3_run,
    SOL2_run,
    SOL1_run,
    SOL0_run,
    s00_axi_bvalid,
    SOL0_vld_out,
    SOL1_vld_out,
    SOL2_vld_out,
    SOL3_vld_out,
    SOL4_vld_out,
    SOL5_vld_out,
    SOL6_vld_out,
    SOL7_vld_out,
    SOL8_vld_out,
    SOL9_vld_out,
    s00_axi_aresetn,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    SOL0_status,
    SOL1_status,
    SOL1_vld_in,
    SOL2_status,
    SOL2_vld_in,
    SOL3_status,
    SOL3_vld_in,
    SOL4_status,
    SOL4_vld_in,
    SOL5_status,
    SOL5_vld_in,
    SOL6_status,
    SOL6_vld_in,
    SOL7_status,
    SOL7_vld_in,
    SOL8_status,
    SOL9_status,
    s00_axi_awvalid,
    s00_axi_wvalid,
    SOL9_vld_in,
    SOL8_vld_in,
    SOL0_vld_in,
    s00_axi_arvalid,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output [7:0]SOL0_pwm_val;
  output [10:0]SOL0_time_full;
  output S_AXI_ARREADY;
  output [7:0]SOL1_pwm_val;
  output [10:0]SOL1_time_full;
  output [7:0]SOL2_pwm_val;
  output [10:0]SOL2_time_full;
  output [7:0]SOL3_pwm_val;
  output [10:0]SOL3_time_full;
  output [7:0]SOL4_pwm_val;
  output [10:0]SOL4_time_full;
  output [7:0]SOL5_pwm_val;
  output [10:0]SOL5_time_full;
  output [7:0]SOL6_pwm_val;
  output [10:0]SOL6_time_full;
  output [7:0]SOL7_pwm_val;
  output [10:0]SOL7_time_full;
  output [7:0]SOL8_pwm_val;
  output [10:0]SOL8_time_full;
  output [7:0]SOL9_pwm_val;
  output [10:0]SOL9_time_full;
  output [10:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output SOL9_run;
  output SOL8_run;
  output SOL7_run;
  output SOL6_run;
  output SOL5_run;
  output SOL4_run;
  output SOL3_run;
  output SOL2_run;
  output SOL1_run;
  output SOL0_run;
  output s00_axi_bvalid;
  output SOL0_vld_out;
  output SOL1_vld_out;
  output SOL2_vld_out;
  output SOL3_vld_out;
  output SOL4_vld_out;
  output SOL5_vld_out;
  output SOL6_vld_out;
  output SOL7_vld_out;
  output SOL8_vld_out;
  output SOL9_vld_out;
  input s00_axi_aresetn;
  input s00_axi_aclk;
  input [5:0]s00_axi_awaddr;
  input [10:0]s00_axi_wdata;
  input [5:0]s00_axi_araddr;
  input [1:0]SOL0_status;
  input [1:0]SOL1_status;
  input SOL1_vld_in;
  input [1:0]SOL2_status;
  input SOL2_vld_in;
  input [1:0]SOL3_status;
  input SOL3_vld_in;
  input [1:0]SOL4_status;
  input SOL4_vld_in;
  input [1:0]SOL5_status;
  input SOL5_vld_in;
  input [1:0]SOL6_status;
  input SOL6_vld_in;
  input [1:0]SOL7_status;
  input SOL7_vld_in;
  input [1:0]SOL8_status;
  input [1:0]SOL9_status;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input SOL9_vld_in;
  input SOL8_vld_in;
  input SOL0_vld_in;
  input s00_axi_arvalid;
  input s00_axi_bready;
  input s00_axi_rready;

  wire [7:0]SOL0_pwm_val;
  wire SOL0_run;
  wire [1:0]SOL0_status;
  wire [10:0]SOL0_time_full;
  wire SOL0_vld_in;
  wire SOL0_vld_out;
  wire SOL0_vld_out_i_1_n_0;
  wire SOL0_vld_out_i_2_n_0;
  wire SOL0_vld_out_i_3_n_0;
  wire [7:0]SOL1_pwm_val;
  wire SOL1_run;
  wire [1:0]SOL1_status;
  wire [10:0]SOL1_time_full;
  wire SOL1_vld_in;
  wire SOL1_vld_out;
  wire SOL1_vld_out_i_1_n_0;
  wire [7:0]SOL2_pwm_val;
  wire SOL2_run;
  wire [1:0]SOL2_status;
  wire [10:0]SOL2_time_full;
  wire SOL2_vld_in;
  wire SOL2_vld_out;
  wire SOL2_vld_out_i_1_n_0;
  wire SOL2_vld_out_i_2_n_0;
  wire [7:0]SOL3_pwm_val;
  wire SOL3_run;
  wire [1:0]SOL3_status;
  wire [10:0]SOL3_time_full;
  wire SOL3_vld_in;
  wire SOL3_vld_out;
  wire SOL3_vld_out_i_1_n_0;
  wire [7:0]SOL4_pwm_val;
  wire SOL4_run;
  wire [1:0]SOL4_status;
  wire [10:0]SOL4_time_full;
  wire SOL4_vld_in;
  wire SOL4_vld_out;
  wire SOL4_vld_out_i_1_n_0;
  wire [7:0]SOL5_pwm_val;
  wire SOL5_run;
  wire [1:0]SOL5_status;
  wire [10:0]SOL5_time_full;
  wire SOL5_vld_in;
  wire SOL5_vld_out;
  wire SOL5_vld_out_i_1_n_0;
  wire [7:0]SOL6_pwm_val;
  wire SOL6_run;
  wire [1:0]SOL6_status;
  wire [10:0]SOL6_time_full;
  wire SOL6_vld_in;
  wire SOL6_vld_out;
  wire SOL6_vld_out_i_1_n_0;
  wire [7:0]SOL7_pwm_val;
  wire SOL7_run;
  wire [1:0]SOL7_status;
  wire [10:0]SOL7_time_full;
  wire SOL7_vld_in;
  wire SOL7_vld_out;
  wire SOL7_vld_out_i_1_n_0;
  wire [7:0]SOL8_pwm_val;
  wire SOL8_run;
  wire [1:0]SOL8_status;
  wire [10:0]SOL8_time_full;
  wire SOL8_vld_in;
  wire SOL8_vld_out;
  wire SOL8_vld_out_i_1_n_0;
  wire [7:0]SOL9_pwm_val;
  wire SOL9_run;
  wire [1:0]SOL9_status;
  wire [10:0]SOL9_time_full;
  wire SOL9_vld_in;
  wire SOL9_vld_out;
  wire SOL9_vld_out_i_1_n_0;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [7:2]axi_araddr;
  wire axi_arready0;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_11_n_0 ;
  wire \axi_rdata[0]_i_12_n_0 ;
  wire \axi_rdata[0]_i_13_n_0 ;
  wire \axi_rdata[0]_i_14_n_0 ;
  wire \axi_rdata[0]_i_15_n_0 ;
  wire \axi_rdata[0]_i_16_n_0 ;
  wire \axi_rdata[0]_i_17_n_0 ;
  wire \axi_rdata[0]_i_18_n_0 ;
  wire \axi_rdata[0]_i_5_n_0 ;
  wire \axi_rdata[0]_i_6_n_0 ;
  wire \axi_rdata[10]_i_3_n_0 ;
  wire \axi_rdata[10]_i_6_n_0 ;
  wire \axi_rdata[10]_i_7_n_0 ;
  wire \axi_rdata[10]_i_8_n_0 ;
  wire \axi_rdata[10]_i_9_n_0 ;
  wire \axi_rdata[1]_i_11_n_0 ;
  wire \axi_rdata[1]_i_12_n_0 ;
  wire \axi_rdata[1]_i_13_n_0 ;
  wire \axi_rdata[1]_i_14_n_0 ;
  wire \axi_rdata[1]_i_15_n_0 ;
  wire \axi_rdata[1]_i_16_n_0 ;
  wire \axi_rdata[1]_i_17_n_0 ;
  wire \axi_rdata[1]_i_18_n_0 ;
  wire \axi_rdata[1]_i_5_n_0 ;
  wire \axi_rdata[1]_i_6_n_0 ;
  wire \axi_rdata[2]_i_10_n_0 ;
  wire \axi_rdata[2]_i_11_n_0 ;
  wire \axi_rdata[2]_i_12_n_0 ;
  wire \axi_rdata[2]_i_13_n_0 ;
  wire \axi_rdata[2]_i_14_n_0 ;
  wire \axi_rdata[2]_i_15_n_0 ;
  wire \axi_rdata[2]_i_16_n_0 ;
  wire \axi_rdata[2]_i_17_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[2]_i_5_n_0 ;
  wire \axi_rdata[3]_i_10_n_0 ;
  wire \axi_rdata[3]_i_11_n_0 ;
  wire \axi_rdata[3]_i_12_n_0 ;
  wire \axi_rdata[3]_i_13_n_0 ;
  wire \axi_rdata[3]_i_14_n_0 ;
  wire \axi_rdata[3]_i_15_n_0 ;
  wire \axi_rdata[3]_i_16_n_0 ;
  wire \axi_rdata[3]_i_17_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[3]_i_5_n_0 ;
  wire \axi_rdata[4]_i_10_n_0 ;
  wire \axi_rdata[4]_i_11_n_0 ;
  wire \axi_rdata[4]_i_12_n_0 ;
  wire \axi_rdata[4]_i_13_n_0 ;
  wire \axi_rdata[4]_i_14_n_0 ;
  wire \axi_rdata[4]_i_15_n_0 ;
  wire \axi_rdata[4]_i_16_n_0 ;
  wire \axi_rdata[4]_i_17_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[4]_i_5_n_0 ;
  wire \axi_rdata[5]_i_10_n_0 ;
  wire \axi_rdata[5]_i_11_n_0 ;
  wire \axi_rdata[5]_i_12_n_0 ;
  wire \axi_rdata[5]_i_13_n_0 ;
  wire \axi_rdata[5]_i_14_n_0 ;
  wire \axi_rdata[5]_i_15_n_0 ;
  wire \axi_rdata[5]_i_16_n_0 ;
  wire \axi_rdata[5]_i_17_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[5]_i_5_n_0 ;
  wire \axi_rdata[6]_i_10_n_0 ;
  wire \axi_rdata[6]_i_11_n_0 ;
  wire \axi_rdata[6]_i_12_n_0 ;
  wire \axi_rdata[6]_i_13_n_0 ;
  wire \axi_rdata[6]_i_14_n_0 ;
  wire \axi_rdata[6]_i_15_n_0 ;
  wire \axi_rdata[6]_i_16_n_0 ;
  wire \axi_rdata[6]_i_17_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[6]_i_5_n_0 ;
  wire \axi_rdata[7]_i_10_n_0 ;
  wire \axi_rdata[7]_i_11_n_0 ;
  wire \axi_rdata[7]_i_12_n_0 ;
  wire \axi_rdata[7]_i_13_n_0 ;
  wire \axi_rdata[7]_i_14_n_0 ;
  wire \axi_rdata[7]_i_15_n_0 ;
  wire \axi_rdata[7]_i_16_n_0 ;
  wire \axi_rdata[7]_i_17_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[7]_i_5_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[8]_i_5_n_0 ;
  wire \axi_rdata[8]_i_6_n_0 ;
  wire \axi_rdata[8]_i_7_n_0 ;
  wire \axi_rdata[8]_i_8_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire \axi_rdata[9]_i_5_n_0 ;
  wire \axi_rdata[9]_i_6_n_0 ;
  wire \axi_rdata[9]_i_7_n_0 ;
  wire \axi_rdata[9]_i_8_n_0 ;
  wire \axi_rdata_reg[0]_i_10_n_0 ;
  wire \axi_rdata_reg[0]_i_2_n_0 ;
  wire \axi_rdata_reg[0]_i_3_n_0 ;
  wire \axi_rdata_reg[0]_i_4_n_0 ;
  wire \axi_rdata_reg[0]_i_7_n_0 ;
  wire \axi_rdata_reg[0]_i_8_n_0 ;
  wire \axi_rdata_reg[0]_i_9_n_0 ;
  wire \axi_rdata_reg[10]_i_4_n_0 ;
  wire \axi_rdata_reg[10]_i_5_n_0 ;
  wire \axi_rdata_reg[1]_i_10_n_0 ;
  wire \axi_rdata_reg[1]_i_2_n_0 ;
  wire \axi_rdata_reg[1]_i_3_n_0 ;
  wire \axi_rdata_reg[1]_i_4_n_0 ;
  wire \axi_rdata_reg[1]_i_7_n_0 ;
  wire \axi_rdata_reg[1]_i_8_n_0 ;
  wire \axi_rdata_reg[1]_i_9_n_0 ;
  wire \axi_rdata_reg[2]_i_3_n_0 ;
  wire \axi_rdata_reg[2]_i_4_n_0 ;
  wire \axi_rdata_reg[2]_i_6_n_0 ;
  wire \axi_rdata_reg[2]_i_7_n_0 ;
  wire \axi_rdata_reg[2]_i_8_n_0 ;
  wire \axi_rdata_reg[2]_i_9_n_0 ;
  wire \axi_rdata_reg[3]_i_3_n_0 ;
  wire \axi_rdata_reg[3]_i_4_n_0 ;
  wire \axi_rdata_reg[3]_i_6_n_0 ;
  wire \axi_rdata_reg[3]_i_7_n_0 ;
  wire \axi_rdata_reg[3]_i_8_n_0 ;
  wire \axi_rdata_reg[3]_i_9_n_0 ;
  wire \axi_rdata_reg[4]_i_3_n_0 ;
  wire \axi_rdata_reg[4]_i_4_n_0 ;
  wire \axi_rdata_reg[4]_i_6_n_0 ;
  wire \axi_rdata_reg[4]_i_7_n_0 ;
  wire \axi_rdata_reg[4]_i_8_n_0 ;
  wire \axi_rdata_reg[4]_i_9_n_0 ;
  wire \axi_rdata_reg[5]_i_3_n_0 ;
  wire \axi_rdata_reg[5]_i_4_n_0 ;
  wire \axi_rdata_reg[5]_i_6_n_0 ;
  wire \axi_rdata_reg[5]_i_7_n_0 ;
  wire \axi_rdata_reg[5]_i_8_n_0 ;
  wire \axi_rdata_reg[5]_i_9_n_0 ;
  wire \axi_rdata_reg[6]_i_3_n_0 ;
  wire \axi_rdata_reg[6]_i_4_n_0 ;
  wire \axi_rdata_reg[6]_i_6_n_0 ;
  wire \axi_rdata_reg[6]_i_7_n_0 ;
  wire \axi_rdata_reg[6]_i_8_n_0 ;
  wire \axi_rdata_reg[6]_i_9_n_0 ;
  wire \axi_rdata_reg[7]_i_3_n_0 ;
  wire \axi_rdata_reg[7]_i_4_n_0 ;
  wire \axi_rdata_reg[7]_i_6_n_0 ;
  wire \axi_rdata_reg[7]_i_7_n_0 ;
  wire \axi_rdata_reg[7]_i_8_n_0 ;
  wire \axi_rdata_reg[7]_i_9_n_0 ;
  wire \axi_rdata_reg[8]_i_3_n_0 ;
  wire \axi_rdata_reg[8]_i_4_n_0 ;
  wire \axi_rdata_reg[9]_i_3_n_0 ;
  wire \axi_rdata_reg[9]_i_4_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire p_0_in;
  wire [10:0]reg_data_out;
  wire s00_axi_aclk;
  wire [5:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [5:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [10:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [10:0]s00_axi_wdata;
  wire s00_axi_wvalid;
  wire [5:0]sel0;
  wire slv_reg0;
  wire \slv_reg0[7]_i_3_n_0 ;
  wire slv_reg1;
  wire \slv_reg10[0]_i_1_n_0 ;
  wire \slv_reg10[0]_i_2_n_0 ;
  wire [1:0]slv_reg11;
  wire \slv_reg11[0]_i_1_n_0 ;
  wire \slv_reg11[1]_i_1_n_0 ;
  wire \slv_reg11[1]_i_2_n_0 ;
  wire slv_reg12;
  wire slv_reg13;
  wire \slv_reg14[0]_i_1_n_0 ;
  wire [1:0]slv_reg15;
  wire \slv_reg15[0]_i_1_n_0 ;
  wire \slv_reg15[1]_i_1_n_0 ;
  wire slv_reg16;
  wire slv_reg17;
  wire \slv_reg18[0]_i_1_n_0 ;
  wire \slv_reg18[0]_i_2_n_0 ;
  wire [1:0]slv_reg19;
  wire \slv_reg19[0]_i_1_n_0 ;
  wire \slv_reg19[1]_i_1_n_0 ;
  wire \slv_reg19[1]_i_2_n_0 ;
  wire \slv_reg1[10]_i_2_n_0 ;
  wire slv_reg20;
  wire slv_reg21;
  wire \slv_reg22[0]_i_1_n_0 ;
  wire [1:0]slv_reg23;
  wire \slv_reg23[0]_i_1_n_0 ;
  wire \slv_reg23[1]_i_1_n_0 ;
  wire slv_reg24;
  wire slv_reg25;
  wire \slv_reg26[0]_i_1_n_0 ;
  wire \slv_reg26[0]_i_2_n_0 ;
  wire [1:0]slv_reg27;
  wire \slv_reg27[0]_i_1_n_0 ;
  wire \slv_reg27[1]_i_1_n_0 ;
  wire \slv_reg27[1]_i_2_n_0 ;
  wire slv_reg28;
  wire slv_reg29;
  wire \slv_reg2[0]_i_1_n_0 ;
  wire \slv_reg2[0]_i_2_n_0 ;
  wire [1:0]slv_reg3;
  wire \slv_reg30[0]_i_1_n_0 ;
  wire [1:0]slv_reg31;
  wire \slv_reg31[0]_i_1_n_0 ;
  wire \slv_reg31[1]_i_1_n_0 ;
  wire slv_reg32;
  wire slv_reg33;
  wire \slv_reg34[0]_i_1_n_0 ;
  wire \slv_reg34[0]_i_2_n_0 ;
  wire [1:0]slv_reg35;
  wire \slv_reg35[0]_i_1_n_0 ;
  wire \slv_reg35[1]_i_1_n_0 ;
  wire \slv_reg35[1]_i_3_n_0 ;
  wire [1:1]slv_reg35_1;
  wire slv_reg36;
  wire slv_reg37;
  wire \slv_reg38[0]_i_1_n_0 ;
  wire [1:0]slv_reg39;
  wire \slv_reg39[0]_i_1_n_0 ;
  wire \slv_reg39[1]_i_1_n_0 ;
  wire [1:1]slv_reg39_0;
  wire \slv_reg3[0]_i_1_n_0 ;
  wire \slv_reg3[1]_i_1_n_0 ;
  wire \slv_reg3[1]_i_3_n_0 ;
  wire [1:1]slv_reg3_2;
  wire slv_reg4;
  wire slv_reg5;
  wire \slv_reg6[0]_i_1_n_0 ;
  wire [1:0]slv_reg7;
  wire \slv_reg7[0]_i_1_n_0 ;
  wire \slv_reg7[1]_i_1_n_0 ;
  wire \slv_reg7[1]_i_2_n_0 ;
  wire slv_reg8;
  wire slv_reg9;
  wire slv_reg_rden;
  wire slv_reg_wren;
  wire slv_reg_wren_d1;

  LUT2 #(
    .INIT(4'h7)) 
    SOL0_vld_out_i_1
       (.I0(s00_axi_aresetn),
        .I1(slv_reg_wren_d1),
        .O(SOL0_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hBBBBBFBE88888082)) 
    SOL0_vld_out_i_2
       (.I0(SOL0_vld_out_i_3_n_0),
        .I1(axi_araddr[7]),
        .I2(axi_araddr[5]),
        .I3(axi_araddr[4]),
        .I4(axi_araddr[6]),
        .I5(SOL0_vld_out),
        .O(SOL0_vld_out_i_2_n_0));
  LUT4 #(
    .INIT(16'h0015)) 
    SOL0_vld_out_i_3
       (.I0(axi_araddr[5]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(axi_araddr[6]),
        .O(SOL0_vld_out_i_3_n_0));
  FDRE SOL0_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(SOL0_vld_out_i_2_n_0),
        .Q(SOL0_vld_out),
        .R(SOL0_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hBBBBBEBF88888280)) 
    SOL1_vld_out_i_1
       (.I0(SOL0_vld_out_i_3_n_0),
        .I1(axi_araddr[7]),
        .I2(axi_araddr[5]),
        .I3(axi_araddr[4]),
        .I4(axi_araddr[6]),
        .I5(SOL1_vld_out),
        .O(SOL1_vld_out_i_1_n_0));
  FDRE SOL1_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(SOL1_vld_out_i_1_n_0),
        .Q(SOL1_vld_out),
        .R(SOL0_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hBBBBBAFF88888A00)) 
    SOL2_vld_out_i_1
       (.I0(SOL2_vld_out_i_2_n_0),
        .I1(axi_araddr[7]),
        .I2(axi_araddr[4]),
        .I3(axi_araddr[5]),
        .I4(axi_araddr[6]),
        .I5(SOL2_vld_out),
        .O(SOL2_vld_out_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h07)) 
    SOL2_vld_out_i_2
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[7]),
        .O(SOL2_vld_out_i_2_n_0));
  FDRE SOL2_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(SOL2_vld_out_i_1_n_0),
        .Q(SOL2_vld_out),
        .R(SOL0_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hBBBBAFBF8888A080)) 
    SOL3_vld_out_i_1
       (.I0(SOL2_vld_out_i_2_n_0),
        .I1(axi_araddr[7]),
        .I2(axi_araddr[5]),
        .I3(axi_araddr[4]),
        .I4(axi_araddr[6]),
        .I5(SOL3_vld_out),
        .O(SOL3_vld_out_i_1_n_0));
  FDRE SOL3_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(SOL3_vld_out_i_1_n_0),
        .Q(SOL3_vld_out),
        .R(SOL0_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hBBBABFBF888A8080)) 
    SOL4_vld_out_i_1
       (.I0(SOL2_vld_out_i_2_n_0),
        .I1(axi_araddr[7]),
        .I2(axi_araddr[5]),
        .I3(axi_araddr[4]),
        .I4(axi_araddr[6]),
        .I5(SOL4_vld_out),
        .O(SOL4_vld_out_i_1_n_0));
  FDRE SOL4_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(SOL4_vld_out_i_1_n_0),
        .Q(SOL4_vld_out),
        .R(SOL0_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hBABBBFBF8A888080)) 
    SOL5_vld_out_i_1
       (.I0(SOL2_vld_out_i_2_n_0),
        .I1(axi_araddr[7]),
        .I2(axi_araddr[5]),
        .I3(axi_araddr[4]),
        .I4(axi_araddr[6]),
        .I5(SOL5_vld_out),
        .O(SOL5_vld_out_i_1_n_0));
  FDRE SOL5_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(SOL5_vld_out_i_1_n_0),
        .Q(SOL5_vld_out),
        .R(SOL0_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hBABBBBFF8A888800)) 
    SOL6_vld_out_i_1
       (.I0(SOL2_vld_out_i_2_n_0),
        .I1(axi_araddr[7]),
        .I2(axi_araddr[4]),
        .I3(axi_araddr[5]),
        .I4(axi_araddr[6]),
        .I5(SOL6_vld_out),
        .O(SOL6_vld_out_i_1_n_0));
  FDRE SOL6_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(SOL6_vld_out_i_1_n_0),
        .Q(SOL6_vld_out),
        .R(SOL0_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hABBBBFBFA8888080)) 
    SOL7_vld_out_i_1
       (.I0(SOL2_vld_out_i_2_n_0),
        .I1(axi_araddr[7]),
        .I2(axi_araddr[5]),
        .I3(axi_araddr[4]),
        .I4(axi_araddr[6]),
        .I5(SOL7_vld_out),
        .O(SOL7_vld_out_i_1_n_0));
  FDRE SOL7_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(SOL7_vld_out_i_1_n_0),
        .Q(SOL7_vld_out),
        .R(SOL0_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hABAAFFFFA8AA0000)) 
    SOL8_vld_out_i_1
       (.I0(SOL0_vld_out_i_3_n_0),
        .I1(axi_araddr[6]),
        .I2(axi_araddr[5]),
        .I3(axi_araddr[4]),
        .I4(axi_araddr[7]),
        .I5(SOL8_vld_out),
        .O(SOL8_vld_out_i_1_n_0));
  FDRE SOL8_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(SOL8_vld_out_i_1_n_0),
        .Q(SOL8_vld_out),
        .R(SOL0_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAABFFFFAAA80000)) 
    SOL9_vld_out_i_1
       (.I0(SOL0_vld_out_i_3_n_0),
        .I1(axi_araddr[6]),
        .I2(axi_araddr[5]),
        .I3(axi_araddr[4]),
        .I4(axi_araddr[7]),
        .I5(SOL9_vld_out),
        .O(SOL9_vld_out_i_1_n_0));
  FDRE SOL9_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(SOL9_vld_out_i_1_n_0),
        .Q(SOL9_vld_out),
        .R(SOL0_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hFF88FF880F88FF88)) 
    aw_en_i_1
       (.I0(s00_axi_bvalid),
        .I1(s00_axi_bready),
        .I2(s00_axi_awvalid),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_wvalid),
        .I5(S_AXI_AWREADY),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(p_0_in));
  FDSE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[0]),
        .Q(axi_araddr[2]),
        .S(p_0_in));
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[1]),
        .Q(axi_araddr[3]),
        .S(p_0_in));
  FDSE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[2]),
        .Q(axi_araddr[4]),
        .S(p_0_in));
  FDSE \axi_araddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[3]),
        .Q(axi_araddr[5]),
        .S(p_0_in));
  FDSE \axi_araddr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[4]),
        .Q(axi_araddr[6]),
        .S(p_0_in));
  FDSE \axi_araddr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[5]),
        .Q(axi_araddr[7]),
        .S(p_0_in));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[0]),
        .Q(sel0[0]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[1]),
        .Q(sel0[1]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[2]),
        .Q(sel0[2]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[3]),
        .Q(sel0[3]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[4]),
        .Q(sel0[4]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[5]),
        .Q(sel0[5]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_1
       (.I0(s00_axi_awvalid),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h55555555C0000000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_bready),
        .I1(S_AXI_WREADY),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .I4(S_AXI_AWREADY),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \axi_rdata[0]_i_1 
       (.I0(axi_araddr[5]),
        .I1(\axi_rdata_reg[0]_i_2_n_0 ),
        .I2(axi_araddr[7]),
        .I3(\axi_rdata_reg[0]_i_3_n_0 ),
        .I4(axi_araddr[6]),
        .I5(\axi_rdata_reg[0]_i_4_n_0 ),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_11 
       (.I0(slv_reg19[0]),
        .I1(SOL4_run),
        .I2(axi_araddr[3]),
        .I3(SOL4_time_full[0]),
        .I4(axi_araddr[2]),
        .I5(SOL4_pwm_val[0]),
        .O(\axi_rdata[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_12 
       (.I0(slv_reg23[0]),
        .I1(SOL5_run),
        .I2(axi_araddr[3]),
        .I3(SOL5_time_full[0]),
        .I4(axi_araddr[2]),
        .I5(SOL5_pwm_val[0]),
        .O(\axi_rdata[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_13 
       (.I0(slv_reg27[0]),
        .I1(SOL6_run),
        .I2(axi_araddr[3]),
        .I3(SOL6_time_full[0]),
        .I4(axi_araddr[2]),
        .I5(SOL6_pwm_val[0]),
        .O(\axi_rdata[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_14 
       (.I0(slv_reg31[0]),
        .I1(SOL7_run),
        .I2(axi_araddr[3]),
        .I3(SOL7_time_full[0]),
        .I4(axi_araddr[2]),
        .I5(SOL7_pwm_val[0]),
        .O(\axi_rdata[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_15 
       (.I0(slv_reg3[0]),
        .I1(SOL0_run),
        .I2(axi_araddr[3]),
        .I3(SOL0_time_full[0]),
        .I4(axi_araddr[2]),
        .I5(SOL0_pwm_val[0]),
        .O(\axi_rdata[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_16 
       (.I0(slv_reg7[0]),
        .I1(SOL1_run),
        .I2(axi_araddr[3]),
        .I3(SOL1_time_full[0]),
        .I4(axi_araddr[2]),
        .I5(SOL1_pwm_val[0]),
        .O(\axi_rdata[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_17 
       (.I0(slv_reg11[0]),
        .I1(SOL2_run),
        .I2(axi_araddr[3]),
        .I3(SOL2_time_full[0]),
        .I4(axi_araddr[2]),
        .I5(SOL2_pwm_val[0]),
        .O(\axi_rdata[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_18 
       (.I0(slv_reg15[0]),
        .I1(SOL3_run),
        .I2(axi_araddr[3]),
        .I3(SOL3_time_full[0]),
        .I4(axi_araddr[2]),
        .I5(SOL3_pwm_val[0]),
        .O(\axi_rdata[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_5 
       (.I0(slv_reg35[0]),
        .I1(SOL8_run),
        .I2(axi_araddr[3]),
        .I3(SOL8_time_full[0]),
        .I4(axi_araddr[2]),
        .I5(SOL8_pwm_val[0]),
        .O(\axi_rdata[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_6 
       (.I0(slv_reg39[0]),
        .I1(SOL9_run),
        .I2(axi_araddr[3]),
        .I3(SOL9_time_full[0]),
        .I4(axi_araddr[2]),
        .I5(SOL9_pwm_val[0]),
        .O(\axi_rdata[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[10]_i_1 
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .O(slv_reg_rden));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[10]_i_2 
       (.I0(\axi_rdata[10]_i_3_n_0 ),
        .I1(axi_araddr[7]),
        .I2(\axi_rdata_reg[10]_i_4_n_0 ),
        .I3(axi_araddr[6]),
        .I4(\axi_rdata_reg[10]_i_5_n_0 ),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'h0000000050400040)) 
    \axi_rdata[10]_i_3 
       (.I0(axi_araddr[3]),
        .I1(SOL8_time_full[10]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[4]),
        .I4(SOL9_time_full[10]),
        .I5(axi_araddr[5]),
        .O(\axi_rdata[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000B080)) 
    \axi_rdata[10]_i_6 
       (.I0(SOL5_time_full[10]),
        .I1(axi_araddr[4]),
        .I2(axi_araddr[2]),
        .I3(SOL4_time_full[10]),
        .I4(axi_araddr[3]),
        .O(\axi_rdata[10]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0000B080)) 
    \axi_rdata[10]_i_7 
       (.I0(SOL7_time_full[10]),
        .I1(axi_araddr[4]),
        .I2(axi_araddr[2]),
        .I3(SOL6_time_full[10]),
        .I4(axi_araddr[3]),
        .O(\axi_rdata[10]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h0000B080)) 
    \axi_rdata[10]_i_8 
       (.I0(SOL1_time_full[10]),
        .I1(axi_araddr[4]),
        .I2(axi_araddr[2]),
        .I3(SOL0_time_full[10]),
        .I4(axi_araddr[3]),
        .O(\axi_rdata[10]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h0000B080)) 
    \axi_rdata[10]_i_9 
       (.I0(SOL3_time_full[10]),
        .I1(axi_araddr[4]),
        .I2(axi_araddr[2]),
        .I3(SOL2_time_full[10]),
        .I4(axi_araddr[3]),
        .O(\axi_rdata[10]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \axi_rdata[1]_i_1 
       (.I0(axi_araddr[5]),
        .I1(\axi_rdata_reg[1]_i_2_n_0 ),
        .I2(axi_araddr[7]),
        .I3(\axi_rdata_reg[1]_i_3_n_0 ),
        .I4(axi_araddr[6]),
        .I5(\axi_rdata_reg[1]_i_4_n_0 ),
        .O(reg_data_out[1]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[1]_i_11 
       (.I0(slv_reg19[1]),
        .I1(axi_araddr[3]),
        .I2(SOL4_time_full[1]),
        .I3(axi_araddr[2]),
        .I4(SOL4_pwm_val[1]),
        .O(\axi_rdata[1]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[1]_i_12 
       (.I0(slv_reg23[1]),
        .I1(axi_araddr[3]),
        .I2(SOL5_time_full[1]),
        .I3(axi_araddr[2]),
        .I4(SOL5_pwm_val[1]),
        .O(\axi_rdata[1]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[1]_i_13 
       (.I0(slv_reg27[1]),
        .I1(axi_araddr[3]),
        .I2(SOL6_time_full[1]),
        .I3(axi_araddr[2]),
        .I4(SOL6_pwm_val[1]),
        .O(\axi_rdata[1]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[1]_i_14 
       (.I0(slv_reg31[1]),
        .I1(axi_araddr[3]),
        .I2(SOL7_time_full[1]),
        .I3(axi_araddr[2]),
        .I4(SOL7_pwm_val[1]),
        .O(\axi_rdata[1]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[1]_i_15 
       (.I0(slv_reg3[1]),
        .I1(axi_araddr[3]),
        .I2(SOL0_time_full[1]),
        .I3(axi_araddr[2]),
        .I4(SOL0_pwm_val[1]),
        .O(\axi_rdata[1]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[1]_i_16 
       (.I0(slv_reg7[1]),
        .I1(axi_araddr[3]),
        .I2(SOL1_time_full[1]),
        .I3(axi_araddr[2]),
        .I4(SOL1_pwm_val[1]),
        .O(\axi_rdata[1]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[1]_i_17 
       (.I0(slv_reg11[1]),
        .I1(axi_araddr[3]),
        .I2(SOL2_time_full[1]),
        .I3(axi_araddr[2]),
        .I4(SOL2_pwm_val[1]),
        .O(\axi_rdata[1]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[1]_i_18 
       (.I0(slv_reg15[1]),
        .I1(axi_araddr[3]),
        .I2(SOL3_time_full[1]),
        .I3(axi_araddr[2]),
        .I4(SOL3_pwm_val[1]),
        .O(\axi_rdata[1]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[1]_i_5 
       (.I0(slv_reg35[1]),
        .I1(axi_araddr[3]),
        .I2(SOL8_time_full[1]),
        .I3(axi_araddr[2]),
        .I4(SOL8_pwm_val[1]),
        .O(\axi_rdata[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[1]_i_6 
       (.I0(slv_reg39[1]),
        .I1(axi_araddr[3]),
        .I2(SOL9_time_full[1]),
        .I3(axi_araddr[2]),
        .I4(SOL9_pwm_val[1]),
        .O(\axi_rdata[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \axi_rdata[2]_i_1 
       (.I0(axi_araddr[5]),
        .I1(\axi_rdata[2]_i_2_n_0 ),
        .I2(axi_araddr[7]),
        .I3(\axi_rdata_reg[2]_i_3_n_0 ),
        .I4(axi_araddr[6]),
        .I5(\axi_rdata_reg[2]_i_4_n_0 ),
        .O(reg_data_out[2]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[2]_i_10 
       (.I0(SOL4_pwm_val[2]),
        .I1(axi_araddr[2]),
        .I2(SOL4_time_full[2]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[2]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[2]_i_11 
       (.I0(SOL5_pwm_val[2]),
        .I1(axi_araddr[2]),
        .I2(SOL5_time_full[2]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[2]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[2]_i_12 
       (.I0(SOL6_pwm_val[2]),
        .I1(axi_araddr[2]),
        .I2(SOL6_time_full[2]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[2]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[2]_i_13 
       (.I0(SOL7_pwm_val[2]),
        .I1(axi_araddr[2]),
        .I2(SOL7_time_full[2]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[2]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[2]_i_14 
       (.I0(SOL0_pwm_val[2]),
        .I1(axi_araddr[2]),
        .I2(SOL0_time_full[2]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[2]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[2]_i_15 
       (.I0(SOL1_pwm_val[2]),
        .I1(axi_araddr[2]),
        .I2(SOL1_time_full[2]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[2]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[2]_i_16 
       (.I0(SOL2_pwm_val[2]),
        .I1(axi_araddr[2]),
        .I2(SOL2_time_full[2]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[2]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[2]_i_17 
       (.I0(SOL3_pwm_val[2]),
        .I1(axi_araddr[2]),
        .I2(SOL3_time_full[2]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[2]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \axi_rdata[2]_i_2 
       (.I0(SOL9_pwm_val[2]),
        .I1(axi_araddr[2]),
        .I2(SOL9_time_full[2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[4]),
        .I5(\axi_rdata[2]_i_5_n_0 ),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[2]_i_5 
       (.I0(SOL8_pwm_val[2]),
        .I1(axi_araddr[2]),
        .I2(SOL8_time_full[2]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \axi_rdata[3]_i_1 
       (.I0(axi_araddr[5]),
        .I1(\axi_rdata[3]_i_2_n_0 ),
        .I2(axi_araddr[7]),
        .I3(\axi_rdata_reg[3]_i_3_n_0 ),
        .I4(axi_araddr[6]),
        .I5(\axi_rdata_reg[3]_i_4_n_0 ),
        .O(reg_data_out[3]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[3]_i_10 
       (.I0(SOL4_pwm_val[3]),
        .I1(axi_araddr[2]),
        .I2(SOL4_time_full[3]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[3]_i_11 
       (.I0(SOL5_pwm_val[3]),
        .I1(axi_araddr[2]),
        .I2(SOL5_time_full[3]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[3]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[3]_i_12 
       (.I0(SOL6_pwm_val[3]),
        .I1(axi_araddr[2]),
        .I2(SOL6_time_full[3]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[3]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[3]_i_13 
       (.I0(SOL7_pwm_val[3]),
        .I1(axi_araddr[2]),
        .I2(SOL7_time_full[3]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[3]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[3]_i_14 
       (.I0(SOL0_pwm_val[3]),
        .I1(axi_araddr[2]),
        .I2(SOL0_time_full[3]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[3]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[3]_i_15 
       (.I0(SOL1_pwm_val[3]),
        .I1(axi_araddr[2]),
        .I2(SOL1_time_full[3]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[3]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[3]_i_16 
       (.I0(SOL2_pwm_val[3]),
        .I1(axi_araddr[2]),
        .I2(SOL2_time_full[3]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[3]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[3]_i_17 
       (.I0(SOL3_pwm_val[3]),
        .I1(axi_araddr[2]),
        .I2(SOL3_time_full[3]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \axi_rdata[3]_i_2 
       (.I0(SOL9_pwm_val[3]),
        .I1(axi_araddr[2]),
        .I2(SOL9_time_full[3]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[4]),
        .I5(\axi_rdata[3]_i_5_n_0 ),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[3]_i_5 
       (.I0(SOL8_pwm_val[3]),
        .I1(axi_araddr[2]),
        .I2(SOL8_time_full[3]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \axi_rdata[4]_i_1 
       (.I0(axi_araddr[5]),
        .I1(\axi_rdata[4]_i_2_n_0 ),
        .I2(axi_araddr[7]),
        .I3(\axi_rdata_reg[4]_i_3_n_0 ),
        .I4(axi_araddr[6]),
        .I5(\axi_rdata_reg[4]_i_4_n_0 ),
        .O(reg_data_out[4]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[4]_i_10 
       (.I0(SOL4_pwm_val[4]),
        .I1(axi_araddr[2]),
        .I2(SOL4_time_full[4]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[4]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[4]_i_11 
       (.I0(SOL5_pwm_val[4]),
        .I1(axi_araddr[2]),
        .I2(SOL5_time_full[4]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[4]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[4]_i_12 
       (.I0(SOL6_pwm_val[4]),
        .I1(axi_araddr[2]),
        .I2(SOL6_time_full[4]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[4]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[4]_i_13 
       (.I0(SOL7_pwm_val[4]),
        .I1(axi_araddr[2]),
        .I2(SOL7_time_full[4]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[4]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[4]_i_14 
       (.I0(SOL0_pwm_val[4]),
        .I1(axi_araddr[2]),
        .I2(SOL0_time_full[4]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[4]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[4]_i_15 
       (.I0(SOL1_pwm_val[4]),
        .I1(axi_araddr[2]),
        .I2(SOL1_time_full[4]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[4]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[4]_i_16 
       (.I0(SOL2_pwm_val[4]),
        .I1(axi_araddr[2]),
        .I2(SOL2_time_full[4]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[4]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[4]_i_17 
       (.I0(SOL3_pwm_val[4]),
        .I1(axi_araddr[2]),
        .I2(SOL3_time_full[4]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[4]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \axi_rdata[4]_i_2 
       (.I0(SOL9_pwm_val[4]),
        .I1(axi_araddr[2]),
        .I2(SOL9_time_full[4]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[4]),
        .I5(\axi_rdata[4]_i_5_n_0 ),
        .O(\axi_rdata[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[4]_i_5 
       (.I0(SOL8_pwm_val[4]),
        .I1(axi_araddr[2]),
        .I2(SOL8_time_full[4]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \axi_rdata[5]_i_1 
       (.I0(axi_araddr[5]),
        .I1(\axi_rdata[5]_i_2_n_0 ),
        .I2(axi_araddr[7]),
        .I3(\axi_rdata_reg[5]_i_3_n_0 ),
        .I4(axi_araddr[6]),
        .I5(\axi_rdata_reg[5]_i_4_n_0 ),
        .O(reg_data_out[5]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[5]_i_10 
       (.I0(SOL4_pwm_val[5]),
        .I1(axi_araddr[2]),
        .I2(SOL4_time_full[5]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[5]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[5]_i_11 
       (.I0(SOL5_pwm_val[5]),
        .I1(axi_araddr[2]),
        .I2(SOL5_time_full[5]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[5]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[5]_i_12 
       (.I0(SOL6_pwm_val[5]),
        .I1(axi_araddr[2]),
        .I2(SOL6_time_full[5]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[5]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[5]_i_13 
       (.I0(SOL7_pwm_val[5]),
        .I1(axi_araddr[2]),
        .I2(SOL7_time_full[5]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[5]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[5]_i_14 
       (.I0(SOL0_pwm_val[5]),
        .I1(axi_araddr[2]),
        .I2(SOL0_time_full[5]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[5]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[5]_i_15 
       (.I0(SOL1_pwm_val[5]),
        .I1(axi_araddr[2]),
        .I2(SOL1_time_full[5]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[5]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[5]_i_16 
       (.I0(SOL2_pwm_val[5]),
        .I1(axi_araddr[2]),
        .I2(SOL2_time_full[5]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[5]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[5]_i_17 
       (.I0(SOL3_pwm_val[5]),
        .I1(axi_araddr[2]),
        .I2(SOL3_time_full[5]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[5]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \axi_rdata[5]_i_2 
       (.I0(SOL9_pwm_val[5]),
        .I1(axi_araddr[2]),
        .I2(SOL9_time_full[5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[4]),
        .I5(\axi_rdata[5]_i_5_n_0 ),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[5]_i_5 
       (.I0(SOL8_pwm_val[5]),
        .I1(axi_araddr[2]),
        .I2(SOL8_time_full[5]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \axi_rdata[6]_i_1 
       (.I0(axi_araddr[5]),
        .I1(\axi_rdata[6]_i_2_n_0 ),
        .I2(axi_araddr[7]),
        .I3(\axi_rdata_reg[6]_i_3_n_0 ),
        .I4(axi_araddr[6]),
        .I5(\axi_rdata_reg[6]_i_4_n_0 ),
        .O(reg_data_out[6]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[6]_i_10 
       (.I0(SOL4_pwm_val[6]),
        .I1(axi_araddr[2]),
        .I2(SOL4_time_full[6]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[6]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[6]_i_11 
       (.I0(SOL5_pwm_val[6]),
        .I1(axi_araddr[2]),
        .I2(SOL5_time_full[6]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[6]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[6]_i_12 
       (.I0(SOL6_pwm_val[6]),
        .I1(axi_araddr[2]),
        .I2(SOL6_time_full[6]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[6]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[6]_i_13 
       (.I0(SOL7_pwm_val[6]),
        .I1(axi_araddr[2]),
        .I2(SOL7_time_full[6]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[6]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[6]_i_14 
       (.I0(SOL0_pwm_val[6]),
        .I1(axi_araddr[2]),
        .I2(SOL0_time_full[6]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[6]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[6]_i_15 
       (.I0(SOL1_pwm_val[6]),
        .I1(axi_araddr[2]),
        .I2(SOL1_time_full[6]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[6]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[6]_i_16 
       (.I0(SOL2_pwm_val[6]),
        .I1(axi_araddr[2]),
        .I2(SOL2_time_full[6]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[6]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[6]_i_17 
       (.I0(SOL3_pwm_val[6]),
        .I1(axi_araddr[2]),
        .I2(SOL3_time_full[6]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[6]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \axi_rdata[6]_i_2 
       (.I0(SOL9_pwm_val[6]),
        .I1(axi_araddr[2]),
        .I2(SOL9_time_full[6]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[4]),
        .I5(\axi_rdata[6]_i_5_n_0 ),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[6]_i_5 
       (.I0(SOL8_pwm_val[6]),
        .I1(axi_araddr[2]),
        .I2(SOL8_time_full[6]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \axi_rdata[7]_i_1 
       (.I0(axi_araddr[5]),
        .I1(\axi_rdata[7]_i_2_n_0 ),
        .I2(axi_araddr[7]),
        .I3(\axi_rdata_reg[7]_i_3_n_0 ),
        .I4(axi_araddr[6]),
        .I5(\axi_rdata_reg[7]_i_4_n_0 ),
        .O(reg_data_out[7]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[7]_i_10 
       (.I0(SOL4_pwm_val[7]),
        .I1(axi_araddr[2]),
        .I2(SOL4_time_full[7]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[7]_i_11 
       (.I0(SOL5_pwm_val[7]),
        .I1(axi_araddr[2]),
        .I2(SOL5_time_full[7]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[7]_i_12 
       (.I0(SOL6_pwm_val[7]),
        .I1(axi_araddr[2]),
        .I2(SOL6_time_full[7]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[7]_i_13 
       (.I0(SOL7_pwm_val[7]),
        .I1(axi_araddr[2]),
        .I2(SOL7_time_full[7]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[7]_i_14 
       (.I0(SOL0_pwm_val[7]),
        .I1(axi_araddr[2]),
        .I2(SOL0_time_full[7]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[7]_i_15 
       (.I0(SOL1_pwm_val[7]),
        .I1(axi_araddr[2]),
        .I2(SOL1_time_full[7]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[7]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[7]_i_16 
       (.I0(SOL2_pwm_val[7]),
        .I1(axi_araddr[2]),
        .I2(SOL2_time_full[7]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[7]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[7]_i_17 
       (.I0(SOL3_pwm_val[7]),
        .I1(axi_araddr[2]),
        .I2(SOL3_time_full[7]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \axi_rdata[7]_i_2 
       (.I0(SOL9_pwm_val[7]),
        .I1(axi_araddr[2]),
        .I2(SOL9_time_full[7]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[4]),
        .I5(\axi_rdata[7]_i_5_n_0 ),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[7]_i_5 
       (.I0(SOL8_pwm_val[7]),
        .I1(axi_araddr[2]),
        .I2(SOL8_time_full[7]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[8]_i_1 
       (.I0(\axi_rdata[8]_i_2_n_0 ),
        .I1(axi_araddr[7]),
        .I2(\axi_rdata_reg[8]_i_3_n_0 ),
        .I3(axi_araddr[6]),
        .I4(\axi_rdata_reg[8]_i_4_n_0 ),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'h0000000050400040)) 
    \axi_rdata[8]_i_2 
       (.I0(axi_araddr[3]),
        .I1(SOL8_time_full[8]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[4]),
        .I4(SOL9_time_full[8]),
        .I5(axi_araddr[5]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000B080)) 
    \axi_rdata[8]_i_5 
       (.I0(SOL5_time_full[8]),
        .I1(axi_araddr[4]),
        .I2(axi_araddr[2]),
        .I3(SOL4_time_full[8]),
        .I4(axi_araddr[3]),
        .O(\axi_rdata[8]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0000B080)) 
    \axi_rdata[8]_i_6 
       (.I0(SOL7_time_full[8]),
        .I1(axi_araddr[4]),
        .I2(axi_araddr[2]),
        .I3(SOL6_time_full[8]),
        .I4(axi_araddr[3]),
        .O(\axi_rdata[8]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0000B080)) 
    \axi_rdata[8]_i_7 
       (.I0(SOL1_time_full[8]),
        .I1(axi_araddr[4]),
        .I2(axi_araddr[2]),
        .I3(SOL0_time_full[8]),
        .I4(axi_araddr[3]),
        .O(\axi_rdata[8]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h0000B080)) 
    \axi_rdata[8]_i_8 
       (.I0(SOL3_time_full[8]),
        .I1(axi_araddr[4]),
        .I2(axi_araddr[2]),
        .I3(SOL2_time_full[8]),
        .I4(axi_araddr[3]),
        .O(\axi_rdata[8]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[9]_i_1 
       (.I0(\axi_rdata[9]_i_2_n_0 ),
        .I1(axi_araddr[7]),
        .I2(\axi_rdata_reg[9]_i_3_n_0 ),
        .I3(axi_araddr[6]),
        .I4(\axi_rdata_reg[9]_i_4_n_0 ),
        .O(reg_data_out[9]));
  LUT6 #(
    .INIT(64'h0000000050400040)) 
    \axi_rdata[9]_i_2 
       (.I0(axi_araddr[3]),
        .I1(SOL8_time_full[9]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[4]),
        .I4(SOL9_time_full[9]),
        .I5(axi_araddr[5]),
        .O(\axi_rdata[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000B080)) 
    \axi_rdata[9]_i_5 
       (.I0(SOL5_time_full[9]),
        .I1(axi_araddr[4]),
        .I2(axi_araddr[2]),
        .I3(SOL4_time_full[9]),
        .I4(axi_araddr[3]),
        .O(\axi_rdata[9]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0000B080)) 
    \axi_rdata[9]_i_6 
       (.I0(SOL7_time_full[9]),
        .I1(axi_araddr[4]),
        .I2(axi_araddr[2]),
        .I3(SOL6_time_full[9]),
        .I4(axi_araddr[3]),
        .O(\axi_rdata[9]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0000B080)) 
    \axi_rdata[9]_i_7 
       (.I0(SOL1_time_full[9]),
        .I1(axi_araddr[4]),
        .I2(axi_araddr[2]),
        .I3(SOL0_time_full[9]),
        .I4(axi_araddr[3]),
        .O(\axi_rdata[9]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h0000B080)) 
    \axi_rdata[9]_i_8 
       (.I0(SOL3_time_full[9]),
        .I1(axi_araddr[4]),
        .I2(axi_araddr[2]),
        .I3(SOL2_time_full[9]),
        .I4(axi_araddr[3]),
        .O(\axi_rdata[9]_i_8_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[0]_i_10 
       (.I0(\axi_rdata[0]_i_17_n_0 ),
        .I1(\axi_rdata[0]_i_18_n_0 ),
        .O(\axi_rdata_reg[0]_i_10_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[0]_i_2 
       (.I0(\axi_rdata[0]_i_5_n_0 ),
        .I1(\axi_rdata[0]_i_6_n_0 ),
        .O(\axi_rdata_reg[0]_i_2_n_0 ),
        .S(axi_araddr[4]));
  MUXF8 \axi_rdata_reg[0]_i_3 
       (.I0(\axi_rdata_reg[0]_i_7_n_0 ),
        .I1(\axi_rdata_reg[0]_i_8_n_0 ),
        .O(\axi_rdata_reg[0]_i_3_n_0 ),
        .S(axi_araddr[5]));
  MUXF8 \axi_rdata_reg[0]_i_4 
       (.I0(\axi_rdata_reg[0]_i_9_n_0 ),
        .I1(\axi_rdata_reg[0]_i_10_n_0 ),
        .O(\axi_rdata_reg[0]_i_4_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[0]_i_7 
       (.I0(\axi_rdata[0]_i_11_n_0 ),
        .I1(\axi_rdata[0]_i_12_n_0 ),
        .O(\axi_rdata_reg[0]_i_7_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[0]_i_8 
       (.I0(\axi_rdata[0]_i_13_n_0 ),
        .I1(\axi_rdata[0]_i_14_n_0 ),
        .O(\axi_rdata_reg[0]_i_8_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[0]_i_9 
       (.I0(\axi_rdata[0]_i_15_n_0 ),
        .I1(\axi_rdata[0]_i_16_n_0 ),
        .O(\axi_rdata_reg[0]_i_9_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[10]_i_4 
       (.I0(\axi_rdata[10]_i_6_n_0 ),
        .I1(\axi_rdata[10]_i_7_n_0 ),
        .O(\axi_rdata_reg[10]_i_4_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[10]_i_5 
       (.I0(\axi_rdata[10]_i_8_n_0 ),
        .I1(\axi_rdata[10]_i_9_n_0 ),
        .O(\axi_rdata_reg[10]_i_5_n_0 ),
        .S(axi_araddr[5]));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[1]_i_10 
       (.I0(\axi_rdata[1]_i_17_n_0 ),
        .I1(\axi_rdata[1]_i_18_n_0 ),
        .O(\axi_rdata_reg[1]_i_10_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[1]_i_2 
       (.I0(\axi_rdata[1]_i_5_n_0 ),
        .I1(\axi_rdata[1]_i_6_n_0 ),
        .O(\axi_rdata_reg[1]_i_2_n_0 ),
        .S(axi_araddr[4]));
  MUXF8 \axi_rdata_reg[1]_i_3 
       (.I0(\axi_rdata_reg[1]_i_7_n_0 ),
        .I1(\axi_rdata_reg[1]_i_8_n_0 ),
        .O(\axi_rdata_reg[1]_i_3_n_0 ),
        .S(axi_araddr[5]));
  MUXF8 \axi_rdata_reg[1]_i_4 
       (.I0(\axi_rdata_reg[1]_i_9_n_0 ),
        .I1(\axi_rdata_reg[1]_i_10_n_0 ),
        .O(\axi_rdata_reg[1]_i_4_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[1]_i_7 
       (.I0(\axi_rdata[1]_i_11_n_0 ),
        .I1(\axi_rdata[1]_i_12_n_0 ),
        .O(\axi_rdata_reg[1]_i_7_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[1]_i_8 
       (.I0(\axi_rdata[1]_i_13_n_0 ),
        .I1(\axi_rdata[1]_i_14_n_0 ),
        .O(\axi_rdata_reg[1]_i_8_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[1]_i_9 
       (.I0(\axi_rdata[1]_i_15_n_0 ),
        .I1(\axi_rdata[1]_i_16_n_0 ),
        .O(\axi_rdata_reg[1]_i_9_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(p_0_in));
  MUXF8 \axi_rdata_reg[2]_i_3 
       (.I0(\axi_rdata_reg[2]_i_6_n_0 ),
        .I1(\axi_rdata_reg[2]_i_7_n_0 ),
        .O(\axi_rdata_reg[2]_i_3_n_0 ),
        .S(axi_araddr[5]));
  MUXF8 \axi_rdata_reg[2]_i_4 
       (.I0(\axi_rdata_reg[2]_i_8_n_0 ),
        .I1(\axi_rdata_reg[2]_i_9_n_0 ),
        .O(\axi_rdata_reg[2]_i_4_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[2]_i_6 
       (.I0(\axi_rdata[2]_i_10_n_0 ),
        .I1(\axi_rdata[2]_i_11_n_0 ),
        .O(\axi_rdata_reg[2]_i_6_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[2]_i_7 
       (.I0(\axi_rdata[2]_i_12_n_0 ),
        .I1(\axi_rdata[2]_i_13_n_0 ),
        .O(\axi_rdata_reg[2]_i_7_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[2]_i_8 
       (.I0(\axi_rdata[2]_i_14_n_0 ),
        .I1(\axi_rdata[2]_i_15_n_0 ),
        .O(\axi_rdata_reg[2]_i_8_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[2]_i_9 
       (.I0(\axi_rdata[2]_i_16_n_0 ),
        .I1(\axi_rdata[2]_i_17_n_0 ),
        .O(\axi_rdata_reg[2]_i_9_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(p_0_in));
  MUXF8 \axi_rdata_reg[3]_i_3 
       (.I0(\axi_rdata_reg[3]_i_6_n_0 ),
        .I1(\axi_rdata_reg[3]_i_7_n_0 ),
        .O(\axi_rdata_reg[3]_i_3_n_0 ),
        .S(axi_araddr[5]));
  MUXF8 \axi_rdata_reg[3]_i_4 
       (.I0(\axi_rdata_reg[3]_i_8_n_0 ),
        .I1(\axi_rdata_reg[3]_i_9_n_0 ),
        .O(\axi_rdata_reg[3]_i_4_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[3]_i_6 
       (.I0(\axi_rdata[3]_i_10_n_0 ),
        .I1(\axi_rdata[3]_i_11_n_0 ),
        .O(\axi_rdata_reg[3]_i_6_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[3]_i_7 
       (.I0(\axi_rdata[3]_i_12_n_0 ),
        .I1(\axi_rdata[3]_i_13_n_0 ),
        .O(\axi_rdata_reg[3]_i_7_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[3]_i_8 
       (.I0(\axi_rdata[3]_i_14_n_0 ),
        .I1(\axi_rdata[3]_i_15_n_0 ),
        .O(\axi_rdata_reg[3]_i_8_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[3]_i_9 
       (.I0(\axi_rdata[3]_i_16_n_0 ),
        .I1(\axi_rdata[3]_i_17_n_0 ),
        .O(\axi_rdata_reg[3]_i_9_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(p_0_in));
  MUXF8 \axi_rdata_reg[4]_i_3 
       (.I0(\axi_rdata_reg[4]_i_6_n_0 ),
        .I1(\axi_rdata_reg[4]_i_7_n_0 ),
        .O(\axi_rdata_reg[4]_i_3_n_0 ),
        .S(axi_araddr[5]));
  MUXF8 \axi_rdata_reg[4]_i_4 
       (.I0(\axi_rdata_reg[4]_i_8_n_0 ),
        .I1(\axi_rdata_reg[4]_i_9_n_0 ),
        .O(\axi_rdata_reg[4]_i_4_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[4]_i_6 
       (.I0(\axi_rdata[4]_i_10_n_0 ),
        .I1(\axi_rdata[4]_i_11_n_0 ),
        .O(\axi_rdata_reg[4]_i_6_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[4]_i_7 
       (.I0(\axi_rdata[4]_i_12_n_0 ),
        .I1(\axi_rdata[4]_i_13_n_0 ),
        .O(\axi_rdata_reg[4]_i_7_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[4]_i_8 
       (.I0(\axi_rdata[4]_i_14_n_0 ),
        .I1(\axi_rdata[4]_i_15_n_0 ),
        .O(\axi_rdata_reg[4]_i_8_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[4]_i_9 
       (.I0(\axi_rdata[4]_i_16_n_0 ),
        .I1(\axi_rdata[4]_i_17_n_0 ),
        .O(\axi_rdata_reg[4]_i_9_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(p_0_in));
  MUXF8 \axi_rdata_reg[5]_i_3 
       (.I0(\axi_rdata_reg[5]_i_6_n_0 ),
        .I1(\axi_rdata_reg[5]_i_7_n_0 ),
        .O(\axi_rdata_reg[5]_i_3_n_0 ),
        .S(axi_araddr[5]));
  MUXF8 \axi_rdata_reg[5]_i_4 
       (.I0(\axi_rdata_reg[5]_i_8_n_0 ),
        .I1(\axi_rdata_reg[5]_i_9_n_0 ),
        .O(\axi_rdata_reg[5]_i_4_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[5]_i_6 
       (.I0(\axi_rdata[5]_i_10_n_0 ),
        .I1(\axi_rdata[5]_i_11_n_0 ),
        .O(\axi_rdata_reg[5]_i_6_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[5]_i_7 
       (.I0(\axi_rdata[5]_i_12_n_0 ),
        .I1(\axi_rdata[5]_i_13_n_0 ),
        .O(\axi_rdata_reg[5]_i_7_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[5]_i_8 
       (.I0(\axi_rdata[5]_i_14_n_0 ),
        .I1(\axi_rdata[5]_i_15_n_0 ),
        .O(\axi_rdata_reg[5]_i_8_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[5]_i_9 
       (.I0(\axi_rdata[5]_i_16_n_0 ),
        .I1(\axi_rdata[5]_i_17_n_0 ),
        .O(\axi_rdata_reg[5]_i_9_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(p_0_in));
  MUXF8 \axi_rdata_reg[6]_i_3 
       (.I0(\axi_rdata_reg[6]_i_6_n_0 ),
        .I1(\axi_rdata_reg[6]_i_7_n_0 ),
        .O(\axi_rdata_reg[6]_i_3_n_0 ),
        .S(axi_araddr[5]));
  MUXF8 \axi_rdata_reg[6]_i_4 
       (.I0(\axi_rdata_reg[6]_i_8_n_0 ),
        .I1(\axi_rdata_reg[6]_i_9_n_0 ),
        .O(\axi_rdata_reg[6]_i_4_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[6]_i_6 
       (.I0(\axi_rdata[6]_i_10_n_0 ),
        .I1(\axi_rdata[6]_i_11_n_0 ),
        .O(\axi_rdata_reg[6]_i_6_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[6]_i_7 
       (.I0(\axi_rdata[6]_i_12_n_0 ),
        .I1(\axi_rdata[6]_i_13_n_0 ),
        .O(\axi_rdata_reg[6]_i_7_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[6]_i_8 
       (.I0(\axi_rdata[6]_i_14_n_0 ),
        .I1(\axi_rdata[6]_i_15_n_0 ),
        .O(\axi_rdata_reg[6]_i_8_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[6]_i_9 
       (.I0(\axi_rdata[6]_i_16_n_0 ),
        .I1(\axi_rdata[6]_i_17_n_0 ),
        .O(\axi_rdata_reg[6]_i_9_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(p_0_in));
  MUXF8 \axi_rdata_reg[7]_i_3 
       (.I0(\axi_rdata_reg[7]_i_6_n_0 ),
        .I1(\axi_rdata_reg[7]_i_7_n_0 ),
        .O(\axi_rdata_reg[7]_i_3_n_0 ),
        .S(axi_araddr[5]));
  MUXF8 \axi_rdata_reg[7]_i_4 
       (.I0(\axi_rdata_reg[7]_i_8_n_0 ),
        .I1(\axi_rdata_reg[7]_i_9_n_0 ),
        .O(\axi_rdata_reg[7]_i_4_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[7]_i_6 
       (.I0(\axi_rdata[7]_i_10_n_0 ),
        .I1(\axi_rdata[7]_i_11_n_0 ),
        .O(\axi_rdata_reg[7]_i_6_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[7]_i_7 
       (.I0(\axi_rdata[7]_i_12_n_0 ),
        .I1(\axi_rdata[7]_i_13_n_0 ),
        .O(\axi_rdata_reg[7]_i_7_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[7]_i_8 
       (.I0(\axi_rdata[7]_i_14_n_0 ),
        .I1(\axi_rdata[7]_i_15_n_0 ),
        .O(\axi_rdata_reg[7]_i_8_n_0 ),
        .S(axi_araddr[4]));
  MUXF7 \axi_rdata_reg[7]_i_9 
       (.I0(\axi_rdata[7]_i_16_n_0 ),
        .I1(\axi_rdata[7]_i_17_n_0 ),
        .O(\axi_rdata_reg[7]_i_9_n_0 ),
        .S(axi_araddr[4]));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[8]_i_3 
       (.I0(\axi_rdata[8]_i_5_n_0 ),
        .I1(\axi_rdata[8]_i_6_n_0 ),
        .O(\axi_rdata_reg[8]_i_3_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[8]_i_4 
       (.I0(\axi_rdata[8]_i_7_n_0 ),
        .I1(\axi_rdata[8]_i_8_n_0 ),
        .O(\axi_rdata_reg[8]_i_4_n_0 ),
        .S(axi_araddr[5]));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[9]_i_3 
       (.I0(\axi_rdata[9]_i_5_n_0 ),
        .I1(\axi_rdata[9]_i_6_n_0 ),
        .O(\axi_rdata_reg[9]_i_3_n_0 ),
        .S(axi_araddr[5]));
  MUXF7 \axi_rdata_reg[9]_i_4 
       (.I0(\axi_rdata[9]_i_7_n_0 ),
        .I1(\axi_rdata[9]_i_8_n_0 ),
        .O(\axi_rdata_reg[9]_i_4_n_0 ),
        .S(axi_araddr[5]));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    \slv_reg0[7]_i_1 
       (.I0(s00_axi_aresetn),
        .O(p_0_in));
  LUT5 #(
    .INIT(32'h00000010)) 
    \slv_reg0[7]_i_2 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(\slv_reg0[7]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .O(slv_reg0));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \slv_reg0[7]_i_3 
       (.I0(sel0[1]),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(S_AXI_WREADY),
        .I5(sel0[0]),
        .O(\slv_reg0[7]_i_3_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg0),
        .D(s00_axi_wdata[0]),
        .Q(SOL0_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg0),
        .D(s00_axi_wdata[1]),
        .Q(SOL0_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg0),
        .D(s00_axi_wdata[2]),
        .Q(SOL0_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg0),
        .D(s00_axi_wdata[3]),
        .Q(SOL0_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg0),
        .D(s00_axi_wdata[4]),
        .Q(SOL0_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg0),
        .D(s00_axi_wdata[5]),
        .Q(SOL0_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg0),
        .D(s00_axi_wdata[6]),
        .Q(SOL0_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg0),
        .D(s00_axi_wdata[7]),
        .Q(SOL0_pwm_val[7]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \slv_reg10[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg10[0]_i_2_n_0 ),
        .I2(sel0[2]),
        .I3(SOL2_run),
        .O(\slv_reg10[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \slv_reg10[0]_i_2 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(slv_reg_wren),
        .I3(sel0[1]),
        .I4(sel0[5]),
        .I5(sel0[4]),
        .O(\slv_reg10[0]_i_2_n_0 ));
  FDRE \slv_reg10_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg10[0]_i_1_n_0 ),
        .Q(SOL2_run),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \slv_reg11[0]_i_1 
       (.I0(SOL2_status[0]),
        .I1(sel0[2]),
        .I2(\slv_reg11[1]_i_2_n_0 ),
        .I3(SOL2_vld_in),
        .I4(slv_reg11[0]),
        .O(\slv_reg11[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \slv_reg11[1]_i_1 
       (.I0(SOL2_status[1]),
        .I1(sel0[2]),
        .I2(\slv_reg11[1]_i_2_n_0 ),
        .I3(SOL2_vld_in),
        .I4(slv_reg11[1]),
        .O(\slv_reg11[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \slv_reg11[1]_i_2 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[5]),
        .I4(sel0[4]),
        .O(\slv_reg11[1]_i_2_n_0 ));
  FDRE \slv_reg11_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg11[0]_i_1_n_0 ),
        .Q(slv_reg11[0]),
        .R(p_0_in));
  FDRE \slv_reg11_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg11[1]_i_1_n_0 ),
        .Q(slv_reg11[1]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h10000000)) 
    \slv_reg12[7]_i_1 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(\slv_reg0[7]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .O(slv_reg12));
  FDRE \slv_reg12_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg12),
        .D(s00_axi_wdata[0]),
        .Q(SOL3_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg12_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg12),
        .D(s00_axi_wdata[1]),
        .Q(SOL3_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg12_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg12),
        .D(s00_axi_wdata[2]),
        .Q(SOL3_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg12_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg12),
        .D(s00_axi_wdata[3]),
        .Q(SOL3_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg12_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg12),
        .D(s00_axi_wdata[4]),
        .Q(SOL3_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg12_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg12),
        .D(s00_axi_wdata[5]),
        .Q(SOL3_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg12_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg12),
        .D(s00_axi_wdata[6]),
        .Q(SOL3_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg12_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg12),
        .D(s00_axi_wdata[7]),
        .Q(SOL3_pwm_val[7]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h10000000)) 
    \slv_reg13[10]_i_1 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(\slv_reg1[10]_i_2_n_0 ),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .O(slv_reg13));
  FDRE \slv_reg13_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg13),
        .D(s00_axi_wdata[0]),
        .Q(SOL3_time_full[0]),
        .R(p_0_in));
  FDRE \slv_reg13_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg13),
        .D(s00_axi_wdata[10]),
        .Q(SOL3_time_full[10]),
        .R(p_0_in));
  FDRE \slv_reg13_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg13),
        .D(s00_axi_wdata[1]),
        .Q(SOL3_time_full[1]),
        .R(p_0_in));
  FDRE \slv_reg13_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg13),
        .D(s00_axi_wdata[2]),
        .Q(SOL3_time_full[2]),
        .R(p_0_in));
  FDRE \slv_reg13_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg13),
        .D(s00_axi_wdata[3]),
        .Q(SOL3_time_full[3]),
        .R(p_0_in));
  FDRE \slv_reg13_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg13),
        .D(s00_axi_wdata[4]),
        .Q(SOL3_time_full[4]),
        .R(p_0_in));
  FDRE \slv_reg13_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg13),
        .D(s00_axi_wdata[5]),
        .Q(SOL3_time_full[5]),
        .R(p_0_in));
  FDRE \slv_reg13_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg13),
        .D(s00_axi_wdata[6]),
        .Q(SOL3_time_full[6]),
        .R(p_0_in));
  FDRE \slv_reg13_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg13),
        .D(s00_axi_wdata[7]),
        .Q(SOL3_time_full[7]),
        .R(p_0_in));
  FDRE \slv_reg13_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg13),
        .D(s00_axi_wdata[8]),
        .Q(SOL3_time_full[8]),
        .R(p_0_in));
  FDRE \slv_reg13_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg13),
        .D(s00_axi_wdata[9]),
        .Q(SOL3_time_full[9]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg14[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg10[0]_i_2_n_0 ),
        .I2(sel0[2]),
        .I3(SOL3_run),
        .O(\slv_reg14[0]_i_1_n_0 ));
  FDRE \slv_reg14_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg14[0]_i_1_n_0 ),
        .Q(SOL3_run),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg15[0]_i_1 
       (.I0(SOL3_status[0]),
        .I1(sel0[2]),
        .I2(\slv_reg11[1]_i_2_n_0 ),
        .I3(SOL3_vld_in),
        .I4(slv_reg15[0]),
        .O(\slv_reg15[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg15[1]_i_1 
       (.I0(SOL3_status[1]),
        .I1(sel0[2]),
        .I2(\slv_reg11[1]_i_2_n_0 ),
        .I3(SOL3_vld_in),
        .I4(slv_reg15[1]),
        .O(\slv_reg15[1]_i_1_n_0 ));
  FDRE \slv_reg15_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg15[0]_i_1_n_0 ),
        .Q(slv_reg15[0]),
        .R(p_0_in));
  FDRE \slv_reg15_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg15[1]_i_1_n_0 ),
        .Q(slv_reg15[1]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000020)) 
    \slv_reg16[7]_i_1 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(\slv_reg0[7]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .O(slv_reg16));
  FDRE \slv_reg16_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg16),
        .D(s00_axi_wdata[0]),
        .Q(SOL4_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg16_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg16),
        .D(s00_axi_wdata[1]),
        .Q(SOL4_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg16_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg16),
        .D(s00_axi_wdata[2]),
        .Q(SOL4_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg16_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg16),
        .D(s00_axi_wdata[3]),
        .Q(SOL4_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg16_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg16),
        .D(s00_axi_wdata[4]),
        .Q(SOL4_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg16_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg16),
        .D(s00_axi_wdata[5]),
        .Q(SOL4_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg16_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg16),
        .D(s00_axi_wdata[6]),
        .Q(SOL4_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg16_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg16),
        .D(s00_axi_wdata[7]),
        .Q(SOL4_pwm_val[7]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000020)) 
    \slv_reg17[10]_i_1 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(\slv_reg1[10]_i_2_n_0 ),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .O(slv_reg17));
  FDRE \slv_reg17_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg17),
        .D(s00_axi_wdata[0]),
        .Q(SOL4_time_full[0]),
        .R(p_0_in));
  FDRE \slv_reg17_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg17),
        .D(s00_axi_wdata[10]),
        .Q(SOL4_time_full[10]),
        .R(p_0_in));
  FDRE \slv_reg17_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg17),
        .D(s00_axi_wdata[1]),
        .Q(SOL4_time_full[1]),
        .R(p_0_in));
  FDRE \slv_reg17_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg17),
        .D(s00_axi_wdata[2]),
        .Q(SOL4_time_full[2]),
        .R(p_0_in));
  FDRE \slv_reg17_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg17),
        .D(s00_axi_wdata[3]),
        .Q(SOL4_time_full[3]),
        .R(p_0_in));
  FDRE \slv_reg17_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg17),
        .D(s00_axi_wdata[4]),
        .Q(SOL4_time_full[4]),
        .R(p_0_in));
  FDRE \slv_reg17_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg17),
        .D(s00_axi_wdata[5]),
        .Q(SOL4_time_full[5]),
        .R(p_0_in));
  FDRE \slv_reg17_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg17),
        .D(s00_axi_wdata[6]),
        .Q(SOL4_time_full[6]),
        .R(p_0_in));
  FDRE \slv_reg17_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg17),
        .D(s00_axi_wdata[7]),
        .Q(SOL4_time_full[7]),
        .R(p_0_in));
  FDRE \slv_reg17_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg17),
        .D(s00_axi_wdata[8]),
        .Q(SOL4_time_full[8]),
        .R(p_0_in));
  FDRE \slv_reg17_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg17),
        .D(s00_axi_wdata[9]),
        .Q(SOL4_time_full[9]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \slv_reg18[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg18[0]_i_2_n_0 ),
        .I2(sel0[2]),
        .I3(SOL4_run),
        .O(\slv_reg18[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \slv_reg18[0]_i_2 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(slv_reg_wren),
        .I3(sel0[1]),
        .I4(sel0[5]),
        .I5(sel0[4]),
        .O(\slv_reg18[0]_i_2_n_0 ));
  FDRE \slv_reg18_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg18[0]_i_1_n_0 ),
        .Q(SOL4_run),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \slv_reg19[0]_i_1 
       (.I0(SOL4_status[0]),
        .I1(sel0[2]),
        .I2(\slv_reg19[1]_i_2_n_0 ),
        .I3(SOL4_vld_in),
        .I4(slv_reg19[0]),
        .O(\slv_reg19[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \slv_reg19[1]_i_1 
       (.I0(SOL4_status[1]),
        .I1(sel0[2]),
        .I2(\slv_reg19[1]_i_2_n_0 ),
        .I3(SOL4_vld_in),
        .I4(slv_reg19[1]),
        .O(\slv_reg19[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \slv_reg19[1]_i_2 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[5]),
        .I4(sel0[4]),
        .O(\slv_reg19[1]_i_2_n_0 ));
  FDRE \slv_reg19_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg19[0]_i_1_n_0 ),
        .Q(slv_reg19[0]),
        .R(p_0_in));
  FDRE \slv_reg19_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg19[1]_i_1_n_0 ),
        .Q(slv_reg19[1]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000010)) 
    \slv_reg1[10]_i_1 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(\slv_reg1[10]_i_2_n_0 ),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .O(slv_reg1));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \slv_reg1[10]_i_2 
       (.I0(sel0[1]),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(S_AXI_WREADY),
        .I5(sel0[0]),
        .O(\slv_reg1[10]_i_2_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg1),
        .D(s00_axi_wdata[0]),
        .Q(SOL0_time_full[0]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg1),
        .D(s00_axi_wdata[10]),
        .Q(SOL0_time_full[10]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg1),
        .D(s00_axi_wdata[1]),
        .Q(SOL0_time_full[1]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg1),
        .D(s00_axi_wdata[2]),
        .Q(SOL0_time_full[2]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg1),
        .D(s00_axi_wdata[3]),
        .Q(SOL0_time_full[3]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg1),
        .D(s00_axi_wdata[4]),
        .Q(SOL0_time_full[4]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg1),
        .D(s00_axi_wdata[5]),
        .Q(SOL0_time_full[5]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg1),
        .D(s00_axi_wdata[6]),
        .Q(SOL0_time_full[6]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg1),
        .D(s00_axi_wdata[7]),
        .Q(SOL0_time_full[7]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg1),
        .D(s00_axi_wdata[8]),
        .Q(SOL0_time_full[8]),
        .R(p_0_in));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg1),
        .D(s00_axi_wdata[9]),
        .Q(SOL0_time_full[9]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00200000)) 
    \slv_reg20[7]_i_1 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(\slv_reg0[7]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .O(slv_reg20));
  FDRE \slv_reg20_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg20),
        .D(s00_axi_wdata[0]),
        .Q(SOL5_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg20_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg20),
        .D(s00_axi_wdata[1]),
        .Q(SOL5_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg20_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg20),
        .D(s00_axi_wdata[2]),
        .Q(SOL5_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg20_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg20),
        .D(s00_axi_wdata[3]),
        .Q(SOL5_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg20_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg20),
        .D(s00_axi_wdata[4]),
        .Q(SOL5_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg20_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg20),
        .D(s00_axi_wdata[5]),
        .Q(SOL5_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg20_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg20),
        .D(s00_axi_wdata[6]),
        .Q(SOL5_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg20_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg20),
        .D(s00_axi_wdata[7]),
        .Q(SOL5_pwm_val[7]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00200000)) 
    \slv_reg21[10]_i_1 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(\slv_reg1[10]_i_2_n_0 ),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .O(slv_reg21));
  FDRE \slv_reg21_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg21),
        .D(s00_axi_wdata[0]),
        .Q(SOL5_time_full[0]),
        .R(p_0_in));
  FDRE \slv_reg21_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg21),
        .D(s00_axi_wdata[10]),
        .Q(SOL5_time_full[10]),
        .R(p_0_in));
  FDRE \slv_reg21_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg21),
        .D(s00_axi_wdata[1]),
        .Q(SOL5_time_full[1]),
        .R(p_0_in));
  FDRE \slv_reg21_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg21),
        .D(s00_axi_wdata[2]),
        .Q(SOL5_time_full[2]),
        .R(p_0_in));
  FDRE \slv_reg21_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg21),
        .D(s00_axi_wdata[3]),
        .Q(SOL5_time_full[3]),
        .R(p_0_in));
  FDRE \slv_reg21_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg21),
        .D(s00_axi_wdata[4]),
        .Q(SOL5_time_full[4]),
        .R(p_0_in));
  FDRE \slv_reg21_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg21),
        .D(s00_axi_wdata[5]),
        .Q(SOL5_time_full[5]),
        .R(p_0_in));
  FDRE \slv_reg21_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg21),
        .D(s00_axi_wdata[6]),
        .Q(SOL5_time_full[6]),
        .R(p_0_in));
  FDRE \slv_reg21_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg21),
        .D(s00_axi_wdata[7]),
        .Q(SOL5_time_full[7]),
        .R(p_0_in));
  FDRE \slv_reg21_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg21),
        .D(s00_axi_wdata[8]),
        .Q(SOL5_time_full[8]),
        .R(p_0_in));
  FDRE \slv_reg21_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg21),
        .D(s00_axi_wdata[9]),
        .Q(SOL5_time_full[9]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg22[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg18[0]_i_2_n_0 ),
        .I2(sel0[2]),
        .I3(SOL5_run),
        .O(\slv_reg22[0]_i_1_n_0 ));
  FDRE \slv_reg22_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg22[0]_i_1_n_0 ),
        .Q(SOL5_run),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg23[0]_i_1 
       (.I0(SOL5_status[0]),
        .I1(sel0[2]),
        .I2(\slv_reg19[1]_i_2_n_0 ),
        .I3(SOL5_vld_in),
        .I4(slv_reg23[0]),
        .O(\slv_reg23[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg23[1]_i_1 
       (.I0(SOL5_status[1]),
        .I1(sel0[2]),
        .I2(\slv_reg19[1]_i_2_n_0 ),
        .I3(SOL5_vld_in),
        .I4(slv_reg23[1]),
        .O(\slv_reg23[1]_i_1_n_0 ));
  FDRE \slv_reg23_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg23[0]_i_1_n_0 ),
        .Q(slv_reg23[0]),
        .R(p_0_in));
  FDRE \slv_reg23_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg23[1]_i_1_n_0 ),
        .Q(slv_reg23[1]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00002000)) 
    \slv_reg24[7]_i_1 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(\slv_reg0[7]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .O(slv_reg24));
  FDRE \slv_reg24_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg24),
        .D(s00_axi_wdata[0]),
        .Q(SOL6_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg24_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg24),
        .D(s00_axi_wdata[1]),
        .Q(SOL6_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg24_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg24),
        .D(s00_axi_wdata[2]),
        .Q(SOL6_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg24_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg24),
        .D(s00_axi_wdata[3]),
        .Q(SOL6_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg24_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg24),
        .D(s00_axi_wdata[4]),
        .Q(SOL6_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg24_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg24),
        .D(s00_axi_wdata[5]),
        .Q(SOL6_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg24_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg24),
        .D(s00_axi_wdata[6]),
        .Q(SOL6_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg24_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg24),
        .D(s00_axi_wdata[7]),
        .Q(SOL6_pwm_val[7]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00002000)) 
    \slv_reg25[10]_i_1 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(\slv_reg1[10]_i_2_n_0 ),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .O(slv_reg25));
  FDRE \slv_reg25_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg25),
        .D(s00_axi_wdata[0]),
        .Q(SOL6_time_full[0]),
        .R(p_0_in));
  FDRE \slv_reg25_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg25),
        .D(s00_axi_wdata[10]),
        .Q(SOL6_time_full[10]),
        .R(p_0_in));
  FDRE \slv_reg25_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg25),
        .D(s00_axi_wdata[1]),
        .Q(SOL6_time_full[1]),
        .R(p_0_in));
  FDRE \slv_reg25_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg25),
        .D(s00_axi_wdata[2]),
        .Q(SOL6_time_full[2]),
        .R(p_0_in));
  FDRE \slv_reg25_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg25),
        .D(s00_axi_wdata[3]),
        .Q(SOL6_time_full[3]),
        .R(p_0_in));
  FDRE \slv_reg25_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg25),
        .D(s00_axi_wdata[4]),
        .Q(SOL6_time_full[4]),
        .R(p_0_in));
  FDRE \slv_reg25_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg25),
        .D(s00_axi_wdata[5]),
        .Q(SOL6_time_full[5]),
        .R(p_0_in));
  FDRE \slv_reg25_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg25),
        .D(s00_axi_wdata[6]),
        .Q(SOL6_time_full[6]),
        .R(p_0_in));
  FDRE \slv_reg25_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg25),
        .D(s00_axi_wdata[7]),
        .Q(SOL6_time_full[7]),
        .R(p_0_in));
  FDRE \slv_reg25_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg25),
        .D(s00_axi_wdata[8]),
        .Q(SOL6_time_full[8]),
        .R(p_0_in));
  FDRE \slv_reg25_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg25),
        .D(s00_axi_wdata[9]),
        .Q(SOL6_time_full[9]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \slv_reg26[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg26[0]_i_2_n_0 ),
        .I2(sel0[2]),
        .I3(SOL6_run),
        .O(\slv_reg26[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \slv_reg26[0]_i_2 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(slv_reg_wren),
        .I3(sel0[1]),
        .I4(sel0[5]),
        .I5(sel0[4]),
        .O(\slv_reg26[0]_i_2_n_0 ));
  FDRE \slv_reg26_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg26[0]_i_1_n_0 ),
        .Q(SOL6_run),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \slv_reg27[0]_i_1 
       (.I0(SOL6_status[0]),
        .I1(sel0[2]),
        .I2(\slv_reg27[1]_i_2_n_0 ),
        .I3(SOL6_vld_in),
        .I4(slv_reg27[0]),
        .O(\slv_reg27[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \slv_reg27[1]_i_1 
       (.I0(SOL6_status[1]),
        .I1(sel0[2]),
        .I2(\slv_reg27[1]_i_2_n_0 ),
        .I3(SOL6_vld_in),
        .I4(slv_reg27[1]),
        .O(\slv_reg27[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \slv_reg27[1]_i_2 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[5]),
        .I4(sel0[4]),
        .O(\slv_reg27[1]_i_2_n_0 ));
  FDRE \slv_reg27_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg27[0]_i_1_n_0 ),
        .Q(slv_reg27[0]),
        .R(p_0_in));
  FDRE \slv_reg27_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg27[1]_i_1_n_0 ),
        .Q(slv_reg27[1]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg28[7]_i_1 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(\slv_reg0[7]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .O(slv_reg28));
  FDRE \slv_reg28_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg28),
        .D(s00_axi_wdata[0]),
        .Q(SOL7_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg28_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg28),
        .D(s00_axi_wdata[1]),
        .Q(SOL7_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg28_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg28),
        .D(s00_axi_wdata[2]),
        .Q(SOL7_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg28_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg28),
        .D(s00_axi_wdata[3]),
        .Q(SOL7_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg28_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg28),
        .D(s00_axi_wdata[4]),
        .Q(SOL7_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg28_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg28),
        .D(s00_axi_wdata[5]),
        .Q(SOL7_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg28_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg28),
        .D(s00_axi_wdata[6]),
        .Q(SOL7_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg28_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg28),
        .D(s00_axi_wdata[7]),
        .Q(SOL7_pwm_val[7]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg29[10]_i_1 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(\slv_reg1[10]_i_2_n_0 ),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .O(slv_reg29));
  FDRE \slv_reg29_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg29),
        .D(s00_axi_wdata[0]),
        .Q(SOL7_time_full[0]),
        .R(p_0_in));
  FDRE \slv_reg29_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg29),
        .D(s00_axi_wdata[10]),
        .Q(SOL7_time_full[10]),
        .R(p_0_in));
  FDRE \slv_reg29_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg29),
        .D(s00_axi_wdata[1]),
        .Q(SOL7_time_full[1]),
        .R(p_0_in));
  FDRE \slv_reg29_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg29),
        .D(s00_axi_wdata[2]),
        .Q(SOL7_time_full[2]),
        .R(p_0_in));
  FDRE \slv_reg29_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg29),
        .D(s00_axi_wdata[3]),
        .Q(SOL7_time_full[3]),
        .R(p_0_in));
  FDRE \slv_reg29_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg29),
        .D(s00_axi_wdata[4]),
        .Q(SOL7_time_full[4]),
        .R(p_0_in));
  FDRE \slv_reg29_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg29),
        .D(s00_axi_wdata[5]),
        .Q(SOL7_time_full[5]),
        .R(p_0_in));
  FDRE \slv_reg29_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg29),
        .D(s00_axi_wdata[6]),
        .Q(SOL7_time_full[6]),
        .R(p_0_in));
  FDRE \slv_reg29_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg29),
        .D(s00_axi_wdata[7]),
        .Q(SOL7_time_full[7]),
        .R(p_0_in));
  FDRE \slv_reg29_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg29),
        .D(s00_axi_wdata[8]),
        .Q(SOL7_time_full[8]),
        .R(p_0_in));
  FDRE \slv_reg29_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg29),
        .D(s00_axi_wdata[9]),
        .Q(SOL7_time_full[9]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \slv_reg2[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg2[0]_i_2_n_0 ),
        .I2(sel0[2]),
        .I3(SOL0_run),
        .O(\slv_reg2[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \slv_reg2[0]_i_2 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(slv_reg_wren),
        .I3(sel0[1]),
        .I4(sel0[5]),
        .I5(sel0[4]),
        .O(\slv_reg2[0]_i_2_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg2[0]_i_1_n_0 ),
        .Q(SOL0_run),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg30[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg26[0]_i_2_n_0 ),
        .I2(sel0[2]),
        .I3(SOL7_run),
        .O(\slv_reg30[0]_i_1_n_0 ));
  FDRE \slv_reg30_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg30[0]_i_1_n_0 ),
        .Q(SOL7_run),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg31[0]_i_1 
       (.I0(SOL7_status[0]),
        .I1(sel0[2]),
        .I2(\slv_reg27[1]_i_2_n_0 ),
        .I3(SOL7_vld_in),
        .I4(slv_reg31[0]),
        .O(\slv_reg31[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg31[1]_i_1 
       (.I0(SOL7_status[1]),
        .I1(sel0[2]),
        .I2(\slv_reg27[1]_i_2_n_0 ),
        .I3(SOL7_vld_in),
        .I4(slv_reg31[1]),
        .O(\slv_reg31[1]_i_1_n_0 ));
  FDRE \slv_reg31_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg31[0]_i_1_n_0 ),
        .Q(slv_reg31[0]),
        .R(p_0_in));
  FDRE \slv_reg31_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg31[1]_i_1_n_0 ),
        .Q(slv_reg31[1]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000040)) 
    \slv_reg32[7]_i_1 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(\slv_reg0[7]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .O(slv_reg32));
  FDRE \slv_reg32_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg32),
        .D(s00_axi_wdata[0]),
        .Q(SOL8_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg32_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg32),
        .D(s00_axi_wdata[1]),
        .Q(SOL8_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg32_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg32),
        .D(s00_axi_wdata[2]),
        .Q(SOL8_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg32_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg32),
        .D(s00_axi_wdata[3]),
        .Q(SOL8_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg32_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg32),
        .D(s00_axi_wdata[4]),
        .Q(SOL8_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg32_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg32),
        .D(s00_axi_wdata[5]),
        .Q(SOL8_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg32_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg32),
        .D(s00_axi_wdata[6]),
        .Q(SOL8_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg32_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg32),
        .D(s00_axi_wdata[7]),
        .Q(SOL8_pwm_val[7]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000040)) 
    \slv_reg33[10]_i_1 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(\slv_reg1[10]_i_2_n_0 ),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .O(slv_reg33));
  FDRE \slv_reg33_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg33),
        .D(s00_axi_wdata[0]),
        .Q(SOL8_time_full[0]),
        .R(p_0_in));
  FDRE \slv_reg33_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg33),
        .D(s00_axi_wdata[10]),
        .Q(SOL8_time_full[10]),
        .R(p_0_in));
  FDRE \slv_reg33_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg33),
        .D(s00_axi_wdata[1]),
        .Q(SOL8_time_full[1]),
        .R(p_0_in));
  FDRE \slv_reg33_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg33),
        .D(s00_axi_wdata[2]),
        .Q(SOL8_time_full[2]),
        .R(p_0_in));
  FDRE \slv_reg33_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg33),
        .D(s00_axi_wdata[3]),
        .Q(SOL8_time_full[3]),
        .R(p_0_in));
  FDRE \slv_reg33_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg33),
        .D(s00_axi_wdata[4]),
        .Q(SOL8_time_full[4]),
        .R(p_0_in));
  FDRE \slv_reg33_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg33),
        .D(s00_axi_wdata[5]),
        .Q(SOL8_time_full[5]),
        .R(p_0_in));
  FDRE \slv_reg33_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg33),
        .D(s00_axi_wdata[6]),
        .Q(SOL8_time_full[6]),
        .R(p_0_in));
  FDRE \slv_reg33_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg33),
        .D(s00_axi_wdata[7]),
        .Q(SOL8_time_full[7]),
        .R(p_0_in));
  FDRE \slv_reg33_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg33),
        .D(s00_axi_wdata[8]),
        .Q(SOL8_time_full[8]),
        .R(p_0_in));
  FDRE \slv_reg33_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg33),
        .D(s00_axi_wdata[9]),
        .Q(SOL8_time_full[9]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \slv_reg34[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg34[0]_i_2_n_0 ),
        .I2(sel0[2]),
        .I3(SOL8_run),
        .O(\slv_reg34[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \slv_reg34[0]_i_2 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(slv_reg_wren),
        .I3(sel0[1]),
        .I4(sel0[5]),
        .I5(sel0[4]),
        .O(\slv_reg34[0]_i_2_n_0 ));
  FDRE \slv_reg34_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg34[0]_i_1_n_0 ),
        .Q(SOL8_run),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg35[0]_i_1 
       (.I0(SOL8_status[0]),
        .I1(slv_reg35_1),
        .I2(slv_reg35[0]),
        .O(\slv_reg35[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg35[1]_i_1 
       (.I0(SOL8_status[1]),
        .I1(slv_reg35_1),
        .I2(slv_reg35[1]),
        .O(\slv_reg35[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \slv_reg35[1]_i_2 
       (.I0(sel0[4]),
        .I1(SOL8_vld_in),
        .I2(\slv_reg35[1]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .O(slv_reg35_1));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \slv_reg35[1]_i_3 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[5]),
        .O(\slv_reg35[1]_i_3_n_0 ));
  FDRE \slv_reg35_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg35[0]_i_1_n_0 ),
        .Q(slv_reg35[0]),
        .R(p_0_in));
  FDRE \slv_reg35_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg35[1]_i_1_n_0 ),
        .Q(slv_reg35[1]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00400000)) 
    \slv_reg36[7]_i_1 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(\slv_reg0[7]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .O(slv_reg36));
  FDRE \slv_reg36_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg36),
        .D(s00_axi_wdata[0]),
        .Q(SOL9_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg36_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg36),
        .D(s00_axi_wdata[1]),
        .Q(SOL9_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg36_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg36),
        .D(s00_axi_wdata[2]),
        .Q(SOL9_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg36_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg36),
        .D(s00_axi_wdata[3]),
        .Q(SOL9_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg36_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg36),
        .D(s00_axi_wdata[4]),
        .Q(SOL9_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg36_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg36),
        .D(s00_axi_wdata[5]),
        .Q(SOL9_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg36_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg36),
        .D(s00_axi_wdata[6]),
        .Q(SOL9_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg36_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg36),
        .D(s00_axi_wdata[7]),
        .Q(SOL9_pwm_val[7]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00400000)) 
    \slv_reg37[10]_i_1 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(\slv_reg1[10]_i_2_n_0 ),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .O(slv_reg37));
  FDRE \slv_reg37_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg37),
        .D(s00_axi_wdata[0]),
        .Q(SOL9_time_full[0]),
        .R(p_0_in));
  FDRE \slv_reg37_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg37),
        .D(s00_axi_wdata[10]),
        .Q(SOL9_time_full[10]),
        .R(p_0_in));
  FDRE \slv_reg37_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg37),
        .D(s00_axi_wdata[1]),
        .Q(SOL9_time_full[1]),
        .R(p_0_in));
  FDRE \slv_reg37_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg37),
        .D(s00_axi_wdata[2]),
        .Q(SOL9_time_full[2]),
        .R(p_0_in));
  FDRE \slv_reg37_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg37),
        .D(s00_axi_wdata[3]),
        .Q(SOL9_time_full[3]),
        .R(p_0_in));
  FDRE \slv_reg37_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg37),
        .D(s00_axi_wdata[4]),
        .Q(SOL9_time_full[4]),
        .R(p_0_in));
  FDRE \slv_reg37_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg37),
        .D(s00_axi_wdata[5]),
        .Q(SOL9_time_full[5]),
        .R(p_0_in));
  FDRE \slv_reg37_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg37),
        .D(s00_axi_wdata[6]),
        .Q(SOL9_time_full[6]),
        .R(p_0_in));
  FDRE \slv_reg37_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg37),
        .D(s00_axi_wdata[7]),
        .Q(SOL9_time_full[7]),
        .R(p_0_in));
  FDRE \slv_reg37_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg37),
        .D(s00_axi_wdata[8]),
        .Q(SOL9_time_full[8]),
        .R(p_0_in));
  FDRE \slv_reg37_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg37),
        .D(s00_axi_wdata[9]),
        .Q(SOL9_time_full[9]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg38[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg34[0]_i_2_n_0 ),
        .I2(sel0[2]),
        .I3(SOL9_run),
        .O(\slv_reg38[0]_i_1_n_0 ));
  FDRE \slv_reg38_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg38[0]_i_1_n_0 ),
        .Q(SOL9_run),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg39[0]_i_1 
       (.I0(SOL9_status[0]),
        .I1(slv_reg39_0),
        .I2(slv_reg39[0]),
        .O(\slv_reg39[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg39[1]_i_1 
       (.I0(SOL9_status[1]),
        .I1(slv_reg39_0),
        .I2(slv_reg39[1]),
        .O(\slv_reg39[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \slv_reg39[1]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(\slv_reg35[1]_i_3_n_0 ),
        .I3(sel0[4]),
        .I4(SOL9_vld_in),
        .O(slv_reg39_0));
  FDRE \slv_reg39_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg39[0]_i_1_n_0 ),
        .Q(slv_reg39[0]),
        .R(p_0_in));
  FDRE \slv_reg39_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg39[1]_i_1_n_0 ),
        .Q(slv_reg39[1]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[0]_i_1 
       (.I0(SOL0_status[0]),
        .I1(slv_reg3_2),
        .I2(slv_reg3[0]),
        .O(\slv_reg3[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[1]_i_1 
       (.I0(SOL0_status[1]),
        .I1(slv_reg3_2),
        .I2(slv_reg3[1]),
        .O(\slv_reg3[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \slv_reg3[1]_i_2 
       (.I0(sel0[4]),
        .I1(SOL0_vld_in),
        .I2(\slv_reg3[1]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .O(slv_reg3_2));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \slv_reg3[1]_i_3 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[5]),
        .O(\slv_reg3[1]_i_3_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[0]_i_1_n_0 ),
        .Q(slv_reg3[0]),
        .R(p_0_in));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[1]_i_1_n_0 ),
        .Q(slv_reg3[1]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00100000)) 
    \slv_reg4[7]_i_1 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(\slv_reg0[7]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .O(slv_reg4));
  FDRE \slv_reg4_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg4),
        .D(s00_axi_wdata[0]),
        .Q(SOL1_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg4_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg4),
        .D(s00_axi_wdata[1]),
        .Q(SOL1_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg4_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg4),
        .D(s00_axi_wdata[2]),
        .Q(SOL1_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg4_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg4),
        .D(s00_axi_wdata[3]),
        .Q(SOL1_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg4_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg4),
        .D(s00_axi_wdata[4]),
        .Q(SOL1_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg4_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg4),
        .D(s00_axi_wdata[5]),
        .Q(SOL1_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg4_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg4),
        .D(s00_axi_wdata[6]),
        .Q(SOL1_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg4_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg4),
        .D(s00_axi_wdata[7]),
        .Q(SOL1_pwm_val[7]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00100000)) 
    \slv_reg5[10]_i_1 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(\slv_reg1[10]_i_2_n_0 ),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .O(slv_reg5));
  FDRE \slv_reg5_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5),
        .D(s00_axi_wdata[0]),
        .Q(SOL1_time_full[0]),
        .R(p_0_in));
  FDRE \slv_reg5_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5),
        .D(s00_axi_wdata[10]),
        .Q(SOL1_time_full[10]),
        .R(p_0_in));
  FDRE \slv_reg5_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5),
        .D(s00_axi_wdata[1]),
        .Q(SOL1_time_full[1]),
        .R(p_0_in));
  FDRE \slv_reg5_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5),
        .D(s00_axi_wdata[2]),
        .Q(SOL1_time_full[2]),
        .R(p_0_in));
  FDRE \slv_reg5_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5),
        .D(s00_axi_wdata[3]),
        .Q(SOL1_time_full[3]),
        .R(p_0_in));
  FDRE \slv_reg5_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5),
        .D(s00_axi_wdata[4]),
        .Q(SOL1_time_full[4]),
        .R(p_0_in));
  FDRE \slv_reg5_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5),
        .D(s00_axi_wdata[5]),
        .Q(SOL1_time_full[5]),
        .R(p_0_in));
  FDRE \slv_reg5_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5),
        .D(s00_axi_wdata[6]),
        .Q(SOL1_time_full[6]),
        .R(p_0_in));
  FDRE \slv_reg5_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5),
        .D(s00_axi_wdata[7]),
        .Q(SOL1_time_full[7]),
        .R(p_0_in));
  FDRE \slv_reg5_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5),
        .D(s00_axi_wdata[8]),
        .Q(SOL1_time_full[8]),
        .R(p_0_in));
  FDRE \slv_reg5_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg5),
        .D(s00_axi_wdata[9]),
        .Q(SOL1_time_full[9]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \slv_reg6[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg2[0]_i_2_n_0 ),
        .I2(sel0[2]),
        .I3(SOL1_run),
        .O(\slv_reg6[0]_i_1_n_0 ));
  FDRE \slv_reg6_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg6[0]_i_1_n_0 ),
        .Q(SOL1_run),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \slv_reg7[0]_i_1 
       (.I0(SOL1_status[0]),
        .I1(sel0[2]),
        .I2(\slv_reg7[1]_i_2_n_0 ),
        .I3(sel0[4]),
        .I4(SOL1_vld_in),
        .I5(slv_reg7[0]),
        .O(\slv_reg7[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \slv_reg7[1]_i_1 
       (.I0(SOL1_status[1]),
        .I1(sel0[2]),
        .I2(\slv_reg7[1]_i_2_n_0 ),
        .I3(sel0[4]),
        .I4(SOL1_vld_in),
        .I5(slv_reg7[1]),
        .O(\slv_reg7[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \slv_reg7[1]_i_2 
       (.I0(sel0[5]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[3]),
        .O(\slv_reg7[1]_i_2_n_0 ));
  FDRE \slv_reg7_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg7[0]_i_1_n_0 ),
        .Q(slv_reg7[0]),
        .R(p_0_in));
  FDRE \slv_reg7_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg7[1]_i_1_n_0 ),
        .Q(slv_reg7[1]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00001000)) 
    \slv_reg8[7]_i_1 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(\slv_reg0[7]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .O(slv_reg8));
  FDRE \slv_reg8_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg8),
        .D(s00_axi_wdata[0]),
        .Q(SOL2_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg8_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg8),
        .D(s00_axi_wdata[1]),
        .Q(SOL2_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg8_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg8),
        .D(s00_axi_wdata[2]),
        .Q(SOL2_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg8_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg8),
        .D(s00_axi_wdata[3]),
        .Q(SOL2_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg8_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg8),
        .D(s00_axi_wdata[4]),
        .Q(SOL2_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg8_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg8),
        .D(s00_axi_wdata[5]),
        .Q(SOL2_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg8_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg8),
        .D(s00_axi_wdata[6]),
        .Q(SOL2_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg8_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg8),
        .D(s00_axi_wdata[7]),
        .Q(SOL2_pwm_val[7]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00001000)) 
    \slv_reg9[10]_i_1 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .I2(\slv_reg1[10]_i_2_n_0 ),
        .I3(sel0[3]),
        .I4(sel0[2]),
        .O(slv_reg9));
  FDRE \slv_reg9_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg9),
        .D(s00_axi_wdata[0]),
        .Q(SOL2_time_full[0]),
        .R(p_0_in));
  FDRE \slv_reg9_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg9),
        .D(s00_axi_wdata[10]),
        .Q(SOL2_time_full[10]),
        .R(p_0_in));
  FDRE \slv_reg9_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg9),
        .D(s00_axi_wdata[1]),
        .Q(SOL2_time_full[1]),
        .R(p_0_in));
  FDRE \slv_reg9_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg9),
        .D(s00_axi_wdata[2]),
        .Q(SOL2_time_full[2]),
        .R(p_0_in));
  FDRE \slv_reg9_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg9),
        .D(s00_axi_wdata[3]),
        .Q(SOL2_time_full[3]),
        .R(p_0_in));
  FDRE \slv_reg9_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg9),
        .D(s00_axi_wdata[4]),
        .Q(SOL2_time_full[4]),
        .R(p_0_in));
  FDRE \slv_reg9_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg9),
        .D(s00_axi_wdata[5]),
        .Q(SOL2_time_full[5]),
        .R(p_0_in));
  FDRE \slv_reg9_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg9),
        .D(s00_axi_wdata[6]),
        .Q(SOL2_time_full[6]),
        .R(p_0_in));
  FDRE \slv_reg9_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg9),
        .D(s00_axi_wdata[7]),
        .Q(SOL2_time_full[7]),
        .R(p_0_in));
  FDRE \slv_reg9_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg9),
        .D(s00_axi_wdata[8]),
        .Q(SOL2_time_full[8]),
        .R(p_0_in));
  FDRE \slv_reg9_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg9),
        .D(s00_axi_wdata[9]),
        .Q(SOL2_time_full[9]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    slv_reg_wren_d1_i_1
       (.I0(S_AXI_AWREADY),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(S_AXI_WREADY),
        .O(slv_reg_wren));
  FDRE #(
    .INIT(1'b0)) 
    slv_reg_wren_d1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg_wren),
        .Q(slv_reg_wren_d1),
        .R(p_0_in));
endmodule

(* CHECK_LICENSE_TYPE = "system_SOL_regs_0_0,SOL_regs_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "SOL_regs_v1_0,Vivado 2019.1.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (SOL0_pwm_val,
    SOL0_time_full,
    SOL0_run,
    SOL0_status,
    SOL0_vld_in,
    SOL0_vld_out,
    SOL1_pwm_val,
    SOL1_time_full,
    SOL1_run,
    SOL1_status,
    SOL1_vld_in,
    SOL1_vld_out,
    SOL2_pwm_val,
    SOL2_time_full,
    SOL2_run,
    SOL2_status,
    SOL2_vld_in,
    SOL2_vld_out,
    SOL3_pwm_val,
    SOL3_time_full,
    SOL3_run,
    SOL3_status,
    SOL3_vld_in,
    SOL3_vld_out,
    SOL4_pwm_val,
    SOL4_time_full,
    SOL4_run,
    SOL4_status,
    SOL4_vld_in,
    SOL4_vld_out,
    SOL5_pwm_val,
    SOL5_time_full,
    SOL5_run,
    SOL5_status,
    SOL5_vld_in,
    SOL5_vld_out,
    SOL6_pwm_val,
    SOL6_time_full,
    SOL6_run,
    SOL6_status,
    SOL6_vld_in,
    SOL6_vld_out,
    SOL7_pwm_val,
    SOL7_time_full,
    SOL7_run,
    SOL7_status,
    SOL7_vld_in,
    SOL7_vld_out,
    SOL8_pwm_val,
    SOL8_time_full,
    SOL8_run,
    SOL8_status,
    SOL8_vld_in,
    SOL8_vld_out,
    SOL9_pwm_val,
    SOL9_time_full,
    SOL9_run,
    SOL9_status,
    SOL9_vld_in,
    SOL9_vld_out,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL0 pwm_val" *) output [7:0]SOL0_pwm_val;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL0 time_full" *) output [10:0]SOL0_time_full;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL0 run" *) output SOL0_run;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL0 status" *) input [1:0]SOL0_status;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL0 vld_in" *) input SOL0_vld_in;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL0 vld_out" *) output SOL0_vld_out;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL1 pwm_val" *) output [7:0]SOL1_pwm_val;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL1 time_full" *) output [10:0]SOL1_time_full;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL1 run" *) output SOL1_run;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL1 status" *) input [1:0]SOL1_status;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL1 vld_in" *) input SOL1_vld_in;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL1 vld_out" *) output SOL1_vld_out;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL2 pwm_val" *) output [7:0]SOL2_pwm_val;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL2 time_full" *) output [10:0]SOL2_time_full;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL2 run" *) output SOL2_run;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL2 status" *) input [1:0]SOL2_status;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL2 vld_in" *) input SOL2_vld_in;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL2 vld_out" *) output SOL2_vld_out;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL3 pwm_val" *) output [7:0]SOL3_pwm_val;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL3 time_full" *) output [10:0]SOL3_time_full;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL3 run" *) output SOL3_run;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL3 status" *) input [1:0]SOL3_status;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL3 vld_in" *) input SOL3_vld_in;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL3 vld_out" *) output SOL3_vld_out;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL4 pwm_val" *) output [7:0]SOL4_pwm_val;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL4 time_full" *) output [10:0]SOL4_time_full;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL4 run" *) output SOL4_run;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL4 status" *) input [1:0]SOL4_status;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL4 vld_in" *) input SOL4_vld_in;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL4 vld_out" *) output SOL4_vld_out;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL5 pwm_val" *) output [7:0]SOL5_pwm_val;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL5 time_full" *) output [10:0]SOL5_time_full;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL5 run" *) output SOL5_run;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL5 status" *) input [1:0]SOL5_status;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL5 vld_in" *) input SOL5_vld_in;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL5 vld_out" *) output SOL5_vld_out;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL6 pwm_val" *) output [7:0]SOL6_pwm_val;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL6 time_full" *) output [10:0]SOL6_time_full;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL6 run" *) output SOL6_run;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL6 status" *) input [1:0]SOL6_status;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL6 vld_in" *) input SOL6_vld_in;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL6 vld_out" *) output SOL6_vld_out;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL7 pwm_val" *) output [7:0]SOL7_pwm_val;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL7 time_full" *) output [10:0]SOL7_time_full;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL7 run" *) output SOL7_run;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL7 status" *) input [1:0]SOL7_status;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL7 vld_in" *) input SOL7_vld_in;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL7 vld_out" *) output SOL7_vld_out;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL8 pwm_val" *) output [7:0]SOL8_pwm_val;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL8 time_full" *) output [10:0]SOL8_time_full;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL8 run" *) output SOL8_run;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL8 status" *) input [1:0]SOL8_status;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL8 vld_in" *) input SOL8_vld_in;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL8 vld_out" *) output SOL8_vld_out;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL9 pwm_val" *) output [7:0]SOL9_pwm_val;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL9 time_full" *) output [10:0]SOL9_time_full;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL9 run" *) output SOL9_run;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL9 status" *) input [1:0]SOL9_status;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL9 vld_in" *) input SOL9_vld_in;
  (* x_interface_info = "mindway:user:SOL_reg_if:1.0 SOL9 vld_out" *) output SOL9_vld_out;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 40, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 1e+08, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [7:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [7:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire [7:0]SOL0_pwm_val;
  wire SOL0_run;
  wire [1:0]SOL0_status;
  wire [10:0]SOL0_time_full;
  wire SOL0_vld_in;
  wire SOL0_vld_out;
  wire [7:0]SOL1_pwm_val;
  wire SOL1_run;
  wire [1:0]SOL1_status;
  wire [10:0]SOL1_time_full;
  wire SOL1_vld_in;
  wire SOL1_vld_out;
  wire [7:0]SOL2_pwm_val;
  wire SOL2_run;
  wire [1:0]SOL2_status;
  wire [10:0]SOL2_time_full;
  wire SOL2_vld_in;
  wire SOL2_vld_out;
  wire [7:0]SOL3_pwm_val;
  wire SOL3_run;
  wire [1:0]SOL3_status;
  wire [10:0]SOL3_time_full;
  wire SOL3_vld_in;
  wire SOL3_vld_out;
  wire [7:0]SOL4_pwm_val;
  wire SOL4_run;
  wire [1:0]SOL4_status;
  wire [10:0]SOL4_time_full;
  wire SOL4_vld_in;
  wire SOL4_vld_out;
  wire [7:0]SOL5_pwm_val;
  wire SOL5_run;
  wire [1:0]SOL5_status;
  wire [10:0]SOL5_time_full;
  wire SOL5_vld_in;
  wire SOL5_vld_out;
  wire [7:0]SOL6_pwm_val;
  wire SOL6_run;
  wire [1:0]SOL6_status;
  wire [10:0]SOL6_time_full;
  wire SOL6_vld_in;
  wire SOL6_vld_out;
  wire [7:0]SOL7_pwm_val;
  wire SOL7_run;
  wire [1:0]SOL7_status;
  wire [10:0]SOL7_time_full;
  wire SOL7_vld_in;
  wire SOL7_vld_out;
  wire [7:0]SOL8_pwm_val;
  wire SOL8_run;
  wire [1:0]SOL8_status;
  wire [10:0]SOL8_time_full;
  wire SOL8_vld_in;
  wire SOL8_vld_out;
  wire [7:0]SOL9_pwm_val;
  wire SOL9_run;
  wire [1:0]SOL9_status;
  wire [10:0]SOL9_time_full;
  wire SOL9_vld_in;
  wire SOL9_vld_out;
  wire s00_axi_aclk;
  wire [7:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [7:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [10:0]\^s00_axi_rdata ;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rdata[31] = \<const0> ;
  assign s00_axi_rdata[30] = \<const0> ;
  assign s00_axi_rdata[29] = \<const0> ;
  assign s00_axi_rdata[28] = \<const0> ;
  assign s00_axi_rdata[27] = \<const0> ;
  assign s00_axi_rdata[26] = \<const0> ;
  assign s00_axi_rdata[25] = \<const0> ;
  assign s00_axi_rdata[24] = \<const0> ;
  assign s00_axi_rdata[23] = \<const0> ;
  assign s00_axi_rdata[22] = \<const0> ;
  assign s00_axi_rdata[21] = \<const0> ;
  assign s00_axi_rdata[20] = \<const0> ;
  assign s00_axi_rdata[19] = \<const0> ;
  assign s00_axi_rdata[18] = \<const0> ;
  assign s00_axi_rdata[17] = \<const0> ;
  assign s00_axi_rdata[16] = \<const0> ;
  assign s00_axi_rdata[15] = \<const0> ;
  assign s00_axi_rdata[14] = \<const0> ;
  assign s00_axi_rdata[13] = \<const0> ;
  assign s00_axi_rdata[12] = \<const0> ;
  assign s00_axi_rdata[11] = \<const0> ;
  assign s00_axi_rdata[10:0] = \^s00_axi_rdata [10:0];
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SOL_regs_v1_0 U0
       (.SOL0_pwm_val(SOL0_pwm_val),
        .SOL0_run(SOL0_run),
        .SOL0_status(SOL0_status),
        .SOL0_time_full(SOL0_time_full),
        .SOL0_vld_in(SOL0_vld_in),
        .SOL0_vld_out(SOL0_vld_out),
        .SOL1_pwm_val(SOL1_pwm_val),
        .SOL1_run(SOL1_run),
        .SOL1_status(SOL1_status),
        .SOL1_time_full(SOL1_time_full),
        .SOL1_vld_in(SOL1_vld_in),
        .SOL1_vld_out(SOL1_vld_out),
        .SOL2_pwm_val(SOL2_pwm_val),
        .SOL2_run(SOL2_run),
        .SOL2_status(SOL2_status),
        .SOL2_time_full(SOL2_time_full),
        .SOL2_vld_in(SOL2_vld_in),
        .SOL2_vld_out(SOL2_vld_out),
        .SOL3_pwm_val(SOL3_pwm_val),
        .SOL3_run(SOL3_run),
        .SOL3_status(SOL3_status),
        .SOL3_time_full(SOL3_time_full),
        .SOL3_vld_in(SOL3_vld_in),
        .SOL3_vld_out(SOL3_vld_out),
        .SOL4_pwm_val(SOL4_pwm_val),
        .SOL4_run(SOL4_run),
        .SOL4_status(SOL4_status),
        .SOL4_time_full(SOL4_time_full),
        .SOL4_vld_in(SOL4_vld_in),
        .SOL4_vld_out(SOL4_vld_out),
        .SOL5_pwm_val(SOL5_pwm_val),
        .SOL5_run(SOL5_run),
        .SOL5_status(SOL5_status),
        .SOL5_time_full(SOL5_time_full),
        .SOL5_vld_in(SOL5_vld_in),
        .SOL5_vld_out(SOL5_vld_out),
        .SOL6_pwm_val(SOL6_pwm_val),
        .SOL6_run(SOL6_run),
        .SOL6_status(SOL6_status),
        .SOL6_time_full(SOL6_time_full),
        .SOL6_vld_in(SOL6_vld_in),
        .SOL6_vld_out(SOL6_vld_out),
        .SOL7_pwm_val(SOL7_pwm_val),
        .SOL7_run(SOL7_run),
        .SOL7_status(SOL7_status),
        .SOL7_time_full(SOL7_time_full),
        .SOL7_vld_in(SOL7_vld_in),
        .SOL7_vld_out(SOL7_vld_out),
        .SOL8_pwm_val(SOL8_pwm_val),
        .SOL8_run(SOL8_run),
        .SOL8_status(SOL8_status),
        .SOL8_time_full(SOL8_time_full),
        .SOL8_vld_in(SOL8_vld_in),
        .SOL8_vld_out(SOL8_vld_out),
        .SOL9_pwm_val(SOL9_pwm_val),
        .SOL9_run(SOL9_run),
        .SOL9_status(SOL9_status),
        .SOL9_time_full(SOL9_time_full),
        .SOL9_vld_in(SOL9_vld_in),
        .SOL9_vld_out(SOL9_vld_out),
        .S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[7:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[7:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(\^s00_axi_rdata ),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata[10:0]),
        .s00_axi_wvalid(s00_axi_wvalid));
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
