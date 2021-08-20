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

-- DATE "01/10/2020 19:17:58"

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
	Tx : BUFFER std_logic;
	send : IN std_logic;
	clock_show : BUFFER std_logic;
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
SIGNAL ww_clock_show : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \send~combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \nxt.Load_202\ : std_logic;
SIGNAL \present.Load~regout\ : std_logic;
SIGNAL \nxt.Transmit_193\ : std_logic;
SIGNAL \present.Transmit~regout\ : std_logic;
SIGNAL \done|done~1_combout\ : std_logic;
SIGNAL \nxt.Whait_184~combout\ : std_logic;
SIGNAL \data~2_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \present.Whait~regout\ : std_logic;
SIGNAL \ien~combout\ : std_logic;
SIGNAL \done|count[0]~1_combout\ : std_logic;
SIGNAL \done|done~0_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \nxt.Stop_211~combout\ : std_logic;
SIGNAL \present.Stop~regout\ : std_logic;
SIGNAL \Tx~1_combout\ : std_logic;
SIGNAL \Selector1~0\ : std_logic;
SIGNAL \Tx$latch~combout\ : std_logic;
SIGNAL data : std_logic_vector(8 DOWNTO 0);
SIGNAL \done|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_in~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_data_in <= data_in;
Tx <= ww_Tx;
ww_send <= send;
clock_show <= ww_clock_show;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\send~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_send,
	combout => \send~combout\);

-- Location: LC_X12_Y2_N5
\Selector16~0\ : maxv_lcell
-- Equation(s):
-- \Selector16~0_combout\ = (((\send~combout\) # (\present.Stop~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \send~combout\,
	datad => \present.Stop~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector16~0_combout\);

-- Location: LC_X13_Y2_N6
\present.Load\ : maxv_lcell
-- Equation(s):
-- \nxt.Load_202\ = ((GLOBAL(\Selector19~0_combout\) & ((!\Selector16~0_combout\))) # (!GLOBAL(\Selector19~0_combout\) & (\nxt.Load_202\)))
-- \present.Load~regout\ = DFFEAS(\nxt.Load_202\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30fc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \Selector19~0_combout\,
	datac => \nxt.Load_202\,
	datad => \Selector16~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \nxt.Load_202\,
	regout => \present.Load~regout\);

-- Location: LC_X13_Y2_N7
\present.Transmit\ : maxv_lcell
-- Equation(s):
-- \nxt.Transmit_193\ = ((GLOBAL(\Selector19~0_combout\) & ((\present.Load~regout\))) # (!GLOBAL(\Selector19~0_combout\) & (\nxt.Transmit_193\)))
-- \present.Transmit~regout\ = DFFEAS(\nxt.Transmit_193\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \Selector19~0_combout\,
	datac => \nxt.Transmit_193\,
	datad => \present.Load~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \nxt.Transmit_193\,
	regout => \present.Transmit~regout\);

-- Location: LC_X12_Y3_N8
\done|done~1\ : maxv_lcell
-- Equation(s):
-- \done|done~1_combout\ = (((\done|done~0_combout\ & \ien~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \done|done~0_combout\,
	datad => \ien~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|done~1_combout\);

-- Location: LC_X12_Y2_N8
\nxt.Whait_184\ : maxv_lcell
-- Equation(s):
-- \nxt.Whait_184~combout\ = ((\present.Transmit~regout\ & ((\done|done~1_combout\) # (\nxt.Whait_184~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \present.Transmit~regout\,
	datac => \done|done~1_combout\,
	datad => \nxt.Whait_184~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \nxt.Whait_184~combout\);

-- Location: LC_X12_Y3_N6
\data~2\ : maxv_lcell
-- Equation(s):
-- \data~2_combout\ = (((\present.Whait~regout\) # (!\present.Stop~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \present.Stop~regout\,
	datad => \present.Whait~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data~2_combout\);

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_in(1),
	combout => \data_in~combout\(1));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_in(2),
	combout => \data_in~combout\(2));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_in(3),
	combout => \data_in~combout\(3));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_in(4),
	combout => \data_in~combout\(4));

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_in(5),
	combout => \data_in~combout\(5));

-- Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_in(6),
	combout => \data_in~combout\(6));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_in(7),
	combout => \data_in~combout\(7));

-- Location: LC_X14_Y2_N1
\Selector13~0\ : maxv_lcell
-- Equation(s):
-- \Selector13~0_combout\ = ((\data_in~combout\(7)) # ((\present.Transmit~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\(7),
	datad => \present.Transmit~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector13~0_combout\);

-- Location: LC_X14_Y2_N5
\data[8]\ : maxv_lcell
-- Equation(s):
-- data(8) = ((GLOBAL(\data~2_combout\) & (data(8))) # (!GLOBAL(\data~2_combout\) & ((\Selector13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => data(8),
	datac => \data~2_combout\,
	datad => \Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => data(8));

-- Location: LC_X14_Y2_N2
\Selector12~0\ : maxv_lcell
-- Equation(s):
-- \Selector12~0_combout\ = ((\present.Transmit~regout\ & ((data(8)))) # (!\present.Transmit~regout\ & (\data_in~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\(6),
	datac => data(8),
	datad => \present.Transmit~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector12~0_combout\);

-- Location: LC_X14_Y2_N0
\data[7]\ : maxv_lcell
-- Equation(s):
-- data(7) = ((GLOBAL(\data~2_combout\) & (data(7))) # (!GLOBAL(\data~2_combout\) & ((\Selector12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => data(7),
	datac => \data~2_combout\,
	datad => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => data(7));

-- Location: LC_X14_Y2_N6
\Selector11~0\ : maxv_lcell
-- Equation(s):
-- \Selector11~0_combout\ = ((\present.Transmit~regout\ & ((data(7)))) # (!\present.Transmit~regout\ & (\data_in~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(5),
	datac => data(7),
	datad => \present.Transmit~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector11~0_combout\);

-- Location: LC_X14_Y2_N7
\data[6]\ : maxv_lcell
-- Equation(s):
-- data(6) = ((GLOBAL(\data~2_combout\) & (data(6))) # (!GLOBAL(\data~2_combout\) & ((\Selector11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => data(6),
	datac => \data~2_combout\,
	datad => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => data(6));

-- Location: LC_X14_Y2_N8
\Selector10~0\ : maxv_lcell
-- Equation(s):
-- \Selector10~0_combout\ = ((\present.Transmit~regout\ & ((data(6)))) # (!\present.Transmit~regout\ & (\data_in~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\(4),
	datac => data(6),
	datad => \present.Transmit~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector10~0_combout\);

-- Location: LC_X14_Y2_N9
\data[5]\ : maxv_lcell
-- Equation(s):
-- data(5) = ((GLOBAL(\data~2_combout\) & (data(5))) # (!GLOBAL(\data~2_combout\) & ((\Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => data(5),
	datac => \data~2_combout\,
	datad => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => data(5));

-- Location: LC_X14_Y2_N3
\Selector9~0\ : maxv_lcell
-- Equation(s):
-- \Selector9~0_combout\ = ((\present.Transmit~regout\ & ((data(5)))) # (!\present.Transmit~regout\ & (\data_in~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(3),
	datac => data(5),
	datad => \present.Transmit~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector9~0_combout\);

-- Location: LC_X14_Y2_N4
\data[4]\ : maxv_lcell
-- Equation(s):
-- data(4) = ((GLOBAL(\data~2_combout\) & (data(4))) # (!GLOBAL(\data~2_combout\) & ((\Selector9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => data(4),
	datac => \data~2_combout\,
	datad => \Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => data(4));

-- Location: LC_X13_Y2_N8
\Selector8~0\ : maxv_lcell
-- Equation(s):
-- \Selector8~0_combout\ = ((\present.Transmit~regout\ & ((data(4)))) # (!\present.Transmit~regout\ & (\data_in~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\(2),
	datac => \present.Transmit~regout\,
	datad => data(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector8~0_combout\);

-- Location: LC_X13_Y2_N9
\data[3]\ : maxv_lcell
-- Equation(s):
-- data(3) = ((GLOBAL(\data~2_combout\) & (data(3))) # (!GLOBAL(\data~2_combout\) & ((\Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => data(3),
	datac => \data~2_combout\,
	datad => \Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => data(3));

-- Location: LC_X13_Y2_N3
\Selector7~0\ : maxv_lcell
-- Equation(s):
-- \Selector7~0_combout\ = ((\present.Transmit~regout\ & ((data(3)))) # (!\present.Transmit~regout\ & (\data_in~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\(1),
	datac => \present.Transmit~regout\,
	datad => data(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector7~0_combout\);

-- Location: LC_X13_Y2_N4
\data[2]\ : maxv_lcell
-- Equation(s):
-- data(2) = ((GLOBAL(\data~2_combout\) & (data(2))) # (!GLOBAL(\data~2_combout\) & ((\Selector7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => data(2),
	datac => \data~2_combout\,
	datad => \Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => data(2));

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_in(0),
	combout => \data_in~combout\(0));

-- Location: LC_X13_Y2_N2
\Selector6~0\ : maxv_lcell
-- Equation(s):
-- \Selector6~0_combout\ = (\present.Transmit~regout\ & (((data(2))))) # (!\present.Transmit~regout\ & (((\data_in~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \present.Transmit~regout\,
	datac => data(2),
	datad => \data_in~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector6~0_combout\);

-- Location: LC_X13_Y2_N5
\data[1]\ : maxv_lcell
-- Equation(s):
-- data(1) = ((GLOBAL(\data~2_combout\) & (data(1))) # (!GLOBAL(\data~2_combout\) & ((\Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => data(1),
	datac => \data~2_combout\,
	datad => \Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => data(1));

-- Location: LC_X13_Y2_N0
\Selector4~0\ : maxv_lcell
-- Equation(s):
-- \Selector4~0_combout\ = (((data(1) & \present.Transmit~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => data(1),
	datad => \present.Transmit~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector4~0_combout\);

-- Location: LC_X13_Y2_N1
\data[0]\ : maxv_lcell
-- Equation(s):
-- data(0) = ((GLOBAL(\data~2_combout\) & (data(0))) # (!GLOBAL(\data~2_combout\) & ((\Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => data(0),
	datac => \data~2_combout\,
	datad => \Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => data(0));

-- Location: LC_X12_Y2_N6
\present.Whait\ : maxv_lcell
-- Equation(s):
-- \Selector1~0\ = (((present.Whait) # (data(0))))
-- \present.Whait~regout\ = DFFEAS(\Selector1~0\, GLOBAL(\clk~combout\), VCC, , , \nxt.Whait_184~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \nxt.Whait_184~combout\,
	datad => data(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector1~0\,
	regout => \present.Whait~regout\);

-- Location: LC_X12_Y3_N2
ien : maxv_lcell
-- Equation(s):
-- \ien~combout\ = ((GLOBAL(\Tx~1_combout\) & (\ien~combout\)) # (!GLOBAL(\Tx~1_combout\) & ((!\present.Whait~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0f3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tx~1_combout\,
	datac => \ien~combout\,
	datad => \present.Whait~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ien~combout\);

-- Location: LC_X12_Y3_N3
\done|count[0]~1\ : maxv_lcell
-- Equation(s):
-- \done|count[0]~1_combout\ = (((\done|done~0_combout\) # (!\ien~combout\)))

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
	datac => \done|done~0_combout\,
	datad => \ien~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|count[0]~1_combout\);

-- Location: LC_X12_Y3_N1
\done|count[0]\ : maxv_lcell
-- Equation(s):
-- \done|count\(0) = DFFEAS((((!\done|count\(0)))), GLOBAL(\clk~combout\), !\done|count[0]~1_combout\, , , , , , )

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
	clk => \clk~combout\,
	datad => \done|count\(0),
	aclr => \done|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \done|count\(0));

-- Location: LC_X12_Y3_N9
\done|count[1]\ : maxv_lcell
-- Equation(s):
-- \done|count\(1) = DFFEAS(\done|count\(0) $ ((((\done|count\(1))))), GLOBAL(\clk~combout\), !\done|count[0]~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \done|count\(0),
	datad => \done|count\(1),
	aclr => \done|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \done|count\(1));

-- Location: LC_X12_Y3_N5
\done|count[2]\ : maxv_lcell
-- Equation(s):
-- \done|count\(2) = DFFEAS((\done|count\(2) $ (((\done|count\(0) & \done|count\(1))))), GLOBAL(\clk~combout\), !\done|count[0]~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5af0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \done|count\(0),
	datac => \done|count\(2),
	datad => \done|count\(1),
	aclr => \done|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \done|count\(2));

-- Location: LC_X12_Y3_N4
\done|count[3]\ : maxv_lcell
-- Equation(s):
-- \done|count\(3) = DFFEAS(\done|count\(3) $ (((\done|count\(0) & (\done|count\(2) & \done|count\(1))))), GLOBAL(\clk~combout\), !\done|count[0]~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \done|count\(3),
	datab => \done|count\(0),
	datac => \done|count\(2),
	datad => \done|count\(1),
	aclr => \done|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \done|count\(3));

-- Location: LC_X12_Y3_N7
\done|done~0\ : maxv_lcell
-- Equation(s):
-- \done|done~0_combout\ = (!\done|count\(2) & (!\done|count\(1) & (\done|count\(3) & !\done|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \done|count\(2),
	datab => \done|count\(1),
	datac => \done|count\(3),
	datad => \done|count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done|done~0_combout\);

-- Location: LC_X12_Y3_N0
\Selector19~0\ : maxv_lcell
-- Equation(s):
-- \Selector19~0_combout\ = (((\done|done~0_combout\ & \ien~combout\)) # (!\present.Transmit~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \done|done~0_combout\,
	datac => \present.Transmit~regout\,
	datad => \ien~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector19~0_combout\);

-- Location: LC_X12_Y2_N3
\Selector18~0\ : maxv_lcell
-- Equation(s):
-- \Selector18~0_combout\ = (\present.Whait~regout\) # ((\send~combout\ & (!\present.Stop~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2f2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send~combout\,
	datab => \present.Stop~regout\,
	datac => \present.Whait~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector18~0_combout\);

-- Location: LC_X12_Y2_N0
\nxt.Stop_211\ : maxv_lcell
-- Equation(s):
-- \nxt.Stop_211~combout\ = ((GLOBAL(\Selector19~0_combout\) & ((\Selector18~0_combout\))) # (!GLOBAL(\Selector19~0_combout\) & (\nxt.Stop_211~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \nxt.Stop_211~combout\,
	datac => \Selector19~0_combout\,
	datad => \Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \nxt.Stop_211~combout\);

-- Location: LC_X12_Y2_N1
\present.Stop\ : maxv_lcell
-- Equation(s):
-- \present.Stop~regout\ = DFFEAS((((!\nxt.Stop_211~combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	datad => \nxt.Stop_211~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present.Stop~regout\);

-- Location: LC_X12_Y2_N4
\Tx~1\ : maxv_lcell
-- Equation(s):
-- \Tx~1_combout\ = (((\present.Load~regout\)) # (!\present.Stop~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3f3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \present.Stop~regout\,
	datac => \present.Load~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tx~1_combout\);

-- Location: LC_X12_Y2_N7
\Tx$latch\ : maxv_lcell
-- Equation(s):
-- \Tx$latch~combout\ = ((GLOBAL(\Tx~1_combout\) & (\Tx$latch~combout\)) # (!GLOBAL(\Tx~1_combout\) & ((\Selector1~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tx~1_combout\,
	datac => \Tx$latch~combout\,
	datad => \Selector1~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Tx$latch~combout\);

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Tx~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Tx$latch~combout\,
	oe => VCC,
	padio => ww_Tx);

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\clock_show~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \clk~combout\,
	oe => VCC,
	padio => ww_clock_show);
END structure;


