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

-- DATE "10/25/2018 20:10:17"

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

ENTITY 	MemoriaROM IS
    PORT (
	endereco : IN std_logic_vector(3 DOWNTO 0);
	dado : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END MemoriaROM;

ARCHITECTURE structure OF MemoriaROM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_endereco : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_dado : std_logic_vector(7 DOWNTO 0);
SIGNAL \dado[0]~output_o\ : std_logic;
SIGNAL \dado[1]~output_o\ : std_logic;
SIGNAL \dado[2]~output_o\ : std_logic;
SIGNAL \dado[3]~output_o\ : std_logic;
SIGNAL \dado[4]~output_o\ : std_logic;
SIGNAL \dado[5]~output_o\ : std_logic;
SIGNAL \dado[6]~output_o\ : std_logic;
SIGNAL \dado[7]~output_o\ : std_logic;
SIGNAL \endereco[0]~input_o\ : std_logic;
SIGNAL \endereco[1]~input_o\ : std_logic;
SIGNAL \endereco[2]~input_o\ : std_logic;
SIGNAL \endereco[3]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_endereco[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_endereco[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_endereco[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_endereco[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;

BEGIN

ww_endereco <= endereco;
dado <= ww_dado;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_endereco[0]~input_o\ <= NOT \endereco[0]~input_o\;
\ALT_INV_endereco[1]~input_o\ <= NOT \endereco[1]~input_o\;
\ALT_INV_endereco[2]~input_o\ <= NOT \endereco[2]~input_o\;
\ALT_INV_endereco[3]~input_o\ <= NOT \endereco[3]~input_o\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;

\dado[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => \dado[0]~output_o\);

\dado[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => \dado[1]~output_o\);

\dado[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \dado[2]~output_o\);

\dado[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \dado[3]~output_o\);

\dado[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \dado[4]~output_o\);

\dado[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \dado[5]~output_o\);

\dado[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \dado[6]~output_o\);

\dado[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \dado[7]~output_o\);

\endereco[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_endereco(0),
	o => \endereco[0]~input_o\);

\endereco[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_endereco(1),
	o => \endereco[1]~input_o\);

\endereco[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_endereco(2),
	o => \endereco[2]~input_o\);

\endereco[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_endereco(3),
	o => \endereco[3]~input_o\);

\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!\endereco[1]~input_o\ & ((!\endereco[3]~input_o\ & (\endereco[0]~input_o\)) # (\endereco[3]~input_o\ & ((\endereco[2]~input_o\))))) # (\endereco[1]~input_o\ & (\endereco[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100011101010101010001110101010101000111010101010100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_endereco[0]~input_o\,
	datab => \ALT_INV_endereco[1]~input_o\,
	datac => \ALT_INV_endereco[2]~input_o\,
	datad => \ALT_INV_endereco[3]~input_o\,
	combout => \Mux7~0_combout\);

\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!\endereco[0]~input_o\ & (\endereco[1]~input_o\ & ((!\endereco[3]~input_o\)))) # (\endereco[0]~input_o\ & (!\endereco[1]~input_o\ & ((!\endereco[2]~input_o\) # (!\endereco[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001000000011001100100000001100110010000000110011001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_endereco[0]~input_o\,
	datab => \ALT_INV_endereco[1]~input_o\,
	datac => \ALT_INV_endereco[2]~input_o\,
	datad => \ALT_INV_endereco[3]~input_o\,
	combout => \Mux6~0_combout\);

\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!\endereco[2]~input_o\ & (\endereco[0]~input_o\ & (\endereco[1]~input_o\ & !\endereco[3]~input_o\))) # (\endereco[2]~input_o\ & (!\endereco[3]~input_o\ $ (((\endereco[0]~input_o\ & \endereco[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000000001000111100000000100011110000000010001111000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_endereco[0]~input_o\,
	datab => \ALT_INV_endereco[1]~input_o\,
	datac => \ALT_INV_endereco[2]~input_o\,
	datad => \ALT_INV_endereco[3]~input_o\,
	combout => \Mux5~0_combout\);

\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!\endereco[2]~input_o\ & (((\endereco[3]~input_o\)))) # (\endereco[2]~input_o\ & ((!\endereco[0]~input_o\ & (!\endereco[1]~input_o\ & \endereco[3]~input_o\)) # (\endereco[0]~input_o\ & (\endereco[1]~input_o\ & 
-- !\endereco[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111000000000011111100000000001111110000000000111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_endereco[0]~input_o\,
	datab => \ALT_INV_endereco[1]~input_o\,
	datac => \ALT_INV_endereco[2]~input_o\,
	datad => \ALT_INV_endereco[3]~input_o\,
	combout => \Mux4~0_combout\);

\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\endereco[3]~input_o\ & (((!\endereco[0]~input_o\ & \endereco[1]~input_o\)) # (\endereco[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101111000000000010111100000000001011110000000000101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_endereco[0]~input_o\,
	datab => \ALT_INV_endereco[1]~input_o\,
	datac => \ALT_INV_endereco[2]~input_o\,
	datad => \ALT_INV_endereco[3]~input_o\,
	combout => \Mux3~0_combout\);

\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\endereco[3]~input_o\ & ((!\endereco[0]~input_o\ & (\endereco[1]~input_o\ & \endereco[2]~input_o\)) # (\endereco[0]~input_o\ & (!\endereco[1]~input_o\ $ (!\endereco[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010110000000000001011000000000000101100000000000010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_endereco[0]~input_o\,
	datab => \ALT_INV_endereco[1]~input_o\,
	datac => \ALT_INV_endereco[2]~input_o\,
	datad => \ALT_INV_endereco[3]~input_o\,
	combout => \Mux2~0_combout\);

\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\endereco[3]~input_o\ & ((!\endereco[1]~input_o\ & ((\endereco[2]~input_o\))) # (\endereco[1]~input_o\ & (\endereco[0]~input_o\ & !\endereco[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011100000000000001110000000000000111000000000000011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_endereco[0]~input_o\,
	datab => \ALT_INV_endereco[1]~input_o\,
	datac => \ALT_INV_endereco[2]~input_o\,
	datad => \ALT_INV_endereco[3]~input_o\,
	combout => \Mux1~0_combout\);

\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\endereco[0]~input_o\ & (!\endereco[1]~input_o\ & (\endereco[2]~input_o\ & \endereco[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_endereco[0]~input_o\,
	datab => \ALT_INV_endereco[1]~input_o\,
	datac => \ALT_INV_endereco[2]~input_o\,
	datad => \ALT_INV_endereco[3]~input_o\,
	combout => \Mux0~0_combout\);

ww_dado(0) <= \dado[0]~output_o\;

ww_dado(1) <= \dado[1]~output_o\;

ww_dado(2) <= \dado[2]~output_o\;

ww_dado(3) <= \dado[3]~output_o\;

ww_dado(4) <= \dado[4]~output_o\;

ww_dado(5) <= \dado[5]~output_o\;

ww_dado(6) <= \dado[6]~output_o\;

ww_dado(7) <= \dado[7]~output_o\;
END structure;


