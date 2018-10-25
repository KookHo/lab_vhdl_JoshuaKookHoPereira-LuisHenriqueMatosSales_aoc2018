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

-- DATE "10/25/2018 18:30:53"

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

ENTITY 	Multiplexador4pra1 IS
    PORT (
	Selector : IN std_logic_vector(1 DOWNTO 0);
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	S : BUFFER std_logic
	);
END Multiplexador4pra1;

ARCHITECTURE structure OF Multiplexador4pra1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Selector : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_S : std_logic;
SIGNAL \S~output_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \Selector[1]~input_o\ : std_logic;
SIGNAL \Selector[0]~input_o\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Selector[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_D~input_o\ : std_logic;
SIGNAL \ALT_INV_B~input_o\ : std_logic;
SIGNAL \ALT_INV_C~input_o\ : std_logic;
SIGNAL \ALT_INV_A~input_o\ : std_logic;

BEGIN

ww_Selector <= Selector;
ww_A <= A;
ww_B <= B;
ww_C <= C;
ww_D <= D;
S <= ww_S;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Selector[0]~input_o\ <= NOT \Selector[0]~input_o\;
\ALT_INV_Selector[1]~input_o\ <= NOT \Selector[1]~input_o\;
\ALT_INV_D~input_o\ <= NOT \D~input_o\;
\ALT_INV_B~input_o\ <= NOT \B~input_o\;
\ALT_INV_C~input_o\ <= NOT \C~input_o\;
\ALT_INV_A~input_o\ <= NOT \A~input_o\;

\S~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S~0_combout\,
	devoe => ww_devoe,
	o => \S~output_o\);

\A~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

\C~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

\B~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

\D~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

\Selector[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Selector(1),
	o => \Selector[1]~input_o\);

\Selector[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Selector(0),
	o => \Selector[0]~input_o\);

\S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S~0_combout\ = ( \Selector[1]~input_o\ & ( \Selector[0]~input_o\ & ( \D~input_o\ ) ) ) # ( !\Selector[1]~input_o\ & ( \Selector[0]~input_o\ & ( \B~input_o\ ) ) ) # ( \Selector[1]~input_o\ & ( !\Selector[0]~input_o\ & ( \C~input_o\ ) ) ) # ( 
-- !\Selector[1]~input_o\ & ( !\Selector[0]~input_o\ & ( \A~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A~input_o\,
	datab => \ALT_INV_C~input_o\,
	datac => \ALT_INV_B~input_o\,
	datad => \ALT_INV_D~input_o\,
	datae => \ALT_INV_Selector[1]~input_o\,
	dataf => \ALT_INV_Selector[0]~input_o\,
	combout => \S~0_combout\);

ww_S <= \S~output_o\;
END structure;


