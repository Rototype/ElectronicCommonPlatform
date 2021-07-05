library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;


entity Z_c2c_loop is
    Port ( 
           axi_c2c_selio_rx_clk_in_p      : in std_logic := '0';
           axi_c2c_selio_rx_clk_in_n      : in std_logic := '1';           
           axi_c2c_selio_rx_data_in       : in STD_LOGIC_VECTOR(16 downto 0);
           --
           axi_c2c_selio_tx_clk_out_p      : out std_logic := '0';
           axi_c2c_selio_tx_clk_out_n      : out std_logic := '1';           
           axi_c2c_selio_tx_data_out       : out STD_LOGIC_VECTOR(16 downto 0);
           --
           ila_clk                         : out std_logic := '0';
           ila_data                        : out STD_LOGIC_VECTOR(16 downto 0)
         );
end Z_c2c_loop;

architecture rtl of Z_c2c_loop is

signal clk_loc_ibufds : std_logic := '0';
signal clk_loc : std_logic := '0';

signal Data_in_loc  : STD_LOGIC_VECTOR(16 downto 0) := (others => '0');
signal Data_out_loc : STD_LOGIC_VECTOR(16 downto 0) := (others => '0');

signal clk_out_loc : std_logic := '0';

begin

   -- Clock input
   IBUFDS_inst : IBUFDS
   generic map (
      DIFF_TERM => FALSE, -- Differential Termination 
      IBUF_LOW_PWR => FALSE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
      IOSTANDARD => "LVDS_25")
   port map (
      O  => clk_loc_ibufds,  -- Buffer output
      I  => axi_c2c_selio_rx_clk_in_p,  -- Diff_p buffer input (connect directly to top-level port)
      IB => axi_c2c_selio_rx_clk_in_n -- Diff_n buffer input (connect directly to top-level port)
   );

   BUFG_inst : BUFG
   port map (
      O => clk_loc,         -- 1-bit output: Clock output
      I => clk_loc_ibufds   -- 1-bit input: Clock input
   );
 
   ila_clk <= clk_loc;
   
    -- data
 
    sampler: process(clk_loc)
    begin
        if rising_edge(clk_loc) then
            Data_in_loc                   <= axi_c2c_selio_rx_data_in;
            Data_out_loc                  <= Data_in_loc;
            ila_data                      <= Data_out_loc;
            axi_c2c_selio_tx_data_out     <= Data_out_loc;           
        end if;
    end process sampler; 
 
  
   -- Clock forwarding.
    
   ODDR_inst : ODDR
   generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE", -- "OPPOSITE_EDGE" or "SAME_EDGE" 
      INIT => '0',   -- Initial value for Q port ('1' or '0')
      SRTYPE => "SYNC") -- Reset Type ("ASYNC" or "SYNC")
   port map (
      Q => clk_out_loc,   -- 1-bit DDR output
      C => clk_loc,       -- 1-bit clock input
      CE => '1',          -- 1-bit clock enable input
      D1 => '1',          -- 1-bit data input (positive edge)
      D2 => '0',          -- 1-bit data input (negative edge)
      R => '0',           -- 1-bit reset input
      S => '0'            -- 1-bit set input
   );
   
   OBUFDS_inst : OBUFDS
   port map (
      O  => axi_c2c_selio_tx_clk_out_p,
      OB => axi_c2c_selio_tx_clk_out_n,
      I  => clk_out_loc
   );  
    
end rtl;
