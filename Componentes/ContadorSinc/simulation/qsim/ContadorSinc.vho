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

-- DATE "10/26/2018 15:06:27"

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

ENTITY 	ContadorSinc IS
    PORT (
	A : IN std_logic;
	B : IN std_logic;
	Clock : IN std_logic;
	S0 : BUFFER std_logic;
	S1 : BUFFER std_logic;
	S2 : BUFFER std_logic
	);
END ContadorSinc;

ARCHITECTURE structure OF ContadorSinc IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL \S0~output_o\ : std_logic;
SIGNAL \S1~output_o\ : std_logic;
SIGNAL \S2~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \G1|Mux0~0_combout\ : std_logic;
SIGNAL \G1|state~q\ : std_logic;
SIGNAL \G2|state~0_combout\ : std_logic;
SIGNAL \G2|state~q\ : std_logic;
SIGNAL \G4|state~0_combout\ : std_logic;
SIGNAL \G4|state~q\ : std_logic;
SIGNAL \G1|ALT_INV_state~q\ : std_logic;
SIGNAL \G2|ALT_INV_state~q\ : std_logic;
SIGNAL \G4|ALT_INV_state~q\ : std_logic;
SIGNAL \ALT_INV_A~input_o\ : std_logic;
SIGNAL \ALT_INV_B~input_o\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_Clock <= Clock;
S0 <= ww_S0;
S1 <= ww_S1;
S2 <= ww_S2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\G1|ALT_INV_state~q\ <= NOT \G1|state~q\;
\G2|ALT_INV_state~q\ <= NOT \G2|state~q\;
\G4|ALT_INV_state~q\ <= NOT \G4|state~q\;
\ALT_INV_A~input_o\ <= NOT \A~input_o\;
\ALT_INV_B~input_o\ <= NOT \B~input_o\;

\S0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|state~q\,
	devoe => ww_devoe,
	o => \S0~output_o\);

\S1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G2|state~q\,
	devoe => ww_devoe,
	o => \S1~output_o\);

\S2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|state~q\,
	devoe => ww_devoe,
	o => \S2~output_o\);

\Clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

\A~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

\B~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

\G1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|Mux0~0_combout\ = (!\G1|state~q\ & (\A~input_o\)) # (\G1|state~q\ & ((!\B~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001001110010011100100111001001110010011100100111001001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_state~q\,
	datab => \ALT_INV_A~input_o\,
	datac => \ALT_INV_B~input_o\,
	combout => \G1|Mux0~0_combout\);

\G1|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \G1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|state~q\);

\G2|state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|state~0_combout\ = !\G1|state~q\ $ (!\G2|state~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_state~q\,
	datab => \G2|ALT_INV_state~q\,
	combout => \G2|state~0_combout\);

\G2|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \G2|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|state~q\);

\G4|state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|state~0_combout\ = !\G4|state~q\ $ (((!\G1|state~q\) # (!\G2|state~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000011110000111100001111000011110000111100001111000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|ALT_INV_state~q\,
	datab => \G2|ALT_INV_state~q\,
	datac => \G4|ALT_INV_state~q\,
	combout => \G4|state~0_combout\);

\G4|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \G4|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|state~q\);

ww_S0 <= \S0~output_o\;

ww_S1 <= \S1~output_o\;

ww_S2 <= \S2~output_o\;
END structure;


