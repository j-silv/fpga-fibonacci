-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "03/20/2021 20:22:25"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	uart IS
    PORT (
	start_tr : IN std_logic;
	data_in : IN std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic;
	rst : IN std_logic;
	tx : OUT std_logic
	);
END uart;

-- Design Ports Information
-- tx	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_tr	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF uart IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_start_tr : std_logic;
SIGNAL ww_data_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_tx : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \tx~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \start_tr~input_o\ : std_logic;
SIGNAL \state~10_combout\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \state.START_TRANSMIT~q\ : std_logic;
SIGNAL \bits_sent[0]~32_combout\ : std_logic;
SIGNAL \bits_sent[31]~40_combout\ : std_logic;
SIGNAL \bits_sent[0]~33\ : std_logic;
SIGNAL \bits_sent[1]~34_combout\ : std_logic;
SIGNAL \bits_sent[1]~35\ : std_logic;
SIGNAL \bits_sent[2]~36_combout\ : std_logic;
SIGNAL \bits_sent[2]~37\ : std_logic;
SIGNAL \bits_sent[3]~38_combout\ : std_logic;
SIGNAL \bits_sent[3]~39\ : std_logic;
SIGNAL \bits_sent[4]~41_combout\ : std_logic;
SIGNAL \bits_sent[4]~42\ : std_logic;
SIGNAL \bits_sent[5]~43_combout\ : std_logic;
SIGNAL \bits_sent[5]~44\ : std_logic;
SIGNAL \bits_sent[6]~45_combout\ : std_logic;
SIGNAL \bits_sent[6]~46\ : std_logic;
SIGNAL \bits_sent[7]~47_combout\ : std_logic;
SIGNAL \bits_sent[7]~48\ : std_logic;
SIGNAL \bits_sent[8]~49_combout\ : std_logic;
SIGNAL \bits_sent[8]~50\ : std_logic;
SIGNAL \bits_sent[9]~51_combout\ : std_logic;
SIGNAL \bits_sent[9]~52\ : std_logic;
SIGNAL \bits_sent[10]~53_combout\ : std_logic;
SIGNAL \bits_sent[10]~54\ : std_logic;
SIGNAL \bits_sent[11]~55_combout\ : std_logic;
SIGNAL \bits_sent[11]~56\ : std_logic;
SIGNAL \bits_sent[12]~57_combout\ : std_logic;
SIGNAL \bits_sent[12]~58\ : std_logic;
SIGNAL \bits_sent[13]~59_combout\ : std_logic;
SIGNAL \bits_sent[13]~60\ : std_logic;
SIGNAL \bits_sent[14]~61_combout\ : std_logic;
SIGNAL \bits_sent[14]~62\ : std_logic;
SIGNAL \bits_sent[15]~63_combout\ : std_logic;
SIGNAL \bits_sent[15]~64\ : std_logic;
SIGNAL \bits_sent[16]~65_combout\ : std_logic;
SIGNAL \bits_sent[16]~66\ : std_logic;
SIGNAL \bits_sent[17]~67_combout\ : std_logic;
SIGNAL \bits_sent[17]~68\ : std_logic;
SIGNAL \bits_sent[18]~69_combout\ : std_logic;
SIGNAL \bits_sent[18]~70\ : std_logic;
SIGNAL \bits_sent[19]~71_combout\ : std_logic;
SIGNAL \bits_sent[19]~72\ : std_logic;
SIGNAL \bits_sent[20]~73_combout\ : std_logic;
SIGNAL \bits_sent[20]~74\ : std_logic;
SIGNAL \bits_sent[21]~75_combout\ : std_logic;
SIGNAL \bits_sent[21]~76\ : std_logic;
SIGNAL \bits_sent[22]~77_combout\ : std_logic;
SIGNAL \bits_sent[22]~78\ : std_logic;
SIGNAL \bits_sent[23]~79_combout\ : std_logic;
SIGNAL \bits_sent[23]~80\ : std_logic;
SIGNAL \bits_sent[24]~81_combout\ : std_logic;
SIGNAL \bits_sent[24]~82\ : std_logic;
SIGNAL \bits_sent[25]~83_combout\ : std_logic;
SIGNAL \bits_sent[25]~84\ : std_logic;
SIGNAL \bits_sent[26]~85_combout\ : std_logic;
SIGNAL \bits_sent[26]~86\ : std_logic;
SIGNAL \bits_sent[27]~87_combout\ : std_logic;
SIGNAL \bits_sent[27]~88\ : std_logic;
SIGNAL \bits_sent[28]~89_combout\ : std_logic;
SIGNAL \bits_sent[28]~90\ : std_logic;
SIGNAL \bits_sent[29]~91_combout\ : std_logic;
SIGNAL \bits_sent[29]~92\ : std_logic;
SIGNAL \bits_sent[30]~93_combout\ : std_logic;
SIGNAL \bits_sent[30]~94\ : std_logic;
SIGNAL \bits_sent[31]~95_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \state.DATA_TRANSMIT~q\ : std_logic;
SIGNAL \state~9_combout\ : std_logic;
SIGNAL \state.STOP_TRANSMIT~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \state.WAIT_RESET~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state.IDLE~q\ : std_logic;
SIGNAL \tx~2_combout\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \shift_register[0]~1_combout\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \shift_register[7]~0_combout\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \tx~3_combout\ : std_logic;
SIGNAL \tx~4_combout\ : std_logic;
SIGNAL \tx~reg0_q\ : std_logic;
SIGNAL bits_sent : std_logic_vector(31 DOWNTO 0);
SIGNAL shift_register : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_tx~reg0_q\ : std_logic;
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_start_tr <= start_tr;
ww_data_in <= data_in;
ww_clk <= clk;
ww_rst <= rst;
tx <= ww_tx;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_tx~reg0_q\ <= NOT \tx~reg0_q\;
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y15_N20
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X31_Y9_N2
\tx~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_tx~reg0_q\,
	devoe => ww_devoe,
	o => \tx~output_o\);

-- Location: IOIBUF_X0_Y6_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y6_N22
\rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X31_Y11_N22
\start_tr~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_tr,
	o => \start_tr~input_o\);

-- Location: LCCOMB_X20_Y10_N26
\state~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~10_combout\ = (!\state.IDLE~q\ & \start_tr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.IDLE~q\,
	datad => \start_tr~input_o\,
	combout => \state~10_combout\);

-- Location: CLKCTRL_G4
\rst~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X20_Y10_N27
\state.START_TRANSMIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~10_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.START_TRANSMIT~q\);

-- Location: LCCOMB_X18_Y10_N0
\bits_sent[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bits_sent[0]~32_combout\ = bits_sent(0) $ (VCC)
-- \bits_sent[0]~33\ = CARRY(bits_sent(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bits_sent(0),
	datad => VCC,
	combout => \bits_sent[0]~32_combout\,
	cout => \bits_sent[0]~33\);

-- Location: LCCOMB_X19_Y10_N16
\bits_sent[31]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bits_sent[31]~40_combout\ = (!\rst~input_o\ & \state.DATA_TRANSMIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \state.DATA_TRANSMIT~q\,
	combout => \bits_sent[31]~40_combout\);

-- Location: FF_X18_Y10_N1
\bits_sent[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bits_sent[0]~32_combout\,
	sclr => \LessThan0~9_combout\,
	ena => \bits_sent[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits_sent(0));

-- Location: LCCOMB_X18_Y10_N2
\bits_sent[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bits_sent[1]~34_combout\ = (bits_sent(1) & (!\bits_sent[0]~33\)) # (!bits_sent(1) & ((\bits_sent[0]~33\) # (GND)))
-- \bits_sent[1]~35\ = CARRY((!\bits_sent[0]~33\) # (!bits_sent(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bits_sent(1),
	datad => VCC,
	cin => \bits_sent[0]~33\,
	combout => \bits_sent[1]~34_combout\,
	cout => \bits_sent[1]~35\);

-- Location: FF_X18_Y10_N3
\bits_sent[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bits_sent[1]~34_combout\,
	sclr => \LessThan0~9_combout\,
	ena => \bits_sent[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits_sent(1));

-- Location: LCCOMB_X18_Y10_N4
\bits_sent[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bits_sent[2]~36_combout\ = (bits_sent(2) & (\bits_sent[1]~35\ $ (GND))) # (!bits_sent(2) & (!\bits_sent[1]~35\ & VCC))
-- \bits_sent[2]~37\ = CARRY((bits_sent(2) & !\bits_sent[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bits_sent(2),
	datad => VCC,
	cin => \bits_sent[1]~35\,
	combout => \bits_sent[2]~36_combout\,
	cout => \bits_sent[2]~37\);

-- Location: FF_X18_Y10_N5
\bits_sent[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bits_sent[2]~36_combout\,
	sclr => \LessThan0~9_combout\,
	ena => \bits_sent[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits_sent(2));

-- Location: LCCOMB_X18_Y10_N6
\bits_sent[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bits_sent[3]~38_combout\ = (bits_sent(3) & (!\bits_sent[2]~37\)) # (!bits_sent(3) & ((\bits_sent[2]~37\) # (GND)))
-- \bits_sent[3]~39\ = CARRY((!\bits_sent[2]~37\) # (!bits_sent(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bits_sent(3),
	datad => VCC,
	cin => \bits_sent[2]~37\,
	combout => \bits_sent[3]~38_combout\,
	cout => \bits_sent[3]~39\);

-- Location: FF_X18_Y10_N7
\bits_sent[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bits_sent[3]~38_combout\,
	sclr => \LessThan0~9_combout\,
	ena => \bits_sent[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits_sent(3));

-- Location: LCCOMB_X18_Y10_N8
\bits_sent[4]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bits_sent[4]~41_combout\ = (bits_sent(4) & (\bits_sent[3]~39\ $ (GND))) # (!bits_sent(4) & (!\bits_sent[3]~39\ & VCC))
-- \bits_sent[4]~42\ = CARRY((bits_sent(4) & !\bits_sent[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bits_sent(4),
	datad => VCC,
	cin => \bits_sent[3]~39\,
	combout => \bits_sent[4]~41_combout\,
	cout => \bits_sent[4]~42\);

-- Location: FF_X18_Y10_N9
\bits_sent[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bits_sent[4]~41_combout\,
	sclr => \LessThan0~9_combout\,
	ena => \bits_sent[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits_sent(4));

-- Location: LCCOMB_X18_Y10_N10
\bits_sent[5]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bits_sent[5]~43_combout\ = (bits_sent(5) & (!\bits_sent[4]~42\)) # (!bits_sent(5) & ((\bits_sent[4]~42\) # (GND)))
-- \bits_sent[5]~44\ = CARRY((!\bits_sent[4]~42\) # (!bits_sent(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bits_sent(5),
	datad => VCC,
	cin => \bits_sent[4]~42\,
	combout => \bits_sent[5]~43_combout\,
	cout => \bits_sent[5]~44\);

-- Location: FF_X18_Y10_N11
\bits_sent[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bits_sent[5]~43_combout\,
	sclr => \LessThan0~9_combout\,
	ena => \bits_sent[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits_sent(5));

-- Location: LCCOMB_X18_Y10_N12
\bits_sent[6]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bits_sent[6]~45_combout\ = (bits_sent(6) & (\bits_sent[5]~44\ $ (GND))) # (!bits_sent(6) & (!\bits_sent[5]~44\ & VCC))
-- \bits_sent[6]~46\ = CARRY((bits_sent(6) & !\bits_sent[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bits_sent(6),
	datad => VCC,
	cin => \bits_sent[5]~44\,
	combout => \bits_sent[6]~45_combout\,
	cout => \bits_sent[6]~46\);

-- Location: FF_X18_Y10_N13
\bits_sent[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bits_sent[6]~45_combout\,
	sclr => \LessThan0~9_combout\,
	ena => \bits_sent[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits_sent(6));

-- Location: LCCOMB_X18_Y10_N14
\bits_sent[7]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bits_sent[7]~47_combout\ = (bits_sent(7) & (!\bits_sent[6]~46\)) # (!bits_sent(7) & ((\bits_sent[6]~46\) # (GND)))
-- \bits_sent[7]~48\ = CARRY((!\bits_sent[6]~46\) # (!bits_sent(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bits_sent(7),
	datad => VCC,
	cin => \bits_sent[6]~46\,
	combout => \bits_sent[7]~47_combout\,
	cout => \bits_sent[7]~48\);

-- Location: FF_X18_Y10_N15
\bits_sent[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bits_sent[7]~47_combout\,
	sclr => \LessThan0~9_combout\,
	ena => \bits_sent[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits_sent(7));

-- Location: LCCOMB_X18_Y10_N16
\bits_sent[8]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bits_sent[8]~49_combout\ = (bits_sent(8) & (\bits_sent[7]~48\ $ (GND))) # (!bits_sent(8) & (!\bits_sent[7]~48\ & VCC))
-- \bits_sent[8]~50\ = CARRY((bits_sent(8) & !\bits_sent[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bits_sent(8),
	datad => VCC,
	cin => \bits_sent[7]~48\,
	combout => \bits_sent[8]~49_combout\,
	cout => \bits_sent[8]~50\);

-- Location: FF_X18_Y10_N17
\bits_sent[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bits_sent[8]~49_combout\,
	sclr => \LessThan0~9_combout\,
	ena => \bits_sent[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits_sent(8));

-- Location: LCCOMB_X18_Y10_N18
\bits_sent[9]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bits_sent[9]~51_combout\ = (bits_sent(9) & (!\bits_sent[8]~50\)) # (!bits_sent(9) & ((\bits_sent[8]~50\) # (GND)))
-- \bits_sent[9]~52\ = CARRY((!\bits_sent[8]~50\) # (!bits_sent(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bits_sent(9),
	datad => VCC,
	cin => \bits_sent[8]~50\,
	combout => \bits_sent[9]~51_combout\,
	cout => \bits_sent[9]~52\);

-- Location: FF_X18_Y10_N19
\bits_sent[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bits_sent[9]~51_combout\,
	sclr => \LessThan0~9_combout\,
	ena => \bits_sent[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits_sent(9));

-- Location: LCCOMB_X18_Y10_N20
\bits_sent[10]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bits_sent[10]~53_combout\ = (bits_sent(10) & (\bits_sent[9]~52\ $ (GND))) # (!bits_sent(10) & (!\bits_sent[9]~52\ & VCC))
-- \bits_sent[10]~54\ = CARRY((bits_sent(10) & !\bits_sent[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bits_sent(10),
	datad => VCC,
	cin => \bits_sent[9]~52\,
	combout => \bits_sent[10]~53_combout\,
	cout => \bits_sent[10]~54\);

-- Location: FF_X18_Y10_N21
\bits_sent[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bits_sent[10]~53_combout\,
	sclr => \LessThan0~9_combout\,
	ena => \bits_sent[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits_sent(10));

-- Location: LCCOMB_X18_Y10_N22
\bits_sent[11]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bits_sent[11]~55_combout\ = (bits_sent(11) & (!\bits_sent[10]~54\)) # (!bits_sent(11) & ((\bits_sent[10]~54\) # (GND)))
-- \bits_sent[11]~56\ = CARRY((!\bits_sent[10]~54\) # (!bits_sent(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bits_sent(11),
	datad => VCC,
	cin => \bits_sent[10]~54\,
	combout => \bits_sent[11]~55_combout\,
	cout => \bits_sent[11]~56\);

-- Location: FF_X18_Y10_N23
\bits_sent[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bits_sent[11]~55_combout\,
	sclr => \LessThan0~9_combout\,
	ena => \bits_sent[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits_sent(11));

-- Location: LCCOMB_X18_Y10_N24
\bits_sent[12]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bits_sent[12]~57_combout\ = (bits_sent(12) & (\bits_sent[11]~56\ $ (GND))) # (!bits_sent(12) & (!\bits_sent[11]~56\ & VCC))
-- \bits_sent[12]~58\ = CARRY((bits_sent(12) & !\bits_sent[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bits_sent(12),
	datad => VCC,
	cin => \bits_sent[11]~56\,
	combout => \bits_sent[12]~57_combout\,
	cout => \bits_sent[12]~58\);

-- Location: FF_X18_Y10_N25
\bits_sent[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bits_sent[12]~57_combout\,
	sclr => \LessThan0~9_combout\,
	ena => \bits_sent[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits_sent(12));

-- Location: LCCOMB_X18_Y10_N26
\bits_sent[13]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bits_sent[13]~59_combout\ = (bits_sent(13) & (!\bits_sent[12]~58\)) # (!bits_sent(13) & ((\bits_sent[12]~58\) # (GND)))
-- \bits_sent[13]~60\ = CARRY((!\bits_sent[12]~58\) # (!bits_sent(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bits_sent(13),
	datad => VCC,
	cin => \bits_sent[12]~58\,
	combout => \bits_sent[13]~59_combout\,
	cout => \bits_sent[13]~60\);

-- Location: FF_X18_Y10_N27
\bits_sent[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bits_sent[13]~59_combout\,
	sclr => \LessThan0~9_combout\,
	ena => \bits_sent[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits_sent(13));

-- Location: LCCOMB_X18_Y10_N28
\bits_sent[14]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bits_sent[14]~61_combout\ = (bits_sent(14) & (\bits_sent[13]~60\ $ (GND))) # (!bits_sent(14) & (!\bits_sent[13]~60\ & VCC))
-- \bits_sent[14]~62\ = CARRY((bits_sent(14) & !\bits_sent[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bits_sent(14),
	datad => VCC,
	cin => \bits_sent[13]~60\,
	combout => \bits_sent[14]~61_combout\,
	cout => \bits_sent[14]~62\);

-- Location: FF_X18_Y10_N29
\bits_sent[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bits_sent[14]~61_combout\,
	sclr => \LessThan0~9_combout\,
	ena => \bits_sent[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits_sent(14));

-- Location: LCCOMB_X18_Y10_N30
\bits_sent[15]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bits_sent[15]~63_combout\ = (bits_sent(15) & (!\bits_sent[14]~62\)) # (!bits_sent(15) & ((\bits_sent[14]~62\) # (GND)))
-- \bits_sent[15]~64\ = CARRY((!\bits_sent[14]~62\) # (!bits_sent(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bits_sent(15),
	datad => VCC,
	cin => \bits_sent[14]~62\,
	combout => \bits_sent[15]~63_combout\,
	cout => \bits_sent[15]~64\);

-- Location: FF_X18_Y10_N31
\bits_sent[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bits_sent[15]~63_combout\,
	sclr => \LessThan0~9_combout\,
	ena => \bits_sent[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits_sent(15));

-- Location: LCCOMB_X18_Y9_N0
\bits_sent[16]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bits_sent[16]~65_combout\ = (bits_sent(16) & (\bits_sent[15]~64\ $ (GND))) # (!bits_sent(16) & (!\bits_sent[15]~64\ & VCC))
-- \bits_sent[16]~66\ = CARRY((bits_sent(16) & !\bits_sent[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bits_sent(16),
	datad => VCC,
	cin => \bits_sent[15]~64\,
	combout => \bits_sent[16]~65_combout\,
	cout => \bits_sent[16]~66\);

-- Location: FF_X18_Y9_N1
\bits_sent[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bits_sent[16]~65_combout\,
	sclr => \LessThan0~9_combout\,
	ena => \bits_sent[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits_sent(16));

-- Location: LCCOMB_X18_Y9_N2
\bits_sent[17]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bits_sent[17]~67_combout\ = (bits_sent(17) & (!\bits_sent[16]~66\)) # (!bits_sent(17) & ((\bits_sent[16]~66\) # (GND)))
-- \bits_sent[17]~68\ = CARRY((!\bits_sent[16]~66\) # (!bits_sent(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bits_sent(17),
	datad => VCC,
	cin => \bits_sent[16]~66\,
	combout => \bits_sent[17]~67_combout\,
	cout => \bits_sent[17]~68\);

-- Location: FF_X18_Y9_N3
\bits_sent[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bits_sent[17]~67_combout\,
	sclr => \LessThan0~9_combout\,
	ena => \bits_sent[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits_sent(17));

-- Location: LCCOMB_X18_Y9_N4
\bits_sent[18]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bits_sent[18]~69_combout\ = (bits_sent(18) & (\bits_sent[17]~68\ $ (GND))) # (!bits_sent(18) & (!\bits_sent[17]~68\ & VCC))
-- \bits_sent[18]~70\ = CARRY((bits_sent(18) & !\bits_sent[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bits_sent(18),
	datad => VCC,
	cin => \bits_sent[17]~68\,
	combout => \bits_sent[18]~69_combout\,
	cout => \bits_sent[18]~70\);

-- Location: FF_X18_Y9_N5
\bits_sent[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bits_sent[18]~69_combout\,
	sclr => \LessThan0~9_combout\,
	ena => \bits_sent[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits_sent(18));

-- Location: LCCOMB_X18_Y9_N6
\bits_sent[19]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bits_sent[19]~71_combout\ = (bits_sent(19) & (!\bits_sent[18]~70\)) # (!bits_sent(19) & ((\bits_sent[18]~70\) # (GND)))
-- \bits_sent[19]~72\ = CARRY((!\bits_sent[18]~70\) # (!bits_sent(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bits_sent(19),
	datad => VCC,
	cin => \bits_sent[18]~70\,
	combout => \bits_sent[19]~71_combout\,
	cout => \bits_sent[19]~72\);

-- Location: FF_X18_Y9_N7
\bits_sent[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bits_sent[19]~71_combout\,
	sclr => \LessThan0~9_combout\,
	ena => \bits_sent[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits_sent(19));

-- Location: LCCOMB_X18_Y9_N8
\bits_sent[20]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bits_sent[20]~73_combout\ = (bits_sent(20) & (\bits_sent[19]~72\ $ (GND))) # (!bits_sent(20) & (!\bits_sent[19]~72\ & VCC))
-- \bits_sent[20]~74\ = CARRY((bits_sent(20) & !\bits_sent[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bits_sent(20),
	datad => VCC,
	cin => \bits_sent[19]~72\,
	combout => \bits_sent[20]~73_combout\,
	cout => \bits_sent[20]~74\);

-- Location: FF_X18_Y9_N9
\bits_sent[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bits_sent[20]~73_combout\,
	sclr => \LessThan0~9_combout\,
	ena => \bits_sent[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits_sent(20));

-- Location: LCCOMB_X18_Y9_N10
\bits_sent[21]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bits_sent[21]~75_combout\ = (bits_sent(21) & (!\bits_sent[20]~74\)) # (!bits_sent(21) & ((\bits_sent[20]~74\) # (GND)))
-- \bits_sent[21]~76\ = CARRY((!\bits_sent[20]~74\) # (!bits_sent(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bits_sent(21),
	datad => VCC,
	cin => \bits_sent[20]~74\,
	combout => \bits_sent[21]~75_combout\,
	cout => \bits_sent[21]~76\);

-- Location: FF_X18_Y9_N11
\bits_sent[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bits_sent[21]~75_combout\,
	sclr => \LessThan0~9_combout\,
	ena => \bits_sent[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits_sent(21));

-- Location: LCCOMB_X18_Y9_N12
\bits_sent[22]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bits_sent[22]~77_combout\ = (bits_sent(22) & (\bits_sent[21]~76\ $ (GND))) # (!bits_sent(22) & (!\bits_sent[21]~76\ & VCC))
-- \bits_sent[22]~78\ = CARRY((bits_sent(22) & !\bits_sent[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bits_sent(22),
	datad => VCC,
	cin => \bits_sent[21]~76\,
	combout => \bits_sent[22]~77_combout\,
	cout => \bits_sent[22]~78\);

-- Location: FF_X18_Y9_N13
\bits_sent[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bits_sent[22]~77_combout\,
	sclr => \LessThan0~9_combout\,
	ena => \bits_sent[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits_sent(22));

-- Location: LCCOMB_X18_Y9_N14
\bits_sent[23]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bits_sent[23]~79_combout\ = (bits_sent(23) & (!\bits_sent[22]~78\)) # (!bits_sent(23) & ((\bits_sent[22]~78\) # (GND)))
-- \bits_sent[23]~80\ = CARRY((!\bits_sent[22]~78\) # (!bits_sent(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bits_sent(23),
	datad => VCC,
	cin => \bits_sent[22]~78\,
	combout => \bits_sent[23]~79_combout\,
	cout => \bits_sent[23]~80\);

-- Location: FF_X18_Y9_N15
\bits_sent[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bits_sent[23]~79_combout\,
	sclr => \LessThan0~9_combout\,
	ena => \bits_sent[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits_sent(23));

-- Location: LCCOMB_X18_Y9_N16
\bits_sent[24]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bits_sent[24]~81_combout\ = (bits_sent(24) & (\bits_sent[23]~80\ $ (GND))) # (!bits_sent(24) & (!\bits_sent[23]~80\ & VCC))
-- \bits_sent[24]~82\ = CARRY((bits_sent(24) & !\bits_sent[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bits_sent(24),
	datad => VCC,
	cin => \bits_sent[23]~80\,
	combout => \bits_sent[24]~81_combout\,
	cout => \bits_sent[24]~82\);

-- Location: FF_X18_Y9_N17
\bits_sent[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bits_sent[24]~81_combout\,
	sclr => \LessThan0~9_combout\,
	ena => \bits_sent[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits_sent(24));

-- Location: LCCOMB_X18_Y9_N18
\bits_sent[25]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bits_sent[25]~83_combout\ = (bits_sent(25) & (!\bits_sent[24]~82\)) # (!bits_sent(25) & ((\bits_sent[24]~82\) # (GND)))
-- \bits_sent[25]~84\ = CARRY((!\bits_sent[24]~82\) # (!bits_sent(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bits_sent(25),
	datad => VCC,
	cin => \bits_sent[24]~82\,
	combout => \bits_sent[25]~83_combout\,
	cout => \bits_sent[25]~84\);

-- Location: FF_X18_Y9_N19
\bits_sent[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bits_sent[25]~83_combout\,
	sclr => \LessThan0~9_combout\,
	ena => \bits_sent[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits_sent(25));

-- Location: LCCOMB_X18_Y9_N20
\bits_sent[26]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bits_sent[26]~85_combout\ = (bits_sent(26) & (\bits_sent[25]~84\ $ (GND))) # (!bits_sent(26) & (!\bits_sent[25]~84\ & VCC))
-- \bits_sent[26]~86\ = CARRY((bits_sent(26) & !\bits_sent[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bits_sent(26),
	datad => VCC,
	cin => \bits_sent[25]~84\,
	combout => \bits_sent[26]~85_combout\,
	cout => \bits_sent[26]~86\);

-- Location: FF_X18_Y9_N21
\bits_sent[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bits_sent[26]~85_combout\,
	sclr => \LessThan0~9_combout\,
	ena => \bits_sent[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits_sent(26));

-- Location: LCCOMB_X18_Y9_N22
\bits_sent[27]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bits_sent[27]~87_combout\ = (bits_sent(27) & (!\bits_sent[26]~86\)) # (!bits_sent(27) & ((\bits_sent[26]~86\) # (GND)))
-- \bits_sent[27]~88\ = CARRY((!\bits_sent[26]~86\) # (!bits_sent(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bits_sent(27),
	datad => VCC,
	cin => \bits_sent[26]~86\,
	combout => \bits_sent[27]~87_combout\,
	cout => \bits_sent[27]~88\);

-- Location: FF_X18_Y9_N23
\bits_sent[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bits_sent[27]~87_combout\,
	sclr => \LessThan0~9_combout\,
	ena => \bits_sent[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits_sent(27));

-- Location: LCCOMB_X18_Y9_N24
\bits_sent[28]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bits_sent[28]~89_combout\ = (bits_sent(28) & (\bits_sent[27]~88\ $ (GND))) # (!bits_sent(28) & (!\bits_sent[27]~88\ & VCC))
-- \bits_sent[28]~90\ = CARRY((bits_sent(28) & !\bits_sent[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bits_sent(28),
	datad => VCC,
	cin => \bits_sent[27]~88\,
	combout => \bits_sent[28]~89_combout\,
	cout => \bits_sent[28]~90\);

-- Location: FF_X18_Y9_N25
\bits_sent[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bits_sent[28]~89_combout\,
	sclr => \LessThan0~9_combout\,
	ena => \bits_sent[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits_sent(28));

-- Location: LCCOMB_X18_Y9_N26
\bits_sent[29]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bits_sent[29]~91_combout\ = (bits_sent(29) & (!\bits_sent[28]~90\)) # (!bits_sent(29) & ((\bits_sent[28]~90\) # (GND)))
-- \bits_sent[29]~92\ = CARRY((!\bits_sent[28]~90\) # (!bits_sent(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bits_sent(29),
	datad => VCC,
	cin => \bits_sent[28]~90\,
	combout => \bits_sent[29]~91_combout\,
	cout => \bits_sent[29]~92\);

-- Location: FF_X18_Y9_N27
\bits_sent[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bits_sent[29]~91_combout\,
	sclr => \LessThan0~9_combout\,
	ena => \bits_sent[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits_sent(29));

-- Location: LCCOMB_X18_Y9_N28
\bits_sent[30]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bits_sent[30]~93_combout\ = (bits_sent(30) & (\bits_sent[29]~92\ $ (GND))) # (!bits_sent(30) & (!\bits_sent[29]~92\ & VCC))
-- \bits_sent[30]~94\ = CARRY((bits_sent(30) & !\bits_sent[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bits_sent(30),
	datad => VCC,
	cin => \bits_sent[29]~92\,
	combout => \bits_sent[30]~93_combout\,
	cout => \bits_sent[30]~94\);

-- Location: FF_X18_Y9_N29
\bits_sent[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bits_sent[30]~93_combout\,
	sclr => \LessThan0~9_combout\,
	ena => \bits_sent[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits_sent(30));

-- Location: LCCOMB_X18_Y9_N30
\bits_sent[31]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bits_sent[31]~95_combout\ = bits_sent(31) $ (\bits_sent[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bits_sent(31),
	cin => \bits_sent[30]~94\,
	combout => \bits_sent[31]~95_combout\);

-- Location: FF_X18_Y9_N31
\bits_sent[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bits_sent[31]~95_combout\,
	sclr => \LessThan0~9_combout\,
	ena => \bits_sent[31]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bits_sent(31));

-- Location: LCCOMB_X19_Y9_N4
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (bits_sent(20)) # ((bits_sent(21)) # ((bits_sent(19)) # (bits_sent(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bits_sent(20),
	datab => bits_sent(21),
	datac => bits_sent(19),
	datad => bits_sent(22),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X19_Y10_N22
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (bits_sent(7)) # ((bits_sent(10)) # ((bits_sent(8)) # (bits_sent(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bits_sent(7),
	datab => bits_sent(10),
	datac => bits_sent(8),
	datad => bits_sent(9),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X19_Y10_N20
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (bits_sent(6)) # ((bits_sent(3)) # ((bits_sent(5)) # (bits_sent(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bits_sent(6),
	datab => bits_sent(3),
	datac => bits_sent(5),
	datad => bits_sent(4),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X19_Y10_N8
\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (bits_sent(13)) # ((bits_sent(14)) # ((bits_sent(12)) # (bits_sent(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bits_sent(13),
	datab => bits_sent(14),
	datac => bits_sent(12),
	datad => bits_sent(11),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X19_Y10_N18
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (bits_sent(18)) # ((bits_sent(15)) # ((bits_sent(16)) # (bits_sent(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bits_sent(18),
	datab => bits_sent(15),
	datac => bits_sent(16),
	datad => bits_sent(17),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X19_Y10_N4
\LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~1_combout\) # ((\LessThan0~0_combout\) # ((\LessThan0~2_combout\) # (\LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \LessThan0~0_combout\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X19_Y10_N14
\LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (bits_sent(23)) # ((bits_sent(24)) # ((bits_sent(25)) # (bits_sent(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bits_sent(23),
	datab => bits_sent(24),
	datac => bits_sent(25),
	datad => bits_sent(26),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X19_Y10_N12
\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (bits_sent(27)) # ((bits_sent(28)) # ((bits_sent(30)) # (bits_sent(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bits_sent(27),
	datab => bits_sent(28),
	datac => bits_sent(30),
	datad => bits_sent(29),
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X19_Y10_N10
\LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (\LessThan0~6_combout\) # (\LessThan0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~6_combout\,
	datad => \LessThan0~7_combout\,
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X19_Y10_N0
\LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (!bits_sent(31) & ((\LessThan0~5_combout\) # ((\LessThan0~4_combout\) # (\LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bits_sent(31),
	datab => \LessThan0~5_combout\,
	datac => \LessThan0~4_combout\,
	datad => \LessThan0~8_combout\,
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X20_Y10_N6
\Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\state.START_TRANSMIT~q\) # ((\state.DATA_TRANSMIT~q\ & !\LessThan0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.START_TRANSMIT~q\,
	datac => \state.DATA_TRANSMIT~q\,
	datad => \LessThan0~9_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X20_Y10_N7
\state.DATA_TRANSMIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.DATA_TRANSMIT~q\);

-- Location: LCCOMB_X20_Y10_N18
\state~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~9_combout\ = (\state.DATA_TRANSMIT~q\ & \LessThan0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.DATA_TRANSMIT~q\,
	datad => \LessThan0~9_combout\,
	combout => \state~9_combout\);

-- Location: FF_X20_Y10_N19
\state.STOP_TRANSMIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.STOP_TRANSMIT~q\);

-- Location: LCCOMB_X20_Y10_N4
\Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\state.STOP_TRANSMIT~q\) # ((\state.WAIT_RESET~q\ & \start_tr~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.STOP_TRANSMIT~q\,
	datac => \state.WAIT_RESET~q\,
	datad => \start_tr~input_o\,
	combout => \Selector3~0_combout\);

-- Location: FF_X20_Y10_N5
\state.WAIT_RESET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.WAIT_RESET~q\);

-- Location: LCCOMB_X20_Y10_N22
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\start_tr~input_o\) # ((!\state.WAIT_RESET~q\ & \state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.WAIT_RESET~q\,
	datac => \state.IDLE~q\,
	datad => \start_tr~input_o\,
	combout => \Selector1~0_combout\);

-- Location: FF_X20_Y10_N23
\state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.IDLE~q\);

-- Location: LCCOMB_X20_Y10_N16
\tx~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx~2_combout\ = (\state.IDLE~q\ & (!\state.STOP_TRANSMIT~q\ & ((\tx~reg0_q\) # (!\state.WAIT_RESET~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~q\,
	datab => \state.STOP_TRANSMIT~q\,
	datac => \state.WAIT_RESET~q\,
	datad => \tx~reg0_q\,
	combout => \tx~2_combout\);

-- Location: IOIBUF_X6_Y10_N1
\data_in[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: IOIBUF_X31_Y9_N22
\data_in[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: LCCOMB_X20_Y10_N10
\shift_register[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shift_register[0]~1_combout\ = (\state.START_TRANSMIT~q\ & ((\rst~input_o\ & ((shift_register(0)))) # (!\rst~input_o\ & (\data_in[0]~input_o\)))) # (!\state.START_TRANSMIT~q\ & (((shift_register(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.START_TRANSMIT~q\,
	datab => \data_in[0]~input_o\,
	datac => shift_register(0),
	datad => \rst~input_o\,
	combout => \shift_register[0]~1_combout\);

-- Location: FF_X20_Y10_N11
\shift_register[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \shift_register[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_register(0));

-- Location: IOIBUF_X31_Y11_N15
\data_in[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: LCCOMB_X20_Y10_N0
\Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\state.DATA_TRANSMIT~q\ & (shift_register(0))) # (!\state.DATA_TRANSMIT~q\ & ((\data_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_register(0),
	datac => \state.DATA_TRANSMIT~q\,
	datad => \data_in[1]~input_o\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X19_Y10_N28
\shift_register[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \shift_register[7]~0_combout\ = (!\rst~input_o\ & ((\state.DATA_TRANSMIT~q\ & ((!\LessThan0~9_combout\))) # (!\state.DATA_TRANSMIT~q\ & (\state.START_TRANSMIT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.DATA_TRANSMIT~q\,
	datab => \state.START_TRANSMIT~q\,
	datac => \rst~input_o\,
	datad => \LessThan0~9_combout\,
	combout => \shift_register[7]~0_combout\);

-- Location: FF_X19_Y10_N11
\shift_register[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector10~0_combout\,
	sload => VCC,
	ena => \shift_register[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_register(1));

-- Location: IOIBUF_X19_Y0_N15
\data_in[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: LCCOMB_X20_Y10_N20
\Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\state.DATA_TRANSMIT~q\ & (shift_register(1))) # (!\state.DATA_TRANSMIT~q\ & ((\data_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_register(1),
	datab => \state.DATA_TRANSMIT~q\,
	datac => \data_in[2]~input_o\,
	combout => \Selector9~0_combout\);

-- Location: FF_X20_Y10_N21
\shift_register[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	ena => \shift_register[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_register(2));

-- Location: IOIBUF_X6_Y10_N8
\data_in[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: LCCOMB_X19_Y10_N30
\Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\state.DATA_TRANSMIT~q\ & (shift_register(2))) # (!\state.DATA_TRANSMIT~q\ & ((\data_in[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_register(2),
	datac => \data_in[3]~input_o\,
	datad => \state.DATA_TRANSMIT~q\,
	combout => \Selector8~0_combout\);

-- Location: FF_X19_Y10_N31
\shift_register[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	ena => \shift_register[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_register(3));

-- Location: LCCOMB_X19_Y10_N24
\Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\state.DATA_TRANSMIT~q\ & ((shift_register(3)))) # (!\state.DATA_TRANSMIT~q\ & (\data_in[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[4]~input_o\,
	datac => shift_register(3),
	datad => \state.DATA_TRANSMIT~q\,
	combout => \Selector7~0_combout\);

-- Location: FF_X19_Y10_N25
\shift_register[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	ena => \shift_register[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_register(4));

-- Location: IOIBUF_X31_Y11_N8
\data_in[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: LCCOMB_X19_Y10_N2
\Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\state.DATA_TRANSMIT~q\ & (shift_register(4))) # (!\state.DATA_TRANSMIT~q\ & ((\data_in[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.DATA_TRANSMIT~q\,
	datab => shift_register(4),
	datac => \data_in[5]~input_o\,
	combout => \Selector6~0_combout\);

-- Location: FF_X19_Y10_N3
\shift_register[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	ena => \shift_register[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_register(5));

-- Location: IOIBUF_X31_Y11_N1
\data_in[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: LCCOMB_X19_Y10_N26
\Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\state.DATA_TRANSMIT~q\ & (shift_register(5))) # (!\state.DATA_TRANSMIT~q\ & ((\data_in[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.DATA_TRANSMIT~q\,
	datab => shift_register(5),
	datad => \data_in[6]~input_o\,
	combout => \Selector5~0_combout\);

-- Location: FF_X19_Y10_N27
\shift_register[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	ena => \shift_register[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_register(6));

-- Location: IOIBUF_X6_Y10_N29
\data_in[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: LCCOMB_X19_Y10_N6
\Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\state.DATA_TRANSMIT~q\ & (shift_register(6))) # (!\state.DATA_TRANSMIT~q\ & ((\data_in[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_register(6),
	datab => \data_in[7]~input_o\,
	datad => \state.DATA_TRANSMIT~q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X19_Y10_N7
\shift_register[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	ena => \shift_register[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_register(7));

-- Location: LCCOMB_X20_Y10_N24
\tx~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx~3_combout\ = (\state.DATA_TRANSMIT~q\ & ((\LessThan0~9_combout\ & ((!\tx~reg0_q\))) # (!\LessThan0~9_combout\ & (shift_register(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.DATA_TRANSMIT~q\,
	datab => shift_register(7),
	datac => \LessThan0~9_combout\,
	datad => \tx~reg0_q\,
	combout => \tx~3_combout\);

-- Location: LCCOMB_X20_Y10_N28
\tx~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx~4_combout\ = (\rst~input_o\ & (((\tx~reg0_q\)))) # (!\rst~input_o\ & (\tx~2_combout\ & ((!\tx~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \tx~2_combout\,
	datac => \tx~reg0_q\,
	datad => \tx~3_combout\,
	combout => \tx~4_combout\);

-- Location: FF_X20_Y10_N29
\tx~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx~reg0_q\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_tx <= \tx~output_o\;
END structure;


