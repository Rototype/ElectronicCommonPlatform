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


entity SM_alg_server is
  Port ( 
        -- clk & reset
        aresetn           : in    std_logic;
        aclk              : in    std_logic;
        clk200            : in    std_logic;  -- synchronous respect to aclk
        -- Stepper Motor Controller 0 interface:
        smc_0_ACC         : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
        -- Status in       
        smc_0_EC          : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
        smc_0_RM          : in    STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
        smc_0_req         : in	  std_logic;
        -- Status out
        smc_0_Next_EC     : out   STD_LOGIC_VECTOR(21 DOWNTO 0);   -- Next EndCount  unsigned
        smc_0_Next_RM     : out   STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Next ReMainder unsigned
        smc_0_ack         : out   STD_LOGIC;      				   
        -- Stepper Motor Controller 1 interface:
        smc_1_ACC         : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
        -- Status in       
        smc_1_EC          : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
        smc_1_RM          : in    STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
        smc_1_req         : in	  std_logic;
        -- Status out
        smc_1_Next_EC     : out   STD_LOGIC_VECTOR(21 DOWNTO 0);   -- Next EndCount  unsigned
        smc_1_Next_RM     : out   STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Next ReMainder unsigned
        smc_1_ack         : out   STD_LOGIC; 
        -- Stepper Motor Controller 2 interface:
        smc_2_ACC         : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
        -- Status in       
        smc_2_EC          : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
        smc_2_RM          : in    STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
        smc_2_req         : in	  std_logic;
        -- Status out
        smc_2_Next_EC     : out   STD_LOGIC_VECTOR(21 DOWNTO 0);   -- Next EndCount  unsigned
        smc_2_Next_RM     : out   STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Next ReMainder unsigned
        smc_2_ack         : out   STD_LOGIC;      				   
        -- Stepper Motor Controller 3 interface:
        smc_3_ACC         : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
        -- Status in       
        smc_3_EC          : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
        smc_3_RM          : in    STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
        smc_3_req         : in	  std_logic;
        -- Status out
        smc_3_Next_EC     : out   STD_LOGIC_VECTOR(21 DOWNTO 0);   -- Next EndCount  unsigned
        smc_3_Next_RM     : out   STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Next ReMainder unsigned
        smc_3_ack         : out   STD_LOGIC; 
        -- Stepper Motor Controller 4 interface:
        smc_4_ACC         : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
        -- Status in       
        smc_4_EC          : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
        smc_4_RM          : in    STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
        smc_4_req         : in	  std_logic;
        -- Status out
        smc_4_Next_EC     : out   STD_LOGIC_VECTOR(21 DOWNTO 0);   -- Next EndCount  unsigned
        smc_4_Next_RM     : out   STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Next ReMainder unsigned
        smc_4_ack         : out   STD_LOGIC;      				   
        -- Stepper Motor Controller 5 interface:
        smc_5_ACC         : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
        -- Status in       
        smc_5_EC          : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
        smc_5_RM          : in    STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
        smc_5_req         : in	  std_logic;
        -- Status out
        smc_5_Next_EC     : out   STD_LOGIC_VECTOR(21 DOWNTO 0);   -- Next EndCount  unsigned
        smc_5_Next_RM     : out   STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Next ReMainder unsigned
        smc_5_ack         : out   STD_LOGIC; 
        -- Stepper Motor Controller 6 interface:
        smc_6_ACC         : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
        -- Status in       
        smc_6_EC          : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
        smc_6_RM          : in    STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
        smc_6_req         : in	  std_logic;
        -- Status out
        smc_6_Next_EC     : out   STD_LOGIC_VECTOR(21 DOWNTO 0);   -- Next EndCount  unsigned
        smc_6_Next_RM     : out   STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Next ReMainder unsigned
        smc_6_ack         : out   STD_LOGIC;      				   
        -- Stepper Motor Controller 7 interface:
        smc_7_ACC         : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
        -- Status in       
        smc_7_EC          : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
        smc_7_RM          : in    STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
        smc_7_req         : in	  std_logic;
        -- Status out
        smc_7_Next_EC     : out   STD_LOGIC_VECTOR(21 DOWNTO 0);   -- Next EndCount  unsigned
        smc_7_Next_RM     : out   STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Next ReMainder unsigned
        smc_7_ack         : out   STD_LOGIC; 
        -- Stepper Motor Controller 8 interface:
        smc_8_ACC         : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
        -- Status in       
        smc_8_EC          : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
        smc_8_RM          : in    STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
        smc_8_req         : in	  std_logic;
        -- Status out
        smc_8_Next_EC     : out   STD_LOGIC_VECTOR(21 DOWNTO 0);   -- Next EndCount  unsigned
        smc_8_Next_RM     : out   STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Next ReMainder unsigned
        smc_8_ack         : out   STD_LOGIC;      				   
        -- Stepper Motor Controller 9 interface:
        smc_9_ACC         : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
        -- Status in       
        smc_9_EC          : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
        smc_9_RM          : in    STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
        smc_9_req         : in	  std_logic;
        -- Status out
        smc_9_Next_EC     : out   STD_LOGIC_VECTOR(21 DOWNTO 0);   -- Next EndCount  unsigned
        smc_9_Next_RM     : out   STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Next ReMainder unsigned
        smc_9_ack         : out   STD_LOGIC
    );
end SM_alg_server;

architecture rtl of SM_alg_server is

signal smc_ACC         : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
        -- Status in       
signal smc_EC          : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
signal smc_RM          : STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
signal smc_vld_in      : std_logic;
        -- Status out
signal smc_Next_EC     : STD_LOGIC_VECTOR(21 DOWNTO 0);   -- Next EndCount  unsigned
signal smc_Next_RM     : STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Next ReMainder unsigned
signal smc_valid_out   : STD_LOGIC;  

------- reset tree resampling  -------------------------------------------------------
signal aresetn_loc      : std_logic := '1'; 
signal resetn           : std_logic := '0';    
signal reset            : std_logic := '1';

signal aresetn_loc_200  : std_logic := '1'; 
signal resetn_200       : std_logic := '0';    
signal reset_200        : std_logic := '1';

signal smc_0_din        : STD_LOGIC_VECTOR(59 DOWNTO 0);
signal smc_1_din        : STD_LOGIC_VECTOR(59 DOWNTO 0);
signal smc_2_din        : STD_LOGIC_VECTOR(59 DOWNTO 0);
signal smc_3_din        : STD_LOGIC_VECTOR(59 DOWNTO 0);
signal smc_4_din        : STD_LOGIC_VECTOR(59 DOWNTO 0);
signal smc_5_din        : STD_LOGIC_VECTOR(59 DOWNTO 0);
signal smc_6_din        : STD_LOGIC_VECTOR(59 DOWNTO 0);
signal smc_7_din        : STD_LOGIC_VECTOR(59 DOWNTO 0);
signal smc_8_din        : STD_LOGIC_VECTOR(59 DOWNTO 0);
signal smc_9_din        : STD_LOGIC_VECTOR(59 DOWNTO 0);

signal smc_0_dout       : STD_LOGIC_VECTOR(59 DOWNTO 0);
signal smc_1_dout       : STD_LOGIC_VECTOR(59 DOWNTO 0);
signal smc_2_dout       : STD_LOGIC_VECTOR(59 DOWNTO 0);
signal smc_3_dout       : STD_LOGIC_VECTOR(59 DOWNTO 0);
signal smc_4_dout       : STD_LOGIC_VECTOR(59 DOWNTO 0);
signal smc_5_dout       : STD_LOGIC_VECTOR(59 DOWNTO 0);
signal smc_6_dout       : STD_LOGIC_VECTOR(59 DOWNTO 0);
signal smc_7_dout       : STD_LOGIC_VECTOR(59 DOWNTO 0);
signal smc_8_dout       : STD_LOGIC_VECTOR(59 DOWNTO 0);
signal smc_9_dout       : STD_LOGIC_VECTOR(59 DOWNTO 0);

signal smc_0_wr         : STD_LOGIC := '0';
signal smc_1_wr         : STD_LOGIC := '0';
signal smc_2_wr         : STD_LOGIC := '0';
signal smc_3_wr         : STD_LOGIC := '0';
signal smc_4_wr         : STD_LOGIC := '0';
signal smc_5_wr         : STD_LOGIC := '0';
signal smc_6_wr         : STD_LOGIC := '0';
signal smc_7_wr         : STD_LOGIC := '0';
signal smc_8_wr         : STD_LOGIC := '0';
signal smc_9_wr         : STD_LOGIC := '0';

signal smc_0_rd         : STD_LOGIC := '0';
signal smc_1_rd         : STD_LOGIC := '0';
signal smc_2_rd         : STD_LOGIC := '0';
signal smc_3_rd         : STD_LOGIC := '0';
signal smc_4_rd         : STD_LOGIC := '0';
signal smc_5_rd         : STD_LOGIC := '0';
signal smc_6_rd         : STD_LOGIC := '0';
signal smc_7_rd         : STD_LOGIC := '0';
signal smc_8_rd         : STD_LOGIC := '0';
signal smc_9_rd         : STD_LOGIC := '0';

signal smc_0_full       : STD_LOGIC;
signal smc_1_full       : STD_LOGIC;
signal smc_2_full       : STD_LOGIC;
signal smc_3_full       : STD_LOGIC;
signal smc_4_full       : STD_LOGIC;
signal smc_5_full       : STD_LOGIC;
signal smc_6_full       : STD_LOGIC;
signal smc_7_full       : STD_LOGIC;
signal smc_8_full       : STD_LOGIC;
signal smc_9_full       : STD_LOGIC;

signal smc_0_empty      : STD_LOGIC;
signal smc_1_empty      : STD_LOGIC;
signal smc_2_empty      : STD_LOGIC;
signal smc_3_empty      : STD_LOGIC;
signal smc_4_empty      : STD_LOGIC;
signal smc_5_empty      : STD_LOGIC;
signal smc_6_empty      : STD_LOGIC;
signal smc_7_empty      : STD_LOGIC;
signal smc_8_empty      : STD_LOGIC;
signal smc_9_empty      : STD_LOGIC;

signal fifo_0_ACC       : STD_LOGIC_VECTOR(21 DOWNTO 0);
signal fifo_0_EC        : STD_LOGIC_VECTOR(21 DOWNTO 0);
signal fifo_0_RM        : STD_LOGIC_VECTOR(15 DOWNTO 0);  
--
signal fifo_1_ACC       : STD_LOGIC_VECTOR(21 DOWNTO 0);
signal fifo_1_EC        : STD_LOGIC_VECTOR(21 DOWNTO 0);
signal fifo_1_RM        : STD_LOGIC_VECTOR(15 DOWNTO 0);  
--
signal fifo_2_ACC       : STD_LOGIC_VECTOR(21 DOWNTO 0);
signal fifo_2_EC        : STD_LOGIC_VECTOR(21 DOWNTO 0);
signal fifo_2_RM        : STD_LOGIC_VECTOR(15 DOWNTO 0);  
--
signal fifo_3_ACC       : STD_LOGIC_VECTOR(21 DOWNTO 0);
signal fifo_3_EC        : STD_LOGIC_VECTOR(21 DOWNTO 0);
signal fifo_3_RM        : STD_LOGIC_VECTOR(15 DOWNTO 0);  
--
signal fifo_4_ACC       : STD_LOGIC_VECTOR(21 DOWNTO 0);
signal fifo_4_EC        : STD_LOGIC_VECTOR(21 DOWNTO 0);
signal fifo_4_RM        : STD_LOGIC_VECTOR(15 DOWNTO 0);  
--
signal fifo_5_ACC       : STD_LOGIC_VECTOR(21 DOWNTO 0);
signal fifo_5_EC        : STD_LOGIC_VECTOR(21 DOWNTO 0);
signal fifo_5_RM        : STD_LOGIC_VECTOR(15 DOWNTO 0);  
--
signal fifo_6_ACC       : STD_LOGIC_VECTOR(21 DOWNTO 0);
signal fifo_6_EC        : STD_LOGIC_VECTOR(21 DOWNTO 0);
signal fifo_6_RM        : STD_LOGIC_VECTOR(15 DOWNTO 0);  
--
signal fifo_7_ACC       : STD_LOGIC_VECTOR(21 DOWNTO 0);
signal fifo_7_EC        : STD_LOGIC_VECTOR(21 DOWNTO 0);
signal fifo_7_RM        : STD_LOGIC_VECTOR(15 DOWNTO 0);  
--
signal fifo_8_ACC       : STD_LOGIC_VECTOR(21 DOWNTO 0);
signal fifo_8_EC        : STD_LOGIC_VECTOR(21 DOWNTO 0);
signal fifo_8_RM        : STD_LOGIC_VECTOR(15 DOWNTO 0);  
--
signal fifo_9_ACC       : STD_LOGIC_VECTOR(21 DOWNTO 0);
signal fifo_9_EC        : STD_LOGIC_VECTOR(21 DOWNTO 0);
signal fifo_9_RM        : STD_LOGIC_VECTOR(15 DOWNTO 0);  
--
signal SMC_in           : std_logic_vector(3 downto 0);   -- Controller in
signal SMC_out          : std_logic_vector(3 downto 0);   -- Controller out

signal selector         : std_logic_vector(3 downto 0);   -- Selected Controller
signal selector_val     : std_logic;                      -- Selected Controller valid

signal req_fifo_wr      : std_logic; 
signal req_fifo_din     : std_logic_vector(9 downto 0);
signal req_fifo_full    : std_logic;

signal req_fifo_rd      : std_logic; 
signal req_fifo_dout    : std_logic_vector(9 downto 0);
signal req_fifo_empty   : std_logic;

signal pending          : std_logic_vector(9 downto 0);

component next_ec_engine is
  Port ( 
        -- clk & reset
        reset       : in    std_logic;
        clk200      : in    std_logic;  -- synchronous respect to aclk
        --
        SMC_in      : in    std_logic_vector(3 downto 0);   -- Controller in
        -- Parameters
        ACC         : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
        -- Status in       
        EC          : in    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
        RM          : in    STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
        vld_in      : in	std_logic;
        -- Status out
        SMC_out     : out    std_logic_vector(3 downto 0);   -- Controller out
        Next_EC     : out   STD_LOGIC_VECTOR(21 DOWNTO 0);   -- Next EndCount  unsigned
        Next_RM     : out    STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Next ReMainder unsigned
        valid_out   : out   STD_LOGIC    				   
    );
end component next_ec_engine;

COMPONENT SM_status_fifo
  PORT (
    clk     : IN STD_LOGIC;
    srst    : IN STD_LOGIC;
    --
    din : IN STD_LOGIC_VECTOR(59 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    full : OUT STD_LOGIC;
    --    
    dout : OUT STD_LOGIC_VECTOR(59 DOWNTO 0);
    rd_en : IN STD_LOGIC;
    empty : OUT STD_LOGIC
  );
END COMPONENT;

COMPONENT SM_req_fifo
  PORT (
    clk     : IN STD_LOGIC;
    srst    : IN STD_LOGIC;
    --
    din : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    full : OUT STD_LOGIC;
    --    
    dout : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    rd_en : IN STD_LOGIC;
    empty : OUT STD_LOGIC
  );
END COMPONENT;

type state_type is (idle,
                    tst_pend_requests,
                    tst_pend_0, wait_0, out_0,
                    tst_pend_1, wait_1, out_1,
                    tst_pend_2, wait_2, out_2,                                        
                    tst_pend_3, wait_3, out_3, 
                    tst_pend_4, wait_4, out_4, 
                    tst_pend_5, wait_5, out_5, 
                    tst_pend_6, wait_6, out_6, 
                    tst_pend_7, wait_7, out_7, 
                    tst_pend_8, wait_8, out_8,
                    tst_pend_9, wait_9, out_9,                                                                                                                                            
                    -- Recovery state
                    recovery);
                    
signal srv_state          : state_type;

signal ACC       : STD_LOGIC_VECTOR(21 DOWNTO 0);
signal EC        : STD_LOGIC_VECTOR(21 DOWNTO 0);
signal RM        : STD_LOGIC_VECTOR(15 DOWNTO 0);  

signal is_idle   : STD_LOGIC;  -- only for debug

begin

------- reset trees resampling  ----------------------------    
    rst_gen: process (aclk)
    begin       
       if rising_edge(aclk) then
         aresetn_loc <= aresetn;
         resetn      <= aresetn_loc;
         reset       <= not(aresetn_loc);      
       end if;
    end process rst_gen; 
    
    rst_200_gen: process (clk200)
    begin       
       if rising_edge(clk200) then
         aresetn_loc_200 <= aresetn;
         resetn_200      <= aresetn_loc_200;
         reset_200       <= not(aresetn_loc_200);      
       end if;
    end process rst_200_gen;     
        
------- Decoupling fifos  -----------------------------------        
    sample_in_fifo0 : process (clk200)
    begin       
        if rising_edge(clk200) then
            if (reset_200 = '1') then
                smc_0_wr <= '0';
            else
                smc_0_wr <= smc_0_req;
                smc_0_din(59 downto 38) <= smc_0_ACC;   smc_0_din(37 downto 16) <= smc_0_EC;    smc_0_din(15 downto  0) <= smc_0_RM;
            end if;
        end if;
    end process sample_in_fifo0; 
    smc_0: SM_status_fifo
      PORT MAP(
        clk     => clk200,      srst    => reset_200,
        din     => smc_0_din,   wr_en   => smc_0_wr,   full    => smc_0_full,
        dout    => smc_0_dout,  rd_en   => smc_0_rd,    empty   => smc_0_empty
      );
    fifo_0_ACC <= smc_0_dout(59 downto 38); fifo_0_EC <= smc_0_dout(37 downto 16);  fifo_0_RM <= smc_0_din(15 downto  0);
    --
    sample_in_fifo1 : process (clk200)
    begin       
        if rising_edge(clk200) then
            if (reset_200 = '1') then
                smc_1_wr <= '0';
            else
                smc_1_wr <= smc_1_req;
                smc_1_din(59 downto 38) <= smc_1_ACC;   smc_1_din(37 downto 16) <= smc_1_EC;    smc_1_din(15 downto  0) <= smc_1_RM;
            end if;
        end if;
    end process sample_in_fifo1; 
    smc_1: SM_status_fifo
      PORT MAP(
        clk     => clk200,      srst    => reset_200,
        din     => smc_1_din,   wr_en   => smc_1_wr,   full    => smc_1_full,
        dout    => smc_1_dout,  rd_en   => smc_1_rd,    empty   => smc_1_empty
      );
    fifo_1_ACC <= smc_1_dout(59 downto 38); fifo_1_EC <= smc_1_dout(37 downto 16);  fifo_1_RM <= smc_1_din(15 downto  0);
    --
    sample_in_fifo2 : process (clk200)
    begin       
        if rising_edge(clk200) then
            if (reset_200 = '1') then
                smc_2_wr <= '0';
            else
                smc_2_wr <= smc_2_req;
                smc_2_din(59 downto 38) <= smc_2_ACC;   smc_2_din(37 downto 16) <= smc_2_EC;    smc_2_din(15 downto  0) <= smc_2_RM;
            end if;
        end if;
    end process sample_in_fifo2; 
    smc_2: SM_status_fifo
      PORT MAP(
        clk     => clk200,      srst    => reset_200,
        din     => smc_2_din,   wr_en   => smc_2_wr,   full    => smc_2_full,
        dout    => smc_2_dout,  rd_en   => smc_2_rd,    empty   => smc_2_empty
      );
    fifo_2_ACC <= smc_2_dout(59 downto 38); fifo_2_EC <= smc_2_dout(37 downto 16);  fifo_2_RM <= smc_2_din(15 downto  0);
    --
    sample_in_fifo3 : process (clk200)
    begin       
        if rising_edge(clk200) then
            if (reset_200 = '1') then
                smc_3_wr <= '0';
            else
                smc_3_wr <= smc_3_req;
                smc_3_din(59 downto 38) <= smc_3_ACC;   smc_3_din(37 downto 16) <= smc_3_EC;    smc_3_din(15 downto  0) <= smc_3_RM;
            end if;
        end if;
    end process sample_in_fifo3; 
    smc_3: SM_status_fifo
      PORT MAP(
        clk     => clk200,      srst    => reset_200,
        din     => smc_3_din,   wr_en   => smc_3_wr,   full    => smc_3_full,
        dout    => smc_3_dout,  rd_en   => smc_3_rd,    empty   => smc_3_empty
      );
    fifo_3_ACC <= smc_3_dout(59 downto 38); fifo_3_EC <= smc_3_dout(37 downto 16);  fifo_3_RM <= smc_3_din(15 downto  0);
    --
    sample_in_fifo4 : process (clk200)
    begin       
        if rising_edge(clk200) then
            if (reset_200 = '1') then
                smc_4_wr <= '0';
            else
                smc_4_wr <= smc_4_req;
                smc_4_din(59 downto 38) <= smc_4_ACC;   smc_4_din(37 downto 16) <= smc_4_EC;    smc_4_din(15 downto  0) <= smc_4_RM;
            end if;
        end if;
    end process sample_in_fifo4; 
    smc_4: SM_status_fifo
      PORT MAP(
        clk     => clk200,      srst    => reset_200,
        din     => smc_4_din,   wr_en   => smc_4_wr,   full    => smc_4_full,
        dout    => smc_4_dout,  rd_en   => smc_4_rd,    empty   => smc_4_empty
      );
    fifo_4_ACC <= smc_4_dout(59 downto 38); fifo_4_EC <= smc_4_dout(37 downto 16);  fifo_4_RM <= smc_4_din(15 downto  0);
    --
    sample_in_fifo5 : process (clk200)
    begin       
        if rising_edge(clk200) then
            if (reset_200 = '1') then
                smc_5_wr <= '0';
            else
                smc_5_wr <= smc_5_req;
                smc_5_din(59 downto 38) <= smc_5_ACC;   smc_5_din(37 downto 16) <= smc_5_EC;    smc_5_din(15 downto  0) <= smc_5_RM;
            end if;
        end if;
    end process sample_in_fifo5; 
    smc_5: SM_status_fifo
      PORT MAP(
        clk     => clk200,      srst    => reset_200,
        din     => smc_5_din,   wr_en   => smc_5_wr,   full    => smc_5_full,
        dout    => smc_5_dout,  rd_en   => smc_5_rd,    empty   => smc_5_empty
      );
    fifo_5_ACC <= smc_5_dout(59 downto 38); fifo_5_EC <= smc_5_dout(37 downto 16);  fifo_5_RM <= smc_5_din(15 downto  0);
    --
    sample_in_fifo6 : process (clk200)
    begin       
        if rising_edge(clk200) then
            if (reset_200 = '1') then
                smc_6_wr <= '0';
            else
                smc_6_wr <= smc_6_req;
                smc_6_din(59 downto 38) <= smc_6_ACC;   smc_6_din(37 downto 16) <= smc_6_EC;    smc_6_din(15 downto  0) <= smc_6_RM;
            end if;
        end if;
    end process sample_in_fifo6; 
    smc_6: SM_status_fifo
      PORT MAP(
        clk     => clk200,      srst    => reset_200,
        din     => smc_6_din,   wr_en   => smc_6_wr,   full    => smc_6_full,
        dout    => smc_6_dout,  rd_en   => smc_6_rd,    empty   => smc_6_empty
      );
    fifo_6_ACC <= smc_6_dout(59 downto 38); fifo_6_EC <= smc_6_dout(37 downto 16);  fifo_6_RM <= smc_6_din(15 downto  0);
    --
    sample_in_fifo7 : process (clk200)
    begin       
        if rising_edge(clk200) then
            if (reset_200 = '1') then
                smc_7_wr <= '0';
            else
                smc_7_wr <= smc_7_req;
                smc_7_din(59 downto 38) <= smc_7_ACC;   smc_7_din(37 downto 16) <= smc_7_EC;    smc_7_din(15 downto  0) <= smc_7_RM;
            end if;
        end if;
    end process sample_in_fifo7; 
    smc_7: SM_status_fifo
      PORT MAP(
        clk     => clk200,      srst    => reset_200,
        din     => smc_7_din,   wr_en   => smc_7_wr,   full    => smc_7_full,
        dout    => smc_7_dout,  rd_en   => smc_7_rd,    empty   => smc_7_empty
      );
    fifo_7_ACC <= smc_7_dout(59 downto 38); fifo_7_EC <= smc_7_dout(37 downto 16);  fifo_7_RM <= smc_7_din(15 downto  0);
    --
    sample_in_fifo8 : process (clk200)
    begin       
        if rising_edge(clk200) then
            if (reset_200 = '1') then
                smc_8_wr <= '0';
            else
                smc_8_wr <= smc_8_req;
                smc_8_din(59 downto 38) <= smc_8_ACC;   smc_8_din(37 downto 16) <= smc_8_EC;    smc_8_din(15 downto  0) <= smc_8_RM;
            end if;
        end if;
    end process sample_in_fifo8; 
    smc_8: SM_status_fifo
      PORT MAP(
        clk     => clk200,      srst    => reset_200,
        din     => smc_8_din,   wr_en   => smc_8_wr,   full    => smc_8_full,
        dout    => smc_8_dout,  rd_en   => smc_8_rd,    empty   => smc_8_empty
      );
    fifo_8_ACC <= smc_8_dout(59 downto 38); fifo_8_EC <= smc_8_dout(37 downto 16);  fifo_8_RM <= smc_8_din(15 downto  0);
    --
    sample_in_fifo9 : process (clk200)
    begin       
        if rising_edge(clk200) then
            if (reset_200 = '1') then
                smc_9_wr <= '0';
            else
                smc_9_wr <= smc_9_req;
                smc_9_din(59 downto 38) <= smc_9_ACC;   smc_9_din(37 downto 16) <= smc_9_EC;    smc_9_din(15 downto  0) <= smc_9_RM;
            end if;
        end if;
    end process sample_in_fifo9; 
    smc_9: SM_status_fifo
      PORT MAP(
        clk     => clk200,      srst    => reset_200,
        din     => smc_9_din,   wr_en   => smc_9_wr,   full    => smc_9_full,
        dout    => smc_9_dout,  rd_en   => smc_9_rd,    empty   => smc_9_empty
      );
    fifo_9_ACC <= smc_9_dout(59 downto 38); fifo_9_EC <= smc_9_dout(37 downto 16);  fifo_9_RM <= smc_9_din(15 downto  0);
    --
    
    sample_in_req_fifo : process (clk200)
    begin       
        if rising_edge(clk200) then
            if (reset_200 = '1') then
                req_fifo_wr     <= '0';
                req_fifo_din    <= (others => '0');
            else                
                req_fifo_wr      <= smc_9_req or smc_8_req or smc_7_req or smc_6_req or smc_5_req or smc_4_req or smc_3_req or smc_2_req or smc_1_req or smc_0_req;                     
                req_fifo_din     <= smc_9_req &  smc_8_req &  smc_7_req &  smc_6_req &  smc_5_req &  smc_4_req &  smc_3_req &  smc_2_req &  smc_1_req &  smc_0_req;
            end if;
        end if;
    end process sample_in_req_fifo;
         
    smc_req_fifo: SM_req_fifo
      PORT MAP(
        clk     => clk200,
        srst    => reset_200,
        --
        din     => req_fifo_din,
        wr_en   => req_fifo_wr,
        full    => req_fifo_full,
        --
        dout    => req_fifo_dout,
        rd_en   => req_fifo_rd,
        empty   => req_fifo_empty
      );     
     
    --------------------------------------------------   

--type state_type is (idle,
--                    tst_pend_requests,
--                    tst_pend_0, wait_0, out_0,
--                    tst_pend_1, wait_1, out_1,
--                    tst_pend_2, wait_2, out_2,                                        
--                    tst_pend_3, wait_3, out_3, 
--                    tst_pend_4, wait_4, out_4, 
--                    tst_pend_5, wait_5, out_5, 
--                    tst_pend_6, wait_6, out_6, 
--                    tst_pend_7, wait_7, out_7, 
--                    tst_pend_8, wait_8, out_8,
--                    tst_pend_9, wait_9, out_9,                    
--                    magari_serve,                                                                                                                         
--                    -- Recovery state
--                    recovery);
     
    srv_fsm: process (clk200)
    begin       
        if rising_edge(clk200) then
            if (reset_200 = '1') then        
                srv_state   <= idle;
                pending     <= (others => '0');
                req_fifo_rd <= '0';
                selector_val  <= '0';
                selector      <= x"0";
                smc_0_rd    <= '0';                 
            else
                -- Stepper Motor FSM
                case (srv_state) is
                    when idle =>
                        if (req_fifo_empty = '0') then
                            srv_state   <= tst_pend_0;
                            pending     <= req_fifo_dout;
                            req_fifo_rd <= '1';
                        else
                            srv_state   <= idle;
                            pending     <= (others => '0');
                            req_fifo_rd <= '0'; 
                        end if;
                    -----------------------------    
                    when tst_pend_0 =>
                        req_fifo_rd <= '0'; 
                        if (pending(0) = '1') then
                            srv_state   <= wait_0; 
                            selector    <= x"0";                                   
                        else
                            srv_state   <= tst_pend_1;
                        end if;
                    when wait_0 =>
                        smc_0_rd     <= '1';
                        selector_val <= '1';
                        srv_state    <= out_0; 
                    when out_0 =>
                        smc_0_rd     <= '0';
                        selector_val <= '0';
                        pending(0) <= '0';
                        if (smc_valid_out = '1') then
                            srv_state   <= tst_pend_1;                                     
                        else
                            srv_state   <= out_0;
                        end if;                                               
                    -----------------------------  
                    when tst_pend_1 =>
                        req_fifo_rd <= '0'; 
                        if (pending(1) = '1') then
                            srv_state   <= wait_1; 
                            selector    <= x"1";                                    
                        else
                            srv_state   <= tst_pend_2;
                        end if;
                    when wait_1 =>
                        smc_1_rd     <= '1';
                        selector_val <= '1';
                        srv_state    <= out_1; 
                    when out_1 =>
                        smc_1_rd     <= '0';
                        selector_val <= '0';
                        pending(1) <= '0';
                        if (smc_valid_out = '1') then
                            srv_state   <= tst_pend_2;                                     
                        else
                            srv_state   <= out_1;
                        end if;                                               
                    -----------------------------
                     when tst_pend_2 =>
                        req_fifo_rd <= '0'; 
                        if (pending(2) = '1') then
                            srv_state   <= wait_2; 
                            selector    <= x"2";                                    
                        else
                            srv_state   <= tst_pend_3;
                        end if;
                    when wait_2 =>
                        smc_2_rd     <= '1';
                        selector_val <= '1';
                        srv_state    <= out_2; 
                    when out_2 =>
                        smc_2_rd     <= '0';
                        selector_val <= '0';
                        pending(2) <= '0';
                        if (smc_valid_out = '1') then
                            srv_state   <= tst_pend_3;                                     
                        else
                            srv_state   <= out_2;
                        end if;                   
                    -----------------------------
                     when tst_pend_3 =>
                        req_fifo_rd <= '0'; 
                        if (pending(3) = '1') then
                            srv_state   <= wait_3; 
                            selector    <= x"3";                                   
                        else
                            srv_state   <= tst_pend_4;
                        end if;
                    when wait_3 =>
                        smc_3_rd     <= '1';
                        selector_val <= '1';
                        srv_state    <= out_3; 
                    when out_3 =>
                        smc_3_rd     <= '0';
                        selector_val <= '0';
                        pending(3) <= '0';
                        if (smc_valid_out = '1') then
                            srv_state   <= tst_pend_4;                                     
                        else
                            srv_state   <= out_3;
                        end if; 
                    -----------------------------
                    when tst_pend_4 =>
                        req_fifo_rd <= '0'; 
                        if (pending(4) = '1') then
                            srv_state   <= wait_4; 
                            selector    <= x"4";                                   
                        else
                            srv_state   <= tst_pend_5;
                        end if;
                    when wait_4 =>
                        smc_4_rd     <= '1';
                        selector_val <= '1';
                        srv_state    <= out_4; 
                    when out_4 =>
                        smc_4_rd     <= '0';
                        selector_val <= '0';
                        pending(4) <= '0';
                        if (smc_valid_out = '1') then
                            srv_state   <= tst_pend_5;                                     
                        else
                            srv_state   <= out_4;
                        end if; 
 	                -----------------------------
                    when tst_pend_5 =>
                        req_fifo_rd <= '0'; 
                        if (pending(5) = '1') then
                            srv_state   <= wait_5; 
                            selector    <= x"5";                                    
                        else
                            srv_state   <= tst_pend_6;
                        end if;
                    when wait_5 =>
                        smc_5_rd     <= '1';
                        selector_val <= '1';
                        srv_state    <= out_5; 
                    when out_5 =>
                        smc_5_rd     <= '0';
                        selector_val <= '0';
                        pending(5) <= '0';
                        if (smc_valid_out = '1') then
                            srv_state   <= tst_pend_6;                                     
                        else
                            srv_state   <= out_5;
                        end if; 
	                -----------------------------
                    when tst_pend_6 =>
                        req_fifo_rd <= '0'; 
                        if (pending(6) = '1') then
                            srv_state   <= wait_6; 
                            selector    <= x"6";                                    
                        else
                            srv_state   <= tst_pend_7;
                        end if;
                    when wait_6 =>
                        smc_6_rd     <= '1';
                        selector_val <= '1';
                        srv_state    <= out_6; 
                    when out_6 =>
                        smc_6_rd     <= '0';
                        selector_val <= '0';
                        pending(6) <= '0';
                        if (smc_valid_out = '1') then
                            srv_state   <= tst_pend_7;                                     
                        else
                            srv_state   <= out_6;
                        end if; 
	                -----------------------------
                    when tst_pend_7 =>
                        req_fifo_rd <= '0'; 
                        if (pending(7) = '1') then
                            srv_state   <= wait_7; 
                            selector    <= x"7";                                    
                        else
                            srv_state   <= tst_pend_8;
                        end if;
                    when wait_7 =>
                        smc_7_rd     <= '1';
                        selector_val <= '1';
                        srv_state    <= out_7; 
                    when out_7 =>
                        smc_7_rd     <= '0';
                        selector_val <= '0';
                        pending(7) <= '0';
                        if (smc_valid_out = '1') then
                            srv_state   <= tst_pend_8;                                     
                        else
                            srv_state   <= out_7;
                        end if;
	                -----------------------------
                    when tst_pend_8 =>
                        req_fifo_rd <= '0'; 
                        if (pending(8) = '1') then
                            srv_state   <= wait_8; 
                            selector    <= x"8";                                   
                        else
                            srv_state   <= tst_pend_9;
                        end if;
                    when wait_8 =>
                        smc_8_rd     <= '1';
                        selector_val <= '1';
                        srv_state    <= out_8; 
                    when out_8 =>
                        smc_8_rd     <= '0';
                        selector_val <= '0';
                        pending(8) <= '0';
                        if (smc_valid_out = '1') then
                            srv_state   <= tst_pend_9;                                     
                        else
                            srv_state   <= out_8;
                        end if;						
	                -----------------------------
                    when tst_pend_9 =>
                        req_fifo_rd <= '0'; 
                        if (pending(9) = '1') then
                            srv_state   <= wait_9; 
                            selector    <= x"9";                                    
                        else
                            srv_state   <= idle;
                        end if;
                    when wait_9 =>
                        smc_9_rd     <= '1';
                        selector_val <= '1';
                        srv_state    <= out_9; 
                    when out_9 =>
                        smc_9_rd     <= '0';
                        selector_val <= '0';
                        pending(9) <= '0';
                        if (smc_valid_out = '1') then
                            srv_state   <= idle;                                     
                        else
                            srv_state   <= out_9;
                        end if;	                        
                        
                    -----------------------------                                         
                    when recovery =>
                        srv_state       <= idle;
                    -----------------------------                 
                    when others =>                                            
                        srv_state       <= recovery;
                end case;                              
            end if;
        end if;
    end process srv_fsm;
    
    is_idle <= '1' when (srv_state = idle) else '0';
    
     
    selector_mux: process (clk200)
    begin       
       if rising_edge(clk200) then
         if (reset_200 = '1') then    
            SMC_in     <= X"0";
            smc_vld_in <= '0';
            --
            smc_ACC <= (others => '0');         
            smc_EC  <= (others => '1');  
            smc_RM  <= (others => '0');   
         else
            SMC_in <= selector;
            smc_vld_in <= selector_val; 
            --
            if (selector_val = '1') then
                case (selector) is
                    when x"0" =>
                        smc_ACC <= fifo_0_ACC;         
                        smc_EC  <= fifo_0_EC;  
                        smc_RM  <= fifo_0_RM;                    
                    when x"1" =>
                        smc_ACC <= fifo_1_ACC;         
                        smc_EC  <= fifo_1_EC;  
                        smc_RM  <= fifo_1_RM;                    
                    when x"2" =>
                        smc_ACC <= fifo_2_ACC;         
                        smc_EC  <= fifo_2_EC;  
                        smc_RM  <= fifo_2_RM;                    
                    when x"3" =>
                        smc_ACC <= fifo_3_ACC;         
                        smc_EC  <= fifo_3_EC;  
                        smc_RM  <= fifo_3_RM;                    
                    when x"4" =>
                        smc_ACC <= fifo_4_ACC;         
                        smc_EC  <= fifo_4_EC;  
                        smc_RM  <= fifo_4_RM;                    
                    when x"5" =>
                        smc_ACC <= fifo_5_ACC;         
                        smc_EC  <= fifo_5_EC;  
                        smc_RM  <= fifo_5_RM;                    
                    when x"6" =>
                        smc_ACC <= fifo_6_ACC;         
                        smc_EC  <= fifo_6_EC;  
                        smc_RM  <= fifo_6_RM;                    
                    when x"7" =>
                        smc_ACC <= fifo_7_ACC;         
                        smc_EC  <= fifo_7_EC;  
                        smc_RM  <= fifo_7_RM;                    
                    when x"8" =>
                        smc_ACC <= fifo_8_ACC;         
                        smc_EC  <= fifo_8_EC;  
                        smc_RM  <= fifo_8_RM;                    
                    when x"9" =>
                        smc_ACC <= fifo_9_ACC;         
                        smc_EC  <= fifo_9_EC;  
                        smc_RM  <= fifo_9_RM;                    
                    when others =>                                            
                        smc_ACC <= (others => '0');         
                        smc_EC  <= (others => '1');  
                        smc_RM  <= (others => '0');
                end case;                    
            end if;        
         end if;
       end if;
    end process selector_mux;                  
                    

    
    nxt_ec : next_ec_engine
      Port map ( 
            -- clk & reset
            reset       => reset_200, 
            clk200      => clk200,    
            --
            SMC_in      => smc_in,         
            -- Parameters  
            ACC         => smc_ACC,         
            -- Status in
            EC          => smc_EC,
            RM          => smc_RM,              
            vld_in      => smc_vld_in,      
            -- Status out 
            SMC_out     => SMC_out,
            --  
            Next_EC     => smc_Next_EC,
            Next_RM     => smc_Next_RM,           
            valid_out   => smc_valid_out   
        );


    sample_out: process (clk200)
    begin       
       if rising_edge(clk200) then
         if (reset_200 = '1') then
            smc_0_Next_EC <= (others => '1');   smc_0_Next_RM <= (others => '0');   smc_0_ack <= '0';
            smc_1_Next_EC <= (others => '1');   smc_1_Next_RM <= (others => '0');   smc_1_ack <= '0';
            smc_2_Next_EC <= (others => '1');   smc_2_Next_RM <= (others => '0');   smc_2_ack <= '0';
            smc_3_Next_EC <= (others => '1');   smc_3_Next_RM <= (others => '0');   smc_3_ack <= '0';
            smc_4_Next_EC <= (others => '1');   smc_4_Next_RM <= (others => '0');   smc_4_ack <= '0';
            smc_5_Next_EC <= (others => '1');   smc_5_Next_RM <= (others => '0');   smc_5_ack <= '0';
            smc_6_Next_EC <= (others => '1');   smc_6_Next_RM <= (others => '0');   smc_6_ack <= '0';
            smc_7_Next_EC <= (others => '1');   smc_7_Next_RM <= (others => '0');   smc_7_ack <= '0';
            smc_8_Next_EC <= (others => '1');   smc_8_Next_RM <= (others => '0');   smc_8_ack <= '0';
            smc_9_Next_EC <= (others => '1');   smc_9_Next_RM <= (others => '0');   smc_9_ack <= '0';                   
         else
            if (smc_valid_out = '1') then
                case (SMC_out) is
                    when x"0" =>
                        smc_0_Next_EC   <= smc_Next_EC;
                        smc_0_Next_RM   <= smc_Next_RM; 
                        smc_0_ack       <= '1'; 
                    when x"1" =>
                        smc_1_Next_EC   <= smc_Next_EC;
                        smc_1_Next_RM   <= smc_Next_RM; 
                        smc_1_ack       <= '1'; 
                    when x"2" =>
                        smc_2_Next_EC   <= smc_Next_EC;
                        smc_2_Next_RM   <= smc_Next_RM; 
                        smc_2_ack       <= '1'; 
                    when x"3" =>
                        smc_3_Next_EC   <= smc_Next_EC;
                        smc_3_Next_RM   <= smc_Next_RM; 
                        smc_3_ack       <= '1'; 
                    when x"4" =>
                        smc_4_Next_EC   <= smc_Next_EC;
                        smc_4_Next_RM   <= smc_Next_RM; 
                        smc_4_ack       <= '1'; 
                    when x"5" =>
                        smc_5_Next_EC   <= smc_Next_EC;
                        smc_5_Next_RM   <= smc_Next_RM; 
                        smc_5_ack       <= '1'; 
                    when x"6" =>
                        smc_6_Next_EC   <= smc_Next_EC;
                        smc_6_Next_RM   <= smc_Next_RM; 
                        smc_6_ack       <= '1'; 
                    when x"7" =>
                        smc_7_Next_EC   <= smc_Next_EC;
                        smc_7_Next_RM   <= smc_Next_RM; 
                        smc_7_ack       <= '1'; 
                    when x"8" =>
                        smc_8_Next_EC   <= smc_Next_EC;
                        smc_8_Next_RM   <= smc_Next_RM; 
                        smc_8_ack       <= '1'; 
                    when x"9" =>
                        smc_9_Next_EC   <= smc_Next_EC;
                        smc_9_Next_RM   <= smc_Next_RM; 
                        smc_9_ack       <= '1';                     
                    when others =>                                            
                        smc_0_ack <= '0';
                        smc_1_ack <= '0';
                        smc_2_ack <= '0';
                        smc_3_ack <= '0';
                        smc_4_ack <= '0';
                        smc_5_ack <= '0';
                        smc_6_ack <= '0';
                        smc_7_ack <= '0';
                        smc_8_ack <= '0';
                        smc_9_ack <= '0';
                end case;                    
            else
                smc_0_ack <= '0';
                smc_1_ack <= '0';
                smc_2_ack <= '0';
                smc_3_ack <= '0';
                smc_4_ack <= '0';
                smc_5_ack <= '0';
                smc_6_ack <= '0';
                smc_7_ack <= '0';
                smc_8_ack <= '0';
                smc_9_ack <= '0';
            end if;                                
         end if;
       end if;
    end process sample_out;

end rtl;
