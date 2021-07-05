-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
-- Date        : Thu Oct 22 16:03:55 2020
-- Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top S7_PHS_ctrl_43_0 -prefix
--               S7_PHS_ctrl_43_0_ S7_PHS_ctrl_5_0_stub.vhdl
-- Design      : S7_PHS_ctrl_5_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s100fgga676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity S7_PHS_ctrl_43_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );

end S7_PHS_ctrl_43_0;

architecture stub of S7_PHS_ctrl_43_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,ena_in,ena_out,pwm_val[9:0],status,irq_mask[1:0],irq0_L2S,irq1_S2L,irq0_clr,irq1_clr,vld_out,vld_in,port_pwm_out,port_phs_in";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "PHS_ctrl,Vivado 2019.1.3";
begin
end;
