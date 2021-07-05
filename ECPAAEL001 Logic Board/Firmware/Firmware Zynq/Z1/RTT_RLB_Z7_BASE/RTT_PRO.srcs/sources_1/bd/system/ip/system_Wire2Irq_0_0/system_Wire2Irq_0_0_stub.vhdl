-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Mon May  3 09:46:41 2021
-- Host        : LAPTOP-21897QU1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/MW/RTT/VVD/Z/Z1/RTT_RLB_Z7_BASE/RTT_PRO.srcs/sources_1/bd/system/ip/system_Wire2Irq_0_0/system_Wire2Irq_0_0_stub.vhdl
-- Design      : system_Wire2Irq_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z015clg485-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_Wire2Irq_0_0 is
  Port ( 
    wir : in STD_LOGIC_VECTOR ( 3 downto 0 );
    wire_irq : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end system_Wire2Irq_0_0;

architecture stub of system_Wire2Irq_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "wir[3:0],wire_irq[3:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Wire2Irq,Vivado 2019.1";
begin
end;
