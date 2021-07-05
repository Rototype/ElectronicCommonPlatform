// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
// Date        : Wed Jul 29 04:12:49 2020
// Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top S7_DCM_regs_0_0 -prefix
//               S7_DCM_regs_0_0_ S7_DCM_regs_0_0_sim_netlist.v
// Design      : S7_DCM_regs_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s100fgga676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module S7_DCM_regs_0_0_DCM_regs_v1_0
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    DCM0_pwm_val,
    DCM0_pwm_frq,
    DCM0_vld_out,
    DCM1_pwm_val,
    DCM1_pwm_frq,
    DCM1_vld_out,
    DCM2_pwm_val,
    DCM2_pwm_frq,
    DCM2_vld_out,
    DCM3_pwm_val,
    DCM3_pwm_frq,
    DCM3_vld_out,
    DCM4_pwm_val,
    DCM4_pwm_frq,
    DCM4_vld_out,
    S_AXI_ARREADY,
    DCM4_brake,
    DCM4_run,
    DCM4_dir,
    DCM3_brake,
    DCM3_run,
    DCM3_dir,
    DCM2_brake,
    DCM2_run,
    DCM2_dir,
    DCM1_brake,
    DCM1_run,
    DCM1_dir,
    DCM0_brake,
    DCM0_run,
    DCM0_dir,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_aresetn,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wdata,
    DCM0_status,
    DCM0_vld_in,
    DCM1_status,
    DCM1_vld_in,
    DCM2_status,
    DCM2_vld_in,
    DCM3_status,
    DCM3_vld_in,
    DCM4_status,
    DCM4_vld_in,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output [7:0]DCM0_pwm_val;
  output [6:0]DCM0_pwm_frq;
  output DCM0_vld_out;
  output [7:0]DCM1_pwm_val;
  output [6:0]DCM1_pwm_frq;
  output DCM1_vld_out;
  output [7:0]DCM2_pwm_val;
  output [6:0]DCM2_pwm_frq;
  output DCM2_vld_out;
  output [7:0]DCM3_pwm_val;
  output [6:0]DCM3_pwm_frq;
  output DCM3_vld_out;
  output [7:0]DCM4_pwm_val;
  output [6:0]DCM4_pwm_frq;
  output DCM4_vld_out;
  output S_AXI_ARREADY;
  output DCM4_brake;
  output DCM4_run;
  output DCM4_dir;
  output DCM3_brake;
  output DCM3_run;
  output DCM3_dir;
  output DCM2_brake;
  output DCM2_run;
  output DCM2_dir;
  output DCM1_brake;
  output DCM1_run;
  output DCM1_dir;
  output DCM0_brake;
  output DCM0_run;
  output DCM0_dir;
  output [7:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_aresetn;
  input s00_axi_aclk;
  input [4:0]s00_axi_awaddr;
  input [7:0]s00_axi_wdata;
  input [1:0]DCM0_status;
  input DCM0_vld_in;
  input [1:0]DCM1_status;
  input DCM1_vld_in;
  input [1:0]DCM2_status;
  input DCM2_vld_in;
  input [1:0]DCM3_status;
  input DCM3_vld_in;
  input [1:0]DCM4_status;
  input DCM4_vld_in;
  input [4:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input s00_axi_bready;
  input s00_axi_rready;

  wire DCM0_brake;
  wire DCM0_dir;
  wire [6:0]DCM0_pwm_frq;
  wire [7:0]DCM0_pwm_val;
  wire DCM0_run;
  wire [1:0]DCM0_status;
  wire DCM0_vld_in;
  wire DCM0_vld_out;
  wire DCM1_brake;
  wire DCM1_dir;
  wire [6:0]DCM1_pwm_frq;
  wire [7:0]DCM1_pwm_val;
  wire DCM1_run;
  wire [1:0]DCM1_status;
  wire DCM1_vld_in;
  wire DCM1_vld_out;
  wire DCM2_brake;
  wire DCM2_dir;
  wire [6:0]DCM2_pwm_frq;
  wire [7:0]DCM2_pwm_val;
  wire DCM2_run;
  wire [1:0]DCM2_status;
  wire DCM2_vld_in;
  wire DCM2_vld_out;
  wire DCM3_brake;
  wire DCM3_dir;
  wire [6:0]DCM3_pwm_frq;
  wire [7:0]DCM3_pwm_val;
  wire DCM3_run;
  wire [1:0]DCM3_status;
  wire DCM3_vld_in;
  wire DCM3_vld_out;
  wire DCM4_brake;
  wire DCM4_dir;
  wire [6:0]DCM4_pwm_frq;
  wire [7:0]DCM4_pwm_val;
  wire DCM4_run;
  wire [1:0]DCM4_status;
  wire DCM4_vld_in;
  wire DCM4_vld_out;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire s00_axi_aclk;
  wire [4:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [4:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [7:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [7:0]s00_axi_wdata;
  wire s00_axi_wvalid;

  S7_DCM_regs_0_0_DCM_regs_v1_0_S00_AXI DCM_regs_v1_0_S00_AXI_inst
       (.DCM0_brake(DCM0_brake),
        .DCM0_dir(DCM0_dir),
        .DCM0_pwm_frq(DCM0_pwm_frq),
        .DCM0_pwm_val(DCM0_pwm_val),
        .DCM0_run(DCM0_run),
        .DCM0_status(DCM0_status),
        .DCM0_vld_in(DCM0_vld_in),
        .DCM0_vld_out(DCM0_vld_out),
        .DCM1_brake(DCM1_brake),
        .DCM1_dir(DCM1_dir),
        .DCM1_pwm_frq(DCM1_pwm_frq),
        .DCM1_pwm_val(DCM1_pwm_val),
        .DCM1_run(DCM1_run),
        .DCM1_status(DCM1_status),
        .DCM1_vld_in(DCM1_vld_in),
        .DCM1_vld_out(DCM1_vld_out),
        .DCM2_brake(DCM2_brake),
        .DCM2_dir(DCM2_dir),
        .DCM2_pwm_frq(DCM2_pwm_frq),
        .DCM2_pwm_val(DCM2_pwm_val),
        .DCM2_run(DCM2_run),
        .DCM2_status(DCM2_status),
        .DCM2_vld_in(DCM2_vld_in),
        .DCM2_vld_out(DCM2_vld_out),
        .DCM3_brake(DCM3_brake),
        .DCM3_dir(DCM3_dir),
        .DCM3_pwm_frq(DCM3_pwm_frq),
        .DCM3_pwm_val(DCM3_pwm_val),
        .DCM3_run(DCM3_run),
        .DCM3_status(DCM3_status),
        .DCM3_vld_in(DCM3_vld_in),
        .DCM3_vld_out(DCM3_vld_out),
        .DCM4_brake(DCM4_brake),
        .DCM4_dir(DCM4_dir),
        .DCM4_pwm_frq(DCM4_pwm_frq),
        .DCM4_pwm_val(DCM4_pwm_val),
        .DCM4_run(DCM4_run),
        .DCM4_status(DCM4_status),
        .DCM4_vld_in(DCM4_vld_in),
        .DCM4_vld_out(DCM4_vld_out),
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

module S7_DCM_regs_0_0_DCM_regs_v1_0_S00_AXI
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    DCM0_pwm_val,
    DCM0_pwm_frq,
    DCM0_vld_out,
    DCM1_pwm_val,
    DCM1_pwm_frq,
    DCM1_vld_out,
    DCM2_pwm_val,
    DCM2_pwm_frq,
    DCM2_vld_out,
    DCM3_pwm_val,
    DCM3_pwm_frq,
    DCM3_vld_out,
    DCM4_pwm_val,
    DCM4_pwm_frq,
    DCM4_vld_out,
    S_AXI_ARREADY,
    DCM4_brake,
    DCM4_run,
    DCM4_dir,
    DCM3_brake,
    DCM3_run,
    DCM3_dir,
    DCM2_brake,
    DCM2_run,
    DCM2_dir,
    DCM1_brake,
    DCM1_run,
    DCM1_dir,
    DCM0_brake,
    DCM0_run,
    DCM0_dir,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_aresetn,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wdata,
    DCM0_status,
    DCM0_vld_in,
    DCM1_status,
    DCM1_vld_in,
    DCM2_status,
    DCM2_vld_in,
    DCM3_status,
    DCM3_vld_in,
    DCM4_status,
    DCM4_vld_in,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output [7:0]DCM0_pwm_val;
  output [6:0]DCM0_pwm_frq;
  output DCM0_vld_out;
  output [7:0]DCM1_pwm_val;
  output [6:0]DCM1_pwm_frq;
  output DCM1_vld_out;
  output [7:0]DCM2_pwm_val;
  output [6:0]DCM2_pwm_frq;
  output DCM2_vld_out;
  output [7:0]DCM3_pwm_val;
  output [6:0]DCM3_pwm_frq;
  output DCM3_vld_out;
  output [7:0]DCM4_pwm_val;
  output [6:0]DCM4_pwm_frq;
  output DCM4_vld_out;
  output S_AXI_ARREADY;
  output DCM4_brake;
  output DCM4_run;
  output DCM4_dir;
  output DCM3_brake;
  output DCM3_run;
  output DCM3_dir;
  output DCM2_brake;
  output DCM2_run;
  output DCM2_dir;
  output DCM1_brake;
  output DCM1_run;
  output DCM1_dir;
  output DCM0_brake;
  output DCM0_run;
  output DCM0_dir;
  output [7:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_aresetn;
  input s00_axi_aclk;
  input [4:0]s00_axi_awaddr;
  input [7:0]s00_axi_wdata;
  input [1:0]DCM0_status;
  input DCM0_vld_in;
  input [1:0]DCM1_status;
  input DCM1_vld_in;
  input [1:0]DCM2_status;
  input DCM2_vld_in;
  input [1:0]DCM3_status;
  input DCM3_vld_in;
  input [1:0]DCM4_status;
  input DCM4_vld_in;
  input [4:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input s00_axi_bready;
  input s00_axi_rready;

  wire DCM0_brake;
  wire DCM0_dir;
  wire [6:0]DCM0_pwm_frq;
  wire [7:0]DCM0_pwm_val;
  wire DCM0_run;
  wire [1:0]DCM0_status;
  wire DCM0_vld_in;
  wire DCM0_vld_out;
  wire DCM0_vld_out_i_1_n_0;
  wire DCM0_vld_out_i_2_n_0;
  wire DCM1_brake;
  wire DCM1_dir;
  wire [6:0]DCM1_pwm_frq;
  wire [7:0]DCM1_pwm_val;
  wire DCM1_run;
  wire [1:0]DCM1_status;
  wire DCM1_vld_in;
  wire DCM1_vld_out;
  wire DCM1_vld_out_i_1_n_0;
  wire DCM2_brake;
  wire DCM2_dir;
  wire [6:0]DCM2_pwm_frq;
  wire [7:0]DCM2_pwm_val;
  wire DCM2_run;
  wire [1:0]DCM2_status;
  wire DCM2_vld_in;
  wire DCM2_vld_out;
  wire DCM2_vld_out_i_1_n_0;
  wire DCM3_brake;
  wire DCM3_dir;
  wire [6:0]DCM3_pwm_frq;
  wire [7:0]DCM3_pwm_val;
  wire DCM3_run;
  wire [1:0]DCM3_status;
  wire DCM3_vld_in;
  wire DCM3_vld_out;
  wire DCM3_vld_out_i_1_n_0;
  wire DCM4_brake;
  wire DCM4_dir;
  wire [6:0]DCM4_pwm_frq;
  wire [7:0]DCM4_pwm_val;
  wire DCM4_run;
  wire [1:0]DCM4_status;
  wire DCM4_vld_in;
  wire DCM4_vld_out;
  wire DCM4_vld_out_i_1_n_0;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire axi_arready0;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_10_n_0 ;
  wire \axi_rdata[0]_i_11_n_0 ;
  wire \axi_rdata[0]_i_12_n_0 ;
  wire \axi_rdata[0]_i_13_n_0 ;
  wire \axi_rdata[0]_i_6_n_0 ;
  wire \axi_rdata[0]_i_7_n_0 ;
  wire \axi_rdata[0]_i_8_n_0 ;
  wire \axi_rdata[0]_i_9_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[1]_i_4_n_0 ;
  wire \axi_rdata[1]_i_6_n_0 ;
  wire \axi_rdata[1]_i_7_n_0 ;
  wire \axi_rdata[1]_i_8_n_0 ;
  wire \axi_rdata[1]_i_9_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[2]_i_3_n_0 ;
  wire \axi_rdata[2]_i_4_n_0 ;
  wire \axi_rdata[2]_i_6_n_0 ;
  wire \axi_rdata[2]_i_7_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[3]_i_3_n_0 ;
  wire \axi_rdata[3]_i_4_n_0 ;
  wire \axi_rdata[3]_i_6_n_0 ;
  wire \axi_rdata[3]_i_7_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[4]_i_3_n_0 ;
  wire \axi_rdata[4]_i_4_n_0 ;
  wire \axi_rdata[4]_i_6_n_0 ;
  wire \axi_rdata[4]_i_7_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[5]_i_3_n_0 ;
  wire \axi_rdata[5]_i_4_n_0 ;
  wire \axi_rdata[5]_i_6_n_0 ;
  wire \axi_rdata[5]_i_7_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[6]_i_3_n_0 ;
  wire \axi_rdata[6]_i_4_n_0 ;
  wire \axi_rdata[6]_i_6_n_0 ;
  wire \axi_rdata[6]_i_7_n_0 ;
  wire \axi_rdata[7]_i_3_n_0 ;
  wire \axi_rdata[7]_i_4_n_0 ;
  wire \axi_rdata[7]_i_5_n_0 ;
  wire \axi_rdata_reg[0]_i_2_n_0 ;
  wire \axi_rdata_reg[0]_i_3_n_0 ;
  wire \axi_rdata_reg[0]_i_4_n_0 ;
  wire \axi_rdata_reg[0]_i_5_n_0 ;
  wire \axi_rdata_reg[1]_i_3_n_0 ;
  wire \axi_rdata_reg[1]_i_5_n_0 ;
  wire \axi_rdata_reg[2]_i_5_n_0 ;
  wire \axi_rdata_reg[3]_i_5_n_0 ;
  wire \axi_rdata_reg[4]_i_5_n_0 ;
  wire \axi_rdata_reg[5]_i_5_n_0 ;
  wire \axi_rdata_reg[6]_i_5_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire p_0_in;
  wire [4:0]p_0_in_0;
  wire [7:0]reg_data_out;
  wire s00_axi_aclk;
  wire [4:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [4:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [7:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [7:0]s00_axi_wdata;
  wire s00_axi_wvalid;
  wire [4:0]sel0;
  wire \slv_reg0[7]_i_2_n_0 ;
  wire \slv_reg10[0]_i_1_n_0 ;
  wire \slv_reg10[0]_i_2_n_0 ;
  wire [1:0]slv_reg11;
  wire \slv_reg11[0]_i_1_n_0 ;
  wire \slv_reg11[1]_i_1_n_0 ;
  wire \slv_reg12[7]_i_1_n_0 ;
  wire \slv_reg13[6]_i_1_n_0 ;
  wire \slv_reg14[0]_i_1_n_0 ;
  wire \slv_reg15[0]_i_1_n_0 ;
  wire \slv_reg15[0]_i_2_n_0 ;
  wire \slv_reg16[0]_i_1_n_0 ;
  wire \slv_reg16[0]_i_2_n_0 ;
  wire [1:0]slv_reg17;
  wire \slv_reg17[0]_i_1_n_0 ;
  wire \slv_reg17[1]_i_1_n_0 ;
  wire \slv_reg18[7]_i_1_n_0 ;
  wire \slv_reg19[6]_i_1_n_0 ;
  wire \slv_reg1[6]_i_1_n_0 ;
  wire \slv_reg20[0]_i_1_n_0 ;
  wire \slv_reg20[0]_i_2_n_0 ;
  wire \slv_reg21[0]_i_1_n_0 ;
  wire \slv_reg21[0]_i_2_n_0 ;
  wire \slv_reg21[0]_i_3_n_0 ;
  wire \slv_reg22[0]_i_1_n_0 ;
  wire \slv_reg22[0]_i_2_n_0 ;
  wire [1:0]slv_reg23;
  wire \slv_reg23[0]_i_1_n_0 ;
  wire \slv_reg23[1]_i_1_n_0 ;
  wire \slv_reg24[7]_i_1_n_0 ;
  wire \slv_reg25[6]_i_1_n_0 ;
  wire \slv_reg26[0]_i_1_n_0 ;
  wire \slv_reg26[0]_i_2_n_0 ;
  wire \slv_reg27[0]_i_1_n_0 ;
  wire \slv_reg27[0]_i_2_n_0 ;
  wire \slv_reg28[0]_i_1_n_0 ;
  wire [1:0]slv_reg29;
  wire \slv_reg29[0]_i_1_n_0 ;
  wire \slv_reg29[1]_i_1_n_0 ;
  wire \slv_reg2[0]_i_1_n_0 ;
  wire \slv_reg2[0]_i_2_n_0 ;
  wire \slv_reg2[0]_i_3_n_0 ;
  wire \slv_reg3[0]_i_1_n_0 ;
  wire \slv_reg3[0]_i_2_n_0 ;
  wire \slv_reg3[0]_i_3_n_0 ;
  wire \slv_reg4[0]_i_1_n_0 ;
  wire \slv_reg4[0]_i_2_n_0 ;
  wire \slv_reg4[0]_i_3_n_0 ;
  wire [1:0]slv_reg5;
  wire \slv_reg5[0]_i_1_n_0 ;
  wire \slv_reg5[1]_i_1_n_0 ;
  wire \slv_reg6[7]_i_1_n_0 ;
  wire \slv_reg7[6]_i_1_n_0 ;
  wire \slv_reg8[0]_i_1_n_0 ;
  wire \slv_reg8[0]_i_2_n_0 ;
  wire \slv_reg9[0]_i_1_n_0 ;
  wire \slv_reg9[0]_i_2_n_0 ;
  wire slv_reg_rden;
  wire slv_reg_wren__2;

  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    DCM0_vld_out_i_1
       (.I0(s00_axi_aresetn),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_AWREADY),
        .I4(s00_axi_awvalid),
        .O(DCM0_vld_out_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h0000001F)) 
    DCM0_vld_out_i_2
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[3]),
        .I4(p_0_in_0[4]),
        .O(DCM0_vld_out_i_2_n_0));
  FDRE DCM0_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(DCM0_vld_out_i_2_n_0),
        .Q(DCM0_vld_out),
        .R(DCM0_vld_out_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000C70)) 
    DCM1_vld_out_i_1
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[2]),
        .I4(p_0_in_0[4]),
        .O(DCM1_vld_out_i_1_n_0));
  FDRE DCM1_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(DCM1_vld_out_i_1_n_0),
        .Q(DCM1_vld_out),
        .R(DCM0_vld_out_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00A001A0)) 
    DCM2_vld_out_i_1
       (.I0(p_0_in_0[2]),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[4]),
        .I4(p_0_in_0[1]),
        .O(DCM2_vld_out_i_1_n_0));
  FDRE DCM2_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(DCM2_vld_out_i_1_n_0),
        .Q(DCM2_vld_out),
        .R(DCM0_vld_out_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00006E00)) 
    DCM3_vld_out_i_1
       (.I0(p_0_in_0[2]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[4]),
        .I4(p_0_in_0[3]),
        .O(DCM3_vld_out_i_1_n_0));
  FDRE DCM3_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(DCM3_vld_out_i_1_n_0),
        .Q(DCM3_vld_out),
        .R(DCM0_vld_out_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h1F000000)) 
    DCM4_vld_out_i_1
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[3]),
        .I4(p_0_in_0[4]),
        .O(DCM4_vld_out_i_1_n_0));
  FDRE DCM4_vld_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(DCM4_vld_out_i_1_n_0),
        .Q(DCM4_vld_out),
        .R(DCM0_vld_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hBFFFBF00BF00BF00)) 
    aw_en_i_1
       (.I0(S_AXI_AWREADY),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
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
        .Q(sel0[0]),
        .S(p_0_in));
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[1]),
        .Q(sel0[1]),
        .S(p_0_in));
  FDSE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[2]),
        .Q(sel0[2]),
        .S(p_0_in));
  FDSE \axi_araddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[3]),
        .Q(sel0[3]),
        .S(p_0_in));
  FDSE \axi_araddr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[4]),
        .Q(sel0[4]),
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
        .Q(p_0_in_0[0]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[1]),
        .Q(p_0_in_0[1]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[2]),
        .Q(p_0_in_0[2]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[3]),
        .Q(p_0_in_0[3]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[4]),
        .Q(p_0_in_0[4]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_1
       (.I0(aw_en_reg_n_0),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata_reg[0]_i_2_n_0 ),
        .I1(\axi_rdata_reg[0]_i_3_n_0 ),
        .I2(sel0[4]),
        .I3(\axi_rdata_reg[0]_i_4_n_0 ),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[0]_i_5_n_0 ),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_10 
       (.I0(slv_reg11[0]),
        .I1(DCM1_brake),
        .I2(sel0[1]),
        .I3(DCM1_run),
        .I4(sel0[0]),
        .I5(DCM1_dir),
        .O(\axi_rdata[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_11 
       (.I0(DCM2_run),
        .I1(DCM2_dir),
        .I2(sel0[1]),
        .I3(DCM2_pwm_frq[0]),
        .I4(sel0[0]),
        .I5(DCM2_pwm_val[0]),
        .O(\axi_rdata[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_12 
       (.I0(DCM0_run),
        .I1(DCM0_dir),
        .I2(sel0[1]),
        .I3(DCM0_pwm_frq[0]),
        .I4(sel0[0]),
        .I5(DCM0_pwm_val[0]),
        .O(\axi_rdata[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_13 
       (.I0(DCM1_pwm_frq[0]),
        .I1(DCM1_pwm_val[0]),
        .I2(sel0[1]),
        .I3(slv_reg5[0]),
        .I4(sel0[0]),
        .I5(DCM0_brake),
        .O(\axi_rdata[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_6 
       (.I0(DCM4_run),
        .I1(DCM4_dir),
        .I2(sel0[1]),
        .I3(DCM4_pwm_frq[0]),
        .I4(sel0[0]),
        .I5(DCM4_pwm_val[0]),
        .O(\axi_rdata[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[0]_i_7 
       (.I0(DCM4_brake),
        .I1(sel0[0]),
        .I2(slv_reg29[0]),
        .I3(sel0[1]),
        .O(\axi_rdata[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_8 
       (.I0(DCM3_pwm_frq[0]),
        .I1(DCM3_pwm_val[0]),
        .I2(sel0[1]),
        .I3(slv_reg17[0]),
        .I4(sel0[0]),
        .I5(DCM2_brake),
        .O(\axi_rdata[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_9 
       (.I0(slv_reg23[0]),
        .I1(DCM3_brake),
        .I2(sel0[1]),
        .I3(DCM3_run),
        .I4(sel0[0]),
        .I5(DCM3_dir),
        .O(\axi_rdata[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata[1]_i_2_n_0 ),
        .I1(\axi_rdata_reg[1]_i_3_n_0 ),
        .I2(sel0[4]),
        .I3(\axi_rdata[1]_i_4_n_0 ),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[1]_i_5_n_0 ),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'h00000000BB308830)) 
    \axi_rdata[1]_i_2 
       (.I0(slv_reg29[1]),
        .I1(sel0[2]),
        .I2(DCM4_pwm_val[1]),
        .I3(sel0[0]),
        .I4(DCM4_pwm_frq[1]),
        .I5(sel0[1]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F000000C0A0C0A0)) 
    \axi_rdata[1]_i_4 
       (.I0(DCM2_pwm_val[1]),
        .I1(DCM2_pwm_frq[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(slv_reg11[1]),
        .I5(sel0[1]),
        .O(\axi_rdata[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[1]_i_6 
       (.I0(DCM3_pwm_frq[1]),
        .I1(DCM3_pwm_val[1]),
        .I2(sel0[1]),
        .I3(slv_reg17[1]),
        .I4(sel0[0]),
        .O(\axi_rdata[1]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \axi_rdata[1]_i_7 
       (.I0(sel0[0]),
        .I1(slv_reg23[1]),
        .I2(sel0[1]),
        .O(\axi_rdata[1]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[1]_i_8 
       (.I0(DCM0_pwm_val[1]),
        .I1(sel0[0]),
        .I2(DCM0_pwm_frq[1]),
        .I3(sel0[1]),
        .O(\axi_rdata[1]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \axi_rdata[1]_i_9 
       (.I0(DCM1_pwm_frq[1]),
        .I1(DCM1_pwm_val[1]),
        .I2(sel0[1]),
        .I3(slv_reg5[1]),
        .I4(sel0[0]),
        .O(\axi_rdata[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_rdata[2]_i_2_n_0 ),
        .I1(\axi_rdata[2]_i_3_n_0 ),
        .I2(sel0[4]),
        .I3(\axi_rdata[2]_i_4_n_0 ),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[2]_i_5_n_0 ),
        .O(reg_data_out[2]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[2]_i_2 
       (.I0(sel0[1]),
        .I1(DCM4_pwm_frq[2]),
        .I2(sel0[0]),
        .I3(DCM4_pwm_val[2]),
        .I4(sel0[2]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00008A80)) 
    \axi_rdata[2]_i_3 
       (.I0(sel0[1]),
        .I1(DCM3_pwm_frq[2]),
        .I2(sel0[0]),
        .I3(DCM3_pwm_val[2]),
        .I4(sel0[2]),
        .O(\axi_rdata[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h45400000)) 
    \axi_rdata[2]_i_4 
       (.I0(sel0[1]),
        .I1(DCM2_pwm_frq[2]),
        .I2(sel0[0]),
        .I3(DCM2_pwm_val[2]),
        .I4(sel0[2]),
        .O(\axi_rdata[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[2]_i_6 
       (.I0(DCM0_pwm_val[2]),
        .I1(sel0[0]),
        .I2(DCM0_pwm_frq[2]),
        .I3(sel0[1]),
        .O(\axi_rdata[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \axi_rdata[2]_i_7 
       (.I0(DCM1_pwm_val[2]),
        .I1(sel0[0]),
        .I2(DCM1_pwm_frq[2]),
        .I3(sel0[1]),
        .O(\axi_rdata[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_1 
       (.I0(\axi_rdata[3]_i_2_n_0 ),
        .I1(\axi_rdata[3]_i_3_n_0 ),
        .I2(sel0[4]),
        .I3(\axi_rdata[3]_i_4_n_0 ),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[3]_i_5_n_0 ),
        .O(reg_data_out[3]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[3]_i_2 
       (.I0(sel0[1]),
        .I1(DCM4_pwm_frq[3]),
        .I2(sel0[0]),
        .I3(DCM4_pwm_val[3]),
        .I4(sel0[2]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00008A80)) 
    \axi_rdata[3]_i_3 
       (.I0(sel0[1]),
        .I1(DCM3_pwm_frq[3]),
        .I2(sel0[0]),
        .I3(DCM3_pwm_val[3]),
        .I4(sel0[2]),
        .O(\axi_rdata[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h45400000)) 
    \axi_rdata[3]_i_4 
       (.I0(sel0[1]),
        .I1(DCM2_pwm_frq[3]),
        .I2(sel0[0]),
        .I3(DCM2_pwm_val[3]),
        .I4(sel0[2]),
        .O(\axi_rdata[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[3]_i_6 
       (.I0(DCM0_pwm_val[3]),
        .I1(sel0[0]),
        .I2(DCM0_pwm_frq[3]),
        .I3(sel0[1]),
        .O(\axi_rdata[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \axi_rdata[3]_i_7 
       (.I0(DCM1_pwm_val[3]),
        .I1(sel0[0]),
        .I2(DCM1_pwm_frq[3]),
        .I3(sel0[1]),
        .O(\axi_rdata[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_rdata[4]_i_2_n_0 ),
        .I1(\axi_rdata[4]_i_3_n_0 ),
        .I2(sel0[4]),
        .I3(\axi_rdata[4]_i_4_n_0 ),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[4]_i_5_n_0 ),
        .O(reg_data_out[4]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[4]_i_2 
       (.I0(sel0[1]),
        .I1(DCM4_pwm_frq[4]),
        .I2(sel0[0]),
        .I3(DCM4_pwm_val[4]),
        .I4(sel0[2]),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00008A80)) 
    \axi_rdata[4]_i_3 
       (.I0(sel0[1]),
        .I1(DCM3_pwm_frq[4]),
        .I2(sel0[0]),
        .I3(DCM3_pwm_val[4]),
        .I4(sel0[2]),
        .O(\axi_rdata[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h45400000)) 
    \axi_rdata[4]_i_4 
       (.I0(sel0[1]),
        .I1(DCM2_pwm_frq[4]),
        .I2(sel0[0]),
        .I3(DCM2_pwm_val[4]),
        .I4(sel0[2]),
        .O(\axi_rdata[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[4]_i_6 
       (.I0(DCM0_pwm_val[4]),
        .I1(sel0[0]),
        .I2(DCM0_pwm_frq[4]),
        .I3(sel0[1]),
        .O(\axi_rdata[4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \axi_rdata[4]_i_7 
       (.I0(DCM1_pwm_val[4]),
        .I1(sel0[0]),
        .I2(DCM1_pwm_frq[4]),
        .I3(sel0[1]),
        .O(\axi_rdata[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_1 
       (.I0(\axi_rdata[5]_i_2_n_0 ),
        .I1(\axi_rdata[5]_i_3_n_0 ),
        .I2(sel0[4]),
        .I3(\axi_rdata[5]_i_4_n_0 ),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[5]_i_5_n_0 ),
        .O(reg_data_out[5]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[5]_i_2 
       (.I0(sel0[1]),
        .I1(DCM4_pwm_frq[5]),
        .I2(sel0[0]),
        .I3(DCM4_pwm_val[5]),
        .I4(sel0[2]),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00008A80)) 
    \axi_rdata[5]_i_3 
       (.I0(sel0[1]),
        .I1(DCM3_pwm_frq[5]),
        .I2(sel0[0]),
        .I3(DCM3_pwm_val[5]),
        .I4(sel0[2]),
        .O(\axi_rdata[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h45400000)) 
    \axi_rdata[5]_i_4 
       (.I0(sel0[1]),
        .I1(DCM2_pwm_frq[5]),
        .I2(sel0[0]),
        .I3(DCM2_pwm_val[5]),
        .I4(sel0[2]),
        .O(\axi_rdata[5]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[5]_i_6 
       (.I0(DCM0_pwm_val[5]),
        .I1(sel0[0]),
        .I2(DCM0_pwm_frq[5]),
        .I3(sel0[1]),
        .O(\axi_rdata[5]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \axi_rdata[5]_i_7 
       (.I0(DCM1_pwm_val[5]),
        .I1(sel0[0]),
        .I2(DCM1_pwm_frq[5]),
        .I3(sel0[1]),
        .O(\axi_rdata[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_1 
       (.I0(\axi_rdata[6]_i_2_n_0 ),
        .I1(\axi_rdata[6]_i_3_n_0 ),
        .I2(sel0[4]),
        .I3(\axi_rdata[6]_i_4_n_0 ),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[6]_i_5_n_0 ),
        .O(reg_data_out[6]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \axi_rdata[6]_i_2 
       (.I0(sel0[1]),
        .I1(DCM4_pwm_frq[6]),
        .I2(sel0[0]),
        .I3(DCM4_pwm_val[6]),
        .I4(sel0[2]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00008A80)) 
    \axi_rdata[6]_i_3 
       (.I0(sel0[1]),
        .I1(DCM3_pwm_frq[6]),
        .I2(sel0[0]),
        .I3(DCM3_pwm_val[6]),
        .I4(sel0[2]),
        .O(\axi_rdata[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h45400000)) 
    \axi_rdata[6]_i_4 
       (.I0(sel0[1]),
        .I1(DCM2_pwm_frq[6]),
        .I2(sel0[0]),
        .I3(DCM2_pwm_val[6]),
        .I4(sel0[2]),
        .O(\axi_rdata[6]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[6]_i_6 
       (.I0(DCM0_pwm_val[6]),
        .I1(sel0[0]),
        .I2(DCM0_pwm_frq[6]),
        .I3(sel0[1]),
        .O(\axi_rdata[6]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \axi_rdata[6]_i_7 
       (.I0(DCM1_pwm_val[6]),
        .I1(sel0[0]),
        .I2(DCM1_pwm_frq[6]),
        .I3(sel0[1]),
        .O(\axi_rdata[6]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[7]_i_1 
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .O(slv_reg_rden));
  LUT6 #(
    .INIT(64'h0400FFFF04000000)) 
    \axi_rdata[7]_i_3 
       (.I0(sel0[1]),
        .I1(DCM2_pwm_val[7]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .I5(\axi_rdata[7]_i_5_n_0 ),
        .O(\axi_rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000003808)) 
    \axi_rdata[7]_i_4 
       (.I0(DCM4_pwm_val[7]),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .I3(DCM3_pwm_val[7]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\axi_rdata[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h08080300)) 
    \axi_rdata[7]_i_5 
       (.I0(DCM1_pwm_val[7]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(DCM0_pwm_val[7]),
        .I4(sel0[1]),
        .O(\axi_rdata[7]_i_5_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[0]_i_2 
       (.I0(\axi_rdata[0]_i_6_n_0 ),
        .I1(\axi_rdata[0]_i_7_n_0 ),
        .O(\axi_rdata_reg[0]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[0]_i_3 
       (.I0(\axi_rdata[0]_i_8_n_0 ),
        .I1(\axi_rdata[0]_i_9_n_0 ),
        .O(\axi_rdata_reg[0]_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[0]_i_4 
       (.I0(\axi_rdata[0]_i_10_n_0 ),
        .I1(\axi_rdata[0]_i_11_n_0 ),
        .O(\axi_rdata_reg[0]_i_4_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[0]_i_5 
       (.I0(\axi_rdata[0]_i_12_n_0 ),
        .I1(\axi_rdata[0]_i_13_n_0 ),
        .O(\axi_rdata_reg[0]_i_5_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[1]_i_3 
       (.I0(\axi_rdata[1]_i_6_n_0 ),
        .I1(\axi_rdata[1]_i_7_n_0 ),
        .O(\axi_rdata_reg[1]_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[1]_i_5 
       (.I0(\axi_rdata[1]_i_8_n_0 ),
        .I1(\axi_rdata[1]_i_9_n_0 ),
        .O(\axi_rdata_reg[1]_i_5_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[2]_i_5 
       (.I0(\axi_rdata[2]_i_6_n_0 ),
        .I1(\axi_rdata[2]_i_7_n_0 ),
        .O(\axi_rdata_reg[2]_i_5_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[3]_i_5 
       (.I0(\axi_rdata[3]_i_6_n_0 ),
        .I1(\axi_rdata[3]_i_7_n_0 ),
        .O(\axi_rdata_reg[3]_i_5_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[4]_i_5 
       (.I0(\axi_rdata[4]_i_6_n_0 ),
        .I1(\axi_rdata[4]_i_7_n_0 ),
        .O(\axi_rdata_reg[4]_i_5_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[5]_i_5 
       (.I0(\axi_rdata[5]_i_6_n_0 ),
        .I1(\axi_rdata[5]_i_7_n_0 ),
        .O(\axi_rdata_reg[5]_i_5_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[6]_i_5 
       (.I0(\axi_rdata[6]_i_6_n_0 ),
        .I1(\axi_rdata[6]_i_7_n_0 ),
        .O(\axi_rdata_reg[6]_i_5_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[7]_i_2 
       (.I0(\axi_rdata[7]_i_3_n_0 ),
        .I1(\axi_rdata[7]_i_4_n_0 ),
        .O(reg_data_out[7]),
        .S(sel0[4]));
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
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(aw_en_reg_n_0),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
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
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \slv_reg0[7]_i_2 
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[4]),
        .I2(p_0_in_0[1]),
        .I3(slv_reg_wren__2),
        .I4(p_0_in_0[3]),
        .I5(p_0_in_0[2]),
        .O(\slv_reg0[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[7]_i_3 
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__2));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_2_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(DCM0_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_2_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(DCM0_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_2_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(DCM0_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_2_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(DCM0_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_2_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(DCM0_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_2_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(DCM0_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_2_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(DCM0_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_2_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(DCM0_pwm_val[7]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \slv_reg10[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg3[0]_i_2_n_0 ),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[3]),
        .I4(\slv_reg10[0]_i_2_n_0 ),
        .I5(DCM1_brake),
        .O(\slv_reg10[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \slv_reg10[0]_i_2 
       (.I0(p_0_in_0[0]),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_AWREADY),
        .I4(s00_axi_awvalid),
        .O(\slv_reg10[0]_i_2_n_0 ));
  FDRE \slv_reg10_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg10[0]_i_1_n_0 ),
        .Q(DCM1_brake),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg11[0]_i_1 
       (.I0(DCM1_status[0]),
        .I1(DCM1_vld_in),
        .I2(slv_reg11[0]),
        .O(\slv_reg11[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg11[1]_i_1 
       (.I0(DCM1_status[1]),
        .I1(DCM1_vld_in),
        .I2(slv_reg11[1]),
        .O(\slv_reg11[1]_i_1_n_0 ));
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
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \slv_reg12[7]_i_1 
       (.I0(p_0_in_0[1]),
        .I1(p_0_in_0[4]),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[3]),
        .I4(p_0_in_0[0]),
        .I5(slv_reg_wren__2),
        .O(\slv_reg12[7]_i_1_n_0 ));
  FDRE \slv_reg12_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(DCM2_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg12_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(DCM2_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg12_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(DCM2_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg12_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(DCM2_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg12_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(DCM2_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg12_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(DCM2_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg12_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(DCM2_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg12_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(DCM2_pwm_val[7]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \slv_reg13[6]_i_1 
       (.I0(p_0_in_0[1]),
        .I1(p_0_in_0[4]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[0]),
        .I4(slv_reg_wren__2),
        .I5(p_0_in_0[2]),
        .O(\slv_reg13[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg13_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[6]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(DCM2_pwm_frq[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg13_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[6]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(DCM2_pwm_frq[1]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \slv_reg13_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[6]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(DCM2_pwm_frq[2]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg13_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[6]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(DCM2_pwm_frq[3]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \slv_reg13_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[6]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(DCM2_pwm_frq[4]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg13_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[6]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(DCM2_pwm_frq[5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg13_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[6]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(DCM2_pwm_frq[6]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \slv_reg14[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg2[0]_i_2_n_0 ),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[3]),
        .I4(\slv_reg4[0]_i_3_n_0 ),
        .I5(DCM2_dir),
        .O(\slv_reg14[0]_i_1_n_0 ));
  FDRE \slv_reg14_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg14[0]_i_1_n_0 ),
        .Q(DCM2_dir),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \slv_reg15[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(slv_reg_wren__2),
        .I2(p_0_in_0[4]),
        .I3(\slv_reg15[0]_i_2_n_0 ),
        .I4(DCM2_run),
        .O(\slv_reg15[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \slv_reg15[0]_i_2 
       (.I0(p_0_in_0[2]),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .O(\slv_reg15[0]_i_2_n_0 ));
  FDRE \slv_reg15_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg15[0]_i_1_n_0 ),
        .Q(DCM2_run),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \slv_reg16[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg16[0]_i_2_n_0 ),
        .I2(p_0_in_0[4]),
        .I3(slv_reg_wren__2),
        .I4(\slv_reg2[0]_i_3_n_0 ),
        .I5(DCM2_brake),
        .O(\slv_reg16[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \slv_reg16[0]_i_2 
       (.I0(p_0_in_0[1]),
        .I1(p_0_in_0[0]),
        .O(\slv_reg16[0]_i_2_n_0 ));
  FDRE \slv_reg16_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg16[0]_i_1_n_0 ),
        .Q(DCM2_brake),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg17[0]_i_1 
       (.I0(DCM2_status[0]),
        .I1(DCM2_vld_in),
        .I2(slv_reg17[0]),
        .O(\slv_reg17[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg17[1]_i_1 
       (.I0(DCM2_status[1]),
        .I1(DCM2_vld_in),
        .I2(slv_reg17[1]),
        .O(\slv_reg17[1]_i_1_n_0 ));
  FDRE \slv_reg17_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg17[0]_i_1_n_0 ),
        .Q(slv_reg17[0]),
        .R(p_0_in));
  FDRE \slv_reg17_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg17[1]_i_1_n_0 ),
        .Q(slv_reg17[1]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \slv_reg18[7]_i_1 
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[1]),
        .I3(slv_reg_wren__2),
        .I4(p_0_in_0[3]),
        .I5(p_0_in_0[4]),
        .O(\slv_reg18[7]_i_1_n_0 ));
  FDRE \slv_reg18_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(DCM3_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg18_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(DCM3_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg18_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(DCM3_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg18_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(DCM3_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg18_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(DCM3_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg18_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(DCM3_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg18_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(DCM3_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg18_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(DCM3_pwm_val[7]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \slv_reg19[6]_i_1 
       (.I0(p_0_in_0[2]),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[4]),
        .I5(slv_reg_wren__2),
        .O(\slv_reg19[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg19_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[6]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(DCM3_pwm_frq[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg19_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[6]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(DCM3_pwm_frq[1]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \slv_reg19_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[6]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(DCM3_pwm_frq[2]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg19_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[6]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(DCM3_pwm_frq[3]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \slv_reg19_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[6]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(DCM3_pwm_frq[4]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg19_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[6]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(DCM3_pwm_frq[5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg19_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[6]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(DCM3_pwm_frq[6]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \slv_reg1[6]_i_1 
       (.I0(p_0_in_0[1]),
        .I1(p_0_in_0[4]),
        .I2(slv_reg_wren__2),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[3]),
        .I5(p_0_in_0[2]),
        .O(\slv_reg1[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[6]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(DCM0_pwm_frq[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[6]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(DCM0_pwm_frq[1]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[6]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(DCM0_pwm_frq[2]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[6]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(DCM0_pwm_frq[3]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[6]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(DCM0_pwm_frq[4]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[6]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(DCM0_pwm_frq[5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[6]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(DCM0_pwm_frq[6]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \slv_reg20[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg16[0]_i_2_n_0 ),
        .I2(p_0_in_0[2]),
        .I3(slv_reg_wren__2),
        .I4(\slv_reg20[0]_i_2_n_0 ),
        .I5(DCM3_dir),
        .O(\slv_reg20[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg20[0]_i_2 
       (.I0(p_0_in_0[3]),
        .I1(p_0_in_0[4]),
        .O(\slv_reg20[0]_i_2_n_0 ));
  FDRE \slv_reg20_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg20[0]_i_1_n_0 ),
        .Q(DCM3_dir),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \slv_reg21[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[3]),
        .I3(\slv_reg21[0]_i_2_n_0 ),
        .I4(\slv_reg21[0]_i_3_n_0 ),
        .I5(DCM3_run),
        .O(\slv_reg21[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \slv_reg21[0]_i_2 
       (.I0(s00_axi_wvalid),
        .I1(S_AXI_WREADY),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_awvalid),
        .I4(p_0_in_0[0]),
        .O(\slv_reg21[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \slv_reg21[0]_i_3 
       (.I0(p_0_in_0[4]),
        .I1(p_0_in_0[2]),
        .O(\slv_reg21[0]_i_3_n_0 ));
  FDRE \slv_reg21_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg21[0]_i_1_n_0 ),
        .Q(DCM3_run),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \slv_reg22[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[3]),
        .I3(\slv_reg22[0]_i_2_n_0 ),
        .I4(\slv_reg21[0]_i_3_n_0 ),
        .I5(DCM3_brake),
        .O(\slv_reg22[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \slv_reg22[0]_i_2 
       (.I0(p_0_in_0[1]),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_AWREADY),
        .I4(s00_axi_awvalid),
        .O(\slv_reg22[0]_i_2_n_0 ));
  FDRE \slv_reg22_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg22[0]_i_1_n_0 ),
        .Q(DCM3_brake),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg23[0]_i_1 
       (.I0(DCM3_status[0]),
        .I1(DCM3_vld_in),
        .I2(slv_reg23[0]),
        .O(\slv_reg23[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg23[1]_i_1 
       (.I0(DCM3_status[1]),
        .I1(DCM3_vld_in),
        .I2(slv_reg23[1]),
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
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \slv_reg24[7]_i_1 
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[3]),
        .I3(slv_reg_wren__2),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[4]),
        .O(\slv_reg24[7]_i_1_n_0 ));
  FDRE \slv_reg24_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(DCM4_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg24_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(DCM4_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg24_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(DCM4_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg24_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(DCM4_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg24_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(DCM4_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg24_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(DCM4_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg24_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(DCM4_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg24_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(DCM4_pwm_val[7]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \slv_reg25[6]_i_1 
       (.I0(p_0_in_0[1]),
        .I1(p_0_in_0[2]),
        .I2(slv_reg_wren__2),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[4]),
        .I5(p_0_in_0[3]),
        .O(\slv_reg25[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg25_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[6]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(DCM4_pwm_frq[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg25_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[6]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(DCM4_pwm_frq[1]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \slv_reg25_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[6]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(DCM4_pwm_frq[2]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg25_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[6]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(DCM4_pwm_frq[3]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \slv_reg25_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[6]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(DCM4_pwm_frq[4]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg25_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[6]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(DCM4_pwm_frq[5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg25_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[6]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(DCM4_pwm_frq[6]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \slv_reg26[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[2]),
        .I3(\slv_reg22[0]_i_2_n_0 ),
        .I4(\slv_reg26[0]_i_2_n_0 ),
        .I5(DCM4_dir),
        .O(\slv_reg26[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \slv_reg26[0]_i_2 
       (.I0(p_0_in_0[4]),
        .I1(p_0_in_0[3]),
        .O(\slv_reg26[0]_i_2_n_0 ));
  FDRE \slv_reg26_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg26[0]_i_1_n_0 ),
        .Q(DCM4_dir),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \slv_reg27[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(p_0_in_0[4]),
        .I2(p_0_in_0[2]),
        .I3(\slv_reg3[0]_i_3_n_0 ),
        .I4(\slv_reg27[0]_i_2_n_0 ),
        .I5(DCM4_run),
        .O(\slv_reg27[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \slv_reg27[0]_i_2 
       (.I0(p_0_in_0[3]),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_AWREADY),
        .I4(s00_axi_awvalid),
        .O(\slv_reg27[0]_i_2_n_0 ));
  FDRE \slv_reg27_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg27[0]_i_1_n_0 ),
        .Q(DCM4_run),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \slv_reg28[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[1]),
        .I3(\slv_reg27[0]_i_2_n_0 ),
        .I4(\slv_reg21[0]_i_3_n_0 ),
        .I5(DCM4_brake),
        .O(\slv_reg28[0]_i_1_n_0 ));
  FDRE \slv_reg28_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg28[0]_i_1_n_0 ),
        .Q(DCM4_brake),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg29[0]_i_1 
       (.I0(DCM4_status[0]),
        .I1(DCM4_vld_in),
        .I2(slv_reg29[0]),
        .O(\slv_reg29[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg29[1]_i_1 
       (.I0(DCM4_status[1]),
        .I1(DCM4_vld_in),
        .I2(slv_reg29[1]),
        .O(\slv_reg29[1]_i_1_n_0 ));
  FDRE \slv_reg29_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg29[0]_i_1_n_0 ),
        .Q(slv_reg29[0]),
        .R(p_0_in));
  FDRE \slv_reg29_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg29[1]_i_1_n_0 ),
        .Q(slv_reg29[1]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \slv_reg2[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg2[0]_i_2_n_0 ),
        .I2(slv_reg_wren__2),
        .I3(p_0_in_0[1]),
        .I4(\slv_reg2[0]_i_3_n_0 ),
        .I5(DCM0_dir),
        .O(\slv_reg2[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \slv_reg2[0]_i_2 
       (.I0(p_0_in_0[4]),
        .I1(p_0_in_0[0]),
        .O(\slv_reg2[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \slv_reg2[0]_i_3 
       (.I0(p_0_in_0[3]),
        .I1(p_0_in_0[2]),
        .O(\slv_reg2[0]_i_3_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg2[0]_i_1_n_0 ),
        .Q(DCM0_dir),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \slv_reg3[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg3[0]_i_2_n_0 ),
        .I2(\slv_reg3[0]_i_3_n_0 ),
        .I3(p_0_in_0[3]),
        .I4(slv_reg_wren__2),
        .I5(DCM0_run),
        .O(\slv_reg3[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \slv_reg3[0]_i_2 
       (.I0(p_0_in_0[4]),
        .I1(p_0_in_0[2]),
        .O(\slv_reg3[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \slv_reg3[0]_i_3 
       (.I0(p_0_in_0[1]),
        .I1(p_0_in_0[0]),
        .O(\slv_reg3[0]_i_3_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[0]_i_1_n_0 ),
        .Q(DCM0_run),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \slv_reg4[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg4[0]_i_2_n_0 ),
        .I2(\slv_reg4[0]_i_3_n_0 ),
        .I3(p_0_in_0[3]),
        .I4(p_0_in_0[0]),
        .I5(DCM0_brake),
        .O(\slv_reg4[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \slv_reg4[0]_i_2 
       (.I0(p_0_in_0[4]),
        .I1(p_0_in_0[1]),
        .O(\slv_reg4[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \slv_reg4[0]_i_3 
       (.I0(s00_axi_wvalid),
        .I1(S_AXI_WREADY),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_awvalid),
        .I4(p_0_in_0[2]),
        .O(\slv_reg4[0]_i_3_n_0 ));
  FDRE \slv_reg4_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg4[0]_i_1_n_0 ),
        .Q(DCM0_brake),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg5[0]_i_1 
       (.I0(DCM0_status[0]),
        .I1(DCM0_vld_in),
        .I2(slv_reg5[0]),
        .O(\slv_reg5[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg5[1]_i_1 
       (.I0(DCM0_status[1]),
        .I1(DCM0_vld_in),
        .I2(slv_reg5[1]),
        .O(\slv_reg5[1]_i_1_n_0 ));
  FDRE \slv_reg5_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5[0]_i_1_n_0 ),
        .Q(slv_reg5[0]),
        .R(p_0_in));
  FDRE \slv_reg5_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg5[1]_i_1_n_0 ),
        .Q(slv_reg5[1]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \slv_reg6[7]_i_1 
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[4]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[2]),
        .I4(p_0_in_0[3]),
        .I5(slv_reg_wren__2),
        .O(\slv_reg6[7]_i_1_n_0 ));
  FDRE \slv_reg6_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(DCM1_pwm_val[0]),
        .R(p_0_in));
  FDRE \slv_reg6_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(DCM1_pwm_val[1]),
        .R(p_0_in));
  FDRE \slv_reg6_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(DCM1_pwm_val[2]),
        .R(p_0_in));
  FDRE \slv_reg6_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(DCM1_pwm_val[3]),
        .R(p_0_in));
  FDRE \slv_reg6_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(DCM1_pwm_val[4]),
        .R(p_0_in));
  FDRE \slv_reg6_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(DCM1_pwm_val[5]),
        .R(p_0_in));
  FDRE \slv_reg6_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(DCM1_pwm_val[6]),
        .R(p_0_in));
  FDRE \slv_reg6_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(DCM1_pwm_val[7]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \slv_reg7[6]_i_1 
       (.I0(p_0_in_0[3]),
        .I1(p_0_in_0[4]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .I4(slv_reg_wren__2),
        .I5(p_0_in_0[2]),
        .O(\slv_reg7[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg7_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[6]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(DCM1_pwm_frq[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg7_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[6]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(DCM1_pwm_frq[1]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \slv_reg7_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[6]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(DCM1_pwm_frq[2]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg7_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[6]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(DCM1_pwm_frq[3]),
        .R(p_0_in));
  FDSE #(
    .INIT(1'b1)) 
    \slv_reg7_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[6]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(DCM1_pwm_frq[4]),
        .S(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg7_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[6]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(DCM1_pwm_frq[5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg7_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[6]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(DCM1_pwm_frq[6]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \slv_reg8[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg4[0]_i_2_n_0 ),
        .I2(\slv_reg8[0]_i_2_n_0 ),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[2]),
        .I5(DCM1_dir),
        .O(\slv_reg8[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \slv_reg8[0]_i_2 
       (.I0(s00_axi_wvalid),
        .I1(S_AXI_WREADY),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_awvalid),
        .I4(p_0_in_0[3]),
        .O(\slv_reg8[0]_i_2_n_0 ));
  FDRE \slv_reg8_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg8[0]_i_1_n_0 ),
        .Q(DCM1_dir),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \slv_reg9[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\slv_reg3[0]_i_2_n_0 ),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[0]),
        .I4(\slv_reg9[0]_i_2_n_0 ),
        .I5(DCM1_run),
        .O(\slv_reg9[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \slv_reg9[0]_i_2 
       (.I0(p_0_in_0[1]),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_AWREADY),
        .I4(s00_axi_awvalid),
        .O(\slv_reg9[0]_i_2_n_0 ));
  FDRE \slv_reg9_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg9[0]_i_1_n_0 ),
        .Q(DCM1_run),
        .R(p_0_in));
endmodule

(* CHECK_LICENSE_TYPE = "S7_DCM_regs_0_0,DCM_regs_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "DCM_regs_v1_0,Vivado 2019.1.3" *) 
(* NotValidForBitStream *)
module S7_DCM_regs_0_0
   (DCM0_pwm_val,
    DCM0_pwm_frq,
    DCM0_dir,
    DCM0_run,
    DCM0_brake,
    DCM0_status,
    DCM0_vld_in,
    DCM0_vld_out,
    DCM1_pwm_val,
    DCM1_pwm_frq,
    DCM1_dir,
    DCM1_run,
    DCM1_brake,
    DCM1_status,
    DCM1_vld_in,
    DCM1_vld_out,
    DCM2_pwm_val,
    DCM2_pwm_frq,
    DCM2_dir,
    DCM2_run,
    DCM2_brake,
    DCM2_status,
    DCM2_vld_in,
    DCM2_vld_out,
    DCM3_pwm_val,
    DCM3_pwm_frq,
    DCM3_dir,
    DCM3_run,
    DCM3_brake,
    DCM3_status,
    DCM3_vld_in,
    DCM3_vld_out,
    DCM4_pwm_val,
    DCM4_pwm_frq,
    DCM4_dir,
    DCM4_run,
    DCM4_brake,
    DCM4_status,
    DCM4_vld_in,
    DCM4_vld_out,
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
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM0 pwm_val" *) output [7:0]DCM0_pwm_val;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM0 pwm_frq" *) output [6:0]DCM0_pwm_frq;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM0 dir" *) output DCM0_dir;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM0 run" *) output DCM0_run;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM0 brake" *) output DCM0_brake;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM0 status" *) input [1:0]DCM0_status;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM0 vld_in" *) input DCM0_vld_in;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM0 vld_out" *) output DCM0_vld_out;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM1 pwm_val" *) output [7:0]DCM1_pwm_val;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM1 pwm_frq" *) output [6:0]DCM1_pwm_frq;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM1 dir" *) output DCM1_dir;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM1 run" *) output DCM1_run;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM1 brake" *) output DCM1_brake;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM1 status" *) input [1:0]DCM1_status;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM1 vld_in" *) input DCM1_vld_in;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM1 vld_out" *) output DCM1_vld_out;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM2 pwm_val" *) output [7:0]DCM2_pwm_val;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM2 pwm_frq" *) output [6:0]DCM2_pwm_frq;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM2 dir" *) output DCM2_dir;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM2 run" *) output DCM2_run;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM2 brake" *) output DCM2_brake;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM2 status" *) input [1:0]DCM2_status;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM2 vld_in" *) input DCM2_vld_in;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM2 vld_out" *) output DCM2_vld_out;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM3 pwm_val" *) output [7:0]DCM3_pwm_val;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM3 pwm_frq" *) output [6:0]DCM3_pwm_frq;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM3 dir" *) output DCM3_dir;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM3 run" *) output DCM3_run;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM3 brake" *) output DCM3_brake;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM3 status" *) input [1:0]DCM3_status;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM3 vld_in" *) input DCM3_vld_in;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM3 vld_out" *) output DCM3_vld_out;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM4 pwm_val" *) output [7:0]DCM4_pwm_val;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM4 pwm_frq" *) output [6:0]DCM4_pwm_frq;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM4 dir" *) output DCM4_dir;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM4 run" *) output DCM4_run;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM4 brake" *) output DCM4_brake;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM4 status" *) input [1:0]DCM4_status;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM4 vld_in" *) input DCM4_vld_in;
  (* x_interface_info = "mindway:user:DCM_reg_if:1.0 DCM4 vld_out" *) output DCM4_vld_out;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 40, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN S7_util_ds_buf_0_0_IBUF_OUT, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [6:0]s00_axi_awaddr;
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
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [6:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN S7_util_ds_buf_0_0_IBUF_OUT, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire DCM0_brake;
  wire DCM0_dir;
  wire [6:0]DCM0_pwm_frq;
  wire [7:0]DCM0_pwm_val;
  wire DCM0_run;
  wire [1:0]DCM0_status;
  wire DCM0_vld_in;
  wire DCM0_vld_out;
  wire DCM1_brake;
  wire DCM1_dir;
  wire [6:0]DCM1_pwm_frq;
  wire [7:0]DCM1_pwm_val;
  wire DCM1_run;
  wire [1:0]DCM1_status;
  wire DCM1_vld_in;
  wire DCM1_vld_out;
  wire DCM2_brake;
  wire DCM2_dir;
  wire [6:0]DCM2_pwm_frq;
  wire [7:0]DCM2_pwm_val;
  wire DCM2_run;
  wire [1:0]DCM2_status;
  wire DCM2_vld_in;
  wire DCM2_vld_out;
  wire DCM3_brake;
  wire DCM3_dir;
  wire [6:0]DCM3_pwm_frq;
  wire [7:0]DCM3_pwm_val;
  wire DCM3_run;
  wire [1:0]DCM3_status;
  wire DCM3_vld_in;
  wire DCM3_vld_out;
  wire DCM4_brake;
  wire DCM4_dir;
  wire [6:0]DCM4_pwm_frq;
  wire [7:0]DCM4_pwm_val;
  wire DCM4_run;
  wire [1:0]DCM4_status;
  wire DCM4_vld_in;
  wire DCM4_vld_out;
  wire s00_axi_aclk;
  wire [6:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [6:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [7:0]\^s00_axi_rdata ;
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
  assign s00_axi_rdata[10] = \<const0> ;
  assign s00_axi_rdata[9] = \<const0> ;
  assign s00_axi_rdata[8] = \<const0> ;
  assign s00_axi_rdata[7:0] = \^s00_axi_rdata [7:0];
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  S7_DCM_regs_0_0_DCM_regs_v1_0 U0
       (.DCM0_brake(DCM0_brake),
        .DCM0_dir(DCM0_dir),
        .DCM0_pwm_frq(DCM0_pwm_frq),
        .DCM0_pwm_val(DCM0_pwm_val),
        .DCM0_run(DCM0_run),
        .DCM0_status(DCM0_status),
        .DCM0_vld_in(DCM0_vld_in),
        .DCM0_vld_out(DCM0_vld_out),
        .DCM1_brake(DCM1_brake),
        .DCM1_dir(DCM1_dir),
        .DCM1_pwm_frq(DCM1_pwm_frq),
        .DCM1_pwm_val(DCM1_pwm_val),
        .DCM1_run(DCM1_run),
        .DCM1_status(DCM1_status),
        .DCM1_vld_in(DCM1_vld_in),
        .DCM1_vld_out(DCM1_vld_out),
        .DCM2_brake(DCM2_brake),
        .DCM2_dir(DCM2_dir),
        .DCM2_pwm_frq(DCM2_pwm_frq),
        .DCM2_pwm_val(DCM2_pwm_val),
        .DCM2_run(DCM2_run),
        .DCM2_status(DCM2_status),
        .DCM2_vld_in(DCM2_vld_in),
        .DCM2_vld_out(DCM2_vld_out),
        .DCM3_brake(DCM3_brake),
        .DCM3_dir(DCM3_dir),
        .DCM3_pwm_frq(DCM3_pwm_frq),
        .DCM3_pwm_val(DCM3_pwm_val),
        .DCM3_run(DCM3_run),
        .DCM3_status(DCM3_status),
        .DCM3_vld_in(DCM3_vld_in),
        .DCM3_vld_out(DCM3_vld_out),
        .DCM4_brake(DCM4_brake),
        .DCM4_dir(DCM4_dir),
        .DCM4_pwm_frq(DCM4_pwm_frq),
        .DCM4_pwm_val(DCM4_pwm_val),
        .DCM4_run(DCM4_run),
        .DCM4_status(DCM4_status),
        .DCM4_vld_in(DCM4_vld_in),
        .DCM4_vld_out(DCM4_vld_out),
        .S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[6:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[6:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(\^s00_axi_rdata ),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata[7:0]),
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
