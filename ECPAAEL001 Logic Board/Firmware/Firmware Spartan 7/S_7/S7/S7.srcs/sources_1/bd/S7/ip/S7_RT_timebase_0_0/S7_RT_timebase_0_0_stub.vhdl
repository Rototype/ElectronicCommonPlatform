-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
-- Date        : Tue May  5 10:11:52 2020
-- Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top S7_RT_timebase_0_0 -prefix
--               S7_RT_timebase_0_0_ S7_RT_timebase_0_0_stub.vhdl
-- Design      : S7_RT_timebase_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s100fgga676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity S7_RT_timebase_0_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_PHS : out STD_LOGIC
  );

end S7_RT_timebase_0_0;

architecture stub of S7_RT_timebase_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,ena_PHS";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "RT_timebase,Vivado 2019.1.3";
begin
end;
