-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
-- Date        : Tue Oct 13 16:58:15 2020
-- Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/MW/RTT/VVD/S/S_3/repo/SM_ctrl/SM_ctrl.srcs/sources_1/ip/mult_u22_fclk/mult_u22_fclk_stub.vhdl
-- Design      : mult_u22_fclk
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mult_u22_fclk is
  Port ( 
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 21 downto 0 );
    SCLR : in STD_LOGIC;
    P : out STD_LOGIC_VECTOR ( 49 downto 0 )
  );

end mult_u22_fclk;

architecture stub of mult_u22_fclk is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,A[21:0],SCLR,P[49:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mult_gen_v12_0_15,Vivado 2019.1.3";
begin
end;