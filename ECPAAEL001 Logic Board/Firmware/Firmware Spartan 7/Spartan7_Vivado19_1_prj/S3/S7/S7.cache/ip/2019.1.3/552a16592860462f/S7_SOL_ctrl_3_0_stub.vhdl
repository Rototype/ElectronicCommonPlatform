-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
-- Date        : Tue May  5 10:18:24 2020
-- Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ S7_SOL_ctrl_3_0_stub.vhdl
-- Design      : S7_SOL_ctrl_3_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s100fgga676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 7 downto 0 );
    time_full : in STD_LOGIC_VECTOR ( 10 downto 0 );
    run : in STD_LOGIC;
    status : out STD_LOGIC_VECTOR ( 1 downto 0 );
    vld_in : out STD_LOGIC;
    vld_out : in STD_LOGIC;
    port_pwm : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,pwm_val[7:0],time_full[10:0],run,status[1:0],vld_in,vld_out,port_pwm";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "SOL_ctrl,Vivado 2019.1.3";
begin
end;
