----------------------------- BRIEF MODULE DESCRIPTION -------------------------
--!  \file
--!	\brief This is the very basic testbench of the *AXI4Stream_Inverter*. In the following figure we see the result of the simulation.
--! \image html Waveform.png [Waveform image]
--------------------------------------------------------------------------------


------------------------------- LIBRARY DECLARATION ----------------------------

--------------- IEEE Library ------------
--! Standard IEEE Library
library IEEE;
	--! Standard Logic Vector Library
	use IEEE.STD_LOGIC_1164.all;
	--! Numeric Library
	use IEEE.NUMERIC_STD.all;
-----------------------------------------
--------------------------------------------------------------------------------


entity tb_AXI4Stream_Inverter is
end tb_AXI4Stream_Inverter;

architecture Behavioral of tb_AXI4Stream_Inverter is

	------------------------- CONSTANTS DECLARATION ----------------------------
	----------------- Timing -----------------
	CONSTANT CLK_PERIOD : TIME := 10 ns;									--! Period of the testing clock

	CONSTANT RESET_WAIT : TIME := 3*CLK_PERIOD;								--! Time for which the reset is '0'

	CONSTANT VALID_WAIT	: TIME := 10*CLK_PERIOD;							--! Time between 2 valids
	-------------------------------------------

	------------------- Data -------------------
	CONSTANT DATA_WIDTH : POSITIVE := 8;									--! The incoming image can have values that range from 0 to 255 by definition, so the data can be represented by just 8 bits
	-------------------------------------------

	-------------- Debug Mode -----------------
	CONSTANT DEBUG_MODE : BOOLEAN := TRUE;									--! If DEBUG_MODE = TRUE, the module shows the ports *counter* and *file_dimension* in such a way we can use them for debugging with ILA
	-------------------------------------------
	----------------------------------------------------------------------------

	------------------------ COMPONENT DECLARATION (DUT) -----------------------

	--------- AXI4Stream_Inverter ------------
	--! \brief The *AXI4Stream_Inverter* is the Device Under Test

	COMPONENT AXI4Stream_Inverter
		generic (
			------- Debug Mode -------
			DEBUG_MODE	: BOOLEAN	:= TRUE;							-- If DEBUG_MODE = TRUE, the module shows the ports counter and file_dimension in such a way we can use them for debugging with ILA
			--------------------------

			------- Data Width -------
			DATA_WIDTH	: POSITIVE RANGE 1 TO 8		:=	8				-- The incoming image can have values that range from 0 to 255 by definition, so the data can be represented by just 8 bits
			--------------------------
		);

		port (
			------------------ resetn/Clock ------------------
			--------- resetn ----------
			resetn	: 	IN		STD_LOGIC;								-- Synchronous resetn active low
			--------------------------
			--------- Clock ----------
			clk		:	IN		STD_LOGIC;								-- PS Clock
			--------------------------
			-------------------------------------------------

			-------------------- Data -----------------------
			--------- Input -----------
			s00_axis_tdata	:	IN STD_LOGIC_VECTOR((((DATA_WIDTH -1)/32+1)*32)-1 downto 0);			-- Incoming data from the DMA/Chip2Chip
			s00_axis_tvalid	:	IN STD_LOGIC;														-- Valid of the incoming data
			s00_axis_tlast	:	IN STD_LOGIC;														-- End of the incoming packet
			s00_axis_tready	:	OUT STD_LOGIC;														-- Ready of the inverter
			--------------------------

			--------- Output -----------
			m00_axis_tdata	:	OUT STD_LOGIC_VECTOR((((DATA_WIDTH -1)/32+1)*32)-1 downto 0);			-- Inverted output
			m00_axis_tvalid	:	OUT STD_LOGIC;														-- Output valid
			m00_axis_tlast	:	OUT STD_LOGIC;														-- End of the exiting packets
			m00_axis_tready	:	IN STD_LOGIC;														-- Ready of the DMA/Chip2Chip
			--------------------------

			counter		:	OUT STD_LOGIC_VECTOR(31 downto 0);
			file_dimension	:	OUT STD_LOGIC_VECTOR(31 downto 0)
			-------------------------------------------------
		);
	end COMPONENT;
	-------------------------------------------
	---------------------------------------------------------------------------

	------------------------ SIGNAL DECLARATION (DUT) --------------------------

	------------------ resetn/Clock ------------------
	--------- Clock ----------
	signal clk	: STD_LOGIC	:= '1';						--! Clock signal
	--------------------------
	--------- resetn ----------
	signal resetn	: STD_LOGIC := '0';					--! Reset active low
	--------------------------
	-------------------------------------------------

	-------------------- Data -----------------------
	signal s00_axis_tdata, m00_axis_tdata	:	STD_LOGIC_VECTOR((((DATA_WIDTH -1)/32+1)*32)-1 downto 0);			--! Incoming and exiting data

	signal m00_axis_tvalid, s00_axis_tlast, m00_axis_tlast, s00_axis_tready	: STD_LOGIC;							--! Valid, last and ready signals

	signal s00_axis_tvalid, m00_axis_tready	: STD_LOGIC := '1';														--! Input valid and ready signals
	-------------------------------------------------

	-------------------- Data -----------------------
	signal counter : natural := 0;																					--! Value assigned to the data
	-------------------------------------------------

begin


	----------------------- COMPONENT DUT INSTANTIATION ------------------------

	--------------- AXI4Stream_Inverter --------------
	--! \brief Instantiation of the Device Under Test

	dut_Inverter: AXI4Stream_Inverter


			GENERIC MAP (

				------- Debug Mode -------
				DEBUG_MODE	=> DEBUG_MODE,							-- If DEBUG_MODE = TRUE, the module shows the ports counter and file_dimension in such a way we can use them for debugging with ILA
				--------------------------

				------- Data Width -------
				DATA_WIDTH	=> DATA_WIDTH				-- The incoming image can have values that range from 0 to 255 by definition, so the data can be represented by just 8 bits
				--------------------------
			)

			PORT MAP (
				------------------ resetn/Clock ------------------
				--------- resetn ----------
				resetn	=> resetn,							-- Synchronous resetn active highs
				--------------------------
				--------- Clock ----------
				clk		=> clk,								-- Clock
				--------------------------
				-------------------------------------------------

				-------------------- Data -----------------------
				--------- Input -----------
				s00_axis_tdata		=> s00_axis_tdata,			-- Incoming data from the DMA/Chip2Chip
				s00_axis_tvalid		=>	s00_axis_tvalid,														-- Valid of the incoming data
				s00_axis_tlast		=>	s00_axis_tlast,														-- End of the incoming packet
				s00_axis_tready		=>	s00_axis_tready,														-- Ready of the inverter
				--------------------------

				--------- Output -----------
				m00_axis_tdata		=> m00_axis_tdata,			-- Inverted output
				m00_axis_tvalid		=> m00_axis_tvalid,														-- Output valid
				m00_axis_tlast		=> m00_axis_tlast,														-- End of the exiting packets
				m00_axis_tready		=> m00_axis_tready,														-- Ready of the DMA/Chip2Chip
				--------------------------
				counter	=> open,
				file_dimension => open
				-------------------------------------------------
			);
	---------------------------------------------
	----------------------------------------------------------------------------


	---------------------------------- PROCESS ---------------------------------

	------------------ Dataflow -----------------
	clk <= not clk after CLK_PERIOD/2;
	s00_axis_tvalid <= not s00_axis_tvalid after VALID_WAIT;
	m00_axis_tready <= not m00_axis_tready after RESET_WAIT;
	resetn <= '1' after RESET_WAIT;
	---------------------------------------------



	-------------- Data -------------
	data_process: process
	begin

			if (s00_axis_tvalid = '1' and m00_axis_tready = '1' and resetn = '1') then
				counter <= counter + 1;
				s00_axis_tdata <= std_logic_vector(to_unsigned(counter, s00_axis_tdata'LENGTH));
			wait for CLK_PERIOD;

			else
				wait for CLK_PERIOD;
			end if;


	end process;
	---------------------------------
	----------------------------------------------------------------------------



end Behavioral;
