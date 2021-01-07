----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.10.2019 12:23:10
-- Design Name: 
-- Module Name: PHS_ctrl_TB - Behavioral
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

-- To accelarate simulation drop this command to TCL console before to launch
-- "set_property unifast true [current_fileset simset]"
-- this turn on unifast library for entire project. pls read UG900 for more details.

entity SM_alg_server_TB is
--  Port ( );
end SM_alg_server_TB;

architecture bhe of SM_alg_server_TB is

component SM_alg_server is
  Port ( 
        -- clk & reset
        aresetn           : in    std_logic;
        aclk              : in    std_logic;
        clk200            : in    std_logic;  -- synchronous respect to aclk
        -- Stepper Motor Controller 0 interface:
        smc_0_ACC         : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
        smc_0_EC          : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
        smc_0_RM          : in    STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
        smc_0_req         : in	  std_logic;
        smc_0_Next_EC     : out   STD_LOGIC_VECTOR(21 DOWNTO 0);   -- Next EndCount  unsigned
        smc_0_Next_RM     : out   STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Next ReMainder unsigned
        smc_0_ack         : out   STD_LOGIC;      				   
        -- Stepper Motor Controller 1 interface:
        smc_1_ACC         : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
        smc_1_EC          : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
        smc_1_RM          : in    STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
        smc_1_req         : in	  std_logic;
        smc_1_Next_EC     : out   STD_LOGIC_VECTOR(21 DOWNTO 0);   -- Next EndCount  unsigned
        smc_1_Next_RM     : out   STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Next ReMainder unsigned
        smc_1_ack         : out   STD_LOGIC; 
        -- Stepper Motor Controller 2 interface:
        smc_2_ACC         : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
      
        smc_2_EC          : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
        smc_2_RM          : in    STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
        smc_2_req         : in	  std_logic;
        smc_2_Next_EC     : out   STD_LOGIC_VECTOR(21 DOWNTO 0);   -- Next EndCount  unsigned
        smc_2_Next_RM     : out   STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Next ReMainder unsigned
        smc_2_ack         : out   STD_LOGIC;      				   
        -- Stepper Motor Controller 3 interface:
        smc_3_ACC         : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
        smc_3_EC          : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
        smc_3_RM          : in    STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
        smc_3_req         : in	  std_logic;
        smc_3_Next_EC     : out   STD_LOGIC_VECTOR(21 DOWNTO 0);   -- Next EndCount  unsigned
        smc_3_Next_RM     : out   STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Next ReMainder unsigned
        smc_3_ack         : out   STD_LOGIC; 
        -- Stepper Motor Controller 4 interface:
        smc_4_ACC         : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
   
        smc_4_EC          : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
        smc_4_RM          : in    STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
        smc_4_req         : in	  std_logic;
        smc_4_Next_EC     : out   STD_LOGIC_VECTOR(21 DOWNTO 0);   -- Next EndCount  unsigned
        smc_4_Next_RM     : out   STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Next ReMainder unsigned
        smc_4_ack         : out   STD_LOGIC;      				   
        -- Stepper Motor Controller 5 interface:
        smc_5_ACC         : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
        smc_5_EC          : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
        smc_5_RM          : in    STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
        smc_5_req         : in	  std_logic;
        smc_5_Next_EC     : out   STD_LOGIC_VECTOR(21 DOWNTO 0);   -- Next EndCount  unsigned
        smc_5_Next_RM     : out   STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Next ReMainder unsigned
        smc_5_ack         : out   STD_LOGIC; 
        -- Stepper Motor Controller 6 interface:
        smc_6_ACC         : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
 
        smc_6_EC          : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
        smc_6_RM          : in    STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
        smc_6_req         : in	  std_logic;
        smc_6_Next_EC     : out   STD_LOGIC_VECTOR(21 DOWNTO 0);   -- Next EndCount  unsigned
        smc_6_Next_RM     : out   STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Next ReMainder unsigned
        smc_6_ack         : out   STD_LOGIC;      				   
        -- Stepper Motor Controller 7 interface:
        smc_7_ACC         : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
   
        smc_7_EC          : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
        smc_7_RM          : in    STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
        smc_7_req         : in	  std_logic;
        smc_7_Next_EC     : out   STD_LOGIC_VECTOR(21 DOWNTO 0);   -- Next EndCount  unsigned
        smc_7_Next_RM     : out   STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Next ReMainder unsigned
        smc_7_ack         : out   STD_LOGIC; 
        -- Stepper Motor Controller 8 interface:
        smc_8_ACC         : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
        smc_8_EC          : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
        smc_8_RM          : in    STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
        smc_8_req         : in	  std_logic;
        smc_8_Next_EC     : out   STD_LOGIC_VECTOR(21 DOWNTO 0);   -- Next EndCount  unsigned
        smc_8_Next_RM     : out   STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Next ReMainder unsigned
        smc_8_ack         : out   STD_LOGIC;      				   
        -- Stepper Motor Controller 9 interface:
        smc_9_ACC         : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
        smc_9_EC          : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
        smc_9_RM          : in    STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
        smc_9_req         : in	  std_logic;
        smc_9_Next_EC     : out   STD_LOGIC_VECTOR(21 DOWNTO 0);  -- Next EndCount  unsigned
        smc_9_Next_RM     : out   STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Next ReMainder unsigned
        smc_9_ack         : out   STD_LOGIC
    );
end component;

component SM_alg_server_tester is
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
end component;

-- clk & reset
signal aresetn           : std_logic;
signal aclk              : std_logic;
signal clk200            : std_logic;  -- synchronous respect to aclk
-- Stepper Motor Controller 0 interface:
signal smc_0_ACC         : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
signal smc_0_EC          : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
signal smc_0_RM          : STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
signal smc_0_req         : std_logic;
signal smc_0_Next_EC     : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- Next EndCount  unsigned
signal smc_0_Next_RM     : STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Next ReMainder unsigned
signal smc_0_ack         : STD_LOGIC;    				   
-- Stepper Motor Controller 1 interface:
signal smc_1_ACC         : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
signal smc_1_EC          : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
signal smc_1_RM          : STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
signal smc_1_req         : std_logic;
signal smc_1_Next_EC     : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- Next EndCount  unsigned
signal smc_1_Next_RM     : STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Next ReMainder unsigned
signal smc_1_ack         : STD_LOGIC;    				   
-- Stepper Motor Controller 2 interface:
signal smc_2_ACC         : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
signal smc_2_EC          : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
signal smc_2_RM          : STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
signal smc_2_req         : std_logic;     				   
signal smc_2_Next_EC     : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- Next EndCount  unsigned
signal smc_2_Next_RM     : STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Next ReMainder unsigned
signal smc_2_ack         : STD_LOGIC;    				   
-- Stepper Motor Controller 3 interface:
signal smc_3_ACC         : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
signal smc_3_EC          : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
signal smc_3_RM          : STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
signal smc_3_req         : std_logic;
signal smc_3_Next_EC     : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- Next EndCount  unsigned
signal smc_3_Next_RM     : STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Next ReMainder unsigned
signal smc_3_ack         : STD_LOGIC;    				   
-- Stepper Motor Controller 4 interface:
signal smc_4_ACC         : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
signal smc_4_EC          : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
signal smc_4_RM          : STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
signal smc_4_req         : std_logic;     				   
signal smc_4_Next_EC     : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- Next EndCount  unsigned
signal smc_4_Next_RM     : STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Next ReMainder unsigned
signal smc_4_ack         : STD_LOGIC;    				   
-- Stepper Motor Controller 5 interface:
signal smc_5_ACC         : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
signal smc_5_EC          : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
signal smc_5_RM          : STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
signal smc_5_req         : std_logic;
signal smc_5_Next_EC     : STD_LOGIC_VECTOR(21 DOWNTO 0);   -- Next EndCount  unsigned
signal smc_5_Next_RM     : STD_LOGIC_VECTOR(15 DOWNTO 0);   -- Next ReMainder unsigned
signal smc_5_ack         : STD_LOGIC;    				   
-- Stepper Motor Controller 6 interface:
signal smc_6_ACC         : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
signal smc_6_EC          : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
signal smc_6_RM          : STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
signal smc_6_req         : std_logic;    				   
signal smc_6_Next_EC     : STD_LOGIC_VECTOR(21 DOWNTO 0);   -- Next EndCount  unsigned
signal smc_6_Next_RM     : STD_LOGIC_VECTOR(15 DOWNTO 0);   -- Next ReMainder unsigned
signal smc_6_ack         : STD_LOGIC;    				   
-- Stepper Motor Controller 7 interface:
signal smc_7_ACC         : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
signal smc_7_EC          : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
signal smc_7_RM          : STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
signal smc_7_req         : std_logic;
signal smc_7_Next_EC     : STD_LOGIC_VECTOR(21 DOWNTO 0);   -- Next EndCount  unsigned
signal smc_7_Next_RM     : STD_LOGIC_VECTOR(15 DOWNTO 0);   -- Next ReMainder unsigned
signal smc_7_ack         : STD_LOGIC;    				   
-- Stepper Motor Controller 8 interface:
signal smc_8_ACC         : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
signal smc_8_EC          : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
signal smc_8_RM          : STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
signal smc_8_req         : std_logic;    				   
signal smc_8_Next_EC     : STD_LOGIC_VECTOR(21 DOWNTO 0);   -- Next EndCount  unsigned
signal smc_8_Next_RM     : STD_LOGIC_VECTOR(15 DOWNTO 0);   -- Next ReMainder unsigned
signal smc_8_ack         : STD_LOGIC;    				   
-- Stepper Motor Controller 9 interface:
signal smc_9_ACC         : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
signal smc_9_EC          : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
signal smc_9_RM          : STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
signal smc_9_req         : std_logic;
signal smc_9_Next_EC     : STD_LOGIC_VECTOR(21 DOWNTO 0);   -- Next EndCount  unsigned
signal smc_9_Next_RM     : STD_LOGIC_VECTOR(15 DOWNTO 0);   -- Next ReMainder unsigned
signal smc_9_ack         : STD_LOGIC; 


begin

TESTER: SM_alg_server_tester
  Port Map( 
        -- clk & reset
        aresetn           => aresetn,
        aclk              => aclk,
        clk200            => clk200,
        -- Stepper Motor Controller 0 interface:
        smc_0_ACC         => smc_0_ACC,      
        smc_0_EC          => smc_0_EC,
        smc_0_RM          => smc_0_RM,
        smc_0_req         => smc_0_req,
        -- Stepper Motor Controller 1 interface:
        smc_1_ACC         => smc_1_ACC,
        smc_1_EC          => smc_1_EC,
        smc_1_RM          => smc_1_RM,
        smc_1_req         => smc_1_req,
        -- Stepper Motor Controller 2 interface:
        smc_2_ACC         => smc_2_ACC,
        smc_2_EC          => smc_2_EC,
        smc_2_RM          => smc_2_RM,
        smc_2_req         => smc_2_req,
        -- Stepper Motor Controller 3 interface:
        smc_3_ACC         => smc_3_ACC,
        smc_3_EC          => smc_3_EC,
        smc_3_RM          => smc_3_RM,
        smc_3_req         => smc_3_req,
        -- Stepper Motor Controller 4 interface:
        smc_4_ACC         => smc_4_ACC,
        smc_4_EC          => smc_4_EC,
        smc_4_RM          => smc_4_RM,
        smc_4_req         => smc_4_req,
        -- Stepper Motor Controller 5 interface:
        smc_5_ACC         => smc_5_ACC,
        smc_5_EC          => smc_5_EC,
        smc_5_RM          => smc_5_RM,
        smc_5_req         => smc_5_req,
        -- Stepper Motor Controller 6 interface:
        smc_6_ACC         => smc_6_ACC,
        smc_6_EC          => smc_6_EC,
        smc_6_RM          => smc_6_RM,
        smc_6_req         => smc_6_req,
        -- Stepper Motor Controller 7 interface:
        smc_7_ACC         => smc_7_ACC,
        smc_7_EC          => smc_7_EC,
        smc_7_RM          => smc_7_RM,
        smc_7_req         => smc_7_req,
        -- Stepper Motor Controller 8 interface:
        smc_8_ACC         => smc_8_ACC,
        smc_8_EC          => smc_8_EC,
        smc_8_RM          => smc_8_RM,
        smc_8_req         => smc_8_req,
        -- Stepper Motor Controller 9 interface:
        smc_9_ACC         => smc_9_ACC,
        smc_9_EC          => smc_9_EC,
        smc_9_RM          => smc_9_RM,
        smc_9_req         => smc_9_req
    );


DUT: SM_alg_server
  Port Map( 
        -- clk & reset
        aresetn           => aresetn,
        aclk              => aclk,
        clk200            => clk200,
        -- Stepper Motor Controller 0 interface:
        smc_0_ACC         => smc_0_ACC,      
        smc_0_EC          => smc_0_EC,
        smc_0_RM          => smc_0_RM,
        smc_0_req         => smc_0_req,
        smc_0_Next_EC     => smc_0_Next_EC,
        smc_0_Next_RM     => smc_0_Next_RM,
        smc_0_ack         => smc_0_ack,
        -- Stepper Motor Controller 1 interface:
        smc_1_ACC         => smc_1_ACC,
        smc_1_EC          => smc_1_EC,
        smc_1_RM          => smc_1_RM,
        smc_1_req         => smc_1_req,
        smc_1_Next_EC     => smc_1_Next_EC,
        smc_1_Next_RM     => smc_1_Next_RM,
        smc_1_ack         => smc_1_ack,
        -- Stepper Motor Controller 2 interface:
        smc_2_ACC         => smc_2_ACC,
        smc_2_EC          => smc_2_EC,
        smc_2_RM          => smc_2_RM,
        smc_2_req         => smc_2_req,
        smc_2_Next_EC     => smc_2_Next_EC,
        smc_2_Next_RM     => smc_2_Next_RM,
        smc_2_ack         => smc_2_ack,
        -- Stepper Motor Controller 3 interface:
        smc_3_ACC         => smc_3_ACC,
        smc_3_EC          => smc_3_EC,
        smc_3_RM          => smc_3_RM,
        smc_3_req         => smc_3_req,
        smc_3_Next_EC     => smc_3_Next_EC,
        smc_3_Next_RM     => smc_3_Next_RM,
        smc_3_ack         => smc_3_ack,
        -- Stepper Motor Controller 4 interface:
        smc_4_ACC         => smc_4_ACC,
        smc_4_EC          => smc_4_EC,
        smc_4_RM          => smc_4_RM,
        smc_4_req         => smc_4_req,
        smc_4_Next_EC     => smc_4_Next_EC,
        smc_4_Next_RM     => smc_4_Next_RM,
        smc_4_ack         => smc_4_ack,
        -- Stepper Motor Controller 5 interface:
        smc_5_ACC         => smc_5_ACC,
        smc_5_EC          => smc_5_EC,
        smc_5_RM          => smc_5_RM,
        smc_5_req         => smc_5_req,
        smc_5_Next_EC     => smc_5_Next_EC,
        smc_5_Next_RM     => smc_5_Next_RM,
        smc_5_ack         => smc_5_ack,
        -- Stepper Motor Controller 6 interface:
        smc_6_ACC         => smc_6_ACC,
        smc_6_EC          => smc_6_EC,
        smc_6_RM          => smc_6_RM,
        smc_6_req         => smc_6_req,
        smc_6_Next_EC     => smc_6_Next_EC,
        smc_6_Next_RM     => smc_6_Next_RM,
        smc_6_ack         => smc_6_ack,
        -- Stepper Motor Controller 7 interface:
        smc_7_ACC         => smc_7_ACC,
        smc_7_EC          => smc_7_EC,
        smc_7_RM          => smc_7_RM,
        smc_7_req         => smc_7_req,
        smc_7_Next_EC     => smc_7_Next_EC,
        smc_7_Next_RM     => smc_7_Next_RM,
        smc_7_ack         => smc_7_ack,
        -- Stepper Motor Controller 8 interface:
        smc_8_ACC         => smc_8_ACC,
        smc_8_EC          => smc_8_EC,
        smc_8_RM          => smc_8_RM,
        smc_8_req         => smc_8_req,
        smc_8_Next_EC     => smc_8_Next_EC,
        smc_8_Next_RM     => smc_8_Next_RM,
        smc_8_ack         => smc_8_ack,
        -- Stepper Motor Controller 9 interface:
        smc_9_ACC         => smc_9_ACC,
        smc_9_EC          => smc_9_EC,
        smc_9_RM          => smc_9_RM,
        smc_9_req         => smc_9_req,
        smc_9_Next_EC     => smc_9_Next_EC,
        smc_9_Next_RM     => smc_9_Next_RM,
        smc_9_ack         => smc_9_ack
    );
end bhe;
