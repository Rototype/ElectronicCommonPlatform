----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.01.2020 15:28:54
-- Design Name: 
-- Module Name: SM_ctrl_TESTER - Bhe
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
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;


entity SM_alg_server_tester is
  Port ( 
        -- clk & reset
        aresetn           : out   std_logic;
        aclk              : out   std_logic;
        clk200            : out   std_logic;  -- synchronous respect to aclk
        -- Stepper Motor Controller 0 interface:
        smc_0_ACC         : out   STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
        smc_0_EC          : out   STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
        smc_0_RM          : out   STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
        smc_0_req         : out                          std_logic;  				   
        -- Stepper Motor Controller 1 interface:
        smc_1_ACC         : out   STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
        smc_1_EC          : out   STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
        smc_1_RM          : out   STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
        smc_1_req         : out   std_logic;
        -- Stepper Motor Controller 2 interface:
        smc_2_ACC         : out   STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
        smc_2_EC          : out   STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
        smc_2_RM          : out   STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
        smc_2_req         : out   std_logic;     				   
        -- Stepper Motor Controller 3 interface:
        smc_3_ACC         : out   STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
        smc_3_EC          : out   STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
        smc_3_RM          : out   STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
        smc_3_req         : out   std_logic;
        -- Stepper Motor Controller 4 interface:
        smc_4_ACC         : out   STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
        smc_4_EC          : out   STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
        smc_4_RM          : out   STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
        smc_4_req         : out   std_logic;     				   
        -- Stepper Motor Controller 5 interface:
        smc_5_ACC         : out   STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
        smc_5_EC          : out   STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
        smc_5_RM          : out   STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
        smc_5_req         : out   std_logic;
        -- Stepper Motor Controller 6 interface:
        smc_6_ACC         : out   STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
        smc_6_EC          : out   STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
        smc_6_RM          : out   STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
        smc_6_req         : out   std_logic;    				   
        -- Stepper Motor Controller 7 interface:
        smc_7_ACC         : out   STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
        smc_7_EC          : out   STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
        smc_7_RM          : out   STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
        smc_7_req         : out   std_logic;
        -- Stepper Motor Controller 8 interface:
        smc_8_ACC         : out   STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
        smc_8_EC          : out   STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
        smc_8_RM          : out   STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
        smc_8_req         : out   std_logic;    				   
        -- Stepper Motor Controller 9 interface:
        smc_9_ACC         : out   STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
        smc_9_EC          : out   STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
        smc_9_RM          : out   STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
        smc_9_req         : out	  std_logic
    );
end SM_alg_server_tester;

architecture bhe of SM_alg_server_tester is

-- clk & reset
constant clk200_frq_MHz				: real := 200.0;
constant clk200_frequency		    : real := clk200_frq_MHz * 1000000.0 ;		-- [Hz] 
constant clk200_period				: time := (1.0 / clk200_frequency) * (1 Sec); -- [S]
signal clk200_int                   : STD_LOGIC := '0';
signal aclk_int					    : STD_LOGIC := '0';
signal aresetn_int                  : STD_LOGIC := '0';

-- Stepper Motor Controller 0 interface:
signal smc_0_ACC_int         : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
signal smc_0_EC_int          : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
signal smc_0_RM_int          : STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
signal smc_0_req_int         : std_logic;  				   
-- Stepper Motor Controller 1 interface:
signal smc_1_ACC_int         : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
signal smc_1_EC_int          : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
signal smc_1_RM_int          : STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
signal smc_1_req_int         : std_logic;
-- Stepper Motor Controller 2 interface:
signal smc_2_ACC_int         : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
signal smc_2_EC_int          : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
signal smc_2_RM_int          : STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
signal smc_2_req_int         : std_logic;     				   
-- Stepper Motor Controller 3 interface:
signal smc_3_ACC_int         : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
signal smc_3_EC_int          : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
signal smc_3_RM_int          : STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
signal smc_3_req_int         : std_logic;
-- Stepper Motor Controller 4 interface:
signal smc_4_ACC_int         : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
signal smc_4_EC_int          : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
signal smc_4_RM_int          : STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
signal smc_4_req_int         : std_logic;     				   
-- Stepper Motor Controller 5 interface:
signal smc_5_ACC_int         : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
signal smc_5_EC_int          : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
signal smc_5_RM_int          : STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
signal smc_5_req_int         : std_logic;
-- Stepper Motor Controller 6 interface:
signal smc_6_ACC_int         : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
signal smc_6_EC_int          : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
signal smc_6_RM_int          : STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
signal smc_6_req_int         : std_logic;    				   
-- Stepper Motor Controller 7 interface:
signal smc_7_ACC_int         : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
signal smc_7_EC_int          : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
signal smc_7_RM_int          : STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
signal smc_7_req_int         : std_logic;
-- Stepper Motor Controller 8 interface:
signal smc_8_ACC_int         : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
signal smc_8_EC_int          : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
signal smc_8_RM_int          : STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
signal smc_8_req_int         : std_logic;    				   
-- Stepper Motor Controller 9 interface:
signal smc_9_ACC_int         : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
signal smc_9_EC_int          : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
signal smc_9_RM_int          : STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
signal smc_9_req_int         : std_logic;

begin

	clk_int_gen : process
	begin  
		clk200_int	<= '0';
		aclk_int	<= '0';
		wait for (clk200_period/2);
		clk200_int	<= '1';
		wait for (clk200_period/2);
		clk200_int	<= '0';
		aclk_int	<= '1';
		wait for (clk200_period/2);
		clk200_int	<= '1';
		wait for (clk200_period/2);
	end process clk_int_gen;  
  
	aresetn_int		<= '1' after 1 uS;	  
  
	aclk			<= aclk_int;
	clk200          <= clk200_int;
	aresetn			<= transport aresetn_int after 100 pS; 
	
    srv_data_gen: process
    begin	
        smc_0_ACC_int      <= (others => '0');
        smc_0_EC_int       <= (others => '1'); 
        smc_0_RM_int       <= (others => '0'); 
        smc_0_req_int      <= '0';
        --
        smc_1_ACC_int      <= (others => '0');
        smc_1_EC_int       <= (others => '1');
        smc_1_RM_int       <= (others => '0');
        smc_1_req_int      <= '0';
        --
        smc_2_ACC_int      <= (others => '0');
        smc_2_EC_int       <= (others => '1');
        smc_2_RM_int       <= (others => '0');
        smc_2_req_int      <= '0';
        --
        smc_3_ACC_int      <= (others => '0');
        smc_3_EC_int       <= (others => '1');
        smc_3_RM_int       <= (others => '0');
        smc_3_req_int      <= '0';
        --
        smc_4_ACC_int      <= (others => '0');
        smc_4_EC_int       <= (others => '1');
        smc_4_RM_int       <= (others => '0');
        smc_4_req_int      <= '0';
        --
        smc_5_ACC_int      <=  (others => '0');
        smc_5_EC_int       <=  (others => '1');
        smc_5_RM_int       <=  (others => '0');
        smc_5_req_int      <=  '0';
        --
        smc_6_ACC_int      <= (others => '0');
        smc_6_EC_int       <= (others => '1');
        smc_6_RM_int       <= (others => '0');
        smc_6_req_int      <= '0';
        --
        smc_7_ACC_int      <= (others => '0');
        smc_7_EC_int       <= (others => '1');
        smc_7_RM_int       <= (others => '0');
        smc_7_req_int      <= '0';
        --
        smc_8_ACC_int      <= (others => '0');
        smc_8_EC_int       <= (others => '1');
        smc_8_RM_int       <= (others => '0');
        smc_8_req_int      <= '0';
        --
        smc_9_ACC_int      <= (others => '0');
        smc_9_EC_int       <= (others => '1');
        smc_9_RM_int       <= (others => '0');
        smc_9_req_int      <= '0';

    wait until (aresetn_int = '1');
    wait for 15 uS;
    ----------
    wait until rising_edge(clk200_int);
        smc_0_ACC_int      <= std_logic_vector(TO_SIGNED(   2_000_000, 22));
        smc_0_EC_int       <= std_logic_vector(TO_UNSIGNED( 2_000_000, 22));
        smc_0_RM_int       <= std_logic_vector(TO_UNSIGNED(         0, 16));
        smc_0_req_int      <= '1';
        --
        smc_1_ACC_int      <= std_logic_vector(TO_SIGNED(   1_000_000, 22));
        smc_1_EC_int       <= std_logic_vector(TO_UNSIGNED( 1_000_000, 22));
        smc_1_RM_int       <= std_logic_vector(TO_UNSIGNED(         0, 16));
        smc_1_req_int      <= '1';
    wait until rising_edge(clk200_int);
        smc_0_req_int      <= '0';
        smc_1_req_int      <= '0';
        --
        smc_2_ACC_int      <= std_logic_vector(TO_SIGNED(    -500_000, 22));
        smc_2_EC_int       <= std_logic_vector(TO_UNSIGNED( 1_500_000, 22));
        smc_2_RM_int       <= std_logic_vector(TO_UNSIGNED(         0, 16));
        smc_2_req_int      <= '1';
    wait until rising_edge(clk200_int);
        smc_2_req_int      <= '0';
        --
        smc_9_ACC_int      <= std_logic_vector(TO_SIGNED(   2_000_000, 22));
        smc_9_EC_int       <= std_logic_vector(TO_UNSIGNED( 2_000_000, 22));
        smc_9_RM_int       <= std_logic_vector(TO_UNSIGNED(         0, 16));
        smc_9_req_int      <= '1';
        --
        smc_5_ACC_int      <= std_logic_vector(TO_SIGNED(   1_000_000, 22));
        smc_5_EC_int       <= std_logic_vector(TO_UNSIGNED( 1_000_000, 22));
        smc_5_RM_int       <= std_logic_vector(TO_UNSIGNED(         0, 16));
        smc_5_req_int      <= '1';
        --
        smc_0_ACC_int      <= std_logic_vector(TO_SIGNED  (  -450_000, 22));
        smc_0_EC_int       <= std_logic_vector(TO_UNSIGNED(   950_000, 22));
        smc_0_RM_int       <= std_logic_vector(TO_UNSIGNED(         0, 16));
        smc_0_req_int      <= '1';
    wait until rising_edge(clk200_int);
        smc_0_req_int      <= '0';
        smc_5_req_int      <= '0';
        smc_9_req_int      <= '0';
        --           
        smc_4_ACC_int      <= std_logic_vector(TO_SIGNED(   1_500_000, 22));
        smc_4_EC_int       <= std_logic_vector(TO_UNSIGNED( 1_500_000, 22));
        smc_4_RM_int       <= std_logic_vector(TO_UNSIGNED(         0, 16));
        smc_4_req_int      <= '1';
    wait until rising_edge(clk200_int);
        smc_4_req_int      <= '0';                                    
    wait;  -- forever       
   end process srv_data_gen;


    -- Stepper Motor Controller 0
    smc_0_ACC          <= transport smc_0_ACC_int  after 100 pS;   
    smc_0_EC           <= transport smc_0_EC_int   after 100 pS;    
    smc_0_RM           <= transport smc_0_RM_int   after 100 pS;    
    smc_0_req          <= transport smc_0_req_int  after 100 pS;    
    -- Stepper Motor Controller 1
    smc_1_ACC          <= transport smc_1_ACC_int  after 100 pS;    
    smc_1_EC           <= transport smc_1_EC_int   after 100 pS;    
    smc_1_RM           <= transport smc_1_RM_int   after 100 pS;    
    smc_1_req          <= transport smc_1_req_int  after 100 pS;    
    -- Stepper Motor Controller 2
    smc_2_ACC          <= transport smc_2_ACC_int  after 100 pS;    
    smc_2_EC           <= transport smc_2_EC_int   after 100 pS;    
    smc_2_RM           <= transport smc_2_RM_int   after 100 pS;    
    smc_2_req          <= transport smc_2_req_int  after 100 pS;    
    -- Stepper Motor Controller 3
    smc_3_ACC          <= transport smc_3_ACC_int  after 100 pS;   
    smc_3_EC           <= transport smc_3_EC_int   after 100 pS;   
    smc_3_RM           <= transport smc_3_RM_int   after 100 pS;   
    smc_3_req          <= transport smc_3_req_int  after 100 pS;   
    -- Stepper Motor Controller 4
    smc_4_ACC          <= transport smc_4_ACC_int  after 100 pS;   
    smc_4_EC           <= transport smc_4_EC_int   after 100 pS;   
    smc_4_RM           <= transport smc_4_RM_int   after 100 pS;   
    smc_4_req          <= transport smc_4_req_int  after 100 pS;   
    -- Stepper Motor Controller 5
    smc_5_ACC          <= transport smc_5_ACC_int  after 100 pS;   
    smc_5_EC           <= transport smc_5_EC_int   after 100 pS;   
    smc_5_RM           <= transport smc_5_RM_int   after 100 pS;   
    smc_5_req          <= transport smc_5_req_int  after 100 pS;   
    -- Stepper Motor Controller 6
    smc_6_ACC          <= transport smc_6_ACC_int  after 100 pS;   
    smc_6_EC           <= transport smc_6_EC_int   after 100 pS;   
    smc_6_RM           <= transport smc_6_RM_int   after 100 pS;   
    smc_6_req          <= transport smc_6_req_int  after 100 pS;   
    -- Stepper Motor Controller 7
    smc_7_ACC          <= transport smc_7_ACC_int  after 100 pS;   
    smc_7_EC           <= transport smc_7_EC_int   after 100 pS;   
    smc_7_RM           <= transport smc_7_RM_int   after 100 pS;   
    smc_7_req          <= transport smc_7_req_int  after 100 pS;   
    -- Stepper Motor Controller 8
    smc_8_ACC          <= transport smc_8_ACC_int  after 100 pS;   
    smc_8_EC           <= transport smc_8_EC_int   after 100 pS;   
    smc_8_RM           <= transport smc_8_RM_int   after 100 pS;   
    smc_8_req          <= transport smc_8_req_int  after 100 pS;   
    -- Stepper Motor Controller 9
    smc_9_ACC          <= transport smc_9_ACC_int  after 100 pS;   
    smc_9_EC           <= transport smc_9_EC_int   after 100 pS;   
    smc_9_RM           <= transport smc_9_RM_int   after 100 pS;   
    smc_9_req          <= transport smc_9_req_int  after 100 pS;

end bhe;
