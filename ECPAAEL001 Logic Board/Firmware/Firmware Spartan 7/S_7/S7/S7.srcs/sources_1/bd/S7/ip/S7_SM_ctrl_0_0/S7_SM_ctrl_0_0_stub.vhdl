-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
-- Date        : Thu Oct 29 12:35:50 2020
-- Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top S7_SM_ctrl_0_0 -prefix
--               S7_SM_ctrl_0_0_ S7_SM_ctrl_5_0_stub.vhdl
-- Design      : S7_SM_ctrl_5_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s100fgga676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity S7_SM_ctrl_0_0 is
  Port ( 
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

end S7_SM_ctrl_0_0;

architecture stub of S7_SM_ctrl_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,clk200,tgt_ACC[23:0],tgt_EC[21:0],dir,ena_load[1:0],res[1:0],init_EC[21:0],cnt_o[31:0],cnt_i[31:0],ramp_up,ramp_dwn,spd_chg,slw_stps,fst_stps,running[1:0],irq_mask,irq_in,irq_clr,vld_in,vld_out,port_ref,port_clk,port_ena,port_dir,port_m2P,port_m1P,smc_ACC[21:0],smc_EC[21:0],smc_RM[15:0],smc_req,smc_Next_EC[21:0],smc_Next_RM[15:0],smc_ack,dbg_ref,dbg_clk,dbg_ena,dbg_dir,dbg_m2P,dbg_m1P";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "SM_ctrl,Vivado 2019.1.3";
begin
end;
