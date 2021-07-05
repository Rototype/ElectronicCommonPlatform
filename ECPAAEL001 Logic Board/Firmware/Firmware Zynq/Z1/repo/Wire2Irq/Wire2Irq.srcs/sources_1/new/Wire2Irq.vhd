----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.01.2021 12:27:54
-- Design Name: 
-- Module Name: Wire2Irq - rtl
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Wire2Irq is
    Port ( wir : in STD_LOGIC_vector(3 downto 0);
           wire_irq : out STD_LOGIC_vector(3 downto 0)
          );
end Wire2Irq;

architecture rtl of Wire2Irq is

begin
    wire_irq <= wir;
end rtl;
