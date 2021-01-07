-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
-- Date        : Thu May 14 13:29:45 2020
-- Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_system_ila_0_0_stub.vhdl
-- Design      : system_system_ila_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    SLOT_0_SM_REG_IF_tgt_acc : in STD_LOGIC_VECTOR ( 23 downto 0 );
    SLOT_0_SM_REG_IF_tgt_ec : in STD_LOGIC_VECTOR ( 21 downto 0 );
    SLOT_0_SM_REG_IF_dir : in STD_LOGIC;
    SLOT_0_SM_REG_IF_load : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_SM_REG_IF_res : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_SM_REG_IF_init_ec : in STD_LOGIC_VECTOR ( 21 downto 0 );
    SLOT_0_SM_REG_IF_cnt_o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_SM_REG_IF_cnt_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_SM_REG_IF_ramp_up : in STD_LOGIC;
    SLOT_0_SM_REG_IF_ramp_dwn : in STD_LOGIC;
    SLOT_0_SM_REG_IF_spd_chg : in STD_LOGIC;
    SLOT_0_SM_REG_IF_slw_stps : in STD_LOGIC;
    SLOT_0_SM_REG_IF_fst_stps : in STD_LOGIC;
    SLOT_0_SM_REG_IF_running : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_SM_REG_IF_irq_mask : in STD_LOGIC;
    SLOT_0_SM_REG_IF_irq_in : in STD_LOGIC;
    SLOT_0_SM_REG_IF_irq_clr : in STD_LOGIC;
    SLOT_0_SM_REG_IF_vld_in : in STD_LOGIC;
    SLOT_0_SM_REG_IF_vld_out : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,SLOT_0_SM_REG_IF_tgt_acc[23:0],SLOT_0_SM_REG_IF_tgt_ec[21:0],SLOT_0_SM_REG_IF_dir,SLOT_0_SM_REG_IF_load[1:0],SLOT_0_SM_REG_IF_res[1:0],SLOT_0_SM_REG_IF_init_ec[21:0],SLOT_0_SM_REG_IF_cnt_o[31:0],SLOT_0_SM_REG_IF_cnt_i[31:0],SLOT_0_SM_REG_IF_ramp_up,SLOT_0_SM_REG_IF_ramp_dwn,SLOT_0_SM_REG_IF_spd_chg,SLOT_0_SM_REG_IF_slw_stps,SLOT_0_SM_REG_IF_fst_stps,SLOT_0_SM_REG_IF_running[1:0],SLOT_0_SM_REG_IF_irq_mask,SLOT_0_SM_REG_IF_irq_in,SLOT_0_SM_REG_IF_irq_clr,SLOT_0_SM_REG_IF_vld_in,SLOT_0_SM_REG_IF_vld_out";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "bd_d5b8,Vivado 2019.1.3";
begin
end;
