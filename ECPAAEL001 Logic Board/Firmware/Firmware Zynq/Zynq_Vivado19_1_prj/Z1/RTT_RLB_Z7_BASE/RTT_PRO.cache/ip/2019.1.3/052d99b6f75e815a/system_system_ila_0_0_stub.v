// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
// Date        : Thu May 14 13:29:45 2020
// Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_system_ila_0_0_stub.v
// Design      : system_system_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "bd_d5b8,Vivado 2019.1.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, SLOT_0_SM_REG_IF_tgt_acc, 
  SLOT_0_SM_REG_IF_tgt_ec, SLOT_0_SM_REG_IF_dir, SLOT_0_SM_REG_IF_load, 
  SLOT_0_SM_REG_IF_res, SLOT_0_SM_REG_IF_init_ec, SLOT_0_SM_REG_IF_cnt_o, 
  SLOT_0_SM_REG_IF_cnt_i, SLOT_0_SM_REG_IF_ramp_up, SLOT_0_SM_REG_IF_ramp_dwn, 
  SLOT_0_SM_REG_IF_spd_chg, SLOT_0_SM_REG_IF_slw_stps, SLOT_0_SM_REG_IF_fst_stps, 
  SLOT_0_SM_REG_IF_running, SLOT_0_SM_REG_IF_irq_mask, SLOT_0_SM_REG_IF_irq_in, 
  SLOT_0_SM_REG_IF_irq_clr, SLOT_0_SM_REG_IF_vld_in, SLOT_0_SM_REG_IF_vld_out)
/* synthesis syn_black_box black_box_pad_pin="clk,SLOT_0_SM_REG_IF_tgt_acc[23:0],SLOT_0_SM_REG_IF_tgt_ec[21:0],SLOT_0_SM_REG_IF_dir,SLOT_0_SM_REG_IF_load[1:0],SLOT_0_SM_REG_IF_res[1:0],SLOT_0_SM_REG_IF_init_ec[21:0],SLOT_0_SM_REG_IF_cnt_o[31:0],SLOT_0_SM_REG_IF_cnt_i[31:0],SLOT_0_SM_REG_IF_ramp_up,SLOT_0_SM_REG_IF_ramp_dwn,SLOT_0_SM_REG_IF_spd_chg,SLOT_0_SM_REG_IF_slw_stps,SLOT_0_SM_REG_IF_fst_stps,SLOT_0_SM_REG_IF_running[1:0],SLOT_0_SM_REG_IF_irq_mask,SLOT_0_SM_REG_IF_irq_in,SLOT_0_SM_REG_IF_irq_clr,SLOT_0_SM_REG_IF_vld_in,SLOT_0_SM_REG_IF_vld_out" */;
  input clk;
  input [23:0]SLOT_0_SM_REG_IF_tgt_acc;
  input [21:0]SLOT_0_SM_REG_IF_tgt_ec;
  input SLOT_0_SM_REG_IF_dir;
  input [1:0]SLOT_0_SM_REG_IF_load;
  input [1:0]SLOT_0_SM_REG_IF_res;
  input [21:0]SLOT_0_SM_REG_IF_init_ec;
  input [31:0]SLOT_0_SM_REG_IF_cnt_o;
  input [31:0]SLOT_0_SM_REG_IF_cnt_i;
  input SLOT_0_SM_REG_IF_ramp_up;
  input SLOT_0_SM_REG_IF_ramp_dwn;
  input SLOT_0_SM_REG_IF_spd_chg;
  input SLOT_0_SM_REG_IF_slw_stps;
  input SLOT_0_SM_REG_IF_fst_stps;
  input [1:0]SLOT_0_SM_REG_IF_running;
  input SLOT_0_SM_REG_IF_irq_mask;
  input SLOT_0_SM_REG_IF_irq_in;
  input SLOT_0_SM_REG_IF_irq_clr;
  input SLOT_0_SM_REG_IF_vld_in;
  input SLOT_0_SM_REG_IF_vld_out;
endmodule
