----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.08.2020 12:54:04
-- Design Name: 
-- Module Name: three_state - Behavioral
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


library UNISIM;
use UNISIM.VComponents.all;

entity three_state is
    Port (
           SPI_SCLK_I : out STD_LOGIC;
           SPI_SCLK_O : in  STD_LOGIC;
           SPI_SCLK_T : in STD_LOGIC;
           SPI_MOSI_I : out STD_LOGIC;
           SPI_MOSI_O : in  STD_LOGIC;
           SPI_MOSI_T : in STD_LOGIC;           
           SPI_MISO_I : out STD_LOGIC;
           SPI_MISO_O : in  STD_LOGIC;
           SPI_MISO_T : in STD_LOGIC;          
           SPI_SS_I   : out STD_LOGIC;
           SPI_SS_O   : in  STD_LOGIC;
           SPI_SS_T   : in STD_LOGIC;
                     
           SPI_SCLK : inout STD_LOGIC;
           SPI_MOSI : inout STD_LOGIC;           
           SPI_MISO : inout STD_LOGIC;
           SPI_SS   : inout STD_LOGIC                      
           );
end three_state;

architecture rtl of three_state is

begin

   IOBUF_SCLK : IOBUF
   port map (
      O     => SPI_SCLK_I,
      IO    => SPI_SCLK,
      I     => SPI_SCLK_O,
      T     => SPI_SCLK_T 
   );

   IOBUF_MISO : IOBUF
   port map (
      O     => SPI_MISO_I,
      IO    => SPI_MISO,
      I     => SPI_MISO_O,
      T     => SPI_MISO_T 
   );

   IOBUF_MOSI : IOBUF
   port map (
      O     => SPI_MOSI_I,
      IO    => SPI_MOSI,
      I     => SPI_MOSI_O,
      T     => SPI_MOSI_T 
   );

   IOBUF_SS : IOBUF
   port map (
      O     => SPI_SS_I,
      IO    => SPI_SS,
      I     => SPI_SS_O,
      T     => SPI_SS_T 
   );

	
end rtl;
