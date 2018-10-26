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
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "10/26/2018 16:00:16"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MaquinaEstado IS
    PORT (
	Clock : IN std_logic;
	P : IN std_logic;
	Start : IN std_logic;
	R : OUT std_logic
	);
END MaquinaEstado;

ARCHITECTURE structure OF MaquinaEstado IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_P : std_logic;
SIGNAL ww_Start : std_logic;
SIGNAL ww_R : std_logic;
SIGNAL \R~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \P~input_o\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Start~input_o\ : std_logic;
SIGNAL \state.A~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state.B~q\ : std_logic;
SIGNAL \state~10_combout\ : std_logic;
SIGNAL \state.C~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \state.D~q\ : std_logic;
SIGNAL \ALT_INV_state.D~q\ : std_logic;
SIGNAL \ALT_INV_state.C~q\ : std_logic;
SIGNAL \ALT_INV_state.A~q\ : std_logic;
SIGNAL \ALT_INV_state.B~q\ : std_logic;
SIGNAL \ALT_INV_P~input_o\ : std_logic;
SIGNAL \ALT_INV_Start~input_o\ : std_logic;

BEGIN

ww_Clock <= Clock;
ww_P <= P;
ww_Start <= Start;
R <= ww_R;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_state.D~q\ <= NOT \state.D~q\;
\ALT_INV_state.C~q\ <= NOT \state.C~q\;
\ALT_INV_state.A~q\ <= NOT \state.A~q\;
\ALT_INV_state.B~q\ <= NOT \state.B~q\;
\ALT_INV_P~input_o\ <= NOT \P~input_o\;
\ALT_INV_Start~input_o\ <= NOT \Start~input_o\;

\R~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state.D~q\,
	devoe => ww_devoe,
	o => \R~output_o\);

\Clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

\P~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P,
	o => \P~input_o\);

\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ((!\state.A~q\) # (\state.C~q\)) # (\P~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111110111111101111111011111110111111101111111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P~input_o\,
	datab => \ALT_INV_state.C~q\,
	datac => \ALT_INV_state.A~q\,
	combout => \Selector2~0_combout\);

\Start~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Start,
	o => \Start~input_o\);

\state.A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Selector2~0_combout\,
	clrn => \ALT_INV_Start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.A~q\);

\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\P~input_o\ & (((\state.C~q\)))) # (\P~input_o\ & (((!\state.A~q\)) # (\state.D~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100011101001111110001110100111111000111010011111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.D~q\,
	datab => \ALT_INV_P~input_o\,
	datac => \ALT_INV_state.C~q\,
	datad => \ALT_INV_state.A~q\,
	combout => \Selector1~0_combout\);

\state.B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_Start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.B~q\);

\state~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~10_combout\ = (\P~input_o\ & \state.B~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P~input_o\,
	datab => \ALT_INV_state.B~q\,
	combout => \state~10_combout\);

\state.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \state~10_combout\,
	clrn => \ALT_INV_Start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.C~q\);

\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\P~input_o\ & ((!\state.A~q\))) # (\P~input_o\ & (\state.C~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000110110001101100011011000110110001101100011011000110110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_P~input_o\,
	datab => \ALT_INV_state.C~q\,
	datac => \ALT_INV_state.A~q\,
	combout => \Selector0~0_combout\);

\state.D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_Start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.D~q\);

ww_R <= \R~output_o\;
END structure;


