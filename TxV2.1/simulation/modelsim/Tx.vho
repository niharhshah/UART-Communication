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

-- DATE "08/05/2021 22:56:32"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	Tx IS
    PORT (
	data_in : IN std_logic_vector(7 DOWNTO 0);
	Tx : OUT std_logic;
	send : IN std_logic;
	state_show : OUT std_logic_vector(1 DOWNTO 0);
	Clock_show : OUT std_logic;
	clk : IN std_logic
	);
END Tx;

-- Design Ports Information


ARCHITECTURE structure OF Tx IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_data_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Tx : std_logic;
SIGNAL ww_send : std_logic;
SIGNAL ww_state_show : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Clock_show : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL \done|Add0~155\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \probhai|fulsped|Add0~30_combout\ : std_logic;
SIGNAL \probhai|fulsped|Add0~32\ : std_logic;
SIGNAL \probhai|fulsped|Add0~32COUT1_55\ : std_logic;
SIGNAL \probhai|fulsped|Add0~35_combout\ : std_logic;
SIGNAL \probhai|fulsped|Add0~37\ : std_logic;
SIGNAL \probhai|fulsped|Add0~37COUT1_56\ : std_logic;
SIGNAL \probhai|fulsped|Add0~20_combout\ : std_logic;
SIGNAL \probhai|fulsped|Add0~15_combout\ : std_logic;
SIGNAL \probhai|fulsped|Add0~17\ : std_logic;
SIGNAL \probhai|fulsped|Add0~17COUT1_51\ : std_logic;
SIGNAL \probhai|fulsped|Add0~5_combout\ : std_logic;
SIGNAL \probhai|fulsped|Add0~7\ : std_logic;
SIGNAL \probhai|fulsped|Add0~7COUT1_52\ : std_logic;
SIGNAL \probhai|fulsped|Add0~10_combout\ : std_logic;
SIGNAL \probhai|fulsped|Add0~12\ : std_logic;
SIGNAL \probhai|fulsped|Add0~12COUT1_53\ : std_logic;
SIGNAL \probhai|fulsped|Add0~0_combout\ : std_logic;
SIGNAL \probhai|fulsped|Add0~2\ : std_logic;
SIGNAL \probhai|fulsped|Add0~2COUT1_54\ : std_logic;
SIGNAL \probhai|fulsped|Add0~25_combout\ : std_logic;
SIGNAL \probhai|fulsped|Add0~27\ : std_logic;
SIGNAL \probhai|fulsped|Equal0~0\ : std_logic;
SIGNAL \probhai|fulsped|Add0~22\ : std_logic;
SIGNAL \probhai|fulsped|Add0~22COUT1_57\ : std_logic;
SIGNAL \probhai|fulsped|Add0~45_combout\ : std_logic;
SIGNAL \probhai|fulsped|Equal0~1\ : std_logic;
SIGNAL \probhai|fulsped|Add0~47\ : std_logic;
SIGNAL \probhai|fulsped|Add0~47COUT1_58\ : std_logic;
SIGNAL \probhai|fulsped|Add0~40_combout\ : std_logic;
SIGNAL \probhai|fulsped|Equal0~2\ : std_logic;
SIGNAL \probhai|fulsped|clk~regout\ : std_logic;
SIGNAL \probhai|count[0]~1\ : std_logic;
SIGNAL \probhai|count[0]~1COUT1_15\ : std_logic;
SIGNAL \probhai|count[1]~3\ : std_logic;
SIGNAL \probhai|count[1]~3COUT1_16\ : std_logic;
SIGNAL \probhai|count[2]~5\ : std_logic;
SIGNAL \probhai|count[2]~5COUT1_17\ : std_logic;
SIGNAL \probhai|count[3]~7\ : std_logic;
SIGNAL \probhai|count[4]~9\ : std_logic;
SIGNAL \probhai|count[4]~9COUT1_18\ : std_logic;
SIGNAL \probhai|count[5]~11\ : std_logic;
SIGNAL \probhai|count[5]~11COUT1_19\ : std_logic;
SIGNAL \probhai|LessThan0~0_combout\ : std_logic;
SIGNAL \probhai|LessThan0~1_combout\ : std_logic;
SIGNAL \probhai|clk~regout\ : std_logic;
SIGNAL \done|Add0~150_combout\ : std_logic;
SIGNAL \Selector2~0\ : std_logic;
SIGNAL \send~combout\ : std_logic;
SIGNAL \Selector1~0\ : std_logic;
SIGNAL \present.Whait~regout\ : std_logic;
SIGNAL \nxt.Stop~regout\ : std_logic;
SIGNAL \present.Stop~regout\ : std_logic;
SIGNAL \nxt.Load~regout\ : std_logic;
SIGNAL \present.Load~regout\ : std_logic;
SIGNAL \ien~regout\ : std_logic;
SIGNAL \done|Add0~152\ : std_logic;
SIGNAL \done|Add0~152COUT1_161\ : std_logic;
SIGNAL \done|Add0~145_combout\ : std_logic;
SIGNAL \done|Add0~147\ : std_logic;
SIGNAL \done|Add0~147COUT1_162\ : std_logic;
SIGNAL \done|Add0~142\ : std_logic;
SIGNAL \done|Add0~142COUT1_163\ : std_logic;
SIGNAL \done|Add0~135_combout\ : std_logic;
SIGNAL \done|Add0~137\ : std_logic;
SIGNAL \done|Add0~137COUT1_164\ : std_logic;
SIGNAL \done|Add0~130_combout\ : std_logic;
SIGNAL \done|Add0~132\ : std_logic;
SIGNAL \done|Add0~125_combout\ : std_logic;
SIGNAL \done|Add0~127\ : std_logic;
SIGNAL \done|Add0~127COUT1_165\ : std_logic;
SIGNAL \done|Add0~120_combout\ : std_logic;
SIGNAL \done|Equal0~8\ : std_logic;
SIGNAL \done|Add0~122\ : std_logic;
SIGNAL \done|Add0~122COUT1_166\ : std_logic;
SIGNAL \done|Add0~105_combout\ : std_logic;
SIGNAL \done|Add0~107\ : std_logic;
SIGNAL \done|Add0~107COUT1_167\ : std_logic;
SIGNAL \done|Add0~100_combout\ : std_logic;
SIGNAL \done|Add0~102\ : std_logic;
SIGNAL \done|Add0~102COUT1_168\ : std_logic;
SIGNAL \done|Add0~95_combout\ : std_logic;
SIGNAL \done|Add0~97\ : std_logic;
SIGNAL \done|Equal0~5\ : std_logic;
SIGNAL \done|Add0~90_combout\ : std_logic;
SIGNAL \done|Add0~92\ : std_logic;
SIGNAL \done|Add0~92COUT1_169\ : std_logic;
SIGNAL \done|Add0~115_combout\ : std_logic;
SIGNAL \done|Add0~117\ : std_logic;
SIGNAL \done|Add0~117COUT1_170\ : std_logic;
SIGNAL \done|Add0~110_combout\ : std_logic;
SIGNAL \done|Equal0~6\ : std_logic;
SIGNAL \done|Add0~112\ : std_logic;
SIGNAL \done|Add0~112COUT1_171\ : std_logic;
SIGNAL \done|Add0~85_combout\ : std_logic;
SIGNAL \done|Add0~87\ : std_logic;
SIGNAL \done|Add0~87COUT1_172\ : std_logic;
SIGNAL \done|Add0~80_combout\ : std_logic;
SIGNAL \done|Add0~82\ : std_logic;
SIGNAL \done|Add0~75_combout\ : std_logic;
SIGNAL \done|Add0~77\ : std_logic;
SIGNAL \done|Add0~77COUT1_173\ : std_logic;
SIGNAL \done|Add0~70_combout\ : std_logic;
SIGNAL \done|Add0~72\ : std_logic;
SIGNAL \done|Add0~72COUT1_174\ : std_logic;
SIGNAL \done|Add0~65_combout\ : std_logic;
SIGNAL \done|Add0~67\ : std_logic;
SIGNAL \done|Add0~67COUT1_175\ : std_logic;
SIGNAL \done|Add0~60_combout\ : std_logic;
SIGNAL \done|Add0~62\ : std_logic;
SIGNAL \done|Add0~62COUT1_176\ : std_logic;
SIGNAL \done|Add0~55_combout\ : std_logic;
SIGNAL \done|Add0~57\ : std_logic;
SIGNAL \done|Add0~50_combout\ : std_logic;
SIGNAL \done|Add0~52\ : std_logic;
SIGNAL \done|Add0~52COUT1_177\ : std_logic;
SIGNAL \done|Add0~45_combout\ : std_logic;
SIGNAL \done|Add0~47\ : std_logic;
SIGNAL \done|Add0~47COUT1_178\ : std_logic;
SIGNAL \done|Add0~40_combout\ : std_logic;
SIGNAL \done|Add0~42\ : std_logic;
SIGNAL \done|Add0~42COUT1_179\ : std_logic;
SIGNAL \done|Add0~35_combout\ : std_logic;
SIGNAL \done|Add0~37\ : std_logic;
SIGNAL \done|Add0~37COUT1_180\ : std_logic;
SIGNAL \done|Add0~30_combout\ : std_logic;
SIGNAL \done|Add0~32\ : std_logic;
SIGNAL \done|Add0~25_combout\ : std_logic;
SIGNAL \done|Add0~27\ : std_logic;
SIGNAL \done|Add0~27COUT1_181\ : std_logic;
SIGNAL \done|Add0~20_combout\ : std_logic;
SIGNAL \done|Add0~22\ : std_logic;
SIGNAL \done|Add0~22COUT1_182\ : std_logic;
SIGNAL \done|Add0~15_combout\ : std_logic;
SIGNAL \done|Add0~17\ : std_logic;
SIGNAL \done|Add0~17COUT1_183\ : std_logic;
SIGNAL \done|Add0~10_combout\ : std_logic;
SIGNAL \done|Add0~12\ : std_logic;
SIGNAL \done|Add0~12COUT1_184\ : std_logic;
SIGNAL \done|Add0~5_combout\ : std_logic;
SIGNAL \done|Add0~7\ : std_logic;
SIGNAL \done|Add0~0_combout\ : std_logic;
SIGNAL \done|Equal0~0\ : std_logic;
SIGNAL \done|Equal0~3\ : std_logic;
SIGNAL \done|Equal0~1\ : std_logic;
SIGNAL \done|Equal0~2\ : std_logic;
SIGNAL \done|Equal0~4_combout\ : std_logic;
SIGNAL \done|Equal0~7\ : std_logic;
SIGNAL \done|Equal0~10\ : std_logic;
SIGNAL \done|Add0~157_cout\ : std_logic;
SIGNAL \done|Add0~140_combout\ : std_logic;
SIGNAL \done|Equal0~9\ : std_logic;
SIGNAL \done|done~regout\ : std_logic;
SIGNAL \nxt.Transmit~regout\ : std_logic;
SIGNAL \present.Transmit~regout\ : std_logic;
SIGNAL \nxt.Whait~regout\ : std_logic;
SIGNAL \data~0\ : std_logic;
SIGNAL \Tx~0\ : std_logic;
SIGNAL \Tx~reg0_regout\ : std_logic;
SIGNAL \state_show~0_combout\ : std_logic;
SIGNAL data : std_logic_vector(8 DOWNTO 0);
SIGNAL \probhai|fulsped|count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \probhai|count\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \data_in~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \done|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_ien~regout\ : std_logic;
SIGNAL \ALT_INV_Tx~0\ : std_logic;
SIGNAL \ALT_INV_state_show~0_combout\ : std_logic;
SIGNAL \ALT_INV_Tx~reg0_regout\ : std_logic;

BEGIN

ww_data_in <= data_in;
Tx <= ww_Tx;
ww_send <= send;
state_show <= ww_state_show;
Clock_show <= ww_Clock_show;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_ien~regout\ <= NOT \ien~regout\;
\ALT_INV_Tx~0\ <= NOT \Tx~0\;
\ALT_INV_state_show~0_combout\ <= NOT \state_show~0_combout\;
\ALT_INV_Tx~reg0_regout\ <= NOT \Tx~reg0_regout\;

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: LC_X8_Y7_N5
\probhai|fulsped|Add0~30\ : maxv_lcell
-- Equation(s):
-- \probhai|fulsped|Add0~30_combout\ = \probhai|fulsped|count\(5) $ ((((\probhai|fulsped|Add0~27\))))
-- \probhai|fulsped|Add0~32\ = CARRY(((!\probhai|fulsped|Add0~27\)) # (!\probhai|fulsped|count\(5)))
-- \probhai|fulsped|Add0~32COUT1_55\ = CARRY(((!\probhai|fulsped|Add0~27\)) # (!\probhai|fulsped|count\(5)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \probhai|fulsped|count\(5),
	cin => \probhai|fulsped|Add0~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \probhai|fulsped|Add0~30_combout\,
	cout0 => \probhai|fulsped|Add0~32\,
	cout1 => \probhai|fulsped|Add0~32COUT1_55\);

-- Location: LC_X9_Y7_N7
\probhai|fulsped|count[5]\ : maxv_lcell
-- Equation(s):
-- \probhai|fulsped|count\(5) = DFFEAS((((\probhai|fulsped|Add0~30_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \probhai|fulsped|Add0~30_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \probhai|fulsped|count\(5));

-- Location: LC_X8_Y7_N6
\probhai|fulsped|Add0~35\ : maxv_lcell
-- Equation(s):
-- \probhai|fulsped|Add0~35_combout\ = \probhai|fulsped|count\(6) $ ((((!(!\probhai|fulsped|Add0~27\ & \probhai|fulsped|Add0~32\) # (\probhai|fulsped|Add0~27\ & \probhai|fulsped|Add0~32COUT1_55\)))))
-- \probhai|fulsped|Add0~37\ = CARRY((\probhai|fulsped|count\(6) & ((!\probhai|fulsped|Add0~32\))))
-- \probhai|fulsped|Add0~37COUT1_56\ = CARRY((\probhai|fulsped|count\(6) & ((!\probhai|fulsped|Add0~32COUT1_55\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \probhai|fulsped|count\(6),
	cin => \probhai|fulsped|Add0~27\,
	cin0 => \probhai|fulsped|Add0~32\,
	cin1 => \probhai|fulsped|Add0~32COUT1_55\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \probhai|fulsped|Add0~35_combout\,
	cout0 => \probhai|fulsped|Add0~37\,
	cout1 => \probhai|fulsped|Add0~37COUT1_56\);

-- Location: LC_X9_Y7_N6
\probhai|fulsped|count[6]\ : maxv_lcell
-- Equation(s):
-- \probhai|fulsped|count\(6) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \probhai|fulsped|Add0~35_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \probhai|fulsped|Add0~35_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \probhai|fulsped|count\(6));

-- Location: LC_X8_Y7_N7
\probhai|fulsped|Add0~20\ : maxv_lcell
-- Equation(s):
-- \probhai|fulsped|Add0~20_combout\ = (\probhai|fulsped|count\(7) $ (((!\probhai|fulsped|Add0~27\ & \probhai|fulsped|Add0~37\) # (\probhai|fulsped|Add0~27\ & \probhai|fulsped|Add0~37COUT1_56\))))
-- \probhai|fulsped|Add0~22\ = CARRY(((!\probhai|fulsped|Add0~37\) # (!\probhai|fulsped|count\(7))))
-- \probhai|fulsped|Add0~22COUT1_57\ = CARRY(((!\probhai|fulsped|Add0~37COUT1_56\) # (!\probhai|fulsped|count\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \probhai|fulsped|count\(7),
	cin => \probhai|fulsped|Add0~27\,
	cin0 => \probhai|fulsped|Add0~37\,
	cin1 => \probhai|fulsped|Add0~37COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \probhai|fulsped|Add0~20_combout\,
	cout0 => \probhai|fulsped|Add0~22\,
	cout1 => \probhai|fulsped|Add0~22COUT1_57\);

-- Location: LC_X9_Y7_N5
\probhai|fulsped|count[7]\ : maxv_lcell
-- Equation(s):
-- \probhai|fulsped|count\(7) = DFFEAS((!\probhai|fulsped|Equal0~2\ & (((\probhai|fulsped|Add0~20_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \probhai|fulsped|Equal0~2\,
	datad => \probhai|fulsped|Add0~20_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \probhai|fulsped|count\(7));

-- Location: LC_X8_Y7_N0
\probhai|fulsped|Add0~15\ : maxv_lcell
-- Equation(s):
-- \probhai|fulsped|Add0~15_combout\ = ((!\probhai|fulsped|count\(0)))
-- \probhai|fulsped|Add0~17\ = CARRY(((\probhai|fulsped|count\(0))))
-- \probhai|fulsped|Add0~17COUT1_51\ = CARRY(((\probhai|fulsped|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \probhai|fulsped|count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \probhai|fulsped|Add0~15_combout\,
	cout0 => \probhai|fulsped|Add0~17\,
	cout1 => \probhai|fulsped|Add0~17COUT1_51\);

-- Location: LC_X9_Y7_N2
\probhai|fulsped|count[0]\ : maxv_lcell
-- Equation(s):
-- \probhai|fulsped|count\(0) = DFFEAS((!\probhai|fulsped|Equal0~2\ & (((\probhai|fulsped|Add0~15_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \probhai|fulsped|Equal0~2\,
	datad => \probhai|fulsped|Add0~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \probhai|fulsped|count\(0));

-- Location: LC_X8_Y7_N1
\probhai|fulsped|Add0~5\ : maxv_lcell
-- Equation(s):
-- \probhai|fulsped|Add0~5_combout\ = (\probhai|fulsped|count\(1) $ ((\probhai|fulsped|Add0~17\)))
-- \probhai|fulsped|Add0~7\ = CARRY(((!\probhai|fulsped|Add0~17\) # (!\probhai|fulsped|count\(1))))
-- \probhai|fulsped|Add0~7COUT1_52\ = CARRY(((!\probhai|fulsped|Add0~17COUT1_51\) # (!\probhai|fulsped|count\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \probhai|fulsped|count\(1),
	cin0 => \probhai|fulsped|Add0~17\,
	cin1 => \probhai|fulsped|Add0~17COUT1_51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \probhai|fulsped|Add0~5_combout\,
	cout0 => \probhai|fulsped|Add0~7\,
	cout1 => \probhai|fulsped|Add0~7COUT1_52\);

-- Location: LC_X9_Y7_N9
\probhai|fulsped|count[1]\ : maxv_lcell
-- Equation(s):
-- \probhai|fulsped|count\(1) = DFFEAS((((\probhai|fulsped|Add0~5_combout\ & !\probhai|fulsped|Equal0~2\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \probhai|fulsped|Add0~5_combout\,
	datad => \probhai|fulsped|Equal0~2\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \probhai|fulsped|count\(1));

-- Location: LC_X8_Y7_N2
\probhai|fulsped|Add0~10\ : maxv_lcell
-- Equation(s):
-- \probhai|fulsped|Add0~10_combout\ = \probhai|fulsped|count\(2) $ ((((!\probhai|fulsped|Add0~7\))))
-- \probhai|fulsped|Add0~12\ = CARRY((\probhai|fulsped|count\(2) & ((!\probhai|fulsped|Add0~7\))))
-- \probhai|fulsped|Add0~12COUT1_53\ = CARRY((\probhai|fulsped|count\(2) & ((!\probhai|fulsped|Add0~7COUT1_52\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \probhai|fulsped|count\(2),
	cin0 => \probhai|fulsped|Add0~7\,
	cin1 => \probhai|fulsped|Add0~7COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \probhai|fulsped|Add0~10_combout\,
	cout0 => \probhai|fulsped|Add0~12\,
	cout1 => \probhai|fulsped|Add0~12COUT1_53\);

-- Location: LC_X9_Y7_N1
\probhai|fulsped|count[2]\ : maxv_lcell
-- Equation(s):
-- \probhai|fulsped|Equal0~0\ = (\probhai|fulsped|count\(3) & (\probhai|fulsped|count\(1) & (!D1_count[2] & !\probhai|fulsped|count\(0))))
-- \probhai|fulsped|count\(2) = DFFEAS(\probhai|fulsped|Equal0~0\, GLOBAL(\clk~combout\), VCC, , , \probhai|fulsped|Add0~10_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \probhai|fulsped|count\(3),
	datab => \probhai|fulsped|count\(1),
	datac => \probhai|fulsped|Add0~10_combout\,
	datad => \probhai|fulsped|count\(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \probhai|fulsped|Equal0~0\,
	regout => \probhai|fulsped|count\(2));

-- Location: LC_X8_Y7_N3
\probhai|fulsped|Add0~0\ : maxv_lcell
-- Equation(s):
-- \probhai|fulsped|Add0~0_combout\ = (\probhai|fulsped|count\(3) $ ((\probhai|fulsped|Add0~12\)))
-- \probhai|fulsped|Add0~2\ = CARRY(((!\probhai|fulsped|Add0~12\) # (!\probhai|fulsped|count\(3))))
-- \probhai|fulsped|Add0~2COUT1_54\ = CARRY(((!\probhai|fulsped|Add0~12COUT1_53\) # (!\probhai|fulsped|count\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \probhai|fulsped|count\(3),
	cin0 => \probhai|fulsped|Add0~12\,
	cin1 => \probhai|fulsped|Add0~12COUT1_53\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \probhai|fulsped|Add0~0_combout\,
	cout0 => \probhai|fulsped|Add0~2\,
	cout1 => \probhai|fulsped|Add0~2COUT1_54\);

-- Location: LC_X9_Y7_N4
\probhai|fulsped|count[3]\ : maxv_lcell
-- Equation(s):
-- \probhai|fulsped|count\(3) = DFFEAS((!\probhai|fulsped|Equal0~2\ & (((\probhai|fulsped|Add0~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \probhai|fulsped|Equal0~2\,
	datad => \probhai|fulsped|Add0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \probhai|fulsped|count\(3));

-- Location: LC_X8_Y7_N4
\probhai|fulsped|Add0~25\ : maxv_lcell
-- Equation(s):
-- \probhai|fulsped|Add0~25_combout\ = \probhai|fulsped|count\(4) $ ((((!\probhai|fulsped|Add0~2\))))
-- \probhai|fulsped|Add0~27\ = CARRY((\probhai|fulsped|count\(4) & ((!\probhai|fulsped|Add0~2COUT1_54\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \probhai|fulsped|count\(4),
	cin0 => \probhai|fulsped|Add0~2\,
	cin1 => \probhai|fulsped|Add0~2COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \probhai|fulsped|Add0~25_combout\,
	cout => \probhai|fulsped|Add0~27\);

-- Location: LC_X9_Y7_N3
\probhai|fulsped|count[4]\ : maxv_lcell
-- Equation(s):
-- \probhai|fulsped|Equal0~1\ = (\probhai|fulsped|count\(7) & (!\probhai|fulsped|count\(5) & (!D1_count[4] & !\probhai|fulsped|count\(6))))
-- \probhai|fulsped|count\(4) = DFFEAS(\probhai|fulsped|Equal0~1\, GLOBAL(\clk~combout\), VCC, , , \probhai|fulsped|Add0~25_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \probhai|fulsped|count\(7),
	datab => \probhai|fulsped|count\(5),
	datac => \probhai|fulsped|Add0~25_combout\,
	datad => \probhai|fulsped|count\(6),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \probhai|fulsped|Equal0~1\,
	regout => \probhai|fulsped|count\(4));

-- Location: LC_X8_Y7_N8
\probhai|fulsped|Add0~45\ : maxv_lcell
-- Equation(s):
-- \probhai|fulsped|Add0~45_combout\ = (\probhai|fulsped|count\(8) $ ((!(!\probhai|fulsped|Add0~27\ & \probhai|fulsped|Add0~22\) # (\probhai|fulsped|Add0~27\ & \probhai|fulsped|Add0~22COUT1_57\))))
-- \probhai|fulsped|Add0~47\ = CARRY(((\probhai|fulsped|count\(8) & !\probhai|fulsped|Add0~22\)))
-- \probhai|fulsped|Add0~47COUT1_58\ = CARRY(((\probhai|fulsped|count\(8) & !\probhai|fulsped|Add0~22COUT1_57\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \probhai|fulsped|count\(8),
	cin => \probhai|fulsped|Add0~27\,
	cin0 => \probhai|fulsped|Add0~22\,
	cin1 => \probhai|fulsped|Add0~22COUT1_57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \probhai|fulsped|Add0~45_combout\,
	cout0 => \probhai|fulsped|Add0~47\,
	cout1 => \probhai|fulsped|Add0~47COUT1_58\);

-- Location: LC_X9_Y7_N8
\probhai|fulsped|count[8]\ : maxv_lcell
-- Equation(s):
-- \probhai|fulsped|Equal0~2\ = (\probhai|fulsped|count\(9) & (\probhai|fulsped|Equal0~0\ & (!D1_count[8] & \probhai|fulsped|Equal0~1\)))
-- \probhai|fulsped|count\(8) = DFFEAS(\probhai|fulsped|Equal0~2\, GLOBAL(\clk~combout\), VCC, , , \probhai|fulsped|Add0~45_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \probhai|fulsped|count\(9),
	datab => \probhai|fulsped|Equal0~0\,
	datac => \probhai|fulsped|Add0~45_combout\,
	datad => \probhai|fulsped|Equal0~1\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \probhai|fulsped|Equal0~2\,
	regout => \probhai|fulsped|count\(8));

-- Location: LC_X8_Y7_N9
\probhai|fulsped|Add0~40\ : maxv_lcell
-- Equation(s):
-- \probhai|fulsped|Add0~40_combout\ = \probhai|fulsped|count\(9) $ (((((!\probhai|fulsped|Add0~27\ & \probhai|fulsped|Add0~47\) # (\probhai|fulsped|Add0~27\ & \probhai|fulsped|Add0~47COUT1_58\)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \probhai|fulsped|count\(9),
	cin => \probhai|fulsped|Add0~27\,
	cin0 => \probhai|fulsped|Add0~47\,
	cin1 => \probhai|fulsped|Add0~47COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \probhai|fulsped|Add0~40_combout\);

-- Location: LC_X9_Y7_N0
\probhai|fulsped|count[9]\ : maxv_lcell
-- Equation(s):
-- \probhai|fulsped|count\(9) = DFFEAS((((\probhai|fulsped|Add0~40_combout\ & !\probhai|fulsped|Equal0~2\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \probhai|fulsped|Add0~40_combout\,
	datad => \probhai|fulsped|Equal0~2\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \probhai|fulsped|count\(9));

-- Location: LC_X10_Y7_N2
\probhai|fulsped|clk\ : maxv_lcell
-- Equation(s):
-- \probhai|fulsped|clk~regout\ = DFFEAS((\probhai|fulsped|clk~regout\ $ ((\probhai|fulsped|Equal0~2\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \probhai|fulsped|clk~regout\,
	datac => \probhai|fulsped|Equal0~2\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \probhai|fulsped|clk~regout\);

-- Location: LC_X12_Y3_N1
\probhai|count[0]\ : maxv_lcell
-- Equation(s):
-- \probhai|count\(0) = DFFEAS(((!\probhai|count\(0))), GLOBAL(\probhai|fulsped|clk~regout\), VCC, , , , , \probhai|LessThan0~1_combout\, )
-- \probhai|count[0]~1\ = CARRY(((\probhai|count\(0))))
-- \probhai|count[0]~1COUT1_15\ = CARRY(((\probhai|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhai|fulsped|clk~regout\,
	datab => \probhai|count\(0),
	aclr => GND,
	sclr => \probhai|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \probhai|count\(0),
	cout0 => \probhai|count[0]~1\,
	cout1 => \probhai|count[0]~1COUT1_15\);

-- Location: LC_X12_Y3_N2
\probhai|count[1]\ : maxv_lcell
-- Equation(s):
-- \probhai|count\(1) = DFFEAS((\probhai|count\(1) $ ((\probhai|count[0]~1\))), GLOBAL(\probhai|fulsped|clk~regout\), VCC, , , , , \probhai|LessThan0~1_combout\, )
-- \probhai|count[1]~3\ = CARRY(((!\probhai|count[0]~1\) # (!\probhai|count\(1))))
-- \probhai|count[1]~3COUT1_16\ = CARRY(((!\probhai|count[0]~1COUT1_15\) # (!\probhai|count\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhai|fulsped|clk~regout\,
	datab => \probhai|count\(1),
	aclr => GND,
	sclr => \probhai|LessThan0~1_combout\,
	cin0 => \probhai|count[0]~1\,
	cin1 => \probhai|count[0]~1COUT1_15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \probhai|count\(1),
	cout0 => \probhai|count[1]~3\,
	cout1 => \probhai|count[1]~3COUT1_16\);

-- Location: LC_X12_Y3_N3
\probhai|count[2]\ : maxv_lcell
-- Equation(s):
-- \probhai|count\(2) = DFFEAS(\probhai|count\(2) $ ((((!\probhai|count[1]~3\)))), GLOBAL(\probhai|fulsped|clk~regout\), VCC, , , , , \probhai|LessThan0~1_combout\, )
-- \probhai|count[2]~5\ = CARRY((\probhai|count\(2) & ((!\probhai|count[1]~3\))))
-- \probhai|count[2]~5COUT1_17\ = CARRY((\probhai|count\(2) & ((!\probhai|count[1]~3COUT1_16\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhai|fulsped|clk~regout\,
	dataa => \probhai|count\(2),
	aclr => GND,
	sclr => \probhai|LessThan0~1_combout\,
	cin0 => \probhai|count[1]~3\,
	cin1 => \probhai|count[1]~3COUT1_16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \probhai|count\(2),
	cout0 => \probhai|count[2]~5\,
	cout1 => \probhai|count[2]~5COUT1_17\);

-- Location: LC_X12_Y3_N4
\probhai|count[3]\ : maxv_lcell
-- Equation(s):
-- \probhai|count\(3) = DFFEAS((\probhai|count\(3) $ ((\probhai|count[2]~5\))), GLOBAL(\probhai|fulsped|clk~regout\), VCC, , , , , \probhai|LessThan0~1_combout\, )
-- \probhai|count[3]~7\ = CARRY(((!\probhai|count[2]~5COUT1_17\) # (!\probhai|count\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhai|fulsped|clk~regout\,
	datab => \probhai|count\(3),
	aclr => GND,
	sclr => \probhai|LessThan0~1_combout\,
	cin0 => \probhai|count[2]~5\,
	cin1 => \probhai|count[2]~5COUT1_17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \probhai|count\(3),
	cout => \probhai|count[3]~7\);

-- Location: LC_X12_Y3_N5
\probhai|count[4]\ : maxv_lcell
-- Equation(s):
-- \probhai|count\(4) = DFFEAS(\probhai|count\(4) $ ((((!\probhai|count[3]~7\)))), GLOBAL(\probhai|fulsped|clk~regout\), VCC, , , , , \probhai|LessThan0~1_combout\, )
-- \probhai|count[4]~9\ = CARRY((\probhai|count\(4) & ((!\probhai|count[3]~7\))))
-- \probhai|count[4]~9COUT1_18\ = CARRY((\probhai|count\(4) & ((!\probhai|count[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhai|fulsped|clk~regout\,
	dataa => \probhai|count\(4),
	aclr => GND,
	sclr => \probhai|LessThan0~1_combout\,
	cin => \probhai|count[3]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \probhai|count\(4),
	cout0 => \probhai|count[4]~9\,
	cout1 => \probhai|count[4]~9COUT1_18\);

-- Location: LC_X12_Y3_N6
\probhai|count[5]\ : maxv_lcell
-- Equation(s):
-- \probhai|count\(5) = DFFEAS(\probhai|count\(5) $ (((((!\probhai|count[3]~7\ & \probhai|count[4]~9\) # (\probhai|count[3]~7\ & \probhai|count[4]~9COUT1_18\))))), GLOBAL(\probhai|fulsped|clk~regout\), VCC, , , , , \probhai|LessThan0~1_combout\, )
-- \probhai|count[5]~11\ = CARRY(((!\probhai|count[4]~9\)) # (!\probhai|count\(5)))
-- \probhai|count[5]~11COUT1_19\ = CARRY(((!\probhai|count[4]~9COUT1_18\)) # (!\probhai|count\(5)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhai|fulsped|clk~regout\,
	dataa => \probhai|count\(5),
	aclr => GND,
	sclr => \probhai|LessThan0~1_combout\,
	cin => \probhai|count[3]~7\,
	cin0 => \probhai|count[4]~9\,
	cin1 => \probhai|count[4]~9COUT1_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \probhai|count\(5),
	cout0 => \probhai|count[5]~11\,
	cout1 => \probhai|count[5]~11COUT1_19\);

-- Location: LC_X12_Y3_N7
\probhai|count[6]\ : maxv_lcell
-- Equation(s):
-- \probhai|count\(6) = DFFEAS((\probhai|count\(6) $ ((!(!\probhai|count[3]~7\ & \probhai|count[5]~11\) # (\probhai|count[3]~7\ & \probhai|count[5]~11COUT1_19\)))), GLOBAL(\probhai|fulsped|clk~regout\), VCC, , , , , \probhai|LessThan0~1_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c3c3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhai|fulsped|clk~regout\,
	datab => \probhai|count\(6),
	aclr => GND,
	sclr => \probhai|LessThan0~1_combout\,
	cin => \probhai|count[3]~7\,
	cin0 => \probhai|count[5]~11\,
	cin1 => \probhai|count[5]~11COUT1_19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \probhai|count\(6));

-- Location: LC_X12_Y3_N9
\probhai|LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \probhai|LessThan0~0_combout\ = (!\probhai|count\(3) & (!\probhai|count\(2) & ((!\probhai|count\(1)) # (!\probhai|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0015",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \probhai|count\(3),
	datab => \probhai|count\(0),
	datac => \probhai|count\(1),
	datad => \probhai|count\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \probhai|LessThan0~0_combout\);

-- Location: LC_X12_Y3_N8
\probhai|LessThan0~1\ : maxv_lcell
-- Equation(s):
-- \probhai|LessThan0~1_combout\ = (\probhai|count\(5)) # ((\probhai|count\(6)) # ((\probhai|count\(4)) # (!\probhai|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \probhai|count\(5),
	datab => \probhai|count\(6),
	datac => \probhai|count\(4),
	datad => \probhai|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \probhai|LessThan0~1_combout\);

-- Location: LC_X12_Y3_N0
\probhai|clk\ : maxv_lcell
-- Equation(s):
-- \probhai|clk~regout\ = DFFEAS(((\probhai|clk~regout\ $ (\probhai|LessThan0~1_combout\))), GLOBAL(\probhai|fulsped|clk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \probhai|fulsped|clk~regout\,
	datac => \probhai|clk~regout\,
	datad => \probhai|LessThan0~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \probhai|clk~regout\);

-- Location: LC_X10_Y8_N5
\done|Add0~150\ : maxv_lcell
-- Equation(s):
-- \done|Add0~150_combout\ = (\done|count\(1) $ ((\done|Add0~157_cout\)))
-- \done|Add0~152\ = CARRY(((!\done|Add0~157_cout\) # (!\done|count\(1))))
-- \done|Add0~152COUT1_161\ = CARRY(((!\done|Add0~157_cout\) # (!\done|count\(1))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \done|count\(1),
	cin => \done|Add0~157_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Add0~150_combout\,
	cout0 => \done|Add0~152\,
	cout1 => \done|Add0~152COUT1_161\);

-- Location: LC_X10_Y4_N3
\present.Transmit\ : maxv_lcell
-- Equation(s):
-- \Selector2~0\ = (((present.Transmit & !\done|done~regout\)))
-- \present.Transmit~regout\ = DFFEAS(\Selector2~0\, GLOBAL(\probhai|clk~regout\), VCC, , , \nxt.Transmit~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	datac => \nxt.Transmit~regout\,
	datad => \done|done~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector2~0\,
	regout => \present.Transmit~regout\);

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\send~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_send,
	combout => \send~combout\);

-- Location: LC_X10_Y4_N2
\present.Stop\ : maxv_lcell
-- Equation(s):
-- \Selector1~0\ = (((!present.Stop & \send~combout\)))
-- \present.Stop~regout\ = DFFEAS(\Selector1~0\, GLOBAL(\probhai|clk~regout\), VCC, , , \nxt.Stop~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	datac => \nxt.Stop~regout\,
	datad => \send~combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector1~0\,
	regout => \present.Stop~regout\);

-- Location: LC_X10_Y4_N6
\present.Whait\ : maxv_lcell
-- Equation(s):
-- \data~0\ = (((!present.Whait & \present.Stop~regout\)))
-- \present.Whait~regout\ = DFFEAS(\data~0\, GLOBAL(\probhai|clk~regout\), VCC, , , \nxt.Whait~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	datac => \nxt.Whait~regout\,
	datad => \present.Stop~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data~0\,
	regout => \present.Whait~regout\);

-- Location: LC_X10_Y4_N9
\nxt.Stop\ : maxv_lcell
-- Equation(s):
-- \nxt.Stop~regout\ = DFFEAS((!\Selector1~0\ & (!\present.Whait~regout\ & ((\nxt.Stop~regout\) # (!\Selector2~0\)))), GLOBAL(\probhai|clk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000d",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	dataa => \Selector2~0\,
	datab => \nxt.Stop~regout\,
	datac => \Selector1~0\,
	datad => \present.Whait~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \nxt.Stop~regout\);

-- Location: LC_X10_Y4_N4
\nxt.Load\ : maxv_lcell
-- Equation(s):
-- \nxt.Load~regout\ = DFFEAS((\send~combout\ & (((\nxt.Load~regout\ & \Selector2~0\)))) # (!\send~combout\ & (((\nxt.Load~regout\ & \Selector2~0\)) # (!\present.Stop~regout\))), GLOBAL(\probhai|clk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f111",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	dataa => \send~combout\,
	datab => \present.Stop~regout\,
	datac => \nxt.Load~regout\,
	datad => \Selector2~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \nxt.Load~regout\);

-- Location: LC_X10_Y4_N1
\present.Load\ : maxv_lcell
-- Equation(s):
-- \Tx~0\ = (((present.Load) # (!\present.Stop~regout\)))
-- \present.Load~regout\ = DFFEAS(\Tx~0\, GLOBAL(\probhai|clk~regout\), VCC, , , \nxt.Load~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	datac => \nxt.Load~regout\,
	datad => \present.Stop~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tx~0\,
	regout => \present.Load~regout\);

-- Location: LC_X13_Y3_N2
ien : maxv_lcell
-- Equation(s):
-- \ien~regout\ = DFFEAS((\present.Transmit~regout\) # ((\present.Load~regout\) # ((!\present.Stop~regout\ & \ien~regout\))), GLOBAL(\probhai|clk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	dataa => \present.Stop~regout\,
	datab => \ien~regout\,
	datac => \present.Transmit~regout\,
	datad => \present.Load~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ien~regout\);

-- Location: LC_X10_Y8_N1
\done|count[1]\ : maxv_lcell
-- Equation(s):
-- \done|count\(1) = DFFEAS(GND, GLOBAL(\probhai|clk~regout\), GLOBAL(\ien~regout\), , , \done|Add0~150_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	datac => \done|Add0~150_combout\,
	aclr => \ALT_INV_ien~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \done|count\(1));

-- Location: LC_X10_Y8_N6
\done|Add0~145\ : maxv_lcell
-- Equation(s):
-- \done|Add0~145_combout\ = \done|count\(2) $ ((((!(!\done|Add0~157_cout\ & \done|Add0~152\) # (\done|Add0~157_cout\ & \done|Add0~152COUT1_161\)))))
-- \done|Add0~147\ = CARRY((\done|count\(2) & ((!\done|Add0~152\))))
-- \done|Add0~147COUT1_162\ = CARRY((\done|count\(2) & ((!\done|Add0~152COUT1_161\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \done|count\(2),
	cin => \done|Add0~157_cout\,
	cin0 => \done|Add0~152\,
	cin1 => \done|Add0~152COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Add0~145_combout\,
	cout0 => \done|Add0~147\,
	cout1 => \done|Add0~147COUT1_162\);

-- Location: LC_X10_Y8_N3
\done|count[2]\ : maxv_lcell
-- Equation(s):
-- \done|Equal0~9\ = (\done|count\(3) & (\done|count\(0) & (!B1_count[2] & !\done|count\(1))))
-- \done|count\(2) = DFFEAS(\done|Equal0~9\, GLOBAL(\probhai|clk~regout\), GLOBAL(\ien~regout\), , , \done|Add0~145_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	dataa => \done|count\(3),
	datab => \done|count\(0),
	datac => \done|Add0~145_combout\,
	datad => \done|count\(1),
	aclr => \ALT_INV_ien~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Equal0~9\,
	regout => \done|count\(2));

-- Location: LC_X10_Y8_N7
\done|Add0~140\ : maxv_lcell
-- Equation(s):
-- \done|Add0~140_combout\ = (\done|count\(3) $ (((!\done|Add0~157_cout\ & \done|Add0~147\) # (\done|Add0~157_cout\ & \done|Add0~147COUT1_162\))))
-- \done|Add0~142\ = CARRY(((!\done|Add0~147\) # (!\done|count\(3))))
-- \done|Add0~142COUT1_163\ = CARRY(((!\done|Add0~147COUT1_162\) # (!\done|count\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \done|count\(3),
	cin => \done|Add0~157_cout\,
	cin0 => \done|Add0~147\,
	cin1 => \done|Add0~147COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Add0~140_combout\,
	cout0 => \done|Add0~142\,
	cout1 => \done|Add0~142COUT1_163\);

-- Location: LC_X10_Y8_N8
\done|Add0~135\ : maxv_lcell
-- Equation(s):
-- \done|Add0~135_combout\ = (\done|count\(4) $ ((!(!\done|Add0~157_cout\ & \done|Add0~142\) # (\done|Add0~157_cout\ & \done|Add0~142COUT1_163\))))
-- \done|Add0~137\ = CARRY(((\done|count\(4) & !\done|Add0~142\)))
-- \done|Add0~137COUT1_164\ = CARRY(((\done|count\(4) & !\done|Add0~142COUT1_163\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \done|count\(4),
	cin => \done|Add0~157_cout\,
	cin0 => \done|Add0~142\,
	cin1 => \done|Add0~142COUT1_163\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Add0~135_combout\,
	cout0 => \done|Add0~137\,
	cout1 => \done|Add0~137COUT1_164\);

-- Location: LC_X9_Y8_N2
\done|count[4]\ : maxv_lcell
-- Equation(s):
-- \done|count\(4) = DFFEAS((((\done|Add0~135_combout\))), GLOBAL(\probhai|clk~regout\), GLOBAL(\ien~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	datad => \done|Add0~135_combout\,
	aclr => \ALT_INV_ien~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \done|count\(4));

-- Location: LC_X10_Y8_N9
\done|Add0~130\ : maxv_lcell
-- Equation(s):
-- \done|Add0~130_combout\ = (\done|count\(5) $ (((!\done|Add0~157_cout\ & \done|Add0~137\) # (\done|Add0~157_cout\ & \done|Add0~137COUT1_164\))))
-- \done|Add0~132\ = CARRY(((!\done|Add0~137COUT1_164\) # (!\done|count\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \done|count\(5),
	cin => \done|Add0~157_cout\,
	cin0 => \done|Add0~137\,
	cin1 => \done|Add0~137COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Add0~130_combout\,
	cout => \done|Add0~132\);

-- Location: LC_X14_Y8_N7
\done|count[5]\ : maxv_lcell
-- Equation(s):
-- \done|count\(5) = DFFEAS(GND, GLOBAL(\probhai|clk~regout\), GLOBAL(\ien~regout\), , , \done|Add0~130_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	datac => \done|Add0~130_combout\,
	aclr => \ALT_INV_ien~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \done|count\(5));

-- Location: LC_X11_Y8_N0
\done|Add0~125\ : maxv_lcell
-- Equation(s):
-- \done|Add0~125_combout\ = \done|count\(6) $ ((((!\done|Add0~132\))))
-- \done|Add0~127\ = CARRY((\done|count\(6) & ((!\done|Add0~132\))))
-- \done|Add0~127COUT1_165\ = CARRY((\done|count\(6) & ((!\done|Add0~132\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \done|count\(6),
	cin => \done|Add0~132\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Add0~125_combout\,
	cout0 => \done|Add0~127\,
	cout1 => \done|Add0~127COUT1_165\);

-- Location: LC_X10_Y8_N0
\done|count[6]\ : maxv_lcell
-- Equation(s):
-- \done|count\(6) = DFFEAS(GND, GLOBAL(\probhai|clk~regout\), GLOBAL(\ien~regout\), , , \done|Add0~125_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	datac => \done|Add0~125_combout\,
	aclr => \ALT_INV_ien~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \done|count\(6));

-- Location: LC_X10_Y8_N2
\done|count[7]\ : maxv_lcell
-- Equation(s):
-- \done|Equal0~8\ = (!\done|count\(5) & (!\done|count\(6) & (!B1_count[7] & !\done|count\(4))))
-- \done|count\(7) = DFFEAS(\done|Equal0~8\, GLOBAL(\probhai|clk~regout\), GLOBAL(\ien~regout\), , , \done|Add0~120_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	dataa => \done|count\(5),
	datab => \done|count\(6),
	datac => \done|Add0~120_combout\,
	datad => \done|count\(4),
	aclr => \ALT_INV_ien~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Equal0~8\,
	regout => \done|count\(7));

-- Location: LC_X11_Y8_N1
\done|Add0~120\ : maxv_lcell
-- Equation(s):
-- \done|Add0~120_combout\ = (\done|count\(7) $ (((!\done|Add0~132\ & \done|Add0~127\) # (\done|Add0~132\ & \done|Add0~127COUT1_165\))))
-- \done|Add0~122\ = CARRY(((!\done|Add0~127\) # (!\done|count\(7))))
-- \done|Add0~122COUT1_166\ = CARRY(((!\done|Add0~127COUT1_165\) # (!\done|count\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \done|count\(7),
	cin => \done|Add0~132\,
	cin0 => \done|Add0~127\,
	cin1 => \done|Add0~127COUT1_165\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Add0~120_combout\,
	cout0 => \done|Add0~122\,
	cout1 => \done|Add0~122COUT1_166\);

-- Location: LC_X11_Y8_N2
\done|Add0~105\ : maxv_lcell
-- Equation(s):
-- \done|Add0~105_combout\ = (\done|count\(8) $ ((!(!\done|Add0~132\ & \done|Add0~122\) # (\done|Add0~132\ & \done|Add0~122COUT1_166\))))
-- \done|Add0~107\ = CARRY(((\done|count\(8) & !\done|Add0~122\)))
-- \done|Add0~107COUT1_167\ = CARRY(((\done|count\(8) & !\done|Add0~122COUT1_166\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \done|count\(8),
	cin => \done|Add0~132\,
	cin0 => \done|Add0~122\,
	cin1 => \done|Add0~122COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Add0~105_combout\,
	cout0 => \done|Add0~107\,
	cout1 => \done|Add0~107COUT1_167\);

-- Location: LC_X8_Y8_N6
\done|count[8]\ : maxv_lcell
-- Equation(s):
-- \done|count\(8) = DFFEAS(GND, GLOBAL(\probhai|clk~regout\), GLOBAL(\ien~regout\), , , \done|Add0~105_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	datac => \done|Add0~105_combout\,
	aclr => \ALT_INV_ien~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \done|count\(8));

-- Location: LC_X11_Y8_N3
\done|Add0~100\ : maxv_lcell
-- Equation(s):
-- \done|Add0~100_combout\ = \done|count\(9) $ (((((!\done|Add0~132\ & \done|Add0~107\) # (\done|Add0~132\ & \done|Add0~107COUT1_167\)))))
-- \done|Add0~102\ = CARRY(((!\done|Add0~107\)) # (!\done|count\(9)))
-- \done|Add0~102COUT1_168\ = CARRY(((!\done|Add0~107COUT1_167\)) # (!\done|count\(9)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \done|count\(9),
	cin => \done|Add0~132\,
	cin0 => \done|Add0~107\,
	cin1 => \done|Add0~107COUT1_167\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Add0~100_combout\,
	cout0 => \done|Add0~102\,
	cout1 => \done|Add0~102COUT1_168\);

-- Location: LC_X8_Y8_N8
\done|count[9]\ : maxv_lcell
-- Equation(s):
-- \done|count\(9) = DFFEAS(GND, GLOBAL(\probhai|clk~regout\), GLOBAL(\ien~regout\), , , \done|Add0~100_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	datac => \done|Add0~100_combout\,
	aclr => \ALT_INV_ien~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \done|count\(9));

-- Location: LC_X11_Y8_N4
\done|Add0~95\ : maxv_lcell
-- Equation(s):
-- \done|Add0~95_combout\ = (\done|count\(10) $ ((!(!\done|Add0~132\ & \done|Add0~102\) # (\done|Add0~132\ & \done|Add0~102COUT1_168\))))
-- \done|Add0~97\ = CARRY(((\done|count\(10) & !\done|Add0~102COUT1_168\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \done|count\(10),
	cin => \done|Add0~132\,
	cin0 => \done|Add0~102\,
	cin1 => \done|Add0~102COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Add0~95_combout\,
	cout => \done|Add0~97\);

-- Location: LC_X8_Y8_N9
\done|count[10]\ : maxv_lcell
-- Equation(s):
-- \done|count\(10) = DFFEAS(GND, GLOBAL(\probhai|clk~regout\), GLOBAL(\ien~regout\), , , \done|Add0~95_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	datac => \done|Add0~95_combout\,
	aclr => \ALT_INV_ien~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \done|count\(10));

-- Location: LC_X8_Y8_N5
\done|count[15]\ : maxv_lcell
-- Equation(s):
-- \done|Equal0~5\ = (((!B1_count[15] & !\done|count\(14))))
-- \done|count\(15) = DFFEAS(\done|Equal0~5\, GLOBAL(\probhai|clk~regout\), GLOBAL(\ien~regout\), , , \done|Add0~80_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	datac => \done|Add0~80_combout\,
	datad => \done|count\(14),
	aclr => \ALT_INV_ien~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Equal0~5\,
	regout => \done|count\(15));

-- Location: LC_X11_Y8_N5
\done|Add0~90\ : maxv_lcell
-- Equation(s):
-- \done|Add0~90_combout\ = (\done|count\(11) $ ((\done|Add0~97\)))
-- \done|Add0~92\ = CARRY(((!\done|Add0~97\) # (!\done|count\(11))))
-- \done|Add0~92COUT1_169\ = CARRY(((!\done|Add0~97\) # (!\done|count\(11))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \done|count\(11),
	cin => \done|Add0~97\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Add0~90_combout\,
	cout0 => \done|Add0~92\,
	cout1 => \done|Add0~92COUT1_169\);

-- Location: LC_X8_Y8_N4
\done|count[11]\ : maxv_lcell
-- Equation(s):
-- \done|Equal0~6\ = (!\done|count\(9) & (!\done|count\(8) & (!B1_count[11] & !\done|count\(10))))
-- \done|count\(11) = DFFEAS(\done|Equal0~6\, GLOBAL(\probhai|clk~regout\), GLOBAL(\ien~regout\), , , \done|Add0~90_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	dataa => \done|count\(9),
	datab => \done|count\(8),
	datac => \done|Add0~90_combout\,
	datad => \done|count\(10),
	aclr => \ALT_INV_ien~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Equal0~6\,
	regout => \done|count\(11));

-- Location: LC_X11_Y8_N6
\done|Add0~115\ : maxv_lcell
-- Equation(s):
-- \done|Add0~115_combout\ = (\done|count\(12) $ ((!(!\done|Add0~97\ & \done|Add0~92\) # (\done|Add0~97\ & \done|Add0~92COUT1_169\))))
-- \done|Add0~117\ = CARRY(((\done|count\(12) & !\done|Add0~92\)))
-- \done|Add0~117COUT1_170\ = CARRY(((\done|count\(12) & !\done|Add0~92COUT1_169\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \done|count\(12),
	cin => \done|Add0~97\,
	cin0 => \done|Add0~92\,
	cin1 => \done|Add0~92COUT1_169\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Add0~115_combout\,
	cout0 => \done|Add0~117\,
	cout1 => \done|Add0~117COUT1_170\);

-- Location: LC_X10_Y9_N7
\done|count[12]\ : maxv_lcell
-- Equation(s):
-- \done|count\(12) = DFFEAS((((\done|Add0~115_combout\))), GLOBAL(\probhai|clk~regout\), GLOBAL(\ien~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	datad => \done|Add0~115_combout\,
	aclr => \ALT_INV_ien~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \done|count\(12));

-- Location: LC_X11_Y8_N7
\done|Add0~110\ : maxv_lcell
-- Equation(s):
-- \done|Add0~110_combout\ = (\done|count\(13) $ (((!\done|Add0~97\ & \done|Add0~117\) # (\done|Add0~97\ & \done|Add0~117COUT1_170\))))
-- \done|Add0~112\ = CARRY(((!\done|Add0~117\) # (!\done|count\(13))))
-- \done|Add0~112COUT1_171\ = CARRY(((!\done|Add0~117COUT1_170\) # (!\done|count\(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \done|count\(13),
	cin => \done|Add0~97\,
	cin0 => \done|Add0~117\,
	cin1 => \done|Add0~117COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Add0~110_combout\,
	cout0 => \done|Add0~112\,
	cout1 => \done|Add0~112COUT1_171\);

-- Location: LC_X9_Y8_N8
\done|count[13]\ : maxv_lcell
-- Equation(s):
-- \done|Equal0~7\ = (\done|Equal0~5\ & (!\done|count\(12) & (!B1_count[13] & \done|Equal0~6\)))
-- \done|count\(13) = DFFEAS(\done|Equal0~7\, GLOBAL(\probhai|clk~regout\), GLOBAL(\ien~regout\), , , \done|Add0~110_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	dataa => \done|Equal0~5\,
	datab => \done|count\(12),
	datac => \done|Add0~110_combout\,
	datad => \done|Equal0~6\,
	aclr => \ALT_INV_ien~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Equal0~7\,
	regout => \done|count\(13));

-- Location: LC_X11_Y8_N8
\done|Add0~85\ : maxv_lcell
-- Equation(s):
-- \done|Add0~85_combout\ = (\done|count\(14) $ ((!(!\done|Add0~97\ & \done|Add0~112\) # (\done|Add0~97\ & \done|Add0~112COUT1_171\))))
-- \done|Add0~87\ = CARRY(((\done|count\(14) & !\done|Add0~112\)))
-- \done|Add0~87COUT1_172\ = CARRY(((\done|count\(14) & !\done|Add0~112COUT1_171\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \done|count\(14),
	cin => \done|Add0~97\,
	cin0 => \done|Add0~112\,
	cin1 => \done|Add0~112COUT1_171\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Add0~85_combout\,
	cout0 => \done|Add0~87\,
	cout1 => \done|Add0~87COUT1_172\);

-- Location: LC_X8_Y8_N3
\done|count[14]\ : maxv_lcell
-- Equation(s):
-- \done|count\(14) = DFFEAS((((\done|Add0~85_combout\))), GLOBAL(\probhai|clk~regout\), GLOBAL(\ien~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	datad => \done|Add0~85_combout\,
	aclr => \ALT_INV_ien~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \done|count\(14));

-- Location: LC_X11_Y8_N9
\done|Add0~80\ : maxv_lcell
-- Equation(s):
-- \done|Add0~80_combout\ = (\done|count\(15) $ (((!\done|Add0~97\ & \done|Add0~87\) # (\done|Add0~97\ & \done|Add0~87COUT1_172\))))
-- \done|Add0~82\ = CARRY(((!\done|Add0~87COUT1_172\) # (!\done|count\(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \done|count\(15),
	cin => \done|Add0~97\,
	cin0 => \done|Add0~87\,
	cin1 => \done|Add0~87COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Add0~80_combout\,
	cout => \done|Add0~82\);

-- Location: LC_X12_Y8_N0
\done|Add0~75\ : maxv_lcell
-- Equation(s):
-- \done|Add0~75_combout\ = (\done|count\(16) $ ((!\done|Add0~82\)))
-- \done|Add0~77\ = CARRY(((\done|count\(16) & !\done|Add0~82\)))
-- \done|Add0~77COUT1_173\ = CARRY(((\done|count\(16) & !\done|Add0~82\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \done|count\(16),
	cin => \done|Add0~82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Add0~75_combout\,
	cout0 => \done|Add0~77\,
	cout1 => \done|Add0~77COUT1_173\);

-- Location: LC_X9_Y8_N9
\done|count[16]\ : maxv_lcell
-- Equation(s):
-- \done|count\(16) = DFFEAS(GND, GLOBAL(\probhai|clk~regout\), GLOBAL(\ien~regout\), , , \done|Add0~75_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	datac => \done|Add0~75_combout\,
	aclr => \ALT_INV_ien~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \done|count\(16));

-- Location: LC_X12_Y8_N1
\done|Add0~70\ : maxv_lcell
-- Equation(s):
-- \done|Add0~70_combout\ = (\done|count\(17) $ (((!\done|Add0~82\ & \done|Add0~77\) # (\done|Add0~82\ & \done|Add0~77COUT1_173\))))
-- \done|Add0~72\ = CARRY(((!\done|Add0~77\) # (!\done|count\(17))))
-- \done|Add0~72COUT1_174\ = CARRY(((!\done|Add0~77COUT1_173\) # (!\done|count\(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \done|count\(17),
	cin => \done|Add0~82\,
	cin0 => \done|Add0~77\,
	cin1 => \done|Add0~77COUT1_173\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Add0~70_combout\,
	cout0 => \done|Add0~72\,
	cout1 => \done|Add0~72COUT1_174\);

-- Location: LC_X9_Y8_N7
\done|count[17]\ : maxv_lcell
-- Equation(s):
-- \done|count\(17) = DFFEAS(GND, GLOBAL(\probhai|clk~regout\), GLOBAL(\ien~regout\), , , \done|Add0~70_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	datac => \done|Add0~70_combout\,
	aclr => \ALT_INV_ien~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \done|count\(17));

-- Location: LC_X12_Y8_N2
\done|Add0~65\ : maxv_lcell
-- Equation(s):
-- \done|Add0~65_combout\ = \done|count\(18) $ ((((!(!\done|Add0~82\ & \done|Add0~72\) # (\done|Add0~82\ & \done|Add0~72COUT1_174\)))))
-- \done|Add0~67\ = CARRY((\done|count\(18) & ((!\done|Add0~72\))))
-- \done|Add0~67COUT1_175\ = CARRY((\done|count\(18) & ((!\done|Add0~72COUT1_174\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \done|count\(18),
	cin => \done|Add0~82\,
	cin0 => \done|Add0~72\,
	cin1 => \done|Add0~72COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Add0~65_combout\,
	cout0 => \done|Add0~67\,
	cout1 => \done|Add0~67COUT1_175\);

-- Location: LC_X9_Y8_N0
\done|count[18]\ : maxv_lcell
-- Equation(s):
-- \done|count\(18) = DFFEAS(GND, GLOBAL(\probhai|clk~regout\), GLOBAL(\ien~regout\), , , \done|Add0~65_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	datac => \done|Add0~65_combout\,
	aclr => \ALT_INV_ien~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \done|count\(18));

-- Location: LC_X12_Y8_N3
\done|Add0~60\ : maxv_lcell
-- Equation(s):
-- \done|Add0~60_combout\ = (\done|count\(19) $ (((!\done|Add0~82\ & \done|Add0~67\) # (\done|Add0~82\ & \done|Add0~67COUT1_175\))))
-- \done|Add0~62\ = CARRY(((!\done|Add0~67\) # (!\done|count\(19))))
-- \done|Add0~62COUT1_176\ = CARRY(((!\done|Add0~67COUT1_175\) # (!\done|count\(19))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \done|count\(19),
	cin => \done|Add0~82\,
	cin0 => \done|Add0~67\,
	cin1 => \done|Add0~67COUT1_175\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Add0~60_combout\,
	cout0 => \done|Add0~62\,
	cout1 => \done|Add0~62COUT1_176\);

-- Location: LC_X9_Y8_N1
\done|count[19]\ : maxv_lcell
-- Equation(s):
-- \done|Equal0~3\ = (!\done|count\(18) & (!\done|count\(17) & (!B1_count[19] & !\done|count\(16))))
-- \done|count\(19) = DFFEAS(\done|Equal0~3\, GLOBAL(\probhai|clk~regout\), GLOBAL(\ien~regout\), , , \done|Add0~60_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	dataa => \done|count\(18),
	datab => \done|count\(17),
	datac => \done|Add0~60_combout\,
	datad => \done|count\(16),
	aclr => \ALT_INV_ien~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Equal0~3\,
	regout => \done|count\(19));

-- Location: LC_X12_Y8_N4
\done|Add0~55\ : maxv_lcell
-- Equation(s):
-- \done|Add0~55_combout\ = (\done|count\(20) $ ((!(!\done|Add0~82\ & \done|Add0~62\) # (\done|Add0~82\ & \done|Add0~62COUT1_176\))))
-- \done|Add0~57\ = CARRY(((\done|count\(20) & !\done|Add0~62COUT1_176\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \done|count\(20),
	cin => \done|Add0~82\,
	cin0 => \done|Add0~62\,
	cin1 => \done|Add0~62COUT1_176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Add0~55_combout\,
	cout => \done|Add0~57\);

-- Location: LC_X12_Y9_N5
\done|count[20]\ : maxv_lcell
-- Equation(s):
-- \done|count\(20) = DFFEAS(GND, GLOBAL(\probhai|clk~regout\), GLOBAL(\ien~regout\), , , \done|Add0~55_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	datac => \done|Add0~55_combout\,
	aclr => \ALT_INV_ien~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \done|count\(20));

-- Location: LC_X12_Y8_N5
\done|Add0~50\ : maxv_lcell
-- Equation(s):
-- \done|Add0~50_combout\ = \done|count\(21) $ ((((\done|Add0~57\))))
-- \done|Add0~52\ = CARRY(((!\done|Add0~57\)) # (!\done|count\(21)))
-- \done|Add0~52COUT1_177\ = CARRY(((!\done|Add0~57\)) # (!\done|count\(21)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \done|count\(21),
	cin => \done|Add0~57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Add0~50_combout\,
	cout0 => \done|Add0~52\,
	cout1 => \done|Add0~52COUT1_177\);

-- Location: LC_X12_Y9_N7
\done|count[21]\ : maxv_lcell
-- Equation(s):
-- \done|count\(21) = DFFEAS(GND, GLOBAL(\probhai|clk~regout\), GLOBAL(\ien~regout\), , , \done|Add0~50_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	datac => \done|Add0~50_combout\,
	aclr => \ALT_INV_ien~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \done|count\(21));

-- Location: LC_X12_Y8_N6
\done|Add0~45\ : maxv_lcell
-- Equation(s):
-- \done|Add0~45_combout\ = (\done|count\(22) $ ((!(!\done|Add0~57\ & \done|Add0~52\) # (\done|Add0~57\ & \done|Add0~52COUT1_177\))))
-- \done|Add0~47\ = CARRY(((\done|count\(22) & !\done|Add0~52\)))
-- \done|Add0~47COUT1_178\ = CARRY(((\done|count\(22) & !\done|Add0~52COUT1_177\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \done|count\(22),
	cin => \done|Add0~57\,
	cin0 => \done|Add0~52\,
	cin1 => \done|Add0~52COUT1_177\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Add0~45_combout\,
	cout0 => \done|Add0~47\,
	cout1 => \done|Add0~47COUT1_178\);

-- Location: LC_X12_Y9_N2
\done|count[22]\ : maxv_lcell
-- Equation(s):
-- \done|count\(22) = DFFEAS(GND, GLOBAL(\probhai|clk~regout\), GLOBAL(\ien~regout\), , , \done|Add0~45_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	datac => \done|Add0~45_combout\,
	aclr => \ALT_INV_ien~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \done|count\(22));

-- Location: LC_X12_Y8_N7
\done|Add0~40\ : maxv_lcell
-- Equation(s):
-- \done|Add0~40_combout\ = (\done|count\(23) $ (((!\done|Add0~57\ & \done|Add0~47\) # (\done|Add0~57\ & \done|Add0~47COUT1_178\))))
-- \done|Add0~42\ = CARRY(((!\done|Add0~47\) # (!\done|count\(23))))
-- \done|Add0~42COUT1_179\ = CARRY(((!\done|Add0~47COUT1_178\) # (!\done|count\(23))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \done|count\(23),
	cin => \done|Add0~57\,
	cin0 => \done|Add0~47\,
	cin1 => \done|Add0~47COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Add0~40_combout\,
	cout0 => \done|Add0~42\,
	cout1 => \done|Add0~42COUT1_179\);

-- Location: LC_X12_Y9_N8
\done|count[23]\ : maxv_lcell
-- Equation(s):
-- \done|Equal0~2\ = (!\done|count\(20) & (!\done|count\(21) & (!B1_count[23] & !\done|count\(22))))
-- \done|count\(23) = DFFEAS(\done|Equal0~2\, GLOBAL(\probhai|clk~regout\), GLOBAL(\ien~regout\), , , \done|Add0~40_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	dataa => \done|count\(20),
	datab => \done|count\(21),
	datac => \done|Add0~40_combout\,
	datad => \done|count\(22),
	aclr => \ALT_INV_ien~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Equal0~2\,
	regout => \done|count\(23));

-- Location: LC_X12_Y8_N8
\done|Add0~35\ : maxv_lcell
-- Equation(s):
-- \done|Add0~35_combout\ = (\done|count\(24) $ ((!(!\done|Add0~57\ & \done|Add0~42\) # (\done|Add0~57\ & \done|Add0~42COUT1_179\))))
-- \done|Add0~37\ = CARRY(((\done|count\(24) & !\done|Add0~42\)))
-- \done|Add0~37COUT1_180\ = CARRY(((\done|count\(24) & !\done|Add0~42COUT1_179\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \done|count\(24),
	cin => \done|Add0~57\,
	cin0 => \done|Add0~42\,
	cin1 => \done|Add0~42COUT1_179\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Add0~35_combout\,
	cout0 => \done|Add0~37\,
	cout1 => \done|Add0~37COUT1_180\);

-- Location: LC_X13_Y8_N8
\done|count[24]\ : maxv_lcell
-- Equation(s):
-- \done|count\(24) = DFFEAS(GND, GLOBAL(\probhai|clk~regout\), GLOBAL(\ien~regout\), , , \done|Add0~35_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	datac => \done|Add0~35_combout\,
	aclr => \ALT_INV_ien~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \done|count\(24));

-- Location: LC_X12_Y8_N9
\done|Add0~30\ : maxv_lcell
-- Equation(s):
-- \done|Add0~30_combout\ = (\done|count\(25) $ (((!\done|Add0~57\ & \done|Add0~37\) # (\done|Add0~57\ & \done|Add0~37COUT1_180\))))
-- \done|Add0~32\ = CARRY(((!\done|Add0~37COUT1_180\) # (!\done|count\(25))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \done|count\(25),
	cin => \done|Add0~57\,
	cin0 => \done|Add0~37\,
	cin1 => \done|Add0~37COUT1_180\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Add0~30_combout\,
	cout => \done|Add0~32\);

-- Location: LC_X14_Y8_N9
\done|count[25]\ : maxv_lcell
-- Equation(s):
-- \done|count\(25) = DFFEAS(GND, GLOBAL(\probhai|clk~regout\), GLOBAL(\ien~regout\), , , \done|Add0~30_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	datac => \done|Add0~30_combout\,
	aclr => \ALT_INV_ien~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \done|count\(25));

-- Location: LC_X13_Y8_N0
\done|Add0~25\ : maxv_lcell
-- Equation(s):
-- \done|Add0~25_combout\ = (\done|count\(26) $ ((!\done|Add0~32\)))
-- \done|Add0~27\ = CARRY(((\done|count\(26) & !\done|Add0~32\)))
-- \done|Add0~27COUT1_181\ = CARRY(((\done|count\(26) & !\done|Add0~32\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \done|count\(26),
	cin => \done|Add0~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Add0~25_combout\,
	cout0 => \done|Add0~27\,
	cout1 => \done|Add0~27COUT1_181\);

-- Location: LC_X13_Y8_N7
\done|count[26]\ : maxv_lcell
-- Equation(s):
-- \done|count\(26) = DFFEAS(GND, GLOBAL(\probhai|clk~regout\), GLOBAL(\ien~regout\), , , \done|Add0~25_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	datac => \done|Add0~25_combout\,
	aclr => \ALT_INV_ien~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \done|count\(26));

-- Location: LC_X13_Y8_N1
\done|Add0~20\ : maxv_lcell
-- Equation(s):
-- \done|Add0~20_combout\ = (\done|count\(27) $ (((!\done|Add0~32\ & \done|Add0~27\) # (\done|Add0~32\ & \done|Add0~27COUT1_181\))))
-- \done|Add0~22\ = CARRY(((!\done|Add0~27\) # (!\done|count\(27))))
-- \done|Add0~22COUT1_182\ = CARRY(((!\done|Add0~27COUT1_181\) # (!\done|count\(27))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \done|count\(27),
	cin => \done|Add0~32\,
	cin0 => \done|Add0~27\,
	cin1 => \done|Add0~27COUT1_181\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Add0~20_combout\,
	cout0 => \done|Add0~22\,
	cout1 => \done|Add0~22COUT1_182\);

-- Location: LC_X13_Y8_N9
\done|count[27]\ : maxv_lcell
-- Equation(s):
-- \done|Equal0~1\ = (!\done|count\(24) & (!\done|count\(26) & (!B1_count[27] & !\done|count\(25))))
-- \done|count\(27) = DFFEAS(\done|Equal0~1\, GLOBAL(\probhai|clk~regout\), GLOBAL(\ien~regout\), , , \done|Add0~20_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	dataa => \done|count\(24),
	datab => \done|count\(26),
	datac => \done|Add0~20_combout\,
	datad => \done|count\(25),
	aclr => \ALT_INV_ien~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Equal0~1\,
	regout => \done|count\(27));

-- Location: LC_X13_Y8_N2
\done|Add0~15\ : maxv_lcell
-- Equation(s):
-- \done|Add0~15_combout\ = (\done|count\(28) $ ((!(!\done|Add0~32\ & \done|Add0~22\) # (\done|Add0~32\ & \done|Add0~22COUT1_182\))))
-- \done|Add0~17\ = CARRY(((\done|count\(28) & !\done|Add0~22\)))
-- \done|Add0~17COUT1_183\ = CARRY(((\done|count\(28) & !\done|Add0~22COUT1_182\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \done|count\(28),
	cin => \done|Add0~32\,
	cin0 => \done|Add0~22\,
	cin1 => \done|Add0~22COUT1_182\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Add0~15_combout\,
	cout0 => \done|Add0~17\,
	cout1 => \done|Add0~17COUT1_183\);

-- Location: LC_X14_Y8_N8
\done|count[28]\ : maxv_lcell
-- Equation(s):
-- \done|count\(28) = DFFEAS((((\done|Add0~15_combout\))), GLOBAL(\probhai|clk~regout\), GLOBAL(\ien~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	datad => \done|Add0~15_combout\,
	aclr => \ALT_INV_ien~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \done|count\(28));

-- Location: LC_X13_Y8_N3
\done|Add0~10\ : maxv_lcell
-- Equation(s):
-- \done|Add0~10_combout\ = \done|count\(29) $ (((((!\done|Add0~32\ & \done|Add0~17\) # (\done|Add0~32\ & \done|Add0~17COUT1_183\)))))
-- \done|Add0~12\ = CARRY(((!\done|Add0~17\)) # (!\done|count\(29)))
-- \done|Add0~12COUT1_184\ = CARRY(((!\done|Add0~17COUT1_183\)) # (!\done|count\(29)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \done|count\(29),
	cin => \done|Add0~32\,
	cin0 => \done|Add0~17\,
	cin1 => \done|Add0~17COUT1_183\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Add0~10_combout\,
	cout0 => \done|Add0~12\,
	cout1 => \done|Add0~12COUT1_184\);

-- Location: LC_X14_Y8_N6
\done|count[29]\ : maxv_lcell
-- Equation(s):
-- \done|count\(29) = DFFEAS((((\done|Add0~10_combout\))), GLOBAL(\probhai|clk~regout\), GLOBAL(\ien~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	datad => \done|Add0~10_combout\,
	aclr => \ALT_INV_ien~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \done|count\(29));

-- Location: LC_X13_Y8_N4
\done|Add0~5\ : maxv_lcell
-- Equation(s):
-- \done|Add0~5_combout\ = (\done|count\(30) $ ((!(!\done|Add0~32\ & \done|Add0~12\) # (\done|Add0~32\ & \done|Add0~12COUT1_184\))))
-- \done|Add0~7\ = CARRY(((\done|count\(30) & !\done|Add0~12COUT1_184\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \done|count\(30),
	cin => \done|Add0~32\,
	cin0 => \done|Add0~12\,
	cin1 => \done|Add0~12COUT1_184\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Add0~5_combout\,
	cout => \done|Add0~7\);

-- Location: LC_X14_Y8_N4
\done|count[30]\ : maxv_lcell
-- Equation(s):
-- \done|Equal0~0\ = (!\done|count\(29) & (\done|count\(31) & (!B1_count[30] & !\done|count\(28))))
-- \done|count\(30) = DFFEAS(\done|Equal0~0\, GLOBAL(\probhai|clk~regout\), GLOBAL(\ien~regout\), , , \done|Add0~5_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	dataa => \done|count\(29),
	datab => \done|count\(31),
	datac => \done|Add0~5_combout\,
	datad => \done|count\(28),
	aclr => \ALT_INV_ien~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Equal0~0\,
	regout => \done|count\(30));

-- Location: LC_X13_Y8_N5
\done|Add0~0\ : maxv_lcell
-- Equation(s):
-- \done|Add0~0_combout\ = \done|count\(31) $ ((((!\done|Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a5a5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \done|count\(31),
	cin => \done|Add0~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Add0~0_combout\);

-- Location: LC_X13_Y8_N6
\done|count[31]\ : maxv_lcell
-- Equation(s):
-- \done|count\(31) = DFFEAS((((!\done|Add0~0_combout\))), GLOBAL(\probhai|clk~regout\), VCC, , , VCC, !GLOBAL(\ien~regout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	datac => VCC,
	datad => \done|Add0~0_combout\,
	aclr => GND,
	aload => \ALT_INV_ien~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \done|count\(31));

-- Location: LC_X9_Y8_N6
\done|Equal0~4\ : maxv_lcell
-- Equation(s):
-- \done|Equal0~4_combout\ = (\done|Equal0~0\ & (\done|Equal0~3\ & (\done|Equal0~1\ & \done|Equal0~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \done|Equal0~0\,
	datab => \done|Equal0~3\,
	datac => \done|Equal0~1\,
	datad => \done|Equal0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Equal0~4_combout\);

-- Location: LC_X9_Y8_N3
\done|done\ : maxv_lcell
-- Equation(s):
-- \done|Equal0~10\ = (\done|Equal0~9\ & (\done|Equal0~8\ & (\done|Equal0~4_combout\ & \done|Equal0~7\)))
-- \done|done~regout\ = DFFEAS(\done|Equal0~10\, GLOBAL(\probhai|clk~regout\), GLOBAL(\ien~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	dataa => \done|Equal0~9\,
	datab => \done|Equal0~8\,
	datac => \done|Equal0~4_combout\,
	datad => \done|Equal0~7\,
	aclr => \ALT_INV_ien~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Equal0~10\,
	regout => \done|done~regout\);

-- Location: LC_X9_Y8_N5
\done|count[0]\ : maxv_lcell
-- Equation(s):
-- \done|count\(0) = DFFEAS((((\done|Equal0~10\))) # (!\done|count\(0)), GLOBAL(\probhai|clk~regout\), VCC, , , VCC, !GLOBAL(\ien~regout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff55",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	dataa => \done|count\(0),
	datac => VCC,
	datad => \done|Equal0~10\,
	aclr => GND,
	aload => \ALT_INV_ien~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \done|count\(0));

-- Location: LC_X10_Y8_N4
\done|Add0~157\ : maxv_lcell
-- Equation(s):
-- \done|Add0~157_cout\ = CARRY((!\done|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff55",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \done|count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|Add0~155\,
	cout => \done|Add0~157_cout\);

-- Location: LC_X9_Y8_N4
\done|count[3]\ : maxv_lcell
-- Equation(s):
-- \done|count\(3) = DFFEAS((\done|Add0~140_combout\ & (((!\done|Equal0~10\)))), GLOBAL(\probhai|clk~regout\), GLOBAL(\ien~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	dataa => \done|Add0~140_combout\,
	datad => \done|Equal0~10\,
	aclr => \ALT_INV_ien~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \done|count\(3));

-- Location: LC_X10_Y4_N7
\nxt.Transmit\ : maxv_lcell
-- Equation(s):
-- \nxt.Transmit~regout\ = DFFEAS((\present.Load~regout\) # ((\present.Transmit~regout\ & (!\done|done~regout\ & \nxt.Transmit~regout\))), GLOBAL(\probhai|clk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff20",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	dataa => \present.Transmit~regout\,
	datab => \done|done~regout\,
	datac => \nxt.Transmit~regout\,
	datad => \present.Load~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \nxt.Transmit~regout\);

-- Location: LC_X10_Y4_N8
\nxt.Whait\ : maxv_lcell
-- Equation(s):
-- \nxt.Whait~regout\ = DFFEAS((\present.Transmit~regout\ & ((\done|done~regout\) # ((\nxt.Whait~regout\)))), GLOBAL(\probhai|clk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	dataa => \present.Transmit~regout\,
	datab => \done|done~regout\,
	datad => \nxt.Whait~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \nxt.Whait~regout\);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_in(0),
	combout => \data_in~combout\(0));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_in(3),
	combout => \data_in~combout\(3));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_in(7),
	combout => \data_in~combout\(7));

-- Location: LC_X6_Y4_N1
\data[8]\ : maxv_lcell
-- Equation(s):
-- data(8) = DFFEAS((\present.Load~regout\ & (\data_in~combout\(7) & ((data(8)) # (\data~0\)))) # (!\present.Load~regout\ & ((data(8)) # ((\data~0\)))), GLOBAL(\probhai|clk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5c4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	dataa => \present.Load~regout\,
	datab => data(8),
	datac => \data_in~combout\(7),
	datad => \data~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(8));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_in(6),
	combout => \data_in~combout\(6));

-- Location: LC_X6_Y4_N7
\data[7]\ : maxv_lcell
-- Equation(s):
-- data(7) = DFFEAS(((\present.Transmit~regout\ & (data(8))) # (!\present.Transmit~regout\ & ((\data_in~combout\(6))))), GLOBAL(\probhai|clk~regout\), VCC, , \data~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	datab => data(8),
	datac => \data_in~combout\(6),
	datad => \present.Transmit~regout\,
	aclr => GND,
	ena => \data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(7));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_in(5),
	combout => \data_in~combout\(5));

-- Location: LC_X6_Y4_N2
\data[6]\ : maxv_lcell
-- Equation(s):
-- data(6) = DFFEAS(((\present.Transmit~regout\ & (data(7))) # (!\present.Transmit~regout\ & ((\data_in~combout\(5))))), GLOBAL(\probhai|clk~regout\), VCC, , \data~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	datab => data(7),
	datac => \data_in~combout\(5),
	datad => \present.Transmit~regout\,
	aclr => GND,
	ena => \data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(6));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_in(4),
	combout => \data_in~combout\(4));

-- Location: LC_X6_Y4_N5
\data[5]\ : maxv_lcell
-- Equation(s):
-- data(5) = DFFEAS(((\present.Transmit~regout\ & (data(6))) # (!\present.Transmit~regout\ & ((\data_in~combout\(4))))), GLOBAL(\probhai|clk~regout\), VCC, , \data~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	datab => data(6),
	datac => \data_in~combout\(4),
	datad => \present.Transmit~regout\,
	aclr => GND,
	ena => \data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(5));

-- Location: LC_X6_Y4_N9
\data[4]\ : maxv_lcell
-- Equation(s):
-- data(4) = DFFEAS(((\present.Transmit~regout\ & ((data(5)))) # (!\present.Transmit~regout\ & (\data_in~combout\(3)))), GLOBAL(\probhai|clk~regout\), VCC, , \data~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	datab => \data_in~combout\(3),
	datac => data(5),
	datad => \present.Transmit~regout\,
	aclr => GND,
	ena => \data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(4));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_in(2),
	combout => \data_in~combout\(2));

-- Location: LC_X6_Y4_N6
\data[3]\ : maxv_lcell
-- Equation(s):
-- data(3) = DFFEAS(((\present.Transmit~regout\ & (data(4))) # (!\present.Transmit~regout\ & ((\data_in~combout\(2))))), GLOBAL(\probhai|clk~regout\), VCC, , \data~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	datab => data(4),
	datac => \data_in~combout\(2),
	datad => \present.Transmit~regout\,
	aclr => GND,
	ena => \data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(3));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_in(1),
	combout => \data_in~combout\(1));

-- Location: LC_X6_Y4_N4
\data[2]\ : maxv_lcell
-- Equation(s):
-- data(2) = DFFEAS(((\present.Transmit~regout\ & (data(3))) # (!\present.Transmit~regout\ & ((\data_in~combout\(1))))), GLOBAL(\probhai|clk~regout\), VCC, , \data~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	dataa => data(3),
	datac => \data_in~combout\(1),
	datad => \present.Transmit~regout\,
	aclr => GND,
	ena => \data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(2));

-- Location: LC_X6_Y4_N0
\data[1]\ : maxv_lcell
-- Equation(s):
-- data(1) = DFFEAS(((\present.Transmit~regout\ & ((data(2)))) # (!\present.Transmit~regout\ & (\data_in~combout\(0)))), GLOBAL(\probhai|clk~regout\), VCC, , \data~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	datab => \data_in~combout\(0),
	datac => data(2),
	datad => \present.Transmit~regout\,
	aclr => GND,
	ena => \data~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(1));

-- Location: LC_X6_Y4_N3
\data[0]\ : maxv_lcell
-- Equation(s):
-- data(0) = DFFEAS((data(0) & (((data(1) & \present.Transmit~regout\)) # (!\data~0\))) # (!data(0) & (((data(1) & \present.Transmit~regout\)))), GLOBAL(\probhai|clk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f222",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	dataa => data(0),
	datab => \data~0\,
	datac => data(1),
	datad => \present.Transmit~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(0));

-- Location: LC_X10_Y4_N5
\Tx~reg0\ : maxv_lcell
-- Equation(s):
-- \Tx~reg0_regout\ = DFFEAS((\Tx~reg0_regout\ & ((\Tx~0\) # ((!data(0) & \present.Transmit~regout\)))) # (!\Tx~reg0_regout\ & (!data(0) & (\present.Transmit~regout\))), GLOBAL(\probhai|clk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \probhai|clk~regout\,
	dataa => \Tx~reg0_regout\,
	datab => data(0),
	datac => \present.Transmit~regout\,
	datad => \Tx~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tx~reg0_regout\);

-- Location: LC_X9_Y4_N7
\state_show~0\ : maxv_lcell
-- Equation(s):
-- \state_show~0_combout\ = (((\present.Transmit~regout\) # (!\present.Stop~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \present.Transmit~regout\,
	datad => \present.Stop~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \state_show~0_combout\);

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Tx~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Tx~reg0_regout\,
	oe => VCC,
	padio => ww_Tx);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\state_show[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_state_show~0_combout\,
	oe => VCC,
	padio => ww_state_show(0));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\state_show[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Tx~0\,
	oe => VCC,
	padio => ww_state_show(1));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Clock_show~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \probhai|clk~regout\,
	oe => VCC,
	padio => ww_Clock_show);
END structure;


