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

entity next_ec_engine is
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
end next_ec_engine;

architecture rtl of next_ec_engine is

constant FCLK_int            : natural     := 200_000_000; -- MHz
constant FCLK                : STD_LOGIC_VECTOR(27 DOWNTO 0) := std_logic_vector(TO_UNSIGNED(200_000_000, 28));

constant EC_init_int         : natural     := 2_500_000;
constant ACC_init_int        : natural     := 2_097_151;    -- 2_097_151 is top acceleration

constant Two_exp41_divFclk   : natural     := 10995; -- Not used, only a reminder

signal resetn : std_logic := '0';

------- (EC, ACC) -> NEXT_EC engine --------------------------------------------------

signal EC_init_u22                        : STD_LOGIC_VECTOR(21 DOWNTO 0) := std_logic_vector(TO_UNSIGNED(EC_init_int, 22));

signal new_ec_cnt_dbg                     : std_logic_vector(15 downto 0);

signal EC_vld                             : std_logic := '0';
signal EC_dly_cnt                         : std_logic_vector(7 downto 0);
                                                  
signal ACC_s22                            : STD_LOGIC_VECTOR(21 DOWNTO 0) := std_logic_vector(TO_SIGNED(ACC_init_int, 22));

signal EC_u22                             : STD_LOGIC_VECTOR(21 DOWNTO 0);
signal RM_u16                             : STD_LOGIC_VECTOR(15 DOWNTO 0);

COMPONENT mult_u22_u22  -- lat5
  PORT (
    CLK  : IN STD_LOGIC;
    SCLR : IN STD_LOGIC;
    A    : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
    B    : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
    P    : OUT STD_LOGIC_VECTOR(42 DOWNTO 0)
  );
END COMPONENT;

signal ECxEC_u43                          : STD_LOGIC_VECTOR(42 downto 0);

---------

COMPONENT mult_s22_10995 --lat5
  PORT (
    CLK  : IN STD_LOGIC;
    SCLR : IN STD_LOGIC;    
    A    : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
    P    : OUT STD_LOGIC_VECTOR(35 DOWNTO 0)
  );
END COMPONENT;

signal ACCx2elv41_dvFclk_s36              : STD_LOGIC_VECTOR(35 DOWNTO 0);
signal ACCx10995_s36                      : STD_LOGIC_VECTOR(35 DOWNTO 0);

---------

COMPONENT mult_s36_u43_lat7 --lat 8
  PORT (
    CLK  : IN STD_LOGIC;
    SCLR : IN STD_LOGIC;
    A    : IN STD_LOGIC_VECTOR(35 DOWNTO 0);
    B    : IN STD_LOGIC_VECTOR(42 DOWNTO 0);
    P    : OUT STD_LOGIC_VECTOR(36 DOWNTO 0)   -- yet divided by 2^41
  );
END COMPONENT;

signal ACCx10995xECxEC_dv2exp41_s37      : STD_LOGIC_VECTOR(36 DOWNTO 0); 

---------

COMPONENT add_s36_fclk_lat3
  PORT (
    CLK  : IN STD_LOGIC;
    SCLR : IN STD_LOGIC;
    A    : IN STD_LOGIC_VECTOR(36 DOWNTO 0);    
    S    : OUT STD_LOGIC_VECTOR(36 DOWNTO 0)
  );
END COMPONENT;

signal Fclk_ACCx10995xECxEC_dv2exp41_s37  : STD_LOGIC_VECTOR(36 DOWNTO 0);
signal Fclk_ACCx10995xECxEC_dv2exp41_u36  : STD_LOGIC_VECTOR(35 DOWNTO 0);
---------

COMPONENT mult_u22_fclk  --lat5
  PORT (
    CLK  : IN STD_LOGIC;
    SCLR : IN STD_LOGIC;    
    A    : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
    P    : OUT STD_LOGIC_VECTOR(49 DOWNTO 0)
  );
END COMPONENT;

---------

signal ECxFclk_s50                        : STD_LOGIC_VECTOR(49 DOWNTO 0);
signal Fclk_ACCx10995xECxEC_dv2exp41_s40  : STD_LOGIC_VECTOR(39 DOWNTO 0);

COMPONENT div_s50_s36_lat34
  PORT (
    aclk                    : IN STD_LOGIC;
    aresetn                 : IN STD_LOGIC;
    --
    s_axis_dividend_tvalid  : IN STD_LOGIC;
    s_axis_dividend_tready  : OUT STD_LOGIC;
    s_axis_dividend_tdata   : IN STD_LOGIC_VECTOR(55 DOWNTO 0);
    --
    s_axis_divisor_tvalid   : IN STD_LOGIC;
    s_axis_divisor_tready   : OUT STD_LOGIC;
    s_axis_divisor_tdata    : IN STD_LOGIC_VECTOR(39 DOWNTO 0);
    --
    m_axis_dout_tvalid      : OUT STD_LOGIC;
    m_axis_dout_tdata       : OUT STD_LOGIC_VECTOR(71 DOWNTO 0)
  );
END COMPONENT;

signal ECxFclk_s56                        : STD_LOGIC_VECTOR(55 DOWNTO 0);


signal Next_EC_s72                        : STD_LOGIC_VECTOR(71 DOWNTO 0);
signal Next_EC_u72                        : STD_LOGIC_VECTOR(71 DOWNTO 0);  
signal Next_EC_in_tvalid                  : STD_LOGIC;
signal Next_EC_s72_tvalid                 : STD_LOGIC;
signal Next_EC_tvalid                     : STD_LOGIC;
signal Next_EC_tvalid_dly                 : STD_LOGIC_VECTOR(7 DOWNTO 0); 
signal Next_EC_dividend_tready            : STD_LOGIC; 
signal Next_EC_divisor_tready             : STD_LOGIC;

signal Next_EC_int_u22                     : STD_LOGIC_VECTOR(21 DOWNTO 0);
signal Next_RM_int_u16                     : STD_LOGIC_VECTOR(15 DOWNTO 0);   
signal Next_EC_int_vld                     : STD_LOGIC; 

signal Next_RM_u17                         : STD_LOGIC_VECTOR(16 DOWNTO 0); 
signal Next_RM_u17_vld                     : STD_LOGIC; 

signal Next_EC_u22                         : STD_LOGIC_VECTOR(21 DOWNTO 0);
signal Next_RM_u16                         : STD_LOGIC_VECTOR(15 DOWNTO 0);   
signal Next_EC_vld                         : STD_LOGIC; 

signal Next_EC_aresetn                     : STD_LOGIC := '1'; 

begin


------- (EC, ACC) -> NEXT_EC engine --------------------------------------------------   



    sample_in: process (clk200)
    begin       
       if rising_edge(clk200) then
        if (reset = '1') then
            EC_vld              <= '0';
            ACC_s22 <= (others => '0');
            EC_u22  <= (others => '0');
            RM_u16  <= (others => '0');                
        else
            if (vld_in = '1') then
                EC_vld    <= '1';
                ACC_s22   <= ACC;
                EC_u22    <= EC;
                RM_u16    <= RM;
            else
                EC_vld  <= '0';
            end if;
         end if;                                                                
       end if;
    end process sample_in; 


    Next_EC_tvalid_gen: process (clk200)
    begin       
       if rising_edge(clk200) then
        if (reset = '1') then
            Next_EC_tvalid_dly  <= X"00";
            Next_EC_in_tvalid   <= '0';     
        else
            if (Next_EC_tvalid_dly = 0) then
                Next_EC_in_tvalid   <= '0'; 
                if (EC_vld = '1') then
                   Next_EC_tvalid_dly <= Next_EC_tvalid_dly + '1';
                end if;
            elsif (Next_EC_tvalid_dly = 16) then
                Next_EC_in_tvalid   <= '1';                
                Next_EC_tvalid_dly  <= x"00";
            else
                Next_EC_in_tvalid   <= '0';                                                 
                Next_EC_tvalid_dly  <= Next_EC_tvalid_dly + '1';
            end if;
         end if;                                                                
       end if;
    end process Next_EC_tvalid_gen; 

------- NEXT_EC dividend --------------------------------------------------

    FCLKxEC: mult_u22_fclk  --lat5
      PORT MAP (
        CLK  => clk200,
        SCLR => reset,
        A    => EC_u22,
        P    => ECxFclk_s50
      );
      
------- NEXT_EC divisor --------------------------------------------------

    ECxEC : mult_u22_u22
      PORT MAP(
        CLK  => clk200,
        SCLR => reset,
        A    => EC_u22,
        B    => EC_u22,
        P    => ECxEC_u43
      );
     
    ACCx2elv41_dvFclk: mult_s22_10995 --lat5
      PORT MAP(
        CLK  => clk200,
        SCLR => reset,
        A    => ACC_s22,
        P    => ACCx2elv41_dvFclk_s36
      );

    ACCx10995_s36 <= ACCx2elv41_dvFclk_s36;
    
    ACCx10995xECxEC_dv2exp41: mult_s36_u43_lat7 --lat 8
      PORT MAP(
        CLK  => clk200,
        SCLR => reset,
        A    => ACCx10995_s36,
        B    => ECxEC_u43,
        P    => ACCx10995xECxEC_dv2exp41_s37
      );

    Fclk_ACCx10995xECxEC_dv2exp41: add_s36_fclk_lat3
      PORT MAP(
        CLK  => clk200,
        SCLR => reset,
        A    => ACCx10995xECxEC_dv2exp41_s37,   
        S    => Fclk_ACCx10995xECxEC_dv2exp41_s37
      );

    Fclk_ACCx10995xECxEC_dv2exp41_u36 <= Fclk_ACCx10995xECxEC_dv2exp41_s37(35 downto 0);  --result is positive by definition

------- NEXT_EC division --------------------------------------------------

    resetn <= not(reset);

    -- byte alignment, required by axis. resources are s50/s37 
    ECxFclk_s56                       <= "000000" & ECxFclk_s50;
    Fclk_ACCx10995xECxEC_dv2exp41_s40 <= "000" & Fclk_ACCx10995xECxEC_dv2exp41_s37;
    
    Next_EC_aresetn <= resetn or EC_vld;
    
    NEXT_EC_div: div_s50_s36_lat34
      PORT MAP(
        aclk                    => clk200,
        aresetn                 => resetn,
        --
        s_axis_dividend_tvalid  => Next_EC_in_tvalid,
        s_axis_dividend_tready  => Next_EC_dividend_tready,
        s_axis_dividend_tdata   => ECxFclk_s56,
        --
        s_axis_divisor_tvalid   => Next_EC_in_tvalid,
        s_axis_divisor_tready   => Next_EC_divisor_tready,
        s_axis_divisor_tdata    => Fclk_ACCx10995xECxEC_dv2exp41_s40,
        --
        m_axis_dout_tvalid      => Next_EC_s72_tvalid,
        m_axis_dout_tdata       => Next_EC_s72
      );

    Next_EC_store: process (clk200)
    begin       
       if rising_edge(clk200) then
         if (reset = '1') then
            Next_EC_int_u22         <= EC_init_u22;
            Next_RM_int_u16         <= (others => '0'); 
            Next_EC_int_vld         <= '0';    
         else
            Next_EC_int_vld         <= Next_EC_s72_tvalid;
            if (Next_EC_s72_tvalid = '1') then
                Next_EC_int_u22     <= Next_EC_s72(21+16 downto 16);    -- integer part
                Next_RM_int_u16     <= Next_EC_s72(15 downto 0);        -- reminder part
            end if;
         end if;                                                                
       end if;
    end process Next_EC_store;

    cumulated_RM_gen: process (clk200)
    begin       
       if rising_edge(clk200) then
         if (reset = '1') then
            Next_RM_u17_vld  <= '0';         
            Next_RM_u17      <= (others => '0'); 
         else
            Next_RM_u17_vld  <= Next_EC_int_vld;         
            Next_RM_u17      <= ('0' & Next_RM_int_u16) + ('0' & RM_u16);   -- calculate cumulated_reminder
         end if;        
       end if;
    end process cumulated_RM_gen;
    
    Next_EC_RM_gen: process (clk200)
    begin       
       if rising_edge(clk200) then
         if (reset = '1') then
            Next_EC_vld      <= '0';          
            Next_EC_u22      <= EC_init_u22;
            Next_RM_u16      <= (others => '0'); 
         else
            Next_EC_vld      <= Next_RM_u17_vld;      
            Next_EC_u22      <= Next_EC_int_u22 + ('0' & Next_RM_u17(16));   -- add int(cumulated_reminder)
            Next_RM_u16      <= Next_RM_u17(15 downto 0);                    -- next_cumulated_reminder = cumulated_reminder - int(cumulated_reminder)                      
         end if;        
       end if;
    end process Next_EC_RM_gen;    
    
    sample_out: process (clk200)
    begin       
       if rising_edge(clk200) then
         if (reset = '1') then
            valid_out   <= '0';                     
            Next_EC     <= EC_init_u22;
            Next_RM     <= (others => '0');
            smc_out     <= X"0";                    
         else
            valid_out   <= Next_EC_vld;             
            Next_EC     <= Next_EC_u22;
            Next_RM     <= Next_RM_u16;
            if (vld_in = '1') then            
                smc_out     <= smc_in;
            end if;                                  
         end if;
       end if;
    end process sample_out;		

end rtl;
