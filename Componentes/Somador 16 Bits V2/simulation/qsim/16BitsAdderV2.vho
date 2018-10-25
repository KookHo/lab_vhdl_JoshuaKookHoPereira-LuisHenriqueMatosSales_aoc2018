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

-- DATE "10/25/2018 14:34:41"

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

ENTITY 	Adder2Bits IS
    PORT (
	A : IN std_logic_vector(1 DOWNTO 0);
	B : IN std_logic_vector(1 DOWNTO 0);
	Cin : IN std_logic;
	S : OUT std_logic_vector(1 DOWNTO 0);
	Cout : OUT std_logic
	);
END Adder2Bits;

ARCHITECTURE structure OF Adder2Bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Cin : std_logic;
SIGNAL ww_S : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \AdderBit0|S~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \AdderBit1|S~0_combout\ : std_logic;
SIGNAL \AdderBit1|Cout~0_combout\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Cin~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_Cin <= Cin;
S <= ww_S;
Cout <= ww_Cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_Cin~input_o\ <= NOT \Cin~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;

\S[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderBit0|S~0_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

\S[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderBit1|S~0_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

\Cout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AdderBit1|Cout~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

\Cin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

\AdderBit0|S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AdderBit0|S~0_combout\ = !\B[0]~input_o\ $ (!\A[0]~input_o\ $ (\Cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	combout => \AdderBit0|S~0_combout\);

\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

\AdderBit1|S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AdderBit1|S~0_combout\ = ( \B[1]~input_o\ & ( !\A[1]~input_o\ $ (((!\B[0]~input_o\ & (\A[0]~input_o\ & \Cin~input_o\)) # (\B[0]~input_o\ & ((\Cin~input_o\) # (\A[0]~input_o\))))) ) ) # ( !\B[1]~input_o\ & ( !\A[1]~input_o\ $ (((!\B[0]~input_o\ & 
-- ((!\A[0]~input_o\) # (!\Cin~input_o\))) # (\B[0]~input_o\ & (!\A[0]~input_o\ & !\Cin~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011111101000111010000001011100010111111010001110100000010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	combout => \AdderBit1|S~0_combout\);

\AdderBit1|Cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AdderBit1|Cout~0_combout\ = ( \B[1]~input_o\ & ( ((!\B[0]~input_o\ & (\A[0]~input_o\ & \Cin~input_o\)) # (\B[0]~input_o\ & ((\Cin~input_o\) # (\A[0]~input_o\)))) # (\A[1]~input_o\) ) ) # ( !\B[1]~input_o\ & ( (\A[1]~input_o\ & ((!\B[0]~input_o\ & 
-- (\A[0]~input_o\ & \Cin~input_o\)) # (\B[0]~input_o\ & ((\Cin~input_o\) # (\A[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000101111111111100000000000101110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	combout => \AdderBit1|Cout~0_combout\);

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_Cout <= \Cout~output_o\;
END structure;


