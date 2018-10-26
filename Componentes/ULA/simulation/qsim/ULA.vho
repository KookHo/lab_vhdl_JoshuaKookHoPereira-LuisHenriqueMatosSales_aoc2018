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

-- DATE "10/26/2018 11:55:30"

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

ENTITY 	ULA IS
    PORT (
	RegA : IN std_logic_vector(15 DOWNTO 0);
	RegB : IN std_logic_vector(15 DOWNTO 0);
	ULAOP : IN std_logic_vector(3 DOWNTO 0);
	SaidaULA : OUT std_logic_vector(15 DOWNTO 0);
	Zero : OUT std_logic
	);
END ULA;

ARCHITECTURE structure OF ULA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RegA : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_RegB : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ULAOP : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SaidaULA : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Zero : std_logic;
SIGNAL \SaidaULA[0]~output_o\ : std_logic;
SIGNAL \SaidaULA[1]~output_o\ : std_logic;
SIGNAL \SaidaULA[2]~output_o\ : std_logic;
SIGNAL \SaidaULA[3]~output_o\ : std_logic;
SIGNAL \SaidaULA[4]~output_o\ : std_logic;
SIGNAL \SaidaULA[5]~output_o\ : std_logic;
SIGNAL \SaidaULA[6]~output_o\ : std_logic;
SIGNAL \SaidaULA[7]~output_o\ : std_logic;
SIGNAL \SaidaULA[8]~output_o\ : std_logic;
SIGNAL \SaidaULA[9]~output_o\ : std_logic;
SIGNAL \SaidaULA[10]~output_o\ : std_logic;
SIGNAL \SaidaULA[11]~output_o\ : std_logic;
SIGNAL \SaidaULA[12]~output_o\ : std_logic;
SIGNAL \SaidaULA[13]~output_o\ : std_logic;
SIGNAL \SaidaULA[14]~output_o\ : std_logic;
SIGNAL \SaidaULA[15]~output_o\ : std_logic;
SIGNAL \Zero~output_o\ : std_logic;
SIGNAL \ULAOP[2]~input_o\ : std_logic;
SIGNAL \ULAOP[3]~input_o\ : std_logic;
SIGNAL \RegA[15]~input_o\ : std_logic;
SIGNAL \RegB[15]~input_o\ : std_logic;
SIGNAL \G11|Mux15~0_combout\ : std_logic;
SIGNAL \ULAOP[1]~input_o\ : std_logic;
SIGNAL \RegB[0]~input_o\ : std_logic;
SIGNAL \RegA[0]~input_o\ : std_logic;
SIGNAL \ULAOP[0]~input_o\ : std_logic;
SIGNAL \G6|Add0~66_cout\ : std_logic;
SIGNAL \G6|Add0~1_sumout\ : std_logic;
SIGNAL \G11|Mux15~1_combout\ : std_logic;
SIGNAL \RegA[2]~input_o\ : std_logic;
SIGNAL \G11|Mux15~2_combout\ : std_logic;
SIGNAL \G11|Mux15~3_combout\ : std_logic;
SIGNAL \G11|Mux15~4_combout\ : std_logic;
SIGNAL \RegB[1]~input_o\ : std_logic;
SIGNAL \RegA[1]~input_o\ : std_logic;
SIGNAL \G6|Add0~2\ : std_logic;
SIGNAL \G6|Add0~5_sumout\ : std_logic;
SIGNAL \RegA[3]~input_o\ : std_logic;
SIGNAL \G11|Mux14~0_combout\ : std_logic;
SIGNAL \RegB[2]~input_o\ : std_logic;
SIGNAL \G6|Add0~6\ : std_logic;
SIGNAL \G6|Add0~9_sumout\ : std_logic;
SIGNAL \G11|Mux8~0_combout\ : std_logic;
SIGNAL \G11|Mux8~1_combout\ : std_logic;
SIGNAL \RegA[4]~input_o\ : std_logic;
SIGNAL \G11|Mux13~0_combout\ : std_logic;
SIGNAL \RegB[3]~input_o\ : std_logic;
SIGNAL \G6|Add0~10\ : std_logic;
SIGNAL \G6|Add0~13_sumout\ : std_logic;
SIGNAL \RegA[5]~input_o\ : std_logic;
SIGNAL \G11|Mux12~0_combout\ : std_logic;
SIGNAL \RegB[4]~input_o\ : std_logic;
SIGNAL \G6|Add0~14\ : std_logic;
SIGNAL \G6|Add0~17_sumout\ : std_logic;
SIGNAL \RegA[6]~input_o\ : std_logic;
SIGNAL \G11|Mux11~0_combout\ : std_logic;
SIGNAL \RegB[5]~input_o\ : std_logic;
SIGNAL \G6|Add0~18\ : std_logic;
SIGNAL \G6|Add0~21_sumout\ : std_logic;
SIGNAL \RegA[7]~input_o\ : std_logic;
SIGNAL \G11|Mux10~0_combout\ : std_logic;
SIGNAL \RegB[6]~input_o\ : std_logic;
SIGNAL \G6|Add0~22\ : std_logic;
SIGNAL \G6|Add0~25_sumout\ : std_logic;
SIGNAL \RegA[8]~input_o\ : std_logic;
SIGNAL \G11|Mux9~0_combout\ : std_logic;
SIGNAL \RegB[7]~input_o\ : std_logic;
SIGNAL \G6|Add0~26\ : std_logic;
SIGNAL \G6|Add0~29_sumout\ : std_logic;
SIGNAL \RegA[9]~input_o\ : std_logic;
SIGNAL \G11|Mux8~2_combout\ : std_logic;
SIGNAL \RegB[8]~input_o\ : std_logic;
SIGNAL \G6|Add0~30\ : std_logic;
SIGNAL \G6|Add0~33_sumout\ : std_logic;
SIGNAL \RegA[10]~input_o\ : std_logic;
SIGNAL \G11|Mux7~0_combout\ : std_logic;
SIGNAL \RegB[9]~input_o\ : std_logic;
SIGNAL \G6|Add0~34\ : std_logic;
SIGNAL \G6|Add0~37_sumout\ : std_logic;
SIGNAL \RegA[11]~input_o\ : std_logic;
SIGNAL \G11|Mux6~0_combout\ : std_logic;
SIGNAL \RegB[10]~input_o\ : std_logic;
SIGNAL \G6|Add0~38\ : std_logic;
SIGNAL \G6|Add0~41_sumout\ : std_logic;
SIGNAL \RegA[12]~input_o\ : std_logic;
SIGNAL \G11|Mux5~0_combout\ : std_logic;
SIGNAL \RegB[11]~input_o\ : std_logic;
SIGNAL \G6|Add0~42\ : std_logic;
SIGNAL \G6|Add0~45_sumout\ : std_logic;
SIGNAL \RegA[13]~input_o\ : std_logic;
SIGNAL \G11|Mux4~0_combout\ : std_logic;
SIGNAL \RegB[12]~input_o\ : std_logic;
SIGNAL \G6|Add0~46\ : std_logic;
SIGNAL \G6|Add0~49_sumout\ : std_logic;
SIGNAL \RegA[14]~input_o\ : std_logic;
SIGNAL \G11|Mux3~0_combout\ : std_logic;
SIGNAL \RegB[13]~input_o\ : std_logic;
SIGNAL \G6|Add0~50\ : std_logic;
SIGNAL \G6|Add0~53_sumout\ : std_logic;
SIGNAL \G11|Mux2~0_combout\ : std_logic;
SIGNAL \RegB[14]~input_o\ : std_logic;
SIGNAL \G6|Add0~54\ : std_logic;
SIGNAL \G6|Add0~57_sumout\ : std_logic;
SIGNAL \G11|Mux1~0_combout\ : std_logic;
SIGNAL \G6|Add0~58\ : std_logic;
SIGNAL \G6|Add0~61_sumout\ : std_logic;
SIGNAL \G11|Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_RegB[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegB[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegB[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegB[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegB[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegB[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegB[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegB[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegB[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegB[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegB[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegB[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegB[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegB[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegB[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegA[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegA[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegA[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegA[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegA[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegA[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegA[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegA[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegA[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegA[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegA[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegA[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegA[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegA[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_ULAOP[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ULAOP[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegA[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegB[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_RegA[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_ULAOP[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_ULAOP[2]~input_o\ : std_logic;
SIGNAL \G11|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \G11|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \G11|ALT_INV_Mux15~3_combout\ : std_logic;
SIGNAL \G11|ALT_INV_Mux15~2_combout\ : std_logic;
SIGNAL \G11|ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \G11|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \G6|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \G6|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \G6|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \G6|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \G6|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \G6|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \G6|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \G6|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \G6|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \G6|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \G6|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \G6|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \G6|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \G6|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \G6|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \G6|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_RegA <= RegA;
ww_RegB <= RegB;
ww_ULAOP <= ULAOP;
SaidaULA <= ww_SaidaULA;
Zero <= ww_Zero;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_RegB[14]~input_o\ <= NOT \RegB[14]~input_o\;
\ALT_INV_RegB[13]~input_o\ <= NOT \RegB[13]~input_o\;
\ALT_INV_RegB[12]~input_o\ <= NOT \RegB[12]~input_o\;
\ALT_INV_RegB[11]~input_o\ <= NOT \RegB[11]~input_o\;
\ALT_INV_RegB[10]~input_o\ <= NOT \RegB[10]~input_o\;
\ALT_INV_RegB[9]~input_o\ <= NOT \RegB[9]~input_o\;
\ALT_INV_RegB[8]~input_o\ <= NOT \RegB[8]~input_o\;
\ALT_INV_RegB[7]~input_o\ <= NOT \RegB[7]~input_o\;
\ALT_INV_RegB[6]~input_o\ <= NOT \RegB[6]~input_o\;
\ALT_INV_RegB[5]~input_o\ <= NOT \RegB[5]~input_o\;
\ALT_INV_RegB[4]~input_o\ <= NOT \RegB[4]~input_o\;
\ALT_INV_RegB[3]~input_o\ <= NOT \RegB[3]~input_o\;
\ALT_INV_RegB[2]~input_o\ <= NOT \RegB[2]~input_o\;
\ALT_INV_RegB[1]~input_o\ <= NOT \RegB[1]~input_o\;
\ALT_INV_RegB[0]~input_o\ <= NOT \RegB[0]~input_o\;
\ALT_INV_RegA[14]~input_o\ <= NOT \RegA[14]~input_o\;
\ALT_INV_RegA[13]~input_o\ <= NOT \RegA[13]~input_o\;
\ALT_INV_RegA[12]~input_o\ <= NOT \RegA[12]~input_o\;
\ALT_INV_RegA[11]~input_o\ <= NOT \RegA[11]~input_o\;
\ALT_INV_RegA[10]~input_o\ <= NOT \RegA[10]~input_o\;
\ALT_INV_RegA[9]~input_o\ <= NOT \RegA[9]~input_o\;
\ALT_INV_RegA[8]~input_o\ <= NOT \RegA[8]~input_o\;
\ALT_INV_RegA[7]~input_o\ <= NOT \RegA[7]~input_o\;
\ALT_INV_RegA[6]~input_o\ <= NOT \RegA[6]~input_o\;
\ALT_INV_RegA[5]~input_o\ <= NOT \RegA[5]~input_o\;
\ALT_INV_RegA[1]~input_o\ <= NOT \RegA[1]~input_o\;
\ALT_INV_RegA[4]~input_o\ <= NOT \RegA[4]~input_o\;
\ALT_INV_RegA[0]~input_o\ <= NOT \RegA[0]~input_o\;
\ALT_INV_RegA[3]~input_o\ <= NOT \RegA[3]~input_o\;
\ALT_INV_ULAOP[1]~input_o\ <= NOT \ULAOP[1]~input_o\;
\ALT_INV_ULAOP[0]~input_o\ <= NOT \ULAOP[0]~input_o\;
\ALT_INV_RegA[2]~input_o\ <= NOT \RegA[2]~input_o\;
\ALT_INV_RegB[15]~input_o\ <= NOT \RegB[15]~input_o\;
\ALT_INV_RegA[15]~input_o\ <= NOT \RegA[15]~input_o\;
\ALT_INV_ULAOP[3]~input_o\ <= NOT \ULAOP[3]~input_o\;
\ALT_INV_ULAOP[2]~input_o\ <= NOT \ULAOP[2]~input_o\;
\G11|ALT_INV_Mux8~1_combout\ <= NOT \G11|Mux8~1_combout\;
\G11|ALT_INV_Mux8~0_combout\ <= NOT \G11|Mux8~0_combout\;
\G11|ALT_INV_Mux15~3_combout\ <= NOT \G11|Mux15~3_combout\;
\G11|ALT_INV_Mux15~2_combout\ <= NOT \G11|Mux15~2_combout\;
\G11|ALT_INV_Mux15~1_combout\ <= NOT \G11|Mux15~1_combout\;
\G11|ALT_INV_Mux15~0_combout\ <= NOT \G11|Mux15~0_combout\;
\G6|ALT_INV_Add0~61_sumout\ <= NOT \G6|Add0~61_sumout\;
\G6|ALT_INV_Add0~57_sumout\ <= NOT \G6|Add0~57_sumout\;
\G6|ALT_INV_Add0~53_sumout\ <= NOT \G6|Add0~53_sumout\;
\G6|ALT_INV_Add0~49_sumout\ <= NOT \G6|Add0~49_sumout\;
\G6|ALT_INV_Add0~45_sumout\ <= NOT \G6|Add0~45_sumout\;
\G6|ALT_INV_Add0~41_sumout\ <= NOT \G6|Add0~41_sumout\;
\G6|ALT_INV_Add0~37_sumout\ <= NOT \G6|Add0~37_sumout\;
\G6|ALT_INV_Add0~33_sumout\ <= NOT \G6|Add0~33_sumout\;
\G6|ALT_INV_Add0~29_sumout\ <= NOT \G6|Add0~29_sumout\;
\G6|ALT_INV_Add0~25_sumout\ <= NOT \G6|Add0~25_sumout\;
\G6|ALT_INV_Add0~21_sumout\ <= NOT \G6|Add0~21_sumout\;
\G6|ALT_INV_Add0~17_sumout\ <= NOT \G6|Add0~17_sumout\;
\G6|ALT_INV_Add0~13_sumout\ <= NOT \G6|Add0~13_sumout\;
\G6|ALT_INV_Add0~9_sumout\ <= NOT \G6|Add0~9_sumout\;
\G6|ALT_INV_Add0~5_sumout\ <= NOT \G6|Add0~5_sumout\;
\G6|ALT_INV_Add0~1_sumout\ <= NOT \G6|Add0~1_sumout\;

\SaidaULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G11|Mux15~4_combout\,
	devoe => ww_devoe,
	o => \SaidaULA[0]~output_o\);

\SaidaULA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G11|Mux14~0_combout\,
	devoe => ww_devoe,
	o => \SaidaULA[1]~output_o\);

\SaidaULA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G11|Mux13~0_combout\,
	devoe => ww_devoe,
	o => \SaidaULA[2]~output_o\);

\SaidaULA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G11|Mux12~0_combout\,
	devoe => ww_devoe,
	o => \SaidaULA[3]~output_o\);

\SaidaULA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G11|Mux11~0_combout\,
	devoe => ww_devoe,
	o => \SaidaULA[4]~output_o\);

\SaidaULA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G11|Mux10~0_combout\,
	devoe => ww_devoe,
	o => \SaidaULA[5]~output_o\);

\SaidaULA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G11|Mux9~0_combout\,
	devoe => ww_devoe,
	o => \SaidaULA[6]~output_o\);

\SaidaULA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G11|Mux8~2_combout\,
	devoe => ww_devoe,
	o => \SaidaULA[7]~output_o\);

\SaidaULA[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G11|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \SaidaULA[8]~output_o\);

\SaidaULA[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G11|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \SaidaULA[9]~output_o\);

\SaidaULA[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G11|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \SaidaULA[10]~output_o\);

\SaidaULA[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G11|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \SaidaULA[11]~output_o\);

\SaidaULA[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G11|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \SaidaULA[12]~output_o\);

\SaidaULA[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G11|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \SaidaULA[13]~output_o\);

\SaidaULA[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G11|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \SaidaULA[14]~output_o\);

\SaidaULA[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G11|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \SaidaULA[15]~output_o\);

\Zero~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Zero~output_o\);

\ULAOP[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ULAOP(2),
	o => \ULAOP[2]~input_o\);

\ULAOP[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ULAOP(3),
	o => \ULAOP[3]~input_o\);

\RegA[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegA(15),
	o => \RegA[15]~input_o\);

\RegB[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegB(15),
	o => \RegB[15]~input_o\);

\G11|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G11|Mux15~0_combout\ = (!\ULAOP[2]~input_o\ & (\ULAOP[3]~input_o\ & (!\RegA[15]~input_o\ $ (!\RegB[15]~input_o\)))) # (\ULAOP[2]~input_o\ & (!\ULAOP[3]~input_o\ & (!\RegA[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001001100000010000100110000001000010011000000100001001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULAOP[2]~input_o\,
	datab => \ALT_INV_ULAOP[3]~input_o\,
	datac => \ALT_INV_RegA[15]~input_o\,
	datad => \ALT_INV_RegB[15]~input_o\,
	combout => \G11|Mux15~0_combout\);

\ULAOP[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ULAOP(1),
	o => \ULAOP[1]~input_o\);

\RegB[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegB(0),
	o => \RegB[0]~input_o\);

\RegA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegA(0),
	o => \RegA[0]~input_o\);

\ULAOP[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ULAOP(0),
	o => \ULAOP[0]~input_o\);

\G6|Add0~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \G6|Add0~66_cout\ = CARRY(( !\ULAOP[0]~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_ULAOP[0]~input_o\,
	cin => GND,
	cout => \G6|Add0~66_cout\);

\G6|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G6|Add0~1_sumout\ = SUM(( !\ULAOP[1]~input_o\ $ (!\RegB[0]~input_o\) ) + ( \RegA[0]~input_o\ ) + ( \G6|Add0~66_cout\ ))
-- \G6|Add0~2\ = CARRY(( !\ULAOP[1]~input_o\ $ (!\RegB[0]~input_o\) ) + ( \RegA[0]~input_o\ ) + ( \G6|Add0~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULAOP[1]~input_o\,
	datad => \ALT_INV_RegB[0]~input_o\,
	dataf => \ALT_INV_RegA[0]~input_o\,
	cin => \G6|Add0~66_cout\,
	sumout => \G6|Add0~1_sumout\,
	cout => \G6|Add0~2\);

\G11|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G11|Mux15~1_combout\ = ( \G6|Add0~1_sumout\ & ( (!\ULAOP[3]~input_o\ & ((!\ULAOP[2]~input_o\) # ((\RegB[15]~input_o\) # (\RegA[15]~input_o\)))) ) ) # ( !\G6|Add0~1_sumout\ & ( (\ULAOP[2]~input_o\ & (!\ULAOP[3]~input_o\ & ((\RegB[15]~input_o\) # 
-- (\RegA[15]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000100100011001100110000000100010001001000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULAOP[2]~input_o\,
	datab => \ALT_INV_ULAOP[3]~input_o\,
	datac => \ALT_INV_RegA[15]~input_o\,
	datad => \ALT_INV_RegB[15]~input_o\,
	datae => \G6|ALT_INV_Add0~1_sumout\,
	combout => \G11|Mux15~1_combout\);

\RegA[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegA(2),
	o => \RegA[2]~input_o\);

\G11|Mux15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G11|Mux15~2_combout\ = ( \G6|Add0~1_sumout\ & ( \RegA[2]~input_o\ & ( (!\ULAOP[2]~input_o\) # ((!\ULAOP[3]~input_o\ & ((!\RegA[15]~input_o\) # (!\RegB[15]~input_o\)))) ) ) ) # ( !\G6|Add0~1_sumout\ & ( \RegA[2]~input_o\ & ( (!\ULAOP[2]~input_o\ & 
-- (\ULAOP[3]~input_o\)) # (\ULAOP[2]~input_o\ & (!\ULAOP[3]~input_o\ & ((!\RegA[15]~input_o\) # (!\RegB[15]~input_o\)))) ) ) ) # ( \G6|Add0~1_sumout\ & ( !\RegA[2]~input_o\ & ( (!\ULAOP[3]~input_o\ & ((!\ULAOP[2]~input_o\) # ((!\RegA[15]~input_o\) # 
-- (!\RegB[15]~input_o\)))) ) ) ) # ( !\G6|Add0~1_sumout\ & ( !\RegA[2]~input_o\ & ( (\ULAOP[2]~input_o\ & (!\ULAOP[3]~input_o\ & ((!\RegA[15]~input_o\) # (!\RegB[15]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000000110011001100100001100110011000101110111011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULAOP[2]~input_o\,
	datab => \ALT_INV_ULAOP[3]~input_o\,
	datac => \ALT_INV_RegA[15]~input_o\,
	datad => \ALT_INV_RegB[15]~input_o\,
	datae => \G6|ALT_INV_Add0~1_sumout\,
	dataf => \ALT_INV_RegA[2]~input_o\,
	combout => \G11|Mux15~2_combout\);

\G11|Mux15~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G11|Mux15~3_combout\ = (!\ULAOP[3]~input_o\ & ((!\ULAOP[2]~input_o\ & (\RegA[15]~input_o\ & \RegB[15]~input_o\)) # (\ULAOP[2]~input_o\ & (!\RegA[15]~input_o\ & !\RegB[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000001000010000000000100001000000000010000100000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULAOP[2]~input_o\,
	datab => \ALT_INV_ULAOP[3]~input_o\,
	datac => \ALT_INV_RegA[15]~input_o\,
	datad => \ALT_INV_RegB[15]~input_o\,
	combout => \G11|Mux15~3_combout\);

\G11|Mux15~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G11|Mux15~4_combout\ = ( \ULAOP[0]~input_o\ & ( \ULAOP[1]~input_o\ & ( \G11|Mux15~3_combout\ ) ) ) # ( !\ULAOP[0]~input_o\ & ( \ULAOP[1]~input_o\ & ( \G11|Mux15~2_combout\ ) ) ) # ( \ULAOP[0]~input_o\ & ( !\ULAOP[1]~input_o\ & ( \G11|Mux15~1_combout\ ) ) 
-- ) # ( !\ULAOP[0]~input_o\ & ( !\ULAOP[1]~input_o\ & ( \G11|Mux15~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G11|ALT_INV_Mux15~0_combout\,
	datab => \G11|ALT_INV_Mux15~1_combout\,
	datac => \G11|ALT_INV_Mux15~2_combout\,
	datad => \G11|ALT_INV_Mux15~3_combout\,
	datae => \ALT_INV_ULAOP[0]~input_o\,
	dataf => \ALT_INV_ULAOP[1]~input_o\,
	combout => \G11|Mux15~4_combout\);

\RegB[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegB(1),
	o => \RegB[1]~input_o\);

\RegA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegA(1),
	o => \RegA[1]~input_o\);

\G6|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G6|Add0~5_sumout\ = SUM(( !\ULAOP[1]~input_o\ $ (!\RegB[1]~input_o\) ) + ( \RegA[1]~input_o\ ) + ( \G6|Add0~2\ ))
-- \G6|Add0~6\ = CARRY(( !\ULAOP[1]~input_o\ $ (!\RegB[1]~input_o\) ) + ( \RegA[1]~input_o\ ) + ( \G6|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULAOP[1]~input_o\,
	datad => \ALT_INV_RegB[1]~input_o\,
	dataf => \ALT_INV_RegA[1]~input_o\,
	cin => \G6|Add0~2\,
	sumout => \G6|Add0~5_sumout\,
	cout => \G6|Add0~6\);

\RegA[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegA(3),
	o => \RegA[3]~input_o\);

\G11|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G11|Mux14~0_combout\ = ( \G6|Add0~5_sumout\ & ( \RegA[3]~input_o\ & ( (!\ULAOP[2]~input_o\ & ((!\ULAOP[1]~input_o\ & (!\ULAOP[3]~input_o\ & \ULAOP[0]~input_o\)) # (\ULAOP[1]~input_o\ & ((!\ULAOP[0]~input_o\))))) ) ) ) # ( !\G6|Add0~5_sumout\ & ( 
-- \RegA[3]~input_o\ & ( (!\ULAOP[2]~input_o\ & (\ULAOP[3]~input_o\ & (\ULAOP[1]~input_o\ & !\ULAOP[0]~input_o\))) ) ) ) # ( \G6|Add0~5_sumout\ & ( !\RegA[3]~input_o\ & ( (!\ULAOP[2]~input_o\ & (!\ULAOP[3]~input_o\ & (!\ULAOP[1]~input_o\ $ 
-- (!\ULAOP[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010001000000000000010000000000000101010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULAOP[2]~input_o\,
	datab => \ALT_INV_ULAOP[3]~input_o\,
	datac => \ALT_INV_ULAOP[1]~input_o\,
	datad => \ALT_INV_ULAOP[0]~input_o\,
	datae => \G6|ALT_INV_Add0~5_sumout\,
	dataf => \ALT_INV_RegA[3]~input_o\,
	combout => \G11|Mux14~0_combout\);

\RegB[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegB(2),
	o => \RegB[2]~input_o\);

\G6|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G6|Add0~9_sumout\ = SUM(( !\ULAOP[1]~input_o\ $ (!\RegB[2]~input_o\) ) + ( \RegA[2]~input_o\ ) + ( \G6|Add0~6\ ))
-- \G6|Add0~10\ = CARRY(( !\ULAOP[1]~input_o\ $ (!\RegB[2]~input_o\) ) + ( \RegA[2]~input_o\ ) + ( \G6|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULAOP[1]~input_o\,
	datad => \ALT_INV_RegB[2]~input_o\,
	dataf => \ALT_INV_RegA[2]~input_o\,
	cin => \G6|Add0~6\,
	sumout => \G6|Add0~9_sumout\,
	cout => \G6|Add0~10\);

\G11|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G11|Mux8~0_combout\ = (!\ULAOP[2]~input_o\ & ((!\ULAOP[1]~input_o\ & ((\ULAOP[0]~input_o\))) # (\ULAOP[1]~input_o\ & (!\ULAOP[3]~input_o\ & !\ULAOP[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010100000000010001010000000001000101000000000100010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULAOP[2]~input_o\,
	datab => \ALT_INV_ULAOP[3]~input_o\,
	datac => \ALT_INV_ULAOP[1]~input_o\,
	datad => \ALT_INV_ULAOP[0]~input_o\,
	combout => \G11|Mux8~0_combout\);

\G11|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G11|Mux8~1_combout\ = (!\ULAOP[2]~input_o\ & ((!\ULAOP[1]~input_o\ & (!\ULAOP[3]~input_o\ & \ULAOP[0]~input_o\)) # (\ULAOP[1]~input_o\ & ((!\ULAOP[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010000000000010101000000000001010100000000000101010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULAOP[2]~input_o\,
	datab => \ALT_INV_ULAOP[3]~input_o\,
	datac => \ALT_INV_ULAOP[1]~input_o\,
	datad => \ALT_INV_ULAOP[0]~input_o\,
	combout => \G11|Mux8~1_combout\);

\RegA[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegA(4),
	o => \RegA[4]~input_o\);

\G11|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G11|Mux13~0_combout\ = ( \RegA[4]~input_o\ & ( (!\G11|Mux8~0_combout\ & (((\G11|Mux8~1_combout\)))) # (\G11|Mux8~0_combout\ & ((!\G11|Mux8~1_combout\ & (\RegA[0]~input_o\)) # (\G11|Mux8~1_combout\ & ((\G6|Add0~9_sumout\))))) ) ) # ( !\RegA[4]~input_o\ & 
-- ( (\G11|Mux8~0_combout\ & ((!\G11|Mux8~1_combout\ & (\RegA[0]~input_o\)) # (\G11|Mux8~1_combout\ & ((\G6|Add0~9_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011000001011111001100000101000000110000010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegA[0]~input_o\,
	datab => \G6|ALT_INV_Add0~9_sumout\,
	datac => \G11|ALT_INV_Mux8~0_combout\,
	datad => \G11|ALT_INV_Mux8~1_combout\,
	datae => \ALT_INV_RegA[4]~input_o\,
	combout => \G11|Mux13~0_combout\);

\RegB[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegB(3),
	o => \RegB[3]~input_o\);

\G6|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G6|Add0~13_sumout\ = SUM(( !\ULAOP[1]~input_o\ $ (!\RegB[3]~input_o\) ) + ( \RegA[3]~input_o\ ) + ( \G6|Add0~10\ ))
-- \G6|Add0~14\ = CARRY(( !\ULAOP[1]~input_o\ $ (!\RegB[3]~input_o\) ) + ( \RegA[3]~input_o\ ) + ( \G6|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULAOP[1]~input_o\,
	datad => \ALT_INV_RegB[3]~input_o\,
	dataf => \ALT_INV_RegA[3]~input_o\,
	cin => \G6|Add0~10\,
	sumout => \G6|Add0~13_sumout\,
	cout => \G6|Add0~14\);

\RegA[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegA(5),
	o => \RegA[5]~input_o\);

\G11|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G11|Mux12~0_combout\ = ( \RegA[5]~input_o\ & ( (!\G11|Mux8~0_combout\ & (((\G11|Mux8~1_combout\)))) # (\G11|Mux8~0_combout\ & ((!\G11|Mux8~1_combout\ & (\RegA[1]~input_o\)) # (\G11|Mux8~1_combout\ & ((\G6|Add0~13_sumout\))))) ) ) # ( !\RegA[5]~input_o\ & 
-- ( (\G11|Mux8~0_combout\ & ((!\G11|Mux8~1_combout\ & (\RegA[1]~input_o\)) # (\G11|Mux8~1_combout\ & ((\G6|Add0~13_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000111000001111100010000000100110001110000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegA[1]~input_o\,
	datab => \G11|ALT_INV_Mux8~0_combout\,
	datac => \G11|ALT_INV_Mux8~1_combout\,
	datad => \G6|ALT_INV_Add0~13_sumout\,
	datae => \ALT_INV_RegA[5]~input_o\,
	combout => \G11|Mux12~0_combout\);

\RegB[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegB(4),
	o => \RegB[4]~input_o\);

\G6|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G6|Add0~17_sumout\ = SUM(( !\ULAOP[1]~input_o\ $ (!\RegB[4]~input_o\) ) + ( \RegA[4]~input_o\ ) + ( \G6|Add0~14\ ))
-- \G6|Add0~18\ = CARRY(( !\ULAOP[1]~input_o\ $ (!\RegB[4]~input_o\) ) + ( \RegA[4]~input_o\ ) + ( \G6|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULAOP[1]~input_o\,
	datad => \ALT_INV_RegB[4]~input_o\,
	dataf => \ALT_INV_RegA[4]~input_o\,
	cin => \G6|Add0~14\,
	sumout => \G6|Add0~17_sumout\,
	cout => \G6|Add0~18\);

\RegA[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegA(6),
	o => \RegA[6]~input_o\);

\G11|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G11|Mux11~0_combout\ = ( \RegA[6]~input_o\ & ( (!\G11|Mux8~0_combout\ & (((\G11|Mux8~1_combout\)))) # (\G11|Mux8~0_combout\ & ((!\G11|Mux8~1_combout\ & (\RegA[2]~input_o\)) # (\G11|Mux8~1_combout\ & ((\G6|Add0~17_sumout\))))) ) ) # ( !\RegA[6]~input_o\ & 
-- ( (\G11|Mux8~0_combout\ & ((!\G11|Mux8~1_combout\ & (\RegA[2]~input_o\)) # (\G11|Mux8~1_combout\ & ((\G6|Add0~17_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011000001011111001100000101000000110000010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegA[2]~input_o\,
	datab => \G6|ALT_INV_Add0~17_sumout\,
	datac => \G11|ALT_INV_Mux8~0_combout\,
	datad => \G11|ALT_INV_Mux8~1_combout\,
	datae => \ALT_INV_RegA[6]~input_o\,
	combout => \G11|Mux11~0_combout\);

\RegB[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegB(5),
	o => \RegB[5]~input_o\);

\G6|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G6|Add0~21_sumout\ = SUM(( !\ULAOP[1]~input_o\ $ (!\RegB[5]~input_o\) ) + ( \RegA[5]~input_o\ ) + ( \G6|Add0~18\ ))
-- \G6|Add0~22\ = CARRY(( !\ULAOP[1]~input_o\ $ (!\RegB[5]~input_o\) ) + ( \RegA[5]~input_o\ ) + ( \G6|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULAOP[1]~input_o\,
	datad => \ALT_INV_RegB[5]~input_o\,
	dataf => \ALT_INV_RegA[5]~input_o\,
	cin => \G6|Add0~18\,
	sumout => \G6|Add0~21_sumout\,
	cout => \G6|Add0~22\);

\RegA[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegA(7),
	o => \RegA[7]~input_o\);

\G11|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G11|Mux10~0_combout\ = ( \RegA[7]~input_o\ & ( (!\G11|Mux8~0_combout\ & (((\G11|Mux8~1_combout\)))) # (\G11|Mux8~0_combout\ & ((!\G11|Mux8~1_combout\ & (\RegA[3]~input_o\)) # (\G11|Mux8~1_combout\ & ((\G6|Add0~21_sumout\))))) ) ) # ( !\RegA[7]~input_o\ & 
-- ( (\G11|Mux8~0_combout\ & ((!\G11|Mux8~1_combout\ & (\RegA[3]~input_o\)) # (\G11|Mux8~1_combout\ & ((\G6|Add0~21_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000111000001111100010000000100110001110000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegA[3]~input_o\,
	datab => \G11|ALT_INV_Mux8~0_combout\,
	datac => \G11|ALT_INV_Mux8~1_combout\,
	datad => \G6|ALT_INV_Add0~21_sumout\,
	datae => \ALT_INV_RegA[7]~input_o\,
	combout => \G11|Mux10~0_combout\);

\RegB[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegB(6),
	o => \RegB[6]~input_o\);

\G6|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G6|Add0~25_sumout\ = SUM(( !\ULAOP[1]~input_o\ $ (!\RegB[6]~input_o\) ) + ( \RegA[6]~input_o\ ) + ( \G6|Add0~22\ ))
-- \G6|Add0~26\ = CARRY(( !\ULAOP[1]~input_o\ $ (!\RegB[6]~input_o\) ) + ( \RegA[6]~input_o\ ) + ( \G6|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULAOP[1]~input_o\,
	datad => \ALT_INV_RegB[6]~input_o\,
	dataf => \ALT_INV_RegA[6]~input_o\,
	cin => \G6|Add0~22\,
	sumout => \G6|Add0~25_sumout\,
	cout => \G6|Add0~26\);

\RegA[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegA(8),
	o => \RegA[8]~input_o\);

\G11|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G11|Mux9~0_combout\ = ( \RegA[8]~input_o\ & ( (!\G11|Mux8~0_combout\ & (\G11|Mux8~1_combout\)) # (\G11|Mux8~0_combout\ & ((!\G11|Mux8~1_combout\ & (\RegA[4]~input_o\)) # (\G11|Mux8~1_combout\ & ((\G6|Add0~25_sumout\))))) ) ) # ( !\RegA[8]~input_o\ & ( 
-- (\G11|Mux8~0_combout\ & ((!\G11|Mux8~1_combout\ & (\RegA[4]~input_o\)) # (\G11|Mux8~1_combout\ & ((\G6|Add0~25_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011100000100000101010010011000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G11|ALT_INV_Mux8~0_combout\,
	datab => \G11|ALT_INV_Mux8~1_combout\,
	datac => \ALT_INV_RegA[4]~input_o\,
	datad => \G6|ALT_INV_Add0~25_sumout\,
	datae => \ALT_INV_RegA[8]~input_o\,
	combout => \G11|Mux9~0_combout\);

\RegB[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegB(7),
	o => \RegB[7]~input_o\);

\G6|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G6|Add0~29_sumout\ = SUM(( !\ULAOP[1]~input_o\ $ (!\RegB[7]~input_o\) ) + ( \RegA[7]~input_o\ ) + ( \G6|Add0~26\ ))
-- \G6|Add0~30\ = CARRY(( !\ULAOP[1]~input_o\ $ (!\RegB[7]~input_o\) ) + ( \RegA[7]~input_o\ ) + ( \G6|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULAOP[1]~input_o\,
	datad => \ALT_INV_RegB[7]~input_o\,
	dataf => \ALT_INV_RegA[7]~input_o\,
	cin => \G6|Add0~26\,
	sumout => \G6|Add0~29_sumout\,
	cout => \G6|Add0~30\);

\RegA[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegA(9),
	o => \RegA[9]~input_o\);

\G11|Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G11|Mux8~2_combout\ = ( \RegA[9]~input_o\ & ( (!\G11|Mux8~0_combout\ & (\G11|Mux8~1_combout\)) # (\G11|Mux8~0_combout\ & ((!\G11|Mux8~1_combout\ & (\RegA[5]~input_o\)) # (\G11|Mux8~1_combout\ & ((\G6|Add0~29_sumout\))))) ) ) # ( !\RegA[9]~input_o\ & ( 
-- (\G11|Mux8~0_combout\ & ((!\G11|Mux8~1_combout\ & (\RegA[5]~input_o\)) # (\G11|Mux8~1_combout\ & ((\G6|Add0~29_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011100000100000101010010011000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G11|ALT_INV_Mux8~0_combout\,
	datab => \G11|ALT_INV_Mux8~1_combout\,
	datac => \ALT_INV_RegA[5]~input_o\,
	datad => \G6|ALT_INV_Add0~29_sumout\,
	datae => \ALT_INV_RegA[9]~input_o\,
	combout => \G11|Mux8~2_combout\);

\RegB[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegB(8),
	o => \RegB[8]~input_o\);

\G6|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G6|Add0~33_sumout\ = SUM(( !\ULAOP[1]~input_o\ $ (!\RegB[8]~input_o\) ) + ( \RegA[8]~input_o\ ) + ( \G6|Add0~30\ ))
-- \G6|Add0~34\ = CARRY(( !\ULAOP[1]~input_o\ $ (!\RegB[8]~input_o\) ) + ( \RegA[8]~input_o\ ) + ( \G6|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULAOP[1]~input_o\,
	datad => \ALT_INV_RegB[8]~input_o\,
	dataf => \ALT_INV_RegA[8]~input_o\,
	cin => \G6|Add0~30\,
	sumout => \G6|Add0~33_sumout\,
	cout => \G6|Add0~34\);

\RegA[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegA(10),
	o => \RegA[10]~input_o\);

\G11|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G11|Mux7~0_combout\ = ( \RegA[10]~input_o\ & ( (!\G11|Mux8~0_combout\ & (\G11|Mux8~1_combout\)) # (\G11|Mux8~0_combout\ & ((!\G11|Mux8~1_combout\ & (\RegA[6]~input_o\)) # (\G11|Mux8~1_combout\ & ((\G6|Add0~33_sumout\))))) ) ) # ( !\RegA[10]~input_o\ & ( 
-- (\G11|Mux8~0_combout\ & ((!\G11|Mux8~1_combout\ & (\RegA[6]~input_o\)) # (\G11|Mux8~1_combout\ & ((\G6|Add0~33_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011100000100000101010010011000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G11|ALT_INV_Mux8~0_combout\,
	datab => \G11|ALT_INV_Mux8~1_combout\,
	datac => \ALT_INV_RegA[6]~input_o\,
	datad => \G6|ALT_INV_Add0~33_sumout\,
	datae => \ALT_INV_RegA[10]~input_o\,
	combout => \G11|Mux7~0_combout\);

\RegB[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegB(9),
	o => \RegB[9]~input_o\);

\G6|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G6|Add0~37_sumout\ = SUM(( !\ULAOP[1]~input_o\ $ (!\RegB[9]~input_o\) ) + ( \RegA[9]~input_o\ ) + ( \G6|Add0~34\ ))
-- \G6|Add0~38\ = CARRY(( !\ULAOP[1]~input_o\ $ (!\RegB[9]~input_o\) ) + ( \RegA[9]~input_o\ ) + ( \G6|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULAOP[1]~input_o\,
	datad => \ALT_INV_RegB[9]~input_o\,
	dataf => \ALT_INV_RegA[9]~input_o\,
	cin => \G6|Add0~34\,
	sumout => \G6|Add0~37_sumout\,
	cout => \G6|Add0~38\);

\RegA[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegA(11),
	o => \RegA[11]~input_o\);

\G11|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G11|Mux6~0_combout\ = ( \RegA[11]~input_o\ & ( (!\G11|Mux8~0_combout\ & (\G11|Mux8~1_combout\)) # (\G11|Mux8~0_combout\ & ((!\G11|Mux8~1_combout\ & (\RegA[7]~input_o\)) # (\G11|Mux8~1_combout\ & ((\G6|Add0~37_sumout\))))) ) ) # ( !\RegA[11]~input_o\ & ( 
-- (\G11|Mux8~0_combout\ & ((!\G11|Mux8~1_combout\ & (\RegA[7]~input_o\)) # (\G11|Mux8~1_combout\ & ((\G6|Add0~37_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011100000100000101010010011000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G11|ALT_INV_Mux8~0_combout\,
	datab => \G11|ALT_INV_Mux8~1_combout\,
	datac => \ALT_INV_RegA[7]~input_o\,
	datad => \G6|ALT_INV_Add0~37_sumout\,
	datae => \ALT_INV_RegA[11]~input_o\,
	combout => \G11|Mux6~0_combout\);

\RegB[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegB(10),
	o => \RegB[10]~input_o\);

\G6|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G6|Add0~41_sumout\ = SUM(( !\ULAOP[1]~input_o\ $ (!\RegB[10]~input_o\) ) + ( \RegA[10]~input_o\ ) + ( \G6|Add0~38\ ))
-- \G6|Add0~42\ = CARRY(( !\ULAOP[1]~input_o\ $ (!\RegB[10]~input_o\) ) + ( \RegA[10]~input_o\ ) + ( \G6|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULAOP[1]~input_o\,
	datad => \ALT_INV_RegB[10]~input_o\,
	dataf => \ALT_INV_RegA[10]~input_o\,
	cin => \G6|Add0~38\,
	sumout => \G6|Add0~41_sumout\,
	cout => \G6|Add0~42\);

\RegA[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegA(12),
	o => \RegA[12]~input_o\);

\G11|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G11|Mux5~0_combout\ = ( \RegA[12]~input_o\ & ( (!\G11|Mux8~0_combout\ & (\G11|Mux8~1_combout\)) # (\G11|Mux8~0_combout\ & ((!\G11|Mux8~1_combout\ & (\RegA[8]~input_o\)) # (\G11|Mux8~1_combout\ & ((\G6|Add0~41_sumout\))))) ) ) # ( !\RegA[12]~input_o\ & ( 
-- (\G11|Mux8~0_combout\ & ((!\G11|Mux8~1_combout\ & (\RegA[8]~input_o\)) # (\G11|Mux8~1_combout\ & ((\G6|Add0~41_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011100000100000101010010011000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G11|ALT_INV_Mux8~0_combout\,
	datab => \G11|ALT_INV_Mux8~1_combout\,
	datac => \ALT_INV_RegA[8]~input_o\,
	datad => \G6|ALT_INV_Add0~41_sumout\,
	datae => \ALT_INV_RegA[12]~input_o\,
	combout => \G11|Mux5~0_combout\);

\RegB[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegB(11),
	o => \RegB[11]~input_o\);

\G6|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G6|Add0~45_sumout\ = SUM(( !\ULAOP[1]~input_o\ $ (!\RegB[11]~input_o\) ) + ( \RegA[11]~input_o\ ) + ( \G6|Add0~42\ ))
-- \G6|Add0~46\ = CARRY(( !\ULAOP[1]~input_o\ $ (!\RegB[11]~input_o\) ) + ( \RegA[11]~input_o\ ) + ( \G6|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULAOP[1]~input_o\,
	datad => \ALT_INV_RegB[11]~input_o\,
	dataf => \ALT_INV_RegA[11]~input_o\,
	cin => \G6|Add0~42\,
	sumout => \G6|Add0~45_sumout\,
	cout => \G6|Add0~46\);

\RegA[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegA(13),
	o => \RegA[13]~input_o\);

\G11|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G11|Mux4~0_combout\ = ( \RegA[13]~input_o\ & ( (!\G11|Mux8~0_combout\ & (\G11|Mux8~1_combout\)) # (\G11|Mux8~0_combout\ & ((!\G11|Mux8~1_combout\ & (\RegA[9]~input_o\)) # (\G11|Mux8~1_combout\ & ((\G6|Add0~45_sumout\))))) ) ) # ( !\RegA[13]~input_o\ & ( 
-- (\G11|Mux8~0_combout\ & ((!\G11|Mux8~1_combout\ & (\RegA[9]~input_o\)) # (\G11|Mux8~1_combout\ & ((\G6|Add0~45_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011100000100000101010010011000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G11|ALT_INV_Mux8~0_combout\,
	datab => \G11|ALT_INV_Mux8~1_combout\,
	datac => \ALT_INV_RegA[9]~input_o\,
	datad => \G6|ALT_INV_Add0~45_sumout\,
	datae => \ALT_INV_RegA[13]~input_o\,
	combout => \G11|Mux4~0_combout\);

\RegB[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegB(12),
	o => \RegB[12]~input_o\);

\G6|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G6|Add0~49_sumout\ = SUM(( !\ULAOP[1]~input_o\ $ (!\RegB[12]~input_o\) ) + ( \RegA[12]~input_o\ ) + ( \G6|Add0~46\ ))
-- \G6|Add0~50\ = CARRY(( !\ULAOP[1]~input_o\ $ (!\RegB[12]~input_o\) ) + ( \RegA[12]~input_o\ ) + ( \G6|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULAOP[1]~input_o\,
	datad => \ALT_INV_RegB[12]~input_o\,
	dataf => \ALT_INV_RegA[12]~input_o\,
	cin => \G6|Add0~46\,
	sumout => \G6|Add0~49_sumout\,
	cout => \G6|Add0~50\);

\RegA[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegA(14),
	o => \RegA[14]~input_o\);

\G11|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G11|Mux3~0_combout\ = ( \RegA[14]~input_o\ & ( (!\G11|Mux8~0_combout\ & (\G11|Mux8~1_combout\)) # (\G11|Mux8~0_combout\ & ((!\G11|Mux8~1_combout\ & (\RegA[10]~input_o\)) # (\G11|Mux8~1_combout\ & ((\G6|Add0~49_sumout\))))) ) ) # ( !\RegA[14]~input_o\ & ( 
-- (\G11|Mux8~0_combout\ & ((!\G11|Mux8~1_combout\ & (\RegA[10]~input_o\)) # (\G11|Mux8~1_combout\ & ((\G6|Add0~49_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011100000100000101010010011000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G11|ALT_INV_Mux8~0_combout\,
	datab => \G11|ALT_INV_Mux8~1_combout\,
	datac => \ALT_INV_RegA[10]~input_o\,
	datad => \G6|ALT_INV_Add0~49_sumout\,
	datae => \ALT_INV_RegA[14]~input_o\,
	combout => \G11|Mux3~0_combout\);

\RegB[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegB(13),
	o => \RegB[13]~input_o\);

\G6|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G6|Add0~53_sumout\ = SUM(( !\ULAOP[1]~input_o\ $ (!\RegB[13]~input_o\) ) + ( \RegA[13]~input_o\ ) + ( \G6|Add0~50\ ))
-- \G6|Add0~54\ = CARRY(( !\ULAOP[1]~input_o\ $ (!\RegB[13]~input_o\) ) + ( \RegA[13]~input_o\ ) + ( \G6|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULAOP[1]~input_o\,
	datad => \ALT_INV_RegB[13]~input_o\,
	dataf => \ALT_INV_RegA[13]~input_o\,
	cin => \G6|Add0~50\,
	sumout => \G6|Add0~53_sumout\,
	cout => \G6|Add0~54\);

\G11|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G11|Mux2~0_combout\ = ( \G6|Add0~53_sumout\ & ( (!\G11|Mux8~0_combout\ & (\RegA[15]~input_o\ & (\G11|Mux8~1_combout\))) # (\G11|Mux8~0_combout\ & (((\RegA[11]~input_o\) # (\G11|Mux8~1_combout\)))) ) ) # ( !\G6|Add0~53_sumout\ & ( (!\G11|Mux8~0_combout\ & 
-- (\RegA[15]~input_o\ & (\G11|Mux8~1_combout\))) # (\G11|Mux8~0_combout\ & (((!\G11|Mux8~1_combout\ & \RegA[11]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100000001110011011100000100001101000000011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegA[15]~input_o\,
	datab => \G11|ALT_INV_Mux8~0_combout\,
	datac => \G11|ALT_INV_Mux8~1_combout\,
	datad => \ALT_INV_RegA[11]~input_o\,
	datae => \G6|ALT_INV_Add0~53_sumout\,
	combout => \G11|Mux2~0_combout\);

\RegB[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegB(14),
	o => \RegB[14]~input_o\);

\G6|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \G6|Add0~57_sumout\ = SUM(( !\ULAOP[1]~input_o\ $ (!\RegB[14]~input_o\) ) + ( \RegA[14]~input_o\ ) + ( \G6|Add0~54\ ))
-- \G6|Add0~58\ = CARRY(( !\ULAOP[1]~input_o\ $ (!\RegB[14]~input_o\) ) + ( \RegA[14]~input_o\ ) + ( \G6|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULAOP[1]~input_o\,
	datad => \ALT_INV_RegB[14]~input_o\,
	dataf => \ALT_INV_RegA[14]~input_o\,
	cin => \G6|Add0~54\,
	sumout => \G6|Add0~57_sumout\,
	cout => \G6|Add0~58\);

\G11|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G11|Mux1~0_combout\ = ( \G6|Add0~57_sumout\ & ( (!\G11|Mux8~0_combout\ & (\RegA[15]~input_o\ & (\G11|Mux8~1_combout\))) # (\G11|Mux8~0_combout\ & (((\RegA[12]~input_o\) # (\G11|Mux8~1_combout\)))) ) ) # ( !\G6|Add0~57_sumout\ & ( (!\G11|Mux8~0_combout\ & 
-- (\RegA[15]~input_o\ & (\G11|Mux8~1_combout\))) # (\G11|Mux8~0_combout\ & (((!\G11|Mux8~1_combout\ & \RegA[12]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100000001110011011100000100001101000000011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegA[15]~input_o\,
	datab => \G11|ALT_INV_Mux8~0_combout\,
	datac => \G11|ALT_INV_Mux8~1_combout\,
	datad => \ALT_INV_RegA[12]~input_o\,
	datae => \G6|ALT_INV_Add0~57_sumout\,
	combout => \G11|Mux1~0_combout\);

\G6|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \G6|Add0~61_sumout\ = SUM(( !\ULAOP[1]~input_o\ $ (!\RegB[15]~input_o\) ) + ( \RegA[15]~input_o\ ) + ( \G6|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULAOP[1]~input_o\,
	datad => \ALT_INV_RegB[15]~input_o\,
	dataf => \ALT_INV_RegA[15]~input_o\,
	cin => \G6|Add0~58\,
	sumout => \G6|Add0~61_sumout\);

\G11|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G11|Mux0~0_combout\ = ( \G6|Add0~61_sumout\ & ( (!\G11|Mux8~0_combout\ & (\RegA[15]~input_o\ & (\G11|Mux8~1_combout\))) # (\G11|Mux8~0_combout\ & (((\RegA[13]~input_o\) # (\G11|Mux8~1_combout\)))) ) ) # ( !\G6|Add0~61_sumout\ & ( (!\G11|Mux8~0_combout\ & 
-- (\RegA[15]~input_o\ & (\G11|Mux8~1_combout\))) # (\G11|Mux8~0_combout\ & (((!\G11|Mux8~1_combout\ & \RegA[13]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100000001110011011100000100001101000000011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RegA[15]~input_o\,
	datab => \G11|ALT_INV_Mux8~0_combout\,
	datac => \G11|ALT_INV_Mux8~1_combout\,
	datad => \ALT_INV_RegA[13]~input_o\,
	datae => \G6|ALT_INV_Add0~61_sumout\,
	combout => \G11|Mux0~0_combout\);

ww_SaidaULA(0) <= \SaidaULA[0]~output_o\;

ww_SaidaULA(1) <= \SaidaULA[1]~output_o\;

ww_SaidaULA(2) <= \SaidaULA[2]~output_o\;

ww_SaidaULA(3) <= \SaidaULA[3]~output_o\;

ww_SaidaULA(4) <= \SaidaULA[4]~output_o\;

ww_SaidaULA(5) <= \SaidaULA[5]~output_o\;

ww_SaidaULA(6) <= \SaidaULA[6]~output_o\;

ww_SaidaULA(7) <= \SaidaULA[7]~output_o\;

ww_SaidaULA(8) <= \SaidaULA[8]~output_o\;

ww_SaidaULA(9) <= \SaidaULA[9]~output_o\;

ww_SaidaULA(10) <= \SaidaULA[10]~output_o\;

ww_SaidaULA(11) <= \SaidaULA[11]~output_o\;

ww_SaidaULA(12) <= \SaidaULA[12]~output_o\;

ww_SaidaULA(13) <= \SaidaULA[13]~output_o\;

ww_SaidaULA(14) <= \SaidaULA[14]~output_o\;

ww_SaidaULA(15) <= \SaidaULA[15]~output_o\;

ww_Zero <= \Zero~output_o\;
END structure;


