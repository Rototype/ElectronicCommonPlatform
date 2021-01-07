-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
-- Date        : Fri Jun  5 15:33:17 2020
-- Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/MW/RTT/VVD/Z/Z1/RTT_RLB_BASE/RTT_PRO.srcs/sources_1/bd/system/ip/system_util_idelay_ctrl_0_0/system_util_idelay_ctrl_0_0_stub.vhdl
-- Design      : system_util_idelay_ctrl_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z015clg485-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_util_idelay_ctrl_0_0 is
  Port ( 
    rst : in STD_LOGIC;
    rdy : out STD_LOGIC;
    ref_clk : in STD_LOGIC
  );

end system_util_idelay_ctrl_0_0;

architecture stub of system_util_idelay_ctrl_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rst,rdy,ref_clk";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "util_idelay_ctrl_v1_0_1_util_idelay_ctrl,Vivado 2019.1.3";
begin
end;
