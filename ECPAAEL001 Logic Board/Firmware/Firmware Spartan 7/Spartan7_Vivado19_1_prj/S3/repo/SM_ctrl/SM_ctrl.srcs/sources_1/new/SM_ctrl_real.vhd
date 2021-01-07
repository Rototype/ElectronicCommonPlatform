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

library std;
use std.textio.all;

entity SM_ctrl_real is
  Port ( 
        aclk        : in    std_logic;
        aresetn     : in    std_logic;
        rst_200_out : out   std_logic;
		--
        clk200      : in    std_logic;                      -- synchronous respect to aclk
        -- microprocessor interface     		
		tgt_ACC		: in	std_logic_vector(23 downto 0);  -- unsigned
		tgt_EC		: in	std_logic_vector(21 downto 0);  -- unsigned  
		dir			: in	std_logic;                      -- 0 = clockwise, 1 = counterclockwise; 
		ena_load    : in	std_logic_vector(1 downto 0);   -- "0x" = free; "10" = 100%, "11" = 50%  down to engine control (port_ena, port_load)
		res			: in	std_logic_vector(1 downto 0);   -- port M2p M1p  
		init_EC	    : in	std_logic_vector(21 downto 0);  -- (step-in speed) unsigned
		cnt_o		: in	std_logic_vector(31 downto 0);  -- tgt_cnt
		cnt_i		: out	std_logic_vector(31 downto 0);  -- curr_cnt
		--
		ramp_up		: in	std_logic;                      -- from still to tgt_EC with tgt_ACC; (test if curr_EC < tgt_EC)
		ramp_dwn	: in	std_logic;                      -- from curr_EC to still with tgt_ACC (test if curr_EC > init_EC) 
		spd_chg		: in	std_logic;                      -- from curr_EC to tgt_EC with tgt_ACC (verify if ACCelerate or f_decel)
		--
		slw_stps	: in	std_logic;                      -- execution of tgt_cnt steps at init_EC
		--
		fst_stps	: in	std_logic;            
		running		: out	std_logic_vector(1 downto 0);
		--
		irq_mask	: in	std_logic;
		irq_in		: out	std_logic;
		irq_clr		: in	std_logic;
		vld_in		: out	std_logic;
		vld_out		: in	std_logic;
		-- Stepper motor controller chip interface
		port_ref	: out	std_logic;
		port_clk    : out	std_logic;
		port_ena	: out	std_logic;
		port_dir	: out	std_logic;
		port_m2P	: out	std_logic;
		port_m1P	: out	std_logic;
		-- Stepper Motor server interface:
        smc_ACC    : out    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed        
        -- Status in       
        smc_EC      : out    STD_LOGIC_VECTOR(21 DOWNTO 0);  -- EndCount, unsigned
        smc_RM      : out    STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned   
        smc_req     : out	   std_logic;
        -- Status out
        smc_Next_EC : in     STD_LOGIC_VECTOR(21 DOWNTO 0);   -- Next EndCount  unsigned
        smc_Next_RM : in     STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Next ReMainder unsigned
        smc_ack     : in     STD_LOGIC 	      				   
    );
end SM_ctrl_real;

architecture rtl of SM_ctrl_real is

-- 2_097_151 is top acceleration
-- constant Pulse_len_greater_tW  : natural   := 50;      -- debug only
-- constant Pulse_len_greater_tW  : natural   := 2_200;      -- tW is the absolute minimum pulse len admitted by SM controller (Cosc = 100pF).
constant Pulse_len_greater_tW  : natural   := 5_000;      -- tW is the minumum pulse len admitted by SM controller @ Cosc = 220pF.
------- reset tree resampling  -------------------------------------------------------
signal aresetn_loc                        : std_logic := '1'; 
signal resetn                             : std_logic := '0';    
signal reset                              : std_logic := '1'; 

signal aresetn_loc_200  : std_logic := '1'; 
signal resetn_200       : std_logic := '0';    
signal reset_200        : std_logic := '1';

signal tgt_ACC_loc		: std_logic_vector(23 downto 0);  -- unsigned
signal dir_loc			: std_logic;                      -- 0 = clockwise, 1 = counterclockwise; 
signal ena_load_loc     : std_logic_vector(1 downto 0);   -- "0x" = free; "10" = 100%, "11" = 50%  down to engine control (port_ena, port_load)
signal res_loc			: std_logic_vector(1 downto 0);   -- port M2p M1p  

------- (EC, ACC) -> NEXT_EC engine --------------------------------------------------

signal EC_cnt            : std_logic_vector(21 downto 0) := std_logic_vector(TO_UNSIGNED(1, 22));
signal Next_EC_loc       : STD_LOGIC_VECTOR(21 DOWNTO 0) := (others => '0');
signal Next_RM_loc       : STD_LOGIC_VECTOR(15 DOWNTO 0) := (others => '0');

signal pulse_cnt         : std_logic_vector(15 downto 0) := (others => '0');        
signal clock_loc         : std_logic := '0';

signal steps_ena         : std_logic := '0';
signal steps             : std_logic_vector(31 downto 0) := (others => '0');
signal acc_flg           : std_logic := '0';
signal acc_steps         : std_logic_vector(31 downto 0) := (others => '0');
signal dec_steps         : std_logic_vector(31 downto 0) := (others => '0');
signal steps_vld         : std_logic := '0';

----------

signal end_trj_reg		 : std_logic_vector(31 downto 0);
signal end_trj_trig_msb  : std_logic := '0';
signal end_trj_trig_lsb  : std_logic := '0';
signal end_trj_trig      : std_logic := '0';
signal end_trj_trig_d1   : std_logic := '0';

signal mid_trj_reg		 : std_logic_vector(31 downto 0);
signal mid_trj_trig_msb  : std_logic := '0';
signal mid_trj_trig_lsb  : std_logic := '0';
signal mid_trj_trig      : std_logic := '0';

signal dec_trj_trig_msb  : std_logic := '0';
signal dec_trj_trig_lsb  : std_logic := '0';
signal dec_trj_trig      : std_logic := '0';

signal EC_tgt_acc_trig   : std_logic;
signal EC_tgt_dec_trig   : std_logic;
signal init_EC_trig      : std_logic;

signal fst_stps_d1       : std_logic := '0';
signal fst_stps_d2       : std_logic := '0';
signal fst_stps_trig     : std_logic := '0';

signal slw_stps_d1       : std_logic := '0';
signal slw_stps_d2       : std_logic := '0';
signal slw_stps_trig     : std_logic := '0';

signal ramp_up_d1       : std_logic := '0';
signal ramp_up_d2       : std_logic := '0';
signal ramp_up_trig     : std_logic := '0';

signal ramp_dwn_d1       : std_logic := '0';
signal ramp_dwn_d2       : std_logic := '0';
signal ramp_dwn_trig     : std_logic := '0';

signal spd_chg_d1        : std_logic := '0';
signal spd_chg_d2        : std_logic := '0';
signal spd_chg_trig      : std_logic := '0';

----------
signal stp_cnt_vld_in    : std_logic;
signal stp_cnt           : std_logic_vector(31 downto 0);
signal stp_cnt_lsb       : std_logic_vector(15 downto 0);
signal stp_cnt_vld       : std_logic;

----------
type state_type is (still,
                    -- Fast position control states
                    f_stp_in,   f_stp_in_w,
                    f_accel,    f_accel_w,
                    f_steady,   f_steady_w,
                    f_steady_o, f_steady_o_w,
                    f_last,     f_last_w,
                    f_decel,    f_decel_w,
                    f_stp_out,  f_stp_out_w,
                    -- Slow position control states
                    s_stp_in,   s_stp_in_w,
                    s_stp_out,  s_stp_out_w,
                    -- Velocity control states
                    v_stp_in,   v_stp_in_w,
                    v_accel,    v_accel_w,
                    v_accel_l,  v_accel_l_w,
                    v_steady,   v_steady_w,
                    v_steady_l, v_steady_l_w,
                    v_decel,    v_decel_w,
                    v_decel_l,  v_decel_l_w,
                    v_stop,     v_stop_w, 
                    v_stp_out,  v_stp_out_w,                   
                    -- Recovery state
                    recovery);
                    
signal sm_state          : state_type;
signal triangle          : std_logic := '0';  --1 triangle, 0=trapezoid
signal sm_start          : std_logic := '0';
signal sm_stop           : std_logic := '0';

signal sm_run_stp        : std_logic := '0';

signal sm_vld            : std_logic := '0';
signal sm_nxt_EC_loc     : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- Next EndCount  unsigned, local
signal sm_nxt_RM_loc     : STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Next ReMainder unsigned, local
signal sm_ACC_pos        : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed
signal sm_ACC_neg        : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed
-- these signal will became IO to the stepper algorithm server
signal sm_ACC            : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- signed     
signal sm_EC             : std_logic_vector(21 downto 0);  -- EndCount, unsigned
signal sm_RM             : STD_LOGIC_VECTOR(15 DOWNTO 0);  -- ReMainder unsigned 
signal sm_nxt_EC         : STD_LOGIC_VECTOR(21 DOWNTO 0);  -- Next EndCount  unsigned
signal sm_nxt_RM         : STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Next ReMainder unsigned 
signal sm_req            : std_logic := '0';
signal sm_pend           : std_logic := '0';
signal sm_ack            : std_logic := '0';

signal irq_loc           : std_logic := '0';
signal irq_loc_d1        : std_logic := '0';
signal irq_loc_d2        : std_logic := '0';

constant MAX_EC          : std_logic_vector(21 downto 0) := std_logic_vector(to_unsigned(2_500_000, 22));  -- Max Endcount, Min speed;

signal vld_out_loc		 : std_logic :='0';
signal init_EC_loc	     : std_logic_vector(21 downto 0) := MAX_EC;
signal tgt_EC_loc0		 : std_logic_vector(21 downto 0) := MAX_EC;
signal cnt_o_loc		 : std_logic_vector(31 downto 0) := (others => '0');  -- tgt_cnt
signal ramp_up_loc		 : std_logic :='0';
signal ramp_dwn_loc		 : std_logic :='0';
signal spd_chg_loc		 : std_logic :='0';
signal slw_stps_loc		 : std_logic :='0';
signal fst_stps_loc		 : std_logic :='0';
signal irq_mask_loc		 : std_logic :='0';
signal irq_clr_loc		 : std_logic :='0';

signal tgt_EC_loc		 : std_logic_vector(21 downto 0) := MAX_EC;
signal ACC_sign_flg      : std_logic := '0';
signal ACC_zero_flg      : std_logic := '1';

signal steady_spd		 : std_logic;   -- 1 when speed is steady             

signal running_loc       : std_logic_vector(1 downto 0);
signal steps_loc         : std_logic_vector(31 downto 0);




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
    
    rst_200_out <= reset_200;
    
------- (EC, RM, ACC) -> NEXT_EC, NEXT_RM server --------------------------------------------------  

    smc_ACC     <= sm_ACC;  -- signed        
    -- Status in       
    smc_EC      <= sm_EC;  -- EndCount, unsigned
    smc_RM      <= sm_RM;  -- ReMainder unsigned   
    smc_req     <= sm_req;
    -- Status out
    sm_nxt_EC     <= smc_Next_EC;  -- Next EndCount  unsigned
    sm_nxt_RM     <= smc_Next_RM;  -- Next ReMainder unsigned
    sm_ack        <= smc_ack; 

-------------------------------------------------------------------------------------
 
    LOAD_register: process (aclk)    
    begin       
       if rising_edge(aclk) then
         if (reset = '1') then
            vld_out_loc     <= '0';
            
			tgt_EC_loc0     <= std_logic_vector(to_unsigned(2_500_000, 22));  -- Max Endcount, Min speed;
			init_EC_loc     <= std_logic_vector(to_unsigned(2_500_000, 22));  -- Max Endcount, Min speed;
			tgt_ACC_loc 	<= (others => '0');
            dir_loc			<= '0';
            ena_load_loc 	<= (others => '0');
            res_loc 	    <= (others => '0');
            cnt_o_loc       <= (others => '0');
            ramp_up_loc		<= '0';
            ramp_dwn_loc	<= '0';
            spd_chg_loc		<= '0';
            slw_stps_loc	<= '0';
            fst_stps_loc	<= '0';
            irq_mask_loc	<= '0';
            irq_clr_loc		<= '0';
		 else
		    vld_out_loc <= vld_out;
		    
		    if (vld_out_loc = '1') then
		      tgt_EC_loc0     <= tgt_EC;
			  init_EC_loc     <= init_EC;
			  tgt_ACC_loc 	  <= tgt_ACC;
              dir_loc	      <= dir;
              ena_load_loc 	  <= ena_load;
              res_loc 	      <= res;
              cnt_o_loc       <= cnt_o;
              ramp_up_loc     <= ramp_up;
              ramp_dwn_loc	  <= ramp_dwn;
              spd_chg_loc	  <= spd_chg;
              slw_stps_loc	  <= slw_stps;
              fst_stps_loc	  <= fst_stps;
              irq_mask_loc	  <= irq_mask;
              irq_clr_loc	  <= irq_clr;              		  			  
			end if;
					 
         end if;                                                                
       end if;
    end process LOAD_register; 
 
 
    Step_registers: process (aclk)    
    begin       
       if rising_edge(aclk) then
         if (reset = '1') then
            end_trj_reg     <= (others => '0');
            mid_trj_reg     <= (others => '0');
         else
		    if (vld_out = '1') then         
                end_trj_reg <= cnt_o_loc - x"1";
                mid_trj_reg <= ('0' & cnt_o_loc(31 downto 1)) - x"2";  -- even
            end if;
         end if;                                                                
       end if;
    end process Step_registers; 
      
 
    end_trj_trigger: process (clk200)
    begin       
       if rising_edge(clk200) then
        if (reset_200 = '1') then
            end_trj_trig_msb  <= '0';
            end_trj_trig_lsb  <= '0';
            end_trj_trig      <= '0';
            end_trj_trig_d1   <= '0';   
        else
            if (sm_run_stp = '1') then
                if (sm_start = '1') then
                    if (steps(15 downto 0) =  end_trj_reg(15 downto 0)) then
                        end_trj_trig_lsb <= '1';
                    else
                        end_trj_trig_lsb <= '0';                
                    end if;
                    if (steps(31 downto 16) =  end_trj_reg(31 downto 16)) then
                        end_trj_trig_msb <= '1';
                    else
                        end_trj_trig_msb <= '0';                
                    end if;                
                end if;
                end_trj_trig <= end_trj_trig_msb and end_trj_trig_lsb;
                if (sm_start = '1') then
                    end_trj_trig_d1 <= end_trj_trig;
                end if; 
            else
                end_trj_trig_msb  <= '0';
                end_trj_trig_lsb  <= '0';
                end_trj_trig      <= '0'; 
                end_trj_trig_d1   <= '0'; 
            end if; 
        end if;                                                                
       end if;
    end process end_trj_trigger; 

    mid_trj_trigger: process (clk200)
    begin       
       if rising_edge(clk200) then
        if (reset_200 = '1') then
            mid_trj_trig_msb  <= '0';
            mid_trj_trig_lsb  <= '0';
            mid_trj_trig      <= '0';   
        else
            if (sm_run_stp = '1') then
                if (sm_start = '1') then
                    if (steps(15 downto 0) =  mid_trj_reg(15 downto 0)) then
                        mid_trj_trig_lsb <= '1';
                    else
                        mid_trj_trig_lsb <= '0';                
                    end if;
                    if (steps(31 downto 16) =  mid_trj_reg(31 downto 16)) then
                        mid_trj_trig_msb <= '1';
                    else
                        mid_trj_trig_msb <= '0';                
                    end if;                
                end if;
                mid_trj_trig <= mid_trj_trig_msb and mid_trj_trig_lsb;
            else
                mid_trj_trig_msb  <= '0';
                mid_trj_trig_lsb  <= '0';
                mid_trj_trig      <= '0';   
            end if; 
        end if;                                                                
       end if;
    end process mid_trj_trigger; 

    dec_trj_trigger: process (clk200)
    begin       
       if rising_edge(clk200) then
        if (reset_200 = '1') then
            dec_trj_trig_msb  <= '0';
            dec_trj_trig_lsb  <= '0';
            dec_trj_trig      <= '0';   
        else
            if (sm_run_stp = '1') then
                if (sm_start = '1') then
                    if (steps(15 downto 0) =  dec_steps(15 downto 0)) then
                        dec_trj_trig_lsb <= '1';
                    else
                        dec_trj_trig_lsb <= '0';                
                    end if;
                    if (steps(31 downto 16) =  dec_steps(31 downto 16)) then
                        dec_trj_trig_msb <= '1';
                    else
                        dec_trj_trig_msb <= '0';                
                    end if;                
                end if;
                dec_trj_trig <= dec_trj_trig_msb and dec_trj_trig_lsb;
            else
                dec_trj_trig_msb  <= '0';
                dec_trj_trig_lsb  <= '0';
                dec_trj_trig      <= '0';   
            end if; 
        end if;                                                                
       end if;
    end process dec_trj_trigger; 

    EC_tgt_speed_trigger: process (clk200)
    begin       
       if rising_edge(clk200) then
        if (reset_200 = '1') then
            tgt_EC_loc		     <= MAX_EC;
            -- used in fast control and in velocity control
            EC_tgt_acc_trig      <= '0';
            EC_tgt_dec_trig      <= '0';
            -- used in velocity control on spd_chg command
            ACC_sign_flg         <= '0';
            ACC_zero_flg         <= '1';    
        else       
            if (fst_stps_trig = '1') or
               (slw_stps_trig = '1') or
               (ramp_up_trig = '1') or ((spd_chg_d1 = '1') and (spd_chg_d2 = '0')) then
               tgt_EC_loc <= tgt_EC_loc0;
            end if;
        
            if (sm_run_stp = '1') then                             
                if (sm_start = '1') then
                    -- EC have to be considered unsigned.
                    if    (unsigned(sm_EC)  >  unsigned(tgt_EC_loc)) then  -- Current speed is lower respect to target speed
                        -- used to detect the lower speed bond
                        EC_tgt_dec_trig <= '1';
                        EC_tgt_acc_trig <= '0';
                        -- used to detect the acceleration to be applied on spd_chg command
                        ACC_sign_flg    <= '0';  -- positive
                        ACC_zero_flg    <= '0';  -- not zero 
                    elsif (unsigned(sm_EC)  <  unsigned(tgt_EC_loc)) then  -- Current speed is higher respect to target speed
                        -- used to detect the upper speed bond
                        EC_tgt_dec_trig <= '0';
                        EC_tgt_acc_trig <= '1';
                        -- used to detect the acceleration to be applied on spd_chg command
                        ACC_sign_flg    <= '1';  -- negative
                        ACC_zero_flg    <= '0';  -- not zero                                            
                    elsif (unsigned(sm_EC)  =  unsigned(tgt_EC_loc)) then      -- Current speed is equal to target speed 
                        -- used to detect if the speed bond is hit 
                        EC_tgt_dec_trig <= '0';
                        EC_tgt_acc_trig <= '0';
                        -- used to detect the acceleration to be applied on spd_chg command
                        ACC_sign_flg    <= '0';  -- positive (2'compl)
                        ACC_zero_flg    <= '1';  -- zero   
                    end if;      
                end if;
            else
                EC_tgt_acc_trig      <= '0';
                EC_tgt_dec_trig      <= '0';
                --
                ACC_sign_flg         <= '0';
                ACC_zero_flg         <= '1';               
            end if;                
        end if;                                                                
       end if;
    end process EC_tgt_speed_trigger;
    
    init_EC_trigger: process (clk200)
    begin       
       if rising_edge(clk200) then
         if (reset_200 = '1') then
            init_EC_trig      <= '0';   
         else
            if (sm_run_stp = '1') then
                if (sm_start = '1') then
                    if (sm_EC  >  init_ec_loc) then
                        init_EC_trig <= '1';
                    else
                        init_EC_trig <= '0';                
                    end if;           
                end if;
            else
                init_EC_trig      <= '0';
            end if;                
         end if;                                                                
       end if;
    end process init_EC_trigger;  
    
    fst_stps_trigger: process (clk200)
    begin       
       if rising_edge(clk200) then
         if (reset_200 = '1') then
            fst_stps_d1       <= '0';
            fst_stps_d2       <= '0';
            fst_stps_trig     <= '0';   
         else
            fst_stps_d1       <= fst_stps_loc;   
            fst_stps_d2       <= fst_stps_d1;
            if (fst_stps_d1 = '1') and (fst_stps_d2 = '0') then
                fst_stps_trig     <= '1';
            else
                fst_stps_trig     <= '0';
            end if;                             
         end if;                                                                
       end if;
    end process fst_stps_trigger;  
    
    slw_stps_trigger: process (clk200)
    begin       
       if rising_edge(clk200) then
         if (reset_200 = '1') then
            slw_stps_d1       <= '0';
            slw_stps_d2       <= '0';
            slw_stps_trig     <= '0';   
         else
            slw_stps_d1       <= slw_stps_loc;   
            slw_stps_d2       <= slw_stps_d1;
            if (slw_stps_d1 = '1') and (slw_stps_d2 = '0') then
                slw_stps_trig     <= '1';
            else
                slw_stps_trig     <= '0';
            end if;                             
         end if;                                                                
       end if;
    end process slw_stps_trigger;
    
    ramp_up_trigger: process (clk200)
    begin       
       if rising_edge(clk200) then
         if (reset_200 = '1') then
            ramp_up_d1       <= '0';
            ramp_up_d2       <= '0';
            ramp_up_trig     <= '0';   
         else
            ramp_up_d1       <= ramp_up_loc;   
            ramp_up_d2       <= ramp_up_d1;
            if (ramp_up_d1 = '1') and (ramp_up_d2 = '0') then
                ramp_up_trig     <= '1';
            else
                ramp_up_trig     <= '0';
            end if;                             
         end if;                                                                
       end if;
    end process ramp_up_trigger; 
      
    ramp_dwn_trigger: process (clk200)
    begin       
       if rising_edge(clk200) then
         if (reset_200 = '1') then
            ramp_dwn_d1       <= '0';
            ramp_dwn_d2       <= '0';
            ramp_dwn_trig     <= '0';   
         else
            ramp_dwn_d1       <= ramp_dwn_loc;   
            ramp_dwn_d2       <= ramp_dwn_d1;
            if (ramp_dwn_d1 = '1') and (ramp_dwn_d2 = '0') then
                ramp_dwn_trig <= '1';
            elsif (sm_start = '1') and (ramp_dwn_trig = '1') then 
                ramp_dwn_trig <= '0';
            end if;                            
         end if;                                                                
       end if;
    end process ramp_dwn_trigger; 
      
    spd_chg_trigger: process (clk200)
    begin       
       if rising_edge(clk200) then
         if (reset_200 = '1') then
            spd_chg_d1       <= '0';
            spd_chg_d2       <= '0';
            spd_chg_trig     <= '0';   
         else
            spd_chg_d1       <= spd_chg_loc;   
            spd_chg_d2       <= spd_chg_d1;
            if (spd_chg_d1 = '1') and (spd_chg_d2 = '0') then
                spd_chg_trig <= '1';
            elsif (sm_start = '1') and (spd_chg_trig = '1') then 
                spd_chg_trig <= '0';
            end if;                             
         end if;                                                                
       end if;
    end process spd_chg_trigger; 
    
            
  -----------------------------------------------------------------------------
 
    sm_fsm: process (clk200)
    begin       
        if rising_edge(clk200) then
            if (reset_200 = '1') then        
                sm_state   <= still;
                triangle   <= '0';  --1 triangle, 0=trapezoid
                steps      <= (others => '0');
                acc_flg    <= '0';
                acc_steps  <= (others => '0');
                dec_steps  <= (others => '0');                
                sm_start   <= '0';
                sm_stop    <= '0';
                sm_ACC     <= (others => '0');
                EC_cnt     <= std_logic_vector(TO_UNSIGNED(1, 22));
                pulse_cnt  <= (others => '0'); 
                clock_loc  <= '0';     
                --     
                steps_vld  <= '0';
                sm_run_stp <= '0';
                steady_spd <= '0';
                irq_loc    <= '0';  
                
                -- these signals will became outputs
                sm_req     <= '0';
                sm_EC      <= (others => '0');
                sm_RM      <= (others => '0');
                -- these signals will became inputs qualified by "sm_ack"          
                sm_nxt_EC_loc  <= (others => '1');
                sm_nxt_RM_loc  <= (others => '0');
                
                sm_ACC_pos  <= (others => '0');
                sm_ACC_neg  <= (others => '0');
                
            else
            
                sm_ACC_pos  <= tgt_ACC_loc(21 downto 0);
                sm_ACC_neg  <= not(sm_ACC_pos) + X"1";
            
                -- trapezoid vs triangle detector
                if (sm_run_stp = '1') then
                    if (mid_trj_trig = '1') and (sm_stop = '1') then
                        if (EC_tgt_acc_trig = '1') then
                            triangle   <= '0';  -- at midway the steady state has been reached, so trapezoid                                
                        else
                            triangle   <= '1';  -- at midway the steady state has NOT been reached, so triangle
                        end if;
                    end if;  
                end if;
                
                 -- steps counter
                if (sm_state = f_accel_w) then
                    acc_flg <= '1';
                else
                    acc_flg <= '0';
                end if;     
                if (fst_stps_trig = '1') or (slw_stps_trig = '1') or (ramp_up_trig = '1') then
                    steps      <= std_logic_vector(TO_UNSIGNED(1, 32));
                elsif (sm_run_stp = '1') then     
                    if (sm_stop = '1') then
                        if (EC_tgt_acc_trig = '1') and (acc_flg = '1') then
                            acc_steps <= steps;
                            dec_steps <= end_trj_reg - steps;
                        end if;
                        if (end_trj_trig_d1 = '0') then
                            steps      <= steps + X"1";
                        end if;                  
                    end if;
                else
                    -- steps     <= (others => '0');
                    acc_steps <= (others => '0');
                    dec_steps <= (others => '0');              
                end if;

                -- PWM counter
                if (sm_run_stp = '1') then 
                    if (sm_start = '1') then
                        EC_cnt <= std_logic_vector(TO_UNSIGNED(4, 22));
                        sm_stop    <= '0';
                    elsif (EC_cnt = sm_EC) then  -- up to Endcount
--                    elsif (EC_cnt = 100) then  -- Only for simulation!!!                  
                        EC_cnt <= std_logic_vector(TO_UNSIGNED(1, 22));
                        sm_stop    <= '1';
                    else
                        EC_cnt <= EC_cnt + X"1";
                        sm_stop    <= '0';
                    end if;
                else
                    EC_cnt <= std_logic_vector(TO_UNSIGNED(1, 22));
                    sm_stop    <= '0';
                end if;
                
                -- clock pulse width counter
                if (pulse_cnt = 0) then
                    if (sm_start = '1') then
                        pulse_cnt <= pulse_cnt + "01";
                        clock_loc <= '1';
                    else
                        pulse_cnt <= (others => '0');
                        clock_loc <= '0';
                    end if;
                elsif (pulse_cnt = Pulse_len_greater_tW) then
                    pulse_cnt <= (others => '0');
                    clock_loc <= '0';
                else
                    pulse_cnt <= pulse_cnt + "01";
                    clock_loc <= '1';
                end if;                
                 
                -- Next_EC qualifier.
                if (sm_run_stp = '1') then
                    if (sm_ack = '1') then
                        sm_nxt_EC_loc  <= sm_nxt_EC;
                        sm_nxt_RM_loc  <= sm_nxt_RM;
                    end if;        
                else
                    sm_nxt_EC_loc  <= (others => '1');
                    sm_nxt_RM_loc  <= (others => '0');
                end if;                              
                                                        
                -- Stepper Motor FSM
                case (sm_state) is
                    -- In "still" state the Stepper motot clock generator is off.
                    -- the applied torque depends on SM0_Ena_Load(1:0) bits
                    when still =>
                        sm_start <= '0';
                        triangle   <= '0';  --1 triangle, 0=trapezoid
                        sm_ACC     <= (others => '0');                        
                        sm_EC      <= (others => '0');
                        sm_RM      <= (others => '0');
                        steady_spd <= '0';
                        irq_loc    <= '0';    
                        if (slw_stps_trig = '1') then
                            sm_state   <= s_stp_in;
                            sm_run_stp <= '1';
                        elsif (fst_stps_trig = '1') then
                            sm_state <= f_stp_in;
                            sm_run_stp <= '1';
                        elsif (ramp_up_trig = '1') then
                            sm_state <= v_stp_in;
                            sm_run_stp <= '1';                                                     
                        else
                            sm_state <= still;
                            sm_run_stp <= '0';                          
                        end if;
                        
                    -- FAST positioning control states------------------------                                                       
                    when f_stp_in =>
                        sm_state <= f_stp_in_w;
                        sm_start <= '1';
                        sm_req   <= '1';
                        sm_ACC   <= sm_ACC_pos;                        
                        sm_EC    <= init_ec_loc;         -- step_in
                        sm_RM    <= (others => '0');                           
                    when f_stp_in_w =>
                        sm_start <= '0';
                        sm_req   <= '0';
                        if (sm_stop = '1') then                                                                                           
                            sm_state <= f_accel;
                        else
                            sm_state <= f_stp_in_w;
                        end if;
                                                                        
                    when f_accel =>
                        sm_state <= f_accel_w;
                        sm_start <= '1';
                        sm_req   <= '1';                                                  
                        sm_ACC   <= sm_ACC_pos;                        
                        sm_EC    <= sm_nxt_EC_loc;
                        sm_RM    <= sm_nxt_RM_loc;                                                                            
                   when f_accel_w =>
                        sm_start <= '0';
                        sm_req   <= '0';                        
                        if (sm_stop = '1') then                                                                                                                                    
                            if ((triangle = '1') or (EC_tgt_acc_trig = '1')) then 
                                if (cnt_o_loc(0) = '0') then  -- even steps
                                    sm_state <= f_steady;
                                else
                                    sm_state <= f_steady_o; -- odd steps                                   
                                end if;
                            else
                                sm_state <= f_accel;
                            end if;                            
                        else
                            sm_state <= f_accel_w;                        
                        end if;
 
                    when f_steady_o =>                    -- extra steady state, used when cnt_o is odd.
                        steady_spd <= '1';
                        sm_state <= f_steady_o_w;
                        sm_start <= '1';
                        sm_req   <= '0';                         
                        sm_ACC   <= (others => '0');                        
                        sm_EC    <= sm_EC;
                        sm_RM    <= (others => '0');                                                     
                    when f_steady_o_w =>
                        sm_start <= '0';
                        sm_req   <= '0'; 
                        if (sm_stop = '1') then 
                            sm_state <= f_steady;                                
                        else
                            sm_state <= f_steady_o_w;   
                        end if;
                                                
                    when f_steady =>
                        steady_spd <= '1';                    
                        sm_state <= f_steady_w;
                        sm_start <= '1';
                        sm_req   <= '0';                         
                        sm_ACC   <= (others => '0');                        
                        sm_EC    <= sm_EC;
                        sm_RM    <= (others => '0');                                                     
                    when f_steady_w =>
                        sm_start <= '0';
                        sm_req   <= '0'; 
                        if (sm_stop = '1') then 
                            if ((triangle = '1') or (dec_trj_trig = '1')) then                                
                                sm_state <= f_last;
                            else
                                sm_state <= f_steady;
                            end if;                                
                        else
                            sm_state <= f_steady_w;   
                        end if;
 
                     when f_last =>
                        steady_spd <= '0';                     
                        sm_state <= f_last_w;
                        sm_start <= '1';
                        sm_req   <= '1';                         
                        sm_ACC   <= sm_ACC_neg;                        
                        sm_EC    <= sm_EC;
                        sm_RM    <= (others => '0');                                                     
                    when f_last_w =>
                        sm_start <= '0';
                        sm_req   <= '0';
                        sm_req   <= '0'; 
                        if (sm_stop = '1') then                            
                            sm_state <= f_decel;
                        else
                            sm_state <= f_last_w;   
                        end if;
                                                
                    when f_decel => 
                        sm_state <= f_decel_w;
                        sm_start <= '1';
                        sm_req   <= '1';                                                  
                        sm_ACC   <= sm_ACC_neg;                        
                        sm_EC    <= sm_nxt_EC_loc;
                        sm_RM    <= sm_nxt_RM_loc;                                                     
                    when f_decel_w =>
                        sm_start <= '0';
                        sm_req   <= '0';                        
                        if (sm_stop = '1') then 
                            if (end_trj_trig = '1') then                                                                
                                sm_state <= f_stp_out;
                            else
                                sm_state <= f_decel;
                            end if;
                        else
                            sm_state <= f_decel_w;   
                        end if;
                                               
                    when f_stp_out =>
                        irq_loc  <= '1';
                        sm_state <= f_stp_out_w;
                        sm_start <= '1';
                        sm_req   <= '0';                                                                     
                        sm_ACC   <= (others => '0');                      
                        sm_EC    <= init_ec_loc;         -- f_stp_out
                        sm_RM    <= (others => '0');                         
                    when f_stp_out_w => 
                        sm_start <= '0';
                        sm_req   <= '0';                                                                   
                        if (sm_stop = '1') then                                                                 
                            sm_state    <= still;
                            sm_run_stp  <= '0';
                            irq_loc     <= '0';                            
                        else
                            sm_state    <= f_stp_out_w;
                            sm_run_stp  <= '1';    
                        end if;
                        
                    -- SLOW positioning control states ------------------------
                    when s_stp_in =>
                        steady_spd <= '1';
                        sm_state <= s_stp_in_w;
                        sm_start <= '1';
                        sm_req   <= '0';                                                                     
                        sm_ACC   <= (others => '0');                      
                        sm_EC    <= init_ec_loc;         -- f_stp_out
                        sm_RM    <= (others => '0');                         
                    when s_stp_in_w => 
                        sm_start <= '0';
                        sm_req   <= '0';                                                                   
                        if (sm_stop = '1') then                                                                 
                            if (end_trj_trig = '1') then                                                                
                                sm_state <= s_stp_out;
                            else
                                sm_state <= s_stp_in;
                            end if;
                        else
                            sm_state <= s_stp_in_w;
                        end if;
                                               
                    when s_stp_out =>
                       steady_spd <= '0';
                       irq_loc    <= '1';
                       sm_state <= s_stp_out_w;
                       sm_start <= '1';
                       sm_req   <= '0';                                                                     
                       sm_ACC   <= (others => '0');                      
                       sm_EC    <= init_ec_loc;         -- f_stp_out
                       sm_RM    <= (others => '0');                         
                    when s_stp_out_w => 
                       sm_start <= '0';
                       sm_req   <= '0';                                                                   
                       if (sm_stop = '1') then 
                           irq_loc    <= '0';                                                                
                           sm_state   <= still;
                           sm_run_stp <= '0';
                           irq_loc    <= '0';                            
                       else
                           sm_state   <= s_stp_out_w;
                           sm_run_stp <= '1';    
                       end if;
                       
                    -- VELOCITY control states ------------------------   
                    when v_stp_in =>
                        sm_state <= v_stp_in_w;
                        sm_start <= '1';
                        sm_req   <= '1';
                        sm_ACC   <= sm_ACC_pos;                        
                        sm_EC    <= init_ec_loc;         -- step_in
                        sm_RM    <= (others => '0');                           
                    when v_stp_in_w =>
                        sm_start <= '0';
                        sm_req   <= '0';
                        if (sm_stop = '1') then                                                                                           
                            sm_state <= v_accel;
                        else
                            sm_state <= v_stp_in_w;
                        end if;
                                                                        
                    when v_accel =>
                        sm_state <= v_accel_w;
                        sm_start <= '1';
                        sm_req   <= '1';
                        if (EC_tgt_acc_trig = '1') then  -- target speed has been reached
                            sm_ACC   <= (others => '0');
                            sm_EC    <= tgt_EC;				-- Target EC reached
                            sm_RM    <= (others => '0');                             
                        else
                            sm_ACC   <= sm_ACC_pos;
                            sm_EC    <= sm_nxt_EC_loc;
                            sm_RM    <= sm_nxt_RM_loc;  
                        end if;                                                                             
                   when v_accel_w =>
                        sm_start <= '0';
                        sm_req   <= '0';                        
                        if (sm_stop = '1') then                                                                                                                                    
                            if (EC_tgt_acc_trig = '1') then 
                                sm_state <= v_accel_l;
                            else
                                sm_state <= v_accel;
                            end if;                            
                        else
                            sm_state <= v_accel_w;                        
                        end if;                        
                    when v_accel_l =>
                        sm_state <= v_accel_l_w;
                        sm_start <= '1';
                        sm_req   <= '0';
                        sm_ACC   <= (others => '0');
                        sm_EC    <= tgt_EC;				-- Target EC reached
                        sm_RM    <= (others => '0');                                                                                                          
                   when v_accel_l_w =>
                        sm_start <= '0';
                        sm_req   <= '0';                        
                        if (sm_stop = '1') then                                                                                                                                    
                            sm_state <= v_steady;                           
                        else
                            sm_state <= v_accel_l_w;                        
                        end if;                        

                    when v_steady =>
                        steady_spd <= '1';
                        sm_state <= v_steady_w;
                        sm_start <= '1';
                        sm_req   <= '0';
                        sm_ACC   <= (others => '0');                        
                        sm_EC    <= sm_EC;				-- Target EC sustained
                        sm_RM    <= (others => '0');                                                 
                    when v_steady_w =>
                        sm_start <= '0';
                        sm_req   <= '0'; 
                        if (sm_stop = '1') then 
                            if (ramp_dwn_trig = '1') then                                
                                sm_state <= v_stop;
                            elsif (spd_chg_trig = '1') then
                                sm_state <= v_steady_l; 							
                            else
                                sm_state <= v_steady;
                            end if;                                
                        else
                            sm_state <= v_steady_w;   
                        end if;		                                                
                    when v_steady_l =>
                        steady_spd <= '0';
                        sm_state <= v_steady_l_w;
                        sm_start <= '1';
                        sm_req   <= '1';
                        if (ACC_zero_flg = '1') then 	-- change speed command, but no different target EC
                            sm_ACC   <= (others => '0');
                            sm_EC    <= sm_EC;
                            sm_RM    <= (others => '0'); 
                        else 
                            if (ACC_sign_flg = '0') then	-- speed increase
                                sm_ACC   <= sm_ACC_pos;
                                sm_EC    <= sm_EC;
                                sm_RM    <= (others => '0');                                   
                            else							-- speed decrease
                                sm_ACC   <= sm_ACC_neg;
                                sm_EC    <= sm_EC;
                                sm_RM    <= (others => '0');                                    
                            end if;
                        end if; 						                                                    
                    when v_steady_l_w =>
                        sm_start <= '0';
                        sm_req   <= '0';
                        if (sm_stop = '1') then  
                            if (ACC_zero_flg = '1') then 	-- change speed command, but no different target EC
                                sm_state <= v_steady;
                            else
                                if (ACC_sign_flg = '0') then	-- speed increase
                                    sm_state <= v_accel;
                                else							-- speed decrease
                                    sm_state <= v_decel;
                                end if;							
                            end if;										
                        else
                            sm_state <= v_steady_l_w;   
                        end if;
                                                                        
                    when v_decel =>
                        sm_state <= v_decel_w;
                        sm_start <= '1';
                        sm_req   <= '1';
                        if (EC_tgt_dec_trig = '1') then  -- target speed has been reached
                            sm_ACC   <= (others => '0');
                            sm_EC    <= tgt_EC;				-- Target EC reached
                            sm_RM    <= (others => '0');                             
                        else
                            sm_ACC   <= sm_ACC_neg;
                            sm_EC    <= sm_nxt_EC_loc;
                            sm_RM    <= sm_nxt_RM_loc;  
                        end if;                                                                             
                    when v_decel_w =>
                        sm_start <= '0';
                        sm_req   <= '0';                        
                        if (sm_stop = '1') then                                                                                                                                    
                            if (EC_tgt_dec_trig = '1') then 
                                sm_state <= v_decel_l;
                            else
                                sm_state <= v_decel;
                            end if;                            
                        else
                            sm_state <= v_decel_w;                        
                        end if;                        
                    when v_decel_l =>
                        sm_state <= v_decel_l_w;
                        sm_start <= '1';
                        sm_req   <= '0';
                        sm_ACC   <= (others => '0');
                        sm_EC    <= tgt_EC;				-- Target EC reached
                        sm_RM    <= (others => '0');                                                                                                          
                    when v_decel_l_w =>
                        sm_start <= '0';
                        sm_req   <= '0';                        
                        if (sm_stop = '1') then                                                                                                                                    
                            sm_state <= v_steady;                           
                        else
                            sm_state <= v_decel_l_w;                        
                        end if;  
                                               
                    when v_stop =>
                        sm_state   <= v_stop_w;
                        sm_start   <= '1';
                        sm_req     <= '1';
                        steady_spd <= '0';
                        if (init_EC_trig = '1') then     -- target speed has been reached
                            sm_ACC   <= (others => '0');
                            sm_EC    <= tgt_EC;				-- Target EC reached
                            sm_RM    <= (others => '0');                             
                        else
                            sm_ACC   <= sm_ACC_neg;
                            sm_EC    <= sm_nxt_EC_loc;
                            sm_RM    <= sm_nxt_RM_loc;  
                        end if;                                                                             
                   when v_stop_w =>
                        sm_start <= '0';
                        sm_req   <= '0';                        
                        if (sm_stop = '1') then                                                                                                                                    
                            if (init_EC_trig = '1') then 
                                sm_state <= v_stp_out;
                            else
                                sm_state <= v_stop;
                            end if;                            
                        else
                            sm_state <= v_stop_w;                        
                        end if;                        
                    when v_stp_out =>
                        irq_loc    <= '1';
                        sm_state <= v_stp_out_w;
                        sm_start <= '1';
                        sm_req   <= '0';                                                                     
                        sm_ACC   <= (others => '0');                      
                        sm_EC    <= init_ec_loc;         -- v_stp_out
                        sm_RM    <= (others => '0');                                                                                                       
                   when v_stp_out_w =>
                        sm_start <= '0';
                        sm_req   <= '0';                                                                   
                        if (sm_stop = '1') then 
                            irq_loc    <= '1';                                                                
                            sm_state    <= still;
                            sm_run_stp  <= '0';                            
                        else
                            sm_state    <= v_stp_out_w;
                            sm_run_stp  <= '1';    
                        end if;
                                                                            
                    -----------------------------  
                    when recovery =>
                        sm_state     <= still;
                        sm_run_stp   <= '0'; 
                    
                    when others =>                                            
                        sm_state <= recovery;
                end case;
                                                                
            end if;
        end if;
    end process sm_fsm;          

    signals_2_up_resampler: process (aclk)    
    begin       
       if rising_edge(aclk) then
         if (reset = '1') then            
            running_loc    <= "00";
            vld_in         <= '0';
            
            steps_loc    <=   (others => '0');           
            cnt_i          <= (others => '0');
 
            running_loc    <= "10";                      
            running        <= "10";              -- running(1) is "steady_spd", running(0) is "sm_run_stp"
            
            irq_in         <= '0';
            irq_loc_d1     <= '0';
            irq_loc_d2     <= '0';
         else
            -- Variables to processor
            steps_loc     <= steps;
            cnt_i         <= steps_loc;
            
            running_loc    <= steady_spd & sm_run_stp;           
            running        <= running_loc;
                         
            if (running_loc(0) = '1') then
                vld_in <= '1';
            else
                vld_in <= '0';            
            end if;
            
            -- Local Interrupt 
            irq_loc_d1 <= irq_loc;
            irq_loc_d2 <= irq_loc_d1;
            
            if (irq_loc_d1 = '0') and (irq_loc_d2 = '1') then -- falling edge
                if (irq_mask_loc = '1') then
                   irq_in <= '1';
                else
                   irq_in <= '0';
                end if;
            elsif (irq_clr_loc = '1') then
                irq_in <= '0';    
            end if; 
                                            
         end if;                                                                
       end if;
    end process signals_2_up_resampler; 

    Motor_controller_out: process (clk200)
    begin       
       if rising_edge(clk200) then
         if (reset_200 = '1') then
		   port_ref	<= '0';
		   port_clk	<= '0';
	       port_ena	<= '0';
		   port_dir	<= '0';
		   port_m2P	<= '0';
           port_m1P	<= '0';  
         else
           -- ena_load(1:0)   -- "0x" = free; "10" = 100%, "11" = 50%  down to engine control (port_ena, port_load)      
           -- dir			  -- 0 = clockwise, 1 = counterclockwise;
           -- res(1:0)		  -- port M2p M1p     
		   port_ref	<= ena_load_loc(0);
		   port_clk	<= clock_loc;
	       port_ena	<= ena_load_loc(1);
		   port_dir	<= dir_loc;
		   port_m2P	<= res_loc(1);
           port_m1P	<= res_loc(0);                                      
         end if;                                                                
       end if;
    end process Motor_controller_out; 
       

-- synthesis translate_off
         
    print_values :process(reset, sm_start)
    variable line_var : line;
    file text_var : text;

    begin
        if (falling_edge(reset)) then
            file_open(text_var,".\SM_EC_RM_vhdl_write.txt", write_mode);
        END IF;
        
        if (falling_edge(sm_start)) then
            write(line_var, integer'image(to_integer(unsigned(sm_EC))));
            -- write(line_var, integer'image(to_integer(unsigned(Next_RM))));
            writeline(text_var, line_var);   -- write line_var into the file
        end if;
             
        -- file_close(text_var);
    end process print_values;

-- synthesis translate_on    		

end rtl;
