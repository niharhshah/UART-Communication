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

-- DATE "08/10/2021 15:31:32"

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

ENTITY 	ModuleRx IS
    PORT (
	Rx : IN std_logic;
	clk : IN std_logic;
	data_out : BUFFER std_logic_vector(7 DOWNTO 0);
	valid : BUFFER std_logic
	);
END ModuleRx;

-- Design Ports Information


ARCHITECTURE structure OF ModuleRx IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Rx : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_data_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_valid : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \probhaiRx|fulsped|Add0~30_combout\ : std_logic;
SIGNAL \probhaiRx|fulsped|Add0~32\ : std_logic;
SIGNAL \probhaiRx|fulsped|Add0~32COUT1_55\ : std_logic;
SIGNAL \probhaiRx|fulsped|Add0~35_combout\ : std_logic;
SIGNAL \probhaiRx|fulsped|Add0~37\ : std_logic;
SIGNAL \probhaiRx|fulsped|Add0~37COUT1_56\ : std_logic;
SIGNAL \probhaiRx|fulsped|Add0~20_combout\ : std_logic;
SIGNAL \probhaiRx|fulsped|Add0~15_combout\ : std_logic;
SIGNAL \probhaiRx|fulsped|Add0~17\ : std_logic;
SIGNAL \probhaiRx|fulsped|Add0~17COUT1_51\ : std_logic;
SIGNAL \probhaiRx|fulsped|Add0~5_combout\ : std_logic;
SIGNAL \probhaiRx|fulsped|Add0~7\ : std_logic;
SIGNAL \probhaiRx|fulsped|Add0~7COUT1_52\ : std_logic;
SIGNAL \probhaiRx|fulsped|Add0~10_combout\ : std_logic;
SIGNAL \probhaiRx|fulsped|Add0~12\ : std_logic;
SIGNAL \probhaiRx|fulsped|Add0~12COUT1_53\ : std_logic;
SIGNAL \probhaiRx|fulsped|Add0~0_combout\ : std_logic;
SIGNAL \probhaiRx|fulsped|Add0~2\ : std_logic;
SIGNAL \probhaiRx|fulsped|Add0~2COUT1_54\ : std_logic;
SIGNAL \probhaiRx|fulsped|Add0~25_combout\ : std_logic;
SIGNAL \probhaiRx|fulsped|Add0~27\ : std_logic;
SIGNAL \probhaiRx|fulsped|Equal0~0\ : std_logic;
SIGNAL \probhaiRx|fulsped|Add0~22\ : std_logic;
SIGNAL \probhaiRx|fulsped|Add0~22COUT1_57\ : std_logic;
SIGNAL \probhaiRx|fulsped|Add0~45_combout\ : std_logic;
SIGNAL \probhaiRx|fulsped|Equal0~1\ : std_logic;
SIGNAL \probhaiRx|fulsped|Add0~47\ : std_logic;
SIGNAL \probhaiRx|fulsped|Add0~47COUT1_58\ : std_logic;
SIGNAL \probhaiRx|fulsped|Add0~40_combout\ : std_logic;
SIGNAL \probhaiRx|fulsped|Equal0~2\ : std_logic;
SIGNAL \probhaiRx|fulsped|clk~regout\ : std_logic;
SIGNAL \probhaiRx|count[0]~1\ : std_logic;
SIGNAL \probhaiRx|count[0]~1COUT1_15\ : std_logic;
SIGNAL \probhaiRx|count[1]~3\ : std_logic;
SIGNAL \probhaiRx|count[1]~3COUT1_16\ : std_logic;
SIGNAL \probhaiRx|count[2]~5\ : std_logic;
SIGNAL \probhaiRx|count[2]~5COUT1_17\ : std_logic;
SIGNAL \probhaiRx|count[3]~7\ : std_logic;
SIGNAL \probhaiRx|count[4]~9\ : std_logic;
SIGNAL \probhaiRx|count[4]~9COUT1_18\ : std_logic;
SIGNAL \probhaiRx|count[5]~11\ : std_logic;
SIGNAL \probhaiRx|count[5]~11COUT1_19\ : std_logic;
SIGNAL \probhaiRx|LessThan0~0_combout\ : std_logic;
SIGNAL \probhaiRx|LessThan0~1_combout\ : std_logic;
SIGNAL \probhaiRx|clk~regout\ : std_logic;
SIGNAL \Rx~combout\ : std_logic;
SIGNAL \present.vallid~regout\ : std_logic;
SIGNAL \present.whait~regout\ : std_logic;
SIGNAL \present.Reead~regout\ : std_logic;
SIGNAL \data_out~0\ : std_logic;
SIGNAL \data_out~1\ : std_logic;
SIGNAL \data_out~2\ : std_logic;
SIGNAL \data_out~3\ : std_logic;
SIGNAL \data_out~4\ : std_logic;
SIGNAL \data_out~5\ : std_logic;
SIGNAL \data_out~6\ : std_logic;
SIGNAL \data_out~7\ : std_logic;
SIGNAL InternalData : std_logic_vector(8 DOWNTO 0);
SIGNAL count : std_logic_vector(3 DOWNTO 0);
SIGNAL \probhaiRx|fulsped|count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \probhaiRx|count\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_present.Reead~regout\ : std_logic;

BEGIN

ww_Rx <= Rx;
ww_clk <= clk;
data_out <= ww_data_out;
valid <= ww_valid;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_present.Reead~regout\ <= NOT \present.Reead~regout\;

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

-- Location: LC_X5_Y6_N5
\probhaiRx|fulsped|Add0~30\ : maxv_lcell
-- Equation(s):
-- \probhaiRx|fulsped|Add0~30_combout\ = (\probhaiRx|fulsped|count\(5) $ ((\probhaiRx|fulsped|Add0~27\)))
-- \probhaiRx|fulsped|Add0~32\ = CARRY(((!\probhaiRx|fulsped|Add0~27\) # (!\probhaiRx|fulsped|count\(5))))
-- \probhaiRx|fulsped|Add0~32COUT1_55\ = CARRY(((!\probhaiRx|fulsped|Add0~27\) # (!\probhaiRx|fulsped|count\(5))))

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
	datab => \probhaiRx|fulsped|count\(5),
	cin => \probhaiRx|fulsped|Add0~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \probhaiRx|fulsped|Add0~30_combout\,
	cout0 => \probhaiRx|fulsped|Add0~32\,
	cout1 => \probhaiRx|fulsped|Add0~32COUT1_55\);

-- Location: LC_X4_Y6_N2
\probhaiRx|fulsped|count[5]\ : maxv_lcell
-- Equation(s):
-- \probhaiRx|fulsped|count\(5) = DFFEAS((((\probhaiRx|fulsped|Add0~30_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \probhaiRx|fulsped|Add0~30_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \probhaiRx|fulsped|count\(5));

-- Location: LC_X5_Y6_N6
\probhaiRx|fulsped|Add0~35\ : maxv_lcell
-- Equation(s):
-- \probhaiRx|fulsped|Add0~35_combout\ = (\probhaiRx|fulsped|count\(6) $ ((!(!\probhaiRx|fulsped|Add0~27\ & \probhaiRx|fulsped|Add0~32\) # (\probhaiRx|fulsped|Add0~27\ & \probhaiRx|fulsped|Add0~32COUT1_55\))))
-- \probhaiRx|fulsped|Add0~37\ = CARRY(((\probhaiRx|fulsped|count\(6) & !\probhaiRx|fulsped|Add0~32\)))
-- \probhaiRx|fulsped|Add0~37COUT1_56\ = CARRY(((\probhaiRx|fulsped|count\(6) & !\probhaiRx|fulsped|Add0~32COUT1_55\)))

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
	datab => \probhaiRx|fulsped|count\(6),
	cin => \probhaiRx|fulsped|Add0~27\,
	cin0 => \probhaiRx|fulsped|Add0~32\,
	cin1 => \probhaiRx|fulsped|Add0~32COUT1_55\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \probhaiRx|fulsped|Add0~35_combout\,
	cout0 => \probhaiRx|fulsped|Add0~37\,
	cout1 => \probhaiRx|fulsped|Add0~37COUT1_56\);

-- Location: LC_X6_Y6_N8
\probhaiRx|fulsped|count[6]\ : maxv_lcell
-- Equation(s):
-- \probhaiRx|fulsped|count\(6) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \probhaiRx|fulsped|Add0~35_combout\, , , VCC)

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
	datac => \probhaiRx|fulsped|Add0~35_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \probhaiRx|fulsped|count\(6));

-- Location: LC_X5_Y6_N7
\probhaiRx|fulsped|Add0~20\ : maxv_lcell
-- Equation(s):
-- \probhaiRx|fulsped|Add0~20_combout\ = (\probhaiRx|fulsped|count\(7) $ (((!\probhaiRx|fulsped|Add0~27\ & \probhaiRx|fulsped|Add0~37\) # (\probhaiRx|fulsped|Add0~27\ & \probhaiRx|fulsped|Add0~37COUT1_56\))))
-- \probhaiRx|fulsped|Add0~22\ = CARRY(((!\probhaiRx|fulsped|Add0~37\) # (!\probhaiRx|fulsped|count\(7))))
-- \probhaiRx|fulsped|Add0~22COUT1_57\ = CARRY(((!\probhaiRx|fulsped|Add0~37COUT1_56\) # (!\probhaiRx|fulsped|count\(7))))

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
	datab => \probhaiRx|fulsped|count\(7),
	cin => \probhaiRx|fulsped|Add0~27\,
	cin0 => \probhaiRx|fulsped|Add0~37\,
	cin1 => \probhaiRx|fulsped|Add0~37COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \probhaiRx|fulsped|Add0~20_combout\,
	cout0 => \probhaiRx|fulsped|Add0~22\,
	cout1 => \probhaiRx|fulsped|Add0~22COUT1_57\);

-- Location: LC_X6_Y6_N9
\probhaiRx|fulsped|count[7]\ : maxv_lcell
-- Equation(s):
-- \probhaiRx|fulsped|count\(7) = DFFEAS((((!\probhaiRx|fulsped|Equal0~2\ & \probhaiRx|fulsped|Add0~20_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \probhaiRx|fulsped|Equal0~2\,
	datad => \probhaiRx|fulsped|Add0~20_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \probhaiRx|fulsped|count\(7));

-- Location: LC_X5_Y6_N0
\probhaiRx|fulsped|Add0~15\ : maxv_lcell
-- Equation(s):
-- \probhaiRx|fulsped|Add0~15_combout\ = ((!\probhaiRx|fulsped|count\(0)))
-- \probhaiRx|fulsped|Add0~17\ = CARRY(((\probhaiRx|fulsped|count\(0))))
-- \probhaiRx|fulsped|Add0~17COUT1_51\ = CARRY(((\probhaiRx|fulsped|count\(0))))

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
	datab => \probhaiRx|fulsped|count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \probhaiRx|fulsped|Add0~15_combout\,
	cout0 => \probhaiRx|fulsped|Add0~17\,
	cout1 => \probhaiRx|fulsped|Add0~17COUT1_51\);

-- Location: LC_X6_Y6_N2
\probhaiRx|fulsped|count[0]\ : maxv_lcell
-- Equation(s):
-- \probhaiRx|fulsped|count\(0) = DFFEAS((\probhaiRx|fulsped|Add0~15_combout\ & (((!\probhaiRx|fulsped|Equal0~2\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \probhaiRx|fulsped|Add0~15_combout\,
	datac => \probhaiRx|fulsped|Equal0~2\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \probhaiRx|fulsped|count\(0));

-- Location: LC_X5_Y6_N1
\probhaiRx|fulsped|Add0~5\ : maxv_lcell
-- Equation(s):
-- \probhaiRx|fulsped|Add0~5_combout\ = (\probhaiRx|fulsped|count\(1) $ ((\probhaiRx|fulsped|Add0~17\)))
-- \probhaiRx|fulsped|Add0~7\ = CARRY(((!\probhaiRx|fulsped|Add0~17\) # (!\probhaiRx|fulsped|count\(1))))
-- \probhaiRx|fulsped|Add0~7COUT1_52\ = CARRY(((!\probhaiRx|fulsped|Add0~17COUT1_51\) # (!\probhaiRx|fulsped|count\(1))))

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
	datab => \probhaiRx|fulsped|count\(1),
	cin0 => \probhaiRx|fulsped|Add0~17\,
	cin1 => \probhaiRx|fulsped|Add0~17COUT1_51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \probhaiRx|fulsped|Add0~5_combout\,
	cout0 => \probhaiRx|fulsped|Add0~7\,
	cout1 => \probhaiRx|fulsped|Add0~7COUT1_52\);

-- Location: LC_X6_Y6_N4
\probhaiRx|fulsped|count[1]\ : maxv_lcell
-- Equation(s):
-- \probhaiRx|fulsped|count\(1) = DFFEAS((\probhaiRx|fulsped|Add0~5_combout\ & (((!\probhaiRx|fulsped|Equal0~2\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \probhaiRx|fulsped|Add0~5_combout\,
	datac => \probhaiRx|fulsped|Equal0~2\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \probhaiRx|fulsped|count\(1));

-- Location: LC_X5_Y6_N2
\probhaiRx|fulsped|Add0~10\ : maxv_lcell
-- Equation(s):
-- \probhaiRx|fulsped|Add0~10_combout\ = \probhaiRx|fulsped|count\(2) $ ((((!\probhaiRx|fulsped|Add0~7\))))
-- \probhaiRx|fulsped|Add0~12\ = CARRY((\probhaiRx|fulsped|count\(2) & ((!\probhaiRx|fulsped|Add0~7\))))
-- \probhaiRx|fulsped|Add0~12COUT1_53\ = CARRY((\probhaiRx|fulsped|count\(2) & ((!\probhaiRx|fulsped|Add0~7COUT1_52\))))

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
	dataa => \probhaiRx|fulsped|count\(2),
	cin0 => \probhaiRx|fulsped|Add0~7\,
	cin1 => \probhaiRx|fulsped|Add0~7COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \probhaiRx|fulsped|Add0~10_combout\,
	cout0 => \probhaiRx|fulsped|Add0~12\,
	cout1 => \probhaiRx|fulsped|Add0~12COUT1_53\);

-- Location: LC_X6_Y6_N0
\probhaiRx|fulsped|count[2]\ : maxv_lcell
-- Equation(s):
-- \probhaiRx|fulsped|Equal0~0\ = (\probhaiRx|fulsped|count\(1) & (!\probhaiRx|fulsped|count\(0) & (!C1_count[2] & \probhaiRx|fulsped|count\(3))))
-- \probhaiRx|fulsped|count\(2) = DFFEAS(\probhaiRx|fulsped|Equal0~0\, GLOBAL(\clk~combout\), VCC, , , \probhaiRx|fulsped|Add0~10_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => \probhaiRx|fulsped|count\(1),
	datab => \probhaiRx|fulsped|count\(0),
	datac => \probhaiRx|fulsped|Add0~10_combout\,
	datad => \probhaiRx|fulsped|count\(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \probhaiRx|fulsped|Equal0~0\,
	regout => \probhaiRx|fulsped|count\(2));

-- Location: LC_X5_Y6_N3
\probhaiRx|fulsped|Add0~0\ : maxv_lcell
-- Equation(s):
-- \probhaiRx|fulsped|Add0~0_combout\ = \probhaiRx|fulsped|count\(3) $ ((((\probhaiRx|fulsped|Add0~12\))))
-- \probhaiRx|fulsped|Add0~2\ = CARRY(((!\probhaiRx|fulsped|Add0~12\)) # (!\probhaiRx|fulsped|count\(3)))
-- \probhaiRx|fulsped|Add0~2COUT1_54\ = CARRY(((!\probhaiRx|fulsped|Add0~12COUT1_53\)) # (!\probhaiRx|fulsped|count\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \probhaiRx|fulsped|count\(3),
	cin0 => \probhaiRx|fulsped|Add0~12\,
	cin1 => \probhaiRx|fulsped|Add0~12COUT1_53\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \probhaiRx|fulsped|Add0~0_combout\,
	cout0 => \probhaiRx|fulsped|Add0~2\,
	cout1 => \probhaiRx|fulsped|Add0~2COUT1_54\);

-- Location: LC_X6_Y6_N3
\probhaiRx|fulsped|count[3]\ : maxv_lcell
-- Equation(s):
-- \probhaiRx|fulsped|count\(3) = DFFEAS(((\probhaiRx|fulsped|Add0~0_combout\ & (!\probhaiRx|fulsped|Equal0~2\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \probhaiRx|fulsped|Add0~0_combout\,
	datac => \probhaiRx|fulsped|Equal0~2\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \probhaiRx|fulsped|count\(3));

-- Location: LC_X5_Y6_N4
\probhaiRx|fulsped|Add0~25\ : maxv_lcell
-- Equation(s):
-- \probhaiRx|fulsped|Add0~25_combout\ = (\probhaiRx|fulsped|count\(4) $ ((!\probhaiRx|fulsped|Add0~2\)))
-- \probhaiRx|fulsped|Add0~27\ = CARRY(((\probhaiRx|fulsped|count\(4) & !\probhaiRx|fulsped|Add0~2COUT1_54\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \probhaiRx|fulsped|count\(4),
	cin0 => \probhaiRx|fulsped|Add0~2\,
	cin1 => \probhaiRx|fulsped|Add0~2COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \probhaiRx|fulsped|Add0~25_combout\,
	cout => \probhaiRx|fulsped|Add0~27\);

-- Location: LC_X6_Y6_N5
\probhaiRx|fulsped|count[4]\ : maxv_lcell
-- Equation(s):
-- \probhaiRx|fulsped|Equal0~1\ = (\probhaiRx|fulsped|count\(7) & (!\probhaiRx|fulsped|count\(6) & (!C1_count[4] & !\probhaiRx|fulsped|count\(5))))
-- \probhaiRx|fulsped|count\(4) = DFFEAS(\probhaiRx|fulsped|Equal0~1\, GLOBAL(\clk~combout\), VCC, , , \probhaiRx|fulsped|Add0~25_combout\, , , VCC)

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
	dataa => \probhaiRx|fulsped|count\(7),
	datab => \probhaiRx|fulsped|count\(6),
	datac => \probhaiRx|fulsped|Add0~25_combout\,
	datad => \probhaiRx|fulsped|count\(5),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \probhaiRx|fulsped|Equal0~1\,
	regout => \probhaiRx|fulsped|count\(4));

-- Location: LC_X5_Y6_N8
\probhaiRx|fulsped|Add0~45\ : maxv_lcell
-- Equation(s):
-- \probhaiRx|fulsped|Add0~45_combout\ = \probhaiRx|fulsped|count\(8) $ ((((!(!\probhaiRx|fulsped|Add0~27\ & \probhaiRx|fulsped|Add0~22\) # (\probhaiRx|fulsped|Add0~27\ & \probhaiRx|fulsped|Add0~22COUT1_57\)))))
-- \probhaiRx|fulsped|Add0~47\ = CARRY((\probhaiRx|fulsped|count\(8) & ((!\probhaiRx|fulsped|Add0~22\))))
-- \probhaiRx|fulsped|Add0~47COUT1_58\ = CARRY((\probhaiRx|fulsped|count\(8) & ((!\probhaiRx|fulsped|Add0~22COUT1_57\))))

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
	dataa => \probhaiRx|fulsped|count\(8),
	cin => \probhaiRx|fulsped|Add0~27\,
	cin0 => \probhaiRx|fulsped|Add0~22\,
	cin1 => \probhaiRx|fulsped|Add0~22COUT1_57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \probhaiRx|fulsped|Add0~45_combout\,
	cout0 => \probhaiRx|fulsped|Add0~47\,
	cout1 => \probhaiRx|fulsped|Add0~47COUT1_58\);

-- Location: LC_X6_Y6_N6
\probhaiRx|fulsped|count[8]\ : maxv_lcell
-- Equation(s):
-- \probhaiRx|fulsped|Equal0~2\ = (\probhaiRx|fulsped|count\(9) & (\probhaiRx|fulsped|Equal0~0\ & (!C1_count[8] & \probhaiRx|fulsped|Equal0~1\)))
-- \probhaiRx|fulsped|count\(8) = DFFEAS(\probhaiRx|fulsped|Equal0~2\, GLOBAL(\clk~combout\), VCC, , , \probhaiRx|fulsped|Add0~45_combout\, , , VCC)

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
	dataa => \probhaiRx|fulsped|count\(9),
	datab => \probhaiRx|fulsped|Equal0~0\,
	datac => \probhaiRx|fulsped|Add0~45_combout\,
	datad => \probhaiRx|fulsped|Equal0~1\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \probhaiRx|fulsped|Equal0~2\,
	regout => \probhaiRx|fulsped|count\(8));

-- Location: LC_X5_Y6_N9
\probhaiRx|fulsped|Add0~40\ : maxv_lcell
-- Equation(s):
-- \probhaiRx|fulsped|Add0~40_combout\ = (((!\probhaiRx|fulsped|Add0~27\ & \probhaiRx|fulsped|Add0~47\) # (\probhaiRx|fulsped|Add0~27\ & \probhaiRx|fulsped|Add0~47COUT1_58\) $ (\probhaiRx|fulsped|count\(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \probhaiRx|fulsped|count\(9),
	cin => \probhaiRx|fulsped|Add0~27\,
	cin0 => \probhaiRx|fulsped|Add0~47\,
	cin1 => \probhaiRx|fulsped|Add0~47COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \probhaiRx|fulsped|Add0~40_combout\);

-- Location: LC_X6_Y6_N7
\probhaiRx|fulsped|count[9]\ : maxv_lcell
-- Equation(s):
-- \probhaiRx|fulsped|count\(9) = DFFEAS((((\probhaiRx|fulsped|Add0~40_combout\ & !\probhaiRx|fulsped|Equal0~2\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \probhaiRx|fulsped|Add0~40_combout\,
	datad => \probhaiRx|fulsped|Equal0~2\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \probhaiRx|fulsped|count\(9));

-- Location: LC_X6_Y6_N1
\probhaiRx|fulsped|clk\ : maxv_lcell
-- Equation(s):
-- \probhaiRx|fulsped|clk~regout\ = DFFEAS(((\probhaiRx|fulsped|Equal0~2\ $ (\probhaiRx|fulsped|clk~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	datac => \probhaiRx|fulsped|Equal0~2\,
	datad => \probhaiRx|fulsped|clk~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \probhaiRx|fulsped|clk~regout\);

-- Location: LC_X11_Y4_N1
\probhaiRx|count[0]\ : maxv_lcell
-- Equation(s):
-- \probhaiRx|count\(0) = DFFEAS(((!\probhaiRx|count\(0))), GLOBAL(\probhaiRx|fulsped|clk~regout\), VCC, , , , , \probhaiRx|LessThan0~1_combout\, )
-- \probhaiRx|count[0]~1\ = CARRY(((\probhaiRx|count\(0))))
-- \probhaiRx|count[0]~1COUT1_15\ = CARRY(((\probhaiRx|count\(0))))

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
	clk => \probhaiRx|fulsped|clk~regout\,
	datab => \probhaiRx|count\(0),
	aclr => GND,
	sclr => \probhaiRx|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \probhaiRx|count\(0),
	cout0 => \probhaiRx|count[0]~1\,
	cout1 => \probhaiRx|count[0]~1COUT1_15\);

-- Location: LC_X11_Y4_N2
\probhaiRx|count[1]\ : maxv_lcell
-- Equation(s):
-- \probhaiRx|count\(1) = DFFEAS((\probhaiRx|count\(1) $ ((\probhaiRx|count[0]~1\))), GLOBAL(\probhaiRx|fulsped|clk~regout\), VCC, , , , , \probhaiRx|LessThan0~1_combout\, )
-- \probhaiRx|count[1]~3\ = CARRY(((!\probhaiRx|count[0]~1\) # (!\probhaiRx|count\(1))))
-- \probhaiRx|count[1]~3COUT1_16\ = CARRY(((!\probhaiRx|count[0]~1COUT1_15\) # (!\probhaiRx|count\(1))))

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
	clk => \probhaiRx|fulsped|clk~regout\,
	datab => \probhaiRx|count\(1),
	aclr => GND,
	sclr => \probhaiRx|LessThan0~1_combout\,
	cin0 => \probhaiRx|count[0]~1\,
	cin1 => \probhaiRx|count[0]~1COUT1_15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \probhaiRx|count\(1),
	cout0 => \probhaiRx|count[1]~3\,
	cout1 => \probhaiRx|count[1]~3COUT1_16\);

-- Location: LC_X11_Y4_N3
\probhaiRx|count[2]\ : maxv_lcell
-- Equation(s):
-- \probhaiRx|count\(2) = DFFEAS(\probhaiRx|count\(2) $ ((((!\probhaiRx|count[1]~3\)))), GLOBAL(\probhaiRx|fulsped|clk~regout\), VCC, , , , , \probhaiRx|LessThan0~1_combout\, )
-- \probhaiRx|count[2]~5\ = CARRY((\probhaiRx|count\(2) & ((!\probhaiRx|count[1]~3\))))
-- \probhaiRx|count[2]~5COUT1_17\ = CARRY((\probhaiRx|count\(2) & ((!\probhaiRx|count[1]~3COUT1_16\))))

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
	clk => \probhaiRx|fulsped|clk~regout\,
	dataa => \probhaiRx|count\(2),
	aclr => GND,
	sclr => \probhaiRx|LessThan0~1_combout\,
	cin0 => \probhaiRx|count[1]~3\,
	cin1 => \probhaiRx|count[1]~3COUT1_16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \probhaiRx|count\(2),
	cout0 => \probhaiRx|count[2]~5\,
	cout1 => \probhaiRx|count[2]~5COUT1_17\);

-- Location: LC_X11_Y4_N4
\probhaiRx|count[3]\ : maxv_lcell
-- Equation(s):
-- \probhaiRx|count\(3) = DFFEAS((\probhaiRx|count\(3) $ ((\probhaiRx|count[2]~5\))), GLOBAL(\probhaiRx|fulsped|clk~regout\), VCC, , , , , \probhaiRx|LessThan0~1_combout\, )
-- \probhaiRx|count[3]~7\ = CARRY(((!\probhaiRx|count[2]~5COUT1_17\) # (!\probhaiRx|count\(3))))

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
	clk => \probhaiRx|fulsped|clk~regout\,
	datab => \probhaiRx|count\(3),
	aclr => GND,
	sclr => \probhaiRx|LessThan0~1_combout\,
	cin0 => \probhaiRx|count[2]~5\,
	cin1 => \probhaiRx|count[2]~5COUT1_17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \probhaiRx|count\(3),
	cout => \probhaiRx|count[3]~7\);

-- Location: LC_X11_Y4_N5
\probhaiRx|count[4]\ : maxv_lcell
-- Equation(s):
-- \probhaiRx|count\(4) = DFFEAS(\probhaiRx|count\(4) $ ((((!\probhaiRx|count[3]~7\)))), GLOBAL(\probhaiRx|fulsped|clk~regout\), VCC, , , , , \probhaiRx|LessThan0~1_combout\, )
-- \probhaiRx|count[4]~9\ = CARRY((\probhaiRx|count\(4) & ((!\probhaiRx|count[3]~7\))))
-- \probhaiRx|count[4]~9COUT1_18\ = CARRY((\probhaiRx|count\(4) & ((!\probhaiRx|count[3]~7\))))

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
	clk => \probhaiRx|fulsped|clk~regout\,
	dataa => \probhaiRx|count\(4),
	aclr => GND,
	sclr => \probhaiRx|LessThan0~1_combout\,
	cin => \probhaiRx|count[3]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \probhaiRx|count\(4),
	cout0 => \probhaiRx|count[4]~9\,
	cout1 => \probhaiRx|count[4]~9COUT1_18\);

-- Location: LC_X11_Y4_N6
\probhaiRx|count[5]\ : maxv_lcell
-- Equation(s):
-- \probhaiRx|count\(5) = DFFEAS(\probhaiRx|count\(5) $ (((((!\probhaiRx|count[3]~7\ & \probhaiRx|count[4]~9\) # (\probhaiRx|count[3]~7\ & \probhaiRx|count[4]~9COUT1_18\))))), GLOBAL(\probhaiRx|fulsped|clk~regout\), VCC, , , , , 
-- \probhaiRx|LessThan0~1_combout\, )
-- \probhaiRx|count[5]~11\ = CARRY(((!\probhaiRx|count[4]~9\)) # (!\probhaiRx|count\(5)))
-- \probhaiRx|count[5]~11COUT1_19\ = CARRY(((!\probhaiRx|count[4]~9COUT1_18\)) # (!\probhaiRx|count\(5)))

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
	clk => \probhaiRx|fulsped|clk~regout\,
	dataa => \probhaiRx|count\(5),
	aclr => GND,
	sclr => \probhaiRx|LessThan0~1_combout\,
	cin => \probhaiRx|count[3]~7\,
	cin0 => \probhaiRx|count[4]~9\,
	cin1 => \probhaiRx|count[4]~9COUT1_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \probhaiRx|count\(5),
	cout0 => \probhaiRx|count[5]~11\,
	cout1 => \probhaiRx|count[5]~11COUT1_19\);

-- Location: LC_X11_Y4_N7
\probhaiRx|count[6]\ : maxv_lcell
-- Equation(s):
-- \probhaiRx|count\(6) = DFFEAS((\probhaiRx|count\(6) $ ((!(!\probhaiRx|count[3]~7\ & \probhaiRx|count[5]~11\) # (\probhaiRx|count[3]~7\ & \probhaiRx|count[5]~11COUT1_19\)))), GLOBAL(\probhaiRx|fulsped|clk~regout\), VCC, , , , , 
-- \probhaiRx|LessThan0~1_combout\, )

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
	clk => \probhaiRx|fulsped|clk~regout\,
	datab => \probhaiRx|count\(6),
	aclr => GND,
	sclr => \probhaiRx|LessThan0~1_combout\,
	cin => \probhaiRx|count[3]~7\,
	cin0 => \probhaiRx|count[5]~11\,
	cin1 => \probhaiRx|count[5]~11COUT1_19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \probhaiRx|count\(6));

-- Location: LC_X11_Y4_N8
\probhaiRx|LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \probhaiRx|LessThan0~0_combout\ = (\probhaiRx|count\(3)) # ((\probhaiRx|count\(1)) # ((\probhaiRx|count\(0)) # (\probhaiRx|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \probhaiRx|count\(3),
	datab => \probhaiRx|count\(1),
	datac => \probhaiRx|count\(0),
	datad => \probhaiRx|count\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \probhaiRx|LessThan0~0_combout\);

-- Location: LC_X11_Y4_N9
\probhaiRx|LessThan0~1\ : maxv_lcell
-- Equation(s):
-- \probhaiRx|LessThan0~1_combout\ = (\probhaiRx|count\(5)) # ((\probhaiRx|count\(6)) # ((\probhaiRx|count\(4)) # (\probhaiRx|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \probhaiRx|count\(5),
	datab => \probhaiRx|count\(6),
	datac => \probhaiRx|count\(4),
	datad => \probhaiRx|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \probhaiRx|LessThan0~1_combout\);

-- Location: LC_X11_Y4_N0
\probhaiRx|clk\ : maxv_lcell
-- Equation(s):
-- \probhaiRx|clk~regout\ = DFFEAS(((\probhaiRx|clk~regout\ $ (\probhaiRx|LessThan0~1_combout\))), GLOBAL(\probhaiRx|fulsped|clk~regout\), VCC, , , , , , )

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
	clk => \probhaiRx|fulsped|clk~regout\,
	datac => \probhaiRx|clk~regout\,
	datad => \probhaiRx|LessThan0~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \probhaiRx|clk~regout\);

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Rx~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Rx,
	combout => \Rx~combout\);

-- Location: LC_X9_Y4_N2
\count[0]\ : maxv_lcell
-- Equation(s):
-- count(0) = DFFEAS((((!count(0)))), GLOBAL(\probhaiRx|clk~regout\), GLOBAL(\present.Reead~regout\), , , , , , )

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
	clk => \probhaiRx|clk~regout\,
	datad => count(0),
	aclr => \ALT_INV_present.Reead~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(0));

-- Location: LC_X9_Y4_N6
\count[1]\ : maxv_lcell
-- Equation(s):
-- count(1) = DFFEAS(((count(1) $ (count(0)))), GLOBAL(\probhaiRx|clk~regout\), GLOBAL(\present.Reead~regout\), , , , , , )

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
	clk => \probhaiRx|clk~regout\,
	datac => count(1),
	datad => count(0),
	aclr => \ALT_INV_present.Reead~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(1));

-- Location: LC_X9_Y4_N3
\count[2]\ : maxv_lcell
-- Equation(s):
-- count(2) = DFFEAS((count(2) $ (((count(0) & count(1))))), GLOBAL(\probhaiRx|clk~regout\), GLOBAL(\present.Reead~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3fc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \probhaiRx|clk~regout\,
	datab => count(0),
	datac => count(1),
	datad => count(2),
	aclr => \ALT_INV_present.Reead~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(2));

-- Location: LC_X9_Y4_N4
\count[3]\ : maxv_lcell
-- Equation(s):
-- count(3) = DFFEAS(count(3) $ (((count(2) & (count(0) & count(1))))), GLOBAL(\probhaiRx|clk~regout\), GLOBAL(\present.Reead~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \probhaiRx|clk~regout\,
	dataa => count(2),
	datab => count(0),
	datac => count(1),
	datad => count(3),
	aclr => \ALT_INV_present.Reead~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(3));

-- Location: LC_X9_Y4_N8
\present.vallid\ : maxv_lcell
-- Equation(s):
-- \present.vallid~regout\ = DFFEAS((((\present.Reead~regout\ & count(3)))), GLOBAL(\probhaiRx|clk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \probhaiRx|clk~regout\,
	datac => \present.Reead~regout\,
	datad => count(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present.vallid~regout\);

-- Location: LC_X9_Y4_N9
\present.whait\ : maxv_lcell
-- Equation(s):
-- \present.whait~regout\ = DFFEAS((!\present.vallid~regout\ & (((\present.whait~regout\)) # (!\Rx~combout\))), GLOBAL(\probhaiRx|clk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5511",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \probhaiRx|clk~regout\,
	dataa => \present.vallid~regout\,
	datab => \Rx~combout\,
	datad => \present.whait~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present.whait~regout\);

-- Location: LC_X10_Y4_N9
\present.Reead\ : maxv_lcell
-- Equation(s):
-- \present.Reead~regout\ = DFFEAS((\Rx~combout\ & (\present.Reead~regout\ & ((!count(3))))) # (!\Rx~combout\ & (((\present.Reead~regout\ & !count(3))) # (!\present.whait~regout\))), GLOBAL(\probhaiRx|clk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "05cd",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \probhaiRx|clk~regout\,
	dataa => \Rx~combout\,
	datab => \present.Reead~regout\,
	datac => \present.whait~regout\,
	datad => count(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present.Reead~regout\);

-- Location: LC_X10_Y4_N3
\InternalData[8]\ : maxv_lcell
-- Equation(s):
-- InternalData(8) = DFFEAS(GND, GLOBAL(\probhaiRx|clk~regout\), VCC, , \present.Reead~regout\, \Rx~combout\, , , VCC)

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
	clk => \probhaiRx|clk~regout\,
	datac => \Rx~combout\,
	aclr => GND,
	sload => VCC,
	ena => \present.Reead~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => InternalData(8));

-- Location: LC_X10_Y4_N6
\InternalData[7]\ : maxv_lcell
-- Equation(s):
-- \data_out~7\ = ((!\present.Reead~regout\ & (InternalData[7])))
-- InternalData(7) = DFFEAS(\data_out~7\, GLOBAL(\probhaiRx|clk~regout\), VCC, , \present.Reead~regout\, InternalData(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhaiRx|clk~regout\,
	datab => \present.Reead~regout\,
	datac => InternalData(8),
	aclr => GND,
	sload => VCC,
	ena => \present.Reead~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_out~7\,
	regout => InternalData(7));

-- Location: LC_X10_Y4_N7
\InternalData[6]\ : maxv_lcell
-- Equation(s):
-- \data_out~6\ = ((!\present.Reead~regout\ & (InternalData[6])))
-- InternalData(6) = DFFEAS(\data_out~6\, GLOBAL(\probhaiRx|clk~regout\), VCC, , \present.Reead~regout\, InternalData(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhaiRx|clk~regout\,
	datab => \present.Reead~regout\,
	datac => InternalData(7),
	aclr => GND,
	sload => VCC,
	ena => \present.Reead~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_out~6\,
	regout => InternalData(6));

-- Location: LC_X10_Y4_N5
\InternalData[5]\ : maxv_lcell
-- Equation(s):
-- \data_out~5\ = ((!\present.Reead~regout\ & (InternalData[5])))
-- InternalData(5) = DFFEAS(\data_out~5\, GLOBAL(\probhaiRx|clk~regout\), VCC, , \present.Reead~regout\, InternalData(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhaiRx|clk~regout\,
	datab => \present.Reead~regout\,
	datac => InternalData(6),
	aclr => GND,
	sload => VCC,
	ena => \present.Reead~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_out~5\,
	regout => InternalData(5));

-- Location: LC_X10_Y4_N1
\InternalData[4]\ : maxv_lcell
-- Equation(s):
-- \data_out~4\ = ((!\present.Reead~regout\ & (InternalData[4])))
-- InternalData(4) = DFFEAS(\data_out~4\, GLOBAL(\probhaiRx|clk~regout\), VCC, , \present.Reead~regout\, InternalData(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhaiRx|clk~regout\,
	datab => \present.Reead~regout\,
	datac => InternalData(5),
	aclr => GND,
	sload => VCC,
	ena => \present.Reead~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_out~4\,
	regout => InternalData(4));

-- Location: LC_X10_Y4_N0
\InternalData[3]\ : maxv_lcell
-- Equation(s):
-- \data_out~3\ = ((!\present.Reead~regout\ & (InternalData[3])))
-- InternalData(3) = DFFEAS(\data_out~3\, GLOBAL(\probhaiRx|clk~regout\), VCC, , \present.Reead~regout\, InternalData(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhaiRx|clk~regout\,
	datab => \present.Reead~regout\,
	datac => InternalData(4),
	aclr => GND,
	sload => VCC,
	ena => \present.Reead~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_out~3\,
	regout => InternalData(3));

-- Location: LC_X10_Y4_N8
\InternalData[2]\ : maxv_lcell
-- Equation(s):
-- \data_out~2\ = ((!\present.Reead~regout\ & (InternalData[2])))
-- InternalData(2) = DFFEAS(\data_out~2\, GLOBAL(\probhaiRx|clk~regout\), VCC, , \present.Reead~regout\, InternalData(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhaiRx|clk~regout\,
	datab => \present.Reead~regout\,
	datac => InternalData(3),
	aclr => GND,
	sload => VCC,
	ena => \present.Reead~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_out~2\,
	regout => InternalData(2));

-- Location: LC_X10_Y4_N4
\InternalData[1]\ : maxv_lcell
-- Equation(s):
-- \data_out~1\ = ((!\present.Reead~regout\ & (InternalData[1])))
-- InternalData(1) = DFFEAS(\data_out~1\, GLOBAL(\probhaiRx|clk~regout\), VCC, , \present.Reead~regout\, InternalData(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhaiRx|clk~regout\,
	datab => \present.Reead~regout\,
	datac => InternalData(2),
	aclr => GND,
	sload => VCC,
	ena => \present.Reead~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_out~1\,
	regout => InternalData(1));

-- Location: LC_X10_Y4_N2
\InternalData[0]\ : maxv_lcell
-- Equation(s):
-- \data_out~0\ = ((!\present.Reead~regout\ & (InternalData[0])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \probhaiRx|clk~regout\,
	datab => \present.Reead~regout\,
	datac => InternalData(1),
	aclr => GND,
	sload => VCC,
	ena => \present.Reead~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_out~0\,
	regout => InternalData(0));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_out[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_out~0\,
	oe => VCC,
	padio => ww_data_out(0));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_out[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_out~1\,
	oe => VCC,
	padio => ww_data_out(1));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_out[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_out~2\,
	oe => VCC,
	padio => ww_data_out(2));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_out[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_out~3\,
	oe => VCC,
	padio => ww_data_out(3));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_out[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_out~4\,
	oe => VCC,
	padio => ww_data_out(4));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_out[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_out~5\,
	oe => VCC,
	padio => ww_data_out(5));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_out[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_out~6\,
	oe => VCC,
	padio => ww_data_out(6));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_out[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_out~7\,
	oe => VCC,
	padio => ww_data_out(7));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\valid~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \present.vallid~regout\,
	oe => VCC,
	padio => ww_valid);
END structure;


