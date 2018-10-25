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

-- DATE "10/25/2018 18:47:59"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	XXOR IS
    PORT (
	EA : IN std_logic;
	EB : IN std_logic;
	SAIDA : BUFFER std_logic
	);
END XXOR;

ARCHITECTURE structure OF XXOR IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_EA : std_logic;
SIGNAL ww_EB : std_logic;
SIGNAL ww_SAIDA : std_logic;
SIGNAL \SAIDA~output_o\ : std_logic;
SIGNAL \EA~input_o\ : std_logic;
SIGNAL \EB~input_o\ : std_logic;
SIGNAL \G5|S~0_combout\ : std_logic;
SIGNAL \ALT_INV_EA~input_o\ : std_logic;
SIGNAL \ALT_INV_EB~input_o\ : std_logic;

BEGIN

ww_EA <= EA;
ww_EB <= EB;
SAIDA <= ww_SAIDA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_EA~input_o\ <= NOT \EA~input_o\;
\ALT_INV_EB~input_o\ <= NOT \EB~input_o\;

\SAIDA~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G5|S~0_combout\,
	devoe => ww_devoe,
	o => \SAIDA~output_o\);

\EA~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EA,
	o => \EA~input_o\);

\EB~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EB,
	o => \EB~input_o\);

\G5|S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G5|S~0_combout\ = !\EA~input_o\ $ (!\EB~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EA~input_o\,
	datab => \ALT_INV_EB~input_o\,
	combout => \G5|S~0_combout\);

ww_SAIDA <= \SAIDA~output_o\;
END structure;


