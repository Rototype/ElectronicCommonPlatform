-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
-- Date        : Wed Jul 29 04:44:46 2020
-- Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ S7_SM_ctrl_0_0_sim_netlist.vhdl
-- Design      : S7_SM_ctrl_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s100fgga676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SM_ctrl_real is
  port (
    rst_200_out : out STD_LOGIC;
    running : out STD_LOGIC_VECTOR ( 1 downto 0 );
    port_ref_loc : out STD_LOGIC;
    port_clk_loc : out STD_LOGIC;
    port_ena_loc : out STD_LOGIC;
    port_dir_loc : out STD_LOGIC;
    port_m2P_loc : out STD_LOGIC;
    port_m1P_loc : out STD_LOGIC;
    irq_in : out STD_LOGIC;
    smc_req : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 21 downto 0 );
    cnt_i : out STD_LOGIC_VECTOR ( 31 downto 0 );
    smc_ACC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_RM : out STD_LOGIC_VECTOR ( 15 downto 0 );
    aresetn : in STD_LOGIC;
    clk200 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    slw_stps : in STD_LOGIC;
    ramp_up : in STD_LOGIC;
    fst_stps : in STD_LOGIC;
    spd_chg : in STD_LOGIC;
    ramp_dwn : in STD_LOGIC;
    irq_clr : in STD_LOGIC;
    irq_mask : in STD_LOGIC;
    dir : in STD_LOGIC;
    init_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    tgt_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    cnt_o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ena_load : in STD_LOGIC_VECTOR ( 1 downto 0 );
    res : in STD_LOGIC_VECTOR ( 1 downto 0 );
    tgt_ACC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_ack : in STD_LOGIC;
    smc_Next_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_Next_RM : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SM_ctrl_real;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SM_ctrl_real is
  signal ACC_zero_flg_i_1_n_0 : STD_LOGIC;
  signal ACC_zero_flg_reg_n_0 : STD_LOGIC;
  signal EC_cnt : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \EC_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \EC_cnt[21]_i_1_n_0\ : STD_LOGIC;
  signal \EC_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal EC_tgt_acc_trig0 : STD_LOGIC;
  signal EC_tgt_acc_trig05_in : STD_LOGIC;
  signal EC_tgt_acc_trig08_in : STD_LOGIC;
  signal \EC_tgt_acc_trig0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \EC_tgt_acc_trig0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \EC_tgt_acc_trig0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \EC_tgt_acc_trig0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \EC_tgt_acc_trig0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \EC_tgt_acc_trig0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \EC_tgt_acc_trig0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \EC_tgt_acc_trig0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \EC_tgt_acc_trig0_carry__0_n_0\ : STD_LOGIC;
  signal \EC_tgt_acc_trig0_carry__0_n_1\ : STD_LOGIC;
  signal \EC_tgt_acc_trig0_carry__0_n_2\ : STD_LOGIC;
  signal \EC_tgt_acc_trig0_carry__0_n_3\ : STD_LOGIC;
  signal \EC_tgt_acc_trig0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \EC_tgt_acc_trig0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \EC_tgt_acc_trig0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \EC_tgt_acc_trig0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \EC_tgt_acc_trig0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \EC_tgt_acc_trig0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \EC_tgt_acc_trig0_carry__1_n_2\ : STD_LOGIC;
  signal \EC_tgt_acc_trig0_carry__1_n_3\ : STD_LOGIC;
  signal EC_tgt_acc_trig0_carry_i_1_n_0 : STD_LOGIC;
  signal EC_tgt_acc_trig0_carry_i_2_n_0 : STD_LOGIC;
  signal EC_tgt_acc_trig0_carry_i_3_n_0 : STD_LOGIC;
  signal EC_tgt_acc_trig0_carry_i_4_n_0 : STD_LOGIC;
  signal EC_tgt_acc_trig0_carry_i_5_n_0 : STD_LOGIC;
  signal EC_tgt_acc_trig0_carry_i_6_n_0 : STD_LOGIC;
  signal EC_tgt_acc_trig0_carry_i_7_n_0 : STD_LOGIC;
  signal EC_tgt_acc_trig0_carry_i_8_n_0 : STD_LOGIC;
  signal EC_tgt_acc_trig0_carry_n_0 : STD_LOGIC;
  signal EC_tgt_acc_trig0_carry_n_1 : STD_LOGIC;
  signal EC_tgt_acc_trig0_carry_n_2 : STD_LOGIC;
  signal EC_tgt_acc_trig0_carry_n_3 : STD_LOGIC;
  signal \EC_tgt_acc_trig0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \EC_tgt_acc_trig0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \EC_tgt_acc_trig0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \EC_tgt_acc_trig0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \EC_tgt_acc_trig0_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \EC_tgt_acc_trig0_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \EC_tgt_acc_trig0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \EC_tgt_acc_trig0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \EC_tgt_acc_trig0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \EC_tgt_acc_trig0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \EC_tgt_acc_trig0_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \EC_tgt_acc_trig0_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \EC_tgt_acc_trig0_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \EC_tgt_acc_trig0_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \EC_tgt_acc_trig0_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \EC_tgt_acc_trig0_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \EC_tgt_acc_trig0_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal EC_tgt_acc_trig_i_1_n_0 : STD_LOGIC;
  signal EC_tgt_acc_trig_i_2_n_0 : STD_LOGIC;
  signal EC_tgt_acc_trig_reg_n_0 : STD_LOGIC;
  signal EC_tgt_dec_trig_i_1_n_0 : STD_LOGIC;
  signal EC_tgt_dec_trig_reg_n_0 : STD_LOGIC;
  signal \FSM_onehot_sm_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sm_state[10]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sm_state[11]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sm_state[11]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sm_state[12]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sm_state[13]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sm_state[14]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sm_state[15]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sm_state[16]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sm_state[17]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sm_state[18]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sm_state[19]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sm_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sm_state[20]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sm_state[21]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sm_state[22]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sm_state[23]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sm_state[24]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sm_state[25]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sm_state[25]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sm_state[26]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sm_state[27]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sm_state[28]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sm_state[29]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sm_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sm_state[30]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sm_state[31]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sm_state[32]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sm_state[33]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sm_state[34]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sm_state[35]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sm_state[36]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sm_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sm_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sm_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sm_state[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sm_state[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sm_state[8]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sm_state[9]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_sm_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_sm_state_reg_n_0_[10]\ : STD_LOGIC;
  signal \FSM_onehot_sm_state_reg_n_0_[11]\ : STD_LOGIC;
  signal \FSM_onehot_sm_state_reg_n_0_[12]\ : STD_LOGIC;
  signal \FSM_onehot_sm_state_reg_n_0_[13]\ : STD_LOGIC;
  signal \FSM_onehot_sm_state_reg_n_0_[14]\ : STD_LOGIC;
  signal \FSM_onehot_sm_state_reg_n_0_[15]\ : STD_LOGIC;
  signal \FSM_onehot_sm_state_reg_n_0_[16]\ : STD_LOGIC;
  signal \FSM_onehot_sm_state_reg_n_0_[17]\ : STD_LOGIC;
  signal \FSM_onehot_sm_state_reg_n_0_[18]\ : STD_LOGIC;
  signal \FSM_onehot_sm_state_reg_n_0_[19]\ : STD_LOGIC;
  signal \FSM_onehot_sm_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_sm_state_reg_n_0_[20]\ : STD_LOGIC;
  signal \FSM_onehot_sm_state_reg_n_0_[21]\ : STD_LOGIC;
  signal \FSM_onehot_sm_state_reg_n_0_[22]\ : STD_LOGIC;
  signal \FSM_onehot_sm_state_reg_n_0_[23]\ : STD_LOGIC;
  signal \FSM_onehot_sm_state_reg_n_0_[24]\ : STD_LOGIC;
  signal \FSM_onehot_sm_state_reg_n_0_[25]\ : STD_LOGIC;
  signal \FSM_onehot_sm_state_reg_n_0_[26]\ : STD_LOGIC;
  signal \FSM_onehot_sm_state_reg_n_0_[27]\ : STD_LOGIC;
  signal \FSM_onehot_sm_state_reg_n_0_[28]\ : STD_LOGIC;
  signal \FSM_onehot_sm_state_reg_n_0_[29]\ : STD_LOGIC;
  signal \FSM_onehot_sm_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_sm_state_reg_n_0_[30]\ : STD_LOGIC;
  signal \FSM_onehot_sm_state_reg_n_0_[31]\ : STD_LOGIC;
  signal \FSM_onehot_sm_state_reg_n_0_[32]\ : STD_LOGIC;
  signal \FSM_onehot_sm_state_reg_n_0_[33]\ : STD_LOGIC;
  signal \FSM_onehot_sm_state_reg_n_0_[34]\ : STD_LOGIC;
  signal \FSM_onehot_sm_state_reg_n_0_[35]\ : STD_LOGIC;
  signal \FSM_onehot_sm_state_reg_n_0_[36]\ : STD_LOGIC;
  signal \FSM_onehot_sm_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_sm_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_sm_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_sm_state_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_sm_state_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_sm_state_reg_n_0_[9]\ : STD_LOGIC;
  signal L : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal R : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal R1_in : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal R4_in : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal acc_flg : STD_LOGIC;
  signal acc_flg_reg_n_0 : STD_LOGIC;
  signal aresetn_loc : STD_LOGIC;
  signal aresetn_loc_200 : STD_LOGIC;
  signal \clock_loc__0\ : STD_LOGIC;
  signal clock_loc_i_1_n_0 : STD_LOGIC;
  signal clock_loc_i_2_n_0 : STD_LOGIC;
  signal \cnt_o_loc_reg_n_0_[0]\ : STD_LOGIC;
  signal dec_steps : STD_LOGIC;
  signal \dec_steps[31]_i_1_n_0\ : STD_LOGIC;
  signal \dec_steps_reg_n_0_[0]\ : STD_LOGIC;
  signal \dec_steps_reg_n_0_[10]\ : STD_LOGIC;
  signal \dec_steps_reg_n_0_[11]\ : STD_LOGIC;
  signal \dec_steps_reg_n_0_[12]\ : STD_LOGIC;
  signal \dec_steps_reg_n_0_[13]\ : STD_LOGIC;
  signal \dec_steps_reg_n_0_[14]\ : STD_LOGIC;
  signal \dec_steps_reg_n_0_[15]\ : STD_LOGIC;
  signal \dec_steps_reg_n_0_[1]\ : STD_LOGIC;
  signal \dec_steps_reg_n_0_[2]\ : STD_LOGIC;
  signal \dec_steps_reg_n_0_[3]\ : STD_LOGIC;
  signal \dec_steps_reg_n_0_[4]\ : STD_LOGIC;
  signal \dec_steps_reg_n_0_[5]\ : STD_LOGIC;
  signal \dec_steps_reg_n_0_[6]\ : STD_LOGIC;
  signal \dec_steps_reg_n_0_[7]\ : STD_LOGIC;
  signal \dec_steps_reg_n_0_[8]\ : STD_LOGIC;
  signal \dec_steps_reg_n_0_[9]\ : STD_LOGIC;
  signal dec_trj_trig : STD_LOGIC;
  signal dec_trj_trig_i_1_n_0 : STD_LOGIC;
  signal dec_trj_trig_lsb : STD_LOGIC;
  signal dec_trj_trig_msb : STD_LOGIC;
  signal dir_loc : STD_LOGIC;
  signal \ena_load_loc_reg_n_0_[0]\ : STD_LOGIC;
  signal \ena_load_loc_reg_n_0_[1]\ : STD_LOGIC;
  signal \end_trj_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \end_trj_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \end_trj_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \end_trj_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \end_trj_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \end_trj_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \end_trj_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \end_trj_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \end_trj_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \end_trj_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \end_trj_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \end_trj_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \end_trj_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \end_trj_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \end_trj_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \end_trj_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \end_trj_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal end_trj_trig : STD_LOGIC;
  signal end_trj_trig_d1 : STD_LOGIC;
  signal end_trj_trig_i_1_n_0 : STD_LOGIC;
  signal end_trj_trig_lsb : STD_LOGIC;
  signal end_trj_trig_msb : STD_LOGIC;
  signal eqOp : STD_LOGIC;
  signal eqOp0_out : STD_LOGIC;
  signal eqOp2_out : STD_LOGIC;
  signal eqOp3_out : STD_LOGIC;
  signal eqOp5_out : STD_LOGIC;
  signal eqOp6_out : STD_LOGIC;
  signal \eqOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \eqOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \eqOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \eqOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \eqOp_carry__0_n_1\ : STD_LOGIC;
  signal \eqOp_carry__0_n_2\ : STD_LOGIC;
  signal \eqOp_carry__0_n_3\ : STD_LOGIC;
  signal eqOp_carry_i_1_n_0 : STD_LOGIC;
  signal eqOp_carry_i_2_n_0 : STD_LOGIC;
  signal eqOp_carry_i_3_n_0 : STD_LOGIC;
  signal eqOp_carry_i_4_n_0 : STD_LOGIC;
  signal eqOp_carry_n_0 : STD_LOGIC;
  signal eqOp_carry_n_1 : STD_LOGIC;
  signal eqOp_carry_n_2 : STD_LOGIC;
  signal eqOp_carry_n_3 : STD_LOGIC;
  signal \eqOp_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \eqOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \eqOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \eqOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \eqOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \eqOp_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \eqOp_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \eqOp_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \eqOp_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \eqOp_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \eqOp_inferred__2/i__carry__0_n_2\ : STD_LOGIC;
  signal \eqOp_inferred__2/i__carry__0_n_3\ : STD_LOGIC;
  signal \eqOp_inferred__2/i__carry_n_0\ : STD_LOGIC;
  signal \eqOp_inferred__2/i__carry_n_1\ : STD_LOGIC;
  signal \eqOp_inferred__2/i__carry_n_2\ : STD_LOGIC;
  signal \eqOp_inferred__2/i__carry_n_3\ : STD_LOGIC;
  signal \eqOp_inferred__3/i__carry__0_n_3\ : STD_LOGIC;
  signal \eqOp_inferred__3/i__carry_n_0\ : STD_LOGIC;
  signal \eqOp_inferred__3/i__carry_n_1\ : STD_LOGIC;
  signal \eqOp_inferred__3/i__carry_n_2\ : STD_LOGIC;
  signal \eqOp_inferred__3/i__carry_n_3\ : STD_LOGIC;
  signal \eqOp_inferred__4/i__carry__0_n_3\ : STD_LOGIC;
  signal \eqOp_inferred__4/i__carry_n_0\ : STD_LOGIC;
  signal \eqOp_inferred__4/i__carry_n_1\ : STD_LOGIC;
  signal \eqOp_inferred__4/i__carry_n_2\ : STD_LOGIC;
  signal \eqOp_inferred__4/i__carry_n_3\ : STD_LOGIC;
  signal \eqOp_inferred__5/i__carry__0_n_3\ : STD_LOGIC;
  signal \eqOp_inferred__5/i__carry_n_0\ : STD_LOGIC;
  signal \eqOp_inferred__5/i__carry_n_1\ : STD_LOGIC;
  signal \eqOp_inferred__5/i__carry_n_2\ : STD_LOGIC;
  signal \eqOp_inferred__5/i__carry_n_3\ : STD_LOGIC;
  signal fst_stps_d1 : STD_LOGIC;
  signal fst_stps_d2 : STD_LOGIC;
  signal fst_stps_loc : STD_LOGIC;
  signal fst_stps_trig : STD_LOGIC;
  signal fst_stps_trig0 : STD_LOGIC;
  signal gtOp : STD_LOGIC;
  signal \gtOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_n_0\ : STD_LOGIC;
  signal \gtOp_carry__0_n_1\ : STD_LOGIC;
  signal \gtOp_carry__0_n_2\ : STD_LOGIC;
  signal \gtOp_carry__0_n_3\ : STD_LOGIC;
  signal \gtOp_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \gtOp_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \gtOp_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \gtOp_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \gtOp_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \gtOp_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \gtOp_carry__1_n_2\ : STD_LOGIC;
  signal \gtOp_carry__1_n_3\ : STD_LOGIC;
  signal gtOp_carry_i_1_n_0 : STD_LOGIC;
  signal gtOp_carry_i_2_n_0 : STD_LOGIC;
  signal gtOp_carry_i_3_n_0 : STD_LOGIC;
  signal gtOp_carry_i_4_n_0 : STD_LOGIC;
  signal gtOp_carry_i_5_n_0 : STD_LOGIC;
  signal gtOp_carry_i_6_n_0 : STD_LOGIC;
  signal gtOp_carry_i_7_n_0 : STD_LOGIC;
  signal gtOp_carry_i_8_n_0 : STD_LOGIC;
  signal gtOp_carry_n_0 : STD_LOGIC;
  signal gtOp_carry_n_1 : STD_LOGIC;
  signal gtOp_carry_n_2 : STD_LOGIC;
  signal gtOp_carry_n_3 : STD_LOGIC;
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__8_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__9_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__8_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__9_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__7_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__8_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__9_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__7_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__8_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__9_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__7_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__8_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__9_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__7_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__8_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal init_EC_loc : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal init_EC_trig : STD_LOGIC;
  signal init_EC_trig_reg_n_0 : STD_LOGIC;
  signal irq_clr_loc : STD_LOGIC;
  signal \^irq_in\ : STD_LOGIC;
  signal irq_in_i_1_n_0 : STD_LOGIC;
  signal irq_loc_d1 : STD_LOGIC;
  signal irq_loc_d2 : STD_LOGIC;
  signal irq_loc_i_1_n_0 : STD_LOGIC;
  signal irq_loc_i_2_n_0 : STD_LOGIC;
  signal irq_loc_reg_n_0 : STD_LOGIC;
  signal irq_mask_loc : STD_LOGIC;
  signal \mid_trj_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \mid_trj_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \mid_trj_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \mid_trj_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \mid_trj_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \mid_trj_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \mid_trj_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \mid_trj_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \mid_trj_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \mid_trj_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \mid_trj_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \mid_trj_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \mid_trj_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \mid_trj_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \mid_trj_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \mid_trj_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal mid_trj_trig : STD_LOGIC;
  signal mid_trj_trig_i_1_n_0 : STD_LOGIC;
  signal mid_trj_trig_lsb : STD_LOGIC;
  signal mid_trj_trig_msb : STD_LOGIC;
  signal minusOp : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \minusOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_carry__0_n_3\ : STD_LOGIC;
  signal \minusOp_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_n_1\ : STD_LOGIC;
  signal \minusOp_carry__1_n_2\ : STD_LOGIC;
  signal \minusOp_carry__1_n_3\ : STD_LOGIC;
  signal \minusOp_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_n_1\ : STD_LOGIC;
  signal \minusOp_carry__2_n_2\ : STD_LOGIC;
  signal \minusOp_carry__2_n_3\ : STD_LOGIC;
  signal \minusOp_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__3_n_1\ : STD_LOGIC;
  signal \minusOp_carry__3_n_2\ : STD_LOGIC;
  signal \minusOp_carry__3_n_3\ : STD_LOGIC;
  signal \minusOp_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__4_n_1\ : STD_LOGIC;
  signal \minusOp_carry__4_n_2\ : STD_LOGIC;
  signal \minusOp_carry__4_n_3\ : STD_LOGIC;
  signal \minusOp_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__5_n_0\ : STD_LOGIC;
  signal \minusOp_carry__5_n_1\ : STD_LOGIC;
  signal \minusOp_carry__5_n_2\ : STD_LOGIC;
  signal \minusOp_carry__5_n_3\ : STD_LOGIC;
  signal \minusOp_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__6_n_1\ : STD_LOGIC;
  signal \minusOp_carry__6_n_2\ : STD_LOGIC;
  signal \minusOp_carry__6_n_3\ : STD_LOGIC;
  signal minusOp_carry_i_1_n_0 : STD_LOGIC;
  signal minusOp_carry_i_2_n_0 : STD_LOGIC;
  signal minusOp_carry_i_3_n_0 : STD_LOGIC;
  signal minusOp_carry_n_0 : STD_LOGIC;
  signal minusOp_carry_n_1 : STD_LOGIC;
  signal minusOp_carry_n_2 : STD_LOGIC;
  signal minusOp_carry_n_3 : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__3_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__3_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__3_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__3_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__3_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__3_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__3_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__3_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__4_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__4_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__4_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__4_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__4_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__4_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__4_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__4_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__5_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__5_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__5_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__5_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__5_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__5_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__5_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__5_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__6_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__6_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__6_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__6_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__6_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__0_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__0_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__0_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__0_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__0_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__1_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__1_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__1_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__1_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__1_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__1_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__1_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__1_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__2_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__2_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__2_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__2_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__2_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__2_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__2_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__2_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__3_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__3_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__3_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__3_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__3_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__3_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__3_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__3_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__4_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__4_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__4_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__4_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__4_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__4_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__4_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__4_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__5_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__5_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__5_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__5_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__5_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__5_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__5_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__5_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__6_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__6_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__6_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__6_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__6_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__6_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__6_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry_n_7\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 21 downto 1 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_carry__2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_n_1\ : STD_LOGIC;
  signal \plusOp_carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_carry__2_n_3\ : STD_LOGIC;
  signal \plusOp_carry__3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__3_n_1\ : STD_LOGIC;
  signal \plusOp_carry__3_n_2\ : STD_LOGIC;
  signal \plusOp_carry__3_n_3\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__0_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__0_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__0_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__0_n_7\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__1_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__1_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__1_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__1_n_7\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__2_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__2_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__2_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__2_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__2_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__2_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__2_n_7\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__3_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__3_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__3_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__3_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__3_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__3_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__3_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__3_n_7\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__4_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__4_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__4_n_7\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry_n_7\ : STD_LOGIC;
  signal \pulse_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \pulse_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \pulse_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \pulse_cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \pulse_cnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \pulse_cnt[0]_i_7_n_0\ : STD_LOGIC;
  signal \pulse_cnt[0]_i_8_n_0\ : STD_LOGIC;
  signal pulse_cnt_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pulse_cnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \pulse_cnt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \pulse_cnt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \pulse_cnt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \pulse_cnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \pulse_cnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \pulse_cnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \pulse_cnt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \pulse_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \pulse_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \pulse_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \pulse_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \pulse_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \pulse_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \pulse_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \pulse_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \pulse_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \pulse_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \pulse_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \pulse_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \pulse_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \pulse_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \pulse_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \pulse_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \pulse_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \pulse_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \pulse_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \pulse_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \pulse_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \pulse_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \pulse_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal ramp_dwn_d1 : STD_LOGIC;
  signal ramp_dwn_d2 : STD_LOGIC;
  signal ramp_dwn_loc : STD_LOGIC;
  signal ramp_dwn_trig : STD_LOGIC;
  signal ramp_dwn_trig_i_1_n_0 : STD_LOGIC;
  signal ramp_up_d1 : STD_LOGIC;
  signal ramp_up_d2 : STD_LOGIC;
  signal ramp_up_loc : STD_LOGIC;
  signal ramp_up_trig : STD_LOGIC;
  signal ramp_up_trig0 : STD_LOGIC;
  signal \res_loc_reg_n_0_[0]\ : STD_LOGIC;
  signal \res_loc_reg_n_0_[1]\ : STD_LOGIC;
  signal reset : STD_LOGIC;
  signal reset_200_i_1_n_0 : STD_LOGIC;
  signal reset_i_1_n_0 : STD_LOGIC;
  signal \^rst_200_out\ : STD_LOGIC;
  signal \running_loc_reg_n_0_[0]\ : STD_LOGIC;
  signal \running_loc_reg_n_0_[1]\ : STD_LOGIC;
  signal slw_stps_d1 : STD_LOGIC;
  signal slw_stps_d2 : STD_LOGIC;
  signal slw_stps_loc : STD_LOGIC;
  signal slw_stps_trig : STD_LOGIC;
  signal slw_stps_trig0 : STD_LOGIC;
  signal \sm_ACC[0]_i_1_n_0\ : STD_LOGIC;
  signal \sm_ACC[10]_i_1_n_0\ : STD_LOGIC;
  signal \sm_ACC[11]_i_1_n_0\ : STD_LOGIC;
  signal \sm_ACC[12]_i_1_n_0\ : STD_LOGIC;
  signal \sm_ACC[13]_i_1_n_0\ : STD_LOGIC;
  signal \sm_ACC[14]_i_1_n_0\ : STD_LOGIC;
  signal \sm_ACC[15]_i_1_n_0\ : STD_LOGIC;
  signal \sm_ACC[16]_i_1_n_0\ : STD_LOGIC;
  signal \sm_ACC[17]_i_1_n_0\ : STD_LOGIC;
  signal \sm_ACC[18]_i_1_n_0\ : STD_LOGIC;
  signal \sm_ACC[19]_i_1_n_0\ : STD_LOGIC;
  signal \sm_ACC[1]_i_1_n_0\ : STD_LOGIC;
  signal \sm_ACC[20]_i_1_n_0\ : STD_LOGIC;
  signal \sm_ACC[21]_i_1_n_0\ : STD_LOGIC;
  signal \sm_ACC[21]_i_2_n_0\ : STD_LOGIC;
  signal \sm_ACC[21]_i_4_n_0\ : STD_LOGIC;
  signal \sm_ACC[21]_i_5_n_0\ : STD_LOGIC;
  signal \sm_ACC[21]_i_6_n_0\ : STD_LOGIC;
  signal \sm_ACC[21]_i_7_n_0\ : STD_LOGIC;
  signal \sm_ACC[21]_i_8_n_0\ : STD_LOGIC;
  signal \sm_ACC[2]_i_1_n_0\ : STD_LOGIC;
  signal \sm_ACC[3]_i_1_n_0\ : STD_LOGIC;
  signal \sm_ACC[4]_i_1_n_0\ : STD_LOGIC;
  signal \sm_ACC[5]_i_1_n_0\ : STD_LOGIC;
  signal \sm_ACC[6]_i_1_n_0\ : STD_LOGIC;
  signal \sm_ACC[7]_i_1_n_0\ : STD_LOGIC;
  signal \sm_ACC[8]_i_1_n_0\ : STD_LOGIC;
  signal \sm_ACC[9]_i_1_n_0\ : STD_LOGIC;
  signal sm_ACC_neg : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal sm_ACC_pos : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \sm_EC[0]_i_1_n_0\ : STD_LOGIC;
  signal \sm_EC[10]_i_1_n_0\ : STD_LOGIC;
  signal \sm_EC[11]_i_1_n_0\ : STD_LOGIC;
  signal \sm_EC[12]_i_1_n_0\ : STD_LOGIC;
  signal \sm_EC[13]_i_1_n_0\ : STD_LOGIC;
  signal \sm_EC[14]_i_1_n_0\ : STD_LOGIC;
  signal \sm_EC[15]_i_1_n_0\ : STD_LOGIC;
  signal \sm_EC[16]_i_1_n_0\ : STD_LOGIC;
  signal \sm_EC[17]_i_1_n_0\ : STD_LOGIC;
  signal \sm_EC[18]_i_1_n_0\ : STD_LOGIC;
  signal \sm_EC[19]_i_1_n_0\ : STD_LOGIC;
  signal \sm_EC[1]_i_1_n_0\ : STD_LOGIC;
  signal \sm_EC[20]_i_1_n_0\ : STD_LOGIC;
  signal \sm_EC[21]_i_1_n_0\ : STD_LOGIC;
  signal \sm_EC[21]_i_2_n_0\ : STD_LOGIC;
  signal \sm_EC[21]_i_3_n_0\ : STD_LOGIC;
  signal \sm_EC[21]_i_4_n_0\ : STD_LOGIC;
  signal \sm_EC[21]_i_5_n_0\ : STD_LOGIC;
  signal \sm_EC[21]_i_6_n_0\ : STD_LOGIC;
  signal \sm_EC[21]_i_7_n_0\ : STD_LOGIC;
  signal \sm_EC[2]_i_1_n_0\ : STD_LOGIC;
  signal \sm_EC[3]_i_1_n_0\ : STD_LOGIC;
  signal \sm_EC[4]_i_1_n_0\ : STD_LOGIC;
  signal \sm_EC[5]_i_1_n_0\ : STD_LOGIC;
  signal \sm_EC[6]_i_1_n_0\ : STD_LOGIC;
  signal \sm_EC[7]_i_1_n_0\ : STD_LOGIC;
  signal \sm_EC[8]_i_1_n_0\ : STD_LOGIC;
  signal \sm_EC[9]_i_1_n_0\ : STD_LOGIC;
  signal \sm_RM[0]_i_1_n_0\ : STD_LOGIC;
  signal \sm_RM[10]_i_1_n_0\ : STD_LOGIC;
  signal \sm_RM[11]_i_1_n_0\ : STD_LOGIC;
  signal \sm_RM[12]_i_1_n_0\ : STD_LOGIC;
  signal \sm_RM[13]_i_1_n_0\ : STD_LOGIC;
  signal \sm_RM[14]_i_1_n_0\ : STD_LOGIC;
  signal \sm_RM[15]_i_1_n_0\ : STD_LOGIC;
  signal \sm_RM[1]_i_1_n_0\ : STD_LOGIC;
  signal \sm_RM[2]_i_1_n_0\ : STD_LOGIC;
  signal \sm_RM[3]_i_1_n_0\ : STD_LOGIC;
  signal \sm_RM[4]_i_1_n_0\ : STD_LOGIC;
  signal \sm_RM[5]_i_1_n_0\ : STD_LOGIC;
  signal \sm_RM[6]_i_1_n_0\ : STD_LOGIC;
  signal \sm_RM[7]_i_1_n_0\ : STD_LOGIC;
  signal \sm_RM[8]_i_1_n_0\ : STD_LOGIC;
  signal \sm_RM[9]_i_1_n_0\ : STD_LOGIC;
  signal sm_nxt_EC_loc : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \sm_nxt_EC_loc[0]_i_1_n_0\ : STD_LOGIC;
  signal \sm_nxt_EC_loc[10]_i_1_n_0\ : STD_LOGIC;
  signal \sm_nxt_EC_loc[11]_i_1_n_0\ : STD_LOGIC;
  signal \sm_nxt_EC_loc[12]_i_1_n_0\ : STD_LOGIC;
  signal \sm_nxt_EC_loc[13]_i_1_n_0\ : STD_LOGIC;
  signal \sm_nxt_EC_loc[14]_i_1_n_0\ : STD_LOGIC;
  signal \sm_nxt_EC_loc[15]_i_1_n_0\ : STD_LOGIC;
  signal \sm_nxt_EC_loc[16]_i_1_n_0\ : STD_LOGIC;
  signal \sm_nxt_EC_loc[17]_i_1_n_0\ : STD_LOGIC;
  signal \sm_nxt_EC_loc[18]_i_1_n_0\ : STD_LOGIC;
  signal \sm_nxt_EC_loc[19]_i_1_n_0\ : STD_LOGIC;
  signal \sm_nxt_EC_loc[1]_i_1_n_0\ : STD_LOGIC;
  signal \sm_nxt_EC_loc[20]_i_1_n_0\ : STD_LOGIC;
  signal \sm_nxt_EC_loc[21]_i_2_n_0\ : STD_LOGIC;
  signal \sm_nxt_EC_loc[2]_i_1_n_0\ : STD_LOGIC;
  signal \sm_nxt_EC_loc[3]_i_1_n_0\ : STD_LOGIC;
  signal \sm_nxt_EC_loc[4]_i_1_n_0\ : STD_LOGIC;
  signal \sm_nxt_EC_loc[5]_i_1_n_0\ : STD_LOGIC;
  signal \sm_nxt_EC_loc[6]_i_1_n_0\ : STD_LOGIC;
  signal \sm_nxt_EC_loc[7]_i_1_n_0\ : STD_LOGIC;
  signal \sm_nxt_EC_loc[8]_i_1_n_0\ : STD_LOGIC;
  signal \sm_nxt_EC_loc[9]_i_1_n_0\ : STD_LOGIC;
  signal sm_nxt_RM_loc : STD_LOGIC;
  signal \sm_nxt_RM_loc[0]_i_1_n_0\ : STD_LOGIC;
  signal \sm_nxt_RM_loc[10]_i_1_n_0\ : STD_LOGIC;
  signal \sm_nxt_RM_loc[11]_i_1_n_0\ : STD_LOGIC;
  signal \sm_nxt_RM_loc[12]_i_1_n_0\ : STD_LOGIC;
  signal \sm_nxt_RM_loc[13]_i_1_n_0\ : STD_LOGIC;
  signal \sm_nxt_RM_loc[14]_i_1_n_0\ : STD_LOGIC;
  signal \sm_nxt_RM_loc[15]_i_1_n_0\ : STD_LOGIC;
  signal \sm_nxt_RM_loc[1]_i_1_n_0\ : STD_LOGIC;
  signal \sm_nxt_RM_loc[2]_i_1_n_0\ : STD_LOGIC;
  signal \sm_nxt_RM_loc[3]_i_1_n_0\ : STD_LOGIC;
  signal \sm_nxt_RM_loc[4]_i_1_n_0\ : STD_LOGIC;
  signal \sm_nxt_RM_loc[5]_i_1_n_0\ : STD_LOGIC;
  signal \sm_nxt_RM_loc[6]_i_1_n_0\ : STD_LOGIC;
  signal \sm_nxt_RM_loc[7]_i_1_n_0\ : STD_LOGIC;
  signal \sm_nxt_RM_loc[8]_i_1_n_0\ : STD_LOGIC;
  signal \sm_nxt_RM_loc[9]_i_1_n_0\ : STD_LOGIC;
  signal \sm_nxt_RM_loc_reg_n_0_[0]\ : STD_LOGIC;
  signal \sm_nxt_RM_loc_reg_n_0_[10]\ : STD_LOGIC;
  signal \sm_nxt_RM_loc_reg_n_0_[11]\ : STD_LOGIC;
  signal \sm_nxt_RM_loc_reg_n_0_[12]\ : STD_LOGIC;
  signal \sm_nxt_RM_loc_reg_n_0_[13]\ : STD_LOGIC;
  signal \sm_nxt_RM_loc_reg_n_0_[14]\ : STD_LOGIC;
  signal \sm_nxt_RM_loc_reg_n_0_[15]\ : STD_LOGIC;
  signal \sm_nxt_RM_loc_reg_n_0_[1]\ : STD_LOGIC;
  signal \sm_nxt_RM_loc_reg_n_0_[2]\ : STD_LOGIC;
  signal \sm_nxt_RM_loc_reg_n_0_[3]\ : STD_LOGIC;
  signal \sm_nxt_RM_loc_reg_n_0_[4]\ : STD_LOGIC;
  signal \sm_nxt_RM_loc_reg_n_0_[5]\ : STD_LOGIC;
  signal \sm_nxt_RM_loc_reg_n_0_[6]\ : STD_LOGIC;
  signal \sm_nxt_RM_loc_reg_n_0_[7]\ : STD_LOGIC;
  signal \sm_nxt_RM_loc_reg_n_0_[8]\ : STD_LOGIC;
  signal \sm_nxt_RM_loc_reg_n_0_[9]\ : STD_LOGIC;
  signal sm_req : STD_LOGIC;
  signal sm_req_i_1_n_0 : STD_LOGIC;
  signal sm_req_i_3_n_0 : STD_LOGIC;
  signal sm_req_i_4_n_0 : STD_LOGIC;
  signal sm_req_i_5_n_0 : STD_LOGIC;
  signal sm_req_i_6_n_0 : STD_LOGIC;
  signal sm_run_stp_i_1_n_0 : STD_LOGIC;
  signal sm_run_stp_i_2_n_0 : STD_LOGIC;
  signal sm_run_stp_reg_n_0 : STD_LOGIC;
  signal sm_start : STD_LOGIC;
  signal sm_start_i_1_n_0 : STD_LOGIC;
  signal sm_start_reg_n_0 : STD_LOGIC;
  signal sm_stop : STD_LOGIC;
  signal sm_stop_i_1_n_0 : STD_LOGIC;
  signal \^smc_req\ : STD_LOGIC;
  signal spd_chg_d1 : STD_LOGIC;
  signal spd_chg_d2 : STD_LOGIC;
  signal spd_chg_loc : STD_LOGIC;
  signal spd_chg_trig : STD_LOGIC;
  signal spd_chg_trig_i_1_n_0 : STD_LOGIC;
  signal steady_spd_i_1_n_0 : STD_LOGIC;
  signal steady_spd_i_2_n_0 : STD_LOGIC;
  signal steady_spd_reg_n_0 : STD_LOGIC;
  signal steps : STD_LOGIC;
  signal \steps[0]_i_1_n_0\ : STD_LOGIC;
  signal \steps[31]_i_1_n_0\ : STD_LOGIC;
  signal steps_loc : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \steps_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \steps_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \steps_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \steps_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \steps_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \steps_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \steps_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \steps_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \steps_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \steps_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \steps_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \steps_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \steps_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \steps_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \steps_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \steps_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \steps_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \steps_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \steps_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \steps_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \steps_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \steps_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \steps_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \steps_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \steps_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \steps_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \steps_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \steps_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \steps_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \steps_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \steps_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \steps_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \steps_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \steps_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \steps_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \steps_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \steps_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \steps_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \steps_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \steps_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \steps_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \steps_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \steps_reg[31]_i_3_n_5\ : STD_LOGIC;
  signal \steps_reg[31]_i_3_n_6\ : STD_LOGIC;
  signal \steps_reg[31]_i_3_n_7\ : STD_LOGIC;
  signal \steps_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \steps_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \steps_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \steps_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \steps_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \steps_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \steps_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \steps_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \steps_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \steps_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \steps_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \steps_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \steps_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \steps_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \steps_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \steps_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \steps_reg_n_0_[0]\ : STD_LOGIC;
  signal \steps_reg_n_0_[10]\ : STD_LOGIC;
  signal \steps_reg_n_0_[11]\ : STD_LOGIC;
  signal \steps_reg_n_0_[12]\ : STD_LOGIC;
  signal \steps_reg_n_0_[13]\ : STD_LOGIC;
  signal \steps_reg_n_0_[14]\ : STD_LOGIC;
  signal \steps_reg_n_0_[15]\ : STD_LOGIC;
  signal \steps_reg_n_0_[16]\ : STD_LOGIC;
  signal \steps_reg_n_0_[17]\ : STD_LOGIC;
  signal \steps_reg_n_0_[18]\ : STD_LOGIC;
  signal \steps_reg_n_0_[19]\ : STD_LOGIC;
  signal \steps_reg_n_0_[1]\ : STD_LOGIC;
  signal \steps_reg_n_0_[20]\ : STD_LOGIC;
  signal \steps_reg_n_0_[21]\ : STD_LOGIC;
  signal \steps_reg_n_0_[22]\ : STD_LOGIC;
  signal \steps_reg_n_0_[23]\ : STD_LOGIC;
  signal \steps_reg_n_0_[24]\ : STD_LOGIC;
  signal \steps_reg_n_0_[25]\ : STD_LOGIC;
  signal \steps_reg_n_0_[26]\ : STD_LOGIC;
  signal \steps_reg_n_0_[27]\ : STD_LOGIC;
  signal \steps_reg_n_0_[28]\ : STD_LOGIC;
  signal \steps_reg_n_0_[29]\ : STD_LOGIC;
  signal \steps_reg_n_0_[2]\ : STD_LOGIC;
  signal \steps_reg_n_0_[30]\ : STD_LOGIC;
  signal \steps_reg_n_0_[31]\ : STD_LOGIC;
  signal \steps_reg_n_0_[3]\ : STD_LOGIC;
  signal \steps_reg_n_0_[4]\ : STD_LOGIC;
  signal \steps_reg_n_0_[5]\ : STD_LOGIC;
  signal \steps_reg_n_0_[6]\ : STD_LOGIC;
  signal \steps_reg_n_0_[7]\ : STD_LOGIC;
  signal \steps_reg_n_0_[8]\ : STD_LOGIC;
  signal \steps_reg_n_0_[9]\ : STD_LOGIC;
  signal \tgt_ACC_loc_reg_n_0_[0]\ : STD_LOGIC;
  signal \tgt_ACC_loc_reg_n_0_[10]\ : STD_LOGIC;
  signal \tgt_ACC_loc_reg_n_0_[11]\ : STD_LOGIC;
  signal \tgt_ACC_loc_reg_n_0_[12]\ : STD_LOGIC;
  signal \tgt_ACC_loc_reg_n_0_[13]\ : STD_LOGIC;
  signal \tgt_ACC_loc_reg_n_0_[14]\ : STD_LOGIC;
  signal \tgt_ACC_loc_reg_n_0_[15]\ : STD_LOGIC;
  signal \tgt_ACC_loc_reg_n_0_[16]\ : STD_LOGIC;
  signal \tgt_ACC_loc_reg_n_0_[17]\ : STD_LOGIC;
  signal \tgt_ACC_loc_reg_n_0_[18]\ : STD_LOGIC;
  signal \tgt_ACC_loc_reg_n_0_[19]\ : STD_LOGIC;
  signal \tgt_ACC_loc_reg_n_0_[1]\ : STD_LOGIC;
  signal \tgt_ACC_loc_reg_n_0_[20]\ : STD_LOGIC;
  signal \tgt_ACC_loc_reg_n_0_[21]\ : STD_LOGIC;
  signal \tgt_ACC_loc_reg_n_0_[2]\ : STD_LOGIC;
  signal \tgt_ACC_loc_reg_n_0_[3]\ : STD_LOGIC;
  signal \tgt_ACC_loc_reg_n_0_[4]\ : STD_LOGIC;
  signal \tgt_ACC_loc_reg_n_0_[5]\ : STD_LOGIC;
  signal \tgt_ACC_loc_reg_n_0_[6]\ : STD_LOGIC;
  signal \tgt_ACC_loc_reg_n_0_[7]\ : STD_LOGIC;
  signal \tgt_ACC_loc_reg_n_0_[8]\ : STD_LOGIC;
  signal \tgt_ACC_loc_reg_n_0_[9]\ : STD_LOGIC;
  signal tgt_EC_loc : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal tgt_EC_loc0 : STD_LOGIC;
  signal \tgt_EC_loc0_reg_n_0_[0]\ : STD_LOGIC;
  signal \tgt_EC_loc0_reg_n_0_[10]\ : STD_LOGIC;
  signal \tgt_EC_loc0_reg_n_0_[11]\ : STD_LOGIC;
  signal \tgt_EC_loc0_reg_n_0_[12]\ : STD_LOGIC;
  signal \tgt_EC_loc0_reg_n_0_[13]\ : STD_LOGIC;
  signal \tgt_EC_loc0_reg_n_0_[14]\ : STD_LOGIC;
  signal \tgt_EC_loc0_reg_n_0_[15]\ : STD_LOGIC;
  signal \tgt_EC_loc0_reg_n_0_[16]\ : STD_LOGIC;
  signal \tgt_EC_loc0_reg_n_0_[17]\ : STD_LOGIC;
  signal \tgt_EC_loc0_reg_n_0_[18]\ : STD_LOGIC;
  signal \tgt_EC_loc0_reg_n_0_[19]\ : STD_LOGIC;
  signal \tgt_EC_loc0_reg_n_0_[1]\ : STD_LOGIC;
  signal \tgt_EC_loc0_reg_n_0_[20]\ : STD_LOGIC;
  signal \tgt_EC_loc0_reg_n_0_[21]\ : STD_LOGIC;
  signal \tgt_EC_loc0_reg_n_0_[2]\ : STD_LOGIC;
  signal \tgt_EC_loc0_reg_n_0_[3]\ : STD_LOGIC;
  signal \tgt_EC_loc0_reg_n_0_[4]\ : STD_LOGIC;
  signal \tgt_EC_loc0_reg_n_0_[5]\ : STD_LOGIC;
  signal \tgt_EC_loc0_reg_n_0_[6]\ : STD_LOGIC;
  signal \tgt_EC_loc0_reg_n_0_[7]\ : STD_LOGIC;
  signal \tgt_EC_loc0_reg_n_0_[8]\ : STD_LOGIC;
  signal \tgt_EC_loc0_reg_n_0_[9]\ : STD_LOGIC;
  signal triangle_i_1_n_0 : STD_LOGIC;
  signal triangle_i_2_n_0 : STD_LOGIC;
  signal triangle_i_3_n_0 : STD_LOGIC;
  signal triangle_i_4_n_0 : STD_LOGIC;
  signal triangle_reg_n_0 : STD_LOGIC;
  signal vld_out_loc : STD_LOGIC;
  signal NLW_EC_tgt_acc_trig0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_EC_tgt_acc_trig0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_EC_tgt_acc_trig0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_EC_tgt_acc_trig0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_EC_tgt_acc_trig0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_EC_tgt_acc_trig0_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_EC_tgt_acc_trig0_inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_EC_tgt_acc_trig0_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_EC_tgt_acc_trig0_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_EC_tgt_acc_trig0_inferred__1/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_eqOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_eqOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_eqOp_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_eqOp_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_eqOp_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_eqOp_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_eqOp_inferred__1/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_eqOp_inferred__1/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_eqOp_inferred__2/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_eqOp_inferred__2/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_eqOp_inferred__2/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_eqOp_inferred__3/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_eqOp_inferred__3/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_eqOp_inferred__3/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_eqOp_inferred__4/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_eqOp_inferred__4/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_eqOp_inferred__4/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_eqOp_inferred__5/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_eqOp_inferred__5/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_eqOp_inferred__5/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_gtOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gtOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gtOp_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_gtOp_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_minusOp_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_minusOp_inferred__0/i__carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_minusOp_inferred__0/i__carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_minusOp_inferred__1/i__carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_plusOp_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_plusOp_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_plusOp_inferred__1/i__carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_plusOp_inferred__1/i__carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_pulse_cnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_steps_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_steps_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_sm_state[0]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_sm_state[10]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \FSM_onehot_sm_state[11]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_sm_state[12]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_onehot_sm_state[13]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_onehot_sm_state[14]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \FSM_onehot_sm_state[15]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_onehot_sm_state[16]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_onehot_sm_state[17]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_onehot_sm_state[18]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \FSM_onehot_sm_state[19]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FSM_onehot_sm_state[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_sm_state[20]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \FSM_onehot_sm_state[22]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \FSM_onehot_sm_state[23]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \FSM_onehot_sm_state[24]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \FSM_onehot_sm_state[25]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_sm_state[26]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FSM_onehot_sm_state[27]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_sm_state[28]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_onehot_sm_state[29]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_sm_state[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FSM_onehot_sm_state[30]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_onehot_sm_state[31]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_sm_state[32]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \FSM_onehot_sm_state[34]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FSM_onehot_sm_state[35]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FSM_onehot_sm_state[36]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \FSM_onehot_sm_state[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_sm_state[4]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \FSM_onehot_sm_state[5]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FSM_onehot_sm_state[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FSM_onehot_sm_state[8]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \FSM_onehot_sm_state[9]_i_1\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_sm_state_reg[0]\ : label is "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sm_state_reg[10]\ : label is "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sm_state_reg[11]\ : label is "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sm_state_reg[12]\ : label is "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sm_state_reg[13]\ : label is "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sm_state_reg[14]\ : label is "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sm_state_reg[15]\ : label is "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sm_state_reg[16]\ : label is "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sm_state_reg[17]\ : label is "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sm_state_reg[18]\ : label is "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sm_state_reg[19]\ : label is "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sm_state_reg[1]\ : label is "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sm_state_reg[20]\ : label is "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sm_state_reg[21]\ : label is "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sm_state_reg[22]\ : label is "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sm_state_reg[23]\ : label is "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sm_state_reg[24]\ : label is "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sm_state_reg[25]\ : label is "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sm_state_reg[26]\ : label is "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sm_state_reg[27]\ : label is "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sm_state_reg[28]\ : label is "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sm_state_reg[29]\ : label is "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sm_state_reg[2]\ : label is "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sm_state_reg[30]\ : label is "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sm_state_reg[31]\ : label is "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sm_state_reg[32]\ : label is "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sm_state_reg[33]\ : label is "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sm_state_reg[34]\ : label is "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sm_state_reg[35]\ : label is "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sm_state_reg[36]\ : label is "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sm_state_reg[3]\ : label is "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sm_state_reg[4]\ : label is "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sm_state_reg[5]\ : label is "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sm_state_reg[6]\ : label is "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sm_state_reg[7]\ : label is "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sm_state_reg[8]\ : label is "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_sm_state_reg[9]\ : label is "f_stp_in_w:0000000000000000000000000000001000000,f_stp_in:0000000000000000000000000000000100000,still:0000000000000000000000000000000000001,v_steady_l:0000010000000000000000000000000000000,v_stp_out:0000000100000000000000000000000000000,v_accel_l:0000000000000100000000000000000000000,v_steady_w:0000000000100000000000000000000000000,v_stop_w:0000000010000000000000000000000000000,v_accel_w:0000000000000010000000000000000000000,v_steady:0000000000010000000000000000000000000,v_accel:0000000000000001000000000000000000000,v_accel_l_w:0000000000001000000000000000000000000,v_stop:0000000001000000000000000000000000000,s_stp_in:0000000000000000000000000000000000010,v_stp_in_w:0000000000000000100000000000000000000,v_decel_l_w:1000000000000000000000000000000000000,f_stp_out_w:0000000000000000001000000000000000000,f_stp_out:0000000000000000000100000000000000000,f_decel_w:0000000000000000000010000000000000000,v_stp_in:0000000000000000010000000000000000000,s_stp_out_w:0000000000000000000000000000000010000,f_decel:0000000000000000000001000000000000000,s_stp_out:0000000000000000000000000000000001000,f_steady_o:0000000000000000000000000001000000000,f_last_w:0000000000000000000000100000000000000,s_stp_in_w:0000000000000000000000000000000000100,f_steady_w:0000000000000000000000001000000000000,f_last:0000000000000000000000010000000000000,f_steady:0000000000000000000000000100000000000,f_steady_o_w:0000000000000000000000000010000000000,f_accel_w:0000000000000000000000000000100000000,v_decel_l:0100000000000000000000000000000000000,v_decel_w:0010000000000000000000000000000000000,v_decel:0001000000000000000000000000000000000,recovery:100101,v_steady_l_w:0000100000000000000000000000000000000,v_stp_out_w:0000001000000000000000000000000000000,f_accel:0000000000000000000000000000010000000";
  attribute SOFT_HLUTNM of clock_loc_i_2 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of irq_loc_i_2 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \pulse_cnt[0]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sm_ACC[21]_i_7\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sm_RM[0]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \sm_RM[10]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \sm_RM[11]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \sm_RM[12]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \sm_RM[13]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \sm_RM[14]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \sm_RM[15]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \sm_RM[1]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \sm_RM[2]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \sm_RM[3]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \sm_RM[4]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \sm_RM[5]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \sm_RM[6]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \sm_RM[7]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \sm_RM[8]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \sm_RM[9]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \sm_nxt_EC_loc[0]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \sm_nxt_EC_loc[10]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \sm_nxt_EC_loc[11]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \sm_nxt_EC_loc[12]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \sm_nxt_EC_loc[13]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \sm_nxt_EC_loc[14]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \sm_nxt_EC_loc[15]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \sm_nxt_EC_loc[16]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \sm_nxt_EC_loc[17]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \sm_nxt_EC_loc[18]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \sm_nxt_EC_loc[19]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \sm_nxt_EC_loc[20]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \sm_nxt_EC_loc[21]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \sm_nxt_EC_loc[2]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \sm_nxt_EC_loc[3]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \sm_nxt_EC_loc[4]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \sm_nxt_EC_loc[5]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \sm_nxt_EC_loc[6]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \sm_nxt_EC_loc[7]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \sm_nxt_EC_loc[8]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \sm_nxt_EC_loc[9]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \sm_nxt_RM_loc[0]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \sm_nxt_RM_loc[10]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \sm_nxt_RM_loc[11]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \sm_nxt_RM_loc[12]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \sm_nxt_RM_loc[13]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \sm_nxt_RM_loc[14]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \sm_nxt_RM_loc[15]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \sm_nxt_RM_loc[1]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \sm_nxt_RM_loc[2]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \sm_nxt_RM_loc[3]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \sm_nxt_RM_loc[4]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \sm_nxt_RM_loc[5]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \sm_nxt_RM_loc[6]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \sm_nxt_RM_loc[7]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \sm_nxt_RM_loc[8]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \sm_nxt_RM_loc[9]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of sm_req_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of sm_req_i_4 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of sm_run_stp_i_2 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \steps[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of triangle_i_3 : label is "soft_lutpair13";
begin
  Q(21 downto 0) <= \^q\(21 downto 0);
  irq_in <= \^irq_in\;
  rst_200_out <= \^rst_200_out\;
  smc_req <= \^smc_req\;
ACC_zero_flg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3737FFFF0400FFFF"
    )
        port map (
      I0 => EC_tgt_acc_trig08_in,
      I1 => sm_start_reg_n_0,
      I2 => EC_tgt_acc_trig05_in,
      I3 => EC_tgt_acc_trig0,
      I4 => sm_run_stp_reg_n_0,
      I5 => ACC_zero_flg_reg_n_0,
      O => ACC_zero_flg_i_1_n_0
    );
ACC_zero_flg_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk200,
      CE => '1',
      D => ACC_zero_flg_i_1_n_0,
      Q => ACC_zero_flg_reg_n_0,
      S => \^rst_200_out\
    );
\EC_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5D5F"
    )
        port map (
      I0 => sm_run_stp_reg_n_0,
      I1 => eqOp,
      I2 => sm_start_reg_n_0,
      I3 => EC_cnt(0),
      O => \EC_cnt[0]_i_1_n_0\
    );
\EC_cnt[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => \^rst_200_out\,
      I1 => sm_run_stp_reg_n_0,
      I2 => sm_start_reg_n_0,
      I3 => eqOp,
      O => \EC_cnt[21]_i_1_n_0\
    );
\EC_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F020"
    )
        port map (
      I0 => \plusOp__0\(2),
      I1 => eqOp,
      I2 => sm_run_stp_reg_n_0,
      I3 => sm_start_reg_n_0,
      O => \EC_cnt[2]_i_1_n_0\
    );
\EC_cnt_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \EC_cnt[0]_i_1_n_0\,
      Q => EC_cnt(0),
      S => \^rst_200_out\
    );
\EC_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => plusOp(10),
      Q => EC_cnt(10),
      R => \EC_cnt[21]_i_1_n_0\
    );
\EC_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => plusOp(11),
      Q => EC_cnt(11),
      R => \EC_cnt[21]_i_1_n_0\
    );
\EC_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => plusOp(12),
      Q => EC_cnt(12),
      R => \EC_cnt[21]_i_1_n_0\
    );
\EC_cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => plusOp(13),
      Q => EC_cnt(13),
      R => \EC_cnt[21]_i_1_n_0\
    );
\EC_cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => plusOp(14),
      Q => EC_cnt(14),
      R => \EC_cnt[21]_i_1_n_0\
    );
\EC_cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => plusOp(15),
      Q => EC_cnt(15),
      R => \EC_cnt[21]_i_1_n_0\
    );
\EC_cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => plusOp(16),
      Q => EC_cnt(16),
      R => \EC_cnt[21]_i_1_n_0\
    );
\EC_cnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => plusOp(17),
      Q => EC_cnt(17),
      R => \EC_cnt[21]_i_1_n_0\
    );
\EC_cnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => plusOp(18),
      Q => EC_cnt(18),
      R => \EC_cnt[21]_i_1_n_0\
    );
\EC_cnt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => plusOp(19),
      Q => EC_cnt(19),
      R => \EC_cnt[21]_i_1_n_0\
    );
\EC_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => plusOp(1),
      Q => EC_cnt(1),
      R => \EC_cnt[21]_i_1_n_0\
    );
\EC_cnt_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => plusOp(20),
      Q => EC_cnt(20),
      R => \EC_cnt[21]_i_1_n_0\
    );
\EC_cnt_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => plusOp(21),
      Q => EC_cnt(21),
      R => \EC_cnt[21]_i_1_n_0\
    );
\EC_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \EC_cnt[2]_i_1_n_0\,
      Q => EC_cnt(2),
      R => \^rst_200_out\
    );
\EC_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => plusOp(3),
      Q => EC_cnt(3),
      R => \EC_cnt[21]_i_1_n_0\
    );
\EC_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => plusOp(4),
      Q => EC_cnt(4),
      R => \EC_cnt[21]_i_1_n_0\
    );
\EC_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => plusOp(5),
      Q => EC_cnt(5),
      R => \EC_cnt[21]_i_1_n_0\
    );
\EC_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => plusOp(6),
      Q => EC_cnt(6),
      R => \EC_cnt[21]_i_1_n_0\
    );
\EC_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => plusOp(7),
      Q => EC_cnt(7),
      R => \EC_cnt[21]_i_1_n_0\
    );
\EC_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => plusOp(8),
      Q => EC_cnt(8),
      R => \EC_cnt[21]_i_1_n_0\
    );
\EC_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => plusOp(9),
      Q => EC_cnt(9),
      R => \EC_cnt[21]_i_1_n_0\
    );
EC_tgt_acc_trig0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => EC_tgt_acc_trig0_carry_n_0,
      CO(2) => EC_tgt_acc_trig0_carry_n_1,
      CO(1) => EC_tgt_acc_trig0_carry_n_2,
      CO(0) => EC_tgt_acc_trig0_carry_n_3,
      CYINIT => '0',
      DI(3) => EC_tgt_acc_trig0_carry_i_1_n_0,
      DI(2) => EC_tgt_acc_trig0_carry_i_2_n_0,
      DI(1) => EC_tgt_acc_trig0_carry_i_3_n_0,
      DI(0) => EC_tgt_acc_trig0_carry_i_4_n_0,
      O(3 downto 0) => NLW_EC_tgt_acc_trig0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => EC_tgt_acc_trig0_carry_i_5_n_0,
      S(2) => EC_tgt_acc_trig0_carry_i_6_n_0,
      S(1) => EC_tgt_acc_trig0_carry_i_7_n_0,
      S(0) => EC_tgt_acc_trig0_carry_i_8_n_0
    );
\EC_tgt_acc_trig0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => EC_tgt_acc_trig0_carry_n_0,
      CO(3) => \EC_tgt_acc_trig0_carry__0_n_0\,
      CO(2) => \EC_tgt_acc_trig0_carry__0_n_1\,
      CO(1) => \EC_tgt_acc_trig0_carry__0_n_2\,
      CO(0) => \EC_tgt_acc_trig0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \EC_tgt_acc_trig0_carry__0_i_1_n_0\,
      DI(2) => \EC_tgt_acc_trig0_carry__0_i_2_n_0\,
      DI(1) => \EC_tgt_acc_trig0_carry__0_i_3_n_0\,
      DI(0) => \EC_tgt_acc_trig0_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_EC_tgt_acc_trig0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \EC_tgt_acc_trig0_carry__0_i_5_n_0\,
      S(2) => \EC_tgt_acc_trig0_carry__0_i_6_n_0\,
      S(1) => \EC_tgt_acc_trig0_carry__0_i_7_n_0\,
      S(0) => \EC_tgt_acc_trig0_carry__0_i_8_n_0\
    );
\EC_tgt_acc_trig0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \^q\(14),
      I1 => tgt_EC_loc(14),
      I2 => \^q\(15),
      I3 => tgt_EC_loc(15),
      O => \EC_tgt_acc_trig0_carry__0_i_1_n_0\
    );
\EC_tgt_acc_trig0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \^q\(12),
      I1 => tgt_EC_loc(12),
      I2 => \^q\(13),
      I3 => tgt_EC_loc(13),
      O => \EC_tgt_acc_trig0_carry__0_i_2_n_0\
    );
\EC_tgt_acc_trig0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \^q\(10),
      I1 => tgt_EC_loc(10),
      I2 => \^q\(11),
      I3 => tgt_EC_loc(11),
      O => \EC_tgt_acc_trig0_carry__0_i_3_n_0\
    );
\EC_tgt_acc_trig0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \^q\(8),
      I1 => tgt_EC_loc(8),
      I2 => \^q\(9),
      I3 => tgt_EC_loc(9),
      O => \EC_tgt_acc_trig0_carry__0_i_4_n_0\
    );
\EC_tgt_acc_trig0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(15),
      I1 => tgt_EC_loc(15),
      I2 => \^q\(14),
      I3 => tgt_EC_loc(14),
      O => \EC_tgt_acc_trig0_carry__0_i_5_n_0\
    );
\EC_tgt_acc_trig0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => tgt_EC_loc(12),
      I1 => \^q\(12),
      I2 => tgt_EC_loc(13),
      I3 => \^q\(13),
      O => \EC_tgt_acc_trig0_carry__0_i_6_n_0\
    );
\EC_tgt_acc_trig0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(10),
      I1 => tgt_EC_loc(10),
      I2 => \^q\(11),
      I3 => tgt_EC_loc(11),
      O => \EC_tgt_acc_trig0_carry__0_i_7_n_0\
    );
\EC_tgt_acc_trig0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(9),
      I1 => tgt_EC_loc(9),
      I2 => \^q\(8),
      I3 => tgt_EC_loc(8),
      O => \EC_tgt_acc_trig0_carry__0_i_8_n_0\
    );
\EC_tgt_acc_trig0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \EC_tgt_acc_trig0_carry__0_n_0\,
      CO(3) => \NLW_EC_tgt_acc_trig0_carry__1_CO_UNCONNECTED\(3),
      CO(2) => EC_tgt_acc_trig08_in,
      CO(1) => \EC_tgt_acc_trig0_carry__1_n_2\,
      CO(0) => \EC_tgt_acc_trig0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \EC_tgt_acc_trig0_carry__1_i_1_n_0\,
      DI(1) => \EC_tgt_acc_trig0_carry__1_i_2_n_0\,
      DI(0) => \EC_tgt_acc_trig0_carry__1_i_3_n_0\,
      O(3 downto 0) => \NLW_EC_tgt_acc_trig0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \EC_tgt_acc_trig0_carry__1_i_4_n_0\,
      S(1) => \EC_tgt_acc_trig0_carry__1_i_5_n_0\,
      S(0) => \EC_tgt_acc_trig0_carry__1_i_6_n_0\
    );
\EC_tgt_acc_trig0_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \^q\(20),
      I1 => tgt_EC_loc(20),
      I2 => \^q\(21),
      I3 => tgt_EC_loc(21),
      O => \EC_tgt_acc_trig0_carry__1_i_1_n_0\
    );
\EC_tgt_acc_trig0_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \^q\(18),
      I1 => tgt_EC_loc(18),
      I2 => \^q\(19),
      I3 => tgt_EC_loc(19),
      O => \EC_tgt_acc_trig0_carry__1_i_2_n_0\
    );
\EC_tgt_acc_trig0_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \^q\(16),
      I1 => tgt_EC_loc(16),
      I2 => \^q\(17),
      I3 => tgt_EC_loc(17),
      O => \EC_tgt_acc_trig0_carry__1_i_3_n_0\
    );
\EC_tgt_acc_trig0_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => tgt_EC_loc(20),
      I1 => \^q\(20),
      I2 => tgt_EC_loc(21),
      I3 => \^q\(21),
      O => \EC_tgt_acc_trig0_carry__1_i_4_n_0\
    );
\EC_tgt_acc_trig0_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => tgt_EC_loc(18),
      I1 => \^q\(18),
      I2 => tgt_EC_loc(19),
      I3 => \^q\(19),
      O => \EC_tgt_acc_trig0_carry__1_i_5_n_0\
    );
\EC_tgt_acc_trig0_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(16),
      I1 => tgt_EC_loc(16),
      I2 => \^q\(17),
      I3 => tgt_EC_loc(17),
      O => \EC_tgt_acc_trig0_carry__1_i_6_n_0\
    );
EC_tgt_acc_trig0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \^q\(6),
      I1 => tgt_EC_loc(6),
      I2 => \^q\(7),
      I3 => tgt_EC_loc(7),
      O => EC_tgt_acc_trig0_carry_i_1_n_0
    );
EC_tgt_acc_trig0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \^q\(4),
      I1 => tgt_EC_loc(4),
      I2 => \^q\(5),
      I3 => tgt_EC_loc(5),
      O => EC_tgt_acc_trig0_carry_i_2_n_0
    );
EC_tgt_acc_trig0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \^q\(2),
      I1 => tgt_EC_loc(2),
      I2 => \^q\(3),
      I3 => tgt_EC_loc(3),
      O => EC_tgt_acc_trig0_carry_i_3_n_0
    );
EC_tgt_acc_trig0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => \^q\(0),
      I1 => tgt_EC_loc(0),
      I2 => \^q\(1),
      I3 => tgt_EC_loc(1),
      O => EC_tgt_acc_trig0_carry_i_4_n_0
    );
EC_tgt_acc_trig0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => tgt_EC_loc(6),
      I1 => \^q\(6),
      I2 => tgt_EC_loc(7),
      I3 => \^q\(7),
      O => EC_tgt_acc_trig0_carry_i_5_n_0
    );
EC_tgt_acc_trig0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(4),
      I1 => tgt_EC_loc(4),
      I2 => \^q\(5),
      I3 => tgt_EC_loc(5),
      O => EC_tgt_acc_trig0_carry_i_6_n_0
    );
EC_tgt_acc_trig0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(3),
      I1 => tgt_EC_loc(3),
      I2 => \^q\(2),
      I3 => tgt_EC_loc(2),
      O => EC_tgt_acc_trig0_carry_i_7_n_0
    );
EC_tgt_acc_trig0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => tgt_EC_loc(0),
      I1 => \^q\(0),
      I2 => tgt_EC_loc(1),
      I3 => \^q\(1),
      O => EC_tgt_acc_trig0_carry_i_8_n_0
    );
\EC_tgt_acc_trig0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \EC_tgt_acc_trig0_inferred__0/i__carry_n_0\,
      CO(2) => \EC_tgt_acc_trig0_inferred__0/i__carry_n_1\,
      CO(1) => \EC_tgt_acc_trig0_inferred__0/i__carry_n_2\,
      CO(0) => \EC_tgt_acc_trig0_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => \NLW_EC_tgt_acc_trig0_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\EC_tgt_acc_trig0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \EC_tgt_acc_trig0_inferred__0/i__carry_n_0\,
      CO(3) => \EC_tgt_acc_trig0_inferred__0/i__carry__0_n_0\,
      CO(2) => \EC_tgt_acc_trig0_inferred__0/i__carry__0_n_1\,
      CO(1) => \EC_tgt_acc_trig0_inferred__0/i__carry__0_n_2\,
      CO(0) => \EC_tgt_acc_trig0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1_n_0\,
      DI(2) => \i__carry__0_i_2_n_0\,
      DI(1) => \i__carry__0_i_3_n_0\,
      DI(0) => \i__carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_EC_tgt_acc_trig0_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_5_n_0\,
      S(2) => \i__carry__0_i_6_n_0\,
      S(1) => \i__carry__0_i_7_n_0\,
      S(0) => \i__carry__0_i_8_n_0\
    );
\EC_tgt_acc_trig0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \EC_tgt_acc_trig0_inferred__0/i__carry__0_n_0\,
      CO(3) => \NLW_EC_tgt_acc_trig0_inferred__0/i__carry__1_CO_UNCONNECTED\(3),
      CO(2) => EC_tgt_acc_trig05_in,
      CO(1) => \EC_tgt_acc_trig0_inferred__0/i__carry__1_n_2\,
      CO(0) => \EC_tgt_acc_trig0_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i__carry__1_i_1_n_0\,
      DI(1) => \i__carry__1_i_2_n_0\,
      DI(0) => \i__carry__1_i_3_n_0\,
      O(3 downto 0) => \NLW_EC_tgt_acc_trig0_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry__1_i_4_n_0\,
      S(1) => \i__carry__1_i_5_n_0\,
      S(0) => \i__carry__1_i_6_n_0\
    );
\EC_tgt_acc_trig0_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \EC_tgt_acc_trig0_inferred__1/i__carry_n_0\,
      CO(2) => \EC_tgt_acc_trig0_inferred__1/i__carry_n_1\,
      CO(1) => \EC_tgt_acc_trig0_inferred__1/i__carry_n_2\,
      CO(0) => \EC_tgt_acc_trig0_inferred__1/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_EC_tgt_acc_trig0_inferred__1/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__0_n_0\,
      S(2) => \i__carry_i_2__0_n_0\,
      S(1) => \i__carry_i_3__0_n_0\,
      S(0) => \i__carry_i_4__0_n_0\
    );
\EC_tgt_acc_trig0_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \EC_tgt_acc_trig0_inferred__1/i__carry_n_0\,
      CO(3) => EC_tgt_acc_trig0,
      CO(2) => \EC_tgt_acc_trig0_inferred__1/i__carry__0_n_1\,
      CO(1) => \EC_tgt_acc_trig0_inferred__1/i__carry__0_n_2\,
      CO(0) => \EC_tgt_acc_trig0_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_EC_tgt_acc_trig0_inferred__1/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_1__2_n_0\,
      S(2) => \i__carry__0_i_2__0_n_0\,
      S(1) => \i__carry__0_i_3__0_n_0\,
      S(0) => \i__carry__0_i_4__0_n_0\
    );
EC_tgt_acc_trig_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => EC_tgt_acc_trig_i_2_n_0,
      I1 => sm_start_reg_n_0,
      I2 => EC_tgt_acc_trig08_in,
      I3 => sm_run_stp_reg_n_0,
      O => EC_tgt_acc_trig_i_1_n_0
    );
EC_tgt_acc_trig_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E2EA0000"
    )
        port map (
      I0 => EC_tgt_acc_trig_reg_n_0,
      I1 => sm_start_reg_n_0,
      I2 => EC_tgt_acc_trig05_in,
      I3 => EC_tgt_acc_trig0,
      I4 => sm_run_stp_reg_n_0,
      I5 => \^rst_200_out\,
      O => EC_tgt_acc_trig_i_2_n_0
    );
EC_tgt_acc_trig_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => EC_tgt_acc_trig_i_1_n_0,
      Q => EC_tgt_acc_trig_reg_n_0,
      R => '0'
    );
EC_tgt_dec_trig_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBF000088880000"
    )
        port map (
      I0 => EC_tgt_acc_trig08_in,
      I1 => sm_start_reg_n_0,
      I2 => EC_tgt_acc_trig05_in,
      I3 => EC_tgt_acc_trig0,
      I4 => sm_run_stp_reg_n_0,
      I5 => EC_tgt_dec_trig_reg_n_0,
      O => EC_tgt_dec_trig_i_1_n_0
    );
EC_tgt_dec_trig_reg: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => EC_tgt_dec_trig_i_1_n_0,
      Q => EC_tgt_dec_trig_reg_n_0,
      R => \^rst_200_out\
    );
\FSM_onehot_sm_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8FFFFAAA8AAA8"
    )
        port map (
      I0 => sm_stop,
      I1 => \FSM_onehot_sm_state_reg_n_0_[30]\,
      I2 => \FSM_onehot_sm_state_reg_n_0_[18]\,
      I3 => \FSM_onehot_sm_state_reg_n_0_[4]\,
      I4 => p_1_in,
      I5 => \FSM_onehot_sm_state_reg_n_0_[0]\,
      O => \FSM_onehot_sm_state[0]_i_1_n_0\
    );
\FSM_onehot_sm_state[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => slw_stps_trig,
      I1 => fst_stps_trig,
      I2 => ramp_up_trig,
      O => p_1_in
    );
\FSM_onehot_sm_state[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => sm_stop,
      I1 => \FSM_onehot_sm_state_reg_n_0_[10]\,
      I2 => \FSM_onehot_sm_state_reg_n_0_[9]\,
      O => \FSM_onehot_sm_state[10]_i_1_n_0\
    );
\FSM_onehot_sm_state[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF888888A8"
    )
        port map (
      I0 => sm_stop,
      I1 => \FSM_onehot_sm_state_reg_n_0_[10]\,
      I2 => \FSM_onehot_sm_state_reg_n_0_[12]\,
      I3 => triangle_reg_n_0,
      I4 => dec_trj_trig,
      I5 => \FSM_onehot_sm_state[11]_i_2_n_0\,
      O => \FSM_onehot_sm_state[11]_i_1_n_0\
    );
\FSM_onehot_sm_state[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08080800"
    )
        port map (
      I0 => sm_stop,
      I1 => acc_flg,
      I2 => \cnt_o_loc_reg_n_0_[0]\,
      I3 => EC_tgt_acc_trig_reg_n_0,
      I4 => triangle_reg_n_0,
      O => \FSM_onehot_sm_state[11]_i_2_n_0\
    );
\FSM_onehot_sm_state[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => sm_stop,
      I1 => \FSM_onehot_sm_state_reg_n_0_[12]\,
      I2 => \FSM_onehot_sm_state_reg_n_0_[11]\,
      O => \FSM_onehot_sm_state[12]_i_1_n_0\
    );
\FSM_onehot_sm_state[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => \FSM_onehot_sm_state_reg_n_0_[12]\,
      I1 => sm_stop,
      I2 => triangle_reg_n_0,
      I3 => dec_trj_trig,
      O => \FSM_onehot_sm_state[13]_i_1_n_0\
    );
\FSM_onehot_sm_state[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => sm_stop,
      I1 => \FSM_onehot_sm_state_reg_n_0_[14]\,
      I2 => \FSM_onehot_sm_state_reg_n_0_[13]\,
      O => \FSM_onehot_sm_state[14]_i_1_n_0\
    );
\FSM_onehot_sm_state[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F200"
    )
        port map (
      I0 => \FSM_onehot_sm_state_reg_n_0_[16]\,
      I1 => end_trj_trig,
      I2 => \FSM_onehot_sm_state_reg_n_0_[14]\,
      I3 => sm_stop,
      O => \FSM_onehot_sm_state[15]_i_1_n_0\
    );
\FSM_onehot_sm_state[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => sm_stop,
      I1 => \FSM_onehot_sm_state_reg_n_0_[16]\,
      I2 => \FSM_onehot_sm_state_reg_n_0_[15]\,
      O => \FSM_onehot_sm_state[16]_i_1_n_0\
    );
\FSM_onehot_sm_state[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_sm_state_reg_n_0_[16]\,
      I1 => sm_stop,
      I2 => end_trj_trig,
      O => \FSM_onehot_sm_state[17]_i_1_n_0\
    );
\FSM_onehot_sm_state[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => sm_stop,
      I1 => \FSM_onehot_sm_state_reg_n_0_[18]\,
      I2 => \FSM_onehot_sm_state_reg_n_0_[17]\,
      O => \FSM_onehot_sm_state[18]_i_1_n_0\
    );
\FSM_onehot_sm_state[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => ramp_up_trig,
      I1 => \FSM_onehot_sm_state_reg_n_0_[0]\,
      I2 => slw_stps_trig,
      I3 => fst_stps_trig,
      O => \FSM_onehot_sm_state[19]_i_1_n_0\
    );
\FSM_onehot_sm_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF404040"
    )
        port map (
      I0 => end_trj_trig,
      I1 => sm_stop,
      I2 => \FSM_onehot_sm_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_sm_state_reg_n_0_[0]\,
      I4 => slw_stps_trig,
      O => \FSM_onehot_sm_state[1]_i_1_n_0\
    );
\FSM_onehot_sm_state[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => sm_stop,
      I1 => \FSM_onehot_sm_state_reg_n_0_[20]\,
      I2 => \FSM_onehot_sm_state_reg_n_0_[19]\,
      O => \FSM_onehot_sm_state[20]_i_1_n_0\
    );
\FSM_onehot_sm_state[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00F400000000"
    )
        port map (
      I0 => ACC_zero_flg_reg_n_0,
      I1 => \FSM_onehot_sm_state_reg_n_0_[32]\,
      I2 => \FSM_onehot_sm_state_reg_n_0_[22]\,
      I3 => EC_tgt_acc_trig_reg_n_0,
      I4 => \FSM_onehot_sm_state_reg_n_0_[20]\,
      I5 => sm_stop,
      O => \FSM_onehot_sm_state[21]_i_1_n_0\
    );
\FSM_onehot_sm_state[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => sm_stop,
      I1 => \FSM_onehot_sm_state_reg_n_0_[22]\,
      I2 => \FSM_onehot_sm_state_reg_n_0_[21]\,
      O => \FSM_onehot_sm_state[22]_i_1_n_0\
    );
\FSM_onehot_sm_state[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_sm_state_reg_n_0_[22]\,
      I1 => EC_tgt_acc_trig_reg_n_0,
      I2 => sm_stop,
      O => \FSM_onehot_sm_state[23]_i_1_n_0\
    );
\FSM_onehot_sm_state[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => sm_stop,
      I1 => \FSM_onehot_sm_state_reg_n_0_[24]\,
      I2 => \FSM_onehot_sm_state_reg_n_0_[23]\,
      O => \FSM_onehot_sm_state[24]_i_1_n_0\
    );
\FSM_onehot_sm_state[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_sm_state[25]_i_2_n_0\,
      I1 => spd_chg_trig,
      I2 => ramp_dwn_trig,
      I3 => sm_stop,
      I4 => \FSM_onehot_sm_state_reg_n_0_[26]\,
      O => \FSM_onehot_sm_state[25]_i_1_n_0\
    );
\FSM_onehot_sm_state[25]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F080"
    )
        port map (
      I0 => ACC_zero_flg_reg_n_0,
      I1 => \FSM_onehot_sm_state_reg_n_0_[32]\,
      I2 => sm_stop,
      I3 => \FSM_onehot_sm_state_reg_n_0_[24]\,
      I4 => \FSM_onehot_sm_state_reg_n_0_[36]\,
      O => \FSM_onehot_sm_state[25]_i_2_n_0\
    );
\FSM_onehot_sm_state[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => sm_stop,
      I1 => \FSM_onehot_sm_state_reg_n_0_[26]\,
      I2 => \FSM_onehot_sm_state_reg_n_0_[25]\,
      O => \FSM_onehot_sm_state[26]_i_1_n_0\
    );
\FSM_onehot_sm_state[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080F080"
    )
        port map (
      I0 => \FSM_onehot_sm_state_reg_n_0_[26]\,
      I1 => ramp_dwn_trig,
      I2 => sm_stop,
      I3 => \FSM_onehot_sm_state_reg_n_0_[28]\,
      I4 => init_EC_trig_reg_n_0,
      O => \FSM_onehot_sm_state[27]_i_1_n_0\
    );
\FSM_onehot_sm_state[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => sm_stop,
      I1 => \FSM_onehot_sm_state_reg_n_0_[28]\,
      I2 => \FSM_onehot_sm_state_reg_n_0_[27]\,
      O => \FSM_onehot_sm_state[28]_i_1_n_0\
    );
\FSM_onehot_sm_state[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_sm_state_reg_n_0_[28]\,
      I1 => sm_stop,
      I2 => init_EC_trig_reg_n_0,
      O => \FSM_onehot_sm_state[29]_i_1_n_0\
    );
\FSM_onehot_sm_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => sm_stop,
      I1 => \FSM_onehot_sm_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_sm_state_reg_n_0_[1]\,
      O => \FSM_onehot_sm_state[2]_i_1_n_0\
    );
\FSM_onehot_sm_state[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => sm_stop,
      I1 => \FSM_onehot_sm_state_reg_n_0_[30]\,
      I2 => \FSM_onehot_sm_state_reg_n_0_[29]\,
      O => \FSM_onehot_sm_state[30]_i_1_n_0\
    );
\FSM_onehot_sm_state[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \FSM_onehot_sm_state_reg_n_0_[26]\,
      I1 => sm_stop,
      I2 => ramp_dwn_trig,
      I3 => spd_chg_trig,
      O => \FSM_onehot_sm_state[31]_i_1_n_0\
    );
\FSM_onehot_sm_state[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => sm_stop,
      I1 => \FSM_onehot_sm_state_reg_n_0_[32]\,
      I2 => \FSM_onehot_sm_state_reg_n_0_[31]\,
      O => \FSM_onehot_sm_state[32]_i_1_n_0\
    );
\FSM_onehot_sm_state[33]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08000800FF000800"
    )
        port map (
      I0 => EC_tgt_acc_trig_reg_n_0,
      I1 => \FSM_onehot_sm_state_reg_n_0_[32]\,
      I2 => ACC_zero_flg_reg_n_0,
      I3 => sm_stop,
      I4 => \FSM_onehot_sm_state_reg_n_0_[34]\,
      I5 => EC_tgt_dec_trig_reg_n_0,
      O => \FSM_onehot_sm_state[33]_i_1_n_0\
    );
\FSM_onehot_sm_state[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => sm_stop,
      I1 => \FSM_onehot_sm_state_reg_n_0_[34]\,
      I2 => \FSM_onehot_sm_state_reg_n_0_[33]\,
      O => \FSM_onehot_sm_state[34]_i_1_n_0\
    );
\FSM_onehot_sm_state[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_sm_state_reg_n_0_[34]\,
      I1 => sm_stop,
      I2 => EC_tgt_dec_trig_reg_n_0,
      O => \FSM_onehot_sm_state[35]_i_1_n_0\
    );
\FSM_onehot_sm_state[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => sm_stop,
      I1 => \FSM_onehot_sm_state_reg_n_0_[36]\,
      I2 => \FSM_onehot_sm_state_reg_n_0_[35]\,
      O => \FSM_onehot_sm_state[36]_i_1_n_0\
    );
\FSM_onehot_sm_state[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_sm_state_reg_n_0_[2]\,
      I1 => sm_stop,
      I2 => end_trj_trig,
      O => \FSM_onehot_sm_state[3]_i_1_n_0\
    );
\FSM_onehot_sm_state[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => sm_stop,
      I1 => \FSM_onehot_sm_state_reg_n_0_[4]\,
      I2 => \FSM_onehot_sm_state_reg_n_0_[3]\,
      O => \FSM_onehot_sm_state[4]_i_1_n_0\
    );
\FSM_onehot_sm_state[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => slw_stps_trig,
      I1 => fst_stps_trig,
      I2 => \FSM_onehot_sm_state_reg_n_0_[0]\,
      O => \FSM_onehot_sm_state[5]_i_1_n_0\
    );
\FSM_onehot_sm_state[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => sm_stop,
      I1 => \FSM_onehot_sm_state_reg_n_0_[6]\,
      I2 => \FSM_onehot_sm_state_reg_n_0_[5]\,
      O => \FSM_onehot_sm_state[6]_i_1_n_0\
    );
\FSM_onehot_sm_state[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF100000"
    )
        port map (
      I0 => triangle_reg_n_0,
      I1 => EC_tgt_acc_trig_reg_n_0,
      I2 => acc_flg,
      I3 => \FSM_onehot_sm_state_reg_n_0_[6]\,
      I4 => sm_stop,
      O => \FSM_onehot_sm_state[7]_i_1_n_0\
    );
\FSM_onehot_sm_state[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => sm_stop,
      I1 => acc_flg,
      I2 => \FSM_onehot_sm_state_reg_n_0_[7]\,
      O => \FSM_onehot_sm_state[8]_i_1_n_0\
    );
\FSM_onehot_sm_state[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80808000"
    )
        port map (
      I0 => sm_stop,
      I1 => acc_flg,
      I2 => \cnt_o_loc_reg_n_0_[0]\,
      I3 => EC_tgt_acc_trig_reg_n_0,
      I4 => triangle_reg_n_0,
      O => \FSM_onehot_sm_state[9]_i_1_n_0\
    );
\FSM_onehot_sm_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \FSM_onehot_sm_state[0]_i_1_n_0\,
      Q => \FSM_onehot_sm_state_reg_n_0_[0]\,
      S => \^rst_200_out\
    );
\FSM_onehot_sm_state_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \FSM_onehot_sm_state[10]_i_1_n_0\,
      Q => \FSM_onehot_sm_state_reg_n_0_[10]\,
      R => \^rst_200_out\
    );
\FSM_onehot_sm_state_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \FSM_onehot_sm_state[11]_i_1_n_0\,
      Q => \FSM_onehot_sm_state_reg_n_0_[11]\,
      R => \^rst_200_out\
    );
\FSM_onehot_sm_state_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \FSM_onehot_sm_state[12]_i_1_n_0\,
      Q => \FSM_onehot_sm_state_reg_n_0_[12]\,
      R => \^rst_200_out\
    );
\FSM_onehot_sm_state_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \FSM_onehot_sm_state[13]_i_1_n_0\,
      Q => \FSM_onehot_sm_state_reg_n_0_[13]\,
      R => \^rst_200_out\
    );
\FSM_onehot_sm_state_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \FSM_onehot_sm_state[14]_i_1_n_0\,
      Q => \FSM_onehot_sm_state_reg_n_0_[14]\,
      R => \^rst_200_out\
    );
\FSM_onehot_sm_state_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \FSM_onehot_sm_state[15]_i_1_n_0\,
      Q => \FSM_onehot_sm_state_reg_n_0_[15]\,
      R => \^rst_200_out\
    );
\FSM_onehot_sm_state_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \FSM_onehot_sm_state[16]_i_1_n_0\,
      Q => \FSM_onehot_sm_state_reg_n_0_[16]\,
      R => \^rst_200_out\
    );
\FSM_onehot_sm_state_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \FSM_onehot_sm_state[17]_i_1_n_0\,
      Q => \FSM_onehot_sm_state_reg_n_0_[17]\,
      R => \^rst_200_out\
    );
\FSM_onehot_sm_state_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \FSM_onehot_sm_state[18]_i_1_n_0\,
      Q => \FSM_onehot_sm_state_reg_n_0_[18]\,
      R => \^rst_200_out\
    );
\FSM_onehot_sm_state_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \FSM_onehot_sm_state[19]_i_1_n_0\,
      Q => \FSM_onehot_sm_state_reg_n_0_[19]\,
      R => \^rst_200_out\
    );
\FSM_onehot_sm_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \FSM_onehot_sm_state[1]_i_1_n_0\,
      Q => \FSM_onehot_sm_state_reg_n_0_[1]\,
      R => \^rst_200_out\
    );
\FSM_onehot_sm_state_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \FSM_onehot_sm_state[20]_i_1_n_0\,
      Q => \FSM_onehot_sm_state_reg_n_0_[20]\,
      R => \^rst_200_out\
    );
\FSM_onehot_sm_state_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \FSM_onehot_sm_state[21]_i_1_n_0\,
      Q => \FSM_onehot_sm_state_reg_n_0_[21]\,
      R => \^rst_200_out\
    );
\FSM_onehot_sm_state_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \FSM_onehot_sm_state[22]_i_1_n_0\,
      Q => \FSM_onehot_sm_state_reg_n_0_[22]\,
      R => \^rst_200_out\
    );
\FSM_onehot_sm_state_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \FSM_onehot_sm_state[23]_i_1_n_0\,
      Q => \FSM_onehot_sm_state_reg_n_0_[23]\,
      R => \^rst_200_out\
    );
\FSM_onehot_sm_state_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \FSM_onehot_sm_state[24]_i_1_n_0\,
      Q => \FSM_onehot_sm_state_reg_n_0_[24]\,
      R => \^rst_200_out\
    );
\FSM_onehot_sm_state_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \FSM_onehot_sm_state[25]_i_1_n_0\,
      Q => \FSM_onehot_sm_state_reg_n_0_[25]\,
      R => \^rst_200_out\
    );
\FSM_onehot_sm_state_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \FSM_onehot_sm_state[26]_i_1_n_0\,
      Q => \FSM_onehot_sm_state_reg_n_0_[26]\,
      R => \^rst_200_out\
    );
\FSM_onehot_sm_state_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \FSM_onehot_sm_state[27]_i_1_n_0\,
      Q => \FSM_onehot_sm_state_reg_n_0_[27]\,
      R => \^rst_200_out\
    );
\FSM_onehot_sm_state_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \FSM_onehot_sm_state[28]_i_1_n_0\,
      Q => \FSM_onehot_sm_state_reg_n_0_[28]\,
      R => \^rst_200_out\
    );
\FSM_onehot_sm_state_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \FSM_onehot_sm_state[29]_i_1_n_0\,
      Q => \FSM_onehot_sm_state_reg_n_0_[29]\,
      R => \^rst_200_out\
    );
\FSM_onehot_sm_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \FSM_onehot_sm_state[2]_i_1_n_0\,
      Q => \FSM_onehot_sm_state_reg_n_0_[2]\,
      R => \^rst_200_out\
    );
\FSM_onehot_sm_state_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \FSM_onehot_sm_state[30]_i_1_n_0\,
      Q => \FSM_onehot_sm_state_reg_n_0_[30]\,
      R => \^rst_200_out\
    );
\FSM_onehot_sm_state_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \FSM_onehot_sm_state[31]_i_1_n_0\,
      Q => \FSM_onehot_sm_state_reg_n_0_[31]\,
      R => \^rst_200_out\
    );
\FSM_onehot_sm_state_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \FSM_onehot_sm_state[32]_i_1_n_0\,
      Q => \FSM_onehot_sm_state_reg_n_0_[32]\,
      R => \^rst_200_out\
    );
\FSM_onehot_sm_state_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \FSM_onehot_sm_state[33]_i_1_n_0\,
      Q => \FSM_onehot_sm_state_reg_n_0_[33]\,
      R => \^rst_200_out\
    );
\FSM_onehot_sm_state_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \FSM_onehot_sm_state[34]_i_1_n_0\,
      Q => \FSM_onehot_sm_state_reg_n_0_[34]\,
      R => \^rst_200_out\
    );
\FSM_onehot_sm_state_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \FSM_onehot_sm_state[35]_i_1_n_0\,
      Q => \FSM_onehot_sm_state_reg_n_0_[35]\,
      R => \^rst_200_out\
    );
\FSM_onehot_sm_state_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \FSM_onehot_sm_state[36]_i_1_n_0\,
      Q => \FSM_onehot_sm_state_reg_n_0_[36]\,
      R => \^rst_200_out\
    );
\FSM_onehot_sm_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \FSM_onehot_sm_state[3]_i_1_n_0\,
      Q => \FSM_onehot_sm_state_reg_n_0_[3]\,
      R => \^rst_200_out\
    );
\FSM_onehot_sm_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \FSM_onehot_sm_state[4]_i_1_n_0\,
      Q => \FSM_onehot_sm_state_reg_n_0_[4]\,
      R => \^rst_200_out\
    );
\FSM_onehot_sm_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \FSM_onehot_sm_state[5]_i_1_n_0\,
      Q => \FSM_onehot_sm_state_reg_n_0_[5]\,
      R => \^rst_200_out\
    );
\FSM_onehot_sm_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \FSM_onehot_sm_state[6]_i_1_n_0\,
      Q => \FSM_onehot_sm_state_reg_n_0_[6]\,
      R => \^rst_200_out\
    );
\FSM_onehot_sm_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \FSM_onehot_sm_state[7]_i_1_n_0\,
      Q => \FSM_onehot_sm_state_reg_n_0_[7]\,
      R => \^rst_200_out\
    );
\FSM_onehot_sm_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \FSM_onehot_sm_state[8]_i_1_n_0\,
      Q => acc_flg,
      R => \^rst_200_out\
    );
\FSM_onehot_sm_state_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \FSM_onehot_sm_state[9]_i_1_n_0\,
      Q => \FSM_onehot_sm_state_reg_n_0_[9]\,
      R => \^rst_200_out\
    );
acc_flg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => acc_flg,
      Q => acc_flg_reg_n_0,
      R => \^rst_200_out\
    );
aresetn_loc_200_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk200,
      CE => '1',
      D => aresetn,
      Q => aresetn_loc_200,
      R => '0'
    );
aresetn_loc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => aresetn,
      Q => aresetn_loc,
      R => '0'
    );
clock_loc_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333223333332230"
    )
        port map (
      I0 => \pulse_cnt[0]_i_3_n_0\,
      I1 => \^rst_200_out\,
      I2 => sm_start_reg_n_0,
      I3 => pulse_cnt_reg(3),
      I4 => \pulse_cnt[0]_i_4_n_0\,
      I5 => clock_loc_i_2_n_0,
      O => clock_loc_i_1_n_0
    );
clock_loc_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pulse_cnt_reg(12),
      I1 => pulse_cnt_reg(9),
      I2 => pulse_cnt_reg(8),
      I3 => pulse_cnt_reg(7),
      O => clock_loc_i_2_n_0
    );
clock_loc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => clock_loc_i_1_n_0,
      Q => \clock_loc__0\,
      R => '0'
    );
\cnt_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => steps_loc(0),
      Q => cnt_i(0),
      R => reset
    );
\cnt_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => steps_loc(10),
      Q => cnt_i(10),
      R => reset
    );
\cnt_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => steps_loc(11),
      Q => cnt_i(11),
      R => reset
    );
\cnt_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => steps_loc(12),
      Q => cnt_i(12),
      R => reset
    );
\cnt_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => steps_loc(13),
      Q => cnt_i(13),
      R => reset
    );
\cnt_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => steps_loc(14),
      Q => cnt_i(14),
      R => reset
    );
\cnt_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => steps_loc(15),
      Q => cnt_i(15),
      R => reset
    );
\cnt_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => steps_loc(16),
      Q => cnt_i(16),
      R => reset
    );
\cnt_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => steps_loc(17),
      Q => cnt_i(17),
      R => reset
    );
\cnt_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => steps_loc(18),
      Q => cnt_i(18),
      R => reset
    );
\cnt_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => steps_loc(19),
      Q => cnt_i(19),
      R => reset
    );
\cnt_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => steps_loc(1),
      Q => cnt_i(1),
      R => reset
    );
\cnt_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => steps_loc(20),
      Q => cnt_i(20),
      R => reset
    );
\cnt_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => steps_loc(21),
      Q => cnt_i(21),
      R => reset
    );
\cnt_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => steps_loc(22),
      Q => cnt_i(22),
      R => reset
    );
\cnt_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => steps_loc(23),
      Q => cnt_i(23),
      R => reset
    );
\cnt_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => steps_loc(24),
      Q => cnt_i(24),
      R => reset
    );
\cnt_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => steps_loc(25),
      Q => cnt_i(25),
      R => reset
    );
\cnt_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => steps_loc(26),
      Q => cnt_i(26),
      R => reset
    );
\cnt_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => steps_loc(27),
      Q => cnt_i(27),
      R => reset
    );
\cnt_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => steps_loc(28),
      Q => cnt_i(28),
      R => reset
    );
\cnt_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => steps_loc(29),
      Q => cnt_i(29),
      R => reset
    );
\cnt_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => steps_loc(2),
      Q => cnt_i(2),
      R => reset
    );
\cnt_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => steps_loc(30),
      Q => cnt_i(30),
      R => reset
    );
\cnt_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => steps_loc(31),
      Q => cnt_i(31),
      R => reset
    );
\cnt_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => steps_loc(3),
      Q => cnt_i(3),
      R => reset
    );
\cnt_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => steps_loc(4),
      Q => cnt_i(4),
      R => reset
    );
\cnt_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => steps_loc(5),
      Q => cnt_i(5),
      R => reset
    );
\cnt_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => steps_loc(6),
      Q => cnt_i(6),
      R => reset
    );
\cnt_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => steps_loc(7),
      Q => cnt_i(7),
      R => reset
    );
\cnt_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => steps_loc(8),
      Q => cnt_i(8),
      R => reset
    );
\cnt_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => steps_loc(9),
      Q => cnt_i(9),
      R => reset
    );
\cnt_o_loc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => cnt_o(0),
      Q => \cnt_o_loc_reg_n_0_[0]\,
      R => reset
    );
\cnt_o_loc_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => cnt_o(10),
      Q => L(9),
      R => reset
    );
\cnt_o_loc_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => cnt_o(11),
      Q => L(10),
      R => reset
    );
\cnt_o_loc_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => cnt_o(12),
      Q => L(11),
      R => reset
    );
\cnt_o_loc_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => cnt_o(13),
      Q => L(12),
      R => reset
    );
\cnt_o_loc_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => cnt_o(14),
      Q => L(13),
      R => reset
    );
\cnt_o_loc_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => cnt_o(15),
      Q => L(14),
      R => reset
    );
\cnt_o_loc_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => cnt_o(16),
      Q => L(15),
      R => reset
    );
\cnt_o_loc_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => cnt_o(17),
      Q => L(16),
      R => reset
    );
\cnt_o_loc_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => cnt_o(18),
      Q => L(17),
      R => reset
    );
\cnt_o_loc_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => cnt_o(19),
      Q => L(18),
      R => reset
    );
\cnt_o_loc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => cnt_o(1),
      Q => L(0),
      R => reset
    );
\cnt_o_loc_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => cnt_o(20),
      Q => L(19),
      R => reset
    );
\cnt_o_loc_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => cnt_o(21),
      Q => L(20),
      R => reset
    );
\cnt_o_loc_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => cnt_o(22),
      Q => L(21),
      R => reset
    );
\cnt_o_loc_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => cnt_o(23),
      Q => L(22),
      R => reset
    );
\cnt_o_loc_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => cnt_o(24),
      Q => L(23),
      R => reset
    );
\cnt_o_loc_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => cnt_o(25),
      Q => L(24),
      R => reset
    );
\cnt_o_loc_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => cnt_o(26),
      Q => L(25),
      R => reset
    );
\cnt_o_loc_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => cnt_o(27),
      Q => L(26),
      R => reset
    );
\cnt_o_loc_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => cnt_o(28),
      Q => L(27),
      R => reset
    );
\cnt_o_loc_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => cnt_o(29),
      Q => L(28),
      R => reset
    );
\cnt_o_loc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => cnt_o(2),
      Q => L(1),
      R => reset
    );
\cnt_o_loc_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => cnt_o(30),
      Q => L(29),
      R => reset
    );
\cnt_o_loc_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => cnt_o(31),
      Q => L(30),
      R => reset
    );
\cnt_o_loc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => cnt_o(3),
      Q => L(2),
      R => reset
    );
\cnt_o_loc_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => cnt_o(4),
      Q => L(3),
      R => reset
    );
\cnt_o_loc_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => cnt_o(5),
      Q => L(4),
      R => reset
    );
\cnt_o_loc_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => cnt_o(6),
      Q => L(5),
      R => reset
    );
\cnt_o_loc_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => cnt_o(7),
      Q => L(6),
      R => reset
    );
\cnt_o_loc_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => cnt_o(8),
      Q => L(7),
      R => reset
    );
\cnt_o_loc_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => cnt_o(9),
      Q => L(8),
      R => reset
    );
\dec_steps[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => sm_run_stp_reg_n_0,
      I1 => slw_stps_trig,
      I2 => fst_stps_trig,
      I3 => ramp_up_trig,
      I4 => \^rst_200_out\,
      O => \dec_steps[31]_i_1_n_0\
    );
\dec_steps[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => acc_flg_reg_n_0,
      I1 => sm_stop,
      I2 => EC_tgt_acc_trig_reg_n_0,
      I3 => ramp_up_trig,
      I4 => fst_stps_trig,
      I5 => slw_stps_trig,
      O => dec_steps
    );
\dec_steps_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => dec_steps,
      D => \minusOp_inferred__1/i__carry_n_7\,
      Q => \dec_steps_reg_n_0_[0]\,
      R => \dec_steps[31]_i_1_n_0\
    );
\dec_steps_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => dec_steps,
      D => \minusOp_inferred__1/i__carry__1_n_5\,
      Q => \dec_steps_reg_n_0_[10]\,
      R => \dec_steps[31]_i_1_n_0\
    );
\dec_steps_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => dec_steps,
      D => \minusOp_inferred__1/i__carry__1_n_4\,
      Q => \dec_steps_reg_n_0_[11]\,
      R => \dec_steps[31]_i_1_n_0\
    );
\dec_steps_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => dec_steps,
      D => \minusOp_inferred__1/i__carry__2_n_7\,
      Q => \dec_steps_reg_n_0_[12]\,
      R => \dec_steps[31]_i_1_n_0\
    );
\dec_steps_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => dec_steps,
      D => \minusOp_inferred__1/i__carry__2_n_6\,
      Q => \dec_steps_reg_n_0_[13]\,
      R => \dec_steps[31]_i_1_n_0\
    );
\dec_steps_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => dec_steps,
      D => \minusOp_inferred__1/i__carry__2_n_5\,
      Q => \dec_steps_reg_n_0_[14]\,
      R => \dec_steps[31]_i_1_n_0\
    );
\dec_steps_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => dec_steps,
      D => \minusOp_inferred__1/i__carry__2_n_4\,
      Q => \dec_steps_reg_n_0_[15]\,
      R => \dec_steps[31]_i_1_n_0\
    );
\dec_steps_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => dec_steps,
      D => \minusOp_inferred__1/i__carry__3_n_7\,
      Q => R(16),
      R => \dec_steps[31]_i_1_n_0\
    );
\dec_steps_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => dec_steps,
      D => \minusOp_inferred__1/i__carry__3_n_6\,
      Q => R(17),
      R => \dec_steps[31]_i_1_n_0\
    );
\dec_steps_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => dec_steps,
      D => \minusOp_inferred__1/i__carry__3_n_5\,
      Q => R(18),
      R => \dec_steps[31]_i_1_n_0\
    );
\dec_steps_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => dec_steps,
      D => \minusOp_inferred__1/i__carry__3_n_4\,
      Q => R(19),
      R => \dec_steps[31]_i_1_n_0\
    );
\dec_steps_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => dec_steps,
      D => \minusOp_inferred__1/i__carry_n_6\,
      Q => \dec_steps_reg_n_0_[1]\,
      R => \dec_steps[31]_i_1_n_0\
    );
\dec_steps_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => dec_steps,
      D => \minusOp_inferred__1/i__carry__4_n_7\,
      Q => R(20),
      R => \dec_steps[31]_i_1_n_0\
    );
\dec_steps_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => dec_steps,
      D => \minusOp_inferred__1/i__carry__4_n_6\,
      Q => R(21),
      R => \dec_steps[31]_i_1_n_0\
    );
\dec_steps_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => dec_steps,
      D => \minusOp_inferred__1/i__carry__4_n_5\,
      Q => R(22),
      R => \dec_steps[31]_i_1_n_0\
    );
\dec_steps_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => dec_steps,
      D => \minusOp_inferred__1/i__carry__4_n_4\,
      Q => R(23),
      R => \dec_steps[31]_i_1_n_0\
    );
\dec_steps_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => dec_steps,
      D => \minusOp_inferred__1/i__carry__5_n_7\,
      Q => R(24),
      R => \dec_steps[31]_i_1_n_0\
    );
\dec_steps_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => dec_steps,
      D => \minusOp_inferred__1/i__carry__5_n_6\,
      Q => R(25),
      R => \dec_steps[31]_i_1_n_0\
    );
\dec_steps_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => dec_steps,
      D => \minusOp_inferred__1/i__carry__5_n_5\,
      Q => R(26),
      R => \dec_steps[31]_i_1_n_0\
    );
\dec_steps_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => dec_steps,
      D => \minusOp_inferred__1/i__carry__5_n_4\,
      Q => R(27),
      R => \dec_steps[31]_i_1_n_0\
    );
\dec_steps_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => dec_steps,
      D => \minusOp_inferred__1/i__carry__6_n_7\,
      Q => R(28),
      R => \dec_steps[31]_i_1_n_0\
    );
\dec_steps_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => dec_steps,
      D => \minusOp_inferred__1/i__carry__6_n_6\,
      Q => R(29),
      R => \dec_steps[31]_i_1_n_0\
    );
\dec_steps_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => dec_steps,
      D => \minusOp_inferred__1/i__carry_n_5\,
      Q => \dec_steps_reg_n_0_[2]\,
      R => \dec_steps[31]_i_1_n_0\
    );
\dec_steps_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => dec_steps,
      D => \minusOp_inferred__1/i__carry__6_n_5\,
      Q => R(30),
      R => \dec_steps[31]_i_1_n_0\
    );
\dec_steps_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => dec_steps,
      D => \minusOp_inferred__1/i__carry__6_n_4\,
      Q => R(31),
      R => \dec_steps[31]_i_1_n_0\
    );
\dec_steps_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => dec_steps,
      D => \minusOp_inferred__1/i__carry_n_4\,
      Q => \dec_steps_reg_n_0_[3]\,
      R => \dec_steps[31]_i_1_n_0\
    );
\dec_steps_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => dec_steps,
      D => \minusOp_inferred__1/i__carry__0_n_7\,
      Q => \dec_steps_reg_n_0_[4]\,
      R => \dec_steps[31]_i_1_n_0\
    );
\dec_steps_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => dec_steps,
      D => \minusOp_inferred__1/i__carry__0_n_6\,
      Q => \dec_steps_reg_n_0_[5]\,
      R => \dec_steps[31]_i_1_n_0\
    );
\dec_steps_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => dec_steps,
      D => \minusOp_inferred__1/i__carry__0_n_5\,
      Q => \dec_steps_reg_n_0_[6]\,
      R => \dec_steps[31]_i_1_n_0\
    );
\dec_steps_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => dec_steps,
      D => \minusOp_inferred__1/i__carry__0_n_4\,
      Q => \dec_steps_reg_n_0_[7]\,
      R => \dec_steps[31]_i_1_n_0\
    );
\dec_steps_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => dec_steps,
      D => \minusOp_inferred__1/i__carry__1_n_7\,
      Q => \dec_steps_reg_n_0_[8]\,
      R => \dec_steps[31]_i_1_n_0\
    );
\dec_steps_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => dec_steps,
      D => \minusOp_inferred__1/i__carry__1_n_6\,
      Q => \dec_steps_reg_n_0_[9]\,
      R => \dec_steps[31]_i_1_n_0\
    );
dec_trj_trig_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => dec_trj_trig_msb,
      I1 => dec_trj_trig_lsb,
      I2 => sm_run_stp_reg_n_0,
      I3 => \^rst_200_out\,
      O => dec_trj_trig_i_1_n_0
    );
dec_trj_trig_lsb_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => sm_start_reg_n_0,
      D => eqOp0_out,
      Q => dec_trj_trig_lsb,
      R => init_EC_trig
    );
dec_trj_trig_msb_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => sm_start_reg_n_0,
      D => \eqOp_inferred__2/i__carry__0_n_2\,
      Q => dec_trj_trig_msb,
      R => init_EC_trig
    );
dec_trj_trig_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => dec_trj_trig_i_1_n_0,
      Q => dec_trj_trig,
      R => '0'
    );
dir_loc_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out_loc,
      D => dir,
      Q => dir_loc,
      R => reset
    );
\ena_load_loc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out_loc,
      D => ena_load(0),
      Q => \ena_load_loc_reg_n_0_[0]\,
      R => reset
    );
\ena_load_loc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out_loc,
      D => ena_load(1),
      Q => \ena_load_loc_reg_n_0_[1]\,
      R => reset
    );
\end_trj_reg[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_o_loc_reg_n_0_[0]\,
      O => \end_trj_reg[0]_i_1_n_0\
    );
\end_trj_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => \end_trj_reg[0]_i_1_n_0\,
      Q => \end_trj_reg_reg_n_0_[0]\,
      R => reset
    );
\end_trj_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => \minusOp_inferred__0/i__carry__1_n_6\,
      Q => \end_trj_reg_reg_n_0_[10]\,
      R => reset
    );
\end_trj_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => \minusOp_inferred__0/i__carry__1_n_5\,
      Q => \end_trj_reg_reg_n_0_[11]\,
      R => reset
    );
\end_trj_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => \minusOp_inferred__0/i__carry__1_n_4\,
      Q => \end_trj_reg_reg_n_0_[12]\,
      R => reset
    );
\end_trj_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => \minusOp_inferred__0/i__carry__2_n_7\,
      Q => \end_trj_reg_reg_n_0_[13]\,
      R => reset
    );
\end_trj_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => \minusOp_inferred__0/i__carry__2_n_6\,
      Q => \end_trj_reg_reg_n_0_[14]\,
      R => reset
    );
\end_trj_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => \minusOp_inferred__0/i__carry__2_n_5\,
      Q => \end_trj_reg_reg_n_0_[15]\,
      R => reset
    );
\end_trj_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => \minusOp_inferred__0/i__carry__2_n_4\,
      Q => R4_in(16),
      R => reset
    );
\end_trj_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => \minusOp_inferred__0/i__carry__3_n_7\,
      Q => R4_in(17),
      R => reset
    );
\end_trj_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => \minusOp_inferred__0/i__carry__3_n_6\,
      Q => R4_in(18),
      R => reset
    );
\end_trj_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => \minusOp_inferred__0/i__carry__3_n_5\,
      Q => R4_in(19),
      R => reset
    );
\end_trj_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => \minusOp_inferred__0/i__carry_n_7\,
      Q => \end_trj_reg_reg_n_0_[1]\,
      R => reset
    );
\end_trj_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => \minusOp_inferred__0/i__carry__3_n_4\,
      Q => R4_in(20),
      R => reset
    );
\end_trj_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => \minusOp_inferred__0/i__carry__4_n_7\,
      Q => R4_in(21),
      R => reset
    );
\end_trj_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => \minusOp_inferred__0/i__carry__4_n_6\,
      Q => R4_in(22),
      R => reset
    );
\end_trj_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => \minusOp_inferred__0/i__carry__4_n_5\,
      Q => R4_in(23),
      R => reset
    );
\end_trj_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => \minusOp_inferred__0/i__carry__4_n_4\,
      Q => R4_in(24),
      R => reset
    );
\end_trj_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => \minusOp_inferred__0/i__carry__5_n_7\,
      Q => R4_in(25),
      R => reset
    );
\end_trj_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => \minusOp_inferred__0/i__carry__5_n_6\,
      Q => R4_in(26),
      R => reset
    );
\end_trj_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => \minusOp_inferred__0/i__carry__5_n_5\,
      Q => R4_in(27),
      R => reset
    );
\end_trj_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => \minusOp_inferred__0/i__carry__5_n_4\,
      Q => R4_in(28),
      R => reset
    );
\end_trj_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => \minusOp_inferred__0/i__carry__6_n_7\,
      Q => R4_in(29),
      R => reset
    );
\end_trj_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => \minusOp_inferred__0/i__carry_n_6\,
      Q => \end_trj_reg_reg_n_0_[2]\,
      R => reset
    );
\end_trj_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => \minusOp_inferred__0/i__carry__6_n_6\,
      Q => R4_in(30),
      R => reset
    );
\end_trj_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => \minusOp_inferred__0/i__carry__6_n_5\,
      Q => R4_in(31),
      R => reset
    );
\end_trj_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => \minusOp_inferred__0/i__carry_n_5\,
      Q => \end_trj_reg_reg_n_0_[3]\,
      R => reset
    );
\end_trj_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => \minusOp_inferred__0/i__carry_n_4\,
      Q => \end_trj_reg_reg_n_0_[4]\,
      R => reset
    );
\end_trj_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => \minusOp_inferred__0/i__carry__0_n_7\,
      Q => \end_trj_reg_reg_n_0_[5]\,
      R => reset
    );
\end_trj_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => \minusOp_inferred__0/i__carry__0_n_6\,
      Q => \end_trj_reg_reg_n_0_[6]\,
      R => reset
    );
\end_trj_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => \minusOp_inferred__0/i__carry__0_n_5\,
      Q => \end_trj_reg_reg_n_0_[7]\,
      R => reset
    );
\end_trj_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => \minusOp_inferred__0/i__carry__0_n_4\,
      Q => \end_trj_reg_reg_n_0_[8]\,
      R => reset
    );
\end_trj_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => \minusOp_inferred__0/i__carry__1_n_7\,
      Q => \end_trj_reg_reg_n_0_[9]\,
      R => reset
    );
end_trj_trig_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => sm_start_reg_n_0,
      D => end_trj_trig,
      Q => end_trj_trig_d1,
      R => init_EC_trig
    );
end_trj_trig_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => end_trj_trig_msb,
      I1 => end_trj_trig_lsb,
      I2 => sm_run_stp_reg_n_0,
      I3 => \^rst_200_out\,
      O => end_trj_trig_i_1_n_0
    );
end_trj_trig_lsb_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => sm_start_reg_n_0,
      D => eqOp6_out,
      Q => end_trj_trig_lsb,
      R => init_EC_trig
    );
end_trj_trig_msb_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => sm_start_reg_n_0,
      D => eqOp5_out,
      Q => end_trj_trig_msb,
      R => init_EC_trig
    );
end_trj_trig_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => end_trj_trig_i_1_n_0,
      Q => end_trj_trig,
      R => '0'
    );
eqOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => eqOp_carry_n_0,
      CO(2) => eqOp_carry_n_1,
      CO(1) => eqOp_carry_n_2,
      CO(0) => eqOp_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_eqOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => eqOp_carry_i_1_n_0,
      S(2) => eqOp_carry_i_2_n_0,
      S(1) => eqOp_carry_i_3_n_0,
      S(0) => eqOp_carry_i_4_n_0
    );
\eqOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => eqOp_carry_n_0,
      CO(3) => eqOp,
      CO(2) => \eqOp_carry__0_n_1\,
      CO(1) => \eqOp_carry__0_n_2\,
      CO(0) => \eqOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \eqOp_carry__0_i_1_n_0\,
      S(2) => \eqOp_carry__0_i_2_n_0\,
      S(1) => \eqOp_carry__0_i_3_n_0\,
      S(0) => \eqOp_carry__0_i_4_n_0\
    );
\eqOp_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(21),
      I1 => EC_cnt(21),
      O => \eqOp_carry__0_i_1_n_0\
    );
\eqOp_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => EC_cnt(19),
      I1 => \^q\(19),
      I2 => EC_cnt(20),
      I3 => \^q\(20),
      I4 => EC_cnt(18),
      I5 => \^q\(18),
      O => \eqOp_carry__0_i_2_n_0\
    );
\eqOp_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => EC_cnt(16),
      I1 => \^q\(16),
      I2 => EC_cnt(17),
      I3 => \^q\(17),
      I4 => EC_cnt(15),
      I5 => \^q\(15),
      O => \eqOp_carry__0_i_3_n_0\
    );
\eqOp_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => EC_cnt(13),
      I1 => \^q\(13),
      I2 => EC_cnt(14),
      I3 => \^q\(14),
      I4 => EC_cnt(12),
      I5 => \^q\(12),
      O => \eqOp_carry__0_i_4_n_0\
    );
eqOp_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => EC_cnt(10),
      I1 => \^q\(10),
      I2 => EC_cnt(11),
      I3 => \^q\(11),
      I4 => EC_cnt(9),
      I5 => \^q\(9),
      O => eqOp_carry_i_1_n_0
    );
eqOp_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => EC_cnt(7),
      I1 => \^q\(7),
      I2 => EC_cnt(8),
      I3 => \^q\(8),
      I4 => EC_cnt(6),
      I5 => \^q\(6),
      O => eqOp_carry_i_2_n_0
    );
eqOp_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => EC_cnt(4),
      I1 => \^q\(4),
      I2 => EC_cnt(5),
      I3 => \^q\(5),
      I4 => EC_cnt(3),
      I5 => \^q\(3),
      O => eqOp_carry_i_3_n_0
    );
eqOp_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => EC_cnt(1),
      I1 => \^q\(1),
      I2 => EC_cnt(2),
      I3 => \^q\(2),
      I4 => EC_cnt(0),
      I5 => \^q\(0),
      O => eqOp_carry_i_4_n_0
    );
\eqOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \eqOp_inferred__0/i__carry_n_0\,
      CO(2) => \eqOp_inferred__0/i__carry_n_1\,
      CO(1) => \eqOp_inferred__0/i__carry_n_2\,
      CO(0) => \eqOp_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__3_n_0\,
      S(2) => \i__carry_i_2__3_n_0\,
      S(1) => \i__carry_i_3__3_n_0\,
      S(0) => \i__carry_i_4__2_n_0\
    );
\eqOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \eqOp_inferred__0/i__carry_n_0\,
      CO(3 downto 2) => \NLW_eqOp_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => eqOp2_out,
      CO(0) => \eqOp_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry__0_i_1__3_n_0\,
      S(0) => \i__carry__0_i_2__3_n_0\
    );
\eqOp_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \eqOp_inferred__1/i__carry_n_0\,
      CO(2) => \eqOp_inferred__1/i__carry_n_1\,
      CO(1) => \eqOp_inferred__1/i__carry_n_2\,
      CO(0) => \eqOp_inferred__1/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_inferred__1/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__4_n_0\,
      S(2) => \i__carry_i_2__4_n_0\,
      S(1) => \i__carry_i_3__4_n_0\,
      S(0) => \i__carry_i_4__3_n_0\
    );
\eqOp_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \eqOp_inferred__1/i__carry_n_0\,
      CO(3 downto 2) => \NLW_eqOp_inferred__1/i__carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => eqOp3_out,
      CO(0) => \eqOp_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_inferred__1/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry__0_i_1__4_n_0\,
      S(0) => \i__carry__0_i_2__4_n_0\
    );
\eqOp_inferred__2/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \eqOp_inferred__2/i__carry_n_0\,
      CO(2) => \eqOp_inferred__2/i__carry_n_1\,
      CO(1) => \eqOp_inferred__2/i__carry_n_2\,
      CO(0) => \eqOp_inferred__2/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_inferred__2/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__5_n_0\,
      S(2) => \i__carry_i_2__5_n_0\,
      S(1) => \i__carry_i_3__5_n_0\,
      S(0) => \i__carry_i_4__4_n_0\
    );
\eqOp_inferred__2/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \eqOp_inferred__2/i__carry_n_0\,
      CO(3 downto 2) => \NLW_eqOp_inferred__2/i__carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \eqOp_inferred__2/i__carry__0_n_2\,
      CO(0) => \eqOp_inferred__2/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_inferred__2/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry__0_i_1__5_n_0\,
      S(0) => \i__carry__0_i_2__5_n_0\
    );
\eqOp_inferred__3/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \eqOp_inferred__3/i__carry_n_0\,
      CO(2) => \eqOp_inferred__3/i__carry_n_1\,
      CO(1) => \eqOp_inferred__3/i__carry_n_2\,
      CO(0) => \eqOp_inferred__3/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_inferred__3/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__6_n_0\,
      S(2) => \i__carry_i_2__6_n_0\,
      S(1) => \i__carry_i_3__6_n_0\,
      S(0) => \i__carry_i_4__5_n_0\
    );
\eqOp_inferred__3/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \eqOp_inferred__3/i__carry_n_0\,
      CO(3 downto 2) => \NLW_eqOp_inferred__3/i__carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => eqOp0_out,
      CO(0) => \eqOp_inferred__3/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_inferred__3/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry__0_i_1__6_n_0\,
      S(0) => \i__carry__0_i_2__6_n_0\
    );
\eqOp_inferred__4/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \eqOp_inferred__4/i__carry_n_0\,
      CO(2) => \eqOp_inferred__4/i__carry_n_1\,
      CO(1) => \eqOp_inferred__4/i__carry_n_2\,
      CO(0) => \eqOp_inferred__4/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_inferred__4/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__7_n_0\,
      S(2) => \i__carry_i_2__7_n_0\,
      S(1) => \i__carry_i_3__7_n_0\,
      S(0) => \i__carry_i_4__6_n_0\
    );
\eqOp_inferred__4/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \eqOp_inferred__4/i__carry_n_0\,
      CO(3 downto 2) => \NLW_eqOp_inferred__4/i__carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => eqOp5_out,
      CO(0) => \eqOp_inferred__4/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_inferred__4/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry__0_i_1__7_n_0\,
      S(0) => \i__carry__0_i_2__7_n_0\
    );
\eqOp_inferred__5/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \eqOp_inferred__5/i__carry_n_0\,
      CO(2) => \eqOp_inferred__5/i__carry_n_1\,
      CO(1) => \eqOp_inferred__5/i__carry_n_2\,
      CO(0) => \eqOp_inferred__5/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_inferred__5/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__8_n_0\,
      S(2) => \i__carry_i_2__8_n_0\,
      S(1) => \i__carry_i_3__8_n_0\,
      S(0) => \i__carry_i_4__7_n_0\
    );
\eqOp_inferred__5/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \eqOp_inferred__5/i__carry_n_0\,
      CO(3 downto 2) => \NLW_eqOp_inferred__5/i__carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => eqOp6_out,
      CO(0) => \eqOp_inferred__5/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_inferred__5/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry__0_i_1__9_n_0\,
      S(0) => \i__carry__0_i_2__8_n_0\
    );
fst_stps_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => fst_stps_loc,
      Q => fst_stps_d1,
      R => \^rst_200_out\
    );
fst_stps_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => fst_stps_d1,
      Q => fst_stps_d2,
      R => \^rst_200_out\
    );
fst_stps_loc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => fst_stps,
      Q => fst_stps_loc,
      R => reset
    );
fst_stps_trig_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => fst_stps_d1,
      I1 => fst_stps_d2,
      O => fst_stps_trig0
    );
fst_stps_trig_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => fst_stps_trig0,
      Q => fst_stps_trig,
      R => \^rst_200_out\
    );
gtOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => gtOp_carry_n_0,
      CO(2) => gtOp_carry_n_1,
      CO(1) => gtOp_carry_n_2,
      CO(0) => gtOp_carry_n_3,
      CYINIT => '0',
      DI(3) => gtOp_carry_i_1_n_0,
      DI(2) => gtOp_carry_i_2_n_0,
      DI(1) => gtOp_carry_i_3_n_0,
      DI(0) => gtOp_carry_i_4_n_0,
      O(3 downto 0) => NLW_gtOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => gtOp_carry_i_5_n_0,
      S(2) => gtOp_carry_i_6_n_0,
      S(1) => gtOp_carry_i_7_n_0,
      S(0) => gtOp_carry_i_8_n_0
    );
\gtOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => gtOp_carry_n_0,
      CO(3) => \gtOp_carry__0_n_0\,
      CO(2) => \gtOp_carry__0_n_1\,
      CO(1) => \gtOp_carry__0_n_2\,
      CO(0) => \gtOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \gtOp_carry__0_i_1_n_0\,
      DI(2) => \gtOp_carry__0_i_2_n_0\,
      DI(1) => \gtOp_carry__0_i_3_n_0\,
      DI(0) => \gtOp_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_gtOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \gtOp_carry__0_i_5_n_0\,
      S(2) => \gtOp_carry__0_i_6_n_0\,
      S(1) => \gtOp_carry__0_i_7_n_0\,
      S(0) => \gtOp_carry__0_i_8_n_0\
    );
\gtOp_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q\(14),
      I1 => init_EC_loc(14),
      I2 => init_EC_loc(15),
      I3 => \^q\(15),
      O => \gtOp_carry__0_i_1_n_0\
    );
\gtOp_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q\(12),
      I1 => init_EC_loc(12),
      I2 => init_EC_loc(13),
      I3 => \^q\(13),
      O => \gtOp_carry__0_i_2_n_0\
    );
\gtOp_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q\(10),
      I1 => init_EC_loc(10),
      I2 => init_EC_loc(11),
      I3 => \^q\(11),
      O => \gtOp_carry__0_i_3_n_0\
    );
\gtOp_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q\(8),
      I1 => init_EC_loc(8),
      I2 => init_EC_loc(9),
      I3 => \^q\(9),
      O => \gtOp_carry__0_i_4_n_0\
    );
\gtOp_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => init_EC_loc(15),
      I1 => \^q\(15),
      I2 => \^q\(14),
      I3 => init_EC_loc(14),
      O => \gtOp_carry__0_i_5_n_0\
    );
\gtOp_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => init_EC_loc(13),
      I1 => \^q\(13),
      I2 => \^q\(12),
      I3 => init_EC_loc(12),
      O => \gtOp_carry__0_i_6_n_0\
    );
\gtOp_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => init_EC_loc(11),
      I1 => \^q\(11),
      I2 => \^q\(10),
      I3 => init_EC_loc(10),
      O => \gtOp_carry__0_i_7_n_0\
    );
\gtOp_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => init_EC_loc(9),
      I1 => \^q\(9),
      I2 => \^q\(8),
      I3 => init_EC_loc(8),
      O => \gtOp_carry__0_i_8_n_0\
    );
\gtOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gtOp_carry__0_n_0\,
      CO(3) => \NLW_gtOp_carry__1_CO_UNCONNECTED\(3),
      CO(2) => gtOp,
      CO(1) => \gtOp_carry__1_n_2\,
      CO(0) => \gtOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \gtOp_carry__1_i_1_n_0\,
      DI(1) => \gtOp_carry__1_i_2_n_0\,
      DI(0) => \gtOp_carry__1_i_3_n_0\,
      O(3 downto 0) => \NLW_gtOp_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \gtOp_carry__1_i_4_n_0\,
      S(1) => \gtOp_carry__1_i_5_n_0\,
      S(0) => \gtOp_carry__1_i_6_n_0\
    );
\gtOp_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q\(20),
      I1 => init_EC_loc(20),
      I2 => init_EC_loc(21),
      I3 => \^q\(21),
      O => \gtOp_carry__1_i_1_n_0\
    );
\gtOp_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q\(18),
      I1 => init_EC_loc(18),
      I2 => init_EC_loc(19),
      I3 => \^q\(19),
      O => \gtOp_carry__1_i_2_n_0\
    );
\gtOp_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q\(16),
      I1 => init_EC_loc(16),
      I2 => init_EC_loc(17),
      I3 => \^q\(17),
      O => \gtOp_carry__1_i_3_n_0\
    );
\gtOp_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => init_EC_loc(21),
      I1 => \^q\(21),
      I2 => \^q\(20),
      I3 => init_EC_loc(20),
      O => \gtOp_carry__1_i_4_n_0\
    );
\gtOp_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => init_EC_loc(19),
      I1 => \^q\(19),
      I2 => \^q\(18),
      I3 => init_EC_loc(18),
      O => \gtOp_carry__1_i_5_n_0\
    );
\gtOp_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => init_EC_loc(17),
      I1 => \^q\(17),
      I2 => \^q\(16),
      I3 => init_EC_loc(16),
      O => \gtOp_carry__1_i_6_n_0\
    );
gtOp_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q\(6),
      I1 => init_EC_loc(6),
      I2 => init_EC_loc(7),
      I3 => \^q\(7),
      O => gtOp_carry_i_1_n_0
    );
gtOp_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q\(4),
      I1 => init_EC_loc(4),
      I2 => init_EC_loc(5),
      I3 => \^q\(5),
      O => gtOp_carry_i_2_n_0
    );
gtOp_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q\(2),
      I1 => init_EC_loc(2),
      I2 => init_EC_loc(3),
      I3 => \^q\(3),
      O => gtOp_carry_i_3_n_0
    );
gtOp_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q\(0),
      I1 => init_EC_loc(0),
      I2 => init_EC_loc(1),
      I3 => \^q\(1),
      O => gtOp_carry_i_4_n_0
    );
gtOp_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => init_EC_loc(7),
      I1 => \^q\(7),
      I2 => \^q\(6),
      I3 => init_EC_loc(6),
      O => gtOp_carry_i_5_n_0
    );
gtOp_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => init_EC_loc(5),
      I1 => \^q\(5),
      I2 => \^q\(4),
      I3 => init_EC_loc(4),
      O => gtOp_carry_i_6_n_0
    );
gtOp_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => init_EC_loc(3),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => init_EC_loc(2),
      O => gtOp_carry_i_7_n_0
    );
gtOp_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => init_EC_loc(1),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => init_EC_loc(0),
      O => gtOp_carry_i_8_n_0
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => tgt_EC_loc(14),
      I1 => \^q\(14),
      I2 => tgt_EC_loc(15),
      I3 => \^q\(15),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sm_ACC_pos(7),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(7),
      O => \i__carry__0_i_1__1_n_0\
    );
\i__carry__0_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tgt_EC_loc(21),
      I1 => \^q\(21),
      O => \i__carry__0_i_1__2_n_0\
    );
\i__carry__0_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R1_in(31),
      I1 => \steps_reg_n_0_[31]\,
      O => \i__carry__0_i_1__3_n_0\
    );
\i__carry__0_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mid_trj_reg_reg_n_0_[15]\,
      I1 => \steps_reg_n_0_[15]\,
      O => \i__carry__0_i_1__4_n_0\
    );
\i__carry__0_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R(31),
      I1 => \steps_reg_n_0_[31]\,
      O => \i__carry__0_i_1__5_n_0\
    );
\i__carry__0_i_1__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \dec_steps_reg_n_0_[15]\,
      I1 => \steps_reg_n_0_[15]\,
      O => \i__carry__0_i_1__6_n_0\
    );
\i__carry__0_i_1__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R4_in(31),
      I1 => \steps_reg_n_0_[31]\,
      O => \i__carry__0_i_1__7_n_0\
    );
\i__carry__0_i_1__8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \end_trj_reg_reg_n_0_[7]\,
      I1 => \steps_reg_n_0_[7]\,
      O => \i__carry__0_i_1__8_n_0\
    );
\i__carry__0_i_1__9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \end_trj_reg_reg_n_0_[15]\,
      I1 => \steps_reg_n_0_[15]\,
      O => \i__carry__0_i_1__9_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => tgt_EC_loc(12),
      I1 => \^q\(12),
      I2 => tgt_EC_loc(13),
      I3 => \^q\(13),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(19),
      I1 => tgt_EC_loc(19),
      I2 => \^q\(18),
      I3 => tgt_EC_loc(18),
      I4 => \^q\(20),
      I5 => tgt_EC_loc(20),
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_2__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sm_ACC_pos(6),
      O => \i__carry__0_i_2__1_n_0\
    );
\i__carry__0_i_2__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(6),
      O => \i__carry__0_i_2__2_n_0\
    );
\i__carry__0_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \steps_reg_n_0_[28]\,
      I1 => R1_in(28),
      I2 => R1_in(30),
      I3 => \steps_reg_n_0_[30]\,
      I4 => R1_in(29),
      I5 => \steps_reg_n_0_[29]\,
      O => \i__carry__0_i_2__3_n_0\
    );
\i__carry__0_i_2__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \steps_reg_n_0_[12]\,
      I1 => \mid_trj_reg_reg_n_0_[12]\,
      I2 => \mid_trj_reg_reg_n_0_[14]\,
      I3 => \steps_reg_n_0_[14]\,
      I4 => \mid_trj_reg_reg_n_0_[13]\,
      I5 => \steps_reg_n_0_[13]\,
      O => \i__carry__0_i_2__4_n_0\
    );
\i__carry__0_i_2__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \steps_reg_n_0_[28]\,
      I1 => R(28),
      I2 => R(30),
      I3 => \steps_reg_n_0_[30]\,
      I4 => R(29),
      I5 => \steps_reg_n_0_[29]\,
      O => \i__carry__0_i_2__5_n_0\
    );
\i__carry__0_i_2__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \steps_reg_n_0_[12]\,
      I1 => \dec_steps_reg_n_0_[12]\,
      I2 => \dec_steps_reg_n_0_[14]\,
      I3 => \steps_reg_n_0_[14]\,
      I4 => \dec_steps_reg_n_0_[13]\,
      I5 => \steps_reg_n_0_[13]\,
      O => \i__carry__0_i_2__6_n_0\
    );
\i__carry__0_i_2__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \steps_reg_n_0_[28]\,
      I1 => R4_in(28),
      I2 => R4_in(30),
      I3 => \steps_reg_n_0_[30]\,
      I4 => R4_in(29),
      I5 => \steps_reg_n_0_[29]\,
      O => \i__carry__0_i_2__7_n_0\
    );
\i__carry__0_i_2__8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \steps_reg_n_0_[12]\,
      I1 => \end_trj_reg_reg_n_0_[12]\,
      I2 => \end_trj_reg_reg_n_0_[14]\,
      I3 => \steps_reg_n_0_[14]\,
      I4 => \end_trj_reg_reg_n_0_[13]\,
      I5 => \steps_reg_n_0_[13]\,
      O => \i__carry__0_i_2__8_n_0\
    );
\i__carry__0_i_2__9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \end_trj_reg_reg_n_0_[6]\,
      I1 => \steps_reg_n_0_[6]\,
      O => \i__carry__0_i_2__9_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => tgt_EC_loc(10),
      I1 => \^q\(10),
      I2 => tgt_EC_loc(11),
      I3 => \^q\(11),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => tgt_EC_loc(15),
      I1 => \^q\(15),
      I2 => tgt_EC_loc(17),
      I3 => \^q\(17),
      I4 => \^q\(16),
      I5 => tgt_EC_loc(16),
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_3__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sm_ACC_pos(5),
      O => \i__carry__0_i_3__1_n_0\
    );
\i__carry__0_i_3__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(5),
      O => \i__carry__0_i_3__2_n_0\
    );
\i__carry__0_i_3__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \end_trj_reg_reg_n_0_[5]\,
      I1 => \steps_reg_n_0_[5]\,
      O => \i__carry__0_i_3__3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => tgt_EC_loc(8),
      I1 => \^q\(8),
      I2 => tgt_EC_loc(9),
      I3 => \^q\(9),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(13),
      I1 => tgt_EC_loc(13),
      I2 => \^q\(12),
      I3 => tgt_EC_loc(12),
      I4 => \^q\(14),
      I5 => tgt_EC_loc(14),
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__0_i_4__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sm_ACC_pos(4),
      O => \i__carry__0_i_4__1_n_0\
    );
\i__carry__0_i_4__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(4),
      O => \i__carry__0_i_4__2_n_0\
    );
\i__carry__0_i_4__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \end_trj_reg_reg_n_0_[4]\,
      I1 => \steps_reg_n_0_[4]\,
      O => \i__carry__0_i_4__3_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(15),
      I1 => tgt_EC_loc(15),
      I2 => \^q\(14),
      I3 => tgt_EC_loc(14),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => tgt_EC_loc(12),
      I1 => \^q\(12),
      I2 => tgt_EC_loc(13),
      I3 => \^q\(13),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(10),
      I1 => tgt_EC_loc(10),
      I2 => \^q\(11),
      I3 => tgt_EC_loc(11),
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(9),
      I1 => tgt_EC_loc(9),
      I2 => \^q\(8),
      I3 => tgt_EC_loc(8),
      O => \i__carry__0_i_8_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => tgt_EC_loc(20),
      I1 => \^q\(20),
      I2 => tgt_EC_loc(21),
      I3 => \^q\(21),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sm_ACC_pos(11),
      O => \i__carry__1_i_1__0_n_0\
    );
\i__carry__1_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(11),
      O => \i__carry__1_i_1__1_n_0\
    );
\i__carry__1_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \end_trj_reg_reg_n_0_[11]\,
      I1 => \steps_reg_n_0_[11]\,
      O => \i__carry__1_i_1__2_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => tgt_EC_loc(18),
      I1 => \^q\(18),
      I2 => tgt_EC_loc(19),
      I3 => \^q\(19),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sm_ACC_pos(10),
      O => \i__carry__1_i_2__0_n_0\
    );
\i__carry__1_i_2__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(10),
      O => \i__carry__1_i_2__1_n_0\
    );
\i__carry__1_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \end_trj_reg_reg_n_0_[10]\,
      I1 => \steps_reg_n_0_[10]\,
      O => \i__carry__1_i_2__2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => tgt_EC_loc(16),
      I1 => \^q\(16),
      I2 => tgt_EC_loc(17),
      I3 => \^q\(17),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sm_ACC_pos(9),
      O => \i__carry__1_i_3__0_n_0\
    );
\i__carry__1_i_3__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(9),
      O => \i__carry__1_i_3__1_n_0\
    );
\i__carry__1_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \end_trj_reg_reg_n_0_[9]\,
      I1 => \steps_reg_n_0_[9]\,
      O => \i__carry__1_i_3__2_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => tgt_EC_loc(20),
      I1 => \^q\(20),
      I2 => tgt_EC_loc(21),
      I3 => \^q\(21),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sm_ACC_pos(8),
      O => \i__carry__1_i_4__0_n_0\
    );
\i__carry__1_i_4__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(8),
      O => \i__carry__1_i_4__1_n_0\
    );
\i__carry__1_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \end_trj_reg_reg_n_0_[8]\,
      I1 => \steps_reg_n_0_[8]\,
      O => \i__carry__1_i_4__2_n_0\
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => tgt_EC_loc(18),
      I1 => \^q\(18),
      I2 => tgt_EC_loc(19),
      I3 => \^q\(19),
      O => \i__carry__1_i_5_n_0\
    );
\i__carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(16),
      I1 => tgt_EC_loc(16),
      I2 => \^q\(17),
      I3 => tgt_EC_loc(17),
      O => \i__carry__1_i_6_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sm_ACC_pos(15),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(15),
      O => \i__carry__2_i_1__0_n_0\
    );
\i__carry__2_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \end_trj_reg_reg_n_0_[15]\,
      I1 => \steps_reg_n_0_[15]\,
      O => \i__carry__2_i_1__1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sm_ACC_pos(14),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(14),
      O => \i__carry__2_i_2__0_n_0\
    );
\i__carry__2_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \end_trj_reg_reg_n_0_[14]\,
      I1 => \steps_reg_n_0_[14]\,
      O => \i__carry__2_i_2__1_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sm_ACC_pos(13),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(13),
      O => \i__carry__2_i_3__0_n_0\
    );
\i__carry__2_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \end_trj_reg_reg_n_0_[13]\,
      I1 => \steps_reg_n_0_[13]\,
      O => \i__carry__2_i_3__1_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sm_ACC_pos(12),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__2_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(12),
      O => \i__carry__2_i_4__0_n_0\
    );
\i__carry__2_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \end_trj_reg_reg_n_0_[12]\,
      I1 => \steps_reg_n_0_[12]\,
      O => \i__carry__2_i_4__1_n_0\
    );
\i__carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sm_ACC_pos(19),
      O => \i__carry__3_i_1_n_0\
    );
\i__carry__3_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(19),
      O => \i__carry__3_i_1__0_n_0\
    );
\i__carry__3_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R4_in(19),
      I1 => \steps_reg_n_0_[19]\,
      O => \i__carry__3_i_1__1_n_0\
    );
\i__carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sm_ACC_pos(18),
      O => \i__carry__3_i_2_n_0\
    );
\i__carry__3_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(18),
      O => \i__carry__3_i_2__0_n_0\
    );
\i__carry__3_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R4_in(18),
      I1 => \steps_reg_n_0_[18]\,
      O => \i__carry__3_i_2__1_n_0\
    );
\i__carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sm_ACC_pos(17),
      O => \i__carry__3_i_3_n_0\
    );
\i__carry__3_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(17),
      O => \i__carry__3_i_3__0_n_0\
    );
\i__carry__3_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R4_in(17),
      I1 => \steps_reg_n_0_[17]\,
      O => \i__carry__3_i_3__1_n_0\
    );
\i__carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sm_ACC_pos(16),
      O => \i__carry__3_i_4_n_0\
    );
\i__carry__3_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(16),
      O => \i__carry__3_i_4__0_n_0\
    );
\i__carry__3_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R4_in(16),
      I1 => \steps_reg_n_0_[16]\,
      O => \i__carry__3_i_4__1_n_0\
    );
\i__carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sm_ACC_pos(21),
      O => \i__carry__4_i_1_n_0\
    );
\i__carry__4_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(23),
      O => \i__carry__4_i_1__0_n_0\
    );
\i__carry__4_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R4_in(23),
      I1 => \steps_reg_n_0_[23]\,
      O => \i__carry__4_i_1__1_n_0\
    );
\i__carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sm_ACC_pos(20),
      O => \i__carry__4_i_2_n_0\
    );
\i__carry__4_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(22),
      O => \i__carry__4_i_2__0_n_0\
    );
\i__carry__4_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R4_in(22),
      I1 => \steps_reg_n_0_[22]\,
      O => \i__carry__4_i_2__1_n_0\
    );
\i__carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(21),
      O => \i__carry__4_i_3_n_0\
    );
\i__carry__4_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R4_in(21),
      I1 => \steps_reg_n_0_[21]\,
      O => \i__carry__4_i_3__0_n_0\
    );
\i__carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(20),
      O => \i__carry__4_i_4_n_0\
    );
\i__carry__4_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R4_in(20),
      I1 => \steps_reg_n_0_[20]\,
      O => \i__carry__4_i_4__0_n_0\
    );
\i__carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(27),
      O => \i__carry__5_i_1_n_0\
    );
\i__carry__5_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R4_in(27),
      I1 => \steps_reg_n_0_[27]\,
      O => \i__carry__5_i_1__0_n_0\
    );
\i__carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(26),
      O => \i__carry__5_i_2_n_0\
    );
\i__carry__5_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R4_in(26),
      I1 => \steps_reg_n_0_[26]\,
      O => \i__carry__5_i_2__0_n_0\
    );
\i__carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(25),
      O => \i__carry__5_i_3_n_0\
    );
\i__carry__5_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R4_in(25),
      I1 => \steps_reg_n_0_[25]\,
      O => \i__carry__5_i_3__0_n_0\
    );
\i__carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(24),
      O => \i__carry__5_i_4_n_0\
    );
\i__carry__5_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R4_in(24),
      I1 => \steps_reg_n_0_[24]\,
      O => \i__carry__5_i_4__0_n_0\
    );
\i__carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(30),
      O => \i__carry__6_i_1_n_0\
    );
\i__carry__6_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R4_in(31),
      I1 => \steps_reg_n_0_[31]\,
      O => \i__carry__6_i_1__0_n_0\
    );
\i__carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(29),
      O => \i__carry__6_i_2_n_0\
    );
\i__carry__6_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R4_in(30),
      I1 => \steps_reg_n_0_[30]\,
      O => \i__carry__6_i_2__0_n_0\
    );
\i__carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(28),
      O => \i__carry__6_i_3_n_0\
    );
\i__carry__6_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R4_in(29),
      I1 => \steps_reg_n_0_[29]\,
      O => \i__carry__6_i_3__0_n_0\
    );
\i__carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => R4_in(28),
      I1 => \steps_reg_n_0_[28]\,
      O => \i__carry__6_i_4_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => tgt_EC_loc(6),
      I1 => \^q\(6),
      I2 => tgt_EC_loc(7),
      I3 => \^q\(7),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => tgt_EC_loc(11),
      I1 => \^q\(11),
      I2 => tgt_EC_loc(10),
      I3 => \^q\(10),
      I4 => \^q\(9),
      I5 => tgt_EC_loc(9),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(3),
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sm_ACC_pos(3),
      O => \i__carry_i_1__2_n_0\
    );
\i__carry_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \steps_reg_n_0_[25]\,
      I1 => R1_in(25),
      I2 => R1_in(27),
      I3 => \steps_reg_n_0_[27]\,
      I4 => R1_in(26),
      I5 => \steps_reg_n_0_[26]\,
      O => \i__carry_i_1__3_n_0\
    );
\i__carry_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \steps_reg_n_0_[9]\,
      I1 => \mid_trj_reg_reg_n_0_[9]\,
      I2 => \mid_trj_reg_reg_n_0_[11]\,
      I3 => \steps_reg_n_0_[11]\,
      I4 => \mid_trj_reg_reg_n_0_[10]\,
      I5 => \steps_reg_n_0_[10]\,
      O => \i__carry_i_1__4_n_0\
    );
\i__carry_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \steps_reg_n_0_[25]\,
      I1 => R(25),
      I2 => R(27),
      I3 => \steps_reg_n_0_[27]\,
      I4 => R(26),
      I5 => \steps_reg_n_0_[26]\,
      O => \i__carry_i_1__5_n_0\
    );
\i__carry_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \steps_reg_n_0_[9]\,
      I1 => \dec_steps_reg_n_0_[9]\,
      I2 => \dec_steps_reg_n_0_[11]\,
      I3 => \steps_reg_n_0_[11]\,
      I4 => \dec_steps_reg_n_0_[10]\,
      I5 => \steps_reg_n_0_[10]\,
      O => \i__carry_i_1__6_n_0\
    );
\i__carry_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \steps_reg_n_0_[25]\,
      I1 => R4_in(25),
      I2 => R4_in(27),
      I3 => \steps_reg_n_0_[27]\,
      I4 => R4_in(26),
      I5 => \steps_reg_n_0_[26]\,
      O => \i__carry_i_1__7_n_0\
    );
\i__carry_i_1__8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \steps_reg_n_0_[9]\,
      I1 => \end_trj_reg_reg_n_0_[9]\,
      I2 => \end_trj_reg_reg_n_0_[11]\,
      I3 => \steps_reg_n_0_[11]\,
      I4 => \end_trj_reg_reg_n_0_[10]\,
      I5 => \steps_reg_n_0_[10]\,
      O => \i__carry_i_1__8_n_0\
    );
\i__carry_i_1__9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \end_trj_reg_reg_n_0_[3]\,
      I1 => \steps_reg_n_0_[3]\,
      O => \i__carry_i_1__9_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => tgt_EC_loc(4),
      I1 => \^q\(4),
      I2 => tgt_EC_loc(5),
      I3 => \^q\(5),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(7),
      I1 => tgt_EC_loc(7),
      I2 => \^q\(6),
      I3 => tgt_EC_loc(6),
      I4 => \^q\(8),
      I5 => tgt_EC_loc(8),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(2),
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_2__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sm_ACC_pos(2),
      O => \i__carry_i_2__2_n_0\
    );
\i__carry_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \steps_reg_n_0_[22]\,
      I1 => R1_in(22),
      I2 => R1_in(24),
      I3 => \steps_reg_n_0_[24]\,
      I4 => R1_in(23),
      I5 => \steps_reg_n_0_[23]\,
      O => \i__carry_i_2__3_n_0\
    );
\i__carry_i_2__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \steps_reg_n_0_[6]\,
      I1 => \mid_trj_reg_reg_n_0_[6]\,
      I2 => \mid_trj_reg_reg_n_0_[8]\,
      I3 => \steps_reg_n_0_[8]\,
      I4 => \mid_trj_reg_reg_n_0_[7]\,
      I5 => \steps_reg_n_0_[7]\,
      O => \i__carry_i_2__4_n_0\
    );
\i__carry_i_2__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \steps_reg_n_0_[22]\,
      I1 => R(22),
      I2 => R(24),
      I3 => \steps_reg_n_0_[24]\,
      I4 => R(23),
      I5 => \steps_reg_n_0_[23]\,
      O => \i__carry_i_2__5_n_0\
    );
\i__carry_i_2__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \steps_reg_n_0_[6]\,
      I1 => \dec_steps_reg_n_0_[6]\,
      I2 => \dec_steps_reg_n_0_[8]\,
      I3 => \steps_reg_n_0_[8]\,
      I4 => \dec_steps_reg_n_0_[7]\,
      I5 => \steps_reg_n_0_[7]\,
      O => \i__carry_i_2__6_n_0\
    );
\i__carry_i_2__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \steps_reg_n_0_[22]\,
      I1 => R4_in(22),
      I2 => R4_in(24),
      I3 => \steps_reg_n_0_[24]\,
      I4 => R4_in(23),
      I5 => \steps_reg_n_0_[23]\,
      O => \i__carry_i_2__7_n_0\
    );
\i__carry_i_2__8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \steps_reg_n_0_[6]\,
      I1 => \end_trj_reg_reg_n_0_[6]\,
      I2 => \end_trj_reg_reg_n_0_[8]\,
      I3 => \steps_reg_n_0_[8]\,
      I4 => \end_trj_reg_reg_n_0_[7]\,
      I5 => \steps_reg_n_0_[7]\,
      O => \i__carry_i_2__8_n_0\
    );
\i__carry_i_2__9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \end_trj_reg_reg_n_0_[2]\,
      I1 => \steps_reg_n_0_[2]\,
      O => \i__carry_i_2__9_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => tgt_EC_loc(2),
      I1 => \^q\(2),
      I2 => tgt_EC_loc(3),
      I3 => \^q\(3),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => tgt_EC_loc(5),
      I1 => \^q\(5),
      I2 => tgt_EC_loc(4),
      I3 => \^q\(4),
      I4 => \^q\(3),
      I5 => tgt_EC_loc(3),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(1),
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_3__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sm_ACC_pos(1),
      O => \i__carry_i_3__2_n_0\
    );
\i__carry_i_3__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \steps_reg_n_0_[19]\,
      I1 => R1_in(19),
      I2 => R1_in(21),
      I3 => \steps_reg_n_0_[21]\,
      I4 => R1_in(20),
      I5 => \steps_reg_n_0_[20]\,
      O => \i__carry_i_3__3_n_0\
    );
\i__carry_i_3__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \steps_reg_n_0_[3]\,
      I1 => \mid_trj_reg_reg_n_0_[3]\,
      I2 => \mid_trj_reg_reg_n_0_[5]\,
      I3 => \steps_reg_n_0_[5]\,
      I4 => \mid_trj_reg_reg_n_0_[4]\,
      I5 => \steps_reg_n_0_[4]\,
      O => \i__carry_i_3__4_n_0\
    );
\i__carry_i_3__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \steps_reg_n_0_[19]\,
      I1 => R(19),
      I2 => R(21),
      I3 => \steps_reg_n_0_[21]\,
      I4 => R(20),
      I5 => \steps_reg_n_0_[20]\,
      O => \i__carry_i_3__5_n_0\
    );
\i__carry_i_3__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \steps_reg_n_0_[3]\,
      I1 => \dec_steps_reg_n_0_[3]\,
      I2 => \dec_steps_reg_n_0_[5]\,
      I3 => \steps_reg_n_0_[5]\,
      I4 => \dec_steps_reg_n_0_[4]\,
      I5 => \steps_reg_n_0_[4]\,
      O => \i__carry_i_3__6_n_0\
    );
\i__carry_i_3__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \steps_reg_n_0_[19]\,
      I1 => R4_in(19),
      I2 => R4_in(21),
      I3 => \steps_reg_n_0_[21]\,
      I4 => R4_in(20),
      I5 => \steps_reg_n_0_[20]\,
      O => \i__carry_i_3__7_n_0\
    );
\i__carry_i_3__8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \steps_reg_n_0_[3]\,
      I1 => \end_trj_reg_reg_n_0_[3]\,
      I2 => \end_trj_reg_reg_n_0_[5]\,
      I3 => \steps_reg_n_0_[5]\,
      I4 => \end_trj_reg_reg_n_0_[4]\,
      I5 => \steps_reg_n_0_[4]\,
      O => \i__carry_i_3__8_n_0\
    );
\i__carry_i_3__9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \end_trj_reg_reg_n_0_[1]\,
      I1 => \steps_reg_n_0_[1]\,
      O => \i__carry_i_3__9_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => tgt_EC_loc(0),
      I1 => \^q\(0),
      I2 => tgt_EC_loc(1),
      I3 => \^q\(1),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(1),
      I1 => tgt_EC_loc(1),
      I2 => \^q\(0),
      I3 => tgt_EC_loc(0),
      I4 => \^q\(2),
      I5 => tgt_EC_loc(2),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(0),
      O => \i__carry_i_4__1_n_0\
    );
\i__carry_i_4__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \steps_reg_n_0_[16]\,
      I1 => R1_in(16),
      I2 => R1_in(18),
      I3 => \steps_reg_n_0_[18]\,
      I4 => R1_in(17),
      I5 => \steps_reg_n_0_[17]\,
      O => \i__carry_i_4__2_n_0\
    );
\i__carry_i_4__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \steps_reg_n_0_[0]\,
      I1 => \mid_trj_reg_reg_n_0_[0]\,
      I2 => \mid_trj_reg_reg_n_0_[2]\,
      I3 => \steps_reg_n_0_[2]\,
      I4 => \mid_trj_reg_reg_n_0_[1]\,
      I5 => \steps_reg_n_0_[1]\,
      O => \i__carry_i_4__3_n_0\
    );
\i__carry_i_4__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \steps_reg_n_0_[16]\,
      I1 => R(16),
      I2 => R(18),
      I3 => \steps_reg_n_0_[18]\,
      I4 => R(17),
      I5 => \steps_reg_n_0_[17]\,
      O => \i__carry_i_4__4_n_0\
    );
\i__carry_i_4__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \steps_reg_n_0_[0]\,
      I1 => \dec_steps_reg_n_0_[0]\,
      I2 => \dec_steps_reg_n_0_[2]\,
      I3 => \steps_reg_n_0_[2]\,
      I4 => \dec_steps_reg_n_0_[1]\,
      I5 => \steps_reg_n_0_[1]\,
      O => \i__carry_i_4__5_n_0\
    );
\i__carry_i_4__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \steps_reg_n_0_[16]\,
      I1 => R4_in(16),
      I2 => R4_in(18),
      I3 => \steps_reg_n_0_[18]\,
      I4 => R4_in(17),
      I5 => \steps_reg_n_0_[17]\,
      O => \i__carry_i_4__6_n_0\
    );
\i__carry_i_4__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \steps_reg_n_0_[0]\,
      I1 => \end_trj_reg_reg_n_0_[0]\,
      I2 => \end_trj_reg_reg_n_0_[2]\,
      I3 => \steps_reg_n_0_[2]\,
      I4 => \end_trj_reg_reg_n_0_[1]\,
      I5 => \steps_reg_n_0_[1]\,
      O => \i__carry_i_4__7_n_0\
    );
\i__carry_i_4__8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \end_trj_reg_reg_n_0_[0]\,
      I1 => \steps_reg_n_0_[0]\,
      O => \i__carry_i_4__8_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => tgt_EC_loc(6),
      I1 => \^q\(6),
      I2 => tgt_EC_loc(7),
      I3 => \^q\(7),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(4),
      I1 => tgt_EC_loc(4),
      I2 => \^q\(5),
      I3 => tgt_EC_loc(5),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(3),
      I1 => tgt_EC_loc(3),
      I2 => \^q\(2),
      I3 => tgt_EC_loc(2),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => tgt_EC_loc(0),
      I1 => \^q\(0),
      I2 => tgt_EC_loc(1),
      I3 => \^q\(1),
      O => \i__carry_i_8_n_0\
    );
\init_EC_loc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => init_EC(0),
      Q => init_EC_loc(0),
      R => reset
    );
\init_EC_loc_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => init_EC(10),
      Q => init_EC_loc(10),
      S => reset
    );
\init_EC_loc_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => init_EC(11),
      Q => init_EC_loc(11),
      R => reset
    );
\init_EC_loc_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => init_EC(12),
      Q => init_EC_loc(12),
      R => reset
    );
\init_EC_loc_reg[13]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => init_EC(13),
      Q => init_EC_loc(13),
      S => reset
    );
\init_EC_loc_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => init_EC(14),
      Q => init_EC_loc(14),
      R => reset
    );
\init_EC_loc_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => init_EC(15),
      Q => init_EC_loc(15),
      R => reset
    );
\init_EC_loc_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => init_EC(16),
      Q => init_EC_loc(16),
      R => reset
    );
\init_EC_loc_reg[17]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => init_EC(17),
      Q => init_EC_loc(17),
      S => reset
    );
\init_EC_loc_reg[18]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => init_EC(18),
      Q => init_EC_loc(18),
      S => reset
    );
\init_EC_loc_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => init_EC(19),
      Q => init_EC_loc(19),
      R => reset
    );
\init_EC_loc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => init_EC(1),
      Q => init_EC_loc(1),
      R => reset
    );
\init_EC_loc_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => init_EC(20),
      Q => init_EC_loc(20),
      R => reset
    );
\init_EC_loc_reg[21]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => init_EC(21),
      Q => init_EC_loc(21),
      S => reset
    );
\init_EC_loc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => init_EC(2),
      Q => init_EC_loc(2),
      R => reset
    );
\init_EC_loc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => init_EC(3),
      Q => init_EC_loc(3),
      R => reset
    );
\init_EC_loc_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => init_EC(4),
      Q => init_EC_loc(4),
      R => reset
    );
\init_EC_loc_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => init_EC(5),
      Q => init_EC_loc(5),
      S => reset
    );
\init_EC_loc_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => init_EC(6),
      Q => init_EC_loc(6),
      R => reset
    );
\init_EC_loc_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => init_EC(7),
      Q => init_EC_loc(7),
      S => reset
    );
\init_EC_loc_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => init_EC(8),
      Q => init_EC_loc(8),
      S => reset
    );
\init_EC_loc_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => init_EC(9),
      Q => init_EC_loc(9),
      R => reset
    );
init_EC_trig_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^rst_200_out\,
      I1 => sm_run_stp_reg_n_0,
      O => init_EC_trig
    );
init_EC_trig_reg: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => sm_start_reg_n_0,
      D => gtOp,
      Q => init_EC_trig_reg_n_0,
      R => init_EC_trig
    );
irq_clr_loc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => irq_clr,
      Q => irq_clr_loc,
      R => reset
    );
irq_in_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000ACC0A0A"
    )
        port map (
      I0 => \^irq_in\,
      I1 => irq_mask_loc,
      I2 => irq_clr_loc,
      I3 => irq_loc_d1,
      I4 => irq_loc_d2,
      I5 => reset,
      O => irq_in_i_1_n_0
    );
irq_in_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => irq_in_i_1_n_0,
      Q => \^irq_in\,
      R => '0'
    );
irq_loc_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => irq_loc_reg_n_0,
      Q => irq_loc_d1,
      R => reset
    );
irq_loc_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => irq_loc_d1,
      Q => irq_loc_d2,
      R => reset
    );
irq_loc_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EECFEFCFEECCECCC"
    )
        port map (
      I0 => \FSM_onehot_sm_state_reg_n_0_[30]\,
      I1 => irq_loc_i_2_n_0,
      I2 => \FSM_onehot_sm_state_reg_n_0_[0]\,
      I3 => sm_stop,
      I4 => sm_run_stp_i_2_n_0,
      I5 => irq_loc_reg_n_0,
      O => irq_loc_i_1_n_0
    );
irq_loc_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_sm_state_reg_n_0_[29]\,
      I1 => \FSM_onehot_sm_state_reg_n_0_[17]\,
      I2 => \FSM_onehot_sm_state_reg_n_0_[3]\,
      O => irq_loc_i_2_n_0
    );
irq_loc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => irq_loc_i_1_n_0,
      Q => irq_loc_reg_n_0,
      R => \^rst_200_out\
    );
irq_mask_loc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => irq_mask,
      Q => irq_mask_loc,
      R => reset
    );
\mid_trj_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => minusOp(0),
      Q => \mid_trj_reg_reg_n_0_[0]\,
      R => reset
    );
\mid_trj_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => minusOp(10),
      Q => \mid_trj_reg_reg_n_0_[10]\,
      R => reset
    );
\mid_trj_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => minusOp(11),
      Q => \mid_trj_reg_reg_n_0_[11]\,
      R => reset
    );
\mid_trj_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => minusOp(12),
      Q => \mid_trj_reg_reg_n_0_[12]\,
      R => reset
    );
\mid_trj_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => minusOp(13),
      Q => \mid_trj_reg_reg_n_0_[13]\,
      R => reset
    );
\mid_trj_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => minusOp(14),
      Q => \mid_trj_reg_reg_n_0_[14]\,
      R => reset
    );
\mid_trj_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => minusOp(15),
      Q => \mid_trj_reg_reg_n_0_[15]\,
      R => reset
    );
\mid_trj_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => minusOp(16),
      Q => R1_in(16),
      R => reset
    );
\mid_trj_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => minusOp(17),
      Q => R1_in(17),
      R => reset
    );
\mid_trj_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => minusOp(18),
      Q => R1_in(18),
      R => reset
    );
\mid_trj_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => minusOp(19),
      Q => R1_in(19),
      R => reset
    );
\mid_trj_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => minusOp(1),
      Q => \mid_trj_reg_reg_n_0_[1]\,
      R => reset
    );
\mid_trj_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => minusOp(20),
      Q => R1_in(20),
      R => reset
    );
\mid_trj_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => minusOp(21),
      Q => R1_in(21),
      R => reset
    );
\mid_trj_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => minusOp(22),
      Q => R1_in(22),
      R => reset
    );
\mid_trj_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => minusOp(23),
      Q => R1_in(23),
      R => reset
    );
\mid_trj_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => minusOp(24),
      Q => R1_in(24),
      R => reset
    );
\mid_trj_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => minusOp(25),
      Q => R1_in(25),
      R => reset
    );
\mid_trj_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => minusOp(26),
      Q => R1_in(26),
      R => reset
    );
\mid_trj_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => minusOp(27),
      Q => R1_in(27),
      R => reset
    );
\mid_trj_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => minusOp(28),
      Q => R1_in(28),
      R => reset
    );
\mid_trj_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => minusOp(29),
      Q => R1_in(29),
      R => reset
    );
\mid_trj_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => minusOp(2),
      Q => \mid_trj_reg_reg_n_0_[2]\,
      R => reset
    );
\mid_trj_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => minusOp(30),
      Q => R1_in(30),
      R => reset
    );
\mid_trj_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => minusOp(31),
      Q => R1_in(31),
      R => reset
    );
\mid_trj_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => minusOp(3),
      Q => \mid_trj_reg_reg_n_0_[3]\,
      R => reset
    );
\mid_trj_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => minusOp(4),
      Q => \mid_trj_reg_reg_n_0_[4]\,
      R => reset
    );
\mid_trj_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => minusOp(5),
      Q => \mid_trj_reg_reg_n_0_[5]\,
      R => reset
    );
\mid_trj_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => minusOp(6),
      Q => \mid_trj_reg_reg_n_0_[6]\,
      R => reset
    );
\mid_trj_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => minusOp(7),
      Q => \mid_trj_reg_reg_n_0_[7]\,
      R => reset
    );
\mid_trj_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => minusOp(8),
      Q => \mid_trj_reg_reg_n_0_[8]\,
      R => reset
    );
\mid_trj_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out,
      D => minusOp(9),
      Q => \mid_trj_reg_reg_n_0_[9]\,
      R => reset
    );
mid_trj_trig_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => mid_trj_trig_msb,
      I1 => mid_trj_trig_lsb,
      I2 => sm_run_stp_reg_n_0,
      I3 => \^rst_200_out\,
      O => mid_trj_trig_i_1_n_0
    );
mid_trj_trig_lsb_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => sm_start_reg_n_0,
      D => eqOp3_out,
      Q => mid_trj_trig_lsb,
      R => init_EC_trig
    );
mid_trj_trig_msb_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => sm_start_reg_n_0,
      D => eqOp2_out,
      Q => mid_trj_trig_msb,
      R => init_EC_trig
    );
mid_trj_trig_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => mid_trj_trig_i_1_n_0,
      Q => mid_trj_trig,
      R => '0'
    );
minusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => minusOp_carry_n_0,
      CO(2) => minusOp_carry_n_1,
      CO(1) => minusOp_carry_n_2,
      CO(0) => minusOp_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => L(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => minusOp(3 downto 0),
      S(3) => minusOp_carry_i_1_n_0,
      S(2) => minusOp_carry_i_2_n_0,
      S(1) => minusOp_carry_i_3_n_0,
      S(0) => L(0)
    );
\minusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => minusOp_carry_n_0,
      CO(3) => \minusOp_carry__0_n_0\,
      CO(2) => \minusOp_carry__0_n_1\,
      CO(1) => \minusOp_carry__0_n_2\,
      CO(0) => \minusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => L(7 downto 4),
      O(3 downto 0) => minusOp(7 downto 4),
      S(3) => \minusOp_carry__0_i_1_n_0\,
      S(2) => \minusOp_carry__0_i_2_n_0\,
      S(1) => \minusOp_carry__0_i_3_n_0\,
      S(0) => \minusOp_carry__0_i_4_n_0\
    );
\minusOp_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(7),
      O => \minusOp_carry__0_i_1_n_0\
    );
\minusOp_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(6),
      O => \minusOp_carry__0_i_2_n_0\
    );
\minusOp_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(5),
      O => \minusOp_carry__0_i_3_n_0\
    );
\minusOp_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(4),
      O => \minusOp_carry__0_i_4_n_0\
    );
\minusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__0_n_0\,
      CO(3) => \minusOp_carry__1_n_0\,
      CO(2) => \minusOp_carry__1_n_1\,
      CO(1) => \minusOp_carry__1_n_2\,
      CO(0) => \minusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => L(11 downto 8),
      O(3 downto 0) => minusOp(11 downto 8),
      S(3) => \minusOp_carry__1_i_1_n_0\,
      S(2) => \minusOp_carry__1_i_2_n_0\,
      S(1) => \minusOp_carry__1_i_3_n_0\,
      S(0) => \minusOp_carry__1_i_4_n_0\
    );
\minusOp_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(11),
      O => \minusOp_carry__1_i_1_n_0\
    );
\minusOp_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(10),
      O => \minusOp_carry__1_i_2_n_0\
    );
\minusOp_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(9),
      O => \minusOp_carry__1_i_3_n_0\
    );
\minusOp_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(8),
      O => \minusOp_carry__1_i_4_n_0\
    );
\minusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__1_n_0\,
      CO(3) => \minusOp_carry__2_n_0\,
      CO(2) => \minusOp_carry__2_n_1\,
      CO(1) => \minusOp_carry__2_n_2\,
      CO(0) => \minusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => L(15 downto 12),
      O(3 downto 0) => minusOp(15 downto 12),
      S(3) => \minusOp_carry__2_i_1_n_0\,
      S(2) => \minusOp_carry__2_i_2_n_0\,
      S(1) => \minusOp_carry__2_i_3_n_0\,
      S(0) => \minusOp_carry__2_i_4_n_0\
    );
\minusOp_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(15),
      O => \minusOp_carry__2_i_1_n_0\
    );
\minusOp_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(14),
      O => \minusOp_carry__2_i_2_n_0\
    );
\minusOp_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(13),
      O => \minusOp_carry__2_i_3_n_0\
    );
\minusOp_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(12),
      O => \minusOp_carry__2_i_4_n_0\
    );
\minusOp_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__2_n_0\,
      CO(3) => \minusOp_carry__3_n_0\,
      CO(2) => \minusOp_carry__3_n_1\,
      CO(1) => \minusOp_carry__3_n_2\,
      CO(0) => \minusOp_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => L(19 downto 16),
      O(3 downto 0) => minusOp(19 downto 16),
      S(3) => \minusOp_carry__3_i_1_n_0\,
      S(2) => \minusOp_carry__3_i_2_n_0\,
      S(1) => \minusOp_carry__3_i_3_n_0\,
      S(0) => \minusOp_carry__3_i_4_n_0\
    );
\minusOp_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(19),
      O => \minusOp_carry__3_i_1_n_0\
    );
\minusOp_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(18),
      O => \minusOp_carry__3_i_2_n_0\
    );
\minusOp_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(17),
      O => \minusOp_carry__3_i_3_n_0\
    );
\minusOp_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(16),
      O => \minusOp_carry__3_i_4_n_0\
    );
\minusOp_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__3_n_0\,
      CO(3) => \minusOp_carry__4_n_0\,
      CO(2) => \minusOp_carry__4_n_1\,
      CO(1) => \minusOp_carry__4_n_2\,
      CO(0) => \minusOp_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => L(23 downto 20),
      O(3 downto 0) => minusOp(23 downto 20),
      S(3) => \minusOp_carry__4_i_1_n_0\,
      S(2) => \minusOp_carry__4_i_2_n_0\,
      S(1) => \minusOp_carry__4_i_3_n_0\,
      S(0) => \minusOp_carry__4_i_4_n_0\
    );
\minusOp_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(23),
      O => \minusOp_carry__4_i_1_n_0\
    );
\minusOp_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(22),
      O => \minusOp_carry__4_i_2_n_0\
    );
\minusOp_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(21),
      O => \minusOp_carry__4_i_3_n_0\
    );
\minusOp_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(20),
      O => \minusOp_carry__4_i_4_n_0\
    );
\minusOp_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__4_n_0\,
      CO(3) => \minusOp_carry__5_n_0\,
      CO(2) => \minusOp_carry__5_n_1\,
      CO(1) => \minusOp_carry__5_n_2\,
      CO(0) => \minusOp_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => L(27 downto 24),
      O(3 downto 0) => minusOp(27 downto 24),
      S(3) => \minusOp_carry__5_i_1_n_0\,
      S(2) => \minusOp_carry__5_i_2_n_0\,
      S(1) => \minusOp_carry__5_i_3_n_0\,
      S(0) => \minusOp_carry__5_i_4_n_0\
    );
\minusOp_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(27),
      O => \minusOp_carry__5_i_1_n_0\
    );
\minusOp_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(26),
      O => \minusOp_carry__5_i_2_n_0\
    );
\minusOp_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(25),
      O => \minusOp_carry__5_i_3_n_0\
    );
\minusOp_carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(24),
      O => \minusOp_carry__5_i_4_n_0\
    );
\minusOp_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__5_n_0\,
      CO(3) => \NLW_minusOp_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \minusOp_carry__6_n_1\,
      CO(1) => \minusOp_carry__6_n_2\,
      CO(0) => \minusOp_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => L(30 downto 28),
      O(3 downto 0) => minusOp(31 downto 28),
      S(3) => '1',
      S(2) => \minusOp_carry__6_i_1_n_0\,
      S(1) => \minusOp_carry__6_i_2_n_0\,
      S(0) => \minusOp_carry__6_i_3_n_0\
    );
\minusOp_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(30),
      O => \minusOp_carry__6_i_1_n_0\
    );
\minusOp_carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(29),
      O => \minusOp_carry__6_i_2_n_0\
    );
\minusOp_carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(28),
      O => \minusOp_carry__6_i_3_n_0\
    );
minusOp_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(3),
      O => minusOp_carry_i_1_n_0
    );
minusOp_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(2),
      O => minusOp_carry_i_2_n_0
    );
minusOp_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(1),
      O => minusOp_carry_i_3_n_0
    );
\minusOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \minusOp_inferred__0/i__carry_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry_n_3\,
      CYINIT => \cnt_o_loc_reg_n_0_[0]\,
      DI(3 downto 0) => L(3 downto 0),
      O(3) => \minusOp_inferred__0/i__carry_n_4\,
      O(2) => \minusOp_inferred__0/i__carry_n_5\,
      O(1) => \minusOp_inferred__0/i__carry_n_6\,
      O(0) => \minusOp_inferred__0/i__carry_n_7\,
      S(3) => \i__carry_i_1__1_n_0\,
      S(2) => \i__carry_i_2__1_n_0\,
      S(1) => \i__carry_i_3__1_n_0\,
      S(0) => \i__carry_i_4__1_n_0\
    );
\minusOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry_n_0\,
      CO(3) => \minusOp_inferred__0/i__carry__0_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry__0_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry__0_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => L(7 downto 4),
      O(3) => \minusOp_inferred__0/i__carry__0_n_4\,
      O(2) => \minusOp_inferred__0/i__carry__0_n_5\,
      O(1) => \minusOp_inferred__0/i__carry__0_n_6\,
      O(0) => \minusOp_inferred__0/i__carry__0_n_7\,
      S(3) => \i__carry__0_i_1__1_n_0\,
      S(2) => \i__carry__0_i_2__2_n_0\,
      S(1) => \i__carry__0_i_3__2_n_0\,
      S(0) => \i__carry__0_i_4__2_n_0\
    );
\minusOp_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry__0_n_0\,
      CO(3) => \minusOp_inferred__0/i__carry__1_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry__1_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry__1_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => L(11 downto 8),
      O(3) => \minusOp_inferred__0/i__carry__1_n_4\,
      O(2) => \minusOp_inferred__0/i__carry__1_n_5\,
      O(1) => \minusOp_inferred__0/i__carry__1_n_6\,
      O(0) => \minusOp_inferred__0/i__carry__1_n_7\,
      S(3) => \i__carry__1_i_1__1_n_0\,
      S(2) => \i__carry__1_i_2__1_n_0\,
      S(1) => \i__carry__1_i_3__1_n_0\,
      S(0) => \i__carry__1_i_4__1_n_0\
    );
\minusOp_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry__1_n_0\,
      CO(3) => \minusOp_inferred__0/i__carry__2_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry__2_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry__2_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => L(15 downto 12),
      O(3) => \minusOp_inferred__0/i__carry__2_n_4\,
      O(2) => \minusOp_inferred__0/i__carry__2_n_5\,
      O(1) => \minusOp_inferred__0/i__carry__2_n_6\,
      O(0) => \minusOp_inferred__0/i__carry__2_n_7\,
      S(3) => \i__carry__2_i_1__0_n_0\,
      S(2) => \i__carry__2_i_2__0_n_0\,
      S(1) => \i__carry__2_i_3__0_n_0\,
      S(0) => \i__carry__2_i_4__0_n_0\
    );
\minusOp_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry__2_n_0\,
      CO(3) => \minusOp_inferred__0/i__carry__3_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry__3_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry__3_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => L(19 downto 16),
      O(3) => \minusOp_inferred__0/i__carry__3_n_4\,
      O(2) => \minusOp_inferred__0/i__carry__3_n_5\,
      O(1) => \minusOp_inferred__0/i__carry__3_n_6\,
      O(0) => \minusOp_inferred__0/i__carry__3_n_7\,
      S(3) => \i__carry__3_i_1__0_n_0\,
      S(2) => \i__carry__3_i_2__0_n_0\,
      S(1) => \i__carry__3_i_3__0_n_0\,
      S(0) => \i__carry__3_i_4__0_n_0\
    );
\minusOp_inferred__0/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry__3_n_0\,
      CO(3) => \minusOp_inferred__0/i__carry__4_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry__4_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry__4_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => L(23 downto 20),
      O(3) => \minusOp_inferred__0/i__carry__4_n_4\,
      O(2) => \minusOp_inferred__0/i__carry__4_n_5\,
      O(1) => \minusOp_inferred__0/i__carry__4_n_6\,
      O(0) => \minusOp_inferred__0/i__carry__4_n_7\,
      S(3) => \i__carry__4_i_1__0_n_0\,
      S(2) => \i__carry__4_i_2__0_n_0\,
      S(1) => \i__carry__4_i_3_n_0\,
      S(0) => \i__carry__4_i_4_n_0\
    );
\minusOp_inferred__0/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry__4_n_0\,
      CO(3) => \minusOp_inferred__0/i__carry__5_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry__5_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry__5_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => L(27 downto 24),
      O(3) => \minusOp_inferred__0/i__carry__5_n_4\,
      O(2) => \minusOp_inferred__0/i__carry__5_n_5\,
      O(1) => \minusOp_inferred__0/i__carry__5_n_6\,
      O(0) => \minusOp_inferred__0/i__carry__5_n_7\,
      S(3) => \i__carry__5_i_1_n_0\,
      S(2) => \i__carry__5_i_2_n_0\,
      S(1) => \i__carry__5_i_3_n_0\,
      S(0) => \i__carry__5_i_4_n_0\
    );
\minusOp_inferred__0/i__carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry__5_n_0\,
      CO(3 downto 2) => \NLW_minusOp_inferred__0/i__carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \minusOp_inferred__0/i__carry__6_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => L(29 downto 28),
      O(3) => \NLW_minusOp_inferred__0/i__carry__6_O_UNCONNECTED\(3),
      O(2) => \minusOp_inferred__0/i__carry__6_n_5\,
      O(1) => \minusOp_inferred__0/i__carry__6_n_6\,
      O(0) => \minusOp_inferred__0/i__carry__6_n_7\,
      S(3) => '0',
      S(2) => \i__carry__6_i_1_n_0\,
      S(1) => \i__carry__6_i_2_n_0\,
      S(0) => \i__carry__6_i_3_n_0\
    );
\minusOp_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \minusOp_inferred__1/i__carry_n_0\,
      CO(2) => \minusOp_inferred__1/i__carry_n_1\,
      CO(1) => \minusOp_inferred__1/i__carry_n_2\,
      CO(0) => \minusOp_inferred__1/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \end_trj_reg_reg_n_0_[3]\,
      DI(2) => \end_trj_reg_reg_n_0_[2]\,
      DI(1) => \end_trj_reg_reg_n_0_[1]\,
      DI(0) => \end_trj_reg_reg_n_0_[0]\,
      O(3) => \minusOp_inferred__1/i__carry_n_4\,
      O(2) => \minusOp_inferred__1/i__carry_n_5\,
      O(1) => \minusOp_inferred__1/i__carry_n_6\,
      O(0) => \minusOp_inferred__1/i__carry_n_7\,
      S(3) => \i__carry_i_1__9_n_0\,
      S(2) => \i__carry_i_2__9_n_0\,
      S(1) => \i__carry_i_3__9_n_0\,
      S(0) => \i__carry_i_4__8_n_0\
    );
\minusOp_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__1/i__carry_n_0\,
      CO(3) => \minusOp_inferred__1/i__carry__0_n_0\,
      CO(2) => \minusOp_inferred__1/i__carry__0_n_1\,
      CO(1) => \minusOp_inferred__1/i__carry__0_n_2\,
      CO(0) => \minusOp_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \end_trj_reg_reg_n_0_[7]\,
      DI(2) => \end_trj_reg_reg_n_0_[6]\,
      DI(1) => \end_trj_reg_reg_n_0_[5]\,
      DI(0) => \end_trj_reg_reg_n_0_[4]\,
      O(3) => \minusOp_inferred__1/i__carry__0_n_4\,
      O(2) => \minusOp_inferred__1/i__carry__0_n_5\,
      O(1) => \minusOp_inferred__1/i__carry__0_n_6\,
      O(0) => \minusOp_inferred__1/i__carry__0_n_7\,
      S(3) => \i__carry__0_i_1__8_n_0\,
      S(2) => \i__carry__0_i_2__9_n_0\,
      S(1) => \i__carry__0_i_3__3_n_0\,
      S(0) => \i__carry__0_i_4__3_n_0\
    );
\minusOp_inferred__1/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__1/i__carry__0_n_0\,
      CO(3) => \minusOp_inferred__1/i__carry__1_n_0\,
      CO(2) => \minusOp_inferred__1/i__carry__1_n_1\,
      CO(1) => \minusOp_inferred__1/i__carry__1_n_2\,
      CO(0) => \minusOp_inferred__1/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \end_trj_reg_reg_n_0_[11]\,
      DI(2) => \end_trj_reg_reg_n_0_[10]\,
      DI(1) => \end_trj_reg_reg_n_0_[9]\,
      DI(0) => \end_trj_reg_reg_n_0_[8]\,
      O(3) => \minusOp_inferred__1/i__carry__1_n_4\,
      O(2) => \minusOp_inferred__1/i__carry__1_n_5\,
      O(1) => \minusOp_inferred__1/i__carry__1_n_6\,
      O(0) => \minusOp_inferred__1/i__carry__1_n_7\,
      S(3) => \i__carry__1_i_1__2_n_0\,
      S(2) => \i__carry__1_i_2__2_n_0\,
      S(1) => \i__carry__1_i_3__2_n_0\,
      S(0) => \i__carry__1_i_4__2_n_0\
    );
\minusOp_inferred__1/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__1/i__carry__1_n_0\,
      CO(3) => \minusOp_inferred__1/i__carry__2_n_0\,
      CO(2) => \minusOp_inferred__1/i__carry__2_n_1\,
      CO(1) => \minusOp_inferred__1/i__carry__2_n_2\,
      CO(0) => \minusOp_inferred__1/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \end_trj_reg_reg_n_0_[15]\,
      DI(2) => \end_trj_reg_reg_n_0_[14]\,
      DI(1) => \end_trj_reg_reg_n_0_[13]\,
      DI(0) => \end_trj_reg_reg_n_0_[12]\,
      O(3) => \minusOp_inferred__1/i__carry__2_n_4\,
      O(2) => \minusOp_inferred__1/i__carry__2_n_5\,
      O(1) => \minusOp_inferred__1/i__carry__2_n_6\,
      O(0) => \minusOp_inferred__1/i__carry__2_n_7\,
      S(3) => \i__carry__2_i_1__1_n_0\,
      S(2) => \i__carry__2_i_2__1_n_0\,
      S(1) => \i__carry__2_i_3__1_n_0\,
      S(0) => \i__carry__2_i_4__1_n_0\
    );
\minusOp_inferred__1/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__1/i__carry__2_n_0\,
      CO(3) => \minusOp_inferred__1/i__carry__3_n_0\,
      CO(2) => \minusOp_inferred__1/i__carry__3_n_1\,
      CO(1) => \minusOp_inferred__1/i__carry__3_n_2\,
      CO(0) => \minusOp_inferred__1/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => R4_in(19 downto 16),
      O(3) => \minusOp_inferred__1/i__carry__3_n_4\,
      O(2) => \minusOp_inferred__1/i__carry__3_n_5\,
      O(1) => \minusOp_inferred__1/i__carry__3_n_6\,
      O(0) => \minusOp_inferred__1/i__carry__3_n_7\,
      S(3) => \i__carry__3_i_1__1_n_0\,
      S(2) => \i__carry__3_i_2__1_n_0\,
      S(1) => \i__carry__3_i_3__1_n_0\,
      S(0) => \i__carry__3_i_4__1_n_0\
    );
\minusOp_inferred__1/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__1/i__carry__3_n_0\,
      CO(3) => \minusOp_inferred__1/i__carry__4_n_0\,
      CO(2) => \minusOp_inferred__1/i__carry__4_n_1\,
      CO(1) => \minusOp_inferred__1/i__carry__4_n_2\,
      CO(0) => \minusOp_inferred__1/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => R4_in(23 downto 20),
      O(3) => \minusOp_inferred__1/i__carry__4_n_4\,
      O(2) => \minusOp_inferred__1/i__carry__4_n_5\,
      O(1) => \minusOp_inferred__1/i__carry__4_n_6\,
      O(0) => \minusOp_inferred__1/i__carry__4_n_7\,
      S(3) => \i__carry__4_i_1__1_n_0\,
      S(2) => \i__carry__4_i_2__1_n_0\,
      S(1) => \i__carry__4_i_3__0_n_0\,
      S(0) => \i__carry__4_i_4__0_n_0\
    );
\minusOp_inferred__1/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__1/i__carry__4_n_0\,
      CO(3) => \minusOp_inferred__1/i__carry__5_n_0\,
      CO(2) => \minusOp_inferred__1/i__carry__5_n_1\,
      CO(1) => \minusOp_inferred__1/i__carry__5_n_2\,
      CO(0) => \minusOp_inferred__1/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => R4_in(27 downto 24),
      O(3) => \minusOp_inferred__1/i__carry__5_n_4\,
      O(2) => \minusOp_inferred__1/i__carry__5_n_5\,
      O(1) => \minusOp_inferred__1/i__carry__5_n_6\,
      O(0) => \minusOp_inferred__1/i__carry__5_n_7\,
      S(3) => \i__carry__5_i_1__0_n_0\,
      S(2) => \i__carry__5_i_2__0_n_0\,
      S(1) => \i__carry__5_i_3__0_n_0\,
      S(0) => \i__carry__5_i_4__0_n_0\
    );
\minusOp_inferred__1/i__carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__1/i__carry__5_n_0\,
      CO(3) => \NLW_minusOp_inferred__1/i__carry__6_CO_UNCONNECTED\(3),
      CO(2) => \minusOp_inferred__1/i__carry__6_n_1\,
      CO(1) => \minusOp_inferred__1/i__carry__6_n_2\,
      CO(0) => \minusOp_inferred__1/i__carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => R4_in(30 downto 28),
      O(3) => \minusOp_inferred__1/i__carry__6_n_4\,
      O(2) => \minusOp_inferred__1/i__carry__6_n_5\,
      O(1) => \minusOp_inferred__1/i__carry__6_n_6\,
      O(0) => \minusOp_inferred__1/i__carry__6_n_7\,
      S(3) => \i__carry__6_i_1__0_n_0\,
      S(2) => \i__carry__6_i_2__0_n_0\,
      S(1) => \i__carry__6_i_3__0_n_0\,
      S(0) => \i__carry__6_i_4_n_0\
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => EC_cnt(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => plusOp(4 downto 3),
      O(1) => \plusOp__0\(2),
      O(0) => plusOp(1),
      S(3 downto 0) => EC_cnt(4 downto 1)
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(8 downto 5),
      S(3 downto 0) => EC_cnt(8 downto 5)
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3) => \plusOp_carry__1_n_0\,
      CO(2) => \plusOp_carry__1_n_1\,
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(12 downto 9),
      S(3 downto 0) => EC_cnt(12 downto 9)
    );
\plusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__1_n_0\,
      CO(3) => \plusOp_carry__2_n_0\,
      CO(2) => \plusOp_carry__2_n_1\,
      CO(1) => \plusOp_carry__2_n_2\,
      CO(0) => \plusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(16 downto 13),
      S(3 downto 0) => EC_cnt(16 downto 13)
    );
\plusOp_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__2_n_0\,
      CO(3) => \plusOp_carry__3_n_0\,
      CO(2) => \plusOp_carry__3_n_1\,
      CO(1) => \plusOp_carry__3_n_2\,
      CO(0) => \plusOp_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(20 downto 17),
      S(3 downto 0) => EC_cnt(20 downto 17)
    );
\plusOp_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__3_n_0\,
      CO(3 downto 0) => \NLW_plusOp_carry__4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_plusOp_carry__4_O_UNCONNECTED\(3 downto 1),
      O(0) => plusOp(21),
      S(3 downto 1) => B"000",
      S(0) => EC_cnt(21)
    );
\plusOp_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \plusOp_inferred__1/i__carry_n_0\,
      CO(2) => \plusOp_inferred__1/i__carry_n_1\,
      CO(1) => \plusOp_inferred__1/i__carry_n_2\,
      CO(0) => \plusOp_inferred__1/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \plusOp_inferred__1/i__carry_n_4\,
      O(2) => \plusOp_inferred__1/i__carry_n_5\,
      O(1) => \plusOp_inferred__1/i__carry_n_6\,
      O(0) => \plusOp_inferred__1/i__carry_n_7\,
      S(3) => \i__carry_i_1__2_n_0\,
      S(2) => \i__carry_i_2__2_n_0\,
      S(1) => \i__carry_i_3__2_n_0\,
      S(0) => sm_ACC_pos(0)
    );
\plusOp_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__1/i__carry_n_0\,
      CO(3) => \plusOp_inferred__1/i__carry__0_n_0\,
      CO(2) => \plusOp_inferred__1/i__carry__0_n_1\,
      CO(1) => \plusOp_inferred__1/i__carry__0_n_2\,
      CO(0) => \plusOp_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \plusOp_inferred__1/i__carry__0_n_4\,
      O(2) => \plusOp_inferred__1/i__carry__0_n_5\,
      O(1) => \plusOp_inferred__1/i__carry__0_n_6\,
      O(0) => \plusOp_inferred__1/i__carry__0_n_7\,
      S(3) => \i__carry__0_i_1__0_n_0\,
      S(2) => \i__carry__0_i_2__1_n_0\,
      S(1) => \i__carry__0_i_3__1_n_0\,
      S(0) => \i__carry__0_i_4__1_n_0\
    );
\plusOp_inferred__1/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__1/i__carry__0_n_0\,
      CO(3) => \plusOp_inferred__1/i__carry__1_n_0\,
      CO(2) => \plusOp_inferred__1/i__carry__1_n_1\,
      CO(1) => \plusOp_inferred__1/i__carry__1_n_2\,
      CO(0) => \plusOp_inferred__1/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \plusOp_inferred__1/i__carry__1_n_4\,
      O(2) => \plusOp_inferred__1/i__carry__1_n_5\,
      O(1) => \plusOp_inferred__1/i__carry__1_n_6\,
      O(0) => \plusOp_inferred__1/i__carry__1_n_7\,
      S(3) => \i__carry__1_i_1__0_n_0\,
      S(2) => \i__carry__1_i_2__0_n_0\,
      S(1) => \i__carry__1_i_3__0_n_0\,
      S(0) => \i__carry__1_i_4__0_n_0\
    );
\plusOp_inferred__1/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__1/i__carry__1_n_0\,
      CO(3) => \plusOp_inferred__1/i__carry__2_n_0\,
      CO(2) => \plusOp_inferred__1/i__carry__2_n_1\,
      CO(1) => \plusOp_inferred__1/i__carry__2_n_2\,
      CO(0) => \plusOp_inferred__1/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \plusOp_inferred__1/i__carry__2_n_4\,
      O(2) => \plusOp_inferred__1/i__carry__2_n_5\,
      O(1) => \plusOp_inferred__1/i__carry__2_n_6\,
      O(0) => \plusOp_inferred__1/i__carry__2_n_7\,
      S(3) => \i__carry__2_i_1_n_0\,
      S(2) => \i__carry__2_i_2_n_0\,
      S(1) => \i__carry__2_i_3_n_0\,
      S(0) => \i__carry__2_i_4_n_0\
    );
\plusOp_inferred__1/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__1/i__carry__2_n_0\,
      CO(3) => \plusOp_inferred__1/i__carry__3_n_0\,
      CO(2) => \plusOp_inferred__1/i__carry__3_n_1\,
      CO(1) => \plusOp_inferred__1/i__carry__3_n_2\,
      CO(0) => \plusOp_inferred__1/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \plusOp_inferred__1/i__carry__3_n_4\,
      O(2) => \plusOp_inferred__1/i__carry__3_n_5\,
      O(1) => \plusOp_inferred__1/i__carry__3_n_6\,
      O(0) => \plusOp_inferred__1/i__carry__3_n_7\,
      S(3) => \i__carry__3_i_1_n_0\,
      S(2) => \i__carry__3_i_2_n_0\,
      S(1) => \i__carry__3_i_3_n_0\,
      S(0) => \i__carry__3_i_4_n_0\
    );
\plusOp_inferred__1/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__1/i__carry__3_n_0\,
      CO(3 downto 1) => \NLW_plusOp_inferred__1/i__carry__4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \plusOp_inferred__1/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_plusOp_inferred__1/i__carry__4_O_UNCONNECTED\(3 downto 2),
      O(1) => \plusOp_inferred__1/i__carry__4_n_6\,
      O(0) => \plusOp_inferred__1/i__carry__4_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \i__carry__4_i_1_n_0\,
      S(0) => \i__carry__4_i_2_n_0\
    );
port_clk_reg: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \clock_loc__0\,
      Q => port_clk_loc,
      R => \^rst_200_out\
    );
port_dir_reg: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => dir_loc,
      Q => port_dir_loc,
      R => \^rst_200_out\
    );
port_ena_reg: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \ena_load_loc_reg_n_0_[1]\,
      Q => port_ena_loc,
      R => \^rst_200_out\
    );
port_m1P_reg: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \res_loc_reg_n_0_[0]\,
      Q => port_m1P_loc,
      R => \^rst_200_out\
    );
port_m2P_reg: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \res_loc_reg_n_0_[1]\,
      Q => port_m2P_loc,
      R => \^rst_200_out\
    );
port_ref_reg: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \ena_load_loc_reg_n_0_[0]\,
      Q => port_ref_loc,
      R => \^rst_200_out\
    );
\pulse_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FFF0F4"
    )
        port map (
      I0 => \pulse_cnt[0]_i_3_n_0\,
      I1 => pulse_cnt_reg(3),
      I2 => \^rst_200_out\,
      I3 => \pulse_cnt[0]_i_4_n_0\,
      I4 => \pulse_cnt[0]_i_5_n_0\,
      O => \pulse_cnt[0]_i_1_n_0\
    );
\pulse_cnt[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => pulse_cnt_reg(12),
      I1 => pulse_cnt_reg(9),
      I2 => pulse_cnt_reg(8),
      I3 => pulse_cnt_reg(7),
      O => \pulse_cnt[0]_i_3_n_0\
    );
\pulse_cnt[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => pulse_cnt_reg(10),
      I1 => pulse_cnt_reg(6),
      I2 => pulse_cnt_reg(4),
      I3 => \pulse_cnt[0]_i_7_n_0\,
      I4 => \pulse_cnt[0]_i_8_n_0\,
      O => \pulse_cnt[0]_i_4_n_0\
    );
\pulse_cnt[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => pulse_cnt_reg(8),
      I1 => pulse_cnt_reg(9),
      I2 => pulse_cnt_reg(3),
      I3 => pulse_cnt_reg(7),
      I4 => sm_start_reg_n_0,
      I5 => pulse_cnt_reg(12),
      O => \pulse_cnt[0]_i_5_n_0\
    );
\pulse_cnt[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pulse_cnt_reg(0),
      O => \pulse_cnt[0]_i_6_n_0\
    );
\pulse_cnt[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pulse_cnt_reg(15),
      I1 => pulse_cnt_reg(14),
      I2 => pulse_cnt_reg(13),
      I3 => pulse_cnt_reg(11),
      O => \pulse_cnt[0]_i_7_n_0\
    );
\pulse_cnt[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pulse_cnt_reg(1),
      I1 => pulse_cnt_reg(5),
      I2 => pulse_cnt_reg(0),
      I3 => pulse_cnt_reg(2),
      O => \pulse_cnt[0]_i_8_n_0\
    );
\pulse_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \pulse_cnt_reg[0]_i_2_n_7\,
      Q => pulse_cnt_reg(0),
      R => \pulse_cnt[0]_i_1_n_0\
    );
\pulse_cnt_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pulse_cnt_reg[0]_i_2_n_0\,
      CO(2) => \pulse_cnt_reg[0]_i_2_n_1\,
      CO(1) => \pulse_cnt_reg[0]_i_2_n_2\,
      CO(0) => \pulse_cnt_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \pulse_cnt_reg[0]_i_2_n_4\,
      O(2) => \pulse_cnt_reg[0]_i_2_n_5\,
      O(1) => \pulse_cnt_reg[0]_i_2_n_6\,
      O(0) => \pulse_cnt_reg[0]_i_2_n_7\,
      S(3 downto 1) => pulse_cnt_reg(3 downto 1),
      S(0) => \pulse_cnt[0]_i_6_n_0\
    );
\pulse_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \pulse_cnt_reg[8]_i_1_n_5\,
      Q => pulse_cnt_reg(10),
      R => \pulse_cnt[0]_i_1_n_0\
    );
\pulse_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \pulse_cnt_reg[8]_i_1_n_4\,
      Q => pulse_cnt_reg(11),
      R => \pulse_cnt[0]_i_1_n_0\
    );
\pulse_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \pulse_cnt_reg[12]_i_1_n_7\,
      Q => pulse_cnt_reg(12),
      R => \pulse_cnt[0]_i_1_n_0\
    );
\pulse_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pulse_cnt_reg[8]_i_1_n_0\,
      CO(3) => \NLW_pulse_cnt_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \pulse_cnt_reg[12]_i_1_n_1\,
      CO(1) => \pulse_cnt_reg[12]_i_1_n_2\,
      CO(0) => \pulse_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pulse_cnt_reg[12]_i_1_n_4\,
      O(2) => \pulse_cnt_reg[12]_i_1_n_5\,
      O(1) => \pulse_cnt_reg[12]_i_1_n_6\,
      O(0) => \pulse_cnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => pulse_cnt_reg(15 downto 12)
    );
\pulse_cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \pulse_cnt_reg[12]_i_1_n_6\,
      Q => pulse_cnt_reg(13),
      R => \pulse_cnt[0]_i_1_n_0\
    );
\pulse_cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \pulse_cnt_reg[12]_i_1_n_5\,
      Q => pulse_cnt_reg(14),
      R => \pulse_cnt[0]_i_1_n_0\
    );
\pulse_cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \pulse_cnt_reg[12]_i_1_n_4\,
      Q => pulse_cnt_reg(15),
      R => \pulse_cnt[0]_i_1_n_0\
    );
\pulse_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \pulse_cnt_reg[0]_i_2_n_6\,
      Q => pulse_cnt_reg(1),
      R => \pulse_cnt[0]_i_1_n_0\
    );
\pulse_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \pulse_cnt_reg[0]_i_2_n_5\,
      Q => pulse_cnt_reg(2),
      R => \pulse_cnt[0]_i_1_n_0\
    );
\pulse_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \pulse_cnt_reg[0]_i_2_n_4\,
      Q => pulse_cnt_reg(3),
      R => \pulse_cnt[0]_i_1_n_0\
    );
\pulse_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \pulse_cnt_reg[4]_i_1_n_7\,
      Q => pulse_cnt_reg(4),
      R => \pulse_cnt[0]_i_1_n_0\
    );
\pulse_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pulse_cnt_reg[0]_i_2_n_0\,
      CO(3) => \pulse_cnt_reg[4]_i_1_n_0\,
      CO(2) => \pulse_cnt_reg[4]_i_1_n_1\,
      CO(1) => \pulse_cnt_reg[4]_i_1_n_2\,
      CO(0) => \pulse_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pulse_cnt_reg[4]_i_1_n_4\,
      O(2) => \pulse_cnt_reg[4]_i_1_n_5\,
      O(1) => \pulse_cnt_reg[4]_i_1_n_6\,
      O(0) => \pulse_cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => pulse_cnt_reg(7 downto 4)
    );
\pulse_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \pulse_cnt_reg[4]_i_1_n_6\,
      Q => pulse_cnt_reg(5),
      R => \pulse_cnt[0]_i_1_n_0\
    );
\pulse_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \pulse_cnt_reg[4]_i_1_n_5\,
      Q => pulse_cnt_reg(6),
      R => \pulse_cnt[0]_i_1_n_0\
    );
\pulse_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \pulse_cnt_reg[4]_i_1_n_4\,
      Q => pulse_cnt_reg(7),
      R => \pulse_cnt[0]_i_1_n_0\
    );
\pulse_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \pulse_cnt_reg[8]_i_1_n_7\,
      Q => pulse_cnt_reg(8),
      R => \pulse_cnt[0]_i_1_n_0\
    );
\pulse_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pulse_cnt_reg[4]_i_1_n_0\,
      CO(3) => \pulse_cnt_reg[8]_i_1_n_0\,
      CO(2) => \pulse_cnt_reg[8]_i_1_n_1\,
      CO(1) => \pulse_cnt_reg[8]_i_1_n_2\,
      CO(0) => \pulse_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pulse_cnt_reg[8]_i_1_n_4\,
      O(2) => \pulse_cnt_reg[8]_i_1_n_5\,
      O(1) => \pulse_cnt_reg[8]_i_1_n_6\,
      O(0) => \pulse_cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => pulse_cnt_reg(11 downto 8)
    );
\pulse_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \pulse_cnt_reg[8]_i_1_n_6\,
      Q => pulse_cnt_reg(9),
      R => \pulse_cnt[0]_i_1_n_0\
    );
ramp_dwn_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => ramp_dwn_loc,
      Q => ramp_dwn_d1,
      R => \^rst_200_out\
    );
ramp_dwn_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => ramp_dwn_d1,
      Q => ramp_dwn_d2,
      R => \^rst_200_out\
    );
ramp_dwn_loc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => ramp_dwn,
      Q => ramp_dwn_loc,
      R => reset
    );
ramp_dwn_trig_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => ramp_dwn_d2,
      I1 => ramp_dwn_d1,
      I2 => sm_start_reg_n_0,
      I3 => ramp_dwn_trig,
      O => ramp_dwn_trig_i_1_n_0
    );
ramp_dwn_trig_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => ramp_dwn_trig_i_1_n_0,
      Q => ramp_dwn_trig,
      R => \^rst_200_out\
    );
ramp_up_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => ramp_up_loc,
      Q => ramp_up_d1,
      R => \^rst_200_out\
    );
ramp_up_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => ramp_up_d1,
      Q => ramp_up_d2,
      R => \^rst_200_out\
    );
ramp_up_loc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => ramp_up,
      Q => ramp_up_loc,
      R => reset
    );
ramp_up_trig_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ramp_up_d1,
      I1 => ramp_up_d2,
      O => ramp_up_trig0
    );
ramp_up_trig_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => ramp_up_trig0,
      Q => ramp_up_trig,
      R => \^rst_200_out\
    );
\res_loc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out_loc,
      D => res(0),
      Q => \res_loc_reg_n_0_[0]\,
      R => reset
    );
\res_loc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out_loc,
      D => res(1),
      Q => \res_loc_reg_n_0_[1]\,
      R => reset
    );
reset_200_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn_loc_200,
      O => reset_200_i_1_n_0
    );
reset_200_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk200,
      CE => '1',
      D => reset_200_i_1_n_0,
      Q => \^rst_200_out\,
      R => '0'
    );
reset_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn_loc,
      O => reset_i_1_n_0
    );
reset_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => reset_i_1_n_0,
      Q => reset,
      R => '0'
    );
\running_loc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => sm_run_stp_reg_n_0,
      Q => \running_loc_reg_n_0_[0]\,
      R => reset
    );
\running_loc_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => steady_spd_reg_n_0,
      Q => \running_loc_reg_n_0_[1]\,
      S => reset
    );
\running_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \running_loc_reg_n_0_[0]\,
      Q => running(0),
      R => reset
    );
\running_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \running_loc_reg_n_0_[1]\,
      Q => running(1),
      S => reset
    );
slw_stps_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => slw_stps_loc,
      Q => slw_stps_d1,
      R => \^rst_200_out\
    );
slw_stps_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => slw_stps_d1,
      Q => slw_stps_d2,
      R => \^rst_200_out\
    );
slw_stps_loc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => slw_stps,
      Q => slw_stps_loc,
      R => reset
    );
slw_stps_trig_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => slw_stps_d1,
      I1 => slw_stps_d2,
      O => slw_stps_trig0
    );
slw_stps_trig_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => slw_stps_trig0,
      Q => slw_stps_trig,
      R => \^rst_200_out\
    );
\sm_ACC[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => sm_ACC_pos(0),
      I1 => \sm_ACC[21]_i_4_n_0\,
      I2 => sm_ACC_neg(0),
      I3 => \sm_ACC[21]_i_5_n_0\,
      O => \sm_ACC[0]_i_1_n_0\
    );
\sm_ACC[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => sm_ACC_pos(10),
      I1 => \sm_ACC[21]_i_4_n_0\,
      I2 => sm_ACC_neg(10),
      I3 => \sm_ACC[21]_i_5_n_0\,
      O => \sm_ACC[10]_i_1_n_0\
    );
\sm_ACC[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => sm_ACC_pos(11),
      I1 => \sm_ACC[21]_i_4_n_0\,
      I2 => sm_ACC_neg(11),
      I3 => \sm_ACC[21]_i_5_n_0\,
      O => \sm_ACC[11]_i_1_n_0\
    );
\sm_ACC[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => sm_ACC_pos(12),
      I1 => \sm_ACC[21]_i_4_n_0\,
      I2 => sm_ACC_neg(12),
      I3 => \sm_ACC[21]_i_5_n_0\,
      O => \sm_ACC[12]_i_1_n_0\
    );
\sm_ACC[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => sm_ACC_pos(13),
      I1 => \sm_ACC[21]_i_4_n_0\,
      I2 => sm_ACC_neg(13),
      I3 => \sm_ACC[21]_i_5_n_0\,
      O => \sm_ACC[13]_i_1_n_0\
    );
\sm_ACC[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => sm_ACC_pos(14),
      I1 => \sm_ACC[21]_i_4_n_0\,
      I2 => sm_ACC_neg(14),
      I3 => \sm_ACC[21]_i_5_n_0\,
      O => \sm_ACC[14]_i_1_n_0\
    );
\sm_ACC[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => sm_ACC_pos(15),
      I1 => \sm_ACC[21]_i_4_n_0\,
      I2 => sm_ACC_neg(15),
      I3 => \sm_ACC[21]_i_5_n_0\,
      O => \sm_ACC[15]_i_1_n_0\
    );
\sm_ACC[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => sm_ACC_pos(16),
      I1 => \sm_ACC[21]_i_4_n_0\,
      I2 => sm_ACC_neg(16),
      I3 => \sm_ACC[21]_i_5_n_0\,
      O => \sm_ACC[16]_i_1_n_0\
    );
\sm_ACC[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => sm_ACC_pos(17),
      I1 => \sm_ACC[21]_i_4_n_0\,
      I2 => sm_ACC_neg(17),
      I3 => \sm_ACC[21]_i_5_n_0\,
      O => \sm_ACC[17]_i_1_n_0\
    );
\sm_ACC[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => sm_ACC_pos(18),
      I1 => \sm_ACC[21]_i_4_n_0\,
      I2 => sm_ACC_neg(18),
      I3 => \sm_ACC[21]_i_5_n_0\,
      O => \sm_ACC[18]_i_1_n_0\
    );
\sm_ACC[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => sm_ACC_pos(19),
      I1 => \sm_ACC[21]_i_4_n_0\,
      I2 => sm_ACC_neg(19),
      I3 => \sm_ACC[21]_i_5_n_0\,
      O => \sm_ACC[19]_i_1_n_0\
    );
\sm_ACC[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => sm_ACC_pos(1),
      I1 => \sm_ACC[21]_i_4_n_0\,
      I2 => sm_ACC_neg(1),
      I3 => \sm_ACC[21]_i_5_n_0\,
      O => \sm_ACC[1]_i_1_n_0\
    );
\sm_ACC[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => sm_ACC_pos(20),
      I1 => \sm_ACC[21]_i_4_n_0\,
      I2 => sm_ACC_neg(20),
      I3 => \sm_ACC[21]_i_5_n_0\,
      O => \sm_ACC[20]_i_1_n_0\
    );
\sm_ACC[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sm_start,
      I1 => \FSM_onehot_sm_state_reg_n_0_[0]\,
      O => \sm_ACC[21]_i_1_n_0\
    );
\sm_ACC[21]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => sm_ACC_pos(21),
      I1 => \sm_ACC[21]_i_4_n_0\,
      I2 => sm_ACC_neg(21),
      I3 => \sm_ACC[21]_i_5_n_0\,
      O => \sm_ACC[21]_i_2_n_0\
    );
\sm_ACC[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sm_ACC[21]_i_6_n_0\,
      I1 => \FSM_onehot_sm_state_reg_n_0_[25]\,
      I2 => \FSM_onehot_sm_state_reg_n_0_[11]\,
      I3 => \FSM_onehot_sm_state_reg_n_0_[9]\,
      I4 => \FSM_onehot_sm_state_reg_n_0_[13]\,
      I5 => \FSM_onehot_sm_state_reg_n_0_[31]\,
      O => sm_start
    );
\sm_ACC[21]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFCFCFCFEFFFEFE"
    )
        port map (
      I0 => \FSM_onehot_sm_state_reg_n_0_[21]\,
      I1 => \FSM_onehot_sm_state_reg_n_0_[7]\,
      I2 => \sm_ACC[21]_i_7_n_0\,
      I3 => ACC_zero_flg_reg_n_0,
      I4 => \FSM_onehot_sm_state_reg_n_0_[31]\,
      I5 => EC_tgt_acc_trig_reg_n_0,
      O => \sm_ACC[21]_i_4_n_0\
    );
\sm_ACC[21]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAAEA"
    )
        port map (
      I0 => \FSM_onehot_sm_state_reg_n_0_[13]\,
      I1 => \FSM_onehot_sm_state_reg_n_0_[31]\,
      I2 => EC_tgt_acc_trig_reg_n_0,
      I3 => ACC_zero_flg_reg_n_0,
      I4 => \sm_ACC[21]_i_8_n_0\,
      O => \sm_ACC[21]_i_5_n_0\
    );
\sm_ACC[21]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_sm_state_reg_n_0_[35]\,
      I1 => \FSM_onehot_sm_state_reg_n_0_[23]\,
      I2 => \sm_EC[21]_i_4_n_0\,
      I3 => \sm_EC[21]_i_3_n_0\,
      O => \sm_ACC[21]_i_6_n_0\
    );
\sm_ACC[21]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_sm_state_reg_n_0_[5]\,
      I1 => \FSM_onehot_sm_state_reg_n_0_[19]\,
      O => \sm_ACC[21]_i_7_n_0\
    );
\sm_ACC[21]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEFFAEAE"
    )
        port map (
      I0 => \FSM_onehot_sm_state_reg_n_0_[15]\,
      I1 => \FSM_onehot_sm_state_reg_n_0_[27]\,
      I2 => init_EC_trig_reg_n_0,
      I3 => EC_tgt_dec_trig_reg_n_0,
      I4 => \FSM_onehot_sm_state_reg_n_0_[33]\,
      O => \sm_ACC[21]_i_8_n_0\
    );
\sm_ACC[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => sm_ACC_pos(2),
      I1 => \sm_ACC[21]_i_4_n_0\,
      I2 => sm_ACC_neg(2),
      I3 => \sm_ACC[21]_i_5_n_0\,
      O => \sm_ACC[2]_i_1_n_0\
    );
\sm_ACC[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => sm_ACC_pos(3),
      I1 => \sm_ACC[21]_i_4_n_0\,
      I2 => sm_ACC_neg(3),
      I3 => \sm_ACC[21]_i_5_n_0\,
      O => \sm_ACC[3]_i_1_n_0\
    );
\sm_ACC[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => sm_ACC_pos(4),
      I1 => \sm_ACC[21]_i_4_n_0\,
      I2 => sm_ACC_neg(4),
      I3 => \sm_ACC[21]_i_5_n_0\,
      O => \sm_ACC[4]_i_1_n_0\
    );
\sm_ACC[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => sm_ACC_pos(5),
      I1 => \sm_ACC[21]_i_4_n_0\,
      I2 => sm_ACC_neg(5),
      I3 => \sm_ACC[21]_i_5_n_0\,
      O => \sm_ACC[5]_i_1_n_0\
    );
\sm_ACC[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => sm_ACC_pos(6),
      I1 => \sm_ACC[21]_i_4_n_0\,
      I2 => sm_ACC_neg(6),
      I3 => \sm_ACC[21]_i_5_n_0\,
      O => \sm_ACC[6]_i_1_n_0\
    );
\sm_ACC[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => sm_ACC_pos(7),
      I1 => \sm_ACC[21]_i_4_n_0\,
      I2 => sm_ACC_neg(7),
      I3 => \sm_ACC[21]_i_5_n_0\,
      O => \sm_ACC[7]_i_1_n_0\
    );
\sm_ACC[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => sm_ACC_pos(8),
      I1 => \sm_ACC[21]_i_4_n_0\,
      I2 => sm_ACC_neg(8),
      I3 => \sm_ACC[21]_i_5_n_0\,
      O => \sm_ACC[8]_i_1_n_0\
    );
\sm_ACC[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => sm_ACC_pos(9),
      I1 => \sm_ACC[21]_i_4_n_0\,
      I2 => sm_ACC_neg(9),
      I3 => \sm_ACC[21]_i_5_n_0\,
      O => \sm_ACC[9]_i_1_n_0\
    );
\sm_ACC_neg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \plusOp_inferred__1/i__carry_n_7\,
      Q => sm_ACC_neg(0),
      R => \^rst_200_out\
    );
\sm_ACC_neg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \plusOp_inferred__1/i__carry__1_n_5\,
      Q => sm_ACC_neg(10),
      R => \^rst_200_out\
    );
\sm_ACC_neg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \plusOp_inferred__1/i__carry__1_n_4\,
      Q => sm_ACC_neg(11),
      R => \^rst_200_out\
    );
\sm_ACC_neg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \plusOp_inferred__1/i__carry__2_n_7\,
      Q => sm_ACC_neg(12),
      R => \^rst_200_out\
    );
\sm_ACC_neg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \plusOp_inferred__1/i__carry__2_n_6\,
      Q => sm_ACC_neg(13),
      R => \^rst_200_out\
    );
\sm_ACC_neg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \plusOp_inferred__1/i__carry__2_n_5\,
      Q => sm_ACC_neg(14),
      R => \^rst_200_out\
    );
\sm_ACC_neg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \plusOp_inferred__1/i__carry__2_n_4\,
      Q => sm_ACC_neg(15),
      R => \^rst_200_out\
    );
\sm_ACC_neg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \plusOp_inferred__1/i__carry__3_n_7\,
      Q => sm_ACC_neg(16),
      R => \^rst_200_out\
    );
\sm_ACC_neg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \plusOp_inferred__1/i__carry__3_n_6\,
      Q => sm_ACC_neg(17),
      R => \^rst_200_out\
    );
\sm_ACC_neg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \plusOp_inferred__1/i__carry__3_n_5\,
      Q => sm_ACC_neg(18),
      R => \^rst_200_out\
    );
\sm_ACC_neg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \plusOp_inferred__1/i__carry__3_n_4\,
      Q => sm_ACC_neg(19),
      R => \^rst_200_out\
    );
\sm_ACC_neg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \plusOp_inferred__1/i__carry_n_6\,
      Q => sm_ACC_neg(1),
      R => \^rst_200_out\
    );
\sm_ACC_neg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \plusOp_inferred__1/i__carry__4_n_7\,
      Q => sm_ACC_neg(20),
      R => \^rst_200_out\
    );
\sm_ACC_neg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \plusOp_inferred__1/i__carry__4_n_6\,
      Q => sm_ACC_neg(21),
      R => \^rst_200_out\
    );
\sm_ACC_neg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \plusOp_inferred__1/i__carry_n_5\,
      Q => sm_ACC_neg(2),
      R => \^rst_200_out\
    );
\sm_ACC_neg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \plusOp_inferred__1/i__carry_n_4\,
      Q => sm_ACC_neg(3),
      R => \^rst_200_out\
    );
\sm_ACC_neg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \plusOp_inferred__1/i__carry__0_n_7\,
      Q => sm_ACC_neg(4),
      R => \^rst_200_out\
    );
\sm_ACC_neg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \plusOp_inferred__1/i__carry__0_n_6\,
      Q => sm_ACC_neg(5),
      R => \^rst_200_out\
    );
\sm_ACC_neg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \plusOp_inferred__1/i__carry__0_n_5\,
      Q => sm_ACC_neg(6),
      R => \^rst_200_out\
    );
\sm_ACC_neg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \plusOp_inferred__1/i__carry__0_n_4\,
      Q => sm_ACC_neg(7),
      R => \^rst_200_out\
    );
\sm_ACC_neg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \plusOp_inferred__1/i__carry__1_n_7\,
      Q => sm_ACC_neg(8),
      R => \^rst_200_out\
    );
\sm_ACC_neg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \plusOp_inferred__1/i__carry__1_n_6\,
      Q => sm_ACC_neg(9),
      R => \^rst_200_out\
    );
\sm_ACC_pos_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \tgt_ACC_loc_reg_n_0_[0]\,
      Q => sm_ACC_pos(0),
      R => \^rst_200_out\
    );
\sm_ACC_pos_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \tgt_ACC_loc_reg_n_0_[10]\,
      Q => sm_ACC_pos(10),
      R => \^rst_200_out\
    );
\sm_ACC_pos_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \tgt_ACC_loc_reg_n_0_[11]\,
      Q => sm_ACC_pos(11),
      R => \^rst_200_out\
    );
\sm_ACC_pos_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \tgt_ACC_loc_reg_n_0_[12]\,
      Q => sm_ACC_pos(12),
      R => \^rst_200_out\
    );
\sm_ACC_pos_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \tgt_ACC_loc_reg_n_0_[13]\,
      Q => sm_ACC_pos(13),
      R => \^rst_200_out\
    );
\sm_ACC_pos_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \tgt_ACC_loc_reg_n_0_[14]\,
      Q => sm_ACC_pos(14),
      R => \^rst_200_out\
    );
\sm_ACC_pos_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \tgt_ACC_loc_reg_n_0_[15]\,
      Q => sm_ACC_pos(15),
      R => \^rst_200_out\
    );
\sm_ACC_pos_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \tgt_ACC_loc_reg_n_0_[16]\,
      Q => sm_ACC_pos(16),
      R => \^rst_200_out\
    );
\sm_ACC_pos_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \tgt_ACC_loc_reg_n_0_[17]\,
      Q => sm_ACC_pos(17),
      R => \^rst_200_out\
    );
\sm_ACC_pos_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \tgt_ACC_loc_reg_n_0_[18]\,
      Q => sm_ACC_pos(18),
      R => \^rst_200_out\
    );
\sm_ACC_pos_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \tgt_ACC_loc_reg_n_0_[19]\,
      Q => sm_ACC_pos(19),
      R => \^rst_200_out\
    );
\sm_ACC_pos_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \tgt_ACC_loc_reg_n_0_[1]\,
      Q => sm_ACC_pos(1),
      R => \^rst_200_out\
    );
\sm_ACC_pos_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \tgt_ACC_loc_reg_n_0_[20]\,
      Q => sm_ACC_pos(20),
      R => \^rst_200_out\
    );
\sm_ACC_pos_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \tgt_ACC_loc_reg_n_0_[21]\,
      Q => sm_ACC_pos(21),
      R => \^rst_200_out\
    );
\sm_ACC_pos_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \tgt_ACC_loc_reg_n_0_[2]\,
      Q => sm_ACC_pos(2),
      R => \^rst_200_out\
    );
\sm_ACC_pos_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \tgt_ACC_loc_reg_n_0_[3]\,
      Q => sm_ACC_pos(3),
      R => \^rst_200_out\
    );
\sm_ACC_pos_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \tgt_ACC_loc_reg_n_0_[4]\,
      Q => sm_ACC_pos(4),
      R => \^rst_200_out\
    );
\sm_ACC_pos_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \tgt_ACC_loc_reg_n_0_[5]\,
      Q => sm_ACC_pos(5),
      R => \^rst_200_out\
    );
\sm_ACC_pos_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \tgt_ACC_loc_reg_n_0_[6]\,
      Q => sm_ACC_pos(6),
      R => \^rst_200_out\
    );
\sm_ACC_pos_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \tgt_ACC_loc_reg_n_0_[7]\,
      Q => sm_ACC_pos(7),
      R => \^rst_200_out\
    );
\sm_ACC_pos_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \tgt_ACC_loc_reg_n_0_[8]\,
      Q => sm_ACC_pos(8),
      R => \^rst_200_out\
    );
\sm_ACC_pos_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \tgt_ACC_loc_reg_n_0_[9]\,
      Q => sm_ACC_pos(9),
      R => \^rst_200_out\
    );
\sm_ACC_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_ACC[21]_i_1_n_0\,
      D => \sm_ACC[0]_i_1_n_0\,
      Q => smc_ACC(0),
      R => \^rst_200_out\
    );
\sm_ACC_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_ACC[21]_i_1_n_0\,
      D => \sm_ACC[10]_i_1_n_0\,
      Q => smc_ACC(10),
      R => \^rst_200_out\
    );
\sm_ACC_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_ACC[21]_i_1_n_0\,
      D => \sm_ACC[11]_i_1_n_0\,
      Q => smc_ACC(11),
      R => \^rst_200_out\
    );
\sm_ACC_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_ACC[21]_i_1_n_0\,
      D => \sm_ACC[12]_i_1_n_0\,
      Q => smc_ACC(12),
      R => \^rst_200_out\
    );
\sm_ACC_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_ACC[21]_i_1_n_0\,
      D => \sm_ACC[13]_i_1_n_0\,
      Q => smc_ACC(13),
      R => \^rst_200_out\
    );
\sm_ACC_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_ACC[21]_i_1_n_0\,
      D => \sm_ACC[14]_i_1_n_0\,
      Q => smc_ACC(14),
      R => \^rst_200_out\
    );
\sm_ACC_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_ACC[21]_i_1_n_0\,
      D => \sm_ACC[15]_i_1_n_0\,
      Q => smc_ACC(15),
      R => \^rst_200_out\
    );
\sm_ACC_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_ACC[21]_i_1_n_0\,
      D => \sm_ACC[16]_i_1_n_0\,
      Q => smc_ACC(16),
      R => \^rst_200_out\
    );
\sm_ACC_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_ACC[21]_i_1_n_0\,
      D => \sm_ACC[17]_i_1_n_0\,
      Q => smc_ACC(17),
      R => \^rst_200_out\
    );
\sm_ACC_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_ACC[21]_i_1_n_0\,
      D => \sm_ACC[18]_i_1_n_0\,
      Q => smc_ACC(18),
      R => \^rst_200_out\
    );
\sm_ACC_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_ACC[21]_i_1_n_0\,
      D => \sm_ACC[19]_i_1_n_0\,
      Q => smc_ACC(19),
      R => \^rst_200_out\
    );
\sm_ACC_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_ACC[21]_i_1_n_0\,
      D => \sm_ACC[1]_i_1_n_0\,
      Q => smc_ACC(1),
      R => \^rst_200_out\
    );
\sm_ACC_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_ACC[21]_i_1_n_0\,
      D => \sm_ACC[20]_i_1_n_0\,
      Q => smc_ACC(20),
      R => \^rst_200_out\
    );
\sm_ACC_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_ACC[21]_i_1_n_0\,
      D => \sm_ACC[21]_i_2_n_0\,
      Q => smc_ACC(21),
      R => \^rst_200_out\
    );
\sm_ACC_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_ACC[21]_i_1_n_0\,
      D => \sm_ACC[2]_i_1_n_0\,
      Q => smc_ACC(2),
      R => \^rst_200_out\
    );
\sm_ACC_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_ACC[21]_i_1_n_0\,
      D => \sm_ACC[3]_i_1_n_0\,
      Q => smc_ACC(3),
      R => \^rst_200_out\
    );
\sm_ACC_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_ACC[21]_i_1_n_0\,
      D => \sm_ACC[4]_i_1_n_0\,
      Q => smc_ACC(4),
      R => \^rst_200_out\
    );
\sm_ACC_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_ACC[21]_i_1_n_0\,
      D => \sm_ACC[5]_i_1_n_0\,
      Q => smc_ACC(5),
      R => \^rst_200_out\
    );
\sm_ACC_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_ACC[21]_i_1_n_0\,
      D => \sm_ACC[6]_i_1_n_0\,
      Q => smc_ACC(6),
      R => \^rst_200_out\
    );
\sm_ACC_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_ACC[21]_i_1_n_0\,
      D => \sm_ACC[7]_i_1_n_0\,
      Q => smc_ACC(7),
      R => \^rst_200_out\
    );
\sm_ACC_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_ACC[21]_i_1_n_0\,
      D => \sm_ACC[8]_i_1_n_0\,
      Q => smc_ACC(8),
      R => \^rst_200_out\
    );
\sm_ACC_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_ACC[21]_i_1_n_0\,
      D => \sm_ACC[9]_i_1_n_0\,
      Q => smc_ACC(9),
      R => \^rst_200_out\
    );
\sm_EC[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sm_EC[21]_i_4_n_0\,
      I1 => init_EC_loc(0),
      I2 => \sm_EC[21]_i_5_n_0\,
      I3 => sm_nxt_EC_loc(0),
      I4 => tgt_EC(0),
      I5 => \sm_EC[21]_i_6_n_0\,
      O => \sm_EC[0]_i_1_n_0\
    );
\sm_EC[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sm_EC[21]_i_4_n_0\,
      I1 => init_EC_loc(10),
      I2 => \sm_EC[21]_i_5_n_0\,
      I3 => sm_nxt_EC_loc(10),
      I4 => tgt_EC(10),
      I5 => \sm_EC[21]_i_6_n_0\,
      O => \sm_EC[10]_i_1_n_0\
    );
\sm_EC[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sm_EC[21]_i_4_n_0\,
      I1 => init_EC_loc(11),
      I2 => \sm_EC[21]_i_5_n_0\,
      I3 => sm_nxt_EC_loc(11),
      I4 => tgt_EC(11),
      I5 => \sm_EC[21]_i_6_n_0\,
      O => \sm_EC[11]_i_1_n_0\
    );
\sm_EC[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sm_EC[21]_i_4_n_0\,
      I1 => init_EC_loc(12),
      I2 => \sm_EC[21]_i_5_n_0\,
      I3 => sm_nxt_EC_loc(12),
      I4 => tgt_EC(12),
      I5 => \sm_EC[21]_i_6_n_0\,
      O => \sm_EC[12]_i_1_n_0\
    );
\sm_EC[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sm_EC[21]_i_4_n_0\,
      I1 => init_EC_loc(13),
      I2 => \sm_EC[21]_i_5_n_0\,
      I3 => sm_nxt_EC_loc(13),
      I4 => tgt_EC(13),
      I5 => \sm_EC[21]_i_6_n_0\,
      O => \sm_EC[13]_i_1_n_0\
    );
\sm_EC[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sm_EC[21]_i_4_n_0\,
      I1 => init_EC_loc(14),
      I2 => \sm_EC[21]_i_5_n_0\,
      I3 => sm_nxt_EC_loc(14),
      I4 => tgt_EC(14),
      I5 => \sm_EC[21]_i_6_n_0\,
      O => \sm_EC[14]_i_1_n_0\
    );
\sm_EC[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sm_EC[21]_i_4_n_0\,
      I1 => init_EC_loc(15),
      I2 => \sm_EC[21]_i_5_n_0\,
      I3 => sm_nxt_EC_loc(15),
      I4 => tgt_EC(15),
      I5 => \sm_EC[21]_i_6_n_0\,
      O => \sm_EC[15]_i_1_n_0\
    );
\sm_EC[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sm_EC[21]_i_4_n_0\,
      I1 => init_EC_loc(16),
      I2 => \sm_EC[21]_i_5_n_0\,
      I3 => sm_nxt_EC_loc(16),
      I4 => tgt_EC(16),
      I5 => \sm_EC[21]_i_6_n_0\,
      O => \sm_EC[16]_i_1_n_0\
    );
\sm_EC[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sm_EC[21]_i_4_n_0\,
      I1 => init_EC_loc(17),
      I2 => \sm_EC[21]_i_5_n_0\,
      I3 => sm_nxt_EC_loc(17),
      I4 => tgt_EC(17),
      I5 => \sm_EC[21]_i_6_n_0\,
      O => \sm_EC[17]_i_1_n_0\
    );
\sm_EC[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sm_EC[21]_i_4_n_0\,
      I1 => init_EC_loc(18),
      I2 => \sm_EC[21]_i_5_n_0\,
      I3 => sm_nxt_EC_loc(18),
      I4 => tgt_EC(18),
      I5 => \sm_EC[21]_i_6_n_0\,
      O => \sm_EC[18]_i_1_n_0\
    );
\sm_EC[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sm_EC[21]_i_4_n_0\,
      I1 => init_EC_loc(19),
      I2 => \sm_EC[21]_i_5_n_0\,
      I3 => sm_nxt_EC_loc(19),
      I4 => tgt_EC(19),
      I5 => \sm_EC[21]_i_6_n_0\,
      O => \sm_EC[19]_i_1_n_0\
    );
\sm_EC[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sm_EC[21]_i_4_n_0\,
      I1 => init_EC_loc(1),
      I2 => \sm_EC[21]_i_5_n_0\,
      I3 => sm_nxt_EC_loc(1),
      I4 => tgt_EC(1),
      I5 => \sm_EC[21]_i_6_n_0\,
      O => \sm_EC[1]_i_1_n_0\
    );
\sm_EC[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sm_EC[21]_i_4_n_0\,
      I1 => init_EC_loc(20),
      I2 => \sm_EC[21]_i_5_n_0\,
      I3 => sm_nxt_EC_loc(20),
      I4 => tgt_EC(20),
      I5 => \sm_EC[21]_i_6_n_0\,
      O => \sm_EC[20]_i_1_n_0\
    );
\sm_EC[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \sm_EC[21]_i_3_n_0\,
      I1 => \sm_EC[21]_i_4_n_0\,
      I2 => \FSM_onehot_sm_state_reg_n_0_[23]\,
      I3 => \FSM_onehot_sm_state_reg_n_0_[35]\,
      I4 => \FSM_onehot_sm_state_reg_n_0_[0]\,
      O => \sm_EC[21]_i_1_n_0\
    );
\sm_EC[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sm_EC[21]_i_4_n_0\,
      I1 => init_EC_loc(21),
      I2 => \sm_EC[21]_i_5_n_0\,
      I3 => sm_nxt_EC_loc(21),
      I4 => tgt_EC(21),
      I5 => \sm_EC[21]_i_6_n_0\,
      O => \sm_EC[21]_i_2_n_0\
    );
\sm_EC[21]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_sm_state_reg_n_0_[15]\,
      I1 => \FSM_onehot_sm_state_reg_n_0_[27]\,
      I2 => \FSM_onehot_sm_state_reg_n_0_[33]\,
      I3 => \FSM_onehot_sm_state_reg_n_0_[7]\,
      I4 => \FSM_onehot_sm_state_reg_n_0_[21]\,
      O => \sm_EC[21]_i_3_n_0\
    );
\sm_EC[21]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_sm_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_sm_state_reg_n_0_[5]\,
      I2 => \FSM_onehot_sm_state_reg_n_0_[19]\,
      I3 => \FSM_onehot_sm_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_sm_state_reg_n_0_[17]\,
      I5 => \FSM_onehot_sm_state_reg_n_0_[29]\,
      O => \sm_EC[21]_i_4_n_0\
    );
\sm_EC[21]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEFE"
    )
        port map (
      I0 => \sm_ACC[21]_i_8_n_0\,
      I1 => \FSM_onehot_sm_state_reg_n_0_[7]\,
      I2 => \FSM_onehot_sm_state_reg_n_0_[21]\,
      I3 => EC_tgt_acc_trig_reg_n_0,
      O => \sm_EC[21]_i_5_n_0\
    );
\sm_EC[21]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF8"
    )
        port map (
      I0 => init_EC_trig_reg_n_0,
      I1 => \FSM_onehot_sm_state_reg_n_0_[27]\,
      I2 => \FSM_onehot_sm_state_reg_n_0_[35]\,
      I3 => \FSM_onehot_sm_state_reg_n_0_[23]\,
      I4 => \sm_EC[21]_i_7_n_0\,
      O => \sm_EC[21]_i_6_n_0\
    );
\sm_EC[21]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => EC_tgt_acc_trig_reg_n_0,
      I1 => \FSM_onehot_sm_state_reg_n_0_[21]\,
      I2 => \FSM_onehot_sm_state_reg_n_0_[33]\,
      I3 => EC_tgt_dec_trig_reg_n_0,
      O => \sm_EC[21]_i_7_n_0\
    );
\sm_EC[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sm_EC[21]_i_4_n_0\,
      I1 => init_EC_loc(2),
      I2 => \sm_EC[21]_i_5_n_0\,
      I3 => sm_nxt_EC_loc(2),
      I4 => tgt_EC(2),
      I5 => \sm_EC[21]_i_6_n_0\,
      O => \sm_EC[2]_i_1_n_0\
    );
\sm_EC[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sm_EC[21]_i_4_n_0\,
      I1 => init_EC_loc(3),
      I2 => \sm_EC[21]_i_5_n_0\,
      I3 => sm_nxt_EC_loc(3),
      I4 => tgt_EC(3),
      I5 => \sm_EC[21]_i_6_n_0\,
      O => \sm_EC[3]_i_1_n_0\
    );
\sm_EC[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sm_EC[21]_i_4_n_0\,
      I1 => init_EC_loc(4),
      I2 => \sm_EC[21]_i_5_n_0\,
      I3 => sm_nxt_EC_loc(4),
      I4 => tgt_EC(4),
      I5 => \sm_EC[21]_i_6_n_0\,
      O => \sm_EC[4]_i_1_n_0\
    );
\sm_EC[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sm_EC[21]_i_4_n_0\,
      I1 => init_EC_loc(5),
      I2 => \sm_EC[21]_i_5_n_0\,
      I3 => sm_nxt_EC_loc(5),
      I4 => tgt_EC(5),
      I5 => \sm_EC[21]_i_6_n_0\,
      O => \sm_EC[5]_i_1_n_0\
    );
\sm_EC[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sm_EC[21]_i_4_n_0\,
      I1 => init_EC_loc(6),
      I2 => \sm_EC[21]_i_5_n_0\,
      I3 => sm_nxt_EC_loc(6),
      I4 => tgt_EC(6),
      I5 => \sm_EC[21]_i_6_n_0\,
      O => \sm_EC[6]_i_1_n_0\
    );
\sm_EC[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sm_EC[21]_i_4_n_0\,
      I1 => init_EC_loc(7),
      I2 => \sm_EC[21]_i_5_n_0\,
      I3 => sm_nxt_EC_loc(7),
      I4 => tgt_EC(7),
      I5 => \sm_EC[21]_i_6_n_0\,
      O => \sm_EC[7]_i_1_n_0\
    );
\sm_EC[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sm_EC[21]_i_4_n_0\,
      I1 => init_EC_loc(8),
      I2 => \sm_EC[21]_i_5_n_0\,
      I3 => sm_nxt_EC_loc(8),
      I4 => tgt_EC(8),
      I5 => \sm_EC[21]_i_6_n_0\,
      O => \sm_EC[8]_i_1_n_0\
    );
\sm_EC[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \sm_EC[21]_i_4_n_0\,
      I1 => init_EC_loc(9),
      I2 => \sm_EC[21]_i_5_n_0\,
      I3 => sm_nxt_EC_loc(9),
      I4 => tgt_EC(9),
      I5 => \sm_EC[21]_i_6_n_0\,
      O => \sm_EC[9]_i_1_n_0\
    );
\sm_EC_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_EC[21]_i_1_n_0\,
      D => \sm_EC[0]_i_1_n_0\,
      Q => \^q\(0),
      R => \^rst_200_out\
    );
\sm_EC_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_EC[21]_i_1_n_0\,
      D => \sm_EC[10]_i_1_n_0\,
      Q => \^q\(10),
      R => \^rst_200_out\
    );
\sm_EC_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_EC[21]_i_1_n_0\,
      D => \sm_EC[11]_i_1_n_0\,
      Q => \^q\(11),
      R => \^rst_200_out\
    );
\sm_EC_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_EC[21]_i_1_n_0\,
      D => \sm_EC[12]_i_1_n_0\,
      Q => \^q\(12),
      R => \^rst_200_out\
    );
\sm_EC_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_EC[21]_i_1_n_0\,
      D => \sm_EC[13]_i_1_n_0\,
      Q => \^q\(13),
      R => \^rst_200_out\
    );
\sm_EC_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_EC[21]_i_1_n_0\,
      D => \sm_EC[14]_i_1_n_0\,
      Q => \^q\(14),
      R => \^rst_200_out\
    );
\sm_EC_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_EC[21]_i_1_n_0\,
      D => \sm_EC[15]_i_1_n_0\,
      Q => \^q\(15),
      R => \^rst_200_out\
    );
\sm_EC_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_EC[21]_i_1_n_0\,
      D => \sm_EC[16]_i_1_n_0\,
      Q => \^q\(16),
      R => \^rst_200_out\
    );
\sm_EC_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_EC[21]_i_1_n_0\,
      D => \sm_EC[17]_i_1_n_0\,
      Q => \^q\(17),
      R => \^rst_200_out\
    );
\sm_EC_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_EC[21]_i_1_n_0\,
      D => \sm_EC[18]_i_1_n_0\,
      Q => \^q\(18),
      R => \^rst_200_out\
    );
\sm_EC_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_EC[21]_i_1_n_0\,
      D => \sm_EC[19]_i_1_n_0\,
      Q => \^q\(19),
      R => \^rst_200_out\
    );
\sm_EC_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_EC[21]_i_1_n_0\,
      D => \sm_EC[1]_i_1_n_0\,
      Q => \^q\(1),
      R => \^rst_200_out\
    );
\sm_EC_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_EC[21]_i_1_n_0\,
      D => \sm_EC[20]_i_1_n_0\,
      Q => \^q\(20),
      R => \^rst_200_out\
    );
\sm_EC_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_EC[21]_i_1_n_0\,
      D => \sm_EC[21]_i_2_n_0\,
      Q => \^q\(21),
      R => \^rst_200_out\
    );
\sm_EC_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_EC[21]_i_1_n_0\,
      D => \sm_EC[2]_i_1_n_0\,
      Q => \^q\(2),
      R => \^rst_200_out\
    );
\sm_EC_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_EC[21]_i_1_n_0\,
      D => \sm_EC[3]_i_1_n_0\,
      Q => \^q\(3),
      R => \^rst_200_out\
    );
\sm_EC_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_EC[21]_i_1_n_0\,
      D => \sm_EC[4]_i_1_n_0\,
      Q => \^q\(4),
      R => \^rst_200_out\
    );
\sm_EC_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_EC[21]_i_1_n_0\,
      D => \sm_EC[5]_i_1_n_0\,
      Q => \^q\(5),
      R => \^rst_200_out\
    );
\sm_EC_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_EC[21]_i_1_n_0\,
      D => \sm_EC[6]_i_1_n_0\,
      Q => \^q\(6),
      R => \^rst_200_out\
    );
\sm_EC_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_EC[21]_i_1_n_0\,
      D => \sm_EC[7]_i_1_n_0\,
      Q => \^q\(7),
      R => \^rst_200_out\
    );
\sm_EC_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_EC[21]_i_1_n_0\,
      D => \sm_EC[8]_i_1_n_0\,
      Q => \^q\(8),
      R => \^rst_200_out\
    );
\sm_EC_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_EC[21]_i_1_n_0\,
      D => \sm_EC[9]_i_1_n_0\,
      Q => \^q\(9),
      R => \^rst_200_out\
    );
\sm_RM[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \sm_EC[21]_i_5_n_0\,
      I1 => \sm_nxt_RM_loc_reg_n_0_[0]\,
      O => \sm_RM[0]_i_1_n_0\
    );
\sm_RM[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \sm_EC[21]_i_5_n_0\,
      I1 => \sm_nxt_RM_loc_reg_n_0_[10]\,
      O => \sm_RM[10]_i_1_n_0\
    );
\sm_RM[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \sm_EC[21]_i_5_n_0\,
      I1 => \sm_nxt_RM_loc_reg_n_0_[11]\,
      O => \sm_RM[11]_i_1_n_0\
    );
\sm_RM[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \sm_EC[21]_i_5_n_0\,
      I1 => \sm_nxt_RM_loc_reg_n_0_[12]\,
      O => \sm_RM[12]_i_1_n_0\
    );
\sm_RM[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \sm_EC[21]_i_5_n_0\,
      I1 => \sm_nxt_RM_loc_reg_n_0_[13]\,
      O => \sm_RM[13]_i_1_n_0\
    );
\sm_RM[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \sm_EC[21]_i_5_n_0\,
      I1 => \sm_nxt_RM_loc_reg_n_0_[14]\,
      O => \sm_RM[14]_i_1_n_0\
    );
\sm_RM[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \sm_EC[21]_i_5_n_0\,
      I1 => \sm_nxt_RM_loc_reg_n_0_[15]\,
      O => \sm_RM[15]_i_1_n_0\
    );
\sm_RM[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \sm_EC[21]_i_5_n_0\,
      I1 => \sm_nxt_RM_loc_reg_n_0_[1]\,
      O => \sm_RM[1]_i_1_n_0\
    );
\sm_RM[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \sm_EC[21]_i_5_n_0\,
      I1 => \sm_nxt_RM_loc_reg_n_0_[2]\,
      O => \sm_RM[2]_i_1_n_0\
    );
\sm_RM[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \sm_EC[21]_i_5_n_0\,
      I1 => \sm_nxt_RM_loc_reg_n_0_[3]\,
      O => \sm_RM[3]_i_1_n_0\
    );
\sm_RM[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \sm_EC[21]_i_5_n_0\,
      I1 => \sm_nxt_RM_loc_reg_n_0_[4]\,
      O => \sm_RM[4]_i_1_n_0\
    );
\sm_RM[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \sm_EC[21]_i_5_n_0\,
      I1 => \sm_nxt_RM_loc_reg_n_0_[5]\,
      O => \sm_RM[5]_i_1_n_0\
    );
\sm_RM[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \sm_EC[21]_i_5_n_0\,
      I1 => \sm_nxt_RM_loc_reg_n_0_[6]\,
      O => \sm_RM[6]_i_1_n_0\
    );
\sm_RM[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \sm_EC[21]_i_5_n_0\,
      I1 => \sm_nxt_RM_loc_reg_n_0_[7]\,
      O => \sm_RM[7]_i_1_n_0\
    );
\sm_RM[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \sm_EC[21]_i_5_n_0\,
      I1 => \sm_nxt_RM_loc_reg_n_0_[8]\,
      O => \sm_RM[8]_i_1_n_0\
    );
\sm_RM[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \sm_EC[21]_i_5_n_0\,
      I1 => \sm_nxt_RM_loc_reg_n_0_[9]\,
      O => \sm_RM[9]_i_1_n_0\
    );
\sm_RM_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_ACC[21]_i_1_n_0\,
      D => \sm_RM[0]_i_1_n_0\,
      Q => smc_RM(0),
      R => \^rst_200_out\
    );
\sm_RM_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_ACC[21]_i_1_n_0\,
      D => \sm_RM[10]_i_1_n_0\,
      Q => smc_RM(10),
      R => \^rst_200_out\
    );
\sm_RM_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_ACC[21]_i_1_n_0\,
      D => \sm_RM[11]_i_1_n_0\,
      Q => smc_RM(11),
      R => \^rst_200_out\
    );
\sm_RM_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_ACC[21]_i_1_n_0\,
      D => \sm_RM[12]_i_1_n_0\,
      Q => smc_RM(12),
      R => \^rst_200_out\
    );
\sm_RM_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_ACC[21]_i_1_n_0\,
      D => \sm_RM[13]_i_1_n_0\,
      Q => smc_RM(13),
      R => \^rst_200_out\
    );
\sm_RM_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_ACC[21]_i_1_n_0\,
      D => \sm_RM[14]_i_1_n_0\,
      Q => smc_RM(14),
      R => \^rst_200_out\
    );
\sm_RM_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_ACC[21]_i_1_n_0\,
      D => \sm_RM[15]_i_1_n_0\,
      Q => smc_RM(15),
      R => \^rst_200_out\
    );
\sm_RM_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_ACC[21]_i_1_n_0\,
      D => \sm_RM[1]_i_1_n_0\,
      Q => smc_RM(1),
      R => \^rst_200_out\
    );
\sm_RM_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_ACC[21]_i_1_n_0\,
      D => \sm_RM[2]_i_1_n_0\,
      Q => smc_RM(2),
      R => \^rst_200_out\
    );
\sm_RM_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_ACC[21]_i_1_n_0\,
      D => \sm_RM[3]_i_1_n_0\,
      Q => smc_RM(3),
      R => \^rst_200_out\
    );
\sm_RM_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_ACC[21]_i_1_n_0\,
      D => \sm_RM[4]_i_1_n_0\,
      Q => smc_RM(4),
      R => \^rst_200_out\
    );
\sm_RM_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_ACC[21]_i_1_n_0\,
      D => \sm_RM[5]_i_1_n_0\,
      Q => smc_RM(5),
      R => \^rst_200_out\
    );
\sm_RM_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_ACC[21]_i_1_n_0\,
      D => \sm_RM[6]_i_1_n_0\,
      Q => smc_RM(6),
      R => \^rst_200_out\
    );
\sm_RM_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_ACC[21]_i_1_n_0\,
      D => \sm_RM[7]_i_1_n_0\,
      Q => smc_RM(7),
      R => \^rst_200_out\
    );
\sm_RM_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_ACC[21]_i_1_n_0\,
      D => \sm_RM[8]_i_1_n_0\,
      Q => smc_RM(8),
      R => \^rst_200_out\
    );
\sm_RM_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => \sm_ACC[21]_i_1_n_0\,
      D => \sm_RM[9]_i_1_n_0\,
      Q => smc_RM(9),
      R => \^rst_200_out\
    );
\sm_nxt_EC_loc[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => smc_Next_EC(0),
      I1 => sm_run_stp_reg_n_0,
      O => \sm_nxt_EC_loc[0]_i_1_n_0\
    );
\sm_nxt_EC_loc[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => smc_Next_EC(10),
      I1 => sm_run_stp_reg_n_0,
      O => \sm_nxt_EC_loc[10]_i_1_n_0\
    );
\sm_nxt_EC_loc[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => smc_Next_EC(11),
      I1 => sm_run_stp_reg_n_0,
      O => \sm_nxt_EC_loc[11]_i_1_n_0\
    );
\sm_nxt_EC_loc[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => smc_Next_EC(12),
      I1 => sm_run_stp_reg_n_0,
      O => \sm_nxt_EC_loc[12]_i_1_n_0\
    );
\sm_nxt_EC_loc[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => smc_Next_EC(13),
      I1 => sm_run_stp_reg_n_0,
      O => \sm_nxt_EC_loc[13]_i_1_n_0\
    );
\sm_nxt_EC_loc[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => smc_Next_EC(14),
      I1 => sm_run_stp_reg_n_0,
      O => \sm_nxt_EC_loc[14]_i_1_n_0\
    );
\sm_nxt_EC_loc[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => smc_Next_EC(15),
      I1 => sm_run_stp_reg_n_0,
      O => \sm_nxt_EC_loc[15]_i_1_n_0\
    );
\sm_nxt_EC_loc[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => smc_Next_EC(16),
      I1 => sm_run_stp_reg_n_0,
      O => \sm_nxt_EC_loc[16]_i_1_n_0\
    );
\sm_nxt_EC_loc[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => smc_Next_EC(17),
      I1 => sm_run_stp_reg_n_0,
      O => \sm_nxt_EC_loc[17]_i_1_n_0\
    );
\sm_nxt_EC_loc[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => smc_Next_EC(18),
      I1 => sm_run_stp_reg_n_0,
      O => \sm_nxt_EC_loc[18]_i_1_n_0\
    );
\sm_nxt_EC_loc[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => smc_Next_EC(19),
      I1 => sm_run_stp_reg_n_0,
      O => \sm_nxt_EC_loc[19]_i_1_n_0\
    );
\sm_nxt_EC_loc[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => smc_Next_EC(1),
      I1 => sm_run_stp_reg_n_0,
      O => \sm_nxt_EC_loc[1]_i_1_n_0\
    );
\sm_nxt_EC_loc[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => smc_Next_EC(20),
      I1 => sm_run_stp_reg_n_0,
      O => \sm_nxt_EC_loc[20]_i_1_n_0\
    );
\sm_nxt_EC_loc[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => smc_ack,
      I1 => sm_run_stp_reg_n_0,
      O => sm_nxt_RM_loc
    );
\sm_nxt_EC_loc[21]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => smc_Next_EC(21),
      I1 => sm_run_stp_reg_n_0,
      O => \sm_nxt_EC_loc[21]_i_2_n_0\
    );
\sm_nxt_EC_loc[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => smc_Next_EC(2),
      I1 => sm_run_stp_reg_n_0,
      O => \sm_nxt_EC_loc[2]_i_1_n_0\
    );
\sm_nxt_EC_loc[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => smc_Next_EC(3),
      I1 => sm_run_stp_reg_n_0,
      O => \sm_nxt_EC_loc[3]_i_1_n_0\
    );
\sm_nxt_EC_loc[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => smc_Next_EC(4),
      I1 => sm_run_stp_reg_n_0,
      O => \sm_nxt_EC_loc[4]_i_1_n_0\
    );
\sm_nxt_EC_loc[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => smc_Next_EC(5),
      I1 => sm_run_stp_reg_n_0,
      O => \sm_nxt_EC_loc[5]_i_1_n_0\
    );
\sm_nxt_EC_loc[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => smc_Next_EC(6),
      I1 => sm_run_stp_reg_n_0,
      O => \sm_nxt_EC_loc[6]_i_1_n_0\
    );
\sm_nxt_EC_loc[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => smc_Next_EC(7),
      I1 => sm_run_stp_reg_n_0,
      O => \sm_nxt_EC_loc[7]_i_1_n_0\
    );
\sm_nxt_EC_loc[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => smc_Next_EC(8),
      I1 => sm_run_stp_reg_n_0,
      O => \sm_nxt_EC_loc[8]_i_1_n_0\
    );
\sm_nxt_EC_loc[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => smc_Next_EC(9),
      I1 => sm_run_stp_reg_n_0,
      O => \sm_nxt_EC_loc[9]_i_1_n_0\
    );
\sm_nxt_EC_loc_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk200,
      CE => sm_nxt_RM_loc,
      D => \sm_nxt_EC_loc[0]_i_1_n_0\,
      Q => sm_nxt_EC_loc(0),
      S => \^rst_200_out\
    );
\sm_nxt_EC_loc_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => clk200,
      CE => sm_nxt_RM_loc,
      D => \sm_nxt_EC_loc[10]_i_1_n_0\,
      Q => sm_nxt_EC_loc(10),
      S => \^rst_200_out\
    );
\sm_nxt_EC_loc_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => clk200,
      CE => sm_nxt_RM_loc,
      D => \sm_nxt_EC_loc[11]_i_1_n_0\,
      Q => sm_nxt_EC_loc(11),
      S => \^rst_200_out\
    );
\sm_nxt_EC_loc_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => clk200,
      CE => sm_nxt_RM_loc,
      D => \sm_nxt_EC_loc[12]_i_1_n_0\,
      Q => sm_nxt_EC_loc(12),
      S => \^rst_200_out\
    );
\sm_nxt_EC_loc_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => clk200,
      CE => sm_nxt_RM_loc,
      D => \sm_nxt_EC_loc[13]_i_1_n_0\,
      Q => sm_nxt_EC_loc(13),
      S => \^rst_200_out\
    );
\sm_nxt_EC_loc_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => clk200,
      CE => sm_nxt_RM_loc,
      D => \sm_nxt_EC_loc[14]_i_1_n_0\,
      Q => sm_nxt_EC_loc(14),
      S => \^rst_200_out\
    );
\sm_nxt_EC_loc_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => clk200,
      CE => sm_nxt_RM_loc,
      D => \sm_nxt_EC_loc[15]_i_1_n_0\,
      Q => sm_nxt_EC_loc(15),
      S => \^rst_200_out\
    );
\sm_nxt_EC_loc_reg[16]\: unisim.vcomponents.FDSE
     port map (
      C => clk200,
      CE => sm_nxt_RM_loc,
      D => \sm_nxt_EC_loc[16]_i_1_n_0\,
      Q => sm_nxt_EC_loc(16),
      S => \^rst_200_out\
    );
\sm_nxt_EC_loc_reg[17]\: unisim.vcomponents.FDSE
     port map (
      C => clk200,
      CE => sm_nxt_RM_loc,
      D => \sm_nxt_EC_loc[17]_i_1_n_0\,
      Q => sm_nxt_EC_loc(17),
      S => \^rst_200_out\
    );
\sm_nxt_EC_loc_reg[18]\: unisim.vcomponents.FDSE
     port map (
      C => clk200,
      CE => sm_nxt_RM_loc,
      D => \sm_nxt_EC_loc[18]_i_1_n_0\,
      Q => sm_nxt_EC_loc(18),
      S => \^rst_200_out\
    );
\sm_nxt_EC_loc_reg[19]\: unisim.vcomponents.FDSE
     port map (
      C => clk200,
      CE => sm_nxt_RM_loc,
      D => \sm_nxt_EC_loc[19]_i_1_n_0\,
      Q => sm_nxt_EC_loc(19),
      S => \^rst_200_out\
    );
\sm_nxt_EC_loc_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk200,
      CE => sm_nxt_RM_loc,
      D => \sm_nxt_EC_loc[1]_i_1_n_0\,
      Q => sm_nxt_EC_loc(1),
      S => \^rst_200_out\
    );
\sm_nxt_EC_loc_reg[20]\: unisim.vcomponents.FDSE
     port map (
      C => clk200,
      CE => sm_nxt_RM_loc,
      D => \sm_nxt_EC_loc[20]_i_1_n_0\,
      Q => sm_nxt_EC_loc(20),
      S => \^rst_200_out\
    );
\sm_nxt_EC_loc_reg[21]\: unisim.vcomponents.FDSE
     port map (
      C => clk200,
      CE => sm_nxt_RM_loc,
      D => \sm_nxt_EC_loc[21]_i_2_n_0\,
      Q => sm_nxt_EC_loc(21),
      S => \^rst_200_out\
    );
\sm_nxt_EC_loc_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk200,
      CE => sm_nxt_RM_loc,
      D => \sm_nxt_EC_loc[2]_i_1_n_0\,
      Q => sm_nxt_EC_loc(2),
      S => \^rst_200_out\
    );
\sm_nxt_EC_loc_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk200,
      CE => sm_nxt_RM_loc,
      D => \sm_nxt_EC_loc[3]_i_1_n_0\,
      Q => sm_nxt_EC_loc(3),
      S => \^rst_200_out\
    );
\sm_nxt_EC_loc_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk200,
      CE => sm_nxt_RM_loc,
      D => \sm_nxt_EC_loc[4]_i_1_n_0\,
      Q => sm_nxt_EC_loc(4),
      S => \^rst_200_out\
    );
\sm_nxt_EC_loc_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => clk200,
      CE => sm_nxt_RM_loc,
      D => \sm_nxt_EC_loc[5]_i_1_n_0\,
      Q => sm_nxt_EC_loc(5),
      S => \^rst_200_out\
    );
\sm_nxt_EC_loc_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => clk200,
      CE => sm_nxt_RM_loc,
      D => \sm_nxt_EC_loc[6]_i_1_n_0\,
      Q => sm_nxt_EC_loc(6),
      S => \^rst_200_out\
    );
\sm_nxt_EC_loc_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => clk200,
      CE => sm_nxt_RM_loc,
      D => \sm_nxt_EC_loc[7]_i_1_n_0\,
      Q => sm_nxt_EC_loc(7),
      S => \^rst_200_out\
    );
\sm_nxt_EC_loc_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => clk200,
      CE => sm_nxt_RM_loc,
      D => \sm_nxt_EC_loc[8]_i_1_n_0\,
      Q => sm_nxt_EC_loc(8),
      S => \^rst_200_out\
    );
\sm_nxt_EC_loc_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => clk200,
      CE => sm_nxt_RM_loc,
      D => \sm_nxt_EC_loc[9]_i_1_n_0\,
      Q => sm_nxt_EC_loc(9),
      S => \^rst_200_out\
    );
\sm_nxt_RM_loc[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sm_run_stp_reg_n_0,
      I1 => smc_Next_RM(0),
      O => \sm_nxt_RM_loc[0]_i_1_n_0\
    );
\sm_nxt_RM_loc[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sm_run_stp_reg_n_0,
      I1 => smc_Next_RM(10),
      O => \sm_nxt_RM_loc[10]_i_1_n_0\
    );
\sm_nxt_RM_loc[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sm_run_stp_reg_n_0,
      I1 => smc_Next_RM(11),
      O => \sm_nxt_RM_loc[11]_i_1_n_0\
    );
\sm_nxt_RM_loc[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sm_run_stp_reg_n_0,
      I1 => smc_Next_RM(12),
      O => \sm_nxt_RM_loc[12]_i_1_n_0\
    );
\sm_nxt_RM_loc[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sm_run_stp_reg_n_0,
      I1 => smc_Next_RM(13),
      O => \sm_nxt_RM_loc[13]_i_1_n_0\
    );
\sm_nxt_RM_loc[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sm_run_stp_reg_n_0,
      I1 => smc_Next_RM(14),
      O => \sm_nxt_RM_loc[14]_i_1_n_0\
    );
\sm_nxt_RM_loc[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sm_run_stp_reg_n_0,
      I1 => smc_Next_RM(15),
      O => \sm_nxt_RM_loc[15]_i_1_n_0\
    );
\sm_nxt_RM_loc[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sm_run_stp_reg_n_0,
      I1 => smc_Next_RM(1),
      O => \sm_nxt_RM_loc[1]_i_1_n_0\
    );
\sm_nxt_RM_loc[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sm_run_stp_reg_n_0,
      I1 => smc_Next_RM(2),
      O => \sm_nxt_RM_loc[2]_i_1_n_0\
    );
\sm_nxt_RM_loc[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sm_run_stp_reg_n_0,
      I1 => smc_Next_RM(3),
      O => \sm_nxt_RM_loc[3]_i_1_n_0\
    );
\sm_nxt_RM_loc[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sm_run_stp_reg_n_0,
      I1 => smc_Next_RM(4),
      O => \sm_nxt_RM_loc[4]_i_1_n_0\
    );
\sm_nxt_RM_loc[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sm_run_stp_reg_n_0,
      I1 => smc_Next_RM(5),
      O => \sm_nxt_RM_loc[5]_i_1_n_0\
    );
\sm_nxt_RM_loc[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sm_run_stp_reg_n_0,
      I1 => smc_Next_RM(6),
      O => \sm_nxt_RM_loc[6]_i_1_n_0\
    );
\sm_nxt_RM_loc[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sm_run_stp_reg_n_0,
      I1 => smc_Next_RM(7),
      O => \sm_nxt_RM_loc[7]_i_1_n_0\
    );
\sm_nxt_RM_loc[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sm_run_stp_reg_n_0,
      I1 => smc_Next_RM(8),
      O => \sm_nxt_RM_loc[8]_i_1_n_0\
    );
\sm_nxt_RM_loc[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sm_run_stp_reg_n_0,
      I1 => smc_Next_RM(9),
      O => \sm_nxt_RM_loc[9]_i_1_n_0\
    );
\sm_nxt_RM_loc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => sm_nxt_RM_loc,
      D => \sm_nxt_RM_loc[0]_i_1_n_0\,
      Q => \sm_nxt_RM_loc_reg_n_0_[0]\,
      R => \^rst_200_out\
    );
\sm_nxt_RM_loc_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => sm_nxt_RM_loc,
      D => \sm_nxt_RM_loc[10]_i_1_n_0\,
      Q => \sm_nxt_RM_loc_reg_n_0_[10]\,
      R => \^rst_200_out\
    );
\sm_nxt_RM_loc_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => sm_nxt_RM_loc,
      D => \sm_nxt_RM_loc[11]_i_1_n_0\,
      Q => \sm_nxt_RM_loc_reg_n_0_[11]\,
      R => \^rst_200_out\
    );
\sm_nxt_RM_loc_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => sm_nxt_RM_loc,
      D => \sm_nxt_RM_loc[12]_i_1_n_0\,
      Q => \sm_nxt_RM_loc_reg_n_0_[12]\,
      R => \^rst_200_out\
    );
\sm_nxt_RM_loc_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => sm_nxt_RM_loc,
      D => \sm_nxt_RM_loc[13]_i_1_n_0\,
      Q => \sm_nxt_RM_loc_reg_n_0_[13]\,
      R => \^rst_200_out\
    );
\sm_nxt_RM_loc_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => sm_nxt_RM_loc,
      D => \sm_nxt_RM_loc[14]_i_1_n_0\,
      Q => \sm_nxt_RM_loc_reg_n_0_[14]\,
      R => \^rst_200_out\
    );
\sm_nxt_RM_loc_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => sm_nxt_RM_loc,
      D => \sm_nxt_RM_loc[15]_i_1_n_0\,
      Q => \sm_nxt_RM_loc_reg_n_0_[15]\,
      R => \^rst_200_out\
    );
\sm_nxt_RM_loc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => sm_nxt_RM_loc,
      D => \sm_nxt_RM_loc[1]_i_1_n_0\,
      Q => \sm_nxt_RM_loc_reg_n_0_[1]\,
      R => \^rst_200_out\
    );
\sm_nxt_RM_loc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => sm_nxt_RM_loc,
      D => \sm_nxt_RM_loc[2]_i_1_n_0\,
      Q => \sm_nxt_RM_loc_reg_n_0_[2]\,
      R => \^rst_200_out\
    );
\sm_nxt_RM_loc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => sm_nxt_RM_loc,
      D => \sm_nxt_RM_loc[3]_i_1_n_0\,
      Q => \sm_nxt_RM_loc_reg_n_0_[3]\,
      R => \^rst_200_out\
    );
\sm_nxt_RM_loc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => sm_nxt_RM_loc,
      D => \sm_nxt_RM_loc[4]_i_1_n_0\,
      Q => \sm_nxt_RM_loc_reg_n_0_[4]\,
      R => \^rst_200_out\
    );
\sm_nxt_RM_loc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => sm_nxt_RM_loc,
      D => \sm_nxt_RM_loc[5]_i_1_n_0\,
      Q => \sm_nxt_RM_loc_reg_n_0_[5]\,
      R => \^rst_200_out\
    );
\sm_nxt_RM_loc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => sm_nxt_RM_loc,
      D => \sm_nxt_RM_loc[6]_i_1_n_0\,
      Q => \sm_nxt_RM_loc_reg_n_0_[6]\,
      R => \^rst_200_out\
    );
\sm_nxt_RM_loc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => sm_nxt_RM_loc,
      D => \sm_nxt_RM_loc[7]_i_1_n_0\,
      Q => \sm_nxt_RM_loc_reg_n_0_[7]\,
      R => \^rst_200_out\
    );
\sm_nxt_RM_loc_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => sm_nxt_RM_loc,
      D => \sm_nxt_RM_loc[8]_i_1_n_0\,
      Q => \sm_nxt_RM_loc_reg_n_0_[8]\,
      R => \^rst_200_out\
    );
\sm_nxt_RM_loc_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => sm_nxt_RM_loc,
      D => \sm_nxt_RM_loc[9]_i_1_n_0\,
      Q => \sm_nxt_RM_loc_reg_n_0_[9]\,
      R => \^rst_200_out\
    );
sm_req_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => sm_req,
      I1 => sm_req_i_3_n_0,
      I2 => sm_req_i_4_n_0,
      I3 => sm_start,
      I4 => sm_req_i_5_n_0,
      I5 => \^smc_req\,
      O => sm_req_i_1_n_0
    );
sm_req_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_sm_state_reg_n_0_[5]\,
      I1 => \FSM_onehot_sm_state_reg_n_0_[19]\,
      I2 => \FSM_onehot_sm_state_reg_n_0_[13]\,
      I3 => \FSM_onehot_sm_state_reg_n_0_[31]\,
      I4 => \sm_EC[21]_i_3_n_0\,
      O => sm_req
    );
sm_req_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => sm_req_i_6_n_0,
      I1 => \FSM_onehot_sm_state_reg_n_0_[22]\,
      I2 => \FSM_onehot_sm_state_reg_n_0_[14]\,
      I3 => \FSM_onehot_sm_state_reg_n_0_[28]\,
      I4 => \FSM_onehot_sm_state_reg_n_0_[20]\,
      O => sm_req_i_3_n_0
    );
sm_req_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_sm_state_reg_n_0_[6]\,
      I1 => \FSM_onehot_sm_state_reg_n_0_[36]\,
      I2 => \FSM_onehot_sm_state_reg_n_0_[24]\,
      O => sm_req_i_4_n_0
    );
sm_req_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_sm_state_reg_n_0_[10]\,
      I1 => \FSM_onehot_sm_state_reg_n_0_[16]\,
      I2 => \FSM_onehot_sm_state_reg_n_0_[30]\,
      I3 => \FSM_onehot_sm_state_reg_n_0_[18]\,
      I4 => \FSM_onehot_sm_state_reg_n_0_[4]\,
      I5 => \FSM_onehot_sm_state_reg_n_0_[12]\,
      O => sm_req_i_5_n_0
    );
sm_req_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_sm_state_reg_n_0_[32]\,
      I1 => acc_flg,
      I2 => \FSM_onehot_sm_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_sm_state_reg_n_0_[26]\,
      I4 => \FSM_onehot_sm_state_reg_n_0_[34]\,
      O => sm_req_i_6_n_0
    );
sm_req_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => sm_req_i_1_n_0,
      Q => \^smc_req\,
      R => \^rst_200_out\
    );
sm_run_stp_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DC5FDC50"
    )
        port map (
      I0 => sm_stop,
      I1 => p_1_in,
      I2 => sm_run_stp_i_2_n_0,
      I3 => \FSM_onehot_sm_state_reg_n_0_[0]\,
      I4 => sm_run_stp_reg_n_0,
      O => sm_run_stp_i_1_n_0
    );
sm_run_stp_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_sm_state_reg_n_0_[30]\,
      I1 => \FSM_onehot_sm_state_reg_n_0_[18]\,
      I2 => \FSM_onehot_sm_state_reg_n_0_[4]\,
      O => sm_run_stp_i_2_n_0
    );
sm_run_stp_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => sm_run_stp_i_1_n_0,
      Q => sm_run_stp_reg_n_0,
      R => \^rst_200_out\
    );
sm_start_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCDCCCCCCCC"
    )
        port map (
      I0 => sm_req_i_5_n_0,
      I1 => sm_start,
      I2 => sm_req_i_4_n_0,
      I3 => sm_req_i_3_n_0,
      I4 => \FSM_onehot_sm_state_reg_n_0_[0]\,
      I5 => sm_start_reg_n_0,
      O => sm_start_i_1_n_0
    );
sm_start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => sm_start_i_1_n_0,
      Q => sm_start_reg_n_0,
      R => \^rst_200_out\
    );
sm_stop_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => sm_start_reg_n_0,
      I1 => eqOp,
      I2 => sm_run_stp_reg_n_0,
      I3 => \^rst_200_out\,
      O => sm_stop_i_1_n_0
    );
sm_stop_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => sm_stop_i_1_n_0,
      Q => sm_stop,
      R => '0'
    );
spd_chg_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => spd_chg_loc,
      Q => spd_chg_d1,
      R => \^rst_200_out\
    );
spd_chg_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => spd_chg_d1,
      Q => spd_chg_d2,
      R => \^rst_200_out\
    );
spd_chg_loc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => spd_chg,
      Q => spd_chg_loc,
      R => reset
    );
spd_chg_trig_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => sm_start_reg_n_0,
      I1 => spd_chg_trig,
      I2 => spd_chg_d2,
      I3 => spd_chg_d1,
      O => spd_chg_trig_i_1_n_0
    );
spd_chg_trig_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => spd_chg_trig_i_1_n_0,
      Q => spd_chg_trig,
      R => \^rst_200_out\
    );
steady_spd_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFE0000"
    )
        port map (
      I0 => \FSM_onehot_sm_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_sm_state_reg_n_0_[11]\,
      I2 => \FSM_onehot_sm_state_reg_n_0_[25]\,
      I3 => \FSM_onehot_sm_state_reg_n_0_[1]\,
      I4 => steady_spd_i_2_n_0,
      I5 => steady_spd_reg_n_0,
      O => steady_spd_i_1_n_0
    );
steady_spd_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => triangle_i_4_n_0,
      I1 => \FSM_onehot_sm_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_sm_state_reg_n_0_[3]\,
      I3 => \FSM_onehot_sm_state_reg_n_0_[0]\,
      I4 => \FSM_onehot_sm_state_reg_n_0_[27]\,
      O => steady_spd_i_2_n_0
    );
steady_spd_reg: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => steady_spd_i_1_n_0,
      Q => steady_spd_reg_n_0,
      R => \^rst_200_out\
    );
\steps[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFDFFFE"
    )
        port map (
      I0 => steps,
      I1 => ramp_up_trig,
      I2 => fst_stps_trig,
      I3 => slw_stps_trig,
      I4 => \steps_reg_n_0_[0]\,
      O => \steps[0]_i_1_n_0\
    );
\steps[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ramp_up_trig,
      I1 => fst_stps_trig,
      I2 => slw_stps_trig,
      I3 => \^rst_200_out\,
      O => \steps[31]_i_1_n_0\
    );
\steps[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => sm_run_stp_reg_n_0,
      I1 => sm_stop,
      I2 => end_trj_trig_d1,
      O => steps
    );
\steps_loc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \steps_reg_n_0_[0]\,
      Q => steps_loc(0),
      R => reset
    );
\steps_loc_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \steps_reg_n_0_[10]\,
      Q => steps_loc(10),
      R => reset
    );
\steps_loc_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \steps_reg_n_0_[11]\,
      Q => steps_loc(11),
      R => reset
    );
\steps_loc_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \steps_reg_n_0_[12]\,
      Q => steps_loc(12),
      R => reset
    );
\steps_loc_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \steps_reg_n_0_[13]\,
      Q => steps_loc(13),
      R => reset
    );
\steps_loc_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \steps_reg_n_0_[14]\,
      Q => steps_loc(14),
      R => reset
    );
\steps_loc_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \steps_reg_n_0_[15]\,
      Q => steps_loc(15),
      R => reset
    );
\steps_loc_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \steps_reg_n_0_[16]\,
      Q => steps_loc(16),
      R => reset
    );
\steps_loc_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \steps_reg_n_0_[17]\,
      Q => steps_loc(17),
      R => reset
    );
\steps_loc_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \steps_reg_n_0_[18]\,
      Q => steps_loc(18),
      R => reset
    );
\steps_loc_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \steps_reg_n_0_[19]\,
      Q => steps_loc(19),
      R => reset
    );
\steps_loc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \steps_reg_n_0_[1]\,
      Q => steps_loc(1),
      R => reset
    );
\steps_loc_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \steps_reg_n_0_[20]\,
      Q => steps_loc(20),
      R => reset
    );
\steps_loc_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \steps_reg_n_0_[21]\,
      Q => steps_loc(21),
      R => reset
    );
\steps_loc_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \steps_reg_n_0_[22]\,
      Q => steps_loc(22),
      R => reset
    );
\steps_loc_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \steps_reg_n_0_[23]\,
      Q => steps_loc(23),
      R => reset
    );
\steps_loc_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \steps_reg_n_0_[24]\,
      Q => steps_loc(24),
      R => reset
    );
\steps_loc_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \steps_reg_n_0_[25]\,
      Q => steps_loc(25),
      R => reset
    );
\steps_loc_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \steps_reg_n_0_[26]\,
      Q => steps_loc(26),
      R => reset
    );
\steps_loc_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \steps_reg_n_0_[27]\,
      Q => steps_loc(27),
      R => reset
    );
\steps_loc_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \steps_reg_n_0_[28]\,
      Q => steps_loc(28),
      R => reset
    );
\steps_loc_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \steps_reg_n_0_[29]\,
      Q => steps_loc(29),
      R => reset
    );
\steps_loc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \steps_reg_n_0_[2]\,
      Q => steps_loc(2),
      R => reset
    );
\steps_loc_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \steps_reg_n_0_[30]\,
      Q => steps_loc(30),
      R => reset
    );
\steps_loc_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \steps_reg_n_0_[31]\,
      Q => steps_loc(31),
      R => reset
    );
\steps_loc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \steps_reg_n_0_[3]\,
      Q => steps_loc(3),
      R => reset
    );
\steps_loc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \steps_reg_n_0_[4]\,
      Q => steps_loc(4),
      R => reset
    );
\steps_loc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \steps_reg_n_0_[5]\,
      Q => steps_loc(5),
      R => reset
    );
\steps_loc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \steps_reg_n_0_[6]\,
      Q => steps_loc(6),
      R => reset
    );
\steps_loc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \steps_reg_n_0_[7]\,
      Q => steps_loc(7),
      R => reset
    );
\steps_loc_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \steps_reg_n_0_[8]\,
      Q => steps_loc(8),
      R => reset
    );
\steps_loc_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \steps_reg_n_0_[9]\,
      Q => steps_loc(9),
      R => reset
    );
\steps_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \steps[0]_i_1_n_0\,
      Q => \steps_reg_n_0_[0]\,
      R => \^rst_200_out\
    );
\steps_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => steps,
      D => \steps_reg[12]_i_1_n_6\,
      Q => \steps_reg_n_0_[10]\,
      R => \steps[31]_i_1_n_0\
    );
\steps_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => steps,
      D => \steps_reg[12]_i_1_n_5\,
      Q => \steps_reg_n_0_[11]\,
      R => \steps[31]_i_1_n_0\
    );
\steps_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => steps,
      D => \steps_reg[12]_i_1_n_4\,
      Q => \steps_reg_n_0_[12]\,
      R => \steps[31]_i_1_n_0\
    );
\steps_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \steps_reg[8]_i_1_n_0\,
      CO(3) => \steps_reg[12]_i_1_n_0\,
      CO(2) => \steps_reg[12]_i_1_n_1\,
      CO(1) => \steps_reg[12]_i_1_n_2\,
      CO(0) => \steps_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \steps_reg[12]_i_1_n_4\,
      O(2) => \steps_reg[12]_i_1_n_5\,
      O(1) => \steps_reg[12]_i_1_n_6\,
      O(0) => \steps_reg[12]_i_1_n_7\,
      S(3) => \steps_reg_n_0_[12]\,
      S(2) => \steps_reg_n_0_[11]\,
      S(1) => \steps_reg_n_0_[10]\,
      S(0) => \steps_reg_n_0_[9]\
    );
\steps_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => steps,
      D => \steps_reg[16]_i_1_n_7\,
      Q => \steps_reg_n_0_[13]\,
      R => \steps[31]_i_1_n_0\
    );
\steps_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => steps,
      D => \steps_reg[16]_i_1_n_6\,
      Q => \steps_reg_n_0_[14]\,
      R => \steps[31]_i_1_n_0\
    );
\steps_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => steps,
      D => \steps_reg[16]_i_1_n_5\,
      Q => \steps_reg_n_0_[15]\,
      R => \steps[31]_i_1_n_0\
    );
\steps_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => steps,
      D => \steps_reg[16]_i_1_n_4\,
      Q => \steps_reg_n_0_[16]\,
      R => \steps[31]_i_1_n_0\
    );
\steps_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \steps_reg[12]_i_1_n_0\,
      CO(3) => \steps_reg[16]_i_1_n_0\,
      CO(2) => \steps_reg[16]_i_1_n_1\,
      CO(1) => \steps_reg[16]_i_1_n_2\,
      CO(0) => \steps_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \steps_reg[16]_i_1_n_4\,
      O(2) => \steps_reg[16]_i_1_n_5\,
      O(1) => \steps_reg[16]_i_1_n_6\,
      O(0) => \steps_reg[16]_i_1_n_7\,
      S(3) => \steps_reg_n_0_[16]\,
      S(2) => \steps_reg_n_0_[15]\,
      S(1) => \steps_reg_n_0_[14]\,
      S(0) => \steps_reg_n_0_[13]\
    );
\steps_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => steps,
      D => \steps_reg[20]_i_1_n_7\,
      Q => \steps_reg_n_0_[17]\,
      R => \steps[31]_i_1_n_0\
    );
\steps_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => steps,
      D => \steps_reg[20]_i_1_n_6\,
      Q => \steps_reg_n_0_[18]\,
      R => \steps[31]_i_1_n_0\
    );
\steps_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => steps,
      D => \steps_reg[20]_i_1_n_5\,
      Q => \steps_reg_n_0_[19]\,
      R => \steps[31]_i_1_n_0\
    );
\steps_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => steps,
      D => \steps_reg[4]_i_1_n_7\,
      Q => \steps_reg_n_0_[1]\,
      R => \steps[31]_i_1_n_0\
    );
\steps_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => steps,
      D => \steps_reg[20]_i_1_n_4\,
      Q => \steps_reg_n_0_[20]\,
      R => \steps[31]_i_1_n_0\
    );
\steps_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \steps_reg[16]_i_1_n_0\,
      CO(3) => \steps_reg[20]_i_1_n_0\,
      CO(2) => \steps_reg[20]_i_1_n_1\,
      CO(1) => \steps_reg[20]_i_1_n_2\,
      CO(0) => \steps_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \steps_reg[20]_i_1_n_4\,
      O(2) => \steps_reg[20]_i_1_n_5\,
      O(1) => \steps_reg[20]_i_1_n_6\,
      O(0) => \steps_reg[20]_i_1_n_7\,
      S(3) => \steps_reg_n_0_[20]\,
      S(2) => \steps_reg_n_0_[19]\,
      S(1) => \steps_reg_n_0_[18]\,
      S(0) => \steps_reg_n_0_[17]\
    );
\steps_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => steps,
      D => \steps_reg[24]_i_1_n_7\,
      Q => \steps_reg_n_0_[21]\,
      R => \steps[31]_i_1_n_0\
    );
\steps_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => steps,
      D => \steps_reg[24]_i_1_n_6\,
      Q => \steps_reg_n_0_[22]\,
      R => \steps[31]_i_1_n_0\
    );
\steps_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => steps,
      D => \steps_reg[24]_i_1_n_5\,
      Q => \steps_reg_n_0_[23]\,
      R => \steps[31]_i_1_n_0\
    );
\steps_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => steps,
      D => \steps_reg[24]_i_1_n_4\,
      Q => \steps_reg_n_0_[24]\,
      R => \steps[31]_i_1_n_0\
    );
\steps_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \steps_reg[20]_i_1_n_0\,
      CO(3) => \steps_reg[24]_i_1_n_0\,
      CO(2) => \steps_reg[24]_i_1_n_1\,
      CO(1) => \steps_reg[24]_i_1_n_2\,
      CO(0) => \steps_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \steps_reg[24]_i_1_n_4\,
      O(2) => \steps_reg[24]_i_1_n_5\,
      O(1) => \steps_reg[24]_i_1_n_6\,
      O(0) => \steps_reg[24]_i_1_n_7\,
      S(3) => \steps_reg_n_0_[24]\,
      S(2) => \steps_reg_n_0_[23]\,
      S(1) => \steps_reg_n_0_[22]\,
      S(0) => \steps_reg_n_0_[21]\
    );
\steps_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => steps,
      D => \steps_reg[28]_i_1_n_7\,
      Q => \steps_reg_n_0_[25]\,
      R => \steps[31]_i_1_n_0\
    );
\steps_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => steps,
      D => \steps_reg[28]_i_1_n_6\,
      Q => \steps_reg_n_0_[26]\,
      R => \steps[31]_i_1_n_0\
    );
\steps_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => steps,
      D => \steps_reg[28]_i_1_n_5\,
      Q => \steps_reg_n_0_[27]\,
      R => \steps[31]_i_1_n_0\
    );
\steps_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => steps,
      D => \steps_reg[28]_i_1_n_4\,
      Q => \steps_reg_n_0_[28]\,
      R => \steps[31]_i_1_n_0\
    );
\steps_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \steps_reg[24]_i_1_n_0\,
      CO(3) => \steps_reg[28]_i_1_n_0\,
      CO(2) => \steps_reg[28]_i_1_n_1\,
      CO(1) => \steps_reg[28]_i_1_n_2\,
      CO(0) => \steps_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \steps_reg[28]_i_1_n_4\,
      O(2) => \steps_reg[28]_i_1_n_5\,
      O(1) => \steps_reg[28]_i_1_n_6\,
      O(0) => \steps_reg[28]_i_1_n_7\,
      S(3) => \steps_reg_n_0_[28]\,
      S(2) => \steps_reg_n_0_[27]\,
      S(1) => \steps_reg_n_0_[26]\,
      S(0) => \steps_reg_n_0_[25]\
    );
\steps_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => steps,
      D => \steps_reg[31]_i_3_n_7\,
      Q => \steps_reg_n_0_[29]\,
      R => \steps[31]_i_1_n_0\
    );
\steps_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => steps,
      D => \steps_reg[4]_i_1_n_6\,
      Q => \steps_reg_n_0_[2]\,
      R => \steps[31]_i_1_n_0\
    );
\steps_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => steps,
      D => \steps_reg[31]_i_3_n_6\,
      Q => \steps_reg_n_0_[30]\,
      R => \steps[31]_i_1_n_0\
    );
\steps_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => steps,
      D => \steps_reg[31]_i_3_n_5\,
      Q => \steps_reg_n_0_[31]\,
      R => \steps[31]_i_1_n_0\
    );
\steps_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \steps_reg[28]_i_1_n_0\,
      CO(3 downto 2) => \NLW_steps_reg[31]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \steps_reg[31]_i_3_n_2\,
      CO(0) => \steps_reg[31]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_steps_reg[31]_i_3_O_UNCONNECTED\(3),
      O(2) => \steps_reg[31]_i_3_n_5\,
      O(1) => \steps_reg[31]_i_3_n_6\,
      O(0) => \steps_reg[31]_i_3_n_7\,
      S(3) => '0',
      S(2) => \steps_reg_n_0_[31]\,
      S(1) => \steps_reg_n_0_[30]\,
      S(0) => \steps_reg_n_0_[29]\
    );
\steps_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => steps,
      D => \steps_reg[4]_i_1_n_5\,
      Q => \steps_reg_n_0_[3]\,
      R => \steps[31]_i_1_n_0\
    );
\steps_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => steps,
      D => \steps_reg[4]_i_1_n_4\,
      Q => \steps_reg_n_0_[4]\,
      R => \steps[31]_i_1_n_0\
    );
\steps_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \steps_reg[4]_i_1_n_0\,
      CO(2) => \steps_reg[4]_i_1_n_1\,
      CO(1) => \steps_reg[4]_i_1_n_2\,
      CO(0) => \steps_reg[4]_i_1_n_3\,
      CYINIT => \steps_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => \steps_reg[4]_i_1_n_4\,
      O(2) => \steps_reg[4]_i_1_n_5\,
      O(1) => \steps_reg[4]_i_1_n_6\,
      O(0) => \steps_reg[4]_i_1_n_7\,
      S(3) => \steps_reg_n_0_[4]\,
      S(2) => \steps_reg_n_0_[3]\,
      S(1) => \steps_reg_n_0_[2]\,
      S(0) => \steps_reg_n_0_[1]\
    );
\steps_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => steps,
      D => \steps_reg[8]_i_1_n_7\,
      Q => \steps_reg_n_0_[5]\,
      R => \steps[31]_i_1_n_0\
    );
\steps_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => steps,
      D => \steps_reg[8]_i_1_n_6\,
      Q => \steps_reg_n_0_[6]\,
      R => \steps[31]_i_1_n_0\
    );
\steps_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => steps,
      D => \steps_reg[8]_i_1_n_5\,
      Q => \steps_reg_n_0_[7]\,
      R => \steps[31]_i_1_n_0\
    );
\steps_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => steps,
      D => \steps_reg[8]_i_1_n_4\,
      Q => \steps_reg_n_0_[8]\,
      R => \steps[31]_i_1_n_0\
    );
\steps_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \steps_reg[4]_i_1_n_0\,
      CO(3) => \steps_reg[8]_i_1_n_0\,
      CO(2) => \steps_reg[8]_i_1_n_1\,
      CO(1) => \steps_reg[8]_i_1_n_2\,
      CO(0) => \steps_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \steps_reg[8]_i_1_n_4\,
      O(2) => \steps_reg[8]_i_1_n_5\,
      O(1) => \steps_reg[8]_i_1_n_6\,
      O(0) => \steps_reg[8]_i_1_n_7\,
      S(3) => \steps_reg_n_0_[8]\,
      S(2) => \steps_reg_n_0_[7]\,
      S(1) => \steps_reg_n_0_[6]\,
      S(0) => \steps_reg_n_0_[5]\
    );
\steps_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => steps,
      D => \steps_reg[12]_i_1_n_7\,
      Q => \steps_reg_n_0_[9]\,
      R => \steps[31]_i_1_n_0\
    );
\tgt_ACC_loc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_ACC(0),
      Q => \tgt_ACC_loc_reg_n_0_[0]\,
      R => reset
    );
\tgt_ACC_loc_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_ACC(10),
      Q => \tgt_ACC_loc_reg_n_0_[10]\,
      R => reset
    );
\tgt_ACC_loc_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_ACC(11),
      Q => \tgt_ACC_loc_reg_n_0_[11]\,
      R => reset
    );
\tgt_ACC_loc_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_ACC(12),
      Q => \tgt_ACC_loc_reg_n_0_[12]\,
      R => reset
    );
\tgt_ACC_loc_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_ACC(13),
      Q => \tgt_ACC_loc_reg_n_0_[13]\,
      R => reset
    );
\tgt_ACC_loc_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_ACC(14),
      Q => \tgt_ACC_loc_reg_n_0_[14]\,
      R => reset
    );
\tgt_ACC_loc_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_ACC(15),
      Q => \tgt_ACC_loc_reg_n_0_[15]\,
      R => reset
    );
\tgt_ACC_loc_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_ACC(16),
      Q => \tgt_ACC_loc_reg_n_0_[16]\,
      R => reset
    );
\tgt_ACC_loc_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_ACC(17),
      Q => \tgt_ACC_loc_reg_n_0_[17]\,
      R => reset
    );
\tgt_ACC_loc_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_ACC(18),
      Q => \tgt_ACC_loc_reg_n_0_[18]\,
      R => reset
    );
\tgt_ACC_loc_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_ACC(19),
      Q => \tgt_ACC_loc_reg_n_0_[19]\,
      R => reset
    );
\tgt_ACC_loc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_ACC(1),
      Q => \tgt_ACC_loc_reg_n_0_[1]\,
      R => reset
    );
\tgt_ACC_loc_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_ACC(20),
      Q => \tgt_ACC_loc_reg_n_0_[20]\,
      R => reset
    );
\tgt_ACC_loc_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_ACC(21),
      Q => \tgt_ACC_loc_reg_n_0_[21]\,
      R => reset
    );
\tgt_ACC_loc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_ACC(2),
      Q => \tgt_ACC_loc_reg_n_0_[2]\,
      R => reset
    );
\tgt_ACC_loc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_ACC(3),
      Q => \tgt_ACC_loc_reg_n_0_[3]\,
      R => reset
    );
\tgt_ACC_loc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_ACC(4),
      Q => \tgt_ACC_loc_reg_n_0_[4]\,
      R => reset
    );
\tgt_ACC_loc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_ACC(5),
      Q => \tgt_ACC_loc_reg_n_0_[5]\,
      R => reset
    );
\tgt_ACC_loc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_ACC(6),
      Q => \tgt_ACC_loc_reg_n_0_[6]\,
      R => reset
    );
\tgt_ACC_loc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_ACC(7),
      Q => \tgt_ACC_loc_reg_n_0_[7]\,
      R => reset
    );
\tgt_ACC_loc_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_ACC(8),
      Q => \tgt_ACC_loc_reg_n_0_[8]\,
      R => reset
    );
\tgt_ACC_loc_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_ACC(9),
      Q => \tgt_ACC_loc_reg_n_0_[9]\,
      R => reset
    );
\tgt_EC_loc0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_EC(0),
      Q => \tgt_EC_loc0_reg_n_0_[0]\,
      R => reset
    );
\tgt_EC_loc0_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_EC(10),
      Q => \tgt_EC_loc0_reg_n_0_[10]\,
      S => reset
    );
\tgt_EC_loc0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_EC(11),
      Q => \tgt_EC_loc0_reg_n_0_[11]\,
      R => reset
    );
\tgt_EC_loc0_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_EC(12),
      Q => \tgt_EC_loc0_reg_n_0_[12]\,
      R => reset
    );
\tgt_EC_loc0_reg[13]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_EC(13),
      Q => \tgt_EC_loc0_reg_n_0_[13]\,
      S => reset
    );
\tgt_EC_loc0_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_EC(14),
      Q => \tgt_EC_loc0_reg_n_0_[14]\,
      R => reset
    );
\tgt_EC_loc0_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_EC(15),
      Q => \tgt_EC_loc0_reg_n_0_[15]\,
      R => reset
    );
\tgt_EC_loc0_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_EC(16),
      Q => \tgt_EC_loc0_reg_n_0_[16]\,
      R => reset
    );
\tgt_EC_loc0_reg[17]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_EC(17),
      Q => \tgt_EC_loc0_reg_n_0_[17]\,
      S => reset
    );
\tgt_EC_loc0_reg[18]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_EC(18),
      Q => \tgt_EC_loc0_reg_n_0_[18]\,
      S => reset
    );
\tgt_EC_loc0_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_EC(19),
      Q => \tgt_EC_loc0_reg_n_0_[19]\,
      R => reset
    );
\tgt_EC_loc0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_EC(1),
      Q => \tgt_EC_loc0_reg_n_0_[1]\,
      R => reset
    );
\tgt_EC_loc0_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_EC(20),
      Q => \tgt_EC_loc0_reg_n_0_[20]\,
      R => reset
    );
\tgt_EC_loc0_reg[21]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_EC(21),
      Q => \tgt_EC_loc0_reg_n_0_[21]\,
      S => reset
    );
\tgt_EC_loc0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_EC(2),
      Q => \tgt_EC_loc0_reg_n_0_[2]\,
      R => reset
    );
\tgt_EC_loc0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_EC(3),
      Q => \tgt_EC_loc0_reg_n_0_[3]\,
      R => reset
    );
\tgt_EC_loc0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_EC(4),
      Q => \tgt_EC_loc0_reg_n_0_[4]\,
      R => reset
    );
\tgt_EC_loc0_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_EC(5),
      Q => \tgt_EC_loc0_reg_n_0_[5]\,
      S => reset
    );
\tgt_EC_loc0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_EC(6),
      Q => \tgt_EC_loc0_reg_n_0_[6]\,
      R => reset
    );
\tgt_EC_loc0_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_EC(7),
      Q => \tgt_EC_loc0_reg_n_0_[7]\,
      S => reset
    );
\tgt_EC_loc0_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_EC(8),
      Q => \tgt_EC_loc0_reg_n_0_[8]\,
      S => reset
    );
\tgt_EC_loc0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld_out_loc,
      D => tgt_EC(9),
      Q => \tgt_EC_loc0_reg_n_0_[9]\,
      R => reset
    );
\tgt_EC_loc[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF4"
    )
        port map (
      I0 => spd_chg_d2,
      I1 => spd_chg_d1,
      I2 => ramp_up_trig,
      I3 => fst_stps_trig,
      I4 => slw_stps_trig,
      O => tgt_EC_loc0
    );
\tgt_EC_loc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => tgt_EC_loc0,
      D => \tgt_EC_loc0_reg_n_0_[0]\,
      Q => tgt_EC_loc(0),
      R => \^rst_200_out\
    );
\tgt_EC_loc_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk200,
      CE => tgt_EC_loc0,
      D => \tgt_EC_loc0_reg_n_0_[10]\,
      Q => tgt_EC_loc(10),
      S => \^rst_200_out\
    );
\tgt_EC_loc_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => tgt_EC_loc0,
      D => \tgt_EC_loc0_reg_n_0_[11]\,
      Q => tgt_EC_loc(11),
      R => \^rst_200_out\
    );
\tgt_EC_loc_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => tgt_EC_loc0,
      D => \tgt_EC_loc0_reg_n_0_[12]\,
      Q => tgt_EC_loc(12),
      R => \^rst_200_out\
    );
\tgt_EC_loc_reg[13]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk200,
      CE => tgt_EC_loc0,
      D => \tgt_EC_loc0_reg_n_0_[13]\,
      Q => tgt_EC_loc(13),
      S => \^rst_200_out\
    );
\tgt_EC_loc_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => tgt_EC_loc0,
      D => \tgt_EC_loc0_reg_n_0_[14]\,
      Q => tgt_EC_loc(14),
      R => \^rst_200_out\
    );
\tgt_EC_loc_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => tgt_EC_loc0,
      D => \tgt_EC_loc0_reg_n_0_[15]\,
      Q => tgt_EC_loc(15),
      R => \^rst_200_out\
    );
\tgt_EC_loc_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => tgt_EC_loc0,
      D => \tgt_EC_loc0_reg_n_0_[16]\,
      Q => tgt_EC_loc(16),
      R => \^rst_200_out\
    );
\tgt_EC_loc_reg[17]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk200,
      CE => tgt_EC_loc0,
      D => \tgt_EC_loc0_reg_n_0_[17]\,
      Q => tgt_EC_loc(17),
      S => \^rst_200_out\
    );
\tgt_EC_loc_reg[18]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk200,
      CE => tgt_EC_loc0,
      D => \tgt_EC_loc0_reg_n_0_[18]\,
      Q => tgt_EC_loc(18),
      S => \^rst_200_out\
    );
\tgt_EC_loc_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => tgt_EC_loc0,
      D => \tgt_EC_loc0_reg_n_0_[19]\,
      Q => tgt_EC_loc(19),
      R => \^rst_200_out\
    );
\tgt_EC_loc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => tgt_EC_loc0,
      D => \tgt_EC_loc0_reg_n_0_[1]\,
      Q => tgt_EC_loc(1),
      R => \^rst_200_out\
    );
\tgt_EC_loc_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => tgt_EC_loc0,
      D => \tgt_EC_loc0_reg_n_0_[20]\,
      Q => tgt_EC_loc(20),
      R => \^rst_200_out\
    );
\tgt_EC_loc_reg[21]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk200,
      CE => tgt_EC_loc0,
      D => \tgt_EC_loc0_reg_n_0_[21]\,
      Q => tgt_EC_loc(21),
      S => \^rst_200_out\
    );
\tgt_EC_loc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => tgt_EC_loc0,
      D => \tgt_EC_loc0_reg_n_0_[2]\,
      Q => tgt_EC_loc(2),
      R => \^rst_200_out\
    );
\tgt_EC_loc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => tgt_EC_loc0,
      D => \tgt_EC_loc0_reg_n_0_[3]\,
      Q => tgt_EC_loc(3),
      R => \^rst_200_out\
    );
\tgt_EC_loc_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => tgt_EC_loc0,
      D => \tgt_EC_loc0_reg_n_0_[4]\,
      Q => tgt_EC_loc(4),
      R => \^rst_200_out\
    );
\tgt_EC_loc_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk200,
      CE => tgt_EC_loc0,
      D => \tgt_EC_loc0_reg_n_0_[5]\,
      Q => tgt_EC_loc(5),
      S => \^rst_200_out\
    );
\tgt_EC_loc_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => tgt_EC_loc0,
      D => \tgt_EC_loc0_reg_n_0_[6]\,
      Q => tgt_EC_loc(6),
      R => \^rst_200_out\
    );
\tgt_EC_loc_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk200,
      CE => tgt_EC_loc0,
      D => \tgt_EC_loc0_reg_n_0_[7]\,
      Q => tgt_EC_loc(7),
      S => \^rst_200_out\
    );
\tgt_EC_loc_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk200,
      CE => tgt_EC_loc0,
      D => \tgt_EC_loc0_reg_n_0_[8]\,
      Q => tgt_EC_loc(8),
      S => \^rst_200_out\
    );
\tgt_EC_loc_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => tgt_EC_loc0,
      D => \tgt_EC_loc0_reg_n_0_[9]\,
      Q => tgt_EC_loc(9),
      R => \^rst_200_out\
    );
triangle_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"545457FF54545400"
    )
        port map (
      I0 => EC_tgt_acc_trig_reg_n_0,
      I1 => sm_req_i_3_n_0,
      I2 => triangle_i_2_n_0,
      I3 => triangle_i_3_n_0,
      I4 => \FSM_onehot_sm_state_reg_n_0_[0]\,
      I5 => triangle_reg_n_0,
      O => triangle_i_1_n_0
    );
triangle_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => sm_req_i_5_n_0,
      I1 => \sm_ACC[21]_i_6_n_0\,
      I2 => triangle_i_4_n_0,
      I3 => \FSM_onehot_sm_state_reg_n_0_[6]\,
      I4 => \FSM_onehot_sm_state_reg_n_0_[36]\,
      I5 => \FSM_onehot_sm_state_reg_n_0_[24]\,
      O => triangle_i_2_n_0
    );
triangle_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sm_run_stp_reg_n_0,
      I1 => sm_stop,
      I2 => mid_trj_trig,
      O => triangle_i_3_n_0
    );
triangle_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_sm_state_reg_n_0_[31]\,
      I1 => \FSM_onehot_sm_state_reg_n_0_[13]\,
      I2 => \FSM_onehot_sm_state_reg_n_0_[9]\,
      I3 => \FSM_onehot_sm_state_reg_n_0_[11]\,
      I4 => \FSM_onehot_sm_state_reg_n_0_[25]\,
      O => triangle_i_4_n_0
    );
triangle_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => triangle_i_1_n_0,
      Q => triangle_reg_n_0,
      R => \^rst_200_out\
    );
vld_out_loc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => vld_out,
      Q => vld_out_loc,
      R => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SM_ctrl is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    clk200 : in STD_LOGIC;
    tgt_ACC : in STD_LOGIC_VECTOR ( 23 downto 0 );
    tgt_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    dir : in STD_LOGIC;
    ena_load : in STD_LOGIC_VECTOR ( 1 downto 0 );
    res : in STD_LOGIC_VECTOR ( 1 downto 0 );
    init_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    cnt_o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    cnt_i : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ramp_up : in STD_LOGIC;
    ramp_dwn : in STD_LOGIC;
    spd_chg : in STD_LOGIC;
    slw_stps : in STD_LOGIC;
    fst_stps : in STD_LOGIC;
    running : out STD_LOGIC_VECTOR ( 1 downto 0 );
    irq_mask : in STD_LOGIC;
    irq_in : out STD_LOGIC;
    irq_clr : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    vld_out : in STD_LOGIC;
    port_ref : out STD_LOGIC;
    port_clk : out STD_LOGIC;
    port_ena : out STD_LOGIC;
    port_dir : out STD_LOGIC;
    port_m2P : out STD_LOGIC;
    port_m1P : out STD_LOGIC;
    smc_ACC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_RM : out STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_req : out STD_LOGIC;
    smc_Next_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_Next_RM : in STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_ack : in STD_LOGIC;
    dbg_ref : out STD_LOGIC;
    dbg_clk : out STD_LOGIC;
    dbg_ena : out STD_LOGIC;
    dbg_dir : out STD_LOGIC;
    dbg_m2P : out STD_LOGIC;
    dbg_m1P : out STD_LOGIC
  );
  attribute PRESENT : integer;
  attribute PRESENT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SM_ctrl : entity is 1;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SM_ctrl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SM_ctrl is
  signal port_clk_loc : STD_LOGIC;
  signal port_dir_loc : STD_LOGIC;
  signal port_ena_loc : STD_LOGIC;
  signal port_m1P_loc : STD_LOGIC;
  signal port_m2P_loc : STD_LOGIC;
  signal port_ref_loc : STD_LOGIC;
  signal rst_200_out : STD_LOGIC;
  signal \^running\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^vld_in\ : STD_LOGIC;
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of dbg_clk_reg : label is "no";
  attribute equivalent_register_removal of dbg_dir_reg : label is "no";
  attribute equivalent_register_removal of dbg_ena_reg : label is "no";
  attribute equivalent_register_removal of dbg_m1P_reg : label is "no";
  attribute equivalent_register_removal of dbg_m2P_reg : label is "no";
  attribute equivalent_register_removal of dbg_ref_reg : label is "no";
  attribute IOB : string;
  attribute IOB of port_clk_reg : label is "TRUE";
  attribute IOB of port_dir_reg : label is "TRUE";
  attribute IOB of port_ena_reg : label is "TRUE";
  attribute IOB of port_m1P_reg : label is "TRUE";
  attribute IOB of port_m2P_reg : label is "TRUE";
  attribute IOB of port_ref_reg : label is "TRUE";
begin
  running(1) <= \^running\(1);
  running(0) <= \^vld_in\;
  vld_in <= \^vld_in\;
\R.SM_ctrl\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SM_ctrl_real
     port map (
      Q(21 downto 0) => smc_EC(21 downto 0),
      aclk => aclk,
      aresetn => aresetn,
      clk200 => clk200,
      cnt_i(31 downto 0) => cnt_i(31 downto 0),
      cnt_o(31 downto 0) => cnt_o(31 downto 0),
      dir => dir,
      ena_load(1 downto 0) => ena_load(1 downto 0),
      fst_stps => fst_stps,
      init_EC(21 downto 0) => init_EC(21 downto 0),
      irq_clr => irq_clr,
      irq_in => irq_in,
      irq_mask => irq_mask,
      port_clk_loc => port_clk_loc,
      port_dir_loc => port_dir_loc,
      port_ena_loc => port_ena_loc,
      port_m1P_loc => port_m1P_loc,
      port_m2P_loc => port_m2P_loc,
      port_ref_loc => port_ref_loc,
      ramp_dwn => ramp_dwn,
      ramp_up => ramp_up,
      res(1 downto 0) => res(1 downto 0),
      rst_200_out => rst_200_out,
      running(1) => \^running\(1),
      running(0) => \^vld_in\,
      slw_stps => slw_stps,
      smc_ACC(21 downto 0) => smc_ACC(21 downto 0),
      smc_Next_EC(21 downto 0) => smc_Next_EC(21 downto 0),
      smc_Next_RM(15 downto 0) => smc_Next_RM(15 downto 0),
      smc_RM(15 downto 0) => smc_RM(15 downto 0),
      smc_ack => smc_ack,
      smc_req => smc_req,
      spd_chg => spd_chg,
      tgt_ACC(21 downto 0) => tgt_ACC(21 downto 0),
      tgt_EC(21 downto 0) => tgt_EC(21 downto 0),
      vld_out => vld_out
    );
dbg_clk_reg: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => port_clk_loc,
      Q => dbg_clk,
      R => rst_200_out
    );
dbg_dir_reg: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => port_dir_loc,
      Q => dbg_dir,
      R => rst_200_out
    );
dbg_ena_reg: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => port_ena_loc,
      Q => dbg_ena,
      R => rst_200_out
    );
dbg_m1P_reg: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => port_m1P_loc,
      Q => dbg_m1P,
      R => rst_200_out
    );
dbg_m2P_reg: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => port_m2P_loc,
      Q => dbg_m2P,
      R => rst_200_out
    );
dbg_ref_reg: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => port_ref_loc,
      Q => dbg_ref,
      R => rst_200_out
    );
port_clk_reg: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => port_clk_loc,
      Q => port_clk,
      R => rst_200_out
    );
port_dir_reg: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => port_dir_loc,
      Q => port_dir,
      R => rst_200_out
    );
port_ena_reg: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => port_ena_loc,
      Q => port_ena,
      R => rst_200_out
    );
port_m1P_reg: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => port_m1P_loc,
      Q => port_m1P,
      R => rst_200_out
    );
port_m2P_reg: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => port_m2P_loc,
      Q => port_m2P,
      R => rst_200_out
    );
port_ref_reg: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => port_ref_loc,
      Q => port_ref,
      R => rst_200_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    clk200 : in STD_LOGIC;
    tgt_ACC : in STD_LOGIC_VECTOR ( 23 downto 0 );
    tgt_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    dir : in STD_LOGIC;
    ena_load : in STD_LOGIC_VECTOR ( 1 downto 0 );
    res : in STD_LOGIC_VECTOR ( 1 downto 0 );
    init_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    cnt_o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    cnt_i : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ramp_up : in STD_LOGIC;
    ramp_dwn : in STD_LOGIC;
    spd_chg : in STD_LOGIC;
    slw_stps : in STD_LOGIC;
    fst_stps : in STD_LOGIC;
    running : out STD_LOGIC_VECTOR ( 1 downto 0 );
    irq_mask : in STD_LOGIC;
    irq_in : out STD_LOGIC;
    irq_clr : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    vld_out : in STD_LOGIC;
    port_ref : out STD_LOGIC;
    port_clk : out STD_LOGIC;
    port_ena : out STD_LOGIC;
    port_dir : out STD_LOGIC;
    port_m2P : out STD_LOGIC;
    port_m1P : out STD_LOGIC;
    smc_ACC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_RM : out STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_req : out STD_LOGIC;
    smc_Next_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_Next_RM : in STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_ack : in STD_LOGIC;
    dbg_ref : out STD_LOGIC;
    dbg_clk : out STD_LOGIC;
    dbg_ena : out STD_LOGIC;
    dbg_dir : out STD_LOGIC;
    dbg_m2P : out STD_LOGIC;
    dbg_m1P : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "S7_SM_ctrl_0_0,SM_ctrl,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "SM_ctrl,Vivado 2019.1.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute PRESENT : integer;
  attribute PRESENT of U0 : label is 1;
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN S7_util_ds_buf_0_0_IBUF_OUT, INSERT_VIP 0";
  attribute x_interface_info of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute x_interface_parameter of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of clk200 : signal is "xilinx.com:signal:clock:1.0 clk200 CLK";
  attribute x_interface_parameter of clk200 : signal is "XIL_INTERFACENAME clk200, ASSOCIATED_RESET aresetn, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN S7_util_ds_buf_0_0_IBUF_OUT, INSERT_VIP 0";
  attribute x_interface_info of dbg_clk : signal is "xilinx.com:user:SM_IOs:1.0 dbg clk";
  attribute x_interface_info of dbg_dir : signal is "xilinx.com:user:SM_IOs:1.0 dbg dir";
  attribute x_interface_info of dbg_ena : signal is "xilinx.com:user:SM_IOs:1.0 dbg ena";
  attribute x_interface_info of dbg_m1P : signal is "xilinx.com:user:SM_IOs:1.0 dbg m1p";
  attribute x_interface_info of dbg_m2P : signal is "xilinx.com:user:SM_IOs:1.0 dbg m2p";
  attribute x_interface_info of dbg_ref : signal is "xilinx.com:user:SM_IOs:1.0 dbg ref";
  attribute x_interface_info of dir : signal is "mindway:user:SM_reg_if:1.0 SM_reg_if dir";
  attribute x_interface_info of fst_stps : signal is "mindway:user:SM_reg_if:1.0 SM_reg_if fst_stps";
  attribute x_interface_info of irq_clr : signal is "mindway:user:SM_reg_if:1.0 SM_reg_if irq_clr";
  attribute x_interface_info of irq_in : signal is "mindway:user:SM_reg_if:1.0 SM_reg_if irq_in";
  attribute x_interface_info of irq_mask : signal is "mindway:user:SM_reg_if:1.0 SM_reg_if irq_mask";
  attribute x_interface_info of port_clk : signal is "xilinx.com:user:SM_IOs:1.0 SM_IO clk";
  attribute x_interface_info of port_dir : signal is "xilinx.com:user:SM_IOs:1.0 SM_IO dir";
  attribute x_interface_info of port_ena : signal is "xilinx.com:user:SM_IOs:1.0 SM_IO ena";
  attribute x_interface_info of port_m1P : signal is "xilinx.com:user:SM_IOs:1.0 SM_IO m1p";
  attribute x_interface_info of port_m2P : signal is "xilinx.com:user:SM_IOs:1.0 SM_IO m2p";
  attribute x_interface_info of port_ref : signal is "xilinx.com:user:SM_IOs:1.0 SM_IO ref";
  attribute x_interface_info of ramp_dwn : signal is "mindway:user:SM_reg_if:1.0 SM_reg_if ramp_dwn";
  attribute x_interface_info of ramp_up : signal is "mindway:user:SM_reg_if:1.0 SM_reg_if ramp_up";
  attribute x_interface_info of slw_stps : signal is "mindway:user:SM_reg_if:1.0 SM_reg_if slw_stps";
  attribute x_interface_info of smc_ack : signal is "mindway:user:SM_alg_if:1.0 smc ACK";
  attribute x_interface_info of smc_req : signal is "mindway:user:SM_alg_if:1.0 smc REQ";
  attribute x_interface_info of spd_chg : signal is "mindway:user:SM_reg_if:1.0 SM_reg_if spd_chg";
  attribute x_interface_info of vld_in : signal is "mindway:user:SM_reg_if:1.0 SM_reg_if vld_in";
  attribute x_interface_info of vld_out : signal is "mindway:user:SM_reg_if:1.0 SM_reg_if vld_out";
  attribute x_interface_info of cnt_i : signal is "mindway:user:SM_reg_if:1.0 SM_reg_if cnt_i";
  attribute x_interface_info of cnt_o : signal is "mindway:user:SM_reg_if:1.0 SM_reg_if cnt_o";
  attribute x_interface_info of ena_load : signal is "mindway:user:SM_reg_if:1.0 SM_reg_if load";
  attribute x_interface_info of init_EC : signal is "mindway:user:SM_reg_if:1.0 SM_reg_if init_EC";
  attribute x_interface_info of res : signal is "mindway:user:SM_reg_if:1.0 SM_reg_if res";
  attribute x_interface_info of running : signal is "mindway:user:SM_reg_if:1.0 SM_reg_if running";
  attribute x_interface_info of smc_ACC : signal is "mindway:user:SM_alg_if:1.0 smc ACC";
  attribute x_interface_info of smc_EC : signal is "mindway:user:SM_alg_if:1.0 smc EC";
  attribute x_interface_info of smc_Next_EC : signal is "mindway:user:SM_alg_if:1.0 smc Next_EC";
  attribute x_interface_info of smc_Next_RM : signal is "mindway:user:SM_alg_if:1.0 smc Next_RM";
  attribute x_interface_info of smc_RM : signal is "mindway:user:SM_alg_if:1.0 smc RM";
  attribute x_interface_info of tgt_ACC : signal is "mindway:user:SM_reg_if:1.0 SM_reg_if tgt_ACC";
  attribute x_interface_info of tgt_EC : signal is "mindway:user:SM_reg_if:1.0 SM_reg_if tgt_EC";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SM_ctrl
     port map (
      aclk => aclk,
      aresetn => aresetn,
      clk200 => clk200,
      cnt_i(31 downto 0) => cnt_i(31 downto 0),
      cnt_o(31 downto 0) => cnt_o(31 downto 0),
      dbg_clk => dbg_clk,
      dbg_dir => dbg_dir,
      dbg_ena => dbg_ena,
      dbg_m1P => dbg_m1P,
      dbg_m2P => dbg_m2P,
      dbg_ref => dbg_ref,
      dir => dir,
      ena_load(1 downto 0) => ena_load(1 downto 0),
      fst_stps => fst_stps,
      init_EC(21 downto 0) => init_EC(21 downto 0),
      irq_clr => irq_clr,
      irq_in => irq_in,
      irq_mask => irq_mask,
      port_clk => port_clk,
      port_dir => port_dir,
      port_ena => port_ena,
      port_m1P => port_m1P,
      port_m2P => port_m2P,
      port_ref => port_ref,
      ramp_dwn => ramp_dwn,
      ramp_up => ramp_up,
      res(1 downto 0) => res(1 downto 0),
      running(1 downto 0) => running(1 downto 0),
      slw_stps => slw_stps,
      smc_ACC(21 downto 0) => smc_ACC(21 downto 0),
      smc_EC(21 downto 0) => smc_EC(21 downto 0),
      smc_Next_EC(21 downto 0) => smc_Next_EC(21 downto 0),
      smc_Next_RM(15 downto 0) => smc_Next_RM(15 downto 0),
      smc_RM(15 downto 0) => smc_RM(15 downto 0),
      smc_ack => smc_ack,
      smc_req => smc_req,
      spd_chg => spd_chg,
      tgt_ACC(23 downto 0) => tgt_ACC(23 downto 0),
      tgt_EC(21 downto 0) => tgt_EC(21 downto 0),
      vld_in => vld_in,
      vld_out => vld_out
    );
end STRUCTURE;
