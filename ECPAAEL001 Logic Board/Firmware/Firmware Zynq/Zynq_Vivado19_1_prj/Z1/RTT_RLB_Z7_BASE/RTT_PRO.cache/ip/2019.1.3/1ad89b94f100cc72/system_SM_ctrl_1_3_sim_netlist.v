// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
// Date        : Wed May 13 12:04:34 2020
// Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_SM_ctrl_1_3_sim_netlist.v
// Design      : system_SM_ctrl_1_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* PRESENT = "1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SM_ctrl
   (aclk,
    aresetn,
    clk200,
    tgt_ACC,
    tgt_EC,
    dir,
    ena_load,
    res,
    init_EC,
    cnt_o,
    cnt_i,
    ramp_up,
    ramp_dwn,
    spd_chg,
    slw_stps,
    fst_stps,
    running,
    irq_mask,
    irq_in,
    irq_clr,
    vld_in,
    vld_out,
    port_ref,
    port_clk,
    port_ena,
    port_dir,
    port_m2P,
    port_m1P,
    smc_ACC,
    smc_EC,
    smc_RM,
    smc_req,
    smc_Next_EC,
    smc_Next_RM,
    smc_ack,
    dbg_ref,
    dbg_clk,
    dbg_ena,
    dbg_dir,
    dbg_m2P,
    dbg_m1P);
  input aclk;
  input aresetn;
  input clk200;
  input [23:0]tgt_ACC;
  input [21:0]tgt_EC;
  input dir;
  input [1:0]ena_load;
  input [1:0]res;
  input [21:0]init_EC;
  input [31:0]cnt_o;
  output [31:0]cnt_i;
  input ramp_up;
  input ramp_dwn;
  input spd_chg;
  input slw_stps;
  input fst_stps;
  output [1:0]running;
  input irq_mask;
  output irq_in;
  input irq_clr;
  output vld_in;
  input vld_out;
  output port_ref;
  output port_clk;
  output port_ena;
  output port_dir;
  output port_m2P;
  output port_m1P;
  output [21:0]smc_ACC;
  output [21:0]smc_EC;
  output [15:0]smc_RM;
  output smc_req;
  input [21:0]smc_Next_EC;
  input [15:0]smc_Next_RM;
  input smc_ack;
  output dbg_ref;
  output dbg_clk;
  output dbg_ena;
  output dbg_dir;
  output dbg_m2P;
  output dbg_m1P;

  wire aclk;
  wire aresetn;
  wire clk200;
  wire [31:0]cnt_i;
  wire [31:0]cnt_o;
  wire dbg_clk;
  wire dbg_dir;
  wire dbg_ena;
  wire dbg_m1P;
  wire dbg_m2P;
  wire dbg_ref;
  wire dir;
  wire [1:0]ena_load;
  wire fst_stps;
  wire [21:0]init_EC;
  wire irq_clr;
  wire irq_in;
  wire irq_mask;
  wire port_clk;
  wire port_clk_loc;
  wire port_dir;
  wire port_dir_loc;
  wire port_ena;
  wire port_ena_loc;
  wire port_m1P;
  wire port_m1P_loc;
  wire port_m2P;
  wire port_m2P_loc;
  wire port_ref;
  wire port_ref_loc;
  wire ramp_dwn;
  wire ramp_up;
  wire [1:0]res;
  wire rst_200_out;
  wire [1:1]\^running ;
  wire slw_stps;
  wire [21:0]smc_ACC;
  wire [21:0]smc_EC;
  wire [21:0]smc_Next_EC;
  wire [15:0]smc_Next_RM;
  wire [15:0]smc_RM;
  wire smc_ack;
  wire smc_req;
  wire spd_chg;
  wire [23:0]tgt_ACC;
  wire [21:0]tgt_EC;
  wire vld_in;

  assign running[1] = \^running [1];
  assign running[0] = vld_in;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SM_ctrl_real \R.SM_ctrl 
       (.Q(smc_EC),
        .aclk(aclk),
        .aresetn(aresetn),
        .clk200(clk200),
        .cnt_i(cnt_i),
        .cnt_o(cnt_o),
        .dir(dir),
        .ena_load(ena_load),
        .fst_stps(fst_stps),
        .init_EC(init_EC),
        .irq_clr(irq_clr),
        .irq_in(irq_in),
        .irq_mask(irq_mask),
        .port_clk_loc(port_clk_loc),
        .port_dir_loc(port_dir_loc),
        .port_ena_loc(port_ena_loc),
        .port_m1P_loc(port_m1P_loc),
        .port_m2P_loc(port_m2P_loc),
        .port_ref_loc(port_ref_loc),
        .ramp_dwn(ramp_dwn),
        .ramp_up(ramp_up),
        .res(res),
        .rst_200_out(rst_200_out),
        .running({\^running ,vld_in}),
        .slw_stps(slw_stps),
        .smc_ACC(smc_ACC),
        .smc_Next_EC(smc_Next_EC),
        .smc_Next_RM(smc_Next_RM),
        .smc_RM(smc_RM),
        .smc_ack(smc_ack),
        .smc_req(smc_req),
        .spd_chg(spd_chg),
        .tgt_ACC(tgt_ACC[21:0]),
        .tgt_EC(tgt_EC));
  (* equivalent_register_removal = "no" *) 
  FDRE dbg_clk_reg
       (.C(clk200),
        .CE(1'b1),
        .D(port_clk_loc),
        .Q(dbg_clk),
        .R(rst_200_out));
  (* equivalent_register_removal = "no" *) 
  FDRE dbg_dir_reg
       (.C(clk200),
        .CE(1'b1),
        .D(port_dir_loc),
        .Q(dbg_dir),
        .R(rst_200_out));
  (* equivalent_register_removal = "no" *) 
  FDRE dbg_ena_reg
       (.C(clk200),
        .CE(1'b1),
        .D(port_ena_loc),
        .Q(dbg_ena),
        .R(rst_200_out));
  (* equivalent_register_removal = "no" *) 
  FDRE dbg_m1P_reg
       (.C(clk200),
        .CE(1'b1),
        .D(port_m1P_loc),
        .Q(dbg_m1P),
        .R(rst_200_out));
  (* equivalent_register_removal = "no" *) 
  FDRE dbg_m2P_reg
       (.C(clk200),
        .CE(1'b1),
        .D(port_m2P_loc),
        .Q(dbg_m2P),
        .R(rst_200_out));
  (* equivalent_register_removal = "no" *) 
  FDRE dbg_ref_reg
       (.C(clk200),
        .CE(1'b1),
        .D(port_ref_loc),
        .Q(dbg_ref),
        .R(rst_200_out));
  (* IOB = "TRUE" *) 
  FDRE port_clk_reg
       (.C(clk200),
        .CE(1'b1),
        .D(port_clk_loc),
        .Q(port_clk),
        .R(rst_200_out));
  (* IOB = "TRUE" *) 
  FDRE port_dir_reg
       (.C(clk200),
        .CE(1'b1),
        .D(port_dir_loc),
        .Q(port_dir),
        .R(rst_200_out));
  (* IOB = "TRUE" *) 
  FDRE port_ena_reg
       (.C(clk200),
        .CE(1'b1),
        .D(port_ena_loc),
        .Q(port_ena),
        .R(rst_200_out));
  (* IOB = "TRUE" *) 
  FDRE port_m1P_reg
       (.C(clk200),
        .CE(1'b1),
        .D(port_m1P_loc),
        .Q(port_m1P),
        .R(rst_200_out));
  (* IOB = "TRUE" *) 
  FDRE port_m2P_reg
       (.C(clk200),
        .CE(1'b1),
        .D(port_m2P_loc),
        .Q(port_m2P),
        .R(rst_200_out));
  (* IOB = "TRUE" *) 
  FDRE port_ref_reg
       (.C(clk200),
        .CE(1'b1),
        .D(port_ref_loc),
        .Q(port_ref),
        .R(rst_200_out));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SM_ctrl_real
   (rst_200_out,
    running,
    port_ref_loc,
    port_clk_loc,
    port_ena_loc,
    port_dir_loc,
    port_m2P_loc,
    port_m1P_loc,
    irq_in,
    smc_req,
    Q,
    cnt_i,
    smc_ACC,
    smc_RM,
    aresetn,
    clk200,
    spd_chg,
    slw_stps,
    ramp_up,
    fst_stps,
    aclk,
    ramp_dwn,
    ena_load,
    dir,
    res,
    irq_mask,
    irq_clr,
    init_EC,
    tgt_EC,
    tgt_ACC,
    cnt_o,
    smc_ack,
    smc_Next_EC,
    smc_Next_RM);
  output rst_200_out;
  output [1:0]running;
  output port_ref_loc;
  output port_clk_loc;
  output port_ena_loc;
  output port_dir_loc;
  output port_m2P_loc;
  output port_m1P_loc;
  output irq_in;
  output smc_req;
  output [21:0]Q;
  output [31:0]cnt_i;
  output [21:0]smc_ACC;
  output [15:0]smc_RM;
  input aresetn;
  input clk200;
  input spd_chg;
  input slw_stps;
  input ramp_up;
  input fst_stps;
  input aclk;
  input ramp_dwn;
  input [1:0]ena_load;
  input dir;
  input [1:0]res;
  input irq_mask;
  input irq_clr;
  input [21:0]init_EC;
  input [21:0]tgt_EC;
  input [21:0]tgt_ACC;
  input [31:0]cnt_o;
  input smc_ack;
  input [21:0]smc_Next_EC;
  input [15:0]smc_Next_RM;

  wire ACC_zero_flg_i_1_n_0;
  wire ACC_zero_flg_reg_n_0;
  wire [21:0]EC_cnt;
  wire \EC_cnt[21]_i_1_n_0 ;
  wire EC_tgt_acc_trig0;
  wire EC_tgt_acc_trig05_in;
  wire EC_tgt_acc_trig08_in;
  wire EC_tgt_acc_trig0_carry__0_i_1_n_0;
  wire EC_tgt_acc_trig0_carry__0_i_2_n_0;
  wire EC_tgt_acc_trig0_carry__0_i_3_n_0;
  wire EC_tgt_acc_trig0_carry__0_i_4_n_0;
  wire EC_tgt_acc_trig0_carry__0_i_5_n_0;
  wire EC_tgt_acc_trig0_carry__0_i_6_n_0;
  wire EC_tgt_acc_trig0_carry__0_i_7_n_0;
  wire EC_tgt_acc_trig0_carry__0_i_8_n_0;
  wire EC_tgt_acc_trig0_carry__0_n_0;
  wire EC_tgt_acc_trig0_carry__0_n_1;
  wire EC_tgt_acc_trig0_carry__0_n_2;
  wire EC_tgt_acc_trig0_carry__0_n_3;
  wire EC_tgt_acc_trig0_carry__1_i_1_n_0;
  wire EC_tgt_acc_trig0_carry__1_i_2_n_0;
  wire EC_tgt_acc_trig0_carry__1_i_3_n_0;
  wire EC_tgt_acc_trig0_carry__1_i_4_n_0;
  wire EC_tgt_acc_trig0_carry__1_i_5_n_0;
  wire EC_tgt_acc_trig0_carry__1_i_6_n_0;
  wire EC_tgt_acc_trig0_carry__1_n_2;
  wire EC_tgt_acc_trig0_carry__1_n_3;
  wire EC_tgt_acc_trig0_carry_i_1_n_0;
  wire EC_tgt_acc_trig0_carry_i_2_n_0;
  wire EC_tgt_acc_trig0_carry_i_3_n_0;
  wire EC_tgt_acc_trig0_carry_i_4_n_0;
  wire EC_tgt_acc_trig0_carry_i_5_n_0;
  wire EC_tgt_acc_trig0_carry_i_6_n_0;
  wire EC_tgt_acc_trig0_carry_i_7_n_0;
  wire EC_tgt_acc_trig0_carry_i_8_n_0;
  wire EC_tgt_acc_trig0_carry_n_0;
  wire EC_tgt_acc_trig0_carry_n_1;
  wire EC_tgt_acc_trig0_carry_n_2;
  wire EC_tgt_acc_trig0_carry_n_3;
  wire \EC_tgt_acc_trig0_inferred__0/i__carry__0_n_0 ;
  wire \EC_tgt_acc_trig0_inferred__0/i__carry__0_n_1 ;
  wire \EC_tgt_acc_trig0_inferred__0/i__carry__0_n_2 ;
  wire \EC_tgt_acc_trig0_inferred__0/i__carry__0_n_3 ;
  wire \EC_tgt_acc_trig0_inferred__0/i__carry__1_n_2 ;
  wire \EC_tgt_acc_trig0_inferred__0/i__carry__1_n_3 ;
  wire \EC_tgt_acc_trig0_inferred__0/i__carry_n_0 ;
  wire \EC_tgt_acc_trig0_inferred__0/i__carry_n_1 ;
  wire \EC_tgt_acc_trig0_inferred__0/i__carry_n_2 ;
  wire \EC_tgt_acc_trig0_inferred__0/i__carry_n_3 ;
  wire \EC_tgt_acc_trig0_inferred__1/i__carry__0_n_1 ;
  wire \EC_tgt_acc_trig0_inferred__1/i__carry__0_n_2 ;
  wire \EC_tgt_acc_trig0_inferred__1/i__carry__0_n_3 ;
  wire \EC_tgt_acc_trig0_inferred__1/i__carry_n_0 ;
  wire \EC_tgt_acc_trig0_inferred__1/i__carry_n_1 ;
  wire \EC_tgt_acc_trig0_inferred__1/i__carry_n_2 ;
  wire \EC_tgt_acc_trig0_inferred__1/i__carry_n_3 ;
  wire EC_tgt_acc_trig_i_1_n_0;
  wire EC_tgt_acc_trig_i_2_n_0;
  wire EC_tgt_acc_trig_reg_n_0;
  wire EC_tgt_dec_trig_i_1_n_0;
  wire EC_tgt_dec_trig_reg_n_0;
  wire \FSM_onehot_sm_state[0]_i_1_n_0 ;
  wire \FSM_onehot_sm_state[0]_i_2_n_0 ;
  wire \FSM_onehot_sm_state[10]_i_1_n_0 ;
  wire \FSM_onehot_sm_state[11]_i_1_n_0 ;
  wire \FSM_onehot_sm_state[11]_i_2_n_0 ;
  wire \FSM_onehot_sm_state[12]_i_1_n_0 ;
  wire \FSM_onehot_sm_state[13]_i_1_n_0 ;
  wire \FSM_onehot_sm_state[14]_i_1_n_0 ;
  wire \FSM_onehot_sm_state[15]_i_1_n_0 ;
  wire \FSM_onehot_sm_state[16]_i_1_n_0 ;
  wire \FSM_onehot_sm_state[17]_i_1_n_0 ;
  wire \FSM_onehot_sm_state[18]_i_1_n_0 ;
  wire \FSM_onehot_sm_state[19]_i_1_n_0 ;
  wire \FSM_onehot_sm_state[1]_i_1_n_0 ;
  wire \FSM_onehot_sm_state[20]_i_1_n_0 ;
  wire \FSM_onehot_sm_state[21]_i_1_n_0 ;
  wire \FSM_onehot_sm_state[22]_i_1_n_0 ;
  wire \FSM_onehot_sm_state[23]_i_1_n_0 ;
  wire \FSM_onehot_sm_state[24]_i_1_n_0 ;
  wire \FSM_onehot_sm_state[25]_i_1_n_0 ;
  wire \FSM_onehot_sm_state[25]_i_2_n_0 ;
  wire \FSM_onehot_sm_state[26]_i_1_n_0 ;
  wire \FSM_onehot_sm_state[27]_i_1_n_0 ;
  wire \FSM_onehot_sm_state[28]_i_1_n_0 ;
  wire \FSM_onehot_sm_state[29]_i_1_n_0 ;
  wire \FSM_onehot_sm_state[2]_i_1_n_0 ;
  wire \FSM_onehot_sm_state[30]_i_1_n_0 ;
  wire \FSM_onehot_sm_state[31]_i_1_n_0 ;
  wire \FSM_onehot_sm_state[32]_i_1_n_0 ;
  wire \FSM_onehot_sm_state[33]_i_1_n_0 ;
  wire \FSM_onehot_sm_state[34]_i_1_n_0 ;
  wire \FSM_onehot_sm_state[35]_i_1_n_0 ;
  wire \FSM_onehot_sm_state[36]_i_1_n_0 ;
  wire \FSM_onehot_sm_state[3]_i_1_n_0 ;
  wire \FSM_onehot_sm_state[4]_i_1_n_0 ;
  wire \FSM_onehot_sm_state[5]_i_1_n_0 ;
  wire \FSM_onehot_sm_state[6]_i_1_n_0 ;
  wire \FSM_onehot_sm_state[7]_i_1_n_0 ;
  wire \FSM_onehot_sm_state[8]_i_1_n_0 ;
  wire \FSM_onehot_sm_state[9]_i_1_n_0 ;
  wire \FSM_onehot_sm_state_reg_n_0_[0] ;
  wire \FSM_onehot_sm_state_reg_n_0_[10] ;
  wire \FSM_onehot_sm_state_reg_n_0_[11] ;
  wire \FSM_onehot_sm_state_reg_n_0_[12] ;
  wire \FSM_onehot_sm_state_reg_n_0_[13] ;
  wire \FSM_onehot_sm_state_reg_n_0_[14] ;
  wire \FSM_onehot_sm_state_reg_n_0_[15] ;
  wire \FSM_onehot_sm_state_reg_n_0_[16] ;
  wire \FSM_onehot_sm_state_reg_n_0_[17] ;
  wire \FSM_onehot_sm_state_reg_n_0_[18] ;
  wire \FSM_onehot_sm_state_reg_n_0_[19] ;
  wire \FSM_onehot_sm_state_reg_n_0_[1] ;
  wire \FSM_onehot_sm_state_reg_n_0_[20] ;
  wire \FSM_onehot_sm_state_reg_n_0_[21] ;
  wire \FSM_onehot_sm_state_reg_n_0_[22] ;
  wire \FSM_onehot_sm_state_reg_n_0_[23] ;
  wire \FSM_onehot_sm_state_reg_n_0_[24] ;
  wire \FSM_onehot_sm_state_reg_n_0_[25] ;
  wire \FSM_onehot_sm_state_reg_n_0_[26] ;
  wire \FSM_onehot_sm_state_reg_n_0_[27] ;
  wire \FSM_onehot_sm_state_reg_n_0_[28] ;
  wire \FSM_onehot_sm_state_reg_n_0_[29] ;
  wire \FSM_onehot_sm_state_reg_n_0_[2] ;
  wire \FSM_onehot_sm_state_reg_n_0_[30] ;
  wire \FSM_onehot_sm_state_reg_n_0_[31] ;
  wire \FSM_onehot_sm_state_reg_n_0_[32] ;
  wire \FSM_onehot_sm_state_reg_n_0_[33] ;
  wire \FSM_onehot_sm_state_reg_n_0_[34] ;
  wire \FSM_onehot_sm_state_reg_n_0_[35] ;
  wire \FSM_onehot_sm_state_reg_n_0_[36] ;
  wire \FSM_onehot_sm_state_reg_n_0_[3] ;
  wire \FSM_onehot_sm_state_reg_n_0_[4] ;
  wire \FSM_onehot_sm_state_reg_n_0_[5] ;
  wire \FSM_onehot_sm_state_reg_n_0_[6] ;
  wire \FSM_onehot_sm_state_reg_n_0_[7] ;
  wire \FSM_onehot_sm_state_reg_n_0_[9] ;
  wire [31:16]L;
  wire [21:0]Q;
  wire [31:16]R;
  wire [31:16]R1_in;
  wire [31:16]R4_in;
  wire acc_flg;
  wire acc_flg_reg_n_0;
  wire aclk;
  wire aresetn;
  wire aresetn_loc;
  wire aresetn_loc_200;
  wire clk200;
  wire clock_loc__0;
  wire clock_loc_i_1_n_0;
  wire clock_loc_i_2_n_0;
  wire [31:0]cnt_i;
  wire [31:0]cnt_o;
  wire dec_steps;
  wire \dec_steps[31]_i_1_n_0 ;
  wire \dec_steps_reg_n_0_[0] ;
  wire \dec_steps_reg_n_0_[10] ;
  wire \dec_steps_reg_n_0_[11] ;
  wire \dec_steps_reg_n_0_[12] ;
  wire \dec_steps_reg_n_0_[13] ;
  wire \dec_steps_reg_n_0_[14] ;
  wire \dec_steps_reg_n_0_[15] ;
  wire \dec_steps_reg_n_0_[1] ;
  wire \dec_steps_reg_n_0_[2] ;
  wire \dec_steps_reg_n_0_[3] ;
  wire \dec_steps_reg_n_0_[4] ;
  wire \dec_steps_reg_n_0_[5] ;
  wire \dec_steps_reg_n_0_[6] ;
  wire \dec_steps_reg_n_0_[7] ;
  wire \dec_steps_reg_n_0_[8] ;
  wire \dec_steps_reg_n_0_[9] ;
  wire dec_trj_trig;
  wire dec_trj_trig_i_1_n_0;
  wire dec_trj_trig_lsb;
  wire dec_trj_trig_msb;
  wire dir;
  wire [1:0]ena_load;
  wire \end_trj_reg[0]_i_1_n_0 ;
  wire \end_trj_reg_reg_n_0_[0] ;
  wire \end_trj_reg_reg_n_0_[10] ;
  wire \end_trj_reg_reg_n_0_[11] ;
  wire \end_trj_reg_reg_n_0_[12] ;
  wire \end_trj_reg_reg_n_0_[13] ;
  wire \end_trj_reg_reg_n_0_[14] ;
  wire \end_trj_reg_reg_n_0_[15] ;
  wire \end_trj_reg_reg_n_0_[1] ;
  wire \end_trj_reg_reg_n_0_[2] ;
  wire \end_trj_reg_reg_n_0_[3] ;
  wire \end_trj_reg_reg_n_0_[4] ;
  wire \end_trj_reg_reg_n_0_[5] ;
  wire \end_trj_reg_reg_n_0_[6] ;
  wire \end_trj_reg_reg_n_0_[7] ;
  wire \end_trj_reg_reg_n_0_[8] ;
  wire \end_trj_reg_reg_n_0_[9] ;
  wire end_trj_trig;
  wire end_trj_trig_i_1_n_0;
  wire end_trj_trig_lsb;
  wire end_trj_trig_msb;
  wire eqOp;
  wire eqOp0_out;
  wire eqOp2_out;
  wire eqOp3_out;
  wire eqOp5_out;
  wire eqOp6_out;
  wire eqOp_carry__0_i_1_n_0;
  wire eqOp_carry__0_i_2_n_0;
  wire eqOp_carry__0_i_3_n_0;
  wire eqOp_carry__0_i_4_n_0;
  wire eqOp_carry__0_n_1;
  wire eqOp_carry__0_n_2;
  wire eqOp_carry__0_n_3;
  wire eqOp_carry_i_1_n_0;
  wire eqOp_carry_i_2_n_0;
  wire eqOp_carry_i_3_n_0;
  wire eqOp_carry_i_4_n_0;
  wire eqOp_carry_n_0;
  wire eqOp_carry_n_1;
  wire eqOp_carry_n_2;
  wire eqOp_carry_n_3;
  wire \eqOp_inferred__0/i__carry__0_n_3 ;
  wire \eqOp_inferred__0/i__carry_n_0 ;
  wire \eqOp_inferred__0/i__carry_n_1 ;
  wire \eqOp_inferred__0/i__carry_n_2 ;
  wire \eqOp_inferred__0/i__carry_n_3 ;
  wire \eqOp_inferred__1/i__carry__0_n_3 ;
  wire \eqOp_inferred__1/i__carry_n_0 ;
  wire \eqOp_inferred__1/i__carry_n_1 ;
  wire \eqOp_inferred__1/i__carry_n_2 ;
  wire \eqOp_inferred__1/i__carry_n_3 ;
  wire \eqOp_inferred__2/i__carry__0_n_2 ;
  wire \eqOp_inferred__2/i__carry__0_n_3 ;
  wire \eqOp_inferred__2/i__carry_n_0 ;
  wire \eqOp_inferred__2/i__carry_n_1 ;
  wire \eqOp_inferred__2/i__carry_n_2 ;
  wire \eqOp_inferred__2/i__carry_n_3 ;
  wire \eqOp_inferred__3/i__carry__0_n_3 ;
  wire \eqOp_inferred__3/i__carry_n_0 ;
  wire \eqOp_inferred__3/i__carry_n_1 ;
  wire \eqOp_inferred__3/i__carry_n_2 ;
  wire \eqOp_inferred__3/i__carry_n_3 ;
  wire \eqOp_inferred__4/i__carry__0_n_3 ;
  wire \eqOp_inferred__4/i__carry_n_0 ;
  wire \eqOp_inferred__4/i__carry_n_1 ;
  wire \eqOp_inferred__4/i__carry_n_2 ;
  wire \eqOp_inferred__4/i__carry_n_3 ;
  wire \eqOp_inferred__5/i__carry__0_n_3 ;
  wire \eqOp_inferred__5/i__carry_n_0 ;
  wire \eqOp_inferred__5/i__carry_n_1 ;
  wire \eqOp_inferred__5/i__carry_n_2 ;
  wire \eqOp_inferred__5/i__carry_n_3 ;
  wire fst_stps;
  wire fst_stps_d1;
  wire fst_stps_d2;
  wire fst_stps_trig;
  wire fst_stps_trig0;
  wire gtOp;
  wire gtOp_carry__0_i_1_n_0;
  wire gtOp_carry__0_i_2_n_0;
  wire gtOp_carry__0_i_3_n_0;
  wire gtOp_carry__0_i_4_n_0;
  wire gtOp_carry__0_i_5_n_0;
  wire gtOp_carry__0_i_6_n_0;
  wire gtOp_carry__0_i_7_n_0;
  wire gtOp_carry__0_i_8_n_0;
  wire gtOp_carry__0_n_0;
  wire gtOp_carry__0_n_1;
  wire gtOp_carry__0_n_2;
  wire gtOp_carry__0_n_3;
  wire gtOp_carry__1_i_1_n_0;
  wire gtOp_carry__1_i_2_n_0;
  wire gtOp_carry__1_i_3_n_0;
  wire gtOp_carry__1_i_4_n_0;
  wire gtOp_carry__1_i_5_n_0;
  wire gtOp_carry__1_i_6_n_0;
  wire gtOp_carry__1_n_2;
  wire gtOp_carry__1_n_3;
  wire gtOp_carry_i_1_n_0;
  wire gtOp_carry_i_2_n_0;
  wire gtOp_carry_i_3_n_0;
  wire gtOp_carry_i_4_n_0;
  wire gtOp_carry_i_5_n_0;
  wire gtOp_carry_i_6_n_0;
  wire gtOp_carry_i_7_n_0;
  wire gtOp_carry_i_8_n_0;
  wire gtOp_carry_n_0;
  wire gtOp_carry_n_1;
  wire gtOp_carry_n_2;
  wire gtOp_carry_n_3;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1__1_n_0;
  wire i__carry__0_i_1__2_n_0;
  wire i__carry__0_i_1__3_n_0;
  wire i__carry__0_i_1__4_n_0;
  wire i__carry__0_i_1__5_n_0;
  wire i__carry__0_i_1__6_n_0;
  wire i__carry__0_i_1__7_n_0;
  wire i__carry__0_i_1__8_n_0;
  wire i__carry__0_i_1__9_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2__1_n_0;
  wire i__carry__0_i_2__2_n_0;
  wire i__carry__0_i_2__3_n_0;
  wire i__carry__0_i_2__4_n_0;
  wire i__carry__0_i_2__5_n_0;
  wire i__carry__0_i_2__6_n_0;
  wire i__carry__0_i_2__7_n_0;
  wire i__carry__0_i_2__8_n_0;
  wire i__carry__0_i_2__9_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3__1_n_0;
  wire i__carry__0_i_3__2_n_0;
  wire i__carry__0_i_3__3_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4__1_n_0;
  wire i__carry__0_i_4__2_n_0;
  wire i__carry__0_i_4__3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_1__1_n_0;
  wire i__carry__1_i_1__2_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_2__1_n_0;
  wire i__carry__1_i_2__2_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3__0_n_0;
  wire i__carry__1_i_3__1_n_0;
  wire i__carry__1_i_3__2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4__0_n_0;
  wire i__carry__1_i_4__1_n_0;
  wire i__carry__1_i_4__2_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry__1_i_6_n_0;
  wire i__carry__2_i_1__0_n_0;
  wire i__carry__2_i_1__1_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2__0_n_0;
  wire i__carry__2_i_2__1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3__0_n_0;
  wire i__carry__2_i_3__1_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4__0_n_0;
  wire i__carry__2_i_4__1_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__3_i_1__0_n_0;
  wire i__carry__3_i_1__1_n_0;
  wire i__carry__3_i_1_n_0;
  wire i__carry__3_i_2__0_n_0;
  wire i__carry__3_i_2__1_n_0;
  wire i__carry__3_i_2_n_0;
  wire i__carry__3_i_3__0_n_0;
  wire i__carry__3_i_3__1_n_0;
  wire i__carry__3_i_3_n_0;
  wire i__carry__3_i_4__0_n_0;
  wire i__carry__3_i_4__1_n_0;
  wire i__carry__3_i_4_n_0;
  wire i__carry__4_i_1__0_n_0;
  wire i__carry__4_i_1__1_n_0;
  wire i__carry__4_i_1_n_0;
  wire i__carry__4_i_2__0_n_0;
  wire i__carry__4_i_2__1_n_0;
  wire i__carry__4_i_2_n_0;
  wire i__carry__4_i_3__0_n_0;
  wire i__carry__4_i_3_n_0;
  wire i__carry__4_i_4__0_n_0;
  wire i__carry__4_i_4_n_0;
  wire i__carry__5_i_1__0_n_0;
  wire i__carry__5_i_1_n_0;
  wire i__carry__5_i_2__0_n_0;
  wire i__carry__5_i_2_n_0;
  wire i__carry__5_i_3__0_n_0;
  wire i__carry__5_i_3_n_0;
  wire i__carry__5_i_4__0_n_0;
  wire i__carry__5_i_4_n_0;
  wire i__carry__6_i_1__0_n_0;
  wire i__carry__6_i_1_n_0;
  wire i__carry__6_i_2__0_n_0;
  wire i__carry__6_i_2_n_0;
  wire i__carry__6_i_3__0_n_0;
  wire i__carry__6_i_3_n_0;
  wire i__carry__6_i_4_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1__2_n_0;
  wire i__carry_i_1__3_n_0;
  wire i__carry_i_1__4_n_0;
  wire i__carry_i_1__5_n_0;
  wire i__carry_i_1__6_n_0;
  wire i__carry_i_1__7_n_0;
  wire i__carry_i_1__8_n_0;
  wire i__carry_i_1__9_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2__2_n_0;
  wire i__carry_i_2__3_n_0;
  wire i__carry_i_2__4_n_0;
  wire i__carry_i_2__5_n_0;
  wire i__carry_i_2__6_n_0;
  wire i__carry_i_2__7_n_0;
  wire i__carry_i_2__8_n_0;
  wire i__carry_i_2__9_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3__2_n_0;
  wire i__carry_i_3__3_n_0;
  wire i__carry_i_3__4_n_0;
  wire i__carry_i_3__5_n_0;
  wire i__carry_i_3__6_n_0;
  wire i__carry_i_3__7_n_0;
  wire i__carry_i_3__8_n_0;
  wire i__carry_i_3__9_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_4__2_n_0;
  wire i__carry_i_4__3_n_0;
  wire i__carry_i_4__4_n_0;
  wire i__carry_i_4__5_n_0;
  wire i__carry_i_4__6_n_0;
  wire i__carry_i_4__7_n_0;
  wire i__carry_i_4__8_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire [21:0]init_EC;
  wire [21:0]init_EC_loc;
  wire init_EC_trig;
  wire init_EC_trig_reg_n_0;
  wire irq_clr;
  wire irq_in;
  wire irq_in_i_1_n_0;
  wire irq_loc_d1;
  wire irq_loc_d2;
  wire irq_loc_i_1_n_0;
  wire irq_loc_i_2_n_0;
  wire irq_loc_reg_n_0;
  wire irq_mask;
  wire \mid_trj_reg_reg_n_0_[0] ;
  wire \mid_trj_reg_reg_n_0_[10] ;
  wire \mid_trj_reg_reg_n_0_[11] ;
  wire \mid_trj_reg_reg_n_0_[12] ;
  wire \mid_trj_reg_reg_n_0_[13] ;
  wire \mid_trj_reg_reg_n_0_[14] ;
  wire \mid_trj_reg_reg_n_0_[15] ;
  wire \mid_trj_reg_reg_n_0_[1] ;
  wire \mid_trj_reg_reg_n_0_[2] ;
  wire \mid_trj_reg_reg_n_0_[3] ;
  wire \mid_trj_reg_reg_n_0_[4] ;
  wire \mid_trj_reg_reg_n_0_[5] ;
  wire \mid_trj_reg_reg_n_0_[6] ;
  wire \mid_trj_reg_reg_n_0_[7] ;
  wire \mid_trj_reg_reg_n_0_[8] ;
  wire \mid_trj_reg_reg_n_0_[9] ;
  wire mid_trj_trig;
  wire mid_trj_trig_i_1_n_0;
  wire mid_trj_trig_lsb;
  wire mid_trj_trig_msb;
  wire [31:0]minusOp;
  wire minusOp_carry__0_i_1_n_0;
  wire minusOp_carry__0_i_2_n_0;
  wire minusOp_carry__0_i_3_n_0;
  wire minusOp_carry__0_i_4_n_0;
  wire minusOp_carry__0_n_0;
  wire minusOp_carry__0_n_1;
  wire minusOp_carry__0_n_2;
  wire minusOp_carry__0_n_3;
  wire minusOp_carry__1_i_1_n_0;
  wire minusOp_carry__1_i_2_n_0;
  wire minusOp_carry__1_i_3_n_0;
  wire minusOp_carry__1_i_4_n_0;
  wire minusOp_carry__1_n_0;
  wire minusOp_carry__1_n_1;
  wire minusOp_carry__1_n_2;
  wire minusOp_carry__1_n_3;
  wire minusOp_carry__2_i_1_n_0;
  wire minusOp_carry__2_i_2_n_0;
  wire minusOp_carry__2_i_3_n_0;
  wire minusOp_carry__2_i_4_n_0;
  wire minusOp_carry__2_n_0;
  wire minusOp_carry__2_n_1;
  wire minusOp_carry__2_n_2;
  wire minusOp_carry__2_n_3;
  wire minusOp_carry__3_i_1_n_0;
  wire minusOp_carry__3_i_2_n_0;
  wire minusOp_carry__3_i_3_n_0;
  wire minusOp_carry__3_i_4_n_0;
  wire minusOp_carry__3_n_0;
  wire minusOp_carry__3_n_1;
  wire minusOp_carry__3_n_2;
  wire minusOp_carry__3_n_3;
  wire minusOp_carry__4_i_1_n_0;
  wire minusOp_carry__4_i_2_n_0;
  wire minusOp_carry__4_i_3_n_0;
  wire minusOp_carry__4_i_4_n_0;
  wire minusOp_carry__4_n_0;
  wire minusOp_carry__4_n_1;
  wire minusOp_carry__4_n_2;
  wire minusOp_carry__4_n_3;
  wire minusOp_carry__5_i_1_n_0;
  wire minusOp_carry__5_i_2_n_0;
  wire minusOp_carry__5_i_3_n_0;
  wire minusOp_carry__5_i_4_n_0;
  wire minusOp_carry__5_n_0;
  wire minusOp_carry__5_n_1;
  wire minusOp_carry__5_n_2;
  wire minusOp_carry__5_n_3;
  wire minusOp_carry__6_i_1_n_0;
  wire minusOp_carry__6_i_2_n_0;
  wire minusOp_carry__6_i_3_n_0;
  wire minusOp_carry__6_n_1;
  wire minusOp_carry__6_n_2;
  wire minusOp_carry__6_n_3;
  wire minusOp_carry_i_1_n_0;
  wire minusOp_carry_i_2_n_0;
  wire minusOp_carry_i_3_n_0;
  wire minusOp_carry_n_0;
  wire minusOp_carry_n_1;
  wire minusOp_carry_n_2;
  wire minusOp_carry_n_3;
  wire \minusOp_inferred__0/i__carry__0_n_0 ;
  wire \minusOp_inferred__0/i__carry__0_n_1 ;
  wire \minusOp_inferred__0/i__carry__0_n_2 ;
  wire \minusOp_inferred__0/i__carry__0_n_3 ;
  wire \minusOp_inferred__0/i__carry__0_n_4 ;
  wire \minusOp_inferred__0/i__carry__0_n_5 ;
  wire \minusOp_inferred__0/i__carry__0_n_6 ;
  wire \minusOp_inferred__0/i__carry__0_n_7 ;
  wire \minusOp_inferred__0/i__carry__1_n_0 ;
  wire \minusOp_inferred__0/i__carry__1_n_1 ;
  wire \minusOp_inferred__0/i__carry__1_n_2 ;
  wire \minusOp_inferred__0/i__carry__1_n_3 ;
  wire \minusOp_inferred__0/i__carry__1_n_4 ;
  wire \minusOp_inferred__0/i__carry__1_n_5 ;
  wire \minusOp_inferred__0/i__carry__1_n_6 ;
  wire \minusOp_inferred__0/i__carry__1_n_7 ;
  wire \minusOp_inferred__0/i__carry__2_n_0 ;
  wire \minusOp_inferred__0/i__carry__2_n_1 ;
  wire \minusOp_inferred__0/i__carry__2_n_2 ;
  wire \minusOp_inferred__0/i__carry__2_n_3 ;
  wire \minusOp_inferred__0/i__carry__2_n_4 ;
  wire \minusOp_inferred__0/i__carry__2_n_5 ;
  wire \minusOp_inferred__0/i__carry__2_n_6 ;
  wire \minusOp_inferred__0/i__carry__2_n_7 ;
  wire \minusOp_inferred__0/i__carry__3_n_0 ;
  wire \minusOp_inferred__0/i__carry__3_n_1 ;
  wire \minusOp_inferred__0/i__carry__3_n_2 ;
  wire \minusOp_inferred__0/i__carry__3_n_3 ;
  wire \minusOp_inferred__0/i__carry__3_n_4 ;
  wire \minusOp_inferred__0/i__carry__3_n_5 ;
  wire \minusOp_inferred__0/i__carry__3_n_6 ;
  wire \minusOp_inferred__0/i__carry__3_n_7 ;
  wire \minusOp_inferred__0/i__carry__4_n_0 ;
  wire \minusOp_inferred__0/i__carry__4_n_1 ;
  wire \minusOp_inferred__0/i__carry__4_n_2 ;
  wire \minusOp_inferred__0/i__carry__4_n_3 ;
  wire \minusOp_inferred__0/i__carry__4_n_4 ;
  wire \minusOp_inferred__0/i__carry__4_n_5 ;
  wire \minusOp_inferred__0/i__carry__4_n_6 ;
  wire \minusOp_inferred__0/i__carry__4_n_7 ;
  wire \minusOp_inferred__0/i__carry__5_n_0 ;
  wire \minusOp_inferred__0/i__carry__5_n_1 ;
  wire \minusOp_inferred__0/i__carry__5_n_2 ;
  wire \minusOp_inferred__0/i__carry__5_n_3 ;
  wire \minusOp_inferred__0/i__carry__5_n_4 ;
  wire \minusOp_inferred__0/i__carry__5_n_5 ;
  wire \minusOp_inferred__0/i__carry__5_n_6 ;
  wire \minusOp_inferred__0/i__carry__5_n_7 ;
  wire \minusOp_inferred__0/i__carry__6_n_2 ;
  wire \minusOp_inferred__0/i__carry__6_n_3 ;
  wire \minusOp_inferred__0/i__carry__6_n_5 ;
  wire \minusOp_inferred__0/i__carry__6_n_6 ;
  wire \minusOp_inferred__0/i__carry__6_n_7 ;
  wire \minusOp_inferred__0/i__carry_n_0 ;
  wire \minusOp_inferred__0/i__carry_n_1 ;
  wire \minusOp_inferred__0/i__carry_n_2 ;
  wire \minusOp_inferred__0/i__carry_n_3 ;
  wire \minusOp_inferred__0/i__carry_n_4 ;
  wire \minusOp_inferred__0/i__carry_n_5 ;
  wire \minusOp_inferred__0/i__carry_n_6 ;
  wire \minusOp_inferred__0/i__carry_n_7 ;
  wire \minusOp_inferred__1/i__carry__0_n_0 ;
  wire \minusOp_inferred__1/i__carry__0_n_1 ;
  wire \minusOp_inferred__1/i__carry__0_n_2 ;
  wire \minusOp_inferred__1/i__carry__0_n_3 ;
  wire \minusOp_inferred__1/i__carry__0_n_4 ;
  wire \minusOp_inferred__1/i__carry__0_n_5 ;
  wire \minusOp_inferred__1/i__carry__0_n_6 ;
  wire \minusOp_inferred__1/i__carry__0_n_7 ;
  wire \minusOp_inferred__1/i__carry__1_n_0 ;
  wire \minusOp_inferred__1/i__carry__1_n_1 ;
  wire \minusOp_inferred__1/i__carry__1_n_2 ;
  wire \minusOp_inferred__1/i__carry__1_n_3 ;
  wire \minusOp_inferred__1/i__carry__1_n_4 ;
  wire \minusOp_inferred__1/i__carry__1_n_5 ;
  wire \minusOp_inferred__1/i__carry__1_n_6 ;
  wire \minusOp_inferred__1/i__carry__1_n_7 ;
  wire \minusOp_inferred__1/i__carry__2_n_0 ;
  wire \minusOp_inferred__1/i__carry__2_n_1 ;
  wire \minusOp_inferred__1/i__carry__2_n_2 ;
  wire \minusOp_inferred__1/i__carry__2_n_3 ;
  wire \minusOp_inferred__1/i__carry__2_n_4 ;
  wire \minusOp_inferred__1/i__carry__2_n_5 ;
  wire \minusOp_inferred__1/i__carry__2_n_6 ;
  wire \minusOp_inferred__1/i__carry__2_n_7 ;
  wire \minusOp_inferred__1/i__carry__3_n_0 ;
  wire \minusOp_inferred__1/i__carry__3_n_1 ;
  wire \minusOp_inferred__1/i__carry__3_n_2 ;
  wire \minusOp_inferred__1/i__carry__3_n_3 ;
  wire \minusOp_inferred__1/i__carry__3_n_4 ;
  wire \minusOp_inferred__1/i__carry__3_n_5 ;
  wire \minusOp_inferred__1/i__carry__3_n_6 ;
  wire \minusOp_inferred__1/i__carry__3_n_7 ;
  wire \minusOp_inferred__1/i__carry__4_n_0 ;
  wire \minusOp_inferred__1/i__carry__4_n_1 ;
  wire \minusOp_inferred__1/i__carry__4_n_2 ;
  wire \minusOp_inferred__1/i__carry__4_n_3 ;
  wire \minusOp_inferred__1/i__carry__4_n_4 ;
  wire \minusOp_inferred__1/i__carry__4_n_5 ;
  wire \minusOp_inferred__1/i__carry__4_n_6 ;
  wire \minusOp_inferred__1/i__carry__4_n_7 ;
  wire \minusOp_inferred__1/i__carry__5_n_0 ;
  wire \minusOp_inferred__1/i__carry__5_n_1 ;
  wire \minusOp_inferred__1/i__carry__5_n_2 ;
  wire \minusOp_inferred__1/i__carry__5_n_3 ;
  wire \minusOp_inferred__1/i__carry__5_n_4 ;
  wire \minusOp_inferred__1/i__carry__5_n_5 ;
  wire \minusOp_inferred__1/i__carry__5_n_6 ;
  wire \minusOp_inferred__1/i__carry__5_n_7 ;
  wire \minusOp_inferred__1/i__carry__6_n_1 ;
  wire \minusOp_inferred__1/i__carry__6_n_2 ;
  wire \minusOp_inferred__1/i__carry__6_n_3 ;
  wire \minusOp_inferred__1/i__carry__6_n_4 ;
  wire \minusOp_inferred__1/i__carry__6_n_5 ;
  wire \minusOp_inferred__1/i__carry__6_n_6 ;
  wire \minusOp_inferred__1/i__carry__6_n_7 ;
  wire \minusOp_inferred__1/i__carry_n_0 ;
  wire \minusOp_inferred__1/i__carry_n_1 ;
  wire \minusOp_inferred__1/i__carry_n_2 ;
  wire \minusOp_inferred__1/i__carry_n_3 ;
  wire \minusOp_inferred__1/i__carry_n_4 ;
  wire \minusOp_inferred__1/i__carry_n_5 ;
  wire \minusOp_inferred__1/i__carry_n_6 ;
  wire \minusOp_inferred__1/i__carry_n_7 ;
  wire [2:0]p_1_in__0;
  wire [21:1]plusOp;
  wire [2:2]plusOp__0;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__2_n_0;
  wire plusOp_carry__2_n_1;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry__3_n_0;
  wire plusOp_carry__3_n_1;
  wire plusOp_carry__3_n_2;
  wire plusOp_carry__3_n_3;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire \plusOp_inferred__1/i__carry__0_n_0 ;
  wire \plusOp_inferred__1/i__carry__0_n_1 ;
  wire \plusOp_inferred__1/i__carry__0_n_2 ;
  wire \plusOp_inferred__1/i__carry__0_n_3 ;
  wire \plusOp_inferred__1/i__carry__0_n_4 ;
  wire \plusOp_inferred__1/i__carry__0_n_5 ;
  wire \plusOp_inferred__1/i__carry__0_n_6 ;
  wire \plusOp_inferred__1/i__carry__0_n_7 ;
  wire \plusOp_inferred__1/i__carry__1_n_0 ;
  wire \plusOp_inferred__1/i__carry__1_n_1 ;
  wire \plusOp_inferred__1/i__carry__1_n_2 ;
  wire \plusOp_inferred__1/i__carry__1_n_3 ;
  wire \plusOp_inferred__1/i__carry__1_n_4 ;
  wire \plusOp_inferred__1/i__carry__1_n_5 ;
  wire \plusOp_inferred__1/i__carry__1_n_6 ;
  wire \plusOp_inferred__1/i__carry__1_n_7 ;
  wire \plusOp_inferred__1/i__carry__2_n_0 ;
  wire \plusOp_inferred__1/i__carry__2_n_1 ;
  wire \plusOp_inferred__1/i__carry__2_n_2 ;
  wire \plusOp_inferred__1/i__carry__2_n_3 ;
  wire \plusOp_inferred__1/i__carry__2_n_4 ;
  wire \plusOp_inferred__1/i__carry__2_n_5 ;
  wire \plusOp_inferred__1/i__carry__2_n_6 ;
  wire \plusOp_inferred__1/i__carry__2_n_7 ;
  wire \plusOp_inferred__1/i__carry__3_n_0 ;
  wire \plusOp_inferred__1/i__carry__3_n_1 ;
  wire \plusOp_inferred__1/i__carry__3_n_2 ;
  wire \plusOp_inferred__1/i__carry__3_n_3 ;
  wire \plusOp_inferred__1/i__carry__3_n_4 ;
  wire \plusOp_inferred__1/i__carry__3_n_5 ;
  wire \plusOp_inferred__1/i__carry__3_n_6 ;
  wire \plusOp_inferred__1/i__carry__3_n_7 ;
  wire \plusOp_inferred__1/i__carry__4_n_3 ;
  wire \plusOp_inferred__1/i__carry__4_n_6 ;
  wire \plusOp_inferred__1/i__carry__4_n_7 ;
  wire \plusOp_inferred__1/i__carry_n_0 ;
  wire \plusOp_inferred__1/i__carry_n_1 ;
  wire \plusOp_inferred__1/i__carry_n_2 ;
  wire \plusOp_inferred__1/i__carry_n_3 ;
  wire \plusOp_inferred__1/i__carry_n_4 ;
  wire \plusOp_inferred__1/i__carry_n_5 ;
  wire \plusOp_inferred__1/i__carry_n_6 ;
  wire \plusOp_inferred__1/i__carry_n_7 ;
  wire port_clk_loc;
  wire port_dir_loc;
  wire port_ena_loc;
  wire port_m1P_loc;
  wire port_m2P_loc;
  wire port_ref_loc;
  wire \pulse_cnt[0]_i_1_n_0 ;
  wire \pulse_cnt[0]_i_3_n_0 ;
  wire \pulse_cnt[0]_i_4_n_0 ;
  wire \pulse_cnt[0]_i_5_n_0 ;
  wire \pulse_cnt[0]_i_6_n_0 ;
  wire \pulse_cnt[0]_i_7_n_0 ;
  wire \pulse_cnt[0]_i_8_n_0 ;
  wire [15:0]pulse_cnt_reg;
  wire \pulse_cnt_reg[0]_i_2_n_0 ;
  wire \pulse_cnt_reg[0]_i_2_n_1 ;
  wire \pulse_cnt_reg[0]_i_2_n_2 ;
  wire \pulse_cnt_reg[0]_i_2_n_3 ;
  wire \pulse_cnt_reg[0]_i_2_n_4 ;
  wire \pulse_cnt_reg[0]_i_2_n_5 ;
  wire \pulse_cnt_reg[0]_i_2_n_6 ;
  wire \pulse_cnt_reg[0]_i_2_n_7 ;
  wire \pulse_cnt_reg[12]_i_1_n_1 ;
  wire \pulse_cnt_reg[12]_i_1_n_2 ;
  wire \pulse_cnt_reg[12]_i_1_n_3 ;
  wire \pulse_cnt_reg[12]_i_1_n_4 ;
  wire \pulse_cnt_reg[12]_i_1_n_5 ;
  wire \pulse_cnt_reg[12]_i_1_n_6 ;
  wire \pulse_cnt_reg[12]_i_1_n_7 ;
  wire \pulse_cnt_reg[4]_i_1_n_0 ;
  wire \pulse_cnt_reg[4]_i_1_n_1 ;
  wire \pulse_cnt_reg[4]_i_1_n_2 ;
  wire \pulse_cnt_reg[4]_i_1_n_3 ;
  wire \pulse_cnt_reg[4]_i_1_n_4 ;
  wire \pulse_cnt_reg[4]_i_1_n_5 ;
  wire \pulse_cnt_reg[4]_i_1_n_6 ;
  wire \pulse_cnt_reg[4]_i_1_n_7 ;
  wire \pulse_cnt_reg[8]_i_1_n_0 ;
  wire \pulse_cnt_reg[8]_i_1_n_1 ;
  wire \pulse_cnt_reg[8]_i_1_n_2 ;
  wire \pulse_cnt_reg[8]_i_1_n_3 ;
  wire \pulse_cnt_reg[8]_i_1_n_4 ;
  wire \pulse_cnt_reg[8]_i_1_n_5 ;
  wire \pulse_cnt_reg[8]_i_1_n_6 ;
  wire \pulse_cnt_reg[8]_i_1_n_7 ;
  wire ramp_dwn;
  wire ramp_dwn_d1;
  wire ramp_dwn_d2;
  wire ramp_dwn_trig;
  wire ramp_dwn_trig_i_1_n_0;
  wire ramp_up;
  wire ramp_up_d1;
  wire ramp_up_d2;
  wire ramp_up_trig;
  wire ramp_up_trig0;
  wire [1:0]res;
  wire reset;
  wire reset_200_i_1_n_0;
  wire reset_i_1_n_0;
  wire rst_200_out;
  wire [1:0]running;
  wire \running_loc_reg_n_0_[0] ;
  wire \running_loc_reg_n_0_[1] ;
  wire slw_stps;
  wire slw_stps_d1;
  wire slw_stps_d2;
  wire slw_stps_trig;
  wire slw_stps_trig0;
  wire \sm_ACC[0]_i_1_n_0 ;
  wire \sm_ACC[10]_i_1_n_0 ;
  wire \sm_ACC[11]_i_1_n_0 ;
  wire \sm_ACC[12]_i_1_n_0 ;
  wire \sm_ACC[13]_i_1_n_0 ;
  wire \sm_ACC[14]_i_1_n_0 ;
  wire \sm_ACC[15]_i_1_n_0 ;
  wire \sm_ACC[16]_i_1_n_0 ;
  wire \sm_ACC[17]_i_1_n_0 ;
  wire \sm_ACC[18]_i_1_n_0 ;
  wire \sm_ACC[19]_i_1_n_0 ;
  wire \sm_ACC[1]_i_1_n_0 ;
  wire \sm_ACC[20]_i_1_n_0 ;
  wire \sm_ACC[21]_i_1_n_0 ;
  wire \sm_ACC[21]_i_2_n_0 ;
  wire \sm_ACC[21]_i_4_n_0 ;
  wire \sm_ACC[21]_i_5_n_0 ;
  wire \sm_ACC[21]_i_6_n_0 ;
  wire \sm_ACC[21]_i_7_n_0 ;
  wire \sm_ACC[21]_i_8_n_0 ;
  wire \sm_ACC[2]_i_1_n_0 ;
  wire \sm_ACC[3]_i_1_n_0 ;
  wire \sm_ACC[4]_i_1_n_0 ;
  wire \sm_ACC[5]_i_1_n_0 ;
  wire \sm_ACC[6]_i_1_n_0 ;
  wire \sm_ACC[7]_i_1_n_0 ;
  wire \sm_ACC[8]_i_1_n_0 ;
  wire \sm_ACC[9]_i_1_n_0 ;
  wire [21:0]sm_ACC_neg;
  wire [21:0]sm_ACC_pos;
  wire \sm_EC[0]_i_1_n_0 ;
  wire \sm_EC[10]_i_1_n_0 ;
  wire \sm_EC[11]_i_1_n_0 ;
  wire \sm_EC[12]_i_1_n_0 ;
  wire \sm_EC[13]_i_1_n_0 ;
  wire \sm_EC[14]_i_1_n_0 ;
  wire \sm_EC[15]_i_1_n_0 ;
  wire \sm_EC[16]_i_1_n_0 ;
  wire \sm_EC[17]_i_1_n_0 ;
  wire \sm_EC[18]_i_1_n_0 ;
  wire \sm_EC[19]_i_1_n_0 ;
  wire \sm_EC[1]_i_1_n_0 ;
  wire \sm_EC[20]_i_1_n_0 ;
  wire \sm_EC[21]_i_1_n_0 ;
  wire \sm_EC[21]_i_2_n_0 ;
  wire \sm_EC[21]_i_3_n_0 ;
  wire \sm_EC[21]_i_4_n_0 ;
  wire \sm_EC[21]_i_5_n_0 ;
  wire \sm_EC[21]_i_6_n_0 ;
  wire \sm_EC[21]_i_7_n_0 ;
  wire \sm_EC[2]_i_1_n_0 ;
  wire \sm_EC[3]_i_1_n_0 ;
  wire \sm_EC[4]_i_1_n_0 ;
  wire \sm_EC[5]_i_1_n_0 ;
  wire \sm_EC[6]_i_1_n_0 ;
  wire \sm_EC[7]_i_1_n_0 ;
  wire \sm_EC[8]_i_1_n_0 ;
  wire \sm_EC[9]_i_1_n_0 ;
  wire \sm_RM[0]_i_1_n_0 ;
  wire \sm_RM[10]_i_1_n_0 ;
  wire \sm_RM[11]_i_1_n_0 ;
  wire \sm_RM[12]_i_1_n_0 ;
  wire \sm_RM[13]_i_1_n_0 ;
  wire \sm_RM[14]_i_1_n_0 ;
  wire \sm_RM[15]_i_1_n_0 ;
  wire \sm_RM[1]_i_1_n_0 ;
  wire \sm_RM[2]_i_1_n_0 ;
  wire \sm_RM[3]_i_1_n_0 ;
  wire \sm_RM[4]_i_1_n_0 ;
  wire \sm_RM[5]_i_1_n_0 ;
  wire \sm_RM[6]_i_1_n_0 ;
  wire \sm_RM[7]_i_1_n_0 ;
  wire \sm_RM[8]_i_1_n_0 ;
  wire \sm_RM[9]_i_1_n_0 ;
  wire [21:0]sm_nxt_EC_loc;
  wire \sm_nxt_EC_loc[0]_i_1_n_0 ;
  wire \sm_nxt_EC_loc[10]_i_1_n_0 ;
  wire \sm_nxt_EC_loc[11]_i_1_n_0 ;
  wire \sm_nxt_EC_loc[12]_i_1_n_0 ;
  wire \sm_nxt_EC_loc[13]_i_1_n_0 ;
  wire \sm_nxt_EC_loc[14]_i_1_n_0 ;
  wire \sm_nxt_EC_loc[15]_i_1_n_0 ;
  wire \sm_nxt_EC_loc[16]_i_1_n_0 ;
  wire \sm_nxt_EC_loc[17]_i_1_n_0 ;
  wire \sm_nxt_EC_loc[18]_i_1_n_0 ;
  wire \sm_nxt_EC_loc[19]_i_1_n_0 ;
  wire \sm_nxt_EC_loc[1]_i_1_n_0 ;
  wire \sm_nxt_EC_loc[20]_i_1_n_0 ;
  wire \sm_nxt_EC_loc[21]_i_2_n_0 ;
  wire \sm_nxt_EC_loc[2]_i_1_n_0 ;
  wire \sm_nxt_EC_loc[3]_i_1_n_0 ;
  wire \sm_nxt_EC_loc[4]_i_1_n_0 ;
  wire \sm_nxt_EC_loc[5]_i_1_n_0 ;
  wire \sm_nxt_EC_loc[6]_i_1_n_0 ;
  wire \sm_nxt_EC_loc[7]_i_1_n_0 ;
  wire \sm_nxt_EC_loc[8]_i_1_n_0 ;
  wire \sm_nxt_EC_loc[9]_i_1_n_0 ;
  wire sm_nxt_RM_loc;
  wire \sm_nxt_RM_loc[0]_i_1_n_0 ;
  wire \sm_nxt_RM_loc[10]_i_1_n_0 ;
  wire \sm_nxt_RM_loc[11]_i_1_n_0 ;
  wire \sm_nxt_RM_loc[12]_i_1_n_0 ;
  wire \sm_nxt_RM_loc[13]_i_1_n_0 ;
  wire \sm_nxt_RM_loc[14]_i_1_n_0 ;
  wire \sm_nxt_RM_loc[15]_i_1_n_0 ;
  wire \sm_nxt_RM_loc[1]_i_1_n_0 ;
  wire \sm_nxt_RM_loc[2]_i_1_n_0 ;
  wire \sm_nxt_RM_loc[3]_i_1_n_0 ;
  wire \sm_nxt_RM_loc[4]_i_1_n_0 ;
  wire \sm_nxt_RM_loc[5]_i_1_n_0 ;
  wire \sm_nxt_RM_loc[6]_i_1_n_0 ;
  wire \sm_nxt_RM_loc[7]_i_1_n_0 ;
  wire \sm_nxt_RM_loc[8]_i_1_n_0 ;
  wire \sm_nxt_RM_loc[9]_i_1_n_0 ;
  wire \sm_nxt_RM_loc_reg_n_0_[0] ;
  wire \sm_nxt_RM_loc_reg_n_0_[10] ;
  wire \sm_nxt_RM_loc_reg_n_0_[11] ;
  wire \sm_nxt_RM_loc_reg_n_0_[12] ;
  wire \sm_nxt_RM_loc_reg_n_0_[13] ;
  wire \sm_nxt_RM_loc_reg_n_0_[14] ;
  wire \sm_nxt_RM_loc_reg_n_0_[15] ;
  wire \sm_nxt_RM_loc_reg_n_0_[1] ;
  wire \sm_nxt_RM_loc_reg_n_0_[2] ;
  wire \sm_nxt_RM_loc_reg_n_0_[3] ;
  wire \sm_nxt_RM_loc_reg_n_0_[4] ;
  wire \sm_nxt_RM_loc_reg_n_0_[5] ;
  wire \sm_nxt_RM_loc_reg_n_0_[6] ;
  wire \sm_nxt_RM_loc_reg_n_0_[7] ;
  wire \sm_nxt_RM_loc_reg_n_0_[8] ;
  wire \sm_nxt_RM_loc_reg_n_0_[9] ;
  wire sm_req;
  wire sm_req_i_1_n_0;
  wire sm_req_i_3_n_0;
  wire sm_req_i_4_n_0;
  wire sm_req_i_5_n_0;
  wire sm_req_i_6_n_0;
  wire sm_run_stp_i_1_n_0;
  wire sm_run_stp_i_2_n_0;
  wire sm_run_stp_reg_n_0;
  wire sm_start;
  wire sm_start_i_1_n_0;
  wire sm_start_reg_n_0;
  wire sm_stop;
  wire sm_stop_i_1_n_0;
  wire [21:0]smc_ACC;
  wire [21:0]smc_Next_EC;
  wire [15:0]smc_Next_RM;
  wire [15:0]smc_RM;
  wire smc_ack;
  wire smc_req;
  wire spd_chg;
  wire spd_chg_d1;
  wire spd_chg_d2;
  wire spd_chg_trig;
  wire spd_chg_trig_i_1_n_0;
  wire steady_spd_i_1_n_0;
  wire steady_spd_i_2_n_0;
  wire steady_spd_reg_n_0;
  wire \steps[0]_i_1_n_0 ;
  wire \steps[31]_i_1_n_0 ;
  wire [31:0]steps_loc;
  wire \steps_reg[12]_i_1_n_0 ;
  wire \steps_reg[12]_i_1_n_1 ;
  wire \steps_reg[12]_i_1_n_2 ;
  wire \steps_reg[12]_i_1_n_3 ;
  wire \steps_reg[12]_i_1_n_4 ;
  wire \steps_reg[12]_i_1_n_5 ;
  wire \steps_reg[12]_i_1_n_6 ;
  wire \steps_reg[12]_i_1_n_7 ;
  wire \steps_reg[16]_i_1_n_0 ;
  wire \steps_reg[16]_i_1_n_1 ;
  wire \steps_reg[16]_i_1_n_2 ;
  wire \steps_reg[16]_i_1_n_3 ;
  wire \steps_reg[16]_i_1_n_4 ;
  wire \steps_reg[16]_i_1_n_5 ;
  wire \steps_reg[16]_i_1_n_6 ;
  wire \steps_reg[16]_i_1_n_7 ;
  wire \steps_reg[20]_i_1_n_0 ;
  wire \steps_reg[20]_i_1_n_1 ;
  wire \steps_reg[20]_i_1_n_2 ;
  wire \steps_reg[20]_i_1_n_3 ;
  wire \steps_reg[20]_i_1_n_4 ;
  wire \steps_reg[20]_i_1_n_5 ;
  wire \steps_reg[20]_i_1_n_6 ;
  wire \steps_reg[20]_i_1_n_7 ;
  wire \steps_reg[24]_i_1_n_0 ;
  wire \steps_reg[24]_i_1_n_1 ;
  wire \steps_reg[24]_i_1_n_2 ;
  wire \steps_reg[24]_i_1_n_3 ;
  wire \steps_reg[24]_i_1_n_4 ;
  wire \steps_reg[24]_i_1_n_5 ;
  wire \steps_reg[24]_i_1_n_6 ;
  wire \steps_reg[24]_i_1_n_7 ;
  wire \steps_reg[28]_i_1_n_0 ;
  wire \steps_reg[28]_i_1_n_1 ;
  wire \steps_reg[28]_i_1_n_2 ;
  wire \steps_reg[28]_i_1_n_3 ;
  wire \steps_reg[28]_i_1_n_4 ;
  wire \steps_reg[28]_i_1_n_5 ;
  wire \steps_reg[28]_i_1_n_6 ;
  wire \steps_reg[28]_i_1_n_7 ;
  wire \steps_reg[31]_i_2_n_2 ;
  wire \steps_reg[31]_i_2_n_3 ;
  wire \steps_reg[31]_i_2_n_5 ;
  wire \steps_reg[31]_i_2_n_6 ;
  wire \steps_reg[31]_i_2_n_7 ;
  wire \steps_reg[4]_i_1_n_0 ;
  wire \steps_reg[4]_i_1_n_1 ;
  wire \steps_reg[4]_i_1_n_2 ;
  wire \steps_reg[4]_i_1_n_3 ;
  wire \steps_reg[4]_i_1_n_4 ;
  wire \steps_reg[4]_i_1_n_5 ;
  wire \steps_reg[4]_i_1_n_6 ;
  wire \steps_reg[4]_i_1_n_7 ;
  wire \steps_reg[8]_i_1_n_0 ;
  wire \steps_reg[8]_i_1_n_1 ;
  wire \steps_reg[8]_i_1_n_2 ;
  wire \steps_reg[8]_i_1_n_3 ;
  wire \steps_reg[8]_i_1_n_4 ;
  wire \steps_reg[8]_i_1_n_5 ;
  wire \steps_reg[8]_i_1_n_6 ;
  wire \steps_reg[8]_i_1_n_7 ;
  wire \steps_reg_n_0_[0] ;
  wire \steps_reg_n_0_[10] ;
  wire \steps_reg_n_0_[11] ;
  wire \steps_reg_n_0_[12] ;
  wire \steps_reg_n_0_[13] ;
  wire \steps_reg_n_0_[14] ;
  wire \steps_reg_n_0_[15] ;
  wire \steps_reg_n_0_[1] ;
  wire \steps_reg_n_0_[2] ;
  wire \steps_reg_n_0_[3] ;
  wire \steps_reg_n_0_[4] ;
  wire \steps_reg_n_0_[5] ;
  wire \steps_reg_n_0_[6] ;
  wire \steps_reg_n_0_[7] ;
  wire \steps_reg_n_0_[8] ;
  wire \steps_reg_n_0_[9] ;
  wire [21:0]tgt_ACC;
  wire [21:0]tgt_EC;
  wire [21:0]tgt_EC_loc;
  wire tgt_EC_loc0;
  wire triangle_i_1_n_0;
  wire triangle_i_2_n_0;
  wire triangle_i_3_n_0;
  wire triangle_i_4_n_0;
  wire triangle_reg_n_0;
  wire [3:0]NLW_EC_tgt_acc_trig0_carry_O_UNCONNECTED;
  wire [3:0]NLW_EC_tgt_acc_trig0_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_EC_tgt_acc_trig0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_EC_tgt_acc_trig0_carry__1_O_UNCONNECTED;
  wire [3:0]\NLW_EC_tgt_acc_trig0_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_EC_tgt_acc_trig0_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW_EC_tgt_acc_trig0_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_EC_tgt_acc_trig0_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_EC_tgt_acc_trig0_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_EC_tgt_acc_trig0_inferred__1/i__carry__0_O_UNCONNECTED ;
  wire [3:0]NLW_eqOp_carry_O_UNCONNECTED;
  wire [3:0]NLW_eqOp_carry__0_O_UNCONNECTED;
  wire [3:0]\NLW_eqOp_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_eqOp_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_eqOp_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_eqOp_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_eqOp_inferred__1/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_eqOp_inferred__1/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_eqOp_inferred__2/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_eqOp_inferred__2/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_eqOp_inferred__2/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_eqOp_inferred__3/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_eqOp_inferred__3/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_eqOp_inferred__3/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_eqOp_inferred__4/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_eqOp_inferred__4/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_eqOp_inferred__4/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_eqOp_inferred__5/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_eqOp_inferred__5/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_eqOp_inferred__5/i__carry__0_O_UNCONNECTED ;
  wire [3:0]NLW_gtOp_carry_O_UNCONNECTED;
  wire [3:0]NLW_gtOp_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_gtOp_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_gtOp_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_minusOp_carry__6_CO_UNCONNECTED;
  wire [3:2]\NLW_minusOp_inferred__0/i__carry__6_CO_UNCONNECTED ;
  wire [3:3]\NLW_minusOp_inferred__0/i__carry__6_O_UNCONNECTED ;
  wire [3:3]\NLW_minusOp_inferred__1/i__carry__6_CO_UNCONNECTED ;
  wire [3:0]NLW_plusOp_carry__4_CO_UNCONNECTED;
  wire [3:1]NLW_plusOp_carry__4_O_UNCONNECTED;
  wire [3:1]\NLW_plusOp_inferred__1/i__carry__4_CO_UNCONNECTED ;
  wire [3:2]\NLW_plusOp_inferred__1/i__carry__4_O_UNCONNECTED ;
  wire [3:3]\NLW_pulse_cnt_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_steps_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_steps_reg[31]_i_2_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h3737FFFF0400FFFF)) 
    ACC_zero_flg_i_1
       (.I0(EC_tgt_acc_trig08_in),
        .I1(sm_start_reg_n_0),
        .I2(EC_tgt_acc_trig05_in),
        .I3(EC_tgt_acc_trig0),
        .I4(sm_run_stp_reg_n_0),
        .I5(ACC_zero_flg_reg_n_0),
        .O(ACC_zero_flg_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    ACC_zero_flg_reg
       (.C(clk200),
        .CE(1'b1),
        .D(ACC_zero_flg_i_1_n_0),
        .Q(ACC_zero_flg_reg_n_0),
        .S(rst_200_out));
  LUT4 #(
    .INIT(16'h5D5F)) 
    \EC_cnt[0]_i_1 
       (.I0(sm_run_stp_reg_n_0),
        .I1(eqOp),
        .I2(sm_start_reg_n_0),
        .I3(EC_cnt[0]),
        .O(p_1_in__0[0]));
  LUT4 #(
    .INIT(16'hFFFB)) 
    \EC_cnt[21]_i_1 
       (.I0(rst_200_out),
        .I1(sm_run_stp_reg_n_0),
        .I2(sm_start_reg_n_0),
        .I3(eqOp),
        .O(\EC_cnt[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF020)) 
    \EC_cnt[2]_i_1 
       (.I0(plusOp__0),
        .I1(eqOp),
        .I2(sm_run_stp_reg_n_0),
        .I3(sm_start_reg_n_0),
        .O(p_1_in__0[2]));
  FDSE #(
    .INIT(1'b1)) 
    \EC_cnt_reg[0] 
       (.C(clk200),
        .CE(1'b1),
        .D(p_1_in__0[0]),
        .Q(EC_cnt[0]),
        .S(rst_200_out));
  FDRE #(
    .INIT(1'b0)) 
    \EC_cnt_reg[10] 
       (.C(clk200),
        .CE(1'b1),
        .D(plusOp[10]),
        .Q(EC_cnt[10]),
        .R(\EC_cnt[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \EC_cnt_reg[11] 
       (.C(clk200),
        .CE(1'b1),
        .D(plusOp[11]),
        .Q(EC_cnt[11]),
        .R(\EC_cnt[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \EC_cnt_reg[12] 
       (.C(clk200),
        .CE(1'b1),
        .D(plusOp[12]),
        .Q(EC_cnt[12]),
        .R(\EC_cnt[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \EC_cnt_reg[13] 
       (.C(clk200),
        .CE(1'b1),
        .D(plusOp[13]),
        .Q(EC_cnt[13]),
        .R(\EC_cnt[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \EC_cnt_reg[14] 
       (.C(clk200),
        .CE(1'b1),
        .D(plusOp[14]),
        .Q(EC_cnt[14]),
        .R(\EC_cnt[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \EC_cnt_reg[15] 
       (.C(clk200),
        .CE(1'b1),
        .D(plusOp[15]),
        .Q(EC_cnt[15]),
        .R(\EC_cnt[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \EC_cnt_reg[16] 
       (.C(clk200),
        .CE(1'b1),
        .D(plusOp[16]),
        .Q(EC_cnt[16]),
        .R(\EC_cnt[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \EC_cnt_reg[17] 
       (.C(clk200),
        .CE(1'b1),
        .D(plusOp[17]),
        .Q(EC_cnt[17]),
        .R(\EC_cnt[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \EC_cnt_reg[18] 
       (.C(clk200),
        .CE(1'b1),
        .D(plusOp[18]),
        .Q(EC_cnt[18]),
        .R(\EC_cnt[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \EC_cnt_reg[19] 
       (.C(clk200),
        .CE(1'b1),
        .D(plusOp[19]),
        .Q(EC_cnt[19]),
        .R(\EC_cnt[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \EC_cnt_reg[1] 
       (.C(clk200),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(EC_cnt[1]),
        .R(\EC_cnt[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \EC_cnt_reg[20] 
       (.C(clk200),
        .CE(1'b1),
        .D(plusOp[20]),
        .Q(EC_cnt[20]),
        .R(\EC_cnt[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \EC_cnt_reg[21] 
       (.C(clk200),
        .CE(1'b1),
        .D(plusOp[21]),
        .Q(EC_cnt[21]),
        .R(\EC_cnt[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \EC_cnt_reg[2] 
       (.C(clk200),
        .CE(1'b1),
        .D(p_1_in__0[2]),
        .Q(EC_cnt[2]),
        .R(rst_200_out));
  FDRE #(
    .INIT(1'b0)) 
    \EC_cnt_reg[3] 
       (.C(clk200),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(EC_cnt[3]),
        .R(\EC_cnt[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \EC_cnt_reg[4] 
       (.C(clk200),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(EC_cnt[4]),
        .R(\EC_cnt[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \EC_cnt_reg[5] 
       (.C(clk200),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(EC_cnt[5]),
        .R(\EC_cnt[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \EC_cnt_reg[6] 
       (.C(clk200),
        .CE(1'b1),
        .D(plusOp[6]),
        .Q(EC_cnt[6]),
        .R(\EC_cnt[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \EC_cnt_reg[7] 
       (.C(clk200),
        .CE(1'b1),
        .D(plusOp[7]),
        .Q(EC_cnt[7]),
        .R(\EC_cnt[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \EC_cnt_reg[8] 
       (.C(clk200),
        .CE(1'b1),
        .D(plusOp[8]),
        .Q(EC_cnt[8]),
        .R(\EC_cnt[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \EC_cnt_reg[9] 
       (.C(clk200),
        .CE(1'b1),
        .D(plusOp[9]),
        .Q(EC_cnt[9]),
        .R(\EC_cnt[21]_i_1_n_0 ));
  CARRY4 EC_tgt_acc_trig0_carry
       (.CI(1'b0),
        .CO({EC_tgt_acc_trig0_carry_n_0,EC_tgt_acc_trig0_carry_n_1,EC_tgt_acc_trig0_carry_n_2,EC_tgt_acc_trig0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({EC_tgt_acc_trig0_carry_i_1_n_0,EC_tgt_acc_trig0_carry_i_2_n_0,EC_tgt_acc_trig0_carry_i_3_n_0,EC_tgt_acc_trig0_carry_i_4_n_0}),
        .O(NLW_EC_tgt_acc_trig0_carry_O_UNCONNECTED[3:0]),
        .S({EC_tgt_acc_trig0_carry_i_5_n_0,EC_tgt_acc_trig0_carry_i_6_n_0,EC_tgt_acc_trig0_carry_i_7_n_0,EC_tgt_acc_trig0_carry_i_8_n_0}));
  CARRY4 EC_tgt_acc_trig0_carry__0
       (.CI(EC_tgt_acc_trig0_carry_n_0),
        .CO({EC_tgt_acc_trig0_carry__0_n_0,EC_tgt_acc_trig0_carry__0_n_1,EC_tgt_acc_trig0_carry__0_n_2,EC_tgt_acc_trig0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({EC_tgt_acc_trig0_carry__0_i_1_n_0,EC_tgt_acc_trig0_carry__0_i_2_n_0,EC_tgt_acc_trig0_carry__0_i_3_n_0,EC_tgt_acc_trig0_carry__0_i_4_n_0}),
        .O(NLW_EC_tgt_acc_trig0_carry__0_O_UNCONNECTED[3:0]),
        .S({EC_tgt_acc_trig0_carry__0_i_5_n_0,EC_tgt_acc_trig0_carry__0_i_6_n_0,EC_tgt_acc_trig0_carry__0_i_7_n_0,EC_tgt_acc_trig0_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h20F2)) 
    EC_tgt_acc_trig0_carry__0_i_1
       (.I0(Q[14]),
        .I1(tgt_EC_loc[14]),
        .I2(Q[15]),
        .I3(tgt_EC_loc[15]),
        .O(EC_tgt_acc_trig0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    EC_tgt_acc_trig0_carry__0_i_2
       (.I0(Q[12]),
        .I1(tgt_EC_loc[12]),
        .I2(Q[13]),
        .I3(tgt_EC_loc[13]),
        .O(EC_tgt_acc_trig0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    EC_tgt_acc_trig0_carry__0_i_3
       (.I0(Q[10]),
        .I1(tgt_EC_loc[10]),
        .I2(Q[11]),
        .I3(tgt_EC_loc[11]),
        .O(EC_tgt_acc_trig0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    EC_tgt_acc_trig0_carry__0_i_4
       (.I0(Q[8]),
        .I1(tgt_EC_loc[8]),
        .I2(Q[9]),
        .I3(tgt_EC_loc[9]),
        .O(EC_tgt_acc_trig0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    EC_tgt_acc_trig0_carry__0_i_5
       (.I0(Q[15]),
        .I1(tgt_EC_loc[15]),
        .I2(Q[14]),
        .I3(tgt_EC_loc[14]),
        .O(EC_tgt_acc_trig0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    EC_tgt_acc_trig0_carry__0_i_6
       (.I0(tgt_EC_loc[12]),
        .I1(Q[12]),
        .I2(tgt_EC_loc[13]),
        .I3(Q[13]),
        .O(EC_tgt_acc_trig0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    EC_tgt_acc_trig0_carry__0_i_7
       (.I0(Q[10]),
        .I1(tgt_EC_loc[10]),
        .I2(Q[11]),
        .I3(tgt_EC_loc[11]),
        .O(EC_tgt_acc_trig0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    EC_tgt_acc_trig0_carry__0_i_8
       (.I0(Q[9]),
        .I1(tgt_EC_loc[9]),
        .I2(Q[8]),
        .I3(tgt_EC_loc[8]),
        .O(EC_tgt_acc_trig0_carry__0_i_8_n_0));
  CARRY4 EC_tgt_acc_trig0_carry__1
       (.CI(EC_tgt_acc_trig0_carry__0_n_0),
        .CO({NLW_EC_tgt_acc_trig0_carry__1_CO_UNCONNECTED[3],EC_tgt_acc_trig08_in,EC_tgt_acc_trig0_carry__1_n_2,EC_tgt_acc_trig0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,EC_tgt_acc_trig0_carry__1_i_1_n_0,EC_tgt_acc_trig0_carry__1_i_2_n_0,EC_tgt_acc_trig0_carry__1_i_3_n_0}),
        .O(NLW_EC_tgt_acc_trig0_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,EC_tgt_acc_trig0_carry__1_i_4_n_0,EC_tgt_acc_trig0_carry__1_i_5_n_0,EC_tgt_acc_trig0_carry__1_i_6_n_0}));
  LUT4 #(
    .INIT(16'h20F2)) 
    EC_tgt_acc_trig0_carry__1_i_1
       (.I0(Q[20]),
        .I1(tgt_EC_loc[20]),
        .I2(Q[21]),
        .I3(tgt_EC_loc[21]),
        .O(EC_tgt_acc_trig0_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    EC_tgt_acc_trig0_carry__1_i_2
       (.I0(Q[18]),
        .I1(tgt_EC_loc[18]),
        .I2(Q[19]),
        .I3(tgt_EC_loc[19]),
        .O(EC_tgt_acc_trig0_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    EC_tgt_acc_trig0_carry__1_i_3
       (.I0(Q[16]),
        .I1(tgt_EC_loc[16]),
        .I2(Q[17]),
        .I3(tgt_EC_loc[17]),
        .O(EC_tgt_acc_trig0_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    EC_tgt_acc_trig0_carry__1_i_4
       (.I0(tgt_EC_loc[20]),
        .I1(Q[20]),
        .I2(tgt_EC_loc[21]),
        .I3(Q[21]),
        .O(EC_tgt_acc_trig0_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    EC_tgt_acc_trig0_carry__1_i_5
       (.I0(tgt_EC_loc[18]),
        .I1(Q[18]),
        .I2(tgt_EC_loc[19]),
        .I3(Q[19]),
        .O(EC_tgt_acc_trig0_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    EC_tgt_acc_trig0_carry__1_i_6
       (.I0(Q[16]),
        .I1(tgt_EC_loc[16]),
        .I2(Q[17]),
        .I3(tgt_EC_loc[17]),
        .O(EC_tgt_acc_trig0_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    EC_tgt_acc_trig0_carry_i_1
       (.I0(Q[6]),
        .I1(tgt_EC_loc[6]),
        .I2(Q[7]),
        .I3(tgt_EC_loc[7]),
        .O(EC_tgt_acc_trig0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    EC_tgt_acc_trig0_carry_i_2
       (.I0(Q[4]),
        .I1(tgt_EC_loc[4]),
        .I2(Q[5]),
        .I3(tgt_EC_loc[5]),
        .O(EC_tgt_acc_trig0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    EC_tgt_acc_trig0_carry_i_3
       (.I0(Q[2]),
        .I1(tgt_EC_loc[2]),
        .I2(Q[3]),
        .I3(tgt_EC_loc[3]),
        .O(EC_tgt_acc_trig0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    EC_tgt_acc_trig0_carry_i_4
       (.I0(Q[0]),
        .I1(tgt_EC_loc[0]),
        .I2(Q[1]),
        .I3(tgt_EC_loc[1]),
        .O(EC_tgt_acc_trig0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    EC_tgt_acc_trig0_carry_i_5
       (.I0(tgt_EC_loc[6]),
        .I1(Q[6]),
        .I2(tgt_EC_loc[7]),
        .I3(Q[7]),
        .O(EC_tgt_acc_trig0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    EC_tgt_acc_trig0_carry_i_6
       (.I0(Q[4]),
        .I1(tgt_EC_loc[4]),
        .I2(Q[5]),
        .I3(tgt_EC_loc[5]),
        .O(EC_tgt_acc_trig0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    EC_tgt_acc_trig0_carry_i_7
       (.I0(Q[3]),
        .I1(tgt_EC_loc[3]),
        .I2(Q[2]),
        .I3(tgt_EC_loc[2]),
        .O(EC_tgt_acc_trig0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    EC_tgt_acc_trig0_carry_i_8
       (.I0(tgt_EC_loc[0]),
        .I1(Q[0]),
        .I2(tgt_EC_loc[1]),
        .I3(Q[1]),
        .O(EC_tgt_acc_trig0_carry_i_8_n_0));
  CARRY4 \EC_tgt_acc_trig0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\EC_tgt_acc_trig0_inferred__0/i__carry_n_0 ,\EC_tgt_acc_trig0_inferred__0/i__carry_n_1 ,\EC_tgt_acc_trig0_inferred__0/i__carry_n_2 ,\EC_tgt_acc_trig0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(\NLW_EC_tgt_acc_trig0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  CARRY4 \EC_tgt_acc_trig0_inferred__0/i__carry__0 
       (.CI(\EC_tgt_acc_trig0_inferred__0/i__carry_n_0 ),
        .CO({\EC_tgt_acc_trig0_inferred__0/i__carry__0_n_0 ,\EC_tgt_acc_trig0_inferred__0/i__carry__0_n_1 ,\EC_tgt_acc_trig0_inferred__0/i__carry__0_n_2 ,\EC_tgt_acc_trig0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}),
        .O(\NLW_EC_tgt_acc_trig0_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  CARRY4 \EC_tgt_acc_trig0_inferred__0/i__carry__1 
       (.CI(\EC_tgt_acc_trig0_inferred__0/i__carry__0_n_0 ),
        .CO({\NLW_EC_tgt_acc_trig0_inferred__0/i__carry__1_CO_UNCONNECTED [3],EC_tgt_acc_trig05_in,\EC_tgt_acc_trig0_inferred__0/i__carry__1_n_2 ,\EC_tgt_acc_trig0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0}),
        .O(\NLW_EC_tgt_acc_trig0_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry__1_i_4_n_0,i__carry__1_i_5_n_0,i__carry__1_i_6_n_0}));
  CARRY4 \EC_tgt_acc_trig0_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\EC_tgt_acc_trig0_inferred__1/i__carry_n_0 ,\EC_tgt_acc_trig0_inferred__1/i__carry_n_1 ,\EC_tgt_acc_trig0_inferred__1/i__carry_n_2 ,\EC_tgt_acc_trig0_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_EC_tgt_acc_trig0_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}));
  CARRY4 \EC_tgt_acc_trig0_inferred__1/i__carry__0 
       (.CI(\EC_tgt_acc_trig0_inferred__1/i__carry_n_0 ),
        .CO({EC_tgt_acc_trig0,\EC_tgt_acc_trig0_inferred__1/i__carry__0_n_1 ,\EC_tgt_acc_trig0_inferred__1/i__carry__0_n_2 ,\EC_tgt_acc_trig0_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_EC_tgt_acc_trig0_inferred__1/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1__2_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}));
  LUT4 #(
    .INIT(16'h2AAA)) 
    EC_tgt_acc_trig_i_1
       (.I0(EC_tgt_acc_trig_i_2_n_0),
        .I1(sm_start_reg_n_0),
        .I2(EC_tgt_acc_trig08_in),
        .I3(sm_run_stp_reg_n_0),
        .O(EC_tgt_acc_trig_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000E2EA0000)) 
    EC_tgt_acc_trig_i_2
       (.I0(EC_tgt_acc_trig_reg_n_0),
        .I1(sm_start_reg_n_0),
        .I2(EC_tgt_acc_trig05_in),
        .I3(EC_tgt_acc_trig0),
        .I4(sm_run_stp_reg_n_0),
        .I5(rst_200_out),
        .O(EC_tgt_acc_trig_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    EC_tgt_acc_trig_reg
       (.C(clk200),
        .CE(1'b1),
        .D(EC_tgt_acc_trig_i_1_n_0),
        .Q(EC_tgt_acc_trig_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBBBF000088880000)) 
    EC_tgt_dec_trig_i_1
       (.I0(EC_tgt_acc_trig08_in),
        .I1(sm_start_reg_n_0),
        .I2(EC_tgt_acc_trig05_in),
        .I3(EC_tgt_acc_trig0),
        .I4(sm_run_stp_reg_n_0),
        .I5(EC_tgt_dec_trig_reg_n_0),
        .O(EC_tgt_dec_trig_i_1_n_0));
  FDRE EC_tgt_dec_trig_reg
       (.C(clk200),
        .CE(1'b1),
        .D(EC_tgt_dec_trig_i_1_n_0),
        .Q(EC_tgt_dec_trig_reg_n_0),
        .R(rst_200_out));
  LUT6 #(
    .INIT(64'hAAA8FFFFAAA8AAA8)) 
    \FSM_onehot_sm_state[0]_i_1 
       (.I0(sm_stop),
        .I1(\FSM_onehot_sm_state_reg_n_0_[30] ),
        .I2(\FSM_onehot_sm_state_reg_n_0_[18] ),
        .I3(\FSM_onehot_sm_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_sm_state[0]_i_2_n_0 ),
        .I5(\FSM_onehot_sm_state_reg_n_0_[0] ),
        .O(\FSM_onehot_sm_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_sm_state[0]_i_2 
       (.I0(slw_stps_trig),
        .I1(fst_stps_trig),
        .I2(ramp_up_trig),
        .O(\FSM_onehot_sm_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_sm_state[10]_i_1 
       (.I0(sm_stop),
        .I1(\FSM_onehot_sm_state_reg_n_0_[10] ),
        .I2(\FSM_onehot_sm_state_reg_n_0_[9] ),
        .O(\FSM_onehot_sm_state[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF888888A8)) 
    \FSM_onehot_sm_state[11]_i_1 
       (.I0(sm_stop),
        .I1(\FSM_onehot_sm_state_reg_n_0_[10] ),
        .I2(\FSM_onehot_sm_state_reg_n_0_[12] ),
        .I3(triangle_reg_n_0),
        .I4(dec_trj_trig),
        .I5(\FSM_onehot_sm_state[11]_i_2_n_0 ),
        .O(\FSM_onehot_sm_state[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h08080800)) 
    \FSM_onehot_sm_state[11]_i_2 
       (.I0(sm_stop),
        .I1(acc_flg),
        .I2(cnt_o[0]),
        .I3(EC_tgt_acc_trig_reg_n_0),
        .I4(triangle_reg_n_0),
        .O(\FSM_onehot_sm_state[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_sm_state[12]_i_1 
       (.I0(sm_stop),
        .I1(\FSM_onehot_sm_state_reg_n_0_[12] ),
        .I2(\FSM_onehot_sm_state_reg_n_0_[11] ),
        .O(\FSM_onehot_sm_state[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \FSM_onehot_sm_state[13]_i_1 
       (.I0(\FSM_onehot_sm_state_reg_n_0_[12] ),
        .I1(sm_stop),
        .I2(triangle_reg_n_0),
        .I3(dec_trj_trig),
        .O(\FSM_onehot_sm_state[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_sm_state[14]_i_1 
       (.I0(sm_stop),
        .I1(\FSM_onehot_sm_state_reg_n_0_[14] ),
        .I2(\FSM_onehot_sm_state_reg_n_0_[13] ),
        .O(\FSM_onehot_sm_state[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hF200)) 
    \FSM_onehot_sm_state[15]_i_1 
       (.I0(\FSM_onehot_sm_state_reg_n_0_[16] ),
        .I1(end_trj_trig),
        .I2(\FSM_onehot_sm_state_reg_n_0_[14] ),
        .I3(sm_stop),
        .O(\FSM_onehot_sm_state[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_sm_state[16]_i_1 
       (.I0(sm_stop),
        .I1(\FSM_onehot_sm_state_reg_n_0_[16] ),
        .I2(\FSM_onehot_sm_state_reg_n_0_[15] ),
        .O(\FSM_onehot_sm_state[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_sm_state[17]_i_1 
       (.I0(\FSM_onehot_sm_state_reg_n_0_[16] ),
        .I1(sm_stop),
        .I2(end_trj_trig),
        .O(\FSM_onehot_sm_state[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_sm_state[18]_i_1 
       (.I0(sm_stop),
        .I1(\FSM_onehot_sm_state_reg_n_0_[18] ),
        .I2(\FSM_onehot_sm_state_reg_n_0_[17] ),
        .O(\FSM_onehot_sm_state[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \FSM_onehot_sm_state[19]_i_1 
       (.I0(ramp_up_trig),
        .I1(\FSM_onehot_sm_state_reg_n_0_[0] ),
        .I2(slw_stps_trig),
        .I3(fst_stps_trig),
        .O(\FSM_onehot_sm_state[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFF404040)) 
    \FSM_onehot_sm_state[1]_i_1 
       (.I0(end_trj_trig),
        .I1(sm_stop),
        .I2(\FSM_onehot_sm_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_sm_state_reg_n_0_[0] ),
        .I4(slw_stps_trig),
        .O(\FSM_onehot_sm_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_sm_state[20]_i_1 
       (.I0(sm_stop),
        .I1(\FSM_onehot_sm_state_reg_n_0_[20] ),
        .I2(\FSM_onehot_sm_state_reg_n_0_[19] ),
        .O(\FSM_onehot_sm_state[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00F400000000)) 
    \FSM_onehot_sm_state[21]_i_1 
       (.I0(ACC_zero_flg_reg_n_0),
        .I1(\FSM_onehot_sm_state_reg_n_0_[32] ),
        .I2(\FSM_onehot_sm_state_reg_n_0_[22] ),
        .I3(EC_tgt_acc_trig_reg_n_0),
        .I4(\FSM_onehot_sm_state_reg_n_0_[20] ),
        .I5(sm_stop),
        .O(\FSM_onehot_sm_state[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_sm_state[22]_i_1 
       (.I0(sm_stop),
        .I1(\FSM_onehot_sm_state_reg_n_0_[22] ),
        .I2(\FSM_onehot_sm_state_reg_n_0_[21] ),
        .O(\FSM_onehot_sm_state[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_sm_state[23]_i_1 
       (.I0(\FSM_onehot_sm_state_reg_n_0_[22] ),
        .I1(EC_tgt_acc_trig_reg_n_0),
        .I2(sm_stop),
        .O(\FSM_onehot_sm_state[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_sm_state[24]_i_1 
       (.I0(sm_stop),
        .I1(\FSM_onehot_sm_state_reg_n_0_[24] ),
        .I2(\FSM_onehot_sm_state_reg_n_0_[23] ),
        .O(\FSM_onehot_sm_state[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hABAAAAAA)) 
    \FSM_onehot_sm_state[25]_i_1 
       (.I0(\FSM_onehot_sm_state[25]_i_2_n_0 ),
        .I1(spd_chg_trig),
        .I2(ramp_dwn_trig),
        .I3(sm_stop),
        .I4(\FSM_onehot_sm_state_reg_n_0_[26] ),
        .O(\FSM_onehot_sm_state[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0F080)) 
    \FSM_onehot_sm_state[25]_i_2 
       (.I0(ACC_zero_flg_reg_n_0),
        .I1(\FSM_onehot_sm_state_reg_n_0_[32] ),
        .I2(sm_stop),
        .I3(\FSM_onehot_sm_state_reg_n_0_[24] ),
        .I4(\FSM_onehot_sm_state_reg_n_0_[36] ),
        .O(\FSM_onehot_sm_state[25]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_sm_state[26]_i_1 
       (.I0(sm_stop),
        .I1(\FSM_onehot_sm_state_reg_n_0_[26] ),
        .I2(\FSM_onehot_sm_state_reg_n_0_[25] ),
        .O(\FSM_onehot_sm_state[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h8080F080)) 
    \FSM_onehot_sm_state[27]_i_1 
       (.I0(\FSM_onehot_sm_state_reg_n_0_[26] ),
        .I1(ramp_dwn_trig),
        .I2(sm_stop),
        .I3(\FSM_onehot_sm_state_reg_n_0_[28] ),
        .I4(init_EC_trig_reg_n_0),
        .O(\FSM_onehot_sm_state[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_sm_state[28]_i_1 
       (.I0(sm_stop),
        .I1(\FSM_onehot_sm_state_reg_n_0_[28] ),
        .I2(\FSM_onehot_sm_state_reg_n_0_[27] ),
        .O(\FSM_onehot_sm_state[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_sm_state[29]_i_1 
       (.I0(\FSM_onehot_sm_state_reg_n_0_[28] ),
        .I1(sm_stop),
        .I2(init_EC_trig_reg_n_0),
        .O(\FSM_onehot_sm_state[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_sm_state[2]_i_1 
       (.I0(sm_stop),
        .I1(\FSM_onehot_sm_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_sm_state_reg_n_0_[1] ),
        .O(\FSM_onehot_sm_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_sm_state[30]_i_1 
       (.I0(sm_stop),
        .I1(\FSM_onehot_sm_state_reg_n_0_[30] ),
        .I2(\FSM_onehot_sm_state_reg_n_0_[29] ),
        .O(\FSM_onehot_sm_state[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \FSM_onehot_sm_state[31]_i_1 
       (.I0(\FSM_onehot_sm_state_reg_n_0_[26] ),
        .I1(sm_stop),
        .I2(ramp_dwn_trig),
        .I3(spd_chg_trig),
        .O(\FSM_onehot_sm_state[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_sm_state[32]_i_1 
       (.I0(sm_stop),
        .I1(\FSM_onehot_sm_state_reg_n_0_[32] ),
        .I2(\FSM_onehot_sm_state_reg_n_0_[31] ),
        .O(\FSM_onehot_sm_state[32]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h08000800FF000800)) 
    \FSM_onehot_sm_state[33]_i_1 
       (.I0(EC_tgt_acc_trig_reg_n_0),
        .I1(\FSM_onehot_sm_state_reg_n_0_[32] ),
        .I2(ACC_zero_flg_reg_n_0),
        .I3(sm_stop),
        .I4(\FSM_onehot_sm_state_reg_n_0_[34] ),
        .I5(EC_tgt_dec_trig_reg_n_0),
        .O(\FSM_onehot_sm_state[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_sm_state[34]_i_1 
       (.I0(sm_stop),
        .I1(\FSM_onehot_sm_state_reg_n_0_[34] ),
        .I2(\FSM_onehot_sm_state_reg_n_0_[33] ),
        .O(\FSM_onehot_sm_state[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_sm_state[35]_i_1 
       (.I0(\FSM_onehot_sm_state_reg_n_0_[34] ),
        .I1(sm_stop),
        .I2(EC_tgt_dec_trig_reg_n_0),
        .O(\FSM_onehot_sm_state[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_sm_state[36]_i_1 
       (.I0(sm_stop),
        .I1(\FSM_onehot_sm_state_reg_n_0_[36] ),
        .I2(\FSM_onehot_sm_state_reg_n_0_[35] ),
        .O(\FSM_onehot_sm_state[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_sm_state[3]_i_1 
       (.I0(\FSM_onehot_sm_state_reg_n_0_[2] ),
        .I1(sm_stop),
        .I2(end_trj_trig),
        .O(\FSM_onehot_sm_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_sm_state[4]_i_1 
       (.I0(sm_stop),
        .I1(\FSM_onehot_sm_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_sm_state_reg_n_0_[3] ),
        .O(\FSM_onehot_sm_state[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_onehot_sm_state[5]_i_1 
       (.I0(slw_stps_trig),
        .I1(fst_stps_trig),
        .I2(\FSM_onehot_sm_state_reg_n_0_[0] ),
        .O(\FSM_onehot_sm_state[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_sm_state[6]_i_1 
       (.I0(sm_stop),
        .I1(\FSM_onehot_sm_state_reg_n_0_[6] ),
        .I2(\FSM_onehot_sm_state_reg_n_0_[5] ),
        .O(\FSM_onehot_sm_state[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF100000)) 
    \FSM_onehot_sm_state[7]_i_1 
       (.I0(triangle_reg_n_0),
        .I1(EC_tgt_acc_trig_reg_n_0),
        .I2(acc_flg),
        .I3(\FSM_onehot_sm_state_reg_n_0_[6] ),
        .I4(sm_stop),
        .O(\FSM_onehot_sm_state[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_sm_state[8]_i_1 
       (.I0(sm_stop),
        .I1(acc_flg),
        .I2(\FSM_onehot_sm_state_reg_n_0_[7] ),
        .O(\FSM_onehot_sm_state[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80808000)) 
    \FSM_onehot_sm_state[9]_i_1 
       (.I0(sm_stop),
        .I1(acc_flg),
        .I2(cnt_o[0]),
        .I3(EC_tgt_acc_trig_reg_n_0),
        .I4(triangle_reg_n_0),
        .O(\FSM_onehot_sm_state[9]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_sm_state_reg[0] 
       (.C(clk200),
        .CE(1'b1),
        .D(\FSM_onehot_sm_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_sm_state_reg_n_0_[0] ),
        .S(rst_200_out));
  (* FSM_ENCODED_STATES = "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sm_state_reg[10] 
       (.C(clk200),
        .CE(1'b1),
        .D(\FSM_onehot_sm_state[10]_i_1_n_0 ),
        .Q(\FSM_onehot_sm_state_reg_n_0_[10] ),
        .R(rst_200_out));
  (* FSM_ENCODED_STATES = "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sm_state_reg[11] 
       (.C(clk200),
        .CE(1'b1),
        .D(\FSM_onehot_sm_state[11]_i_1_n_0 ),
        .Q(\FSM_onehot_sm_state_reg_n_0_[11] ),
        .R(rst_200_out));
  (* FSM_ENCODED_STATES = "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sm_state_reg[12] 
       (.C(clk200),
        .CE(1'b1),
        .D(\FSM_onehot_sm_state[12]_i_1_n_0 ),
        .Q(\FSM_onehot_sm_state_reg_n_0_[12] ),
        .R(rst_200_out));
  (* FSM_ENCODED_STATES = "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sm_state_reg[13] 
       (.C(clk200),
        .CE(1'b1),
        .D(\FSM_onehot_sm_state[13]_i_1_n_0 ),
        .Q(\FSM_onehot_sm_state_reg_n_0_[13] ),
        .R(rst_200_out));
  (* FSM_ENCODED_STATES = "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sm_state_reg[14] 
       (.C(clk200),
        .CE(1'b1),
        .D(\FSM_onehot_sm_state[14]_i_1_n_0 ),
        .Q(\FSM_onehot_sm_state_reg_n_0_[14] ),
        .R(rst_200_out));
  (* FSM_ENCODED_STATES = "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sm_state_reg[15] 
       (.C(clk200),
        .CE(1'b1),
        .D(\FSM_onehot_sm_state[15]_i_1_n_0 ),
        .Q(\FSM_onehot_sm_state_reg_n_0_[15] ),
        .R(rst_200_out));
  (* FSM_ENCODED_STATES = "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sm_state_reg[16] 
       (.C(clk200),
        .CE(1'b1),
        .D(\FSM_onehot_sm_state[16]_i_1_n_0 ),
        .Q(\FSM_onehot_sm_state_reg_n_0_[16] ),
        .R(rst_200_out));
  (* FSM_ENCODED_STATES = "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sm_state_reg[17] 
       (.C(clk200),
        .CE(1'b1),
        .D(\FSM_onehot_sm_state[17]_i_1_n_0 ),
        .Q(\FSM_onehot_sm_state_reg_n_0_[17] ),
        .R(rst_200_out));
  (* FSM_ENCODED_STATES = "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sm_state_reg[18] 
       (.C(clk200),
        .CE(1'b1),
        .D(\FSM_onehot_sm_state[18]_i_1_n_0 ),
        .Q(\FSM_onehot_sm_state_reg_n_0_[18] ),
        .R(rst_200_out));
  (* FSM_ENCODED_STATES = "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sm_state_reg[19] 
       (.C(clk200),
        .CE(1'b1),
        .D(\FSM_onehot_sm_state[19]_i_1_n_0 ),
        .Q(\FSM_onehot_sm_state_reg_n_0_[19] ),
        .R(rst_200_out));
  (* FSM_ENCODED_STATES = "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sm_state_reg[1] 
       (.C(clk200),
        .CE(1'b1),
        .D(\FSM_onehot_sm_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_sm_state_reg_n_0_[1] ),
        .R(rst_200_out));
  (* FSM_ENCODED_STATES = "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sm_state_reg[20] 
       (.C(clk200),
        .CE(1'b1),
        .D(\FSM_onehot_sm_state[20]_i_1_n_0 ),
        .Q(\FSM_onehot_sm_state_reg_n_0_[20] ),
        .R(rst_200_out));
  (* FSM_ENCODED_STATES = "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sm_state_reg[21] 
       (.C(clk200),
        .CE(1'b1),
        .D(\FSM_onehot_sm_state[21]_i_1_n_0 ),
        .Q(\FSM_onehot_sm_state_reg_n_0_[21] ),
        .R(rst_200_out));
  (* FSM_ENCODED_STATES = "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sm_state_reg[22] 
       (.C(clk200),
        .CE(1'b1),
        .D(\FSM_onehot_sm_state[22]_i_1_n_0 ),
        .Q(\FSM_onehot_sm_state_reg_n_0_[22] ),
        .R(rst_200_out));
  (* FSM_ENCODED_STATES = "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sm_state_reg[23] 
       (.C(clk200),
        .CE(1'b1),
        .D(\FSM_onehot_sm_state[23]_i_1_n_0 ),
        .Q(\FSM_onehot_sm_state_reg_n_0_[23] ),
        .R(rst_200_out));
  (* FSM_ENCODED_STATES = "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sm_state_reg[24] 
       (.C(clk200),
        .CE(1'b1),
        .D(\FSM_onehot_sm_state[24]_i_1_n_0 ),
        .Q(\FSM_onehot_sm_state_reg_n_0_[24] ),
        .R(rst_200_out));
  (* FSM_ENCODED_STATES = "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sm_state_reg[25] 
       (.C(clk200),
        .CE(1'b1),
        .D(\FSM_onehot_sm_state[25]_i_1_n_0 ),
        .Q(\FSM_onehot_sm_state_reg_n_0_[25] ),
        .R(rst_200_out));
  (* FSM_ENCODED_STATES = "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sm_state_reg[26] 
       (.C(clk200),
        .CE(1'b1),
        .D(\FSM_onehot_sm_state[26]_i_1_n_0 ),
        .Q(\FSM_onehot_sm_state_reg_n_0_[26] ),
        .R(rst_200_out));
  (* FSM_ENCODED_STATES = "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sm_state_reg[27] 
       (.C(clk200),
        .CE(1'b1),
        .D(\FSM_onehot_sm_state[27]_i_1_n_0 ),
        .Q(\FSM_onehot_sm_state_reg_n_0_[27] ),
        .R(rst_200_out));
  (* FSM_ENCODED_STATES = "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sm_state_reg[28] 
       (.C(clk200),
        .CE(1'b1),
        .D(\FSM_onehot_sm_state[28]_i_1_n_0 ),
        .Q(\FSM_onehot_sm_state_reg_n_0_[28] ),
        .R(rst_200_out));
  (* FSM_ENCODED_STATES = "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sm_state_reg[29] 
       (.C(clk200),
        .CE(1'b1),
        .D(\FSM_onehot_sm_state[29]_i_1_n_0 ),
        .Q(\FSM_onehot_sm_state_reg_n_0_[29] ),
        .R(rst_200_out));
  (* FSM_ENCODED_STATES = "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sm_state_reg[2] 
       (.C(clk200),
        .CE(1'b1),
        .D(\FSM_onehot_sm_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_sm_state_reg_n_0_[2] ),
        .R(rst_200_out));
  (* FSM_ENCODED_STATES = "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sm_state_reg[30] 
       (.C(clk200),
        .CE(1'b1),
        .D(\FSM_onehot_sm_state[30]_i_1_n_0 ),
        .Q(\FSM_onehot_sm_state_reg_n_0_[30] ),
        .R(rst_200_out));
  (* FSM_ENCODED_STATES = "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sm_state_reg[31] 
       (.C(clk200),
        .CE(1'b1),
        .D(\FSM_onehot_sm_state[31]_i_1_n_0 ),
        .Q(\FSM_onehot_sm_state_reg_n_0_[31] ),
        .R(rst_200_out));
  (* FSM_ENCODED_STATES = "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sm_state_reg[32] 
       (.C(clk200),
        .CE(1'b1),
        .D(\FSM_onehot_sm_state[32]_i_1_n_0 ),
        .Q(\FSM_onehot_sm_state_reg_n_0_[32] ),
        .R(rst_200_out));
  (* FSM_ENCODED_STATES = "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sm_state_reg[33] 
       (.C(clk200),
        .CE(1'b1),
        .D(\FSM_onehot_sm_state[33]_i_1_n_0 ),
        .Q(\FSM_onehot_sm_state_reg_n_0_[33] ),
        .R(rst_200_out));
  (* FSM_ENCODED_STATES = "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sm_state_reg[34] 
       (.C(clk200),
        .CE(1'b1),
        .D(\FSM_onehot_sm_state[34]_i_1_n_0 ),
        .Q(\FSM_onehot_sm_state_reg_n_0_[34] ),
        .R(rst_200_out));
  (* FSM_ENCODED_STATES = "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sm_state_reg[35] 
       (.C(clk200),
        .CE(1'b1),
        .D(\FSM_onehot_sm_state[35]_i_1_n_0 ),
        .Q(\FSM_onehot_sm_state_reg_n_0_[35] ),
        .R(rst_200_out));
  (* FSM_ENCODED_STATES = "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sm_state_reg[36] 
       (.C(clk200),
        .CE(1'b1),
        .D(\FSM_onehot_sm_state[36]_i_1_n_0 ),
        .Q(\FSM_onehot_sm_state_reg_n_0_[36] ),
        .R(rst_200_out));
  (* FSM_ENCODED_STATES = "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sm_state_reg[3] 
       (.C(clk200),
        .CE(1'b1),
        .D(\FSM_onehot_sm_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_sm_state_reg_n_0_[3] ),
        .R(rst_200_out));
  (* FSM_ENCODED_STATES = "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sm_state_reg[4] 
       (.C(clk200),
        .CE(1'b1),
        .D(\FSM_onehot_sm_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_sm_state_reg_n_0_[4] ),
        .R(rst_200_out));
  (* FSM_ENCODED_STATES = "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sm_state_reg[5] 
       (.C(clk200),
        .CE(1'b1),
        .D(\FSM_onehot_sm_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_sm_state_reg_n_0_[5] ),
        .R(rst_200_out));
  (* FSM_ENCODED_STATES = "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sm_state_reg[6] 
       (.C(clk200),
        .CE(1'b1),
        .D(\FSM_onehot_sm_state[6]_i_1_n_0 ),
        .Q(\FSM_onehot_sm_state_reg_n_0_[6] ),
        .R(rst_200_out));
  (* FSM_ENCODED_STATES = "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sm_state_reg[7] 
       (.C(clk200),
        .CE(1'b1),
        .D(\FSM_onehot_sm_state[7]_i_1_n_0 ),
        .Q(\FSM_onehot_sm_state_reg_n_0_[7] ),
        .R(rst_200_out));
  (* FSM_ENCODED_STATES = "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sm_state_reg[8] 
       (.C(clk200),
        .CE(1'b1),
        .D(\FSM_onehot_sm_state[8]_i_1_n_0 ),
        .Q(acc_flg),
        .R(rst_200_out));
  (* FSM_ENCODED_STATES = "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_sm_state_reg[9] 
       (.C(clk200),
        .CE(1'b1),
        .D(\FSM_onehot_sm_state[9]_i_1_n_0 ),
        .Q(\FSM_onehot_sm_state_reg_n_0_[9] ),
        .R(rst_200_out));
  FDRE #(
    .INIT(1'b0)) 
    acc_flg_reg
       (.C(clk200),
        .CE(1'b1),
        .D(acc_flg),
        .Q(acc_flg_reg_n_0),
        .R(rst_200_out));
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
  LUT6 #(
    .INIT(64'h3333223333332230)) 
    clock_loc_i_1
       (.I0(\pulse_cnt[0]_i_3_n_0 ),
        .I1(rst_200_out),
        .I2(sm_start_reg_n_0),
        .I3(pulse_cnt_reg[3]),
        .I4(\pulse_cnt[0]_i_4_n_0 ),
        .I5(clock_loc_i_2_n_0),
        .O(clock_loc_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    clock_loc_i_2
       (.I0(pulse_cnt_reg[12]),
        .I1(pulse_cnt_reg[9]),
        .I2(pulse_cnt_reg[8]),
        .I3(pulse_cnt_reg[7]),
        .O(clock_loc_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clock_loc_reg
       (.C(clk200),
        .CE(1'b1),
        .D(clock_loc_i_1_n_0),
        .Q(clock_loc__0),
        .R(1'b0));
  FDRE \cnt_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(steps_loc[0]),
        .Q(cnt_i[0]),
        .R(reset));
  FDRE \cnt_i_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(steps_loc[10]),
        .Q(cnt_i[10]),
        .R(reset));
  FDRE \cnt_i_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(steps_loc[11]),
        .Q(cnt_i[11]),
        .R(reset));
  FDRE \cnt_i_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(steps_loc[12]),
        .Q(cnt_i[12]),
        .R(reset));
  FDRE \cnt_i_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(steps_loc[13]),
        .Q(cnt_i[13]),
        .R(reset));
  FDRE \cnt_i_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(steps_loc[14]),
        .Q(cnt_i[14]),
        .R(reset));
  FDRE \cnt_i_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(steps_loc[15]),
        .Q(cnt_i[15]),
        .R(reset));
  FDRE \cnt_i_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(steps_loc[16]),
        .Q(cnt_i[16]),
        .R(reset));
  FDRE \cnt_i_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(steps_loc[17]),
        .Q(cnt_i[17]),
        .R(reset));
  FDRE \cnt_i_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(steps_loc[18]),
        .Q(cnt_i[18]),
        .R(reset));
  FDRE \cnt_i_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(steps_loc[19]),
        .Q(cnt_i[19]),
        .R(reset));
  FDRE \cnt_i_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(steps_loc[1]),
        .Q(cnt_i[1]),
        .R(reset));
  FDRE \cnt_i_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(steps_loc[20]),
        .Q(cnt_i[20]),
        .R(reset));
  FDRE \cnt_i_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(steps_loc[21]),
        .Q(cnt_i[21]),
        .R(reset));
  FDRE \cnt_i_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(steps_loc[22]),
        .Q(cnt_i[22]),
        .R(reset));
  FDRE \cnt_i_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(steps_loc[23]),
        .Q(cnt_i[23]),
        .R(reset));
  FDRE \cnt_i_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(steps_loc[24]),
        .Q(cnt_i[24]),
        .R(reset));
  FDRE \cnt_i_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(steps_loc[25]),
        .Q(cnt_i[25]),
        .R(reset));
  FDRE \cnt_i_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(steps_loc[26]),
        .Q(cnt_i[26]),
        .R(reset));
  FDRE \cnt_i_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(steps_loc[27]),
        .Q(cnt_i[27]),
        .R(reset));
  FDRE \cnt_i_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(steps_loc[28]),
        .Q(cnt_i[28]),
        .R(reset));
  FDRE \cnt_i_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(steps_loc[29]),
        .Q(cnt_i[29]),
        .R(reset));
  FDRE \cnt_i_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(steps_loc[2]),
        .Q(cnt_i[2]),
        .R(reset));
  FDRE \cnt_i_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(steps_loc[30]),
        .Q(cnt_i[30]),
        .R(reset));
  FDRE \cnt_i_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(steps_loc[31]),
        .Q(cnt_i[31]),
        .R(reset));
  FDRE \cnt_i_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(steps_loc[3]),
        .Q(cnt_i[3]),
        .R(reset));
  FDRE \cnt_i_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(steps_loc[4]),
        .Q(cnt_i[4]),
        .R(reset));
  FDRE \cnt_i_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(steps_loc[5]),
        .Q(cnt_i[5]),
        .R(reset));
  FDRE \cnt_i_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(steps_loc[6]),
        .Q(cnt_i[6]),
        .R(reset));
  FDRE \cnt_i_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(steps_loc[7]),
        .Q(cnt_i[7]),
        .R(reset));
  FDRE \cnt_i_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(steps_loc[8]),
        .Q(cnt_i[8]),
        .R(reset));
  FDRE \cnt_i_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(steps_loc[9]),
        .Q(cnt_i[9]),
        .R(reset));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \dec_steps[31]_i_1 
       (.I0(sm_run_stp_reg_n_0),
        .I1(slw_stps_trig),
        .I2(fst_stps_trig),
        .I3(ramp_up_trig),
        .I4(rst_200_out),
        .O(\dec_steps[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \dec_steps[31]_i_2 
       (.I0(acc_flg_reg_n_0),
        .I1(sm_stop),
        .I2(EC_tgt_acc_trig_reg_n_0),
        .I3(ramp_up_trig),
        .I4(fst_stps_trig),
        .I5(slw_stps_trig),
        .O(dec_steps));
  FDRE #(
    .INIT(1'b0)) 
    \dec_steps_reg[0] 
       (.C(clk200),
        .CE(dec_steps),
        .D(\minusOp_inferred__1/i__carry_n_7 ),
        .Q(\dec_steps_reg_n_0_[0] ),
        .R(\dec_steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_steps_reg[10] 
       (.C(clk200),
        .CE(dec_steps),
        .D(\minusOp_inferred__1/i__carry__1_n_5 ),
        .Q(\dec_steps_reg_n_0_[10] ),
        .R(\dec_steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_steps_reg[11] 
       (.C(clk200),
        .CE(dec_steps),
        .D(\minusOp_inferred__1/i__carry__1_n_4 ),
        .Q(\dec_steps_reg_n_0_[11] ),
        .R(\dec_steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_steps_reg[12] 
       (.C(clk200),
        .CE(dec_steps),
        .D(\minusOp_inferred__1/i__carry__2_n_7 ),
        .Q(\dec_steps_reg_n_0_[12] ),
        .R(\dec_steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_steps_reg[13] 
       (.C(clk200),
        .CE(dec_steps),
        .D(\minusOp_inferred__1/i__carry__2_n_6 ),
        .Q(\dec_steps_reg_n_0_[13] ),
        .R(\dec_steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_steps_reg[14] 
       (.C(clk200),
        .CE(dec_steps),
        .D(\minusOp_inferred__1/i__carry__2_n_5 ),
        .Q(\dec_steps_reg_n_0_[14] ),
        .R(\dec_steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_steps_reg[15] 
       (.C(clk200),
        .CE(dec_steps),
        .D(\minusOp_inferred__1/i__carry__2_n_4 ),
        .Q(\dec_steps_reg_n_0_[15] ),
        .R(\dec_steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_steps_reg[16] 
       (.C(clk200),
        .CE(dec_steps),
        .D(\minusOp_inferred__1/i__carry__3_n_7 ),
        .Q(R[16]),
        .R(\dec_steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_steps_reg[17] 
       (.C(clk200),
        .CE(dec_steps),
        .D(\minusOp_inferred__1/i__carry__3_n_6 ),
        .Q(R[17]),
        .R(\dec_steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_steps_reg[18] 
       (.C(clk200),
        .CE(dec_steps),
        .D(\minusOp_inferred__1/i__carry__3_n_5 ),
        .Q(R[18]),
        .R(\dec_steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_steps_reg[19] 
       (.C(clk200),
        .CE(dec_steps),
        .D(\minusOp_inferred__1/i__carry__3_n_4 ),
        .Q(R[19]),
        .R(\dec_steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_steps_reg[1] 
       (.C(clk200),
        .CE(dec_steps),
        .D(\minusOp_inferred__1/i__carry_n_6 ),
        .Q(\dec_steps_reg_n_0_[1] ),
        .R(\dec_steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_steps_reg[20] 
       (.C(clk200),
        .CE(dec_steps),
        .D(\minusOp_inferred__1/i__carry__4_n_7 ),
        .Q(R[20]),
        .R(\dec_steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_steps_reg[21] 
       (.C(clk200),
        .CE(dec_steps),
        .D(\minusOp_inferred__1/i__carry__4_n_6 ),
        .Q(R[21]),
        .R(\dec_steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_steps_reg[22] 
       (.C(clk200),
        .CE(dec_steps),
        .D(\minusOp_inferred__1/i__carry__4_n_5 ),
        .Q(R[22]),
        .R(\dec_steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_steps_reg[23] 
       (.C(clk200),
        .CE(dec_steps),
        .D(\minusOp_inferred__1/i__carry__4_n_4 ),
        .Q(R[23]),
        .R(\dec_steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_steps_reg[24] 
       (.C(clk200),
        .CE(dec_steps),
        .D(\minusOp_inferred__1/i__carry__5_n_7 ),
        .Q(R[24]),
        .R(\dec_steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_steps_reg[25] 
       (.C(clk200),
        .CE(dec_steps),
        .D(\minusOp_inferred__1/i__carry__5_n_6 ),
        .Q(R[25]),
        .R(\dec_steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_steps_reg[26] 
       (.C(clk200),
        .CE(dec_steps),
        .D(\minusOp_inferred__1/i__carry__5_n_5 ),
        .Q(R[26]),
        .R(\dec_steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_steps_reg[27] 
       (.C(clk200),
        .CE(dec_steps),
        .D(\minusOp_inferred__1/i__carry__5_n_4 ),
        .Q(R[27]),
        .R(\dec_steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_steps_reg[28] 
       (.C(clk200),
        .CE(dec_steps),
        .D(\minusOp_inferred__1/i__carry__6_n_7 ),
        .Q(R[28]),
        .R(\dec_steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_steps_reg[29] 
       (.C(clk200),
        .CE(dec_steps),
        .D(\minusOp_inferred__1/i__carry__6_n_6 ),
        .Q(R[29]),
        .R(\dec_steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_steps_reg[2] 
       (.C(clk200),
        .CE(dec_steps),
        .D(\minusOp_inferred__1/i__carry_n_5 ),
        .Q(\dec_steps_reg_n_0_[2] ),
        .R(\dec_steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_steps_reg[30] 
       (.C(clk200),
        .CE(dec_steps),
        .D(\minusOp_inferred__1/i__carry__6_n_5 ),
        .Q(R[30]),
        .R(\dec_steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_steps_reg[31] 
       (.C(clk200),
        .CE(dec_steps),
        .D(\minusOp_inferred__1/i__carry__6_n_4 ),
        .Q(R[31]),
        .R(\dec_steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_steps_reg[3] 
       (.C(clk200),
        .CE(dec_steps),
        .D(\minusOp_inferred__1/i__carry_n_4 ),
        .Q(\dec_steps_reg_n_0_[3] ),
        .R(\dec_steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_steps_reg[4] 
       (.C(clk200),
        .CE(dec_steps),
        .D(\minusOp_inferred__1/i__carry__0_n_7 ),
        .Q(\dec_steps_reg_n_0_[4] ),
        .R(\dec_steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_steps_reg[5] 
       (.C(clk200),
        .CE(dec_steps),
        .D(\minusOp_inferred__1/i__carry__0_n_6 ),
        .Q(\dec_steps_reg_n_0_[5] ),
        .R(\dec_steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_steps_reg[6] 
       (.C(clk200),
        .CE(dec_steps),
        .D(\minusOp_inferred__1/i__carry__0_n_5 ),
        .Q(\dec_steps_reg_n_0_[6] ),
        .R(\dec_steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_steps_reg[7] 
       (.C(clk200),
        .CE(dec_steps),
        .D(\minusOp_inferred__1/i__carry__0_n_4 ),
        .Q(\dec_steps_reg_n_0_[7] ),
        .R(\dec_steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_steps_reg[8] 
       (.C(clk200),
        .CE(dec_steps),
        .D(\minusOp_inferred__1/i__carry__1_n_7 ),
        .Q(\dec_steps_reg_n_0_[8] ),
        .R(\dec_steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dec_steps_reg[9] 
       (.C(clk200),
        .CE(dec_steps),
        .D(\minusOp_inferred__1/i__carry__1_n_6 ),
        .Q(\dec_steps_reg_n_0_[9] ),
        .R(\dec_steps[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    dec_trj_trig_i_1
       (.I0(dec_trj_trig_msb),
        .I1(dec_trj_trig_lsb),
        .I2(sm_run_stp_reg_n_0),
        .I3(rst_200_out),
        .O(dec_trj_trig_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dec_trj_trig_lsb_reg
       (.C(clk200),
        .CE(sm_start_reg_n_0),
        .D(eqOp0_out),
        .Q(dec_trj_trig_lsb),
        .R(init_EC_trig));
  FDRE #(
    .INIT(1'b0)) 
    dec_trj_trig_msb_reg
       (.C(clk200),
        .CE(sm_start_reg_n_0),
        .D(\eqOp_inferred__2/i__carry__0_n_2 ),
        .Q(dec_trj_trig_msb),
        .R(init_EC_trig));
  FDRE #(
    .INIT(1'b0)) 
    dec_trj_trig_reg
       (.C(clk200),
        .CE(1'b1),
        .D(dec_trj_trig_i_1_n_0),
        .Q(dec_trj_trig),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \end_trj_reg[0]_i_1 
       (.I0(cnt_o[0]),
        .O(\end_trj_reg[0]_i_1_n_0 ));
  FDRE \end_trj_reg_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\end_trj_reg[0]_i_1_n_0 ),
        .Q(\end_trj_reg_reg_n_0_[0] ),
        .R(reset));
  FDRE \end_trj_reg_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\minusOp_inferred__0/i__carry__1_n_6 ),
        .Q(\end_trj_reg_reg_n_0_[10] ),
        .R(reset));
  FDRE \end_trj_reg_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\minusOp_inferred__0/i__carry__1_n_5 ),
        .Q(\end_trj_reg_reg_n_0_[11] ),
        .R(reset));
  FDRE \end_trj_reg_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\minusOp_inferred__0/i__carry__1_n_4 ),
        .Q(\end_trj_reg_reg_n_0_[12] ),
        .R(reset));
  FDRE \end_trj_reg_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\minusOp_inferred__0/i__carry__2_n_7 ),
        .Q(\end_trj_reg_reg_n_0_[13] ),
        .R(reset));
  FDRE \end_trj_reg_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\minusOp_inferred__0/i__carry__2_n_6 ),
        .Q(\end_trj_reg_reg_n_0_[14] ),
        .R(reset));
  FDRE \end_trj_reg_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\minusOp_inferred__0/i__carry__2_n_5 ),
        .Q(\end_trj_reg_reg_n_0_[15] ),
        .R(reset));
  FDRE \end_trj_reg_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(\minusOp_inferred__0/i__carry__2_n_4 ),
        .Q(R4_in[16]),
        .R(reset));
  FDRE \end_trj_reg_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(\minusOp_inferred__0/i__carry__3_n_7 ),
        .Q(R4_in[17]),
        .R(reset));
  FDRE \end_trj_reg_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(\minusOp_inferred__0/i__carry__3_n_6 ),
        .Q(R4_in[18]),
        .R(reset));
  FDRE \end_trj_reg_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(\minusOp_inferred__0/i__carry__3_n_5 ),
        .Q(R4_in[19]),
        .R(reset));
  FDRE \end_trj_reg_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\minusOp_inferred__0/i__carry_n_7 ),
        .Q(\end_trj_reg_reg_n_0_[1] ),
        .R(reset));
  FDRE \end_trj_reg_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(\minusOp_inferred__0/i__carry__3_n_4 ),
        .Q(R4_in[20]),
        .R(reset));
  FDRE \end_trj_reg_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(\minusOp_inferred__0/i__carry__4_n_7 ),
        .Q(R4_in[21]),
        .R(reset));
  FDRE \end_trj_reg_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(\minusOp_inferred__0/i__carry__4_n_6 ),
        .Q(R4_in[22]),
        .R(reset));
  FDRE \end_trj_reg_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(\minusOp_inferred__0/i__carry__4_n_5 ),
        .Q(R4_in[23]),
        .R(reset));
  FDRE \end_trj_reg_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(\minusOp_inferred__0/i__carry__4_n_4 ),
        .Q(R4_in[24]),
        .R(reset));
  FDRE \end_trj_reg_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(\minusOp_inferred__0/i__carry__5_n_7 ),
        .Q(R4_in[25]),
        .R(reset));
  FDRE \end_trj_reg_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(\minusOp_inferred__0/i__carry__5_n_6 ),
        .Q(R4_in[26]),
        .R(reset));
  FDRE \end_trj_reg_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(\minusOp_inferred__0/i__carry__5_n_5 ),
        .Q(R4_in[27]),
        .R(reset));
  FDRE \end_trj_reg_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(\minusOp_inferred__0/i__carry__5_n_4 ),
        .Q(R4_in[28]),
        .R(reset));
  FDRE \end_trj_reg_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(\minusOp_inferred__0/i__carry__6_n_7 ),
        .Q(R4_in[29]),
        .R(reset));
  FDRE \end_trj_reg_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\minusOp_inferred__0/i__carry_n_6 ),
        .Q(\end_trj_reg_reg_n_0_[2] ),
        .R(reset));
  FDRE \end_trj_reg_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(\minusOp_inferred__0/i__carry__6_n_6 ),
        .Q(R4_in[30]),
        .R(reset));
  FDRE \end_trj_reg_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(\minusOp_inferred__0/i__carry__6_n_5 ),
        .Q(R4_in[31]),
        .R(reset));
  FDRE \end_trj_reg_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\minusOp_inferred__0/i__carry_n_5 ),
        .Q(\end_trj_reg_reg_n_0_[3] ),
        .R(reset));
  FDRE \end_trj_reg_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\minusOp_inferred__0/i__carry_n_4 ),
        .Q(\end_trj_reg_reg_n_0_[4] ),
        .R(reset));
  FDRE \end_trj_reg_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\minusOp_inferred__0/i__carry__0_n_7 ),
        .Q(\end_trj_reg_reg_n_0_[5] ),
        .R(reset));
  FDRE \end_trj_reg_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\minusOp_inferred__0/i__carry__0_n_6 ),
        .Q(\end_trj_reg_reg_n_0_[6] ),
        .R(reset));
  FDRE \end_trj_reg_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\minusOp_inferred__0/i__carry__0_n_5 ),
        .Q(\end_trj_reg_reg_n_0_[7] ),
        .R(reset));
  FDRE \end_trj_reg_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\minusOp_inferred__0/i__carry__0_n_4 ),
        .Q(\end_trj_reg_reg_n_0_[8] ),
        .R(reset));
  FDRE \end_trj_reg_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\minusOp_inferred__0/i__carry__1_n_7 ),
        .Q(\end_trj_reg_reg_n_0_[9] ),
        .R(reset));
  LUT4 #(
    .INIT(16'h0080)) 
    end_trj_trig_i_1
       (.I0(end_trj_trig_msb),
        .I1(end_trj_trig_lsb),
        .I2(sm_run_stp_reg_n_0),
        .I3(rst_200_out),
        .O(end_trj_trig_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    end_trj_trig_lsb_reg
       (.C(clk200),
        .CE(sm_start_reg_n_0),
        .D(eqOp6_out),
        .Q(end_trj_trig_lsb),
        .R(init_EC_trig));
  FDRE #(
    .INIT(1'b0)) 
    end_trj_trig_msb_reg
       (.C(clk200),
        .CE(sm_start_reg_n_0),
        .D(eqOp5_out),
        .Q(end_trj_trig_msb),
        .R(init_EC_trig));
  FDRE #(
    .INIT(1'b0)) 
    end_trj_trig_reg
       (.C(clk200),
        .CE(1'b1),
        .D(end_trj_trig_i_1_n_0),
        .Q(end_trj_trig),
        .R(1'b0));
  CARRY4 eqOp_carry
       (.CI(1'b0),
        .CO({eqOp_carry_n_0,eqOp_carry_n_1,eqOp_carry_n_2,eqOp_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_eqOp_carry_O_UNCONNECTED[3:0]),
        .S({eqOp_carry_i_1_n_0,eqOp_carry_i_2_n_0,eqOp_carry_i_3_n_0,eqOp_carry_i_4_n_0}));
  CARRY4 eqOp_carry__0
       (.CI(eqOp_carry_n_0),
        .CO({eqOp,eqOp_carry__0_n_1,eqOp_carry__0_n_2,eqOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_eqOp_carry__0_O_UNCONNECTED[3:0]),
        .S({eqOp_carry__0_i_1_n_0,eqOp_carry__0_i_2_n_0,eqOp_carry__0_i_3_n_0,eqOp_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    eqOp_carry__0_i_1
       (.I0(Q[21]),
        .I1(EC_cnt[21]),
        .O(eqOp_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry__0_i_2
       (.I0(EC_cnt[19]),
        .I1(Q[19]),
        .I2(EC_cnt[20]),
        .I3(Q[20]),
        .I4(EC_cnt[18]),
        .I5(Q[18]),
        .O(eqOp_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry__0_i_3
       (.I0(EC_cnt[16]),
        .I1(Q[16]),
        .I2(EC_cnt[17]),
        .I3(Q[17]),
        .I4(EC_cnt[15]),
        .I5(Q[15]),
        .O(eqOp_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry__0_i_4
       (.I0(EC_cnt[13]),
        .I1(Q[13]),
        .I2(EC_cnt[14]),
        .I3(Q[14]),
        .I4(EC_cnt[12]),
        .I5(Q[12]),
        .O(eqOp_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry_i_1
       (.I0(EC_cnt[10]),
        .I1(Q[10]),
        .I2(EC_cnt[11]),
        .I3(Q[11]),
        .I4(EC_cnt[9]),
        .I5(Q[9]),
        .O(eqOp_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry_i_2
       (.I0(EC_cnt[7]),
        .I1(Q[7]),
        .I2(EC_cnt[8]),
        .I3(Q[8]),
        .I4(EC_cnt[6]),
        .I5(Q[6]),
        .O(eqOp_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry_i_3
       (.I0(EC_cnt[4]),
        .I1(Q[4]),
        .I2(EC_cnt[5]),
        .I3(Q[5]),
        .I4(EC_cnt[3]),
        .I5(Q[3]),
        .O(eqOp_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry_i_4
       (.I0(EC_cnt[1]),
        .I1(Q[1]),
        .I2(EC_cnt[2]),
        .I3(Q[2]),
        .I4(EC_cnt[0]),
        .I5(Q[0]),
        .O(eqOp_carry_i_4_n_0));
  CARRY4 \eqOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\eqOp_inferred__0/i__carry_n_0 ,\eqOp_inferred__0/i__carry_n_1 ,\eqOp_inferred__0/i__carry_n_2 ,\eqOp_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_eqOp_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__1_n_0,i__carry_i_2__1_n_0,i__carry_i_3__1_n_0,i__carry_i_4__1_n_0}));
  CARRY4 \eqOp_inferred__0/i__carry__0 
       (.CI(\eqOp_inferred__0/i__carry_n_0 ),
        .CO({\NLW_eqOp_inferred__0/i__carry__0_CO_UNCONNECTED [3:2],eqOp2_out,\eqOp_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_eqOp_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry__0_i_1__3_n_0,i__carry__0_i_2__1_n_0}));
  CARRY4 \eqOp_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\eqOp_inferred__1/i__carry_n_0 ,\eqOp_inferred__1/i__carry_n_1 ,\eqOp_inferred__1/i__carry_n_2 ,\eqOp_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_eqOp_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__2_n_0,i__carry_i_2__2_n_0,i__carry_i_3__2_n_0,i__carry_i_4__2_n_0}));
  CARRY4 \eqOp_inferred__1/i__carry__0 
       (.CI(\eqOp_inferred__1/i__carry_n_0 ),
        .CO({\NLW_eqOp_inferred__1/i__carry__0_CO_UNCONNECTED [3:2],eqOp3_out,\eqOp_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_eqOp_inferred__1/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry__0_i_1__4_n_0,i__carry__0_i_2__2_n_0}));
  CARRY4 \eqOp_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({\eqOp_inferred__2/i__carry_n_0 ,\eqOp_inferred__2/i__carry_n_1 ,\eqOp_inferred__2/i__carry_n_2 ,\eqOp_inferred__2/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_eqOp_inferred__2/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__4_n_0,i__carry_i_2__4_n_0,i__carry_i_3__4_n_0,i__carry_i_4__4_n_0}));
  CARRY4 \eqOp_inferred__2/i__carry__0 
       (.CI(\eqOp_inferred__2/i__carry_n_0 ),
        .CO({\NLW_eqOp_inferred__2/i__carry__0_CO_UNCONNECTED [3:2],\eqOp_inferred__2/i__carry__0_n_2 ,\eqOp_inferred__2/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_eqOp_inferred__2/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry__0_i_1__5_n_0,i__carry__0_i_2__3_n_0}));
  CARRY4 \eqOp_inferred__3/i__carry 
       (.CI(1'b0),
        .CO({\eqOp_inferred__3/i__carry_n_0 ,\eqOp_inferred__3/i__carry_n_1 ,\eqOp_inferred__3/i__carry_n_2 ,\eqOp_inferred__3/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_eqOp_inferred__3/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__5_n_0,i__carry_i_2__5_n_0,i__carry_i_3__5_n_0,i__carry_i_4__5_n_0}));
  CARRY4 \eqOp_inferred__3/i__carry__0 
       (.CI(\eqOp_inferred__3/i__carry_n_0 ),
        .CO({\NLW_eqOp_inferred__3/i__carry__0_CO_UNCONNECTED [3:2],eqOp0_out,\eqOp_inferred__3/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_eqOp_inferred__3/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry__0_i_1__6_n_0,i__carry__0_i_2__4_n_0}));
  CARRY4 \eqOp_inferred__4/i__carry 
       (.CI(1'b0),
        .CO({\eqOp_inferred__4/i__carry_n_0 ,\eqOp_inferred__4/i__carry_n_1 ,\eqOp_inferred__4/i__carry_n_2 ,\eqOp_inferred__4/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_eqOp_inferred__4/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__6_n_0,i__carry_i_2__6_n_0,i__carry_i_3__6_n_0,i__carry_i_4__6_n_0}));
  CARRY4 \eqOp_inferred__4/i__carry__0 
       (.CI(\eqOp_inferred__4/i__carry_n_0 ),
        .CO({\NLW_eqOp_inferred__4/i__carry__0_CO_UNCONNECTED [3:2],eqOp5_out,\eqOp_inferred__4/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_eqOp_inferred__4/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry__0_i_1__7_n_0,i__carry__0_i_2__5_n_0}));
  CARRY4 \eqOp_inferred__5/i__carry 
       (.CI(1'b0),
        .CO({\eqOp_inferred__5/i__carry_n_0 ,\eqOp_inferred__5/i__carry_n_1 ,\eqOp_inferred__5/i__carry_n_2 ,\eqOp_inferred__5/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_eqOp_inferred__5/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__7_n_0,i__carry_i_2__7_n_0,i__carry_i_3__7_n_0,i__carry_i_4__7_n_0}));
  CARRY4 \eqOp_inferred__5/i__carry__0 
       (.CI(\eqOp_inferred__5/i__carry_n_0 ),
        .CO({\NLW_eqOp_inferred__5/i__carry__0_CO_UNCONNECTED [3:2],eqOp6_out,\eqOp_inferred__5/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_eqOp_inferred__5/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry__0_i_1__8_n_0,i__carry__0_i_2__6_n_0}));
  FDRE #(
    .INIT(1'b0)) 
    fst_stps_d1_reg
       (.C(clk200),
        .CE(1'b1),
        .D(fst_stps),
        .Q(fst_stps_d1),
        .R(rst_200_out));
  FDRE #(
    .INIT(1'b0)) 
    fst_stps_d2_reg
       (.C(clk200),
        .CE(1'b1),
        .D(fst_stps_d1),
        .Q(fst_stps_d2),
        .R(rst_200_out));
  LUT2 #(
    .INIT(4'h2)) 
    fst_stps_trig_i_1
       (.I0(fst_stps_d1),
        .I1(fst_stps_d2),
        .O(fst_stps_trig0));
  FDRE #(
    .INIT(1'b0)) 
    fst_stps_trig_reg
       (.C(clk200),
        .CE(1'b1),
        .D(fst_stps_trig0),
        .Q(fst_stps_trig),
        .R(rst_200_out));
  CARRY4 gtOp_carry
       (.CI(1'b0),
        .CO({gtOp_carry_n_0,gtOp_carry_n_1,gtOp_carry_n_2,gtOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({gtOp_carry_i_1_n_0,gtOp_carry_i_2_n_0,gtOp_carry_i_3_n_0,gtOp_carry_i_4_n_0}),
        .O(NLW_gtOp_carry_O_UNCONNECTED[3:0]),
        .S({gtOp_carry_i_5_n_0,gtOp_carry_i_6_n_0,gtOp_carry_i_7_n_0,gtOp_carry_i_8_n_0}));
  CARRY4 gtOp_carry__0
       (.CI(gtOp_carry_n_0),
        .CO({gtOp_carry__0_n_0,gtOp_carry__0_n_1,gtOp_carry__0_n_2,gtOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({gtOp_carry__0_i_1_n_0,gtOp_carry__0_i_2_n_0,gtOp_carry__0_i_3_n_0,gtOp_carry__0_i_4_n_0}),
        .O(NLW_gtOp_carry__0_O_UNCONNECTED[3:0]),
        .S({gtOp_carry__0_i_5_n_0,gtOp_carry__0_i_6_n_0,gtOp_carry__0_i_7_n_0,gtOp_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry__0_i_1
       (.I0(Q[14]),
        .I1(init_EC_loc[14]),
        .I2(init_EC_loc[15]),
        .I3(Q[15]),
        .O(gtOp_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry__0_i_2
       (.I0(Q[12]),
        .I1(init_EC_loc[12]),
        .I2(init_EC_loc[13]),
        .I3(Q[13]),
        .O(gtOp_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry__0_i_3
       (.I0(Q[10]),
        .I1(init_EC_loc[10]),
        .I2(init_EC_loc[11]),
        .I3(Q[11]),
        .O(gtOp_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry__0_i_4
       (.I0(Q[8]),
        .I1(init_EC_loc[8]),
        .I2(init_EC_loc[9]),
        .I3(Q[9]),
        .O(gtOp_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry__0_i_5
       (.I0(init_EC_loc[15]),
        .I1(Q[15]),
        .I2(Q[14]),
        .I3(init_EC_loc[14]),
        .O(gtOp_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry__0_i_6
       (.I0(init_EC_loc[13]),
        .I1(Q[13]),
        .I2(Q[12]),
        .I3(init_EC_loc[12]),
        .O(gtOp_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry__0_i_7
       (.I0(init_EC_loc[11]),
        .I1(Q[11]),
        .I2(Q[10]),
        .I3(init_EC_loc[10]),
        .O(gtOp_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry__0_i_8
       (.I0(init_EC_loc[9]),
        .I1(Q[9]),
        .I2(Q[8]),
        .I3(init_EC_loc[8]),
        .O(gtOp_carry__0_i_8_n_0));
  CARRY4 gtOp_carry__1
       (.CI(gtOp_carry__0_n_0),
        .CO({NLW_gtOp_carry__1_CO_UNCONNECTED[3],gtOp,gtOp_carry__1_n_2,gtOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,gtOp_carry__1_i_1_n_0,gtOp_carry__1_i_2_n_0,gtOp_carry__1_i_3_n_0}),
        .O(NLW_gtOp_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,gtOp_carry__1_i_4_n_0,gtOp_carry__1_i_5_n_0,gtOp_carry__1_i_6_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry__1_i_1
       (.I0(Q[20]),
        .I1(init_EC_loc[20]),
        .I2(init_EC_loc[21]),
        .I3(Q[21]),
        .O(gtOp_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry__1_i_2
       (.I0(Q[18]),
        .I1(init_EC_loc[18]),
        .I2(init_EC_loc[19]),
        .I3(Q[19]),
        .O(gtOp_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry__1_i_3
       (.I0(Q[16]),
        .I1(init_EC_loc[16]),
        .I2(init_EC_loc[17]),
        .I3(Q[17]),
        .O(gtOp_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry__1_i_4
       (.I0(init_EC_loc[21]),
        .I1(Q[21]),
        .I2(Q[20]),
        .I3(init_EC_loc[20]),
        .O(gtOp_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry__1_i_5
       (.I0(init_EC_loc[19]),
        .I1(Q[19]),
        .I2(Q[18]),
        .I3(init_EC_loc[18]),
        .O(gtOp_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry__1_i_6
       (.I0(init_EC_loc[17]),
        .I1(Q[17]),
        .I2(Q[16]),
        .I3(init_EC_loc[16]),
        .O(gtOp_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_1
       (.I0(Q[6]),
        .I1(init_EC_loc[6]),
        .I2(init_EC_loc[7]),
        .I3(Q[7]),
        .O(gtOp_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_2
       (.I0(Q[4]),
        .I1(init_EC_loc[4]),
        .I2(init_EC_loc[5]),
        .I3(Q[5]),
        .O(gtOp_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_3
       (.I0(Q[2]),
        .I1(init_EC_loc[2]),
        .I2(init_EC_loc[3]),
        .I3(Q[3]),
        .O(gtOp_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_4
       (.I0(Q[0]),
        .I1(init_EC_loc[0]),
        .I2(init_EC_loc[1]),
        .I3(Q[1]),
        .O(gtOp_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_5
       (.I0(init_EC_loc[7]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(init_EC_loc[6]),
        .O(gtOp_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_6
       (.I0(init_EC_loc[5]),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(init_EC_loc[4]),
        .O(gtOp_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_7
       (.I0(init_EC_loc[3]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(init_EC_loc[2]),
        .O(gtOp_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_8
       (.I0(init_EC_loc[1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(init_EC_loc[0]),
        .O(gtOp_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry__0_i_1
       (.I0(tgt_EC_loc[14]),
        .I1(Q[14]),
        .I2(tgt_EC_loc[15]),
        .I3(Q[15]),
        .O(i__carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1__0
       (.I0(sm_ACC_pos[7]),
        .O(i__carry__0_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1__1
       (.I0(cnt_o[8]),
        .O(i__carry__0_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__2
       (.I0(tgt_EC_loc[21]),
        .I1(Q[21]),
        .O(i__carry__0_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__3
       (.I0(R1_in[31]),
        .I1(L[31]),
        .O(i__carry__0_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__4
       (.I0(\mid_trj_reg_reg_n_0_[15] ),
        .I1(\steps_reg_n_0_[15] ),
        .O(i__carry__0_i_1__4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__5
       (.I0(R[31]),
        .I1(L[31]),
        .O(i__carry__0_i_1__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__6
       (.I0(\dec_steps_reg_n_0_[15] ),
        .I1(\steps_reg_n_0_[15] ),
        .O(i__carry__0_i_1__6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__7
       (.I0(R4_in[31]),
        .I1(L[31]),
        .O(i__carry__0_i_1__7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__8
       (.I0(\end_trj_reg_reg_n_0_[15] ),
        .I1(\steps_reg_n_0_[15] ),
        .O(i__carry__0_i_1__8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__9
       (.I0(\end_trj_reg_reg_n_0_[7] ),
        .I1(\steps_reg_n_0_[7] ),
        .O(i__carry__0_i_1__9_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry__0_i_2
       (.I0(tgt_EC_loc[12]),
        .I1(Q[12]),
        .I2(tgt_EC_loc[13]),
        .I3(Q[13]),
        .O(i__carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_2__0
       (.I0(Q[19]),
        .I1(tgt_EC_loc[19]),
        .I2(Q[18]),
        .I3(tgt_EC_loc[18]),
        .I4(Q[20]),
        .I5(tgt_EC_loc[20]),
        .O(i__carry__0_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_2__1
       (.I0(R1_in[29]),
        .I1(L[29]),
        .I2(R1_in[30]),
        .I3(L[30]),
        .I4(R1_in[28]),
        .I5(L[28]),
        .O(i__carry__0_i_2__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_2__2
       (.I0(\mid_trj_reg_reg_n_0_[13] ),
        .I1(\steps_reg_n_0_[13] ),
        .I2(\mid_trj_reg_reg_n_0_[14] ),
        .I3(\steps_reg_n_0_[14] ),
        .I4(\mid_trj_reg_reg_n_0_[12] ),
        .I5(\steps_reg_n_0_[12] ),
        .O(i__carry__0_i_2__2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_2__3
       (.I0(R[29]),
        .I1(L[29]),
        .I2(R[30]),
        .I3(L[30]),
        .I4(R[28]),
        .I5(L[28]),
        .O(i__carry__0_i_2__3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_2__4
       (.I0(\dec_steps_reg_n_0_[13] ),
        .I1(\steps_reg_n_0_[13] ),
        .I2(\dec_steps_reg_n_0_[14] ),
        .I3(\steps_reg_n_0_[14] ),
        .I4(\dec_steps_reg_n_0_[12] ),
        .I5(\steps_reg_n_0_[12] ),
        .O(i__carry__0_i_2__4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_2__5
       (.I0(R4_in[29]),
        .I1(L[29]),
        .I2(R4_in[30]),
        .I3(L[30]),
        .I4(R4_in[28]),
        .I5(L[28]),
        .O(i__carry__0_i_2__5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_2__6
       (.I0(\end_trj_reg_reg_n_0_[13] ),
        .I1(\steps_reg_n_0_[13] ),
        .I2(\end_trj_reg_reg_n_0_[14] ),
        .I3(\steps_reg_n_0_[14] ),
        .I4(\end_trj_reg_reg_n_0_[12] ),
        .I5(\steps_reg_n_0_[12] ),
        .O(i__carry__0_i_2__6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2__7
       (.I0(sm_ACC_pos[6]),
        .O(i__carry__0_i_2__7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2__8
       (.I0(cnt_o[7]),
        .O(i__carry__0_i_2__8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__9
       (.I0(\end_trj_reg_reg_n_0_[6] ),
        .I1(\steps_reg_n_0_[6] ),
        .O(i__carry__0_i_2__9_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry__0_i_3
       (.I0(tgt_EC_loc[10]),
        .I1(Q[10]),
        .I2(tgt_EC_loc[11]),
        .I3(Q[11]),
        .O(i__carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_3__0
       (.I0(tgt_EC_loc[15]),
        .I1(Q[15]),
        .I2(tgt_EC_loc[17]),
        .I3(Q[17]),
        .I4(Q[16]),
        .I5(tgt_EC_loc[16]),
        .O(i__carry__0_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3__1
       (.I0(sm_ACC_pos[5]),
        .O(i__carry__0_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3__2
       (.I0(cnt_o[6]),
        .O(i__carry__0_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3__3
       (.I0(\end_trj_reg_reg_n_0_[5] ),
        .I1(\steps_reg_n_0_[5] ),
        .O(i__carry__0_i_3__3_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry__0_i_4
       (.I0(tgt_EC_loc[8]),
        .I1(Q[8]),
        .I2(tgt_EC_loc[9]),
        .I3(Q[9]),
        .O(i__carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_4__0
       (.I0(Q[13]),
        .I1(tgt_EC_loc[13]),
        .I2(Q[12]),
        .I3(tgt_EC_loc[12]),
        .I4(Q[14]),
        .I5(tgt_EC_loc[14]),
        .O(i__carry__0_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_4__1
       (.I0(sm_ACC_pos[4]),
        .O(i__carry__0_i_4__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_4__2
       (.I0(cnt_o[5]),
        .O(i__carry__0_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4__3
       (.I0(\end_trj_reg_reg_n_0_[4] ),
        .I1(\steps_reg_n_0_[4] ),
        .O(i__carry__0_i_4__3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5
       (.I0(Q[15]),
        .I1(tgt_EC_loc[15]),
        .I2(Q[14]),
        .I3(tgt_EC_loc[14]),
        .O(i__carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6
       (.I0(tgt_EC_loc[12]),
        .I1(Q[12]),
        .I2(tgt_EC_loc[13]),
        .I3(Q[13]),
        .O(i__carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7
       (.I0(Q[10]),
        .I1(tgt_EC_loc[10]),
        .I2(Q[11]),
        .I3(tgt_EC_loc[11]),
        .O(i__carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8
       (.I0(Q[9]),
        .I1(tgt_EC_loc[9]),
        .I2(Q[8]),
        .I3(tgt_EC_loc[8]),
        .O(i__carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry__1_i_1
       (.I0(tgt_EC_loc[20]),
        .I1(Q[20]),
        .I2(tgt_EC_loc[21]),
        .I3(Q[21]),
        .O(i__carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1__0
       (.I0(sm_ACC_pos[11]),
        .O(i__carry__1_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1__1
       (.I0(cnt_o[12]),
        .O(i__carry__1_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_1__2
       (.I0(\end_trj_reg_reg_n_0_[11] ),
        .I1(\steps_reg_n_0_[11] ),
        .O(i__carry__1_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry__1_i_2
       (.I0(tgt_EC_loc[18]),
        .I1(Q[18]),
        .I2(tgt_EC_loc[19]),
        .I3(Q[19]),
        .O(i__carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2__0
       (.I0(sm_ACC_pos[10]),
        .O(i__carry__1_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2__1
       (.I0(cnt_o[11]),
        .O(i__carry__1_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_2__2
       (.I0(\end_trj_reg_reg_n_0_[10] ),
        .I1(\steps_reg_n_0_[10] ),
        .O(i__carry__1_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry__1_i_3
       (.I0(tgt_EC_loc[16]),
        .I1(Q[16]),
        .I2(tgt_EC_loc[17]),
        .I3(Q[17]),
        .O(i__carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_3__0
       (.I0(sm_ACC_pos[9]),
        .O(i__carry__1_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_3__1
       (.I0(cnt_o[10]),
        .O(i__carry__1_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_3__2
       (.I0(\end_trj_reg_reg_n_0_[9] ),
        .I1(\steps_reg_n_0_[9] ),
        .O(i__carry__1_i_3__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_4
       (.I0(tgt_EC_loc[20]),
        .I1(Q[20]),
        .I2(tgt_EC_loc[21]),
        .I3(Q[21]),
        .O(i__carry__1_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_4__0
       (.I0(sm_ACC_pos[8]),
        .O(i__carry__1_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_4__1
       (.I0(cnt_o[9]),
        .O(i__carry__1_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_4__2
       (.I0(\end_trj_reg_reg_n_0_[8] ),
        .I1(\steps_reg_n_0_[8] ),
        .O(i__carry__1_i_4__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_5
       (.I0(tgt_EC_loc[18]),
        .I1(Q[18]),
        .I2(tgt_EC_loc[19]),
        .I3(Q[19]),
        .O(i__carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_6
       (.I0(Q[16]),
        .I1(tgt_EC_loc[16]),
        .I2(Q[17]),
        .I3(tgt_EC_loc[17]),
        .O(i__carry__1_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_1
       (.I0(sm_ACC_pos[15]),
        .O(i__carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_1__0
       (.I0(cnt_o[16]),
        .O(i__carry__2_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_1__1
       (.I0(\end_trj_reg_reg_n_0_[15] ),
        .I1(\steps_reg_n_0_[15] ),
        .O(i__carry__2_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_2
       (.I0(sm_ACC_pos[14]),
        .O(i__carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_2__0
       (.I0(cnt_o[15]),
        .O(i__carry__2_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_2__1
       (.I0(\end_trj_reg_reg_n_0_[14] ),
        .I1(\steps_reg_n_0_[14] ),
        .O(i__carry__2_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_3
       (.I0(sm_ACC_pos[13]),
        .O(i__carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_3__0
       (.I0(cnt_o[14]),
        .O(i__carry__2_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_3__1
       (.I0(\end_trj_reg_reg_n_0_[13] ),
        .I1(\steps_reg_n_0_[13] ),
        .O(i__carry__2_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_4
       (.I0(sm_ACC_pos[12]),
        .O(i__carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_4__0
       (.I0(cnt_o[13]),
        .O(i__carry__2_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_4__1
       (.I0(\end_trj_reg_reg_n_0_[12] ),
        .I1(\steps_reg_n_0_[12] ),
        .O(i__carry__2_i_4__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_1
       (.I0(sm_ACC_pos[19]),
        .O(i__carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_1__0
       (.I0(cnt_o[20]),
        .O(i__carry__3_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_1__1
       (.I0(R4_in[19]),
        .I1(L[19]),
        .O(i__carry__3_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_2
       (.I0(sm_ACC_pos[18]),
        .O(i__carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_2__0
       (.I0(cnt_o[19]),
        .O(i__carry__3_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_2__1
       (.I0(R4_in[18]),
        .I1(L[18]),
        .O(i__carry__3_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_3
       (.I0(sm_ACC_pos[17]),
        .O(i__carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_3__0
       (.I0(cnt_o[18]),
        .O(i__carry__3_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_3__1
       (.I0(R4_in[17]),
        .I1(L[17]),
        .O(i__carry__3_i_3__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_4
       (.I0(sm_ACC_pos[16]),
        .O(i__carry__3_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_4__0
       (.I0(cnt_o[17]),
        .O(i__carry__3_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_4__1
       (.I0(R4_in[16]),
        .I1(L[16]),
        .O(i__carry__3_i_4__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_1
       (.I0(sm_ACC_pos[21]),
        .O(i__carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_1__0
       (.I0(cnt_o[24]),
        .O(i__carry__4_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_1__1
       (.I0(R4_in[23]),
        .I1(L[23]),
        .O(i__carry__4_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_2
       (.I0(sm_ACC_pos[20]),
        .O(i__carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_2__0
       (.I0(cnt_o[23]),
        .O(i__carry__4_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_2__1
       (.I0(R4_in[22]),
        .I1(L[22]),
        .O(i__carry__4_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_3
       (.I0(cnt_o[22]),
        .O(i__carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_3__0
       (.I0(R4_in[21]),
        .I1(L[21]),
        .O(i__carry__4_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_4
       (.I0(cnt_o[21]),
        .O(i__carry__4_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_4__0
       (.I0(R4_in[20]),
        .I1(L[20]),
        .O(i__carry__4_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_1
       (.I0(cnt_o[28]),
        .O(i__carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__5_i_1__0
       (.I0(R4_in[27]),
        .I1(L[27]),
        .O(i__carry__5_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_2
       (.I0(cnt_o[27]),
        .O(i__carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__5_i_2__0
       (.I0(R4_in[26]),
        .I1(L[26]),
        .O(i__carry__5_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_3
       (.I0(cnt_o[26]),
        .O(i__carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__5_i_3__0
       (.I0(R4_in[25]),
        .I1(L[25]),
        .O(i__carry__5_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_4
       (.I0(cnt_o[25]),
        .O(i__carry__5_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__5_i_4__0
       (.I0(R4_in[24]),
        .I1(L[24]),
        .O(i__carry__5_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_1
       (.I0(cnt_o[31]),
        .O(i__carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__6_i_1__0
       (.I0(R4_in[31]),
        .I1(L[31]),
        .O(i__carry__6_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_2
       (.I0(cnt_o[30]),
        .O(i__carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__6_i_2__0
       (.I0(R4_in[30]),
        .I1(L[30]),
        .O(i__carry__6_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_3
       (.I0(cnt_o[29]),
        .O(i__carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__6_i_3__0
       (.I0(R4_in[29]),
        .I1(L[29]),
        .O(i__carry__6_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__6_i_4
       (.I0(R4_in[28]),
        .I1(L[28]),
        .O(i__carry__6_i_4_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_1
       (.I0(tgt_EC_loc[6]),
        .I1(Q[6]),
        .I2(tgt_EC_loc[7]),
        .I3(Q[7]),
        .O(i__carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__0
       (.I0(tgt_EC_loc[11]),
        .I1(Q[11]),
        .I2(tgt_EC_loc[10]),
        .I3(Q[10]),
        .I4(Q[9]),
        .I5(tgt_EC_loc[9]),
        .O(i__carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__1
       (.I0(R1_in[26]),
        .I1(L[26]),
        .I2(R1_in[27]),
        .I3(L[27]),
        .I4(R1_in[25]),
        .I5(L[25]),
        .O(i__carry_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__2
       (.I0(\mid_trj_reg_reg_n_0_[10] ),
        .I1(\steps_reg_n_0_[10] ),
        .I2(\mid_trj_reg_reg_n_0_[11] ),
        .I3(\steps_reg_n_0_[11] ),
        .I4(\mid_trj_reg_reg_n_0_[9] ),
        .I5(\steps_reg_n_0_[9] ),
        .O(i__carry_i_1__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1__3
       (.I0(cnt_o[4]),
        .O(i__carry_i_1__3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__4
       (.I0(R[26]),
        .I1(L[26]),
        .I2(R[27]),
        .I3(L[27]),
        .I4(R[25]),
        .I5(L[25]),
        .O(i__carry_i_1__4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__5
       (.I0(\dec_steps_reg_n_0_[10] ),
        .I1(\steps_reg_n_0_[10] ),
        .I2(\dec_steps_reg_n_0_[11] ),
        .I3(\steps_reg_n_0_[11] ),
        .I4(\dec_steps_reg_n_0_[9] ),
        .I5(\steps_reg_n_0_[9] ),
        .O(i__carry_i_1__5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__6
       (.I0(R4_in[26]),
        .I1(L[26]),
        .I2(R4_in[27]),
        .I3(L[27]),
        .I4(R4_in[25]),
        .I5(L[25]),
        .O(i__carry_i_1__6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__7
       (.I0(\end_trj_reg_reg_n_0_[10] ),
        .I1(\steps_reg_n_0_[10] ),
        .I2(\end_trj_reg_reg_n_0_[11] ),
        .I3(\steps_reg_n_0_[11] ),
        .I4(\end_trj_reg_reg_n_0_[9] ),
        .I5(\steps_reg_n_0_[9] ),
        .O(i__carry_i_1__7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1__8
       (.I0(sm_ACC_pos[3]),
        .O(i__carry_i_1__8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1__9
       (.I0(\end_trj_reg_reg_n_0_[3] ),
        .I1(\steps_reg_n_0_[3] ),
        .O(i__carry_i_1__9_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_2
       (.I0(tgt_EC_loc[4]),
        .I1(Q[4]),
        .I2(tgt_EC_loc[5]),
        .I3(Q[5]),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__0
       (.I0(Q[7]),
        .I1(tgt_EC_loc[7]),
        .I2(Q[6]),
        .I3(tgt_EC_loc[6]),
        .I4(Q[8]),
        .I5(tgt_EC_loc[8]),
        .O(i__carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__1
       (.I0(R1_in[23]),
        .I1(L[23]),
        .I2(R1_in[24]),
        .I3(L[24]),
        .I4(R1_in[22]),
        .I5(L[22]),
        .O(i__carry_i_2__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__2
       (.I0(\mid_trj_reg_reg_n_0_[7] ),
        .I1(\steps_reg_n_0_[7] ),
        .I2(\mid_trj_reg_reg_n_0_[8] ),
        .I3(\steps_reg_n_0_[8] ),
        .I4(\mid_trj_reg_reg_n_0_[6] ),
        .I5(\steps_reg_n_0_[6] ),
        .O(i__carry_i_2__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2__3
       (.I0(cnt_o[3]),
        .O(i__carry_i_2__3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__4
       (.I0(R[23]),
        .I1(L[23]),
        .I2(R[24]),
        .I3(L[24]),
        .I4(R[22]),
        .I5(L[22]),
        .O(i__carry_i_2__4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__5
       (.I0(\dec_steps_reg_n_0_[7] ),
        .I1(\steps_reg_n_0_[7] ),
        .I2(\dec_steps_reg_n_0_[8] ),
        .I3(\steps_reg_n_0_[8] ),
        .I4(\dec_steps_reg_n_0_[6] ),
        .I5(\steps_reg_n_0_[6] ),
        .O(i__carry_i_2__5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__6
       (.I0(R4_in[23]),
        .I1(L[23]),
        .I2(R4_in[24]),
        .I3(L[24]),
        .I4(R4_in[22]),
        .I5(L[22]),
        .O(i__carry_i_2__6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__7
       (.I0(\end_trj_reg_reg_n_0_[7] ),
        .I1(\steps_reg_n_0_[7] ),
        .I2(\end_trj_reg_reg_n_0_[8] ),
        .I3(\steps_reg_n_0_[8] ),
        .I4(\end_trj_reg_reg_n_0_[6] ),
        .I5(\steps_reg_n_0_[6] ),
        .O(i__carry_i_2__7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2__8
       (.I0(sm_ACC_pos[2]),
        .O(i__carry_i_2__8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__9
       (.I0(\end_trj_reg_reg_n_0_[2] ),
        .I1(\steps_reg_n_0_[2] ),
        .O(i__carry_i_2__9_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_3
       (.I0(tgt_EC_loc[2]),
        .I1(Q[2]),
        .I2(tgt_EC_loc[3]),
        .I3(Q[3]),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__0
       (.I0(tgt_EC_loc[5]),
        .I1(Q[5]),
        .I2(tgt_EC_loc[4]),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(tgt_EC_loc[3]),
        .O(i__carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__1
       (.I0(R1_in[20]),
        .I1(L[20]),
        .I2(R1_in[21]),
        .I3(L[21]),
        .I4(R1_in[19]),
        .I5(L[19]),
        .O(i__carry_i_3__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__2
       (.I0(\mid_trj_reg_reg_n_0_[4] ),
        .I1(\steps_reg_n_0_[4] ),
        .I2(\mid_trj_reg_reg_n_0_[5] ),
        .I3(\steps_reg_n_0_[5] ),
        .I4(\mid_trj_reg_reg_n_0_[3] ),
        .I5(\steps_reg_n_0_[3] ),
        .O(i__carry_i_3__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3__3
       (.I0(cnt_o[2]),
        .O(i__carry_i_3__3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__4
       (.I0(R[20]),
        .I1(L[20]),
        .I2(R[21]),
        .I3(L[21]),
        .I4(R[19]),
        .I5(L[19]),
        .O(i__carry_i_3__4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__5
       (.I0(\dec_steps_reg_n_0_[4] ),
        .I1(\steps_reg_n_0_[4] ),
        .I2(\dec_steps_reg_n_0_[5] ),
        .I3(\steps_reg_n_0_[5] ),
        .I4(\dec_steps_reg_n_0_[3] ),
        .I5(\steps_reg_n_0_[3] ),
        .O(i__carry_i_3__5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__6
       (.I0(R4_in[20]),
        .I1(L[20]),
        .I2(R4_in[21]),
        .I3(L[21]),
        .I4(R4_in[19]),
        .I5(L[19]),
        .O(i__carry_i_3__6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__7
       (.I0(\end_trj_reg_reg_n_0_[4] ),
        .I1(\steps_reg_n_0_[4] ),
        .I2(\end_trj_reg_reg_n_0_[5] ),
        .I3(\steps_reg_n_0_[5] ),
        .I4(\end_trj_reg_reg_n_0_[3] ),
        .I5(\steps_reg_n_0_[3] ),
        .O(i__carry_i_3__7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3__8
       (.I0(sm_ACC_pos[1]),
        .O(i__carry_i_3__8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3__9
       (.I0(\end_trj_reg_reg_n_0_[1] ),
        .I1(\steps_reg_n_0_[1] ),
        .O(i__carry_i_3__9_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_4
       (.I0(tgt_EC_loc[0]),
        .I1(Q[0]),
        .I2(tgt_EC_loc[1]),
        .I3(Q[1]),
        .O(i__carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4__0
       (.I0(Q[1]),
        .I1(tgt_EC_loc[1]),
        .I2(Q[0]),
        .I3(tgt_EC_loc[0]),
        .I4(Q[2]),
        .I5(tgt_EC_loc[2]),
        .O(i__carry_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4__1
       (.I0(R1_in[17]),
        .I1(L[17]),
        .I2(R1_in[18]),
        .I3(L[18]),
        .I4(R1_in[16]),
        .I5(L[16]),
        .O(i__carry_i_4__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4__2
       (.I0(\mid_trj_reg_reg_n_0_[1] ),
        .I1(\steps_reg_n_0_[1] ),
        .I2(\mid_trj_reg_reg_n_0_[2] ),
        .I3(\steps_reg_n_0_[2] ),
        .I4(\mid_trj_reg_reg_n_0_[0] ),
        .I5(\steps_reg_n_0_[0] ),
        .O(i__carry_i_4__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4__3
       (.I0(cnt_o[1]),
        .O(i__carry_i_4__3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4__4
       (.I0(R[17]),
        .I1(L[17]),
        .I2(R[18]),
        .I3(L[18]),
        .I4(R[16]),
        .I5(L[16]),
        .O(i__carry_i_4__4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4__5
       (.I0(\dec_steps_reg_n_0_[1] ),
        .I1(\steps_reg_n_0_[1] ),
        .I2(\dec_steps_reg_n_0_[2] ),
        .I3(\steps_reg_n_0_[2] ),
        .I4(\dec_steps_reg_n_0_[0] ),
        .I5(\steps_reg_n_0_[0] ),
        .O(i__carry_i_4__5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4__6
       (.I0(R4_in[17]),
        .I1(L[17]),
        .I2(R4_in[18]),
        .I3(L[18]),
        .I4(R4_in[16]),
        .I5(L[16]),
        .O(i__carry_i_4__6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4__7
       (.I0(\end_trj_reg_reg_n_0_[1] ),
        .I1(\steps_reg_n_0_[1] ),
        .I2(\end_trj_reg_reg_n_0_[2] ),
        .I3(\steps_reg_n_0_[2] ),
        .I4(\end_trj_reg_reg_n_0_[0] ),
        .I5(\steps_reg_n_0_[0] ),
        .O(i__carry_i_4__7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4__8
       (.I0(\end_trj_reg_reg_n_0_[0] ),
        .I1(\steps_reg_n_0_[0] ),
        .O(i__carry_i_4__8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(tgt_EC_loc[6]),
        .I1(Q[6]),
        .I2(tgt_EC_loc[7]),
        .I3(Q[7]),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(Q[4]),
        .I1(tgt_EC_loc[4]),
        .I2(Q[5]),
        .I3(tgt_EC_loc[5]),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(Q[3]),
        .I1(tgt_EC_loc[3]),
        .I2(Q[2]),
        .I3(tgt_EC_loc[2]),
        .O(i__carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8
       (.I0(tgt_EC_loc[0]),
        .I1(Q[0]),
        .I2(tgt_EC_loc[1]),
        .I3(Q[1]),
        .O(i__carry_i_8_n_0));
  FDRE \init_EC_loc_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(init_EC[0]),
        .Q(init_EC_loc[0]),
        .R(reset));
  FDRE \init_EC_loc_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(init_EC[10]),
        .Q(init_EC_loc[10]),
        .R(reset));
  FDRE \init_EC_loc_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(init_EC[11]),
        .Q(init_EC_loc[11]),
        .R(reset));
  FDRE \init_EC_loc_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(init_EC[12]),
        .Q(init_EC_loc[12]),
        .R(reset));
  FDRE \init_EC_loc_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(init_EC[13]),
        .Q(init_EC_loc[13]),
        .R(reset));
  FDRE \init_EC_loc_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(init_EC[14]),
        .Q(init_EC_loc[14]),
        .R(reset));
  FDRE \init_EC_loc_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(init_EC[15]),
        .Q(init_EC_loc[15]),
        .R(reset));
  FDRE \init_EC_loc_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(init_EC[16]),
        .Q(init_EC_loc[16]),
        .R(reset));
  FDRE \init_EC_loc_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(init_EC[17]),
        .Q(init_EC_loc[17]),
        .R(reset));
  FDRE \init_EC_loc_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(init_EC[18]),
        .Q(init_EC_loc[18]),
        .R(reset));
  FDRE \init_EC_loc_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(init_EC[19]),
        .Q(init_EC_loc[19]),
        .R(reset));
  FDRE \init_EC_loc_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(init_EC[1]),
        .Q(init_EC_loc[1]),
        .R(reset));
  FDRE \init_EC_loc_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(init_EC[20]),
        .Q(init_EC_loc[20]),
        .R(reset));
  FDRE \init_EC_loc_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(init_EC[21]),
        .Q(init_EC_loc[21]),
        .R(reset));
  FDRE \init_EC_loc_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(init_EC[2]),
        .Q(init_EC_loc[2]),
        .R(reset));
  FDRE \init_EC_loc_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(init_EC[3]),
        .Q(init_EC_loc[3]),
        .R(reset));
  FDRE \init_EC_loc_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(init_EC[4]),
        .Q(init_EC_loc[4]),
        .R(reset));
  FDRE \init_EC_loc_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(init_EC[5]),
        .Q(init_EC_loc[5]),
        .R(reset));
  FDRE \init_EC_loc_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(init_EC[6]),
        .Q(init_EC_loc[6]),
        .R(reset));
  FDRE \init_EC_loc_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(init_EC[7]),
        .Q(init_EC_loc[7]),
        .R(reset));
  FDRE \init_EC_loc_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(init_EC[8]),
        .Q(init_EC_loc[8]),
        .R(reset));
  FDRE \init_EC_loc_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(init_EC[9]),
        .Q(init_EC_loc[9]),
        .R(reset));
  LUT2 #(
    .INIT(4'hB)) 
    init_EC_trig_i_1
       (.I0(rst_200_out),
        .I1(sm_run_stp_reg_n_0),
        .O(init_EC_trig));
  FDRE init_EC_trig_reg
       (.C(clk200),
        .CE(sm_start_reg_n_0),
        .D(gtOp),
        .Q(init_EC_trig_reg_n_0),
        .R(init_EC_trig));
  LUT5 #(
    .INIT(32'h20EF2020)) 
    irq_in_i_1
       (.I0(irq_mask),
        .I1(irq_loc_d1),
        .I2(irq_loc_d2),
        .I3(irq_clr),
        .I4(irq_in),
        .O(irq_in_i_1_n_0));
  FDRE irq_in_reg
       (.C(aclk),
        .CE(1'b1),
        .D(irq_in_i_1_n_0),
        .Q(irq_in),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    irq_loc_d1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(irq_loc_reg_n_0),
        .Q(irq_loc_d1),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    irq_loc_d2_reg
       (.C(aclk),
        .CE(1'b1),
        .D(irq_loc_d1),
        .Q(irq_loc_d2),
        .R(reset));
  LUT6 #(
    .INIT(64'hEECFEFCFEECCECCC)) 
    irq_loc_i_1
       (.I0(\FSM_onehot_sm_state_reg_n_0_[30] ),
        .I1(irq_loc_i_2_n_0),
        .I2(\FSM_onehot_sm_state_reg_n_0_[0] ),
        .I3(sm_stop),
        .I4(sm_run_stp_i_2_n_0),
        .I5(irq_loc_reg_n_0),
        .O(irq_loc_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    irq_loc_i_2
       (.I0(\FSM_onehot_sm_state_reg_n_0_[29] ),
        .I1(\FSM_onehot_sm_state_reg_n_0_[17] ),
        .I2(\FSM_onehot_sm_state_reg_n_0_[3] ),
        .O(irq_loc_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    irq_loc_reg
       (.C(clk200),
        .CE(1'b1),
        .D(irq_loc_i_1_n_0),
        .Q(irq_loc_reg_n_0),
        .R(rst_200_out));
  FDRE \mid_trj_reg_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(minusOp[0]),
        .Q(\mid_trj_reg_reg_n_0_[0] ),
        .R(reset));
  FDRE \mid_trj_reg_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(minusOp[10]),
        .Q(\mid_trj_reg_reg_n_0_[10] ),
        .R(reset));
  FDRE \mid_trj_reg_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(minusOp[11]),
        .Q(\mid_trj_reg_reg_n_0_[11] ),
        .R(reset));
  FDRE \mid_trj_reg_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(minusOp[12]),
        .Q(\mid_trj_reg_reg_n_0_[12] ),
        .R(reset));
  FDRE \mid_trj_reg_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(minusOp[13]),
        .Q(\mid_trj_reg_reg_n_0_[13] ),
        .R(reset));
  FDRE \mid_trj_reg_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(minusOp[14]),
        .Q(\mid_trj_reg_reg_n_0_[14] ),
        .R(reset));
  FDRE \mid_trj_reg_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(minusOp[15]),
        .Q(\mid_trj_reg_reg_n_0_[15] ),
        .R(reset));
  FDRE \mid_trj_reg_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(minusOp[16]),
        .Q(R1_in[16]),
        .R(reset));
  FDRE \mid_trj_reg_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(minusOp[17]),
        .Q(R1_in[17]),
        .R(reset));
  FDRE \mid_trj_reg_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(minusOp[18]),
        .Q(R1_in[18]),
        .R(reset));
  FDRE \mid_trj_reg_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(minusOp[19]),
        .Q(R1_in[19]),
        .R(reset));
  FDRE \mid_trj_reg_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(minusOp[1]),
        .Q(\mid_trj_reg_reg_n_0_[1] ),
        .R(reset));
  FDRE \mid_trj_reg_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(minusOp[20]),
        .Q(R1_in[20]),
        .R(reset));
  FDRE \mid_trj_reg_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(minusOp[21]),
        .Q(R1_in[21]),
        .R(reset));
  FDRE \mid_trj_reg_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(minusOp[22]),
        .Q(R1_in[22]),
        .R(reset));
  FDRE \mid_trj_reg_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(minusOp[23]),
        .Q(R1_in[23]),
        .R(reset));
  FDRE \mid_trj_reg_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(minusOp[24]),
        .Q(R1_in[24]),
        .R(reset));
  FDRE \mid_trj_reg_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(minusOp[25]),
        .Q(R1_in[25]),
        .R(reset));
  FDRE \mid_trj_reg_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(minusOp[26]),
        .Q(R1_in[26]),
        .R(reset));
  FDRE \mid_trj_reg_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(minusOp[27]),
        .Q(R1_in[27]),
        .R(reset));
  FDRE \mid_trj_reg_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(minusOp[28]),
        .Q(R1_in[28]),
        .R(reset));
  FDRE \mid_trj_reg_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(minusOp[29]),
        .Q(R1_in[29]),
        .R(reset));
  FDRE \mid_trj_reg_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(minusOp[2]),
        .Q(\mid_trj_reg_reg_n_0_[2] ),
        .R(reset));
  FDRE \mid_trj_reg_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(minusOp[30]),
        .Q(R1_in[30]),
        .R(reset));
  FDRE \mid_trj_reg_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(minusOp[31]),
        .Q(R1_in[31]),
        .R(reset));
  FDRE \mid_trj_reg_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(minusOp[3]),
        .Q(\mid_trj_reg_reg_n_0_[3] ),
        .R(reset));
  FDRE \mid_trj_reg_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(minusOp[4]),
        .Q(\mid_trj_reg_reg_n_0_[4] ),
        .R(reset));
  FDRE \mid_trj_reg_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(minusOp[5]),
        .Q(\mid_trj_reg_reg_n_0_[5] ),
        .R(reset));
  FDRE \mid_trj_reg_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(minusOp[6]),
        .Q(\mid_trj_reg_reg_n_0_[6] ),
        .R(reset));
  FDRE \mid_trj_reg_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(minusOp[7]),
        .Q(\mid_trj_reg_reg_n_0_[7] ),
        .R(reset));
  FDRE \mid_trj_reg_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(minusOp[8]),
        .Q(\mid_trj_reg_reg_n_0_[8] ),
        .R(reset));
  FDRE \mid_trj_reg_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(minusOp[9]),
        .Q(\mid_trj_reg_reg_n_0_[9] ),
        .R(reset));
  LUT4 #(
    .INIT(16'h0080)) 
    mid_trj_trig_i_1
       (.I0(mid_trj_trig_msb),
        .I1(mid_trj_trig_lsb),
        .I2(sm_run_stp_reg_n_0),
        .I3(rst_200_out),
        .O(mid_trj_trig_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mid_trj_trig_lsb_reg
       (.C(clk200),
        .CE(sm_start_reg_n_0),
        .D(eqOp3_out),
        .Q(mid_trj_trig_lsb),
        .R(init_EC_trig));
  FDRE #(
    .INIT(1'b0)) 
    mid_trj_trig_msb_reg
       (.C(clk200),
        .CE(sm_start_reg_n_0),
        .D(eqOp2_out),
        .Q(mid_trj_trig_msb),
        .R(init_EC_trig));
  FDRE #(
    .INIT(1'b0)) 
    mid_trj_trig_reg
       (.C(clk200),
        .CE(1'b1),
        .D(mid_trj_trig_i_1_n_0),
        .Q(mid_trj_trig),
        .R(1'b0));
  CARRY4 minusOp_carry
       (.CI(1'b0),
        .CO({minusOp_carry_n_0,minusOp_carry_n_1,minusOp_carry_n_2,minusOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({cnt_o[4:2],1'b0}),
        .O(minusOp[3:0]),
        .S({minusOp_carry_i_1_n_0,minusOp_carry_i_2_n_0,minusOp_carry_i_3_n_0,cnt_o[1]}));
  CARRY4 minusOp_carry__0
       (.CI(minusOp_carry_n_0),
        .CO({minusOp_carry__0_n_0,minusOp_carry__0_n_1,minusOp_carry__0_n_2,minusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(cnt_o[8:5]),
        .O(minusOp[7:4]),
        .S({minusOp_carry__0_i_1_n_0,minusOp_carry__0_i_2_n_0,minusOp_carry__0_i_3_n_0,minusOp_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_1
       (.I0(cnt_o[8]),
        .O(minusOp_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_2
       (.I0(cnt_o[7]),
        .O(minusOp_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_3
       (.I0(cnt_o[6]),
        .O(minusOp_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_4
       (.I0(cnt_o[5]),
        .O(minusOp_carry__0_i_4_n_0));
  CARRY4 minusOp_carry__1
       (.CI(minusOp_carry__0_n_0),
        .CO({minusOp_carry__1_n_0,minusOp_carry__1_n_1,minusOp_carry__1_n_2,minusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(cnt_o[12:9]),
        .O(minusOp[11:8]),
        .S({minusOp_carry__1_i_1_n_0,minusOp_carry__1_i_2_n_0,minusOp_carry__1_i_3_n_0,minusOp_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_1
       (.I0(cnt_o[12]),
        .O(minusOp_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_2
       (.I0(cnt_o[11]),
        .O(minusOp_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_3
       (.I0(cnt_o[10]),
        .O(minusOp_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_4
       (.I0(cnt_o[9]),
        .O(minusOp_carry__1_i_4_n_0));
  CARRY4 minusOp_carry__2
       (.CI(minusOp_carry__1_n_0),
        .CO({minusOp_carry__2_n_0,minusOp_carry__2_n_1,minusOp_carry__2_n_2,minusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(cnt_o[16:13]),
        .O(minusOp[15:12]),
        .S({minusOp_carry__2_i_1_n_0,minusOp_carry__2_i_2_n_0,minusOp_carry__2_i_3_n_0,minusOp_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_1
       (.I0(cnt_o[16]),
        .O(minusOp_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_2
       (.I0(cnt_o[15]),
        .O(minusOp_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_3
       (.I0(cnt_o[14]),
        .O(minusOp_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_4
       (.I0(cnt_o[13]),
        .O(minusOp_carry__2_i_4_n_0));
  CARRY4 minusOp_carry__3
       (.CI(minusOp_carry__2_n_0),
        .CO({minusOp_carry__3_n_0,minusOp_carry__3_n_1,minusOp_carry__3_n_2,minusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(cnt_o[20:17]),
        .O(minusOp[19:16]),
        .S({minusOp_carry__3_i_1_n_0,minusOp_carry__3_i_2_n_0,minusOp_carry__3_i_3_n_0,minusOp_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__3_i_1
       (.I0(cnt_o[20]),
        .O(minusOp_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__3_i_2
       (.I0(cnt_o[19]),
        .O(minusOp_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__3_i_3
       (.I0(cnt_o[18]),
        .O(minusOp_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__3_i_4
       (.I0(cnt_o[17]),
        .O(minusOp_carry__3_i_4_n_0));
  CARRY4 minusOp_carry__4
       (.CI(minusOp_carry__3_n_0),
        .CO({minusOp_carry__4_n_0,minusOp_carry__4_n_1,minusOp_carry__4_n_2,minusOp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(cnt_o[24:21]),
        .O(minusOp[23:20]),
        .S({minusOp_carry__4_i_1_n_0,minusOp_carry__4_i_2_n_0,minusOp_carry__4_i_3_n_0,minusOp_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__4_i_1
       (.I0(cnt_o[24]),
        .O(minusOp_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__4_i_2
       (.I0(cnt_o[23]),
        .O(minusOp_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__4_i_3
       (.I0(cnt_o[22]),
        .O(minusOp_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__4_i_4
       (.I0(cnt_o[21]),
        .O(minusOp_carry__4_i_4_n_0));
  CARRY4 minusOp_carry__5
       (.CI(minusOp_carry__4_n_0),
        .CO({minusOp_carry__5_n_0,minusOp_carry__5_n_1,minusOp_carry__5_n_2,minusOp_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(cnt_o[28:25]),
        .O(minusOp[27:24]),
        .S({minusOp_carry__5_i_1_n_0,minusOp_carry__5_i_2_n_0,minusOp_carry__5_i_3_n_0,minusOp_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__5_i_1
       (.I0(cnt_o[28]),
        .O(minusOp_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__5_i_2
       (.I0(cnt_o[27]),
        .O(minusOp_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__5_i_3
       (.I0(cnt_o[26]),
        .O(minusOp_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__5_i_4
       (.I0(cnt_o[25]),
        .O(minusOp_carry__5_i_4_n_0));
  CARRY4 minusOp_carry__6
       (.CI(minusOp_carry__5_n_0),
        .CO({NLW_minusOp_carry__6_CO_UNCONNECTED[3],minusOp_carry__6_n_1,minusOp_carry__6_n_2,minusOp_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,cnt_o[31:29]}),
        .O(minusOp[31:28]),
        .S({1'b1,minusOp_carry__6_i_1_n_0,minusOp_carry__6_i_2_n_0,minusOp_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__6_i_1
       (.I0(cnt_o[31]),
        .O(minusOp_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__6_i_2
       (.I0(cnt_o[30]),
        .O(minusOp_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__6_i_3
       (.I0(cnt_o[29]),
        .O(minusOp_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_1
       (.I0(cnt_o[4]),
        .O(minusOp_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_2
       (.I0(cnt_o[3]),
        .O(minusOp_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_3
       (.I0(cnt_o[2]),
        .O(minusOp_carry_i_3_n_0));
  CARRY4 \minusOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\minusOp_inferred__0/i__carry_n_0 ,\minusOp_inferred__0/i__carry_n_1 ,\minusOp_inferred__0/i__carry_n_2 ,\minusOp_inferred__0/i__carry_n_3 }),
        .CYINIT(cnt_o[0]),
        .DI(cnt_o[4:1]),
        .O({\minusOp_inferred__0/i__carry_n_4 ,\minusOp_inferred__0/i__carry_n_5 ,\minusOp_inferred__0/i__carry_n_6 ,\minusOp_inferred__0/i__carry_n_7 }),
        .S({i__carry_i_1__3_n_0,i__carry_i_2__3_n_0,i__carry_i_3__3_n_0,i__carry_i_4__3_n_0}));
  CARRY4 \minusOp_inferred__0/i__carry__0 
       (.CI(\minusOp_inferred__0/i__carry_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__0_n_0 ,\minusOp_inferred__0/i__carry__0_n_1 ,\minusOp_inferred__0/i__carry__0_n_2 ,\minusOp_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(cnt_o[8:5]),
        .O({\minusOp_inferred__0/i__carry__0_n_4 ,\minusOp_inferred__0/i__carry__0_n_5 ,\minusOp_inferred__0/i__carry__0_n_6 ,\minusOp_inferred__0/i__carry__0_n_7 }),
        .S({i__carry__0_i_1__1_n_0,i__carry__0_i_2__8_n_0,i__carry__0_i_3__2_n_0,i__carry__0_i_4__2_n_0}));
  CARRY4 \minusOp_inferred__0/i__carry__1 
       (.CI(\minusOp_inferred__0/i__carry__0_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__1_n_0 ,\minusOp_inferred__0/i__carry__1_n_1 ,\minusOp_inferred__0/i__carry__1_n_2 ,\minusOp_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(cnt_o[12:9]),
        .O({\minusOp_inferred__0/i__carry__1_n_4 ,\minusOp_inferred__0/i__carry__1_n_5 ,\minusOp_inferred__0/i__carry__1_n_6 ,\minusOp_inferred__0/i__carry__1_n_7 }),
        .S({i__carry__1_i_1__1_n_0,i__carry__1_i_2__1_n_0,i__carry__1_i_3__1_n_0,i__carry__1_i_4__1_n_0}));
  CARRY4 \minusOp_inferred__0/i__carry__2 
       (.CI(\minusOp_inferred__0/i__carry__1_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__2_n_0 ,\minusOp_inferred__0/i__carry__2_n_1 ,\minusOp_inferred__0/i__carry__2_n_2 ,\minusOp_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI(cnt_o[16:13]),
        .O({\minusOp_inferred__0/i__carry__2_n_4 ,\minusOp_inferred__0/i__carry__2_n_5 ,\minusOp_inferred__0/i__carry__2_n_6 ,\minusOp_inferred__0/i__carry__2_n_7 }),
        .S({i__carry__2_i_1__0_n_0,i__carry__2_i_2__0_n_0,i__carry__2_i_3__0_n_0,i__carry__2_i_4__0_n_0}));
  CARRY4 \minusOp_inferred__0/i__carry__3 
       (.CI(\minusOp_inferred__0/i__carry__2_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__3_n_0 ,\minusOp_inferred__0/i__carry__3_n_1 ,\minusOp_inferred__0/i__carry__3_n_2 ,\minusOp_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI(cnt_o[20:17]),
        .O({\minusOp_inferred__0/i__carry__3_n_4 ,\minusOp_inferred__0/i__carry__3_n_5 ,\minusOp_inferred__0/i__carry__3_n_6 ,\minusOp_inferred__0/i__carry__3_n_7 }),
        .S({i__carry__3_i_1__0_n_0,i__carry__3_i_2__0_n_0,i__carry__3_i_3__0_n_0,i__carry__3_i_4__0_n_0}));
  CARRY4 \minusOp_inferred__0/i__carry__4 
       (.CI(\minusOp_inferred__0/i__carry__3_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__4_n_0 ,\minusOp_inferred__0/i__carry__4_n_1 ,\minusOp_inferred__0/i__carry__4_n_2 ,\minusOp_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI(cnt_o[24:21]),
        .O({\minusOp_inferred__0/i__carry__4_n_4 ,\minusOp_inferred__0/i__carry__4_n_5 ,\minusOp_inferred__0/i__carry__4_n_6 ,\minusOp_inferred__0/i__carry__4_n_7 }),
        .S({i__carry__4_i_1__0_n_0,i__carry__4_i_2__0_n_0,i__carry__4_i_3_n_0,i__carry__4_i_4_n_0}));
  CARRY4 \minusOp_inferred__0/i__carry__5 
       (.CI(\minusOp_inferred__0/i__carry__4_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__5_n_0 ,\minusOp_inferred__0/i__carry__5_n_1 ,\minusOp_inferred__0/i__carry__5_n_2 ,\minusOp_inferred__0/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI(cnt_o[28:25]),
        .O({\minusOp_inferred__0/i__carry__5_n_4 ,\minusOp_inferred__0/i__carry__5_n_5 ,\minusOp_inferred__0/i__carry__5_n_6 ,\minusOp_inferred__0/i__carry__5_n_7 }),
        .S({i__carry__5_i_1_n_0,i__carry__5_i_2_n_0,i__carry__5_i_3_n_0,i__carry__5_i_4_n_0}));
  CARRY4 \minusOp_inferred__0/i__carry__6 
       (.CI(\minusOp_inferred__0/i__carry__5_n_0 ),
        .CO({\NLW_minusOp_inferred__0/i__carry__6_CO_UNCONNECTED [3:2],\minusOp_inferred__0/i__carry__6_n_2 ,\minusOp_inferred__0/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,cnt_o[30:29]}),
        .O({\NLW_minusOp_inferred__0/i__carry__6_O_UNCONNECTED [3],\minusOp_inferred__0/i__carry__6_n_5 ,\minusOp_inferred__0/i__carry__6_n_6 ,\minusOp_inferred__0/i__carry__6_n_7 }),
        .S({1'b0,i__carry__6_i_1_n_0,i__carry__6_i_2_n_0,i__carry__6_i_3_n_0}));
  CARRY4 \minusOp_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\minusOp_inferred__1/i__carry_n_0 ,\minusOp_inferred__1/i__carry_n_1 ,\minusOp_inferred__1/i__carry_n_2 ,\minusOp_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({\end_trj_reg_reg_n_0_[3] ,\end_trj_reg_reg_n_0_[2] ,\end_trj_reg_reg_n_0_[1] ,\end_trj_reg_reg_n_0_[0] }),
        .O({\minusOp_inferred__1/i__carry_n_4 ,\minusOp_inferred__1/i__carry_n_5 ,\minusOp_inferred__1/i__carry_n_6 ,\minusOp_inferred__1/i__carry_n_7 }),
        .S({i__carry_i_1__9_n_0,i__carry_i_2__9_n_0,i__carry_i_3__9_n_0,i__carry_i_4__8_n_0}));
  CARRY4 \minusOp_inferred__1/i__carry__0 
       (.CI(\minusOp_inferred__1/i__carry_n_0 ),
        .CO({\minusOp_inferred__1/i__carry__0_n_0 ,\minusOp_inferred__1/i__carry__0_n_1 ,\minusOp_inferred__1/i__carry__0_n_2 ,\minusOp_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\end_trj_reg_reg_n_0_[7] ,\end_trj_reg_reg_n_0_[6] ,\end_trj_reg_reg_n_0_[5] ,\end_trj_reg_reg_n_0_[4] }),
        .O({\minusOp_inferred__1/i__carry__0_n_4 ,\minusOp_inferred__1/i__carry__0_n_5 ,\minusOp_inferred__1/i__carry__0_n_6 ,\minusOp_inferred__1/i__carry__0_n_7 }),
        .S({i__carry__0_i_1__9_n_0,i__carry__0_i_2__9_n_0,i__carry__0_i_3__3_n_0,i__carry__0_i_4__3_n_0}));
  CARRY4 \minusOp_inferred__1/i__carry__1 
       (.CI(\minusOp_inferred__1/i__carry__0_n_0 ),
        .CO({\minusOp_inferred__1/i__carry__1_n_0 ,\minusOp_inferred__1/i__carry__1_n_1 ,\minusOp_inferred__1/i__carry__1_n_2 ,\minusOp_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({\end_trj_reg_reg_n_0_[11] ,\end_trj_reg_reg_n_0_[10] ,\end_trj_reg_reg_n_0_[9] ,\end_trj_reg_reg_n_0_[8] }),
        .O({\minusOp_inferred__1/i__carry__1_n_4 ,\minusOp_inferred__1/i__carry__1_n_5 ,\minusOp_inferred__1/i__carry__1_n_6 ,\minusOp_inferred__1/i__carry__1_n_7 }),
        .S({i__carry__1_i_1__2_n_0,i__carry__1_i_2__2_n_0,i__carry__1_i_3__2_n_0,i__carry__1_i_4__2_n_0}));
  CARRY4 \minusOp_inferred__1/i__carry__2 
       (.CI(\minusOp_inferred__1/i__carry__1_n_0 ),
        .CO({\minusOp_inferred__1/i__carry__2_n_0 ,\minusOp_inferred__1/i__carry__2_n_1 ,\minusOp_inferred__1/i__carry__2_n_2 ,\minusOp_inferred__1/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({\end_trj_reg_reg_n_0_[15] ,\end_trj_reg_reg_n_0_[14] ,\end_trj_reg_reg_n_0_[13] ,\end_trj_reg_reg_n_0_[12] }),
        .O({\minusOp_inferred__1/i__carry__2_n_4 ,\minusOp_inferred__1/i__carry__2_n_5 ,\minusOp_inferred__1/i__carry__2_n_6 ,\minusOp_inferred__1/i__carry__2_n_7 }),
        .S({i__carry__2_i_1__1_n_0,i__carry__2_i_2__1_n_0,i__carry__2_i_3__1_n_0,i__carry__2_i_4__1_n_0}));
  CARRY4 \minusOp_inferred__1/i__carry__3 
       (.CI(\minusOp_inferred__1/i__carry__2_n_0 ),
        .CO({\minusOp_inferred__1/i__carry__3_n_0 ,\minusOp_inferred__1/i__carry__3_n_1 ,\minusOp_inferred__1/i__carry__3_n_2 ,\minusOp_inferred__1/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI(R4_in[19:16]),
        .O({\minusOp_inferred__1/i__carry__3_n_4 ,\minusOp_inferred__1/i__carry__3_n_5 ,\minusOp_inferred__1/i__carry__3_n_6 ,\minusOp_inferred__1/i__carry__3_n_7 }),
        .S({i__carry__3_i_1__1_n_0,i__carry__3_i_2__1_n_0,i__carry__3_i_3__1_n_0,i__carry__3_i_4__1_n_0}));
  CARRY4 \minusOp_inferred__1/i__carry__4 
       (.CI(\minusOp_inferred__1/i__carry__3_n_0 ),
        .CO({\minusOp_inferred__1/i__carry__4_n_0 ,\minusOp_inferred__1/i__carry__4_n_1 ,\minusOp_inferred__1/i__carry__4_n_2 ,\minusOp_inferred__1/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI(R4_in[23:20]),
        .O({\minusOp_inferred__1/i__carry__4_n_4 ,\minusOp_inferred__1/i__carry__4_n_5 ,\minusOp_inferred__1/i__carry__4_n_6 ,\minusOp_inferred__1/i__carry__4_n_7 }),
        .S({i__carry__4_i_1__1_n_0,i__carry__4_i_2__1_n_0,i__carry__4_i_3__0_n_0,i__carry__4_i_4__0_n_0}));
  CARRY4 \minusOp_inferred__1/i__carry__5 
       (.CI(\minusOp_inferred__1/i__carry__4_n_0 ),
        .CO({\minusOp_inferred__1/i__carry__5_n_0 ,\minusOp_inferred__1/i__carry__5_n_1 ,\minusOp_inferred__1/i__carry__5_n_2 ,\minusOp_inferred__1/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI(R4_in[27:24]),
        .O({\minusOp_inferred__1/i__carry__5_n_4 ,\minusOp_inferred__1/i__carry__5_n_5 ,\minusOp_inferred__1/i__carry__5_n_6 ,\minusOp_inferred__1/i__carry__5_n_7 }),
        .S({i__carry__5_i_1__0_n_0,i__carry__5_i_2__0_n_0,i__carry__5_i_3__0_n_0,i__carry__5_i_4__0_n_0}));
  CARRY4 \minusOp_inferred__1/i__carry__6 
       (.CI(\minusOp_inferred__1/i__carry__5_n_0 ),
        .CO({\NLW_minusOp_inferred__1/i__carry__6_CO_UNCONNECTED [3],\minusOp_inferred__1/i__carry__6_n_1 ,\minusOp_inferred__1/i__carry__6_n_2 ,\minusOp_inferred__1/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,R4_in[30:28]}),
        .O({\minusOp_inferred__1/i__carry__6_n_4 ,\minusOp_inferred__1/i__carry__6_n_5 ,\minusOp_inferred__1/i__carry__6_n_6 ,\minusOp_inferred__1/i__carry__6_n_7 }),
        .S({i__carry__6_i_1__0_n_0,i__carry__6_i_2__0_n_0,i__carry__6_i_3__0_n_0,i__carry__6_i_4_n_0}));
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(EC_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp[4:3],plusOp__0,plusOp[1]}),
        .S(EC_cnt[4:1]));
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[8:5]),
        .S(EC_cnt[8:5]));
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[12:9]),
        .S(EC_cnt[12:9]));
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({plusOp_carry__2_n_0,plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[16:13]),
        .S(EC_cnt[16:13]));
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_0),
        .CO({plusOp_carry__3_n_0,plusOp_carry__3_n_1,plusOp_carry__3_n_2,plusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[20:17]),
        .S(EC_cnt[20:17]));
  CARRY4 plusOp_carry__4
       (.CI(plusOp_carry__3_n_0),
        .CO(NLW_plusOp_carry__4_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__4_O_UNCONNECTED[3:1],plusOp[21]}),
        .S({1'b0,1'b0,1'b0,EC_cnt[21]}));
  CARRY4 \plusOp_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\plusOp_inferred__1/i__carry_n_0 ,\plusOp_inferred__1/i__carry_n_1 ,\plusOp_inferred__1/i__carry_n_2 ,\plusOp_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\plusOp_inferred__1/i__carry_n_4 ,\plusOp_inferred__1/i__carry_n_5 ,\plusOp_inferred__1/i__carry_n_6 ,\plusOp_inferred__1/i__carry_n_7 }),
        .S({i__carry_i_1__8_n_0,i__carry_i_2__8_n_0,i__carry_i_3__8_n_0,sm_ACC_pos[0]}));
  CARRY4 \plusOp_inferred__1/i__carry__0 
       (.CI(\plusOp_inferred__1/i__carry_n_0 ),
        .CO({\plusOp_inferred__1/i__carry__0_n_0 ,\plusOp_inferred__1/i__carry__0_n_1 ,\plusOp_inferred__1/i__carry__0_n_2 ,\plusOp_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__1/i__carry__0_n_4 ,\plusOp_inferred__1/i__carry__0_n_5 ,\plusOp_inferred__1/i__carry__0_n_6 ,\plusOp_inferred__1/i__carry__0_n_7 }),
        .S({i__carry__0_i_1__0_n_0,i__carry__0_i_2__7_n_0,i__carry__0_i_3__1_n_0,i__carry__0_i_4__1_n_0}));
  CARRY4 \plusOp_inferred__1/i__carry__1 
       (.CI(\plusOp_inferred__1/i__carry__0_n_0 ),
        .CO({\plusOp_inferred__1/i__carry__1_n_0 ,\plusOp_inferred__1/i__carry__1_n_1 ,\plusOp_inferred__1/i__carry__1_n_2 ,\plusOp_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__1/i__carry__1_n_4 ,\plusOp_inferred__1/i__carry__1_n_5 ,\plusOp_inferred__1/i__carry__1_n_6 ,\plusOp_inferred__1/i__carry__1_n_7 }),
        .S({i__carry__1_i_1__0_n_0,i__carry__1_i_2__0_n_0,i__carry__1_i_3__0_n_0,i__carry__1_i_4__0_n_0}));
  CARRY4 \plusOp_inferred__1/i__carry__2 
       (.CI(\plusOp_inferred__1/i__carry__1_n_0 ),
        .CO({\plusOp_inferred__1/i__carry__2_n_0 ,\plusOp_inferred__1/i__carry__2_n_1 ,\plusOp_inferred__1/i__carry__2_n_2 ,\plusOp_inferred__1/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__1/i__carry__2_n_4 ,\plusOp_inferred__1/i__carry__2_n_5 ,\plusOp_inferred__1/i__carry__2_n_6 ,\plusOp_inferred__1/i__carry__2_n_7 }),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  CARRY4 \plusOp_inferred__1/i__carry__3 
       (.CI(\plusOp_inferred__1/i__carry__2_n_0 ),
        .CO({\plusOp_inferred__1/i__carry__3_n_0 ,\plusOp_inferred__1/i__carry__3_n_1 ,\plusOp_inferred__1/i__carry__3_n_2 ,\plusOp_inferred__1/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__1/i__carry__3_n_4 ,\plusOp_inferred__1/i__carry__3_n_5 ,\plusOp_inferred__1/i__carry__3_n_6 ,\plusOp_inferred__1/i__carry__3_n_7 }),
        .S({i__carry__3_i_1_n_0,i__carry__3_i_2_n_0,i__carry__3_i_3_n_0,i__carry__3_i_4_n_0}));
  CARRY4 \plusOp_inferred__1/i__carry__4 
       (.CI(\plusOp_inferred__1/i__carry__3_n_0 ),
        .CO({\NLW_plusOp_inferred__1/i__carry__4_CO_UNCONNECTED [3:1],\plusOp_inferred__1/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_plusOp_inferred__1/i__carry__4_O_UNCONNECTED [3:2],\plusOp_inferred__1/i__carry__4_n_6 ,\plusOp_inferred__1/i__carry__4_n_7 }),
        .S({1'b0,1'b0,i__carry__4_i_1_n_0,i__carry__4_i_2_n_0}));
  FDRE port_clk_reg
       (.C(clk200),
        .CE(1'b1),
        .D(clock_loc__0),
        .Q(port_clk_loc),
        .R(rst_200_out));
  FDRE port_dir_reg
       (.C(clk200),
        .CE(1'b1),
        .D(dir),
        .Q(port_dir_loc),
        .R(rst_200_out));
  FDRE port_ena_reg
       (.C(clk200),
        .CE(1'b1),
        .D(ena_load[1]),
        .Q(port_ena_loc),
        .R(rst_200_out));
  FDRE port_m1P_reg
       (.C(clk200),
        .CE(1'b1),
        .D(res[0]),
        .Q(port_m1P_loc),
        .R(rst_200_out));
  FDRE port_m2P_reg
       (.C(clk200),
        .CE(1'b1),
        .D(res[1]),
        .Q(port_m2P_loc),
        .R(rst_200_out));
  FDRE port_ref_reg
       (.C(clk200),
        .CE(1'b1),
        .D(ena_load[0]),
        .Q(port_ref_loc),
        .R(rst_200_out));
  LUT5 #(
    .INIT(32'hF0FFF0F4)) 
    \pulse_cnt[0]_i_1 
       (.I0(\pulse_cnt[0]_i_3_n_0 ),
        .I1(pulse_cnt_reg[3]),
        .I2(rst_200_out),
        .I3(\pulse_cnt[0]_i_4_n_0 ),
        .I4(\pulse_cnt[0]_i_5_n_0 ),
        .O(\pulse_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \pulse_cnt[0]_i_3 
       (.I0(pulse_cnt_reg[12]),
        .I1(pulse_cnt_reg[9]),
        .I2(pulse_cnt_reg[8]),
        .I3(pulse_cnt_reg[7]),
        .O(\pulse_cnt[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pulse_cnt[0]_i_4 
       (.I0(pulse_cnt_reg[10]),
        .I1(pulse_cnt_reg[6]),
        .I2(pulse_cnt_reg[4]),
        .I3(\pulse_cnt[0]_i_7_n_0 ),
        .I4(\pulse_cnt[0]_i_8_n_0 ),
        .O(\pulse_cnt[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \pulse_cnt[0]_i_5 
       (.I0(pulse_cnt_reg[8]),
        .I1(pulse_cnt_reg[9]),
        .I2(pulse_cnt_reg[3]),
        .I3(pulse_cnt_reg[7]),
        .I4(sm_start_reg_n_0),
        .I5(pulse_cnt_reg[12]),
        .O(\pulse_cnt[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_cnt[0]_i_6 
       (.I0(pulse_cnt_reg[0]),
        .O(\pulse_cnt[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pulse_cnt[0]_i_7 
       (.I0(pulse_cnt_reg[15]),
        .I1(pulse_cnt_reg[14]),
        .I2(pulse_cnt_reg[13]),
        .I3(pulse_cnt_reg[11]),
        .O(\pulse_cnt[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pulse_cnt[0]_i_8 
       (.I0(pulse_cnt_reg[1]),
        .I1(pulse_cnt_reg[5]),
        .I2(pulse_cnt_reg[0]),
        .I3(pulse_cnt_reg[2]),
        .O(\pulse_cnt[0]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[0] 
       (.C(clk200),
        .CE(1'b1),
        .D(\pulse_cnt_reg[0]_i_2_n_7 ),
        .Q(pulse_cnt_reg[0]),
        .R(\pulse_cnt[0]_i_1_n_0 ));
  CARRY4 \pulse_cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\pulse_cnt_reg[0]_i_2_n_0 ,\pulse_cnt_reg[0]_i_2_n_1 ,\pulse_cnt_reg[0]_i_2_n_2 ,\pulse_cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\pulse_cnt_reg[0]_i_2_n_4 ,\pulse_cnt_reg[0]_i_2_n_5 ,\pulse_cnt_reg[0]_i_2_n_6 ,\pulse_cnt_reg[0]_i_2_n_7 }),
        .S({pulse_cnt_reg[3:1],\pulse_cnt[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[10] 
       (.C(clk200),
        .CE(1'b1),
        .D(\pulse_cnt_reg[8]_i_1_n_5 ),
        .Q(pulse_cnt_reg[10]),
        .R(\pulse_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[11] 
       (.C(clk200),
        .CE(1'b1),
        .D(\pulse_cnt_reg[8]_i_1_n_4 ),
        .Q(pulse_cnt_reg[11]),
        .R(\pulse_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[12] 
       (.C(clk200),
        .CE(1'b1),
        .D(\pulse_cnt_reg[12]_i_1_n_7 ),
        .Q(pulse_cnt_reg[12]),
        .R(\pulse_cnt[0]_i_1_n_0 ));
  CARRY4 \pulse_cnt_reg[12]_i_1 
       (.CI(\pulse_cnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_pulse_cnt_reg[12]_i_1_CO_UNCONNECTED [3],\pulse_cnt_reg[12]_i_1_n_1 ,\pulse_cnt_reg[12]_i_1_n_2 ,\pulse_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pulse_cnt_reg[12]_i_1_n_4 ,\pulse_cnt_reg[12]_i_1_n_5 ,\pulse_cnt_reg[12]_i_1_n_6 ,\pulse_cnt_reg[12]_i_1_n_7 }),
        .S(pulse_cnt_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[13] 
       (.C(clk200),
        .CE(1'b1),
        .D(\pulse_cnt_reg[12]_i_1_n_6 ),
        .Q(pulse_cnt_reg[13]),
        .R(\pulse_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[14] 
       (.C(clk200),
        .CE(1'b1),
        .D(\pulse_cnt_reg[12]_i_1_n_5 ),
        .Q(pulse_cnt_reg[14]),
        .R(\pulse_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[15] 
       (.C(clk200),
        .CE(1'b1),
        .D(\pulse_cnt_reg[12]_i_1_n_4 ),
        .Q(pulse_cnt_reg[15]),
        .R(\pulse_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[1] 
       (.C(clk200),
        .CE(1'b1),
        .D(\pulse_cnt_reg[0]_i_2_n_6 ),
        .Q(pulse_cnt_reg[1]),
        .R(\pulse_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[2] 
       (.C(clk200),
        .CE(1'b1),
        .D(\pulse_cnt_reg[0]_i_2_n_5 ),
        .Q(pulse_cnt_reg[2]),
        .R(\pulse_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[3] 
       (.C(clk200),
        .CE(1'b1),
        .D(\pulse_cnt_reg[0]_i_2_n_4 ),
        .Q(pulse_cnt_reg[3]),
        .R(\pulse_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[4] 
       (.C(clk200),
        .CE(1'b1),
        .D(\pulse_cnt_reg[4]_i_1_n_7 ),
        .Q(pulse_cnt_reg[4]),
        .R(\pulse_cnt[0]_i_1_n_0 ));
  CARRY4 \pulse_cnt_reg[4]_i_1 
       (.CI(\pulse_cnt_reg[0]_i_2_n_0 ),
        .CO({\pulse_cnt_reg[4]_i_1_n_0 ,\pulse_cnt_reg[4]_i_1_n_1 ,\pulse_cnt_reg[4]_i_1_n_2 ,\pulse_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pulse_cnt_reg[4]_i_1_n_4 ,\pulse_cnt_reg[4]_i_1_n_5 ,\pulse_cnt_reg[4]_i_1_n_6 ,\pulse_cnt_reg[4]_i_1_n_7 }),
        .S(pulse_cnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[5] 
       (.C(clk200),
        .CE(1'b1),
        .D(\pulse_cnt_reg[4]_i_1_n_6 ),
        .Q(pulse_cnt_reg[5]),
        .R(\pulse_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[6] 
       (.C(clk200),
        .CE(1'b1),
        .D(\pulse_cnt_reg[4]_i_1_n_5 ),
        .Q(pulse_cnt_reg[6]),
        .R(\pulse_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[7] 
       (.C(clk200),
        .CE(1'b1),
        .D(\pulse_cnt_reg[4]_i_1_n_4 ),
        .Q(pulse_cnt_reg[7]),
        .R(\pulse_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[8] 
       (.C(clk200),
        .CE(1'b1),
        .D(\pulse_cnt_reg[8]_i_1_n_7 ),
        .Q(pulse_cnt_reg[8]),
        .R(\pulse_cnt[0]_i_1_n_0 ));
  CARRY4 \pulse_cnt_reg[8]_i_1 
       (.CI(\pulse_cnt_reg[4]_i_1_n_0 ),
        .CO({\pulse_cnt_reg[8]_i_1_n_0 ,\pulse_cnt_reg[8]_i_1_n_1 ,\pulse_cnt_reg[8]_i_1_n_2 ,\pulse_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pulse_cnt_reg[8]_i_1_n_4 ,\pulse_cnt_reg[8]_i_1_n_5 ,\pulse_cnt_reg[8]_i_1_n_6 ,\pulse_cnt_reg[8]_i_1_n_7 }),
        .S(pulse_cnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_cnt_reg[9] 
       (.C(clk200),
        .CE(1'b1),
        .D(\pulse_cnt_reg[8]_i_1_n_6 ),
        .Q(pulse_cnt_reg[9]),
        .R(\pulse_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    ramp_dwn_d1_reg
       (.C(clk200),
        .CE(1'b1),
        .D(ramp_dwn),
        .Q(ramp_dwn_d1),
        .R(rst_200_out));
  FDRE #(
    .INIT(1'b0)) 
    ramp_dwn_d2_reg
       (.C(clk200),
        .CE(1'b1),
        .D(ramp_dwn_d1),
        .Q(ramp_dwn_d2),
        .R(rst_200_out));
  LUT4 #(
    .INIT(16'h4F44)) 
    ramp_dwn_trig_i_1
       (.I0(ramp_dwn_d2),
        .I1(ramp_dwn_d1),
        .I2(sm_start_reg_n_0),
        .I3(ramp_dwn_trig),
        .O(ramp_dwn_trig_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ramp_dwn_trig_reg
       (.C(clk200),
        .CE(1'b1),
        .D(ramp_dwn_trig_i_1_n_0),
        .Q(ramp_dwn_trig),
        .R(rst_200_out));
  FDRE #(
    .INIT(1'b0)) 
    ramp_up_d1_reg
       (.C(clk200),
        .CE(1'b1),
        .D(ramp_up),
        .Q(ramp_up_d1),
        .R(rst_200_out));
  FDRE #(
    .INIT(1'b0)) 
    ramp_up_d2_reg
       (.C(clk200),
        .CE(1'b1),
        .D(ramp_up_d1),
        .Q(ramp_up_d2),
        .R(rst_200_out));
  LUT2 #(
    .INIT(4'h2)) 
    ramp_up_trig_i_1
       (.I0(ramp_up_d1),
        .I1(ramp_up_d2),
        .O(ramp_up_trig0));
  FDRE #(
    .INIT(1'b0)) 
    ramp_up_trig_reg
       (.C(clk200),
        .CE(1'b1),
        .D(ramp_up_trig0),
        .Q(ramp_up_trig),
        .R(rst_200_out));
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
        .Q(rst_200_out),
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
  FDRE \running_loc_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(sm_run_stp_reg_n_0),
        .Q(\running_loc_reg_n_0_[0] ),
        .R(reset));
  FDSE \running_loc_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(steady_spd_reg_n_0),
        .Q(\running_loc_reg_n_0_[1] ),
        .S(reset));
  FDRE \running_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\running_loc_reg_n_0_[0] ),
        .Q(running[0]),
        .R(reset));
  FDSE \running_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\running_loc_reg_n_0_[1] ),
        .Q(running[1]),
        .S(reset));
  FDRE #(
    .INIT(1'b0)) 
    slw_stps_d1_reg
       (.C(clk200),
        .CE(1'b1),
        .D(slw_stps),
        .Q(slw_stps_d1),
        .R(rst_200_out));
  FDRE #(
    .INIT(1'b0)) 
    slw_stps_d2_reg
       (.C(clk200),
        .CE(1'b1),
        .D(slw_stps_d1),
        .Q(slw_stps_d2),
        .R(rst_200_out));
  LUT2 #(
    .INIT(4'h2)) 
    slw_stps_trig_i_1
       (.I0(slw_stps_d1),
        .I1(slw_stps_d2),
        .O(slw_stps_trig0));
  FDRE #(
    .INIT(1'b0)) 
    slw_stps_trig_reg
       (.C(clk200),
        .CE(1'b1),
        .D(slw_stps_trig0),
        .Q(slw_stps_trig),
        .R(rst_200_out));
  LUT4 #(
    .INIT(16'hF888)) 
    \sm_ACC[0]_i_1 
       (.I0(sm_ACC_pos[0]),
        .I1(\sm_ACC[21]_i_4_n_0 ),
        .I2(sm_ACC_neg[0]),
        .I3(\sm_ACC[21]_i_5_n_0 ),
        .O(\sm_ACC[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \sm_ACC[10]_i_1 
       (.I0(sm_ACC_pos[10]),
        .I1(\sm_ACC[21]_i_4_n_0 ),
        .I2(sm_ACC_neg[10]),
        .I3(\sm_ACC[21]_i_5_n_0 ),
        .O(\sm_ACC[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \sm_ACC[11]_i_1 
       (.I0(sm_ACC_pos[11]),
        .I1(\sm_ACC[21]_i_4_n_0 ),
        .I2(sm_ACC_neg[11]),
        .I3(\sm_ACC[21]_i_5_n_0 ),
        .O(\sm_ACC[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \sm_ACC[12]_i_1 
       (.I0(sm_ACC_pos[12]),
        .I1(\sm_ACC[21]_i_4_n_0 ),
        .I2(sm_ACC_neg[12]),
        .I3(\sm_ACC[21]_i_5_n_0 ),
        .O(\sm_ACC[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \sm_ACC[13]_i_1 
       (.I0(sm_ACC_pos[13]),
        .I1(\sm_ACC[21]_i_4_n_0 ),
        .I2(sm_ACC_neg[13]),
        .I3(\sm_ACC[21]_i_5_n_0 ),
        .O(\sm_ACC[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \sm_ACC[14]_i_1 
       (.I0(sm_ACC_pos[14]),
        .I1(\sm_ACC[21]_i_4_n_0 ),
        .I2(sm_ACC_neg[14]),
        .I3(\sm_ACC[21]_i_5_n_0 ),
        .O(\sm_ACC[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \sm_ACC[15]_i_1 
       (.I0(sm_ACC_pos[15]),
        .I1(\sm_ACC[21]_i_4_n_0 ),
        .I2(sm_ACC_neg[15]),
        .I3(\sm_ACC[21]_i_5_n_0 ),
        .O(\sm_ACC[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \sm_ACC[16]_i_1 
       (.I0(sm_ACC_pos[16]),
        .I1(\sm_ACC[21]_i_4_n_0 ),
        .I2(sm_ACC_neg[16]),
        .I3(\sm_ACC[21]_i_5_n_0 ),
        .O(\sm_ACC[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \sm_ACC[17]_i_1 
       (.I0(sm_ACC_pos[17]),
        .I1(\sm_ACC[21]_i_4_n_0 ),
        .I2(sm_ACC_neg[17]),
        .I3(\sm_ACC[21]_i_5_n_0 ),
        .O(\sm_ACC[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \sm_ACC[18]_i_1 
       (.I0(sm_ACC_pos[18]),
        .I1(\sm_ACC[21]_i_4_n_0 ),
        .I2(sm_ACC_neg[18]),
        .I3(\sm_ACC[21]_i_5_n_0 ),
        .O(\sm_ACC[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \sm_ACC[19]_i_1 
       (.I0(sm_ACC_pos[19]),
        .I1(\sm_ACC[21]_i_4_n_0 ),
        .I2(sm_ACC_neg[19]),
        .I3(\sm_ACC[21]_i_5_n_0 ),
        .O(\sm_ACC[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \sm_ACC[1]_i_1 
       (.I0(sm_ACC_pos[1]),
        .I1(\sm_ACC[21]_i_4_n_0 ),
        .I2(sm_ACC_neg[1]),
        .I3(\sm_ACC[21]_i_5_n_0 ),
        .O(\sm_ACC[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \sm_ACC[20]_i_1 
       (.I0(sm_ACC_pos[20]),
        .I1(\sm_ACC[21]_i_4_n_0 ),
        .I2(sm_ACC_neg[20]),
        .I3(\sm_ACC[21]_i_5_n_0 ),
        .O(\sm_ACC[20]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \sm_ACC[21]_i_1 
       (.I0(sm_start),
        .I1(\FSM_onehot_sm_state_reg_n_0_[0] ),
        .O(\sm_ACC[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \sm_ACC[21]_i_2 
       (.I0(sm_ACC_pos[21]),
        .I1(\sm_ACC[21]_i_4_n_0 ),
        .I2(sm_ACC_neg[21]),
        .I3(\sm_ACC[21]_i_5_n_0 ),
        .O(\sm_ACC[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sm_ACC[21]_i_3 
       (.I0(\sm_ACC[21]_i_6_n_0 ),
        .I1(\FSM_onehot_sm_state_reg_n_0_[25] ),
        .I2(\FSM_onehot_sm_state_reg_n_0_[11] ),
        .I3(\FSM_onehot_sm_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_sm_state_reg_n_0_[13] ),
        .I5(\FSM_onehot_sm_state_reg_n_0_[31] ),
        .O(sm_start));
  LUT6 #(
    .INIT(64'hFCFCFCFCFEFFFEFE)) 
    \sm_ACC[21]_i_4 
       (.I0(\FSM_onehot_sm_state_reg_n_0_[21] ),
        .I1(\FSM_onehot_sm_state_reg_n_0_[7] ),
        .I2(\sm_ACC[21]_i_7_n_0 ),
        .I3(ACC_zero_flg_reg_n_0),
        .I4(\FSM_onehot_sm_state_reg_n_0_[31] ),
        .I5(EC_tgt_acc_trig_reg_n_0),
        .O(\sm_ACC[21]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFAAEA)) 
    \sm_ACC[21]_i_5 
       (.I0(\FSM_onehot_sm_state_reg_n_0_[13] ),
        .I1(\FSM_onehot_sm_state_reg_n_0_[31] ),
        .I2(EC_tgt_acc_trig_reg_n_0),
        .I3(ACC_zero_flg_reg_n_0),
        .I4(\sm_ACC[21]_i_8_n_0 ),
        .O(\sm_ACC[21]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sm_ACC[21]_i_6 
       (.I0(\FSM_onehot_sm_state_reg_n_0_[35] ),
        .I1(\FSM_onehot_sm_state_reg_n_0_[23] ),
        .I2(\sm_EC[21]_i_4_n_0 ),
        .I3(\sm_EC[21]_i_3_n_0 ),
        .O(\sm_ACC[21]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sm_ACC[21]_i_7 
       (.I0(\FSM_onehot_sm_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_sm_state_reg_n_0_[19] ),
        .O(\sm_ACC[21]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAEFFAEAE)) 
    \sm_ACC[21]_i_8 
       (.I0(\FSM_onehot_sm_state_reg_n_0_[15] ),
        .I1(\FSM_onehot_sm_state_reg_n_0_[27] ),
        .I2(init_EC_trig_reg_n_0),
        .I3(EC_tgt_dec_trig_reg_n_0),
        .I4(\FSM_onehot_sm_state_reg_n_0_[33] ),
        .O(\sm_ACC[21]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \sm_ACC[2]_i_1 
       (.I0(sm_ACC_pos[2]),
        .I1(\sm_ACC[21]_i_4_n_0 ),
        .I2(sm_ACC_neg[2]),
        .I3(\sm_ACC[21]_i_5_n_0 ),
        .O(\sm_ACC[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \sm_ACC[3]_i_1 
       (.I0(sm_ACC_pos[3]),
        .I1(\sm_ACC[21]_i_4_n_0 ),
        .I2(sm_ACC_neg[3]),
        .I3(\sm_ACC[21]_i_5_n_0 ),
        .O(\sm_ACC[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \sm_ACC[4]_i_1 
       (.I0(sm_ACC_pos[4]),
        .I1(\sm_ACC[21]_i_4_n_0 ),
        .I2(sm_ACC_neg[4]),
        .I3(\sm_ACC[21]_i_5_n_0 ),
        .O(\sm_ACC[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \sm_ACC[5]_i_1 
       (.I0(sm_ACC_pos[5]),
        .I1(\sm_ACC[21]_i_4_n_0 ),
        .I2(sm_ACC_neg[5]),
        .I3(\sm_ACC[21]_i_5_n_0 ),
        .O(\sm_ACC[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \sm_ACC[6]_i_1 
       (.I0(sm_ACC_pos[6]),
        .I1(\sm_ACC[21]_i_4_n_0 ),
        .I2(sm_ACC_neg[6]),
        .I3(\sm_ACC[21]_i_5_n_0 ),
        .O(\sm_ACC[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \sm_ACC[7]_i_1 
       (.I0(sm_ACC_pos[7]),
        .I1(\sm_ACC[21]_i_4_n_0 ),
        .I2(sm_ACC_neg[7]),
        .I3(\sm_ACC[21]_i_5_n_0 ),
        .O(\sm_ACC[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \sm_ACC[8]_i_1 
       (.I0(sm_ACC_pos[8]),
        .I1(\sm_ACC[21]_i_4_n_0 ),
        .I2(sm_ACC_neg[8]),
        .I3(\sm_ACC[21]_i_5_n_0 ),
        .O(\sm_ACC[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \sm_ACC[9]_i_1 
       (.I0(sm_ACC_pos[9]),
        .I1(\sm_ACC[21]_i_4_n_0 ),
        .I2(sm_ACC_neg[9]),
        .I3(\sm_ACC[21]_i_5_n_0 ),
        .O(\sm_ACC[9]_i_1_n_0 ));
  FDRE \sm_ACC_neg_reg[0] 
       (.C(clk200),
        .CE(1'b1),
        .D(\plusOp_inferred__1/i__carry_n_7 ),
        .Q(sm_ACC_neg[0]),
        .R(rst_200_out));
  FDRE \sm_ACC_neg_reg[10] 
       (.C(clk200),
        .CE(1'b1),
        .D(\plusOp_inferred__1/i__carry__1_n_5 ),
        .Q(sm_ACC_neg[10]),
        .R(rst_200_out));
  FDRE \sm_ACC_neg_reg[11] 
       (.C(clk200),
        .CE(1'b1),
        .D(\plusOp_inferred__1/i__carry__1_n_4 ),
        .Q(sm_ACC_neg[11]),
        .R(rst_200_out));
  FDRE \sm_ACC_neg_reg[12] 
       (.C(clk200),
        .CE(1'b1),
        .D(\plusOp_inferred__1/i__carry__2_n_7 ),
        .Q(sm_ACC_neg[12]),
        .R(rst_200_out));
  FDRE \sm_ACC_neg_reg[13] 
       (.C(clk200),
        .CE(1'b1),
        .D(\plusOp_inferred__1/i__carry__2_n_6 ),
        .Q(sm_ACC_neg[13]),
        .R(rst_200_out));
  FDRE \sm_ACC_neg_reg[14] 
       (.C(clk200),
        .CE(1'b1),
        .D(\plusOp_inferred__1/i__carry__2_n_5 ),
        .Q(sm_ACC_neg[14]),
        .R(rst_200_out));
  FDRE \sm_ACC_neg_reg[15] 
       (.C(clk200),
        .CE(1'b1),
        .D(\plusOp_inferred__1/i__carry__2_n_4 ),
        .Q(sm_ACC_neg[15]),
        .R(rst_200_out));
  FDRE \sm_ACC_neg_reg[16] 
       (.C(clk200),
        .CE(1'b1),
        .D(\plusOp_inferred__1/i__carry__3_n_7 ),
        .Q(sm_ACC_neg[16]),
        .R(rst_200_out));
  FDRE \sm_ACC_neg_reg[17] 
       (.C(clk200),
        .CE(1'b1),
        .D(\plusOp_inferred__1/i__carry__3_n_6 ),
        .Q(sm_ACC_neg[17]),
        .R(rst_200_out));
  FDRE \sm_ACC_neg_reg[18] 
       (.C(clk200),
        .CE(1'b1),
        .D(\plusOp_inferred__1/i__carry__3_n_5 ),
        .Q(sm_ACC_neg[18]),
        .R(rst_200_out));
  FDRE \sm_ACC_neg_reg[19] 
       (.C(clk200),
        .CE(1'b1),
        .D(\plusOp_inferred__1/i__carry__3_n_4 ),
        .Q(sm_ACC_neg[19]),
        .R(rst_200_out));
  FDRE \sm_ACC_neg_reg[1] 
       (.C(clk200),
        .CE(1'b1),
        .D(\plusOp_inferred__1/i__carry_n_6 ),
        .Q(sm_ACC_neg[1]),
        .R(rst_200_out));
  FDRE \sm_ACC_neg_reg[20] 
       (.C(clk200),
        .CE(1'b1),
        .D(\plusOp_inferred__1/i__carry__4_n_7 ),
        .Q(sm_ACC_neg[20]),
        .R(rst_200_out));
  FDRE \sm_ACC_neg_reg[21] 
       (.C(clk200),
        .CE(1'b1),
        .D(\plusOp_inferred__1/i__carry__4_n_6 ),
        .Q(sm_ACC_neg[21]),
        .R(rst_200_out));
  FDRE \sm_ACC_neg_reg[2] 
       (.C(clk200),
        .CE(1'b1),
        .D(\plusOp_inferred__1/i__carry_n_5 ),
        .Q(sm_ACC_neg[2]),
        .R(rst_200_out));
  FDRE \sm_ACC_neg_reg[3] 
       (.C(clk200),
        .CE(1'b1),
        .D(\plusOp_inferred__1/i__carry_n_4 ),
        .Q(sm_ACC_neg[3]),
        .R(rst_200_out));
  FDRE \sm_ACC_neg_reg[4] 
       (.C(clk200),
        .CE(1'b1),
        .D(\plusOp_inferred__1/i__carry__0_n_7 ),
        .Q(sm_ACC_neg[4]),
        .R(rst_200_out));
  FDRE \sm_ACC_neg_reg[5] 
       (.C(clk200),
        .CE(1'b1),
        .D(\plusOp_inferred__1/i__carry__0_n_6 ),
        .Q(sm_ACC_neg[5]),
        .R(rst_200_out));
  FDRE \sm_ACC_neg_reg[6] 
       (.C(clk200),
        .CE(1'b1),
        .D(\plusOp_inferred__1/i__carry__0_n_5 ),
        .Q(sm_ACC_neg[6]),
        .R(rst_200_out));
  FDRE \sm_ACC_neg_reg[7] 
       (.C(clk200),
        .CE(1'b1),
        .D(\plusOp_inferred__1/i__carry__0_n_4 ),
        .Q(sm_ACC_neg[7]),
        .R(rst_200_out));
  FDRE \sm_ACC_neg_reg[8] 
       (.C(clk200),
        .CE(1'b1),
        .D(\plusOp_inferred__1/i__carry__1_n_7 ),
        .Q(sm_ACC_neg[8]),
        .R(rst_200_out));
  FDRE \sm_ACC_neg_reg[9] 
       (.C(clk200),
        .CE(1'b1),
        .D(\plusOp_inferred__1/i__carry__1_n_6 ),
        .Q(sm_ACC_neg[9]),
        .R(rst_200_out));
  FDRE \sm_ACC_pos_reg[0] 
       (.C(clk200),
        .CE(1'b1),
        .D(tgt_ACC[0]),
        .Q(sm_ACC_pos[0]),
        .R(rst_200_out));
  FDRE \sm_ACC_pos_reg[10] 
       (.C(clk200),
        .CE(1'b1),
        .D(tgt_ACC[10]),
        .Q(sm_ACC_pos[10]),
        .R(rst_200_out));
  FDRE \sm_ACC_pos_reg[11] 
       (.C(clk200),
        .CE(1'b1),
        .D(tgt_ACC[11]),
        .Q(sm_ACC_pos[11]),
        .R(rst_200_out));
  FDRE \sm_ACC_pos_reg[12] 
       (.C(clk200),
        .CE(1'b1),
        .D(tgt_ACC[12]),
        .Q(sm_ACC_pos[12]),
        .R(rst_200_out));
  FDRE \sm_ACC_pos_reg[13] 
       (.C(clk200),
        .CE(1'b1),
        .D(tgt_ACC[13]),
        .Q(sm_ACC_pos[13]),
        .R(rst_200_out));
  FDRE \sm_ACC_pos_reg[14] 
       (.C(clk200),
        .CE(1'b1),
        .D(tgt_ACC[14]),
        .Q(sm_ACC_pos[14]),
        .R(rst_200_out));
  FDRE \sm_ACC_pos_reg[15] 
       (.C(clk200),
        .CE(1'b1),
        .D(tgt_ACC[15]),
        .Q(sm_ACC_pos[15]),
        .R(rst_200_out));
  FDRE \sm_ACC_pos_reg[16] 
       (.C(clk200),
        .CE(1'b1),
        .D(tgt_ACC[16]),
        .Q(sm_ACC_pos[16]),
        .R(rst_200_out));
  FDRE \sm_ACC_pos_reg[17] 
       (.C(clk200),
        .CE(1'b1),
        .D(tgt_ACC[17]),
        .Q(sm_ACC_pos[17]),
        .R(rst_200_out));
  FDRE \sm_ACC_pos_reg[18] 
       (.C(clk200),
        .CE(1'b1),
        .D(tgt_ACC[18]),
        .Q(sm_ACC_pos[18]),
        .R(rst_200_out));
  FDRE \sm_ACC_pos_reg[19] 
       (.C(clk200),
        .CE(1'b1),
        .D(tgt_ACC[19]),
        .Q(sm_ACC_pos[19]),
        .R(rst_200_out));
  FDRE \sm_ACC_pos_reg[1] 
       (.C(clk200),
        .CE(1'b1),
        .D(tgt_ACC[1]),
        .Q(sm_ACC_pos[1]),
        .R(rst_200_out));
  FDRE \sm_ACC_pos_reg[20] 
       (.C(clk200),
        .CE(1'b1),
        .D(tgt_ACC[20]),
        .Q(sm_ACC_pos[20]),
        .R(rst_200_out));
  FDRE \sm_ACC_pos_reg[21] 
       (.C(clk200),
        .CE(1'b1),
        .D(tgt_ACC[21]),
        .Q(sm_ACC_pos[21]),
        .R(rst_200_out));
  FDRE \sm_ACC_pos_reg[2] 
       (.C(clk200),
        .CE(1'b1),
        .D(tgt_ACC[2]),
        .Q(sm_ACC_pos[2]),
        .R(rst_200_out));
  FDRE \sm_ACC_pos_reg[3] 
       (.C(clk200),
        .CE(1'b1),
        .D(tgt_ACC[3]),
        .Q(sm_ACC_pos[3]),
        .R(rst_200_out));
  FDRE \sm_ACC_pos_reg[4] 
       (.C(clk200),
        .CE(1'b1),
        .D(tgt_ACC[4]),
        .Q(sm_ACC_pos[4]),
        .R(rst_200_out));
  FDRE \sm_ACC_pos_reg[5] 
       (.C(clk200),
        .CE(1'b1),
        .D(tgt_ACC[5]),
        .Q(sm_ACC_pos[5]),
        .R(rst_200_out));
  FDRE \sm_ACC_pos_reg[6] 
       (.C(clk200),
        .CE(1'b1),
        .D(tgt_ACC[6]),
        .Q(sm_ACC_pos[6]),
        .R(rst_200_out));
  FDRE \sm_ACC_pos_reg[7] 
       (.C(clk200),
        .CE(1'b1),
        .D(tgt_ACC[7]),
        .Q(sm_ACC_pos[7]),
        .R(rst_200_out));
  FDRE \sm_ACC_pos_reg[8] 
       (.C(clk200),
        .CE(1'b1),
        .D(tgt_ACC[8]),
        .Q(sm_ACC_pos[8]),
        .R(rst_200_out));
  FDRE \sm_ACC_pos_reg[9] 
       (.C(clk200),
        .CE(1'b1),
        .D(tgt_ACC[9]),
        .Q(sm_ACC_pos[9]),
        .R(rst_200_out));
  FDRE \sm_ACC_reg[0] 
       (.C(clk200),
        .CE(\sm_ACC[21]_i_1_n_0 ),
        .D(\sm_ACC[0]_i_1_n_0 ),
        .Q(smc_ACC[0]),
        .R(rst_200_out));
  FDRE \sm_ACC_reg[10] 
       (.C(clk200),
        .CE(\sm_ACC[21]_i_1_n_0 ),
        .D(\sm_ACC[10]_i_1_n_0 ),
        .Q(smc_ACC[10]),
        .R(rst_200_out));
  FDRE \sm_ACC_reg[11] 
       (.C(clk200),
        .CE(\sm_ACC[21]_i_1_n_0 ),
        .D(\sm_ACC[11]_i_1_n_0 ),
        .Q(smc_ACC[11]),
        .R(rst_200_out));
  FDRE \sm_ACC_reg[12] 
       (.C(clk200),
        .CE(\sm_ACC[21]_i_1_n_0 ),
        .D(\sm_ACC[12]_i_1_n_0 ),
        .Q(smc_ACC[12]),
        .R(rst_200_out));
  FDRE \sm_ACC_reg[13] 
       (.C(clk200),
        .CE(\sm_ACC[21]_i_1_n_0 ),
        .D(\sm_ACC[13]_i_1_n_0 ),
        .Q(smc_ACC[13]),
        .R(rst_200_out));
  FDRE \sm_ACC_reg[14] 
       (.C(clk200),
        .CE(\sm_ACC[21]_i_1_n_0 ),
        .D(\sm_ACC[14]_i_1_n_0 ),
        .Q(smc_ACC[14]),
        .R(rst_200_out));
  FDRE \sm_ACC_reg[15] 
       (.C(clk200),
        .CE(\sm_ACC[21]_i_1_n_0 ),
        .D(\sm_ACC[15]_i_1_n_0 ),
        .Q(smc_ACC[15]),
        .R(rst_200_out));
  FDRE \sm_ACC_reg[16] 
       (.C(clk200),
        .CE(\sm_ACC[21]_i_1_n_0 ),
        .D(\sm_ACC[16]_i_1_n_0 ),
        .Q(smc_ACC[16]),
        .R(rst_200_out));
  FDRE \sm_ACC_reg[17] 
       (.C(clk200),
        .CE(\sm_ACC[21]_i_1_n_0 ),
        .D(\sm_ACC[17]_i_1_n_0 ),
        .Q(smc_ACC[17]),
        .R(rst_200_out));
  FDRE \sm_ACC_reg[18] 
       (.C(clk200),
        .CE(\sm_ACC[21]_i_1_n_0 ),
        .D(\sm_ACC[18]_i_1_n_0 ),
        .Q(smc_ACC[18]),
        .R(rst_200_out));
  FDRE \sm_ACC_reg[19] 
       (.C(clk200),
        .CE(\sm_ACC[21]_i_1_n_0 ),
        .D(\sm_ACC[19]_i_1_n_0 ),
        .Q(smc_ACC[19]),
        .R(rst_200_out));
  FDRE \sm_ACC_reg[1] 
       (.C(clk200),
        .CE(\sm_ACC[21]_i_1_n_0 ),
        .D(\sm_ACC[1]_i_1_n_0 ),
        .Q(smc_ACC[1]),
        .R(rst_200_out));
  FDRE \sm_ACC_reg[20] 
       (.C(clk200),
        .CE(\sm_ACC[21]_i_1_n_0 ),
        .D(\sm_ACC[20]_i_1_n_0 ),
        .Q(smc_ACC[20]),
        .R(rst_200_out));
  FDRE \sm_ACC_reg[21] 
       (.C(clk200),
        .CE(\sm_ACC[21]_i_1_n_0 ),
        .D(\sm_ACC[21]_i_2_n_0 ),
        .Q(smc_ACC[21]),
        .R(rst_200_out));
  FDRE \sm_ACC_reg[2] 
       (.C(clk200),
        .CE(\sm_ACC[21]_i_1_n_0 ),
        .D(\sm_ACC[2]_i_1_n_0 ),
        .Q(smc_ACC[2]),
        .R(rst_200_out));
  FDRE \sm_ACC_reg[3] 
       (.C(clk200),
        .CE(\sm_ACC[21]_i_1_n_0 ),
        .D(\sm_ACC[3]_i_1_n_0 ),
        .Q(smc_ACC[3]),
        .R(rst_200_out));
  FDRE \sm_ACC_reg[4] 
       (.C(clk200),
        .CE(\sm_ACC[21]_i_1_n_0 ),
        .D(\sm_ACC[4]_i_1_n_0 ),
        .Q(smc_ACC[4]),
        .R(rst_200_out));
  FDRE \sm_ACC_reg[5] 
       (.C(clk200),
        .CE(\sm_ACC[21]_i_1_n_0 ),
        .D(\sm_ACC[5]_i_1_n_0 ),
        .Q(smc_ACC[5]),
        .R(rst_200_out));
  FDRE \sm_ACC_reg[6] 
       (.C(clk200),
        .CE(\sm_ACC[21]_i_1_n_0 ),
        .D(\sm_ACC[6]_i_1_n_0 ),
        .Q(smc_ACC[6]),
        .R(rst_200_out));
  FDRE \sm_ACC_reg[7] 
       (.C(clk200),
        .CE(\sm_ACC[21]_i_1_n_0 ),
        .D(\sm_ACC[7]_i_1_n_0 ),
        .Q(smc_ACC[7]),
        .R(rst_200_out));
  FDRE \sm_ACC_reg[8] 
       (.C(clk200),
        .CE(\sm_ACC[21]_i_1_n_0 ),
        .D(\sm_ACC[8]_i_1_n_0 ),
        .Q(smc_ACC[8]),
        .R(rst_200_out));
  FDRE \sm_ACC_reg[9] 
       (.C(clk200),
        .CE(\sm_ACC[21]_i_1_n_0 ),
        .D(\sm_ACC[9]_i_1_n_0 ),
        .Q(smc_ACC[9]),
        .R(rst_200_out));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sm_EC[0]_i_1 
       (.I0(\sm_EC[21]_i_4_n_0 ),
        .I1(init_EC_loc[0]),
        .I2(\sm_EC[21]_i_5_n_0 ),
        .I3(sm_nxt_EC_loc[0]),
        .I4(tgt_EC[0]),
        .I5(\sm_EC[21]_i_6_n_0 ),
        .O(\sm_EC[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sm_EC[10]_i_1 
       (.I0(\sm_EC[21]_i_4_n_0 ),
        .I1(init_EC_loc[10]),
        .I2(\sm_EC[21]_i_5_n_0 ),
        .I3(sm_nxt_EC_loc[10]),
        .I4(tgt_EC[10]),
        .I5(\sm_EC[21]_i_6_n_0 ),
        .O(\sm_EC[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sm_EC[11]_i_1 
       (.I0(\sm_EC[21]_i_4_n_0 ),
        .I1(init_EC_loc[11]),
        .I2(\sm_EC[21]_i_5_n_0 ),
        .I3(sm_nxt_EC_loc[11]),
        .I4(tgt_EC[11]),
        .I5(\sm_EC[21]_i_6_n_0 ),
        .O(\sm_EC[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sm_EC[12]_i_1 
       (.I0(\sm_EC[21]_i_4_n_0 ),
        .I1(init_EC_loc[12]),
        .I2(\sm_EC[21]_i_5_n_0 ),
        .I3(sm_nxt_EC_loc[12]),
        .I4(tgt_EC[12]),
        .I5(\sm_EC[21]_i_6_n_0 ),
        .O(\sm_EC[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sm_EC[13]_i_1 
       (.I0(\sm_EC[21]_i_4_n_0 ),
        .I1(init_EC_loc[13]),
        .I2(\sm_EC[21]_i_5_n_0 ),
        .I3(sm_nxt_EC_loc[13]),
        .I4(tgt_EC[13]),
        .I5(\sm_EC[21]_i_6_n_0 ),
        .O(\sm_EC[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sm_EC[14]_i_1 
       (.I0(\sm_EC[21]_i_4_n_0 ),
        .I1(init_EC_loc[14]),
        .I2(\sm_EC[21]_i_5_n_0 ),
        .I3(sm_nxt_EC_loc[14]),
        .I4(tgt_EC[14]),
        .I5(\sm_EC[21]_i_6_n_0 ),
        .O(\sm_EC[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sm_EC[15]_i_1 
       (.I0(\sm_EC[21]_i_4_n_0 ),
        .I1(init_EC_loc[15]),
        .I2(\sm_EC[21]_i_5_n_0 ),
        .I3(sm_nxt_EC_loc[15]),
        .I4(tgt_EC[15]),
        .I5(\sm_EC[21]_i_6_n_0 ),
        .O(\sm_EC[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sm_EC[16]_i_1 
       (.I0(\sm_EC[21]_i_4_n_0 ),
        .I1(init_EC_loc[16]),
        .I2(\sm_EC[21]_i_5_n_0 ),
        .I3(sm_nxt_EC_loc[16]),
        .I4(tgt_EC[16]),
        .I5(\sm_EC[21]_i_6_n_0 ),
        .O(\sm_EC[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sm_EC[17]_i_1 
       (.I0(\sm_EC[21]_i_4_n_0 ),
        .I1(init_EC_loc[17]),
        .I2(\sm_EC[21]_i_5_n_0 ),
        .I3(sm_nxt_EC_loc[17]),
        .I4(tgt_EC[17]),
        .I5(\sm_EC[21]_i_6_n_0 ),
        .O(\sm_EC[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sm_EC[18]_i_1 
       (.I0(\sm_EC[21]_i_4_n_0 ),
        .I1(init_EC_loc[18]),
        .I2(\sm_EC[21]_i_5_n_0 ),
        .I3(sm_nxt_EC_loc[18]),
        .I4(tgt_EC[18]),
        .I5(\sm_EC[21]_i_6_n_0 ),
        .O(\sm_EC[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sm_EC[19]_i_1 
       (.I0(\sm_EC[21]_i_4_n_0 ),
        .I1(init_EC_loc[19]),
        .I2(\sm_EC[21]_i_5_n_0 ),
        .I3(sm_nxt_EC_loc[19]),
        .I4(tgt_EC[19]),
        .I5(\sm_EC[21]_i_6_n_0 ),
        .O(\sm_EC[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sm_EC[1]_i_1 
       (.I0(\sm_EC[21]_i_4_n_0 ),
        .I1(init_EC_loc[1]),
        .I2(\sm_EC[21]_i_5_n_0 ),
        .I3(sm_nxt_EC_loc[1]),
        .I4(tgt_EC[1]),
        .I5(\sm_EC[21]_i_6_n_0 ),
        .O(\sm_EC[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sm_EC[20]_i_1 
       (.I0(\sm_EC[21]_i_4_n_0 ),
        .I1(init_EC_loc[20]),
        .I2(\sm_EC[21]_i_5_n_0 ),
        .I3(sm_nxt_EC_loc[20]),
        .I4(tgt_EC[20]),
        .I5(\sm_EC[21]_i_6_n_0 ),
        .O(\sm_EC[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sm_EC[21]_i_1 
       (.I0(\sm_EC[21]_i_3_n_0 ),
        .I1(\sm_EC[21]_i_4_n_0 ),
        .I2(\FSM_onehot_sm_state_reg_n_0_[23] ),
        .I3(\FSM_onehot_sm_state_reg_n_0_[35] ),
        .I4(\FSM_onehot_sm_state_reg_n_0_[0] ),
        .O(\sm_EC[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sm_EC[21]_i_2 
       (.I0(\sm_EC[21]_i_4_n_0 ),
        .I1(init_EC_loc[21]),
        .I2(\sm_EC[21]_i_5_n_0 ),
        .I3(sm_nxt_EC_loc[21]),
        .I4(tgt_EC[21]),
        .I5(\sm_EC[21]_i_6_n_0 ),
        .O(\sm_EC[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sm_EC[21]_i_3 
       (.I0(\FSM_onehot_sm_state_reg_n_0_[15] ),
        .I1(\FSM_onehot_sm_state_reg_n_0_[27] ),
        .I2(\FSM_onehot_sm_state_reg_n_0_[33] ),
        .I3(\FSM_onehot_sm_state_reg_n_0_[7] ),
        .I4(\FSM_onehot_sm_state_reg_n_0_[21] ),
        .O(\sm_EC[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sm_EC[21]_i_4 
       (.I0(\FSM_onehot_sm_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_sm_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_sm_state_reg_n_0_[19] ),
        .I3(\FSM_onehot_sm_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_sm_state_reg_n_0_[17] ),
        .I5(\FSM_onehot_sm_state_reg_n_0_[29] ),
        .O(\sm_EC[21]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEEFE)) 
    \sm_EC[21]_i_5 
       (.I0(\sm_ACC[21]_i_8_n_0 ),
        .I1(\FSM_onehot_sm_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_sm_state_reg_n_0_[21] ),
        .I3(EC_tgt_acc_trig_reg_n_0),
        .O(\sm_EC[21]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    \sm_EC[21]_i_6 
       (.I0(init_EC_trig_reg_n_0),
        .I1(\FSM_onehot_sm_state_reg_n_0_[27] ),
        .I2(\FSM_onehot_sm_state_reg_n_0_[35] ),
        .I3(\FSM_onehot_sm_state_reg_n_0_[23] ),
        .I4(\sm_EC[21]_i_7_n_0 ),
        .O(\sm_EC[21]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \sm_EC[21]_i_7 
       (.I0(EC_tgt_acc_trig_reg_n_0),
        .I1(\FSM_onehot_sm_state_reg_n_0_[21] ),
        .I2(\FSM_onehot_sm_state_reg_n_0_[33] ),
        .I3(EC_tgt_dec_trig_reg_n_0),
        .O(\sm_EC[21]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sm_EC[2]_i_1 
       (.I0(\sm_EC[21]_i_4_n_0 ),
        .I1(init_EC_loc[2]),
        .I2(\sm_EC[21]_i_5_n_0 ),
        .I3(sm_nxt_EC_loc[2]),
        .I4(tgt_EC[2]),
        .I5(\sm_EC[21]_i_6_n_0 ),
        .O(\sm_EC[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sm_EC[3]_i_1 
       (.I0(\sm_EC[21]_i_4_n_0 ),
        .I1(init_EC_loc[3]),
        .I2(\sm_EC[21]_i_5_n_0 ),
        .I3(sm_nxt_EC_loc[3]),
        .I4(tgt_EC[3]),
        .I5(\sm_EC[21]_i_6_n_0 ),
        .O(\sm_EC[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sm_EC[4]_i_1 
       (.I0(\sm_EC[21]_i_4_n_0 ),
        .I1(init_EC_loc[4]),
        .I2(\sm_EC[21]_i_5_n_0 ),
        .I3(sm_nxt_EC_loc[4]),
        .I4(tgt_EC[4]),
        .I5(\sm_EC[21]_i_6_n_0 ),
        .O(\sm_EC[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sm_EC[5]_i_1 
       (.I0(\sm_EC[21]_i_4_n_0 ),
        .I1(init_EC_loc[5]),
        .I2(\sm_EC[21]_i_5_n_0 ),
        .I3(sm_nxt_EC_loc[5]),
        .I4(tgt_EC[5]),
        .I5(\sm_EC[21]_i_6_n_0 ),
        .O(\sm_EC[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sm_EC[6]_i_1 
       (.I0(\sm_EC[21]_i_4_n_0 ),
        .I1(init_EC_loc[6]),
        .I2(\sm_EC[21]_i_5_n_0 ),
        .I3(sm_nxt_EC_loc[6]),
        .I4(tgt_EC[6]),
        .I5(\sm_EC[21]_i_6_n_0 ),
        .O(\sm_EC[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sm_EC[7]_i_1 
       (.I0(\sm_EC[21]_i_4_n_0 ),
        .I1(init_EC_loc[7]),
        .I2(\sm_EC[21]_i_5_n_0 ),
        .I3(sm_nxt_EC_loc[7]),
        .I4(tgt_EC[7]),
        .I5(\sm_EC[21]_i_6_n_0 ),
        .O(\sm_EC[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sm_EC[8]_i_1 
       (.I0(\sm_EC[21]_i_4_n_0 ),
        .I1(init_EC_loc[8]),
        .I2(\sm_EC[21]_i_5_n_0 ),
        .I3(sm_nxt_EC_loc[8]),
        .I4(tgt_EC[8]),
        .I5(\sm_EC[21]_i_6_n_0 ),
        .O(\sm_EC[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sm_EC[9]_i_1 
       (.I0(\sm_EC[21]_i_4_n_0 ),
        .I1(init_EC_loc[9]),
        .I2(\sm_EC[21]_i_5_n_0 ),
        .I3(sm_nxt_EC_loc[9]),
        .I4(tgt_EC[9]),
        .I5(\sm_EC[21]_i_6_n_0 ),
        .O(\sm_EC[9]_i_1_n_0 ));
  FDRE \sm_EC_reg[0] 
       (.C(clk200),
        .CE(\sm_EC[21]_i_1_n_0 ),
        .D(\sm_EC[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(rst_200_out));
  FDRE \sm_EC_reg[10] 
       (.C(clk200),
        .CE(\sm_EC[21]_i_1_n_0 ),
        .D(\sm_EC[10]_i_1_n_0 ),
        .Q(Q[10]),
        .R(rst_200_out));
  FDRE \sm_EC_reg[11] 
       (.C(clk200),
        .CE(\sm_EC[21]_i_1_n_0 ),
        .D(\sm_EC[11]_i_1_n_0 ),
        .Q(Q[11]),
        .R(rst_200_out));
  FDRE \sm_EC_reg[12] 
       (.C(clk200),
        .CE(\sm_EC[21]_i_1_n_0 ),
        .D(\sm_EC[12]_i_1_n_0 ),
        .Q(Q[12]),
        .R(rst_200_out));
  FDRE \sm_EC_reg[13] 
       (.C(clk200),
        .CE(\sm_EC[21]_i_1_n_0 ),
        .D(\sm_EC[13]_i_1_n_0 ),
        .Q(Q[13]),
        .R(rst_200_out));
  FDRE \sm_EC_reg[14] 
       (.C(clk200),
        .CE(\sm_EC[21]_i_1_n_0 ),
        .D(\sm_EC[14]_i_1_n_0 ),
        .Q(Q[14]),
        .R(rst_200_out));
  FDRE \sm_EC_reg[15] 
       (.C(clk200),
        .CE(\sm_EC[21]_i_1_n_0 ),
        .D(\sm_EC[15]_i_1_n_0 ),
        .Q(Q[15]),
        .R(rst_200_out));
  FDRE \sm_EC_reg[16] 
       (.C(clk200),
        .CE(\sm_EC[21]_i_1_n_0 ),
        .D(\sm_EC[16]_i_1_n_0 ),
        .Q(Q[16]),
        .R(rst_200_out));
  FDRE \sm_EC_reg[17] 
       (.C(clk200),
        .CE(\sm_EC[21]_i_1_n_0 ),
        .D(\sm_EC[17]_i_1_n_0 ),
        .Q(Q[17]),
        .R(rst_200_out));
  FDRE \sm_EC_reg[18] 
       (.C(clk200),
        .CE(\sm_EC[21]_i_1_n_0 ),
        .D(\sm_EC[18]_i_1_n_0 ),
        .Q(Q[18]),
        .R(rst_200_out));
  FDRE \sm_EC_reg[19] 
       (.C(clk200),
        .CE(\sm_EC[21]_i_1_n_0 ),
        .D(\sm_EC[19]_i_1_n_0 ),
        .Q(Q[19]),
        .R(rst_200_out));
  FDRE \sm_EC_reg[1] 
       (.C(clk200),
        .CE(\sm_EC[21]_i_1_n_0 ),
        .D(\sm_EC[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(rst_200_out));
  FDRE \sm_EC_reg[20] 
       (.C(clk200),
        .CE(\sm_EC[21]_i_1_n_0 ),
        .D(\sm_EC[20]_i_1_n_0 ),
        .Q(Q[20]),
        .R(rst_200_out));
  FDRE \sm_EC_reg[21] 
       (.C(clk200),
        .CE(\sm_EC[21]_i_1_n_0 ),
        .D(\sm_EC[21]_i_2_n_0 ),
        .Q(Q[21]),
        .R(rst_200_out));
  FDRE \sm_EC_reg[2] 
       (.C(clk200),
        .CE(\sm_EC[21]_i_1_n_0 ),
        .D(\sm_EC[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(rst_200_out));
  FDRE \sm_EC_reg[3] 
       (.C(clk200),
        .CE(\sm_EC[21]_i_1_n_0 ),
        .D(\sm_EC[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(rst_200_out));
  FDRE \sm_EC_reg[4] 
       (.C(clk200),
        .CE(\sm_EC[21]_i_1_n_0 ),
        .D(\sm_EC[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(rst_200_out));
  FDRE \sm_EC_reg[5] 
       (.C(clk200),
        .CE(\sm_EC[21]_i_1_n_0 ),
        .D(\sm_EC[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(rst_200_out));
  FDRE \sm_EC_reg[6] 
       (.C(clk200),
        .CE(\sm_EC[21]_i_1_n_0 ),
        .D(\sm_EC[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(rst_200_out));
  FDRE \sm_EC_reg[7] 
       (.C(clk200),
        .CE(\sm_EC[21]_i_1_n_0 ),
        .D(\sm_EC[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(rst_200_out));
  FDRE \sm_EC_reg[8] 
       (.C(clk200),
        .CE(\sm_EC[21]_i_1_n_0 ),
        .D(\sm_EC[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(rst_200_out));
  FDRE \sm_EC_reg[9] 
       (.C(clk200),
        .CE(\sm_EC[21]_i_1_n_0 ),
        .D(\sm_EC[9]_i_1_n_0 ),
        .Q(Q[9]),
        .R(rst_200_out));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sm_RM[0]_i_1 
       (.I0(\sm_EC[21]_i_5_n_0 ),
        .I1(\sm_nxt_RM_loc_reg_n_0_[0] ),
        .O(\sm_RM[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sm_RM[10]_i_1 
       (.I0(\sm_EC[21]_i_5_n_0 ),
        .I1(\sm_nxt_RM_loc_reg_n_0_[10] ),
        .O(\sm_RM[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sm_RM[11]_i_1 
       (.I0(\sm_EC[21]_i_5_n_0 ),
        .I1(\sm_nxt_RM_loc_reg_n_0_[11] ),
        .O(\sm_RM[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sm_RM[12]_i_1 
       (.I0(\sm_EC[21]_i_5_n_0 ),
        .I1(\sm_nxt_RM_loc_reg_n_0_[12] ),
        .O(\sm_RM[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sm_RM[13]_i_1 
       (.I0(\sm_EC[21]_i_5_n_0 ),
        .I1(\sm_nxt_RM_loc_reg_n_0_[13] ),
        .O(\sm_RM[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sm_RM[14]_i_1 
       (.I0(\sm_EC[21]_i_5_n_0 ),
        .I1(\sm_nxt_RM_loc_reg_n_0_[14] ),
        .O(\sm_RM[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sm_RM[15]_i_1 
       (.I0(\sm_EC[21]_i_5_n_0 ),
        .I1(\sm_nxt_RM_loc_reg_n_0_[15] ),
        .O(\sm_RM[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sm_RM[1]_i_1 
       (.I0(\sm_EC[21]_i_5_n_0 ),
        .I1(\sm_nxt_RM_loc_reg_n_0_[1] ),
        .O(\sm_RM[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sm_RM[2]_i_1 
       (.I0(\sm_EC[21]_i_5_n_0 ),
        .I1(\sm_nxt_RM_loc_reg_n_0_[2] ),
        .O(\sm_RM[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sm_RM[3]_i_1 
       (.I0(\sm_EC[21]_i_5_n_0 ),
        .I1(\sm_nxt_RM_loc_reg_n_0_[3] ),
        .O(\sm_RM[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sm_RM[4]_i_1 
       (.I0(\sm_EC[21]_i_5_n_0 ),
        .I1(\sm_nxt_RM_loc_reg_n_0_[4] ),
        .O(\sm_RM[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sm_RM[5]_i_1 
       (.I0(\sm_EC[21]_i_5_n_0 ),
        .I1(\sm_nxt_RM_loc_reg_n_0_[5] ),
        .O(\sm_RM[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sm_RM[6]_i_1 
       (.I0(\sm_EC[21]_i_5_n_0 ),
        .I1(\sm_nxt_RM_loc_reg_n_0_[6] ),
        .O(\sm_RM[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sm_RM[7]_i_1 
       (.I0(\sm_EC[21]_i_5_n_0 ),
        .I1(\sm_nxt_RM_loc_reg_n_0_[7] ),
        .O(\sm_RM[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sm_RM[8]_i_1 
       (.I0(\sm_EC[21]_i_5_n_0 ),
        .I1(\sm_nxt_RM_loc_reg_n_0_[8] ),
        .O(\sm_RM[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sm_RM[9]_i_1 
       (.I0(\sm_EC[21]_i_5_n_0 ),
        .I1(\sm_nxt_RM_loc_reg_n_0_[9] ),
        .O(\sm_RM[9]_i_1_n_0 ));
  FDRE \sm_RM_reg[0] 
       (.C(clk200),
        .CE(\sm_ACC[21]_i_1_n_0 ),
        .D(\sm_RM[0]_i_1_n_0 ),
        .Q(smc_RM[0]),
        .R(rst_200_out));
  FDRE \sm_RM_reg[10] 
       (.C(clk200),
        .CE(\sm_ACC[21]_i_1_n_0 ),
        .D(\sm_RM[10]_i_1_n_0 ),
        .Q(smc_RM[10]),
        .R(rst_200_out));
  FDRE \sm_RM_reg[11] 
       (.C(clk200),
        .CE(\sm_ACC[21]_i_1_n_0 ),
        .D(\sm_RM[11]_i_1_n_0 ),
        .Q(smc_RM[11]),
        .R(rst_200_out));
  FDRE \sm_RM_reg[12] 
       (.C(clk200),
        .CE(\sm_ACC[21]_i_1_n_0 ),
        .D(\sm_RM[12]_i_1_n_0 ),
        .Q(smc_RM[12]),
        .R(rst_200_out));
  FDRE \sm_RM_reg[13] 
       (.C(clk200),
        .CE(\sm_ACC[21]_i_1_n_0 ),
        .D(\sm_RM[13]_i_1_n_0 ),
        .Q(smc_RM[13]),
        .R(rst_200_out));
  FDRE \sm_RM_reg[14] 
       (.C(clk200),
        .CE(\sm_ACC[21]_i_1_n_0 ),
        .D(\sm_RM[14]_i_1_n_0 ),
        .Q(smc_RM[14]),
        .R(rst_200_out));
  FDRE \sm_RM_reg[15] 
       (.C(clk200),
        .CE(\sm_ACC[21]_i_1_n_0 ),
        .D(\sm_RM[15]_i_1_n_0 ),
        .Q(smc_RM[15]),
        .R(rst_200_out));
  FDRE \sm_RM_reg[1] 
       (.C(clk200),
        .CE(\sm_ACC[21]_i_1_n_0 ),
        .D(\sm_RM[1]_i_1_n_0 ),
        .Q(smc_RM[1]),
        .R(rst_200_out));
  FDRE \sm_RM_reg[2] 
       (.C(clk200),
        .CE(\sm_ACC[21]_i_1_n_0 ),
        .D(\sm_RM[2]_i_1_n_0 ),
        .Q(smc_RM[2]),
        .R(rst_200_out));
  FDRE \sm_RM_reg[3] 
       (.C(clk200),
        .CE(\sm_ACC[21]_i_1_n_0 ),
        .D(\sm_RM[3]_i_1_n_0 ),
        .Q(smc_RM[3]),
        .R(rst_200_out));
  FDRE \sm_RM_reg[4] 
       (.C(clk200),
        .CE(\sm_ACC[21]_i_1_n_0 ),
        .D(\sm_RM[4]_i_1_n_0 ),
        .Q(smc_RM[4]),
        .R(rst_200_out));
  FDRE \sm_RM_reg[5] 
       (.C(clk200),
        .CE(\sm_ACC[21]_i_1_n_0 ),
        .D(\sm_RM[5]_i_1_n_0 ),
        .Q(smc_RM[5]),
        .R(rst_200_out));
  FDRE \sm_RM_reg[6] 
       (.C(clk200),
        .CE(\sm_ACC[21]_i_1_n_0 ),
        .D(\sm_RM[6]_i_1_n_0 ),
        .Q(smc_RM[6]),
        .R(rst_200_out));
  FDRE \sm_RM_reg[7] 
       (.C(clk200),
        .CE(\sm_ACC[21]_i_1_n_0 ),
        .D(\sm_RM[7]_i_1_n_0 ),
        .Q(smc_RM[7]),
        .R(rst_200_out));
  FDRE \sm_RM_reg[8] 
       (.C(clk200),
        .CE(\sm_ACC[21]_i_1_n_0 ),
        .D(\sm_RM[8]_i_1_n_0 ),
        .Q(smc_RM[8]),
        .R(rst_200_out));
  FDRE \sm_RM_reg[9] 
       (.C(clk200),
        .CE(\sm_ACC[21]_i_1_n_0 ),
        .D(\sm_RM[9]_i_1_n_0 ),
        .Q(smc_RM[9]),
        .R(rst_200_out));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sm_nxt_EC_loc[0]_i_1 
       (.I0(smc_Next_EC[0]),
        .I1(sm_run_stp_reg_n_0),
        .O(\sm_nxt_EC_loc[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sm_nxt_EC_loc[10]_i_1 
       (.I0(smc_Next_EC[10]),
        .I1(sm_run_stp_reg_n_0),
        .O(\sm_nxt_EC_loc[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sm_nxt_EC_loc[11]_i_1 
       (.I0(smc_Next_EC[11]),
        .I1(sm_run_stp_reg_n_0),
        .O(\sm_nxt_EC_loc[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sm_nxt_EC_loc[12]_i_1 
       (.I0(smc_Next_EC[12]),
        .I1(sm_run_stp_reg_n_0),
        .O(\sm_nxt_EC_loc[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sm_nxt_EC_loc[13]_i_1 
       (.I0(smc_Next_EC[13]),
        .I1(sm_run_stp_reg_n_0),
        .O(\sm_nxt_EC_loc[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sm_nxt_EC_loc[14]_i_1 
       (.I0(smc_Next_EC[14]),
        .I1(sm_run_stp_reg_n_0),
        .O(\sm_nxt_EC_loc[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sm_nxt_EC_loc[15]_i_1 
       (.I0(smc_Next_EC[15]),
        .I1(sm_run_stp_reg_n_0),
        .O(\sm_nxt_EC_loc[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sm_nxt_EC_loc[16]_i_1 
       (.I0(smc_Next_EC[16]),
        .I1(sm_run_stp_reg_n_0),
        .O(\sm_nxt_EC_loc[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sm_nxt_EC_loc[17]_i_1 
       (.I0(smc_Next_EC[17]),
        .I1(sm_run_stp_reg_n_0),
        .O(\sm_nxt_EC_loc[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sm_nxt_EC_loc[18]_i_1 
       (.I0(smc_Next_EC[18]),
        .I1(sm_run_stp_reg_n_0),
        .O(\sm_nxt_EC_loc[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sm_nxt_EC_loc[19]_i_1 
       (.I0(smc_Next_EC[19]),
        .I1(sm_run_stp_reg_n_0),
        .O(\sm_nxt_EC_loc[19]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sm_nxt_EC_loc[1]_i_1 
       (.I0(smc_Next_EC[1]),
        .I1(sm_run_stp_reg_n_0),
        .O(\sm_nxt_EC_loc[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sm_nxt_EC_loc[20]_i_1 
       (.I0(smc_Next_EC[20]),
        .I1(sm_run_stp_reg_n_0),
        .O(\sm_nxt_EC_loc[20]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sm_nxt_EC_loc[21]_i_1 
       (.I0(smc_ack),
        .I1(sm_run_stp_reg_n_0),
        .O(sm_nxt_RM_loc));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sm_nxt_EC_loc[21]_i_2 
       (.I0(smc_Next_EC[21]),
        .I1(sm_run_stp_reg_n_0),
        .O(\sm_nxt_EC_loc[21]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sm_nxt_EC_loc[2]_i_1 
       (.I0(smc_Next_EC[2]),
        .I1(sm_run_stp_reg_n_0),
        .O(\sm_nxt_EC_loc[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sm_nxt_EC_loc[3]_i_1 
       (.I0(smc_Next_EC[3]),
        .I1(sm_run_stp_reg_n_0),
        .O(\sm_nxt_EC_loc[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sm_nxt_EC_loc[4]_i_1 
       (.I0(smc_Next_EC[4]),
        .I1(sm_run_stp_reg_n_0),
        .O(\sm_nxt_EC_loc[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sm_nxt_EC_loc[5]_i_1 
       (.I0(smc_Next_EC[5]),
        .I1(sm_run_stp_reg_n_0),
        .O(\sm_nxt_EC_loc[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sm_nxt_EC_loc[6]_i_1 
       (.I0(smc_Next_EC[6]),
        .I1(sm_run_stp_reg_n_0),
        .O(\sm_nxt_EC_loc[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sm_nxt_EC_loc[7]_i_1 
       (.I0(smc_Next_EC[7]),
        .I1(sm_run_stp_reg_n_0),
        .O(\sm_nxt_EC_loc[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sm_nxt_EC_loc[8]_i_1 
       (.I0(smc_Next_EC[8]),
        .I1(sm_run_stp_reg_n_0),
        .O(\sm_nxt_EC_loc[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sm_nxt_EC_loc[9]_i_1 
       (.I0(smc_Next_EC[9]),
        .I1(sm_run_stp_reg_n_0),
        .O(\sm_nxt_EC_loc[9]_i_1_n_0 ));
  FDSE \sm_nxt_EC_loc_reg[0] 
       (.C(clk200),
        .CE(sm_nxt_RM_loc),
        .D(\sm_nxt_EC_loc[0]_i_1_n_0 ),
        .Q(sm_nxt_EC_loc[0]),
        .S(rst_200_out));
  FDSE \sm_nxt_EC_loc_reg[10] 
       (.C(clk200),
        .CE(sm_nxt_RM_loc),
        .D(\sm_nxt_EC_loc[10]_i_1_n_0 ),
        .Q(sm_nxt_EC_loc[10]),
        .S(rst_200_out));
  FDSE \sm_nxt_EC_loc_reg[11] 
       (.C(clk200),
        .CE(sm_nxt_RM_loc),
        .D(\sm_nxt_EC_loc[11]_i_1_n_0 ),
        .Q(sm_nxt_EC_loc[11]),
        .S(rst_200_out));
  FDSE \sm_nxt_EC_loc_reg[12] 
       (.C(clk200),
        .CE(sm_nxt_RM_loc),
        .D(\sm_nxt_EC_loc[12]_i_1_n_0 ),
        .Q(sm_nxt_EC_loc[12]),
        .S(rst_200_out));
  FDSE \sm_nxt_EC_loc_reg[13] 
       (.C(clk200),
        .CE(sm_nxt_RM_loc),
        .D(\sm_nxt_EC_loc[13]_i_1_n_0 ),
        .Q(sm_nxt_EC_loc[13]),
        .S(rst_200_out));
  FDSE \sm_nxt_EC_loc_reg[14] 
       (.C(clk200),
        .CE(sm_nxt_RM_loc),
        .D(\sm_nxt_EC_loc[14]_i_1_n_0 ),
        .Q(sm_nxt_EC_loc[14]),
        .S(rst_200_out));
  FDSE \sm_nxt_EC_loc_reg[15] 
       (.C(clk200),
        .CE(sm_nxt_RM_loc),
        .D(\sm_nxt_EC_loc[15]_i_1_n_0 ),
        .Q(sm_nxt_EC_loc[15]),
        .S(rst_200_out));
  FDSE \sm_nxt_EC_loc_reg[16] 
       (.C(clk200),
        .CE(sm_nxt_RM_loc),
        .D(\sm_nxt_EC_loc[16]_i_1_n_0 ),
        .Q(sm_nxt_EC_loc[16]),
        .S(rst_200_out));
  FDSE \sm_nxt_EC_loc_reg[17] 
       (.C(clk200),
        .CE(sm_nxt_RM_loc),
        .D(\sm_nxt_EC_loc[17]_i_1_n_0 ),
        .Q(sm_nxt_EC_loc[17]),
        .S(rst_200_out));
  FDSE \sm_nxt_EC_loc_reg[18] 
       (.C(clk200),
        .CE(sm_nxt_RM_loc),
        .D(\sm_nxt_EC_loc[18]_i_1_n_0 ),
        .Q(sm_nxt_EC_loc[18]),
        .S(rst_200_out));
  FDSE \sm_nxt_EC_loc_reg[19] 
       (.C(clk200),
        .CE(sm_nxt_RM_loc),
        .D(\sm_nxt_EC_loc[19]_i_1_n_0 ),
        .Q(sm_nxt_EC_loc[19]),
        .S(rst_200_out));
  FDSE \sm_nxt_EC_loc_reg[1] 
       (.C(clk200),
        .CE(sm_nxt_RM_loc),
        .D(\sm_nxt_EC_loc[1]_i_1_n_0 ),
        .Q(sm_nxt_EC_loc[1]),
        .S(rst_200_out));
  FDSE \sm_nxt_EC_loc_reg[20] 
       (.C(clk200),
        .CE(sm_nxt_RM_loc),
        .D(\sm_nxt_EC_loc[20]_i_1_n_0 ),
        .Q(sm_nxt_EC_loc[20]),
        .S(rst_200_out));
  FDSE \sm_nxt_EC_loc_reg[21] 
       (.C(clk200),
        .CE(sm_nxt_RM_loc),
        .D(\sm_nxt_EC_loc[21]_i_2_n_0 ),
        .Q(sm_nxt_EC_loc[21]),
        .S(rst_200_out));
  FDSE \sm_nxt_EC_loc_reg[2] 
       (.C(clk200),
        .CE(sm_nxt_RM_loc),
        .D(\sm_nxt_EC_loc[2]_i_1_n_0 ),
        .Q(sm_nxt_EC_loc[2]),
        .S(rst_200_out));
  FDSE \sm_nxt_EC_loc_reg[3] 
       (.C(clk200),
        .CE(sm_nxt_RM_loc),
        .D(\sm_nxt_EC_loc[3]_i_1_n_0 ),
        .Q(sm_nxt_EC_loc[3]),
        .S(rst_200_out));
  FDSE \sm_nxt_EC_loc_reg[4] 
       (.C(clk200),
        .CE(sm_nxt_RM_loc),
        .D(\sm_nxt_EC_loc[4]_i_1_n_0 ),
        .Q(sm_nxt_EC_loc[4]),
        .S(rst_200_out));
  FDSE \sm_nxt_EC_loc_reg[5] 
       (.C(clk200),
        .CE(sm_nxt_RM_loc),
        .D(\sm_nxt_EC_loc[5]_i_1_n_0 ),
        .Q(sm_nxt_EC_loc[5]),
        .S(rst_200_out));
  FDSE \sm_nxt_EC_loc_reg[6] 
       (.C(clk200),
        .CE(sm_nxt_RM_loc),
        .D(\sm_nxt_EC_loc[6]_i_1_n_0 ),
        .Q(sm_nxt_EC_loc[6]),
        .S(rst_200_out));
  FDSE \sm_nxt_EC_loc_reg[7] 
       (.C(clk200),
        .CE(sm_nxt_RM_loc),
        .D(\sm_nxt_EC_loc[7]_i_1_n_0 ),
        .Q(sm_nxt_EC_loc[7]),
        .S(rst_200_out));
  FDSE \sm_nxt_EC_loc_reg[8] 
       (.C(clk200),
        .CE(sm_nxt_RM_loc),
        .D(\sm_nxt_EC_loc[8]_i_1_n_0 ),
        .Q(sm_nxt_EC_loc[8]),
        .S(rst_200_out));
  FDSE \sm_nxt_EC_loc_reg[9] 
       (.C(clk200),
        .CE(sm_nxt_RM_loc),
        .D(\sm_nxt_EC_loc[9]_i_1_n_0 ),
        .Q(sm_nxt_EC_loc[9]),
        .S(rst_200_out));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sm_nxt_RM_loc[0]_i_1 
       (.I0(sm_run_stp_reg_n_0),
        .I1(smc_Next_RM[0]),
        .O(\sm_nxt_RM_loc[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sm_nxt_RM_loc[10]_i_1 
       (.I0(sm_run_stp_reg_n_0),
        .I1(smc_Next_RM[10]),
        .O(\sm_nxt_RM_loc[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sm_nxt_RM_loc[11]_i_1 
       (.I0(sm_run_stp_reg_n_0),
        .I1(smc_Next_RM[11]),
        .O(\sm_nxt_RM_loc[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sm_nxt_RM_loc[12]_i_1 
       (.I0(sm_run_stp_reg_n_0),
        .I1(smc_Next_RM[12]),
        .O(\sm_nxt_RM_loc[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sm_nxt_RM_loc[13]_i_1 
       (.I0(sm_run_stp_reg_n_0),
        .I1(smc_Next_RM[13]),
        .O(\sm_nxt_RM_loc[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sm_nxt_RM_loc[14]_i_1 
       (.I0(sm_run_stp_reg_n_0),
        .I1(smc_Next_RM[14]),
        .O(\sm_nxt_RM_loc[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sm_nxt_RM_loc[15]_i_1 
       (.I0(sm_run_stp_reg_n_0),
        .I1(smc_Next_RM[15]),
        .O(\sm_nxt_RM_loc[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sm_nxt_RM_loc[1]_i_1 
       (.I0(sm_run_stp_reg_n_0),
        .I1(smc_Next_RM[1]),
        .O(\sm_nxt_RM_loc[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sm_nxt_RM_loc[2]_i_1 
       (.I0(sm_run_stp_reg_n_0),
        .I1(smc_Next_RM[2]),
        .O(\sm_nxt_RM_loc[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sm_nxt_RM_loc[3]_i_1 
       (.I0(sm_run_stp_reg_n_0),
        .I1(smc_Next_RM[3]),
        .O(\sm_nxt_RM_loc[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sm_nxt_RM_loc[4]_i_1 
       (.I0(sm_run_stp_reg_n_0),
        .I1(smc_Next_RM[4]),
        .O(\sm_nxt_RM_loc[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sm_nxt_RM_loc[5]_i_1 
       (.I0(sm_run_stp_reg_n_0),
        .I1(smc_Next_RM[5]),
        .O(\sm_nxt_RM_loc[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sm_nxt_RM_loc[6]_i_1 
       (.I0(sm_run_stp_reg_n_0),
        .I1(smc_Next_RM[6]),
        .O(\sm_nxt_RM_loc[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sm_nxt_RM_loc[7]_i_1 
       (.I0(sm_run_stp_reg_n_0),
        .I1(smc_Next_RM[7]),
        .O(\sm_nxt_RM_loc[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sm_nxt_RM_loc[8]_i_1 
       (.I0(sm_run_stp_reg_n_0),
        .I1(smc_Next_RM[8]),
        .O(\sm_nxt_RM_loc[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sm_nxt_RM_loc[9]_i_1 
       (.I0(sm_run_stp_reg_n_0),
        .I1(smc_Next_RM[9]),
        .O(\sm_nxt_RM_loc[9]_i_1_n_0 ));
  FDRE \sm_nxt_RM_loc_reg[0] 
       (.C(clk200),
        .CE(sm_nxt_RM_loc),
        .D(\sm_nxt_RM_loc[0]_i_1_n_0 ),
        .Q(\sm_nxt_RM_loc_reg_n_0_[0] ),
        .R(rst_200_out));
  FDRE \sm_nxt_RM_loc_reg[10] 
       (.C(clk200),
        .CE(sm_nxt_RM_loc),
        .D(\sm_nxt_RM_loc[10]_i_1_n_0 ),
        .Q(\sm_nxt_RM_loc_reg_n_0_[10] ),
        .R(rst_200_out));
  FDRE \sm_nxt_RM_loc_reg[11] 
       (.C(clk200),
        .CE(sm_nxt_RM_loc),
        .D(\sm_nxt_RM_loc[11]_i_1_n_0 ),
        .Q(\sm_nxt_RM_loc_reg_n_0_[11] ),
        .R(rst_200_out));
  FDRE \sm_nxt_RM_loc_reg[12] 
       (.C(clk200),
        .CE(sm_nxt_RM_loc),
        .D(\sm_nxt_RM_loc[12]_i_1_n_0 ),
        .Q(\sm_nxt_RM_loc_reg_n_0_[12] ),
        .R(rst_200_out));
  FDRE \sm_nxt_RM_loc_reg[13] 
       (.C(clk200),
        .CE(sm_nxt_RM_loc),
        .D(\sm_nxt_RM_loc[13]_i_1_n_0 ),
        .Q(\sm_nxt_RM_loc_reg_n_0_[13] ),
        .R(rst_200_out));
  FDRE \sm_nxt_RM_loc_reg[14] 
       (.C(clk200),
        .CE(sm_nxt_RM_loc),
        .D(\sm_nxt_RM_loc[14]_i_1_n_0 ),
        .Q(\sm_nxt_RM_loc_reg_n_0_[14] ),
        .R(rst_200_out));
  FDRE \sm_nxt_RM_loc_reg[15] 
       (.C(clk200),
        .CE(sm_nxt_RM_loc),
        .D(\sm_nxt_RM_loc[15]_i_1_n_0 ),
        .Q(\sm_nxt_RM_loc_reg_n_0_[15] ),
        .R(rst_200_out));
  FDRE \sm_nxt_RM_loc_reg[1] 
       (.C(clk200),
        .CE(sm_nxt_RM_loc),
        .D(\sm_nxt_RM_loc[1]_i_1_n_0 ),
        .Q(\sm_nxt_RM_loc_reg_n_0_[1] ),
        .R(rst_200_out));
  FDRE \sm_nxt_RM_loc_reg[2] 
       (.C(clk200),
        .CE(sm_nxt_RM_loc),
        .D(\sm_nxt_RM_loc[2]_i_1_n_0 ),
        .Q(\sm_nxt_RM_loc_reg_n_0_[2] ),
        .R(rst_200_out));
  FDRE \sm_nxt_RM_loc_reg[3] 
       (.C(clk200),
        .CE(sm_nxt_RM_loc),
        .D(\sm_nxt_RM_loc[3]_i_1_n_0 ),
        .Q(\sm_nxt_RM_loc_reg_n_0_[3] ),
        .R(rst_200_out));
  FDRE \sm_nxt_RM_loc_reg[4] 
       (.C(clk200),
        .CE(sm_nxt_RM_loc),
        .D(\sm_nxt_RM_loc[4]_i_1_n_0 ),
        .Q(\sm_nxt_RM_loc_reg_n_0_[4] ),
        .R(rst_200_out));
  FDRE \sm_nxt_RM_loc_reg[5] 
       (.C(clk200),
        .CE(sm_nxt_RM_loc),
        .D(\sm_nxt_RM_loc[5]_i_1_n_0 ),
        .Q(\sm_nxt_RM_loc_reg_n_0_[5] ),
        .R(rst_200_out));
  FDRE \sm_nxt_RM_loc_reg[6] 
       (.C(clk200),
        .CE(sm_nxt_RM_loc),
        .D(\sm_nxt_RM_loc[6]_i_1_n_0 ),
        .Q(\sm_nxt_RM_loc_reg_n_0_[6] ),
        .R(rst_200_out));
  FDRE \sm_nxt_RM_loc_reg[7] 
       (.C(clk200),
        .CE(sm_nxt_RM_loc),
        .D(\sm_nxt_RM_loc[7]_i_1_n_0 ),
        .Q(\sm_nxt_RM_loc_reg_n_0_[7] ),
        .R(rst_200_out));
  FDRE \sm_nxt_RM_loc_reg[8] 
       (.C(clk200),
        .CE(sm_nxt_RM_loc),
        .D(\sm_nxt_RM_loc[8]_i_1_n_0 ),
        .Q(\sm_nxt_RM_loc_reg_n_0_[8] ),
        .R(rst_200_out));
  FDRE \sm_nxt_RM_loc_reg[9] 
       (.C(clk200),
        .CE(sm_nxt_RM_loc),
        .D(\sm_nxt_RM_loc[9]_i_1_n_0 ),
        .Q(\sm_nxt_RM_loc_reg_n_0_[9] ),
        .R(rst_200_out));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    sm_req_i_1
       (.I0(sm_req),
        .I1(sm_req_i_3_n_0),
        .I2(sm_req_i_4_n_0),
        .I3(sm_start),
        .I4(sm_req_i_5_n_0),
        .I5(smc_req),
        .O(sm_req_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    sm_req_i_2
       (.I0(\FSM_onehot_sm_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_sm_state_reg_n_0_[19] ),
        .I2(\FSM_onehot_sm_state_reg_n_0_[13] ),
        .I3(\FSM_onehot_sm_state_reg_n_0_[31] ),
        .I4(\sm_EC[21]_i_3_n_0 ),
        .O(sm_req));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    sm_req_i_3
       (.I0(sm_req_i_6_n_0),
        .I1(\FSM_onehot_sm_state_reg_n_0_[22] ),
        .I2(\FSM_onehot_sm_state_reg_n_0_[14] ),
        .I3(\FSM_onehot_sm_state_reg_n_0_[28] ),
        .I4(\FSM_onehot_sm_state_reg_n_0_[20] ),
        .O(sm_req_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    sm_req_i_4
       (.I0(\FSM_onehot_sm_state_reg_n_0_[6] ),
        .I1(\FSM_onehot_sm_state_reg_n_0_[36] ),
        .I2(\FSM_onehot_sm_state_reg_n_0_[24] ),
        .O(sm_req_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    sm_req_i_5
       (.I0(\FSM_onehot_sm_state_reg_n_0_[10] ),
        .I1(\FSM_onehot_sm_state_reg_n_0_[16] ),
        .I2(\FSM_onehot_sm_state_reg_n_0_[30] ),
        .I3(\FSM_onehot_sm_state_reg_n_0_[18] ),
        .I4(\FSM_onehot_sm_state_reg_n_0_[4] ),
        .I5(\FSM_onehot_sm_state_reg_n_0_[12] ),
        .O(sm_req_i_5_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    sm_req_i_6
       (.I0(\FSM_onehot_sm_state_reg_n_0_[32] ),
        .I1(acc_flg),
        .I2(\FSM_onehot_sm_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_sm_state_reg_n_0_[26] ),
        .I4(\FSM_onehot_sm_state_reg_n_0_[34] ),
        .O(sm_req_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sm_req_reg
       (.C(clk200),
        .CE(1'b1),
        .D(sm_req_i_1_n_0),
        .Q(smc_req),
        .R(rst_200_out));
  LUT5 #(
    .INIT(32'hDC5FDC50)) 
    sm_run_stp_i_1
       (.I0(sm_stop),
        .I1(\FSM_onehot_sm_state[0]_i_2_n_0 ),
        .I2(sm_run_stp_i_2_n_0),
        .I3(\FSM_onehot_sm_state_reg_n_0_[0] ),
        .I4(sm_run_stp_reg_n_0),
        .O(sm_run_stp_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    sm_run_stp_i_2
       (.I0(\FSM_onehot_sm_state_reg_n_0_[30] ),
        .I1(\FSM_onehot_sm_state_reg_n_0_[18] ),
        .I2(\FSM_onehot_sm_state_reg_n_0_[4] ),
        .O(sm_run_stp_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sm_run_stp_reg
       (.C(clk200),
        .CE(1'b1),
        .D(sm_run_stp_i_1_n_0),
        .Q(sm_run_stp_reg_n_0),
        .R(rst_200_out));
  LUT6 #(
    .INIT(64'hCCCCCCCDCCCCCCCC)) 
    sm_start_i_1
       (.I0(sm_req_i_5_n_0),
        .I1(sm_start),
        .I2(sm_req_i_4_n_0),
        .I3(sm_req_i_3_n_0),
        .I4(\FSM_onehot_sm_state_reg_n_0_[0] ),
        .I5(sm_start_reg_n_0),
        .O(sm_start_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sm_start_reg
       (.C(clk200),
        .CE(1'b1),
        .D(sm_start_i_1_n_0),
        .Q(sm_start_reg_n_0),
        .R(rst_200_out));
  LUT4 #(
    .INIT(16'h0040)) 
    sm_stop_i_1
       (.I0(sm_start_reg_n_0),
        .I1(eqOp),
        .I2(sm_run_stp_reg_n_0),
        .I3(rst_200_out),
        .O(sm_stop_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sm_stop_reg
       (.C(clk200),
        .CE(1'b1),
        .D(sm_stop_i_1_n_0),
        .Q(sm_stop),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    spd_chg_d1_reg
       (.C(clk200),
        .CE(1'b1),
        .D(spd_chg),
        .Q(spd_chg_d1),
        .R(rst_200_out));
  FDRE #(
    .INIT(1'b0)) 
    spd_chg_d2_reg
       (.C(clk200),
        .CE(1'b1),
        .D(spd_chg_d1),
        .Q(spd_chg_d2),
        .R(rst_200_out));
  LUT4 #(
    .INIT(16'h4F44)) 
    spd_chg_trig_i_1
       (.I0(sm_start_reg_n_0),
        .I1(spd_chg_trig),
        .I2(spd_chg_d2),
        .I3(spd_chg_d1),
        .O(spd_chg_trig_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    spd_chg_trig_reg
       (.C(clk200),
        .CE(1'b1),
        .D(spd_chg_trig_i_1_n_0),
        .Q(spd_chg_trig),
        .R(rst_200_out));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFE0000)) 
    steady_spd_i_1
       (.I0(\FSM_onehot_sm_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_sm_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_sm_state_reg_n_0_[25] ),
        .I3(\FSM_onehot_sm_state_reg_n_0_[1] ),
        .I4(steady_spd_i_2_n_0),
        .I5(steady_spd_reg_n_0),
        .O(steady_spd_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    steady_spd_i_2
       (.I0(triangle_i_4_n_0),
        .I1(\FSM_onehot_sm_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_sm_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_sm_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_sm_state_reg_n_0_[27] ),
        .O(steady_spd_i_2_n_0));
  FDRE steady_spd_reg
       (.C(clk200),
        .CE(1'b1),
        .D(steady_spd_i_1_n_0),
        .Q(steady_spd_reg_n_0),
        .R(rst_200_out));
  LUT6 #(
    .INIT(64'hFFFFFFF2FFFFFFF8)) 
    \steps[0]_i_1 
       (.I0(sm_run_stp_reg_n_0),
        .I1(sm_stop),
        .I2(ramp_up_trig),
        .I3(fst_stps_trig),
        .I4(slw_stps_trig),
        .I5(\steps_reg_n_0_[0] ),
        .O(\steps[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \steps[31]_i_1 
       (.I0(sm_run_stp_reg_n_0),
        .I1(rst_200_out),
        .I2(ramp_up_trig),
        .I3(fst_stps_trig),
        .I4(slw_stps_trig),
        .O(\steps[31]_i_1_n_0 ));
  FDRE \steps_loc_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\steps_reg_n_0_[0] ),
        .Q(steps_loc[0]),
        .R(reset));
  FDRE \steps_loc_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\steps_reg_n_0_[10] ),
        .Q(steps_loc[10]),
        .R(reset));
  FDRE \steps_loc_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\steps_reg_n_0_[11] ),
        .Q(steps_loc[11]),
        .R(reset));
  FDRE \steps_loc_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\steps_reg_n_0_[12] ),
        .Q(steps_loc[12]),
        .R(reset));
  FDRE \steps_loc_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\steps_reg_n_0_[13] ),
        .Q(steps_loc[13]),
        .R(reset));
  FDRE \steps_loc_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\steps_reg_n_0_[14] ),
        .Q(steps_loc[14]),
        .R(reset));
  FDRE \steps_loc_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\steps_reg_n_0_[15] ),
        .Q(steps_loc[15]),
        .R(reset));
  FDRE \steps_loc_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(L[16]),
        .Q(steps_loc[16]),
        .R(reset));
  FDRE \steps_loc_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(L[17]),
        .Q(steps_loc[17]),
        .R(reset));
  FDRE \steps_loc_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(L[18]),
        .Q(steps_loc[18]),
        .R(reset));
  FDRE \steps_loc_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(L[19]),
        .Q(steps_loc[19]),
        .R(reset));
  FDRE \steps_loc_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\steps_reg_n_0_[1] ),
        .Q(steps_loc[1]),
        .R(reset));
  FDRE \steps_loc_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(L[20]),
        .Q(steps_loc[20]),
        .R(reset));
  FDRE \steps_loc_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(L[21]),
        .Q(steps_loc[21]),
        .R(reset));
  FDRE \steps_loc_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(L[22]),
        .Q(steps_loc[22]),
        .R(reset));
  FDRE \steps_loc_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(L[23]),
        .Q(steps_loc[23]),
        .R(reset));
  FDRE \steps_loc_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(L[24]),
        .Q(steps_loc[24]),
        .R(reset));
  FDRE \steps_loc_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(L[25]),
        .Q(steps_loc[25]),
        .R(reset));
  FDRE \steps_loc_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(L[26]),
        .Q(steps_loc[26]),
        .R(reset));
  FDRE \steps_loc_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(L[27]),
        .Q(steps_loc[27]),
        .R(reset));
  FDRE \steps_loc_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(L[28]),
        .Q(steps_loc[28]),
        .R(reset));
  FDRE \steps_loc_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(L[29]),
        .Q(steps_loc[29]),
        .R(reset));
  FDRE \steps_loc_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\steps_reg_n_0_[2] ),
        .Q(steps_loc[2]),
        .R(reset));
  FDRE \steps_loc_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(L[30]),
        .Q(steps_loc[30]),
        .R(reset));
  FDRE \steps_loc_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(L[31]),
        .Q(steps_loc[31]),
        .R(reset));
  FDRE \steps_loc_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\steps_reg_n_0_[3] ),
        .Q(steps_loc[3]),
        .R(reset));
  FDRE \steps_loc_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\steps_reg_n_0_[4] ),
        .Q(steps_loc[4]),
        .R(reset));
  FDRE \steps_loc_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\steps_reg_n_0_[5] ),
        .Q(steps_loc[5]),
        .R(reset));
  FDRE \steps_loc_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\steps_reg_n_0_[6] ),
        .Q(steps_loc[6]),
        .R(reset));
  FDRE \steps_loc_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\steps_reg_n_0_[7] ),
        .Q(steps_loc[7]),
        .R(reset));
  FDRE \steps_loc_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\steps_reg_n_0_[8] ),
        .Q(steps_loc[8]),
        .R(reset));
  FDRE \steps_loc_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\steps_reg_n_0_[9] ),
        .Q(steps_loc[9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \steps_reg[0] 
       (.C(clk200),
        .CE(1'b1),
        .D(\steps[0]_i_1_n_0 ),
        .Q(\steps_reg_n_0_[0] ),
        .R(rst_200_out));
  FDRE #(
    .INIT(1'b0)) 
    \steps_reg[10] 
       (.C(clk200),
        .CE(sm_stop),
        .D(\steps_reg[12]_i_1_n_6 ),
        .Q(\steps_reg_n_0_[10] ),
        .R(\steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \steps_reg[11] 
       (.C(clk200),
        .CE(sm_stop),
        .D(\steps_reg[12]_i_1_n_5 ),
        .Q(\steps_reg_n_0_[11] ),
        .R(\steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \steps_reg[12] 
       (.C(clk200),
        .CE(sm_stop),
        .D(\steps_reg[12]_i_1_n_4 ),
        .Q(\steps_reg_n_0_[12] ),
        .R(\steps[31]_i_1_n_0 ));
  CARRY4 \steps_reg[12]_i_1 
       (.CI(\steps_reg[8]_i_1_n_0 ),
        .CO({\steps_reg[12]_i_1_n_0 ,\steps_reg[12]_i_1_n_1 ,\steps_reg[12]_i_1_n_2 ,\steps_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\steps_reg[12]_i_1_n_4 ,\steps_reg[12]_i_1_n_5 ,\steps_reg[12]_i_1_n_6 ,\steps_reg[12]_i_1_n_7 }),
        .S({\steps_reg_n_0_[12] ,\steps_reg_n_0_[11] ,\steps_reg_n_0_[10] ,\steps_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \steps_reg[13] 
       (.C(clk200),
        .CE(sm_stop),
        .D(\steps_reg[16]_i_1_n_7 ),
        .Q(\steps_reg_n_0_[13] ),
        .R(\steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \steps_reg[14] 
       (.C(clk200),
        .CE(sm_stop),
        .D(\steps_reg[16]_i_1_n_6 ),
        .Q(\steps_reg_n_0_[14] ),
        .R(\steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \steps_reg[15] 
       (.C(clk200),
        .CE(sm_stop),
        .D(\steps_reg[16]_i_1_n_5 ),
        .Q(\steps_reg_n_0_[15] ),
        .R(\steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \steps_reg[16] 
       (.C(clk200),
        .CE(sm_stop),
        .D(\steps_reg[16]_i_1_n_4 ),
        .Q(L[16]),
        .R(\steps[31]_i_1_n_0 ));
  CARRY4 \steps_reg[16]_i_1 
       (.CI(\steps_reg[12]_i_1_n_0 ),
        .CO({\steps_reg[16]_i_1_n_0 ,\steps_reg[16]_i_1_n_1 ,\steps_reg[16]_i_1_n_2 ,\steps_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\steps_reg[16]_i_1_n_4 ,\steps_reg[16]_i_1_n_5 ,\steps_reg[16]_i_1_n_6 ,\steps_reg[16]_i_1_n_7 }),
        .S({L[16],\steps_reg_n_0_[15] ,\steps_reg_n_0_[14] ,\steps_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \steps_reg[17] 
       (.C(clk200),
        .CE(sm_stop),
        .D(\steps_reg[20]_i_1_n_7 ),
        .Q(L[17]),
        .R(\steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \steps_reg[18] 
       (.C(clk200),
        .CE(sm_stop),
        .D(\steps_reg[20]_i_1_n_6 ),
        .Q(L[18]),
        .R(\steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \steps_reg[19] 
       (.C(clk200),
        .CE(sm_stop),
        .D(\steps_reg[20]_i_1_n_5 ),
        .Q(L[19]),
        .R(\steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \steps_reg[1] 
       (.C(clk200),
        .CE(sm_stop),
        .D(\steps_reg[4]_i_1_n_7 ),
        .Q(\steps_reg_n_0_[1] ),
        .R(\steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \steps_reg[20] 
       (.C(clk200),
        .CE(sm_stop),
        .D(\steps_reg[20]_i_1_n_4 ),
        .Q(L[20]),
        .R(\steps[31]_i_1_n_0 ));
  CARRY4 \steps_reg[20]_i_1 
       (.CI(\steps_reg[16]_i_1_n_0 ),
        .CO({\steps_reg[20]_i_1_n_0 ,\steps_reg[20]_i_1_n_1 ,\steps_reg[20]_i_1_n_2 ,\steps_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\steps_reg[20]_i_1_n_4 ,\steps_reg[20]_i_1_n_5 ,\steps_reg[20]_i_1_n_6 ,\steps_reg[20]_i_1_n_7 }),
        .S(L[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \steps_reg[21] 
       (.C(clk200),
        .CE(sm_stop),
        .D(\steps_reg[24]_i_1_n_7 ),
        .Q(L[21]),
        .R(\steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \steps_reg[22] 
       (.C(clk200),
        .CE(sm_stop),
        .D(\steps_reg[24]_i_1_n_6 ),
        .Q(L[22]),
        .R(\steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \steps_reg[23] 
       (.C(clk200),
        .CE(sm_stop),
        .D(\steps_reg[24]_i_1_n_5 ),
        .Q(L[23]),
        .R(\steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \steps_reg[24] 
       (.C(clk200),
        .CE(sm_stop),
        .D(\steps_reg[24]_i_1_n_4 ),
        .Q(L[24]),
        .R(\steps[31]_i_1_n_0 ));
  CARRY4 \steps_reg[24]_i_1 
       (.CI(\steps_reg[20]_i_1_n_0 ),
        .CO({\steps_reg[24]_i_1_n_0 ,\steps_reg[24]_i_1_n_1 ,\steps_reg[24]_i_1_n_2 ,\steps_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\steps_reg[24]_i_1_n_4 ,\steps_reg[24]_i_1_n_5 ,\steps_reg[24]_i_1_n_6 ,\steps_reg[24]_i_1_n_7 }),
        .S(L[24:21]));
  FDRE #(
    .INIT(1'b0)) 
    \steps_reg[25] 
       (.C(clk200),
        .CE(sm_stop),
        .D(\steps_reg[28]_i_1_n_7 ),
        .Q(L[25]),
        .R(\steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \steps_reg[26] 
       (.C(clk200),
        .CE(sm_stop),
        .D(\steps_reg[28]_i_1_n_6 ),
        .Q(L[26]),
        .R(\steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \steps_reg[27] 
       (.C(clk200),
        .CE(sm_stop),
        .D(\steps_reg[28]_i_1_n_5 ),
        .Q(L[27]),
        .R(\steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \steps_reg[28] 
       (.C(clk200),
        .CE(sm_stop),
        .D(\steps_reg[28]_i_1_n_4 ),
        .Q(L[28]),
        .R(\steps[31]_i_1_n_0 ));
  CARRY4 \steps_reg[28]_i_1 
       (.CI(\steps_reg[24]_i_1_n_0 ),
        .CO({\steps_reg[28]_i_1_n_0 ,\steps_reg[28]_i_1_n_1 ,\steps_reg[28]_i_1_n_2 ,\steps_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\steps_reg[28]_i_1_n_4 ,\steps_reg[28]_i_1_n_5 ,\steps_reg[28]_i_1_n_6 ,\steps_reg[28]_i_1_n_7 }),
        .S(L[28:25]));
  FDRE #(
    .INIT(1'b0)) 
    \steps_reg[29] 
       (.C(clk200),
        .CE(sm_stop),
        .D(\steps_reg[31]_i_2_n_7 ),
        .Q(L[29]),
        .R(\steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \steps_reg[2] 
       (.C(clk200),
        .CE(sm_stop),
        .D(\steps_reg[4]_i_1_n_6 ),
        .Q(\steps_reg_n_0_[2] ),
        .R(\steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \steps_reg[30] 
       (.C(clk200),
        .CE(sm_stop),
        .D(\steps_reg[31]_i_2_n_6 ),
        .Q(L[30]),
        .R(\steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \steps_reg[31] 
       (.C(clk200),
        .CE(sm_stop),
        .D(\steps_reg[31]_i_2_n_5 ),
        .Q(L[31]),
        .R(\steps[31]_i_1_n_0 ));
  CARRY4 \steps_reg[31]_i_2 
       (.CI(\steps_reg[28]_i_1_n_0 ),
        .CO({\NLW_steps_reg[31]_i_2_CO_UNCONNECTED [3:2],\steps_reg[31]_i_2_n_2 ,\steps_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_steps_reg[31]_i_2_O_UNCONNECTED [3],\steps_reg[31]_i_2_n_5 ,\steps_reg[31]_i_2_n_6 ,\steps_reg[31]_i_2_n_7 }),
        .S({1'b0,L[31:29]}));
  FDRE #(
    .INIT(1'b0)) 
    \steps_reg[3] 
       (.C(clk200),
        .CE(sm_stop),
        .D(\steps_reg[4]_i_1_n_5 ),
        .Q(\steps_reg_n_0_[3] ),
        .R(\steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \steps_reg[4] 
       (.C(clk200),
        .CE(sm_stop),
        .D(\steps_reg[4]_i_1_n_4 ),
        .Q(\steps_reg_n_0_[4] ),
        .R(\steps[31]_i_1_n_0 ));
  CARRY4 \steps_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\steps_reg[4]_i_1_n_0 ,\steps_reg[4]_i_1_n_1 ,\steps_reg[4]_i_1_n_2 ,\steps_reg[4]_i_1_n_3 }),
        .CYINIT(\steps_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\steps_reg[4]_i_1_n_4 ,\steps_reg[4]_i_1_n_5 ,\steps_reg[4]_i_1_n_6 ,\steps_reg[4]_i_1_n_7 }),
        .S({\steps_reg_n_0_[4] ,\steps_reg_n_0_[3] ,\steps_reg_n_0_[2] ,\steps_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \steps_reg[5] 
       (.C(clk200),
        .CE(sm_stop),
        .D(\steps_reg[8]_i_1_n_7 ),
        .Q(\steps_reg_n_0_[5] ),
        .R(\steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \steps_reg[6] 
       (.C(clk200),
        .CE(sm_stop),
        .D(\steps_reg[8]_i_1_n_6 ),
        .Q(\steps_reg_n_0_[6] ),
        .R(\steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \steps_reg[7] 
       (.C(clk200),
        .CE(sm_stop),
        .D(\steps_reg[8]_i_1_n_5 ),
        .Q(\steps_reg_n_0_[7] ),
        .R(\steps[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \steps_reg[8] 
       (.C(clk200),
        .CE(sm_stop),
        .D(\steps_reg[8]_i_1_n_4 ),
        .Q(\steps_reg_n_0_[8] ),
        .R(\steps[31]_i_1_n_0 ));
  CARRY4 \steps_reg[8]_i_1 
       (.CI(\steps_reg[4]_i_1_n_0 ),
        .CO({\steps_reg[8]_i_1_n_0 ,\steps_reg[8]_i_1_n_1 ,\steps_reg[8]_i_1_n_2 ,\steps_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\steps_reg[8]_i_1_n_4 ,\steps_reg[8]_i_1_n_5 ,\steps_reg[8]_i_1_n_6 ,\steps_reg[8]_i_1_n_7 }),
        .S({\steps_reg_n_0_[8] ,\steps_reg_n_0_[7] ,\steps_reg_n_0_[6] ,\steps_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \steps_reg[9] 
       (.C(clk200),
        .CE(sm_stop),
        .D(\steps_reg[12]_i_1_n_7 ),
        .Q(\steps_reg_n_0_[9] ),
        .R(\steps[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF4)) 
    \tgt_EC_loc[21]_i_1 
       (.I0(spd_chg_d2),
        .I1(spd_chg_d1),
        .I2(ramp_up_trig),
        .I3(fst_stps_trig),
        .I4(slw_stps_trig),
        .O(tgt_EC_loc0));
  FDSE \tgt_EC_loc_reg[0] 
       (.C(clk200),
        .CE(tgt_EC_loc0),
        .D(tgt_EC[0]),
        .Q(tgt_EC_loc[0]),
        .S(rst_200_out));
  FDSE \tgt_EC_loc_reg[10] 
       (.C(clk200),
        .CE(tgt_EC_loc0),
        .D(tgt_EC[10]),
        .Q(tgt_EC_loc[10]),
        .S(rst_200_out));
  FDSE \tgt_EC_loc_reg[11] 
       (.C(clk200),
        .CE(tgt_EC_loc0),
        .D(tgt_EC[11]),
        .Q(tgt_EC_loc[11]),
        .S(rst_200_out));
  FDSE \tgt_EC_loc_reg[12] 
       (.C(clk200),
        .CE(tgt_EC_loc0),
        .D(tgt_EC[12]),
        .Q(tgt_EC_loc[12]),
        .S(rst_200_out));
  FDSE \tgt_EC_loc_reg[13] 
       (.C(clk200),
        .CE(tgt_EC_loc0),
        .D(tgt_EC[13]),
        .Q(tgt_EC_loc[13]),
        .S(rst_200_out));
  FDSE \tgt_EC_loc_reg[14] 
       (.C(clk200),
        .CE(tgt_EC_loc0),
        .D(tgt_EC[14]),
        .Q(tgt_EC_loc[14]),
        .S(rst_200_out));
  FDSE \tgt_EC_loc_reg[15] 
       (.C(clk200),
        .CE(tgt_EC_loc0),
        .D(tgt_EC[15]),
        .Q(tgt_EC_loc[15]),
        .S(rst_200_out));
  FDSE \tgt_EC_loc_reg[16] 
       (.C(clk200),
        .CE(tgt_EC_loc0),
        .D(tgt_EC[16]),
        .Q(tgt_EC_loc[16]),
        .S(rst_200_out));
  FDSE \tgt_EC_loc_reg[17] 
       (.C(clk200),
        .CE(tgt_EC_loc0),
        .D(tgt_EC[17]),
        .Q(tgt_EC_loc[17]),
        .S(rst_200_out));
  FDSE \tgt_EC_loc_reg[18] 
       (.C(clk200),
        .CE(tgt_EC_loc0),
        .D(tgt_EC[18]),
        .Q(tgt_EC_loc[18]),
        .S(rst_200_out));
  FDSE \tgt_EC_loc_reg[19] 
       (.C(clk200),
        .CE(tgt_EC_loc0),
        .D(tgt_EC[19]),
        .Q(tgt_EC_loc[19]),
        .S(rst_200_out));
  FDSE \tgt_EC_loc_reg[1] 
       (.C(clk200),
        .CE(tgt_EC_loc0),
        .D(tgt_EC[1]),
        .Q(tgt_EC_loc[1]),
        .S(rst_200_out));
  FDSE \tgt_EC_loc_reg[20] 
       (.C(clk200),
        .CE(tgt_EC_loc0),
        .D(tgt_EC[20]),
        .Q(tgt_EC_loc[20]),
        .S(rst_200_out));
  FDSE \tgt_EC_loc_reg[21] 
       (.C(clk200),
        .CE(tgt_EC_loc0),
        .D(tgt_EC[21]),
        .Q(tgt_EC_loc[21]),
        .S(rst_200_out));
  FDSE \tgt_EC_loc_reg[2] 
       (.C(clk200),
        .CE(tgt_EC_loc0),
        .D(tgt_EC[2]),
        .Q(tgt_EC_loc[2]),
        .S(rst_200_out));
  FDSE \tgt_EC_loc_reg[3] 
       (.C(clk200),
        .CE(tgt_EC_loc0),
        .D(tgt_EC[3]),
        .Q(tgt_EC_loc[3]),
        .S(rst_200_out));
  FDSE \tgt_EC_loc_reg[4] 
       (.C(clk200),
        .CE(tgt_EC_loc0),
        .D(tgt_EC[4]),
        .Q(tgt_EC_loc[4]),
        .S(rst_200_out));
  FDSE \tgt_EC_loc_reg[5] 
       (.C(clk200),
        .CE(tgt_EC_loc0),
        .D(tgt_EC[5]),
        .Q(tgt_EC_loc[5]),
        .S(rst_200_out));
  FDSE \tgt_EC_loc_reg[6] 
       (.C(clk200),
        .CE(tgt_EC_loc0),
        .D(tgt_EC[6]),
        .Q(tgt_EC_loc[6]),
        .S(rst_200_out));
  FDSE \tgt_EC_loc_reg[7] 
       (.C(clk200),
        .CE(tgt_EC_loc0),
        .D(tgt_EC[7]),
        .Q(tgt_EC_loc[7]),
        .S(rst_200_out));
  FDSE \tgt_EC_loc_reg[8] 
       (.C(clk200),
        .CE(tgt_EC_loc0),
        .D(tgt_EC[8]),
        .Q(tgt_EC_loc[8]),
        .S(rst_200_out));
  FDSE \tgt_EC_loc_reg[9] 
       (.C(clk200),
        .CE(tgt_EC_loc0),
        .D(tgt_EC[9]),
        .Q(tgt_EC_loc[9]),
        .S(rst_200_out));
  LUT6 #(
    .INIT(64'h545457FF54545400)) 
    triangle_i_1
       (.I0(EC_tgt_acc_trig_reg_n_0),
        .I1(sm_req_i_3_n_0),
        .I2(triangle_i_2_n_0),
        .I3(triangle_i_3_n_0),
        .I4(\FSM_onehot_sm_state_reg_n_0_[0] ),
        .I5(triangle_reg_n_0),
        .O(triangle_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    triangle_i_2
       (.I0(sm_req_i_5_n_0),
        .I1(\sm_ACC[21]_i_6_n_0 ),
        .I2(triangle_i_4_n_0),
        .I3(\FSM_onehot_sm_state_reg_n_0_[6] ),
        .I4(\FSM_onehot_sm_state_reg_n_0_[36] ),
        .I5(\FSM_onehot_sm_state_reg_n_0_[24] ),
        .O(triangle_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h80)) 
    triangle_i_3
       (.I0(sm_run_stp_reg_n_0),
        .I1(sm_stop),
        .I2(mid_trj_trig),
        .O(triangle_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    triangle_i_4
       (.I0(\FSM_onehot_sm_state_reg_n_0_[31] ),
        .I1(\FSM_onehot_sm_state_reg_n_0_[13] ),
        .I2(\FSM_onehot_sm_state_reg_n_0_[9] ),
        .I3(\FSM_onehot_sm_state_reg_n_0_[11] ),
        .I4(\FSM_onehot_sm_state_reg_n_0_[25] ),
        .O(triangle_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    triangle_reg
       (.C(clk200),
        .CE(1'b1),
        .D(triangle_i_1_n_0),
        .Q(triangle_reg_n_0),
        .R(rst_200_out));
endmodule

(* CHECK_LICENSE_TYPE = "system_SM_ctrl_1_3,SM_ctrl,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "SM_ctrl,Vivado 2019.1.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aresetn,
    clk200,
    tgt_ACC,
    tgt_EC,
    dir,
    ena_load,
    res,
    init_EC,
    cnt_o,
    cnt_i,
    ramp_up,
    ramp_dwn,
    spd_chg,
    slw_stps,
    fst_stps,
    running,
    irq_mask,
    irq_in,
    irq_clr,
    vld_in,
    vld_out,
    port_ref,
    port_clk,
    port_ena,
    port_dir,
    port_m2P,
    port_m1P,
    smc_ACC,
    smc_EC,
    smc_RM,
    smc_req,
    smc_Next_EC,
    smc_Next_RM,
    smc_ack,
    dbg_ref,
    dbg_clk,
    dbg_ena,
    dbg_dir,
    dbg_m2P,
    dbg_m1P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk200 CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk200, ASSOCIATED_RESET aresetn, FREQ_HZ 2e+08, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0" *) input clk200;
  (* x_interface_info = "mindway:user:SM_reg_if:1.0 SM_reg_if tgt_ACC" *) input [23:0]tgt_ACC;
  (* x_interface_info = "mindway:user:SM_reg_if:1.0 SM_reg_if tgt_EC" *) input [21:0]tgt_EC;
  (* x_interface_info = "mindway:user:SM_reg_if:1.0 SM_reg_if dir" *) input dir;
  (* x_interface_info = "mindway:user:SM_reg_if:1.0 SM_reg_if load" *) input [1:0]ena_load;
  (* x_interface_info = "mindway:user:SM_reg_if:1.0 SM_reg_if res" *) input [1:0]res;
  (* x_interface_info = "mindway:user:SM_reg_if:1.0 SM_reg_if init_EC" *) input [21:0]init_EC;
  (* x_interface_info = "mindway:user:SM_reg_if:1.0 SM_reg_if cnt_o" *) input [31:0]cnt_o;
  (* x_interface_info = "mindway:user:SM_reg_if:1.0 SM_reg_if cnt_i" *) output [31:0]cnt_i;
  (* x_interface_info = "mindway:user:SM_reg_if:1.0 SM_reg_if ramp_up" *) input ramp_up;
  (* x_interface_info = "mindway:user:SM_reg_if:1.0 SM_reg_if ramp_dwn" *) input ramp_dwn;
  (* x_interface_info = "mindway:user:SM_reg_if:1.0 SM_reg_if spd_chg" *) input spd_chg;
  (* x_interface_info = "mindway:user:SM_reg_if:1.0 SM_reg_if slw_stps" *) input slw_stps;
  (* x_interface_info = "mindway:user:SM_reg_if:1.0 SM_reg_if fst_stps" *) input fst_stps;
  (* x_interface_info = "mindway:user:SM_reg_if:1.0 SM_reg_if running" *) output [1:0]running;
  (* x_interface_info = "mindway:user:SM_reg_if:1.0 SM_reg_if irq_mask" *) input irq_mask;
  (* x_interface_info = "mindway:user:SM_reg_if:1.0 SM_reg_if irq_in" *) output irq_in;
  (* x_interface_info = "mindway:user:SM_reg_if:1.0 SM_reg_if irq_clr" *) input irq_clr;
  (* x_interface_info = "mindway:user:SM_reg_if:1.0 SM_reg_if vld_in" *) output vld_in;
  (* x_interface_info = "mindway:user:SM_reg_if:1.0 SM_reg_if vld_out" *) input vld_out;
  (* x_interface_info = "xilinx.com:user:SM_IOs:1.0 SM_IO ref" *) output port_ref;
  (* x_interface_info = "xilinx.com:user:SM_IOs:1.0 SM_IO clk" *) output port_clk;
  (* x_interface_info = "xilinx.com:user:SM_IOs:1.0 SM_IO ena" *) output port_ena;
  (* x_interface_info = "xilinx.com:user:SM_IOs:1.0 SM_IO dir" *) output port_dir;
  (* x_interface_info = "xilinx.com:user:SM_IOs:1.0 SM_IO m2p" *) output port_m2P;
  (* x_interface_info = "xilinx.com:user:SM_IOs:1.0 SM_IO m1p" *) output port_m1P;
  (* x_interface_info = "mindway:user:SM_alg_if:1.0 smc ACC" *) output [21:0]smc_ACC;
  (* x_interface_info = "mindway:user:SM_alg_if:1.0 smc EC" *) output [21:0]smc_EC;
  (* x_interface_info = "mindway:user:SM_alg_if:1.0 smc RM" *) output [15:0]smc_RM;
  (* x_interface_info = "mindway:user:SM_alg_if:1.0 smc REQ" *) output smc_req;
  (* x_interface_info = "mindway:user:SM_alg_if:1.0 smc Next_EC" *) input [21:0]smc_Next_EC;
  (* x_interface_info = "mindway:user:SM_alg_if:1.0 smc Next_RM" *) input [15:0]smc_Next_RM;
  (* x_interface_info = "mindway:user:SM_alg_if:1.0 smc ACK" *) input smc_ack;
  (* x_interface_info = "xilinx.com:user:SM_IOs:1.0 dbg ref" *) output dbg_ref;
  (* x_interface_info = "xilinx.com:user:SM_IOs:1.0 dbg clk" *) output dbg_clk;
  (* x_interface_info = "xilinx.com:user:SM_IOs:1.0 dbg ena" *) output dbg_ena;
  (* x_interface_info = "xilinx.com:user:SM_IOs:1.0 dbg dir" *) output dbg_dir;
  (* x_interface_info = "xilinx.com:user:SM_IOs:1.0 dbg m2p" *) output dbg_m2P;
  (* x_interface_info = "xilinx.com:user:SM_IOs:1.0 dbg m1p" *) output dbg_m1P;

  wire aclk;
  wire aresetn;
  wire clk200;
  wire [31:0]cnt_i;
  wire [31:0]cnt_o;
  wire dbg_clk;
  wire dbg_dir;
  wire dbg_ena;
  wire dbg_m1P;
  wire dbg_m2P;
  wire dbg_ref;
  wire dir;
  wire [1:0]ena_load;
  wire fst_stps;
  wire [21:0]init_EC;
  wire irq_clr;
  wire irq_in;
  wire irq_mask;
  wire port_clk;
  wire port_dir;
  wire port_ena;
  wire port_m1P;
  wire port_m2P;
  wire port_ref;
  wire ramp_dwn;
  wire ramp_up;
  wire [1:0]res;
  wire [1:0]running;
  wire slw_stps;
  wire [21:0]smc_ACC;
  wire [21:0]smc_EC;
  wire [21:0]smc_Next_EC;
  wire [15:0]smc_Next_RM;
  wire [15:0]smc_RM;
  wire smc_ack;
  wire smc_req;
  wire spd_chg;
  wire [23:0]tgt_ACC;
  wire [21:0]tgt_EC;
  wire vld_in;
  wire vld_out;

  (* PRESENT = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SM_ctrl U0
       (.aclk(aclk),
        .aresetn(aresetn),
        .clk200(clk200),
        .cnt_i(cnt_i),
        .cnt_o(cnt_o),
        .dbg_clk(dbg_clk),
        .dbg_dir(dbg_dir),
        .dbg_ena(dbg_ena),
        .dbg_m1P(dbg_m1P),
        .dbg_m2P(dbg_m2P),
        .dbg_ref(dbg_ref),
        .dir(dir),
        .ena_load(ena_load),
        .fst_stps(fst_stps),
        .init_EC(init_EC),
        .irq_clr(irq_clr),
        .irq_in(irq_in),
        .irq_mask(irq_mask),
        .port_clk(port_clk),
        .port_dir(port_dir),
        .port_ena(port_ena),
        .port_m1P(port_m1P),
        .port_m2P(port_m2P),
        .port_ref(port_ref),
        .ramp_dwn(ramp_dwn),
        .ramp_up(ramp_up),
        .res(res),
        .running(running),
        .slw_stps(slw_stps),
        .smc_ACC(smc_ACC),
        .smc_EC(smc_EC),
        .smc_Next_EC(smc_Next_EC),
        .smc_Next_RM(smc_Next_RM),
        .smc_RM(smc_RM),
        .smc_ack(smc_ack),
        .smc_req(smc_req),
        .spd_chg(spd_chg),
        .tgt_ACC(tgt_ACC),
        .tgt_EC(tgt_EC),
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
