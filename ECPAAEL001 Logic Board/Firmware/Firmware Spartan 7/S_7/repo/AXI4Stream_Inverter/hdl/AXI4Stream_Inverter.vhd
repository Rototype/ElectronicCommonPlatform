----------------------------- BRIEF MODULE DESCRIPTION -------------------------
--!  \file
--!	\brief This is the wrapping of Inverter for AXI4-Stream interface for IP-Core.
--! \image html Inverter_IP-Core.png [IP-Core image]
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


-------------------------------- ENTITY DESCRIPTION ----------------------------
--! \brief The entity of this module can be described by the following images:
--! \details in the first one we can see the Vivado representation of the Generic
--! \image html Inverter_Generic.PNG [IP-Core Generic]
--! \brief in the second image we see the Vivado representation of the IP-Core with the signals:
--! \image html Inverter_Signals.PNG [IP-Core Signals]
--! \brief The output of this module contains *m00_axis_tdata* which is the inverted input *s00_axis_tdata* (In reality just the bytes after the 54th are inverted,
--! since the first 54 bytes contain the BMP header, which must be kept untouched), *m00_axis_tvalid*, which is basically a sampled version of the *s00_axis_tvalid* coming from the DMA,
--! *s00_axis_tready*, which is the same of  the *m00_axis_tready* coming from the "following DMA" and *m00_axis_tlast*, which is the sampled version of the incoming *s00_axis_tlast*.
--! Furthermore, in case of *DEBUG_MODE = TRUE*, the module shows two additional ports, *counter* and *file_dimension*, which are used for debugging with the ILA.
--! \details The bit dimension of *m00_axis_tdata* and *s00_axis_tdata* are sized on a multiple of 32 bits, as constrained by the AXI DMA, otherwise the connection won't work.
--------------------------------------------------------------------------------


entity AXI4Stream_Inverter is
	generic (
		------- Debug Mode -------
		DEBUG_MODE	: BOOLEAN	:= TRUE;							--! If DEBUG_MODE = TRUE, the module shows the ports *counter* and *file_dimension* in such a way we can use them for debugging with ILA
		--------------------------

		------- Data Width -------
		DATA_WIDTH	: POSITIVE 	:=	8								--! The incoming image can have values that range from 0 to 255 by definition, so the data can be represented by just 8 bits
		--------------------------
	);

	port (
		------------------ resetn/Clock ------------------
		--------- resetn ----------
		resetn	: 	IN		STD_LOGIC;								--! Synchronous resetn active low
		--------------------------
		--------- Clock ----------
		clk		:	IN		STD_LOGIC;								--! PS Clock
		--------------------------
		-------------------------------------------------

		-------------------- Data -----------------------
		--------- Input -----------
		s00_axis_tdata	:	IN STD_LOGIC_VECTOR((((DATA_WIDTH -1)/32+1)*32)-1 downto 0);		--! Incoming data from the DMA/Chip2Chip
		s00_axis_tvalid	:	IN STD_LOGIC;														--! Valid of the incoming data
		s00_axis_tlast	:	IN STD_LOGIC;														--! End of the incoming packet
		s00_axis_tready	:	OUT STD_LOGIC;														--! Ready of the *Inverter*: basically it is the same of the ready coming from the "following DMA"
		--------------------------

		--------- Output -----------
		m00_axis_tdata	:	OUT STD_LOGIC_VECTOR((((DATA_WIDTH -1)/32+1)*32)-1 downto 0);		--! Inverted output: Just the bytes after the 54th are inverted, indeed the Header is not touched
		m00_axis_tvalid	:	OUT STD_LOGIC;														--! Output valid: basically it is the sampled version of *s00_axis_tvalid*
		m00_axis_tlast	:	OUT STD_LOGIC;														--! End of the exiting packets: it is the sampled version of *s00_axis_tlast*
		m00_axis_tready	:	IN STD_LOGIC;														--! Ready of the DMA/Chip2Chip
		--------------------------

		counter			:	OUT STD_LOGIC_VECTOR(31 downto 0);									--! If *DEBUG_MODE = TRUE*, this port is shown and represents the actual value of the internal packet counter, which counts the number of incoming packets
		file_dimension	:	OUT STD_LOGIC_VECTOR(31 downto 0)									--! If *DEBUG_MODE = TRUE*, this port is shown and represents the dimension of the incoming file, read from the Header
		-------------------------------------------------
	);
end AXI4Stream_Inverter;

---------------------------- ARCHITECTURE DESCRIPTION --------------------------
--! \brief The module instantiates the *AXI4Stream_Inverter*.
--------------------------------------------------------------------------------

architecture Behavioral of AXI4Stream_Inverter is

	--------------- Inverter -------------
	--! \brief The *Inverter* is the responsible of managing all the AXI4-Signals and of inverting properly the incoming image.

	COMPONENT Inverter
		generic (

			------- Debug Mode -------
			DEBUG_MODE	: BOOLEAN	:= TRUE;							-- If DEBUG_MODE = TRUE, the module shows the ports counter and file_dimension in such a way we can use them for debugging with ILA
			--------------------------

			------- Data Width -------
			DATA_WIDTH	: POSITIVE 	:=	8				-- The incoming image can have values that range from 0 to 255 by definition, so the data can be represented by just 8 bits
			--------------------------
		);

		port (
			------------------ resetn/Clock ------------------
			--------- resetn ----------
			resetn	: 	IN		STD_LOGIC;								-- Synchronous resetn active high
			--------------------------
			--------- Clock ----------
			clk		:	IN		STD_LOGIC;								-- Clock
			--------------------------
			-------------------------------------------------

			-------------------- Data -----------------------
			--------- Input -----------
			in_tdata_MSB		:	IN STD_LOGIC_VECTOR(DATA_WIDTH -1 downto 0);			-- Incoming data from the DMA/Chip2Chip
			in_tdata_3rdB		:	IN STD_LOGIC_VECTOR(DATA_WIDTH -1 downto 0);			-- Incoming data from the DMA/Chip2Chip
			in_tdata_2ndB		:	IN STD_LOGIC_VECTOR(DATA_WIDTH -1 downto 0);			-- Incoming data from the DMA/Chip2Chip
			in_tdata_LSB		:	IN STD_LOGIC_VECTOR(DATA_WIDTH -1 downto 0);			-- Incoming data from the DMA/Chip2Chip
			in_tvalid			:	IN STD_LOGIC;														-- Valid of the incoming data
			in_tlast			:	IN STD_LOGIC;														-- End of the incoming packet
			out_tready			:	OUT STD_LOGIC;														-- Ready of the inverter
			--------------------------

			--------- Output -----------
			inverted_tdata_MSB	:	OUT STD_LOGIC_VECTOR(DATA_WIDTH -1 downto 0);			-- Inverted output
			inverted_tdata_3rdB	:	OUT STD_LOGIC_VECTOR(DATA_WIDTH -1 downto 0);			-- Inverted output
			inverted_tdata_2ndB	:	OUT STD_LOGIC_VECTOR(DATA_WIDTH -1 downto 0);			-- Inverted output
			inverted_tdata_LSB	:	OUT STD_LOGIC_VECTOR(DATA_WIDTH -1 downto 0);			-- Inverted output
			out_tvalid			:	OUT STD_LOGIC;														-- Output valid
			out_tlast			:	OUT STD_LOGIC;														-- End of the exiting packets
			in_tready			:	IN STD_LOGIC;														-- Ready of the DMA/Chip2Chip
			--------------------------


			counter			:	OUT STD_LOGIC_VECTOR(31 downto 0);
			file_dimension	:	OUT STD_LOGIC_VECTOR(31 downto 0)
			-------------------------------------------------
		);
	end COMPONENT;
	----------------------------------------------------------------------------
begin


	------------------------- COMPONENT INSTANTIATION --------------------------

	--------------- Inverter -------------
	--! \brief The *Inverter* and the *AXI4Stream_InverterWrapper* shares the same generics and most of the ports. The only difference is that we have subdivided the 32 bits of *s00_axis_tdata*
	--! in pieces of 1 Byte each, in order to work directly at byte level, working on 4 Bytes per time, speeding up the inversion process.
	--! In the following image we can see a more clear representation of the subdivision:
	--! \image html Instantiation.svg [Instantiation Porting]
	--! The same concept has been applied to the output port *m00_axis_tdata*, where we merged 4 pieces of 8 bits each into 1 of 32 bits.

	Inst_Inverter : Inverter

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
			resetn	=> resetn,							-- Synchronous resetn active high
			--------------------------
			--------- Clock ----------
			clk		=> clk,								-- Clock
			--------------------------
			-------------------------------------------------

			-------------------- Data -----------------------
			--------- Input -----------
			in_tdata_MSB		=> s00_axis_tdata(4*DATA_WIDTH -1 downto 3*DATA_WIDTH),			-- Incoming data from the DMA/Chip2Chip
			in_tdata_3rdB		=> s00_axis_tdata(3*DATA_WIDTH -1 downto 2*DATA_WIDTH),			-- Incoming data from the DMA/Chip2Chip
			in_tdata_2ndB		=> s00_axis_tdata(2*DATA_WIDTH -1 downto DATA_WIDTH),			-- Incoming data from the DMA/Chip2Chip
			in_tdata_LSB		=> s00_axis_tdata(DATA_WIDTH -1 downto 0),						-- Incoming data from the DMA/Chip2Chip
			in_tvalid			=>	s00_axis_tvalid,														-- Valid of the incoming datas
			in_tlast			=>	s00_axis_tlast,														-- End of the incoming packet
			out_tready			=>	s00_axis_tready,														-- Ready of the inverter
			--------------------------

			--------- Output -----------
			inverted_tdata_MSB		=> m00_axis_tdata(4*DATA_WIDTH -1 downto 3*DATA_WIDTH),			-- Incoming data from the DMA/Chip2Chip
			inverted_tdata_3rdB		=> m00_axis_tdata(3*DATA_WIDTH -1 downto 2*DATA_WIDTH),			-- Incoming data from the DMA/Chip2Chip
			inverted_tdata_2ndB		=> m00_axis_tdata(2*DATA_WIDTH -1 downto DATA_WIDTH),			-- Incoming data from the DMA/Chip2Chip
			inverted_tdata_LSB		=> m00_axis_tdata(DATA_WIDTH -1 downto 0),						-- Incoming data from the DMA/Chip2Chip
			out_tvalid				=> m00_axis_tvalid,														-- Output valid
			out_tlast				=> m00_axis_tlast,														-- End of the exiting packets
			in_tready				=> m00_axis_tready,														-- Ready of the DMA/Chip2Chip
			--------------------------

			counter 		=> counter,
			file_dimension 	=> file_dimension
			-------------------------------------------------
		);
	---------------------------------------------
	----------------------------------------------------------------------------


	------------------------------- DATA FLOW ----------------------------------
	--m00_axis_tdata(m00_axis_tdata'LENGTH-1 downto 4*DATA_WIDTH) <= (others => '0');				-- Zero padding of the AXI4 Stream
	----------------------------------------------------------------------------

end Behavioral;
