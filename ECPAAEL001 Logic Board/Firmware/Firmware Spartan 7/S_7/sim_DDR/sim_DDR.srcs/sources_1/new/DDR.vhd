----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.04.2021 04:36:00
-- Design Name: 
-- Module Name: DDR - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.vcomponents.all;

entity DDR is
    Port (
        clk : in STD_LOGIC;
        rst : in std_logic;
        din : in STD_LOGIC_VECTOR (15 downto 0);
        dout : out STD_LOGIC_VECTOR (15 downto 0)
    );

end DDR;

architecture Behavioral of DDR is

component mmcm_z
port
 (-- Clock in ports
  clk_in1           : in     std_logic;
  -- Clock out ports
  clk_out1          : out    std_logic;
  -- Status and control signals
  reset             : in     std_logic;
  locked            : out    std_logic
 );
end component;

signal data_ddr :       std_logic_vector(7 downto 0);
signal data_ddr_dly :   std_logic_vector(7 downto 0);
signal data_ddr_ibuf :  std_logic_vector(7 downto 0);
signal data_ddr_obuf :  std_logic_vector(7 downto 0);
signal clk_obufds :     std_logic;
signal clk_p :          std_logic;
signal clk_n :          std_logic;
signal clk_ibufds :     std_logic;
signal clk_z :          std_logic;
signal locked :         std_logic := '0';
signal rst_z :          std_logic := '0';
begin



-- Generate the Spartan outputs
gen_s: for i in 0 to 7 generate  

   ODDR_inst : ODDR
   generic map(
      DDR_CLK_EDGE => "SAME_EDGE", -- "OPPOSITE_EDGE" or "SAME_EDGE" 
      INIT => '1',   -- Initial value for Q port ('1' or '0')
      SRTYPE => "SYNC") -- Reset Type ("ASYNC" or "SYNC")
   port map (
      C => clk,    -- 1-bit clock input
      R => rst,    -- 1-bit reset input
      S => '0',     -- 1-bit set input 
      -- 
      CE => '1',  -- 1-bit clock enable input
      D1 => din(2*i),  -- 1-bit data input (positive edge)
      D2 => din(2*i+1),  -- 1-bit data input (negative edge)
      Q => data_ddr_obuf(i)   -- 1-bit DDR output
   );

   OBUF_inst : OBUF
   generic map (
      DRIVE => 4,
      IOSTANDARD => "DEFAULT",
      SLEW => "FAST")
   port map (
      I => data_ddr_obuf(i),      -- Buffer input 
      O => data_ddr(i)     -- Buffer output (connect directly to top-level port)
   );

end generate gen_s;

   ODDR_clk : ODDR
   generic map(
      DDR_CLK_EDGE => "SAME_EDGE", -- "OPPOSITE_EDGE" or "SAME_EDGE" 
      INIT => '1',   -- Initial value for Q port ('1' or '0')
      SRTYPE => "SYNC") -- Reset Type ("ASYNC" or "SYNC")
   port map (
      C => clk,    -- 1-bit clock input
      R => rst,    -- 1-bit reset input
      S => '0',     -- 1-bit set input 
      -- 
      CE => '1',  -- 1-bit clock enable input
      D1 => '1',  -- 1-bit data input (positive edge)
      D2 => '0',  -- 1-bit data input (negative edge)
      Q => clk_obufds   -- 1-bit DDR output
   );
   
   OBUFDS_clk_s : OBUFDS
   generic map (
      IOSTANDARD => "DEFAULT", -- Specify the output I/O standard
      SLEW => "SLOW")          -- Specify the output slew rate
   port map (
      I => clk_obufds,      -- Buffer input 
      O => clk_p,         -- Diff_p output (connect directly to top-level port)
      OB => clk_n         -- Diff_n output (connect directly to top-level port
   );


	data_ddr_dly		   <= transport data_ddr after 2 ns; 
-----------------------------------

   IBUFDS_clk_z : IBUFDS
   generic map (
      DIFF_TERM => FALSE, -- Differential Termination 
      IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
      IOSTANDARD => "DEFAULT")
   port map (
      I => clk_p,  -- Diff_p buffer input (connect directly to top-level port)
      IB => clk_n, -- Diff_n buffer input (connect directly to top-level port)
      O => clk_ibufds  -- Buffer output
   );



mmcm_z_inst : mmcm_z
   port map ( 
  -- Status and control signals                
   reset => rst,
   locked => locked,
   -- Clock in ports
   clk_in1 => clk_ibufds,
     -- Clock out ports  
   clk_out1 => clk_z
 );

 rst_z <= not(locked);					
					
-- Generate the Zynq inputs
gen_z: for i in 0 to 7 generate  

   IBUF_inst : IBUF
   generic map (
      IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
      IOSTANDARD => "DEFAULT")
   port map (
      I => data_ddr_dly(i),      -- Buffer input (connect directly to top-level port)
      O => data_ddr_ibuf(i)  -- Buffer output
   );
   
     IDDR_inst : IDDR 
   generic map (
      DDR_CLK_EDGE => "SAME_EDGE_PIPELINED", -- "OPPOSITE_EDGE", "SAME_EDGE" 
                                       -- or "SAME_EDGE_PIPELINED" 
      INIT_Q1 => '0', -- Initial value of Q1: '0' or '1'
      INIT_Q2 => '0', -- Initial value of Q2: '0' or '1'
      SRTYPE => "SYNC") -- Set/Reset type: "SYNC" or "ASYNC" 
   port map (
      C => clk_z,   -- 1-bit clock input
      R => rst_z,       -- 1-bit reset
      S => '0',       -- 1-bit set
      --      
      CE => '1', -- 1-bit clock enable input
      --
      D => data_ddr_ibuf(i),   -- 1-bit DDR data input      
      Q1 => dout(2*i), -- 1-bit output for positive edge of clock 
      Q2 => dout(2*i+1) -- 1-bit output for negative edge of clock
      ); 

end generate gen_z;


end Behavioral;
