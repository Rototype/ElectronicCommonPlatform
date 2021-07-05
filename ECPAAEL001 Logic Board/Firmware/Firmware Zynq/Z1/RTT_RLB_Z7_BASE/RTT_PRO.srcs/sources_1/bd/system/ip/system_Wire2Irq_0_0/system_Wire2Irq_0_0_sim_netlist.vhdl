-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Mon May  3 09:46:41 2021
-- Host        : LAPTOP-21897QU1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/MW/RTT/VVD/Z/Z1/RTT_RLB_Z7_BASE/RTT_PRO.srcs/sources_1/bd/system/ip/system_Wire2Irq_0_0/system_Wire2Irq_0_0_sim_netlist.vhdl
-- Design      : system_Wire2Irq_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z015clg485-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_Wire2Irq_0_0 is
  port (
    wir : in STD_LOGIC_VECTOR ( 3 downto 0 );
    wire_irq : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_Wire2Irq_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_Wire2Irq_0_0 : entity is "system_Wire2Irq_0_0,Wire2Irq,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_Wire2Irq_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of system_Wire2Irq_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of system_Wire2Irq_0_0 : entity is "Wire2Irq,Vivado 2019.1";
end system_Wire2Irq_0_0;

architecture STRUCTURE of system_Wire2Irq_0_0 is
  signal \^wir\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of wire_irq : signal is "xilinx.com:signal:interrupt:1.0 wire_irq INTERRUPT";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of wire_irq : signal is "XIL_INTERFACENAME wire_irq, SENSITIVITY LEVEL_HIGH, PortWidth 1";
begin
  \^wir\(3 downto 0) <= wir(3 downto 0);
  wire_irq(3 downto 0) <= \^wir\(3 downto 0);
end STRUCTURE;
