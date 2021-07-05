----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.09.2019 17:49:23
-- Design Name: 
-- Module Name: SM_ctrl - rtl
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


entity SM_alg_server_loc is
  Port ( 
        -- clk & reset
        aresetn           : in    std_logic;
        aclk              : in    std_logic;
        clk200            : in    std_logic;  -- synchronous respect to aclk
        -- Stepper Moior controller 0 interface:
        smc_0_ACC         : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
        -- Status in       
        smc_0_EC          : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
        smc_0_RM          : in    STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
        smc_0_req         : in	  std_logic;
        -- Status out
        smc_0_Next_EC     : out   STD_LOGIC_VECTOR(21 DOWNTO 0);   -- Next EndCount  unsigned
        smc_0_Next_RM     : out   STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Next ReMainder unsigned
        smc_0_ack         : out   STD_LOGIC      				   
    );
end SM_alg_server_loc;

architecture rtl of SM_alg_server_loc is

signal smc_ACC         : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
        -- Status in       
signal smc_EC          : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
signal smc_RM          : STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
signal smc_vld_in      : std_logic;
        -- Status out
signal smc_Next_EC     : STD_LOGIC_VECTOR(21 DOWNTO 0);   -- Next EndCount  unsigned
signal smc_Next_RM     : STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Next ReMainder unsigned
signal smc_valid_out   : STD_LOGIC;  

component next_ec_engine is
  Port ( 
        -- clk & reset
        aresetn     : in    std_logic;
        aclk        : in    std_logic;
        clk200      : in    std_logic;  -- synchronous respect to aclk
        -- Parameters
        ACC         : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
        -- Status in       
        EC          : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
        RM          : in    STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned  
        vld_in      : in	std_logic;
        -- Status out
        Next_EC     : out   STD_LOGIC_VECTOR(21 DOWNTO 0);  -- Next EndCount  unsigned
        Next_RM     : out   STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Next ReMainder unsigned
        valid_out   : out   STD_LOGIC      				   
    );
end component next_ec_engine;

begin

smc_ACC         <= smc_0_ACC;        
-- Status in       
smc_EC          <= smc_0_EC; 
smc_RM          <= smc_0_RM; 
smc_vld_in      <= smc_0_req; 


nxt_ec : next_ec_engine
  Port map ( 
        -- clk & reset
        aresetn     => aresetn,
        aclk        => aclk,     
        clk200      => clk200,      
        -- Parameters  
        ACC         => smc_ACC,         
        -- Status in
        EC          => smc_EC,
        RM          => smc_RM,              
        vld_in      => smc_vld_in,      
        -- Status out -- Status ou
        Next_EC     => smc_Next_EC,
        Next_RM     => smc_Next_RM,           
        valid_out   => smc_valid_out   
    );


smc_0_Next_EC   <= smc_Next_EC; 
smc_0_Next_RM   <= smc_Next_RM; 
smc_0_ack       <= smc_valid_out; 


end rtl;
