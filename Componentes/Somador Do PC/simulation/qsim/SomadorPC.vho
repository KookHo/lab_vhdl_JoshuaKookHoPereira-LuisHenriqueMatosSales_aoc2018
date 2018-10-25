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

-- DATE "10/25/2018 19:20:23"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
LIBRARY STD;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	SomadorPC IS
    PORT (
	EA : IN STD.STANDARD.integer;
	EB : IN STD.STANDARD.integer;
	SOMA : OUT STD.STANDARD.integer
	);
END SomadorPC;

ARCHITECTURE structure OF SomadorPC IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_EA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_EB : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_SOMA : std_logic_vector(31 DOWNTO 0);
SIGNAL \SOMA[0]~output_o\ : std_logic;
SIGNAL \SOMA[1]~output_o\ : std_logic;
SIGNAL \SOMA[2]~output_o\ : std_logic;
SIGNAL \SOMA[3]~output_o\ : std_logic;
SIGNAL \SOMA[4]~output_o\ : std_logic;
SIGNAL \SOMA[5]~output_o\ : std_logic;
SIGNAL \SOMA[6]~output_o\ : std_logic;
SIGNAL \SOMA[7]~output_o\ : std_logic;
SIGNAL \SOMA[8]~output_o\ : std_logic;
SIGNAL \SOMA[9]~output_o\ : std_logic;
SIGNAL \SOMA[10]~output_o\ : std_logic;
SIGNAL \SOMA[11]~output_o\ : std_logic;
SIGNAL \SOMA[12]~output_o\ : std_logic;
SIGNAL \SOMA[13]~output_o\ : std_logic;
SIGNAL \SOMA[14]~output_o\ : std_logic;
SIGNAL \SOMA[15]~output_o\ : std_logic;
SIGNAL \SOMA[16]~output_o\ : std_logic;
SIGNAL \SOMA[17]~output_o\ : std_logic;
SIGNAL \SOMA[18]~output_o\ : std_logic;
SIGNAL \SOMA[19]~output_o\ : std_logic;
SIGNAL \SOMA[20]~output_o\ : std_logic;
SIGNAL \SOMA[21]~output_o\ : std_logic;
SIGNAL \SOMA[22]~output_o\ : std_logic;
SIGNAL \SOMA[23]~output_o\ : std_logic;
SIGNAL \SOMA[24]~output_o\ : std_logic;
SIGNAL \SOMA[25]~output_o\ : std_logic;
SIGNAL \SOMA[26]~output_o\ : std_logic;
SIGNAL \SOMA[27]~output_o\ : std_logic;
SIGNAL \SOMA[28]~output_o\ : std_logic;
SIGNAL \SOMA[29]~output_o\ : std_logic;
SIGNAL \SOMA[30]~output_o\ : std_logic;
SIGNAL \SOMA[31]~output_o\ : std_logic;
SIGNAL \EB[0]~input_o\ : std_logic;
SIGNAL \EA[0]~input_o\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \EB[1]~input_o\ : std_logic;
SIGNAL \EA[1]~input_o\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \EB[2]~input_o\ : std_logic;
SIGNAL \EA[2]~input_o\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \EB[3]~input_o\ : std_logic;
SIGNAL \EA[3]~input_o\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \EB[4]~input_o\ : std_logic;
SIGNAL \EA[4]~input_o\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \EB[5]~input_o\ : std_logic;
SIGNAL \EA[5]~input_o\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \EB[6]~input_o\ : std_logic;
SIGNAL \EA[6]~input_o\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \EB[7]~input_o\ : std_logic;
SIGNAL \EA[7]~input_o\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \EB[8]~input_o\ : std_logic;
SIGNAL \EA[8]~input_o\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \EB[9]~input_o\ : std_logic;
SIGNAL \EA[9]~input_o\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \EB[10]~input_o\ : std_logic;
SIGNAL \EA[10]~input_o\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \EB[11]~input_o\ : std_logic;
SIGNAL \EA[11]~input_o\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \EB[12]~input_o\ : std_logic;
SIGNAL \EA[12]~input_o\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \EB[13]~input_o\ : std_logic;
SIGNAL \EA[13]~input_o\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \EB[14]~input_o\ : std_logic;
SIGNAL \EA[14]~input_o\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \EB[15]~input_o\ : std_logic;
SIGNAL \EA[15]~input_o\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \EB[16]~input_o\ : std_logic;
SIGNAL \EA[16]~input_o\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \EB[17]~input_o\ : std_logic;
SIGNAL \EA[17]~input_o\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \EB[18]~input_o\ : std_logic;
SIGNAL \EA[18]~input_o\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \EB[19]~input_o\ : std_logic;
SIGNAL \EA[19]~input_o\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \EB[20]~input_o\ : std_logic;
SIGNAL \EA[20]~input_o\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \EB[21]~input_o\ : std_logic;
SIGNAL \EA[21]~input_o\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \EB[22]~input_o\ : std_logic;
SIGNAL \EA[22]~input_o\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \EB[23]~input_o\ : std_logic;
SIGNAL \EA[23]~input_o\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \EB[24]~input_o\ : std_logic;
SIGNAL \EA[24]~input_o\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \EB[25]~input_o\ : std_logic;
SIGNAL \EA[25]~input_o\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \EB[26]~input_o\ : std_logic;
SIGNAL \EA[26]~input_o\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \EB[27]~input_o\ : std_logic;
SIGNAL \EA[27]~input_o\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \EB[28]~input_o\ : std_logic;
SIGNAL \EA[28]~input_o\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \EB[29]~input_o\ : std_logic;
SIGNAL \EA[29]~input_o\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \EB[30]~input_o\ : std_logic;
SIGNAL \EA[30]~input_o\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \EB[31]~input_o\ : std_logic;
SIGNAL \EA[31]~input_o\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \ALT_INV_EA[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_EB[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_EA[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_EB[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_EA[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_EB[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_EA[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_EB[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_EA[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_EB[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_EA[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_EB[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_EA[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_EB[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_EA[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_EB[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_EA[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_EB[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_EA[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_EB[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_EA[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_EB[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_EA[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_EB[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_EA[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_EB[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_EA[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_EB[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_EA[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_EB[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_EA[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_EB[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_EA[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_EB[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_EA[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_EB[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_EA[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_EB[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_EA[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_EB[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_EA[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_EB[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_EA[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_EB[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_EA[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_EB[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_EA[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_EB[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_EA[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_EB[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_EA[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_EB[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_EA[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_EB[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_EA[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_EB[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_EA[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_EB[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_EA[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_EB[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_EA[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_EB[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_EA[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_EB[0]~input_o\ : std_logic;

BEGIN

ww_EA <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(EA, 32);
ww_EB <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(EB, 32);
SOMA <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_SOMA));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_EA[31]~input_o\ <= NOT \EA[31]~input_o\;
\ALT_INV_EB[31]~input_o\ <= NOT \EB[31]~input_o\;
\ALT_INV_EA[30]~input_o\ <= NOT \EA[30]~input_o\;
\ALT_INV_EB[30]~input_o\ <= NOT \EB[30]~input_o\;
\ALT_INV_EA[29]~input_o\ <= NOT \EA[29]~input_o\;
\ALT_INV_EB[29]~input_o\ <= NOT \EB[29]~input_o\;
\ALT_INV_EA[28]~input_o\ <= NOT \EA[28]~input_o\;
\ALT_INV_EB[28]~input_o\ <= NOT \EB[28]~input_o\;
\ALT_INV_EA[27]~input_o\ <= NOT \EA[27]~input_o\;
\ALT_INV_EB[27]~input_o\ <= NOT \EB[27]~input_o\;
\ALT_INV_EA[26]~input_o\ <= NOT \EA[26]~input_o\;
\ALT_INV_EB[26]~input_o\ <= NOT \EB[26]~input_o\;
\ALT_INV_EA[25]~input_o\ <= NOT \EA[25]~input_o\;
\ALT_INV_EB[25]~input_o\ <= NOT \EB[25]~input_o\;
\ALT_INV_EA[24]~input_o\ <= NOT \EA[24]~input_o\;
\ALT_INV_EB[24]~input_o\ <= NOT \EB[24]~input_o\;
\ALT_INV_EA[23]~input_o\ <= NOT \EA[23]~input_o\;
\ALT_INV_EB[23]~input_o\ <= NOT \EB[23]~input_o\;
\ALT_INV_EA[22]~input_o\ <= NOT \EA[22]~input_o\;
\ALT_INV_EB[22]~input_o\ <= NOT \EB[22]~input_o\;
\ALT_INV_EA[21]~input_o\ <= NOT \EA[21]~input_o\;
\ALT_INV_EB[21]~input_o\ <= NOT \EB[21]~input_o\;
\ALT_INV_EA[20]~input_o\ <= NOT \EA[20]~input_o\;
\ALT_INV_EB[20]~input_o\ <= NOT \EB[20]~input_o\;
\ALT_INV_EA[19]~input_o\ <= NOT \EA[19]~input_o\;
\ALT_INV_EB[19]~input_o\ <= NOT \EB[19]~input_o\;
\ALT_INV_EA[18]~input_o\ <= NOT \EA[18]~input_o\;
\ALT_INV_EB[18]~input_o\ <= NOT \EB[18]~input_o\;
\ALT_INV_EA[17]~input_o\ <= NOT \EA[17]~input_o\;
\ALT_INV_EB[17]~input_o\ <= NOT \EB[17]~input_o\;
\ALT_INV_EA[16]~input_o\ <= NOT \EA[16]~input_o\;
\ALT_INV_EB[16]~input_o\ <= NOT \EB[16]~input_o\;
\ALT_INV_EA[15]~input_o\ <= NOT \EA[15]~input_o\;
\ALT_INV_EB[15]~input_o\ <= NOT \EB[15]~input_o\;
\ALT_INV_EA[14]~input_o\ <= NOT \EA[14]~input_o\;
\ALT_INV_EB[14]~input_o\ <= NOT \EB[14]~input_o\;
\ALT_INV_EA[13]~input_o\ <= NOT \EA[13]~input_o\;
\ALT_INV_EB[13]~input_o\ <= NOT \EB[13]~input_o\;
\ALT_INV_EA[12]~input_o\ <= NOT \EA[12]~input_o\;
\ALT_INV_EB[12]~input_o\ <= NOT \EB[12]~input_o\;
\ALT_INV_EA[11]~input_o\ <= NOT \EA[11]~input_o\;
\ALT_INV_EB[11]~input_o\ <= NOT \EB[11]~input_o\;
\ALT_INV_EA[10]~input_o\ <= NOT \EA[10]~input_o\;
\ALT_INV_EB[10]~input_o\ <= NOT \EB[10]~input_o\;
\ALT_INV_EA[9]~input_o\ <= NOT \EA[9]~input_o\;
\ALT_INV_EB[9]~input_o\ <= NOT \EB[9]~input_o\;
\ALT_INV_EA[8]~input_o\ <= NOT \EA[8]~input_o\;
\ALT_INV_EB[8]~input_o\ <= NOT \EB[8]~input_o\;
\ALT_INV_EA[7]~input_o\ <= NOT \EA[7]~input_o\;
\ALT_INV_EB[7]~input_o\ <= NOT \EB[7]~input_o\;
\ALT_INV_EA[6]~input_o\ <= NOT \EA[6]~input_o\;
\ALT_INV_EB[6]~input_o\ <= NOT \EB[6]~input_o\;
\ALT_INV_EA[5]~input_o\ <= NOT \EA[5]~input_o\;
\ALT_INV_EB[5]~input_o\ <= NOT \EB[5]~input_o\;
\ALT_INV_EA[4]~input_o\ <= NOT \EA[4]~input_o\;
\ALT_INV_EB[4]~input_o\ <= NOT \EB[4]~input_o\;
\ALT_INV_EA[3]~input_o\ <= NOT \EA[3]~input_o\;
\ALT_INV_EB[3]~input_o\ <= NOT \EB[3]~input_o\;
\ALT_INV_EA[2]~input_o\ <= NOT \EA[2]~input_o\;
\ALT_INV_EB[2]~input_o\ <= NOT \EB[2]~input_o\;
\ALT_INV_EA[1]~input_o\ <= NOT \EA[1]~input_o\;
\ALT_INV_EB[1]~input_o\ <= NOT \EB[1]~input_o\;
\ALT_INV_EA[0]~input_o\ <= NOT \EA[0]~input_o\;
\ALT_INV_EB[0]~input_o\ <= NOT \EB[0]~input_o\;

\SOMA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~1_sumout\,
	devoe => ww_devoe,
	o => \SOMA[0]~output_o\);

\SOMA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~5_sumout\,
	devoe => ww_devoe,
	o => \SOMA[1]~output_o\);

\SOMA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~9_sumout\,
	devoe => ww_devoe,
	o => \SOMA[2]~output_o\);

\SOMA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~13_sumout\,
	devoe => ww_devoe,
	o => \SOMA[3]~output_o\);

\SOMA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~17_sumout\,
	devoe => ww_devoe,
	o => \SOMA[4]~output_o\);

\SOMA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~21_sumout\,
	devoe => ww_devoe,
	o => \SOMA[5]~output_o\);

\SOMA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~25_sumout\,
	devoe => ww_devoe,
	o => \SOMA[6]~output_o\);

\SOMA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~29_sumout\,
	devoe => ww_devoe,
	o => \SOMA[7]~output_o\);

\SOMA[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~33_sumout\,
	devoe => ww_devoe,
	o => \SOMA[8]~output_o\);

\SOMA[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~37_sumout\,
	devoe => ww_devoe,
	o => \SOMA[9]~output_o\);

\SOMA[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~41_sumout\,
	devoe => ww_devoe,
	o => \SOMA[10]~output_o\);

\SOMA[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~45_sumout\,
	devoe => ww_devoe,
	o => \SOMA[11]~output_o\);

\SOMA[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~49_sumout\,
	devoe => ww_devoe,
	o => \SOMA[12]~output_o\);

\SOMA[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~53_sumout\,
	devoe => ww_devoe,
	o => \SOMA[13]~output_o\);

\SOMA[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~57_sumout\,
	devoe => ww_devoe,
	o => \SOMA[14]~output_o\);

\SOMA[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~61_sumout\,
	devoe => ww_devoe,
	o => \SOMA[15]~output_o\);

\SOMA[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~65_sumout\,
	devoe => ww_devoe,
	o => \SOMA[16]~output_o\);

\SOMA[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~69_sumout\,
	devoe => ww_devoe,
	o => \SOMA[17]~output_o\);

\SOMA[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~73_sumout\,
	devoe => ww_devoe,
	o => \SOMA[18]~output_o\);

\SOMA[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~77_sumout\,
	devoe => ww_devoe,
	o => \SOMA[19]~output_o\);

\SOMA[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~81_sumout\,
	devoe => ww_devoe,
	o => \SOMA[20]~output_o\);

\SOMA[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~85_sumout\,
	devoe => ww_devoe,
	o => \SOMA[21]~output_o\);

\SOMA[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~89_sumout\,
	devoe => ww_devoe,
	o => \SOMA[22]~output_o\);

\SOMA[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~93_sumout\,
	devoe => ww_devoe,
	o => \SOMA[23]~output_o\);

\SOMA[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~97_sumout\,
	devoe => ww_devoe,
	o => \SOMA[24]~output_o\);

\SOMA[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~101_sumout\,
	devoe => ww_devoe,
	o => \SOMA[25]~output_o\);

\SOMA[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~105_sumout\,
	devoe => ww_devoe,
	o => \SOMA[26]~output_o\);

\SOMA[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~109_sumout\,
	devoe => ww_devoe,
	o => \SOMA[27]~output_o\);

\SOMA[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~113_sumout\,
	devoe => ww_devoe,
	o => \SOMA[28]~output_o\);

\SOMA[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~117_sumout\,
	devoe => ww_devoe,
	o => \SOMA[29]~output_o\);

\SOMA[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~121_sumout\,
	devoe => ww_devoe,
	o => \SOMA[30]~output_o\);

\SOMA[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~125_sumout\,
	devoe => ww_devoe,
	o => \SOMA[31]~output_o\);

\EB[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EB(0),
	o => \EB[0]~input_o\);

\EA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EA(0),
	o => \EA[0]~input_o\);

\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \EB[0]~input_o\ ) + ( \EA[0]~input_o\ ) + ( !VCC ))
-- \Add0~2\ = CARRY(( \EB[0]~input_o\ ) + ( \EA[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EB[0]~input_o\,
	dataf => \ALT_INV_EA[0]~input_o\,
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

\EB[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EB(1),
	o => \EB[1]~input_o\);

\EA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EA(1),
	o => \EA[1]~input_o\);

\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \EB[1]~input_o\ ) + ( \EA[1]~input_o\ ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( \EB[1]~input_o\ ) + ( \EA[1]~input_o\ ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EB[1]~input_o\,
	dataf => \ALT_INV_EA[1]~input_o\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

\EB[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EB(2),
	o => \EB[2]~input_o\);

\EA[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EA(2),
	o => \EA[2]~input_o\);

\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \EB[2]~input_o\ ) + ( \EA[2]~input_o\ ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( \EB[2]~input_o\ ) + ( \EA[2]~input_o\ ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EB[2]~input_o\,
	dataf => \ALT_INV_EA[2]~input_o\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

\EB[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EB(3),
	o => \EB[3]~input_o\);

\EA[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EA(3),
	o => \EA[3]~input_o\);

\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \EB[3]~input_o\ ) + ( \EA[3]~input_o\ ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( \EB[3]~input_o\ ) + ( \EA[3]~input_o\ ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EB[3]~input_o\,
	dataf => \ALT_INV_EA[3]~input_o\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

\EB[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EB(4),
	o => \EB[4]~input_o\);

\EA[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EA(4),
	o => \EA[4]~input_o\);

\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \EB[4]~input_o\ ) + ( \EA[4]~input_o\ ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( \EB[4]~input_o\ ) + ( \EA[4]~input_o\ ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EB[4]~input_o\,
	dataf => \ALT_INV_EA[4]~input_o\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

\EB[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EB(5),
	o => \EB[5]~input_o\);

\EA[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EA(5),
	o => \EA[5]~input_o\);

\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \EB[5]~input_o\ ) + ( \EA[5]~input_o\ ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( \EB[5]~input_o\ ) + ( \EA[5]~input_o\ ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EB[5]~input_o\,
	dataf => \ALT_INV_EA[5]~input_o\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

\EB[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EB(6),
	o => \EB[6]~input_o\);

\EA[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EA(6),
	o => \EA[6]~input_o\);

\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \EB[6]~input_o\ ) + ( \EA[6]~input_o\ ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \EB[6]~input_o\ ) + ( \EA[6]~input_o\ ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EB[6]~input_o\,
	dataf => \ALT_INV_EA[6]~input_o\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

\EB[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EB(7),
	o => \EB[7]~input_o\);

\EA[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EA(7),
	o => \EA[7]~input_o\);

\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \EB[7]~input_o\ ) + ( \EA[7]~input_o\ ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( \EB[7]~input_o\ ) + ( \EA[7]~input_o\ ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EB[7]~input_o\,
	dataf => \ALT_INV_EA[7]~input_o\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

\EB[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EB(8),
	o => \EB[8]~input_o\);

\EA[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EA(8),
	o => \EA[8]~input_o\);

\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( \EB[8]~input_o\ ) + ( \EA[8]~input_o\ ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( \EB[8]~input_o\ ) + ( \EA[8]~input_o\ ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EB[8]~input_o\,
	dataf => \ALT_INV_EA[8]~input_o\,
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

\EB[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EB(9),
	o => \EB[9]~input_o\);

\EA[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EA(9),
	o => \EA[9]~input_o\);

\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( \EB[9]~input_o\ ) + ( \EA[9]~input_o\ ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( \EB[9]~input_o\ ) + ( \EA[9]~input_o\ ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EB[9]~input_o\,
	dataf => \ALT_INV_EA[9]~input_o\,
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

\EB[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EB(10),
	o => \EB[10]~input_o\);

\EA[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EA(10),
	o => \EA[10]~input_o\);

\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( \EB[10]~input_o\ ) + ( \EA[10]~input_o\ ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( \EB[10]~input_o\ ) + ( \EA[10]~input_o\ ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EB[10]~input_o\,
	dataf => \ALT_INV_EA[10]~input_o\,
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

\EB[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EB(11),
	o => \EB[11]~input_o\);

\EA[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EA(11),
	o => \EA[11]~input_o\);

\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( \EB[11]~input_o\ ) + ( \EA[11]~input_o\ ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( \EB[11]~input_o\ ) + ( \EA[11]~input_o\ ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EB[11]~input_o\,
	dataf => \ALT_INV_EA[11]~input_o\,
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

\EB[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EB(12),
	o => \EB[12]~input_o\);

\EA[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EA(12),
	o => \EA[12]~input_o\);

\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( \EB[12]~input_o\ ) + ( \EA[12]~input_o\ ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( \EB[12]~input_o\ ) + ( \EA[12]~input_o\ ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EB[12]~input_o\,
	dataf => \ALT_INV_EA[12]~input_o\,
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

\EB[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EB(13),
	o => \EB[13]~input_o\);

\EA[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EA(13),
	o => \EA[13]~input_o\);

\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( \EB[13]~input_o\ ) + ( \EA[13]~input_o\ ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( \EB[13]~input_o\ ) + ( \EA[13]~input_o\ ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EB[13]~input_o\,
	dataf => \ALT_INV_EA[13]~input_o\,
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

\EB[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EB(14),
	o => \EB[14]~input_o\);

\EA[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EA(14),
	o => \EA[14]~input_o\);

\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( \EB[14]~input_o\ ) + ( \EA[14]~input_o\ ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( \EB[14]~input_o\ ) + ( \EA[14]~input_o\ ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EB[14]~input_o\,
	dataf => \ALT_INV_EA[14]~input_o\,
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

\EB[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EB(15),
	o => \EB[15]~input_o\);

\EA[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EA(15),
	o => \EA[15]~input_o\);

\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( \EB[15]~input_o\ ) + ( \EA[15]~input_o\ ) + ( \Add0~58\ ))
-- \Add0~62\ = CARRY(( \EB[15]~input_o\ ) + ( \EA[15]~input_o\ ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EB[15]~input_o\,
	dataf => \ALT_INV_EA[15]~input_o\,
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

\EB[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EB(16),
	o => \EB[16]~input_o\);

\EA[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EA(16),
	o => \EA[16]~input_o\);

\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( \EB[16]~input_o\ ) + ( \EA[16]~input_o\ ) + ( \Add0~62\ ))
-- \Add0~66\ = CARRY(( \EB[16]~input_o\ ) + ( \EA[16]~input_o\ ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EB[16]~input_o\,
	dataf => \ALT_INV_EA[16]~input_o\,
	cin => \Add0~62\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

\EB[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EB(17),
	o => \EB[17]~input_o\);

\EA[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EA(17),
	o => \EA[17]~input_o\);

\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( \EB[17]~input_o\ ) + ( \EA[17]~input_o\ ) + ( \Add0~66\ ))
-- \Add0~70\ = CARRY(( \EB[17]~input_o\ ) + ( \EA[17]~input_o\ ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EB[17]~input_o\,
	dataf => \ALT_INV_EA[17]~input_o\,
	cin => \Add0~66\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

\EB[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EB(18),
	o => \EB[18]~input_o\);

\EA[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EA(18),
	o => \EA[18]~input_o\);

\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( \EB[18]~input_o\ ) + ( \EA[18]~input_o\ ) + ( \Add0~70\ ))
-- \Add0~74\ = CARRY(( \EB[18]~input_o\ ) + ( \EA[18]~input_o\ ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EB[18]~input_o\,
	dataf => \ALT_INV_EA[18]~input_o\,
	cin => \Add0~70\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

\EB[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EB(19),
	o => \EB[19]~input_o\);

\EA[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EA(19),
	o => \EA[19]~input_o\);

\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( \EB[19]~input_o\ ) + ( \EA[19]~input_o\ ) + ( \Add0~74\ ))
-- \Add0~78\ = CARRY(( \EB[19]~input_o\ ) + ( \EA[19]~input_o\ ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EB[19]~input_o\,
	dataf => \ALT_INV_EA[19]~input_o\,
	cin => \Add0~74\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

\EB[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EB(20),
	o => \EB[20]~input_o\);

\EA[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EA(20),
	o => \EA[20]~input_o\);

\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( \EB[20]~input_o\ ) + ( \EA[20]~input_o\ ) + ( \Add0~78\ ))
-- \Add0~82\ = CARRY(( \EB[20]~input_o\ ) + ( \EA[20]~input_o\ ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EB[20]~input_o\,
	dataf => \ALT_INV_EA[20]~input_o\,
	cin => \Add0~78\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

\EB[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EB(21),
	o => \EB[21]~input_o\);

\EA[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EA(21),
	o => \EA[21]~input_o\);

\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( \EB[21]~input_o\ ) + ( \EA[21]~input_o\ ) + ( \Add0~82\ ))
-- \Add0~86\ = CARRY(( \EB[21]~input_o\ ) + ( \EA[21]~input_o\ ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EB[21]~input_o\,
	dataf => \ALT_INV_EA[21]~input_o\,
	cin => \Add0~82\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

\EB[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EB(22),
	o => \EB[22]~input_o\);

\EA[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EA(22),
	o => \EA[22]~input_o\);

\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( \EB[22]~input_o\ ) + ( \EA[22]~input_o\ ) + ( \Add0~86\ ))
-- \Add0~90\ = CARRY(( \EB[22]~input_o\ ) + ( \EA[22]~input_o\ ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EB[22]~input_o\,
	dataf => \ALT_INV_EA[22]~input_o\,
	cin => \Add0~86\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

\EB[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EB(23),
	o => \EB[23]~input_o\);

\EA[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EA(23),
	o => \EA[23]~input_o\);

\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( \EB[23]~input_o\ ) + ( \EA[23]~input_o\ ) + ( \Add0~90\ ))
-- \Add0~94\ = CARRY(( \EB[23]~input_o\ ) + ( \EA[23]~input_o\ ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EB[23]~input_o\,
	dataf => \ALT_INV_EA[23]~input_o\,
	cin => \Add0~90\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

\EB[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EB(24),
	o => \EB[24]~input_o\);

\EA[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EA(24),
	o => \EA[24]~input_o\);

\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( \EB[24]~input_o\ ) + ( \EA[24]~input_o\ ) + ( \Add0~94\ ))
-- \Add0~98\ = CARRY(( \EB[24]~input_o\ ) + ( \EA[24]~input_o\ ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EB[24]~input_o\,
	dataf => \ALT_INV_EA[24]~input_o\,
	cin => \Add0~94\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

\EB[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EB(25),
	o => \EB[25]~input_o\);

\EA[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EA(25),
	o => \EA[25]~input_o\);

\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( \EB[25]~input_o\ ) + ( \EA[25]~input_o\ ) + ( \Add0~98\ ))
-- \Add0~102\ = CARRY(( \EB[25]~input_o\ ) + ( \EA[25]~input_o\ ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EB[25]~input_o\,
	dataf => \ALT_INV_EA[25]~input_o\,
	cin => \Add0~98\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

\EB[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EB(26),
	o => \EB[26]~input_o\);

\EA[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EA(26),
	o => \EA[26]~input_o\);

\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( \EB[26]~input_o\ ) + ( \EA[26]~input_o\ ) + ( \Add0~102\ ))
-- \Add0~106\ = CARRY(( \EB[26]~input_o\ ) + ( \EA[26]~input_o\ ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EB[26]~input_o\,
	dataf => \ALT_INV_EA[26]~input_o\,
	cin => \Add0~102\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

\EB[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EB(27),
	o => \EB[27]~input_o\);

\EA[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EA(27),
	o => \EA[27]~input_o\);

\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( \EB[27]~input_o\ ) + ( \EA[27]~input_o\ ) + ( \Add0~106\ ))
-- \Add0~110\ = CARRY(( \EB[27]~input_o\ ) + ( \EA[27]~input_o\ ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EB[27]~input_o\,
	dataf => \ALT_INV_EA[27]~input_o\,
	cin => \Add0~106\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

\EB[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EB(28),
	o => \EB[28]~input_o\);

\EA[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EA(28),
	o => \EA[28]~input_o\);

\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( \EB[28]~input_o\ ) + ( \EA[28]~input_o\ ) + ( \Add0~110\ ))
-- \Add0~114\ = CARRY(( \EB[28]~input_o\ ) + ( \EA[28]~input_o\ ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EB[28]~input_o\,
	dataf => \ALT_INV_EA[28]~input_o\,
	cin => \Add0~110\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

\EB[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EB(29),
	o => \EB[29]~input_o\);

\EA[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EA(29),
	o => \EA[29]~input_o\);

\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( \EB[29]~input_o\ ) + ( \EA[29]~input_o\ ) + ( \Add0~114\ ))
-- \Add0~118\ = CARRY(( \EB[29]~input_o\ ) + ( \EA[29]~input_o\ ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EB[29]~input_o\,
	dataf => \ALT_INV_EA[29]~input_o\,
	cin => \Add0~114\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

\EB[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EB(30),
	o => \EB[30]~input_o\);

\EA[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EA(30),
	o => \EA[30]~input_o\);

\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( \EB[30]~input_o\ ) + ( \EA[30]~input_o\ ) + ( \Add0~118\ ))
-- \Add0~122\ = CARRY(( \EB[30]~input_o\ ) + ( \EA[30]~input_o\ ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EB[30]~input_o\,
	dataf => \ALT_INV_EA[30]~input_o\,
	cin => \Add0~118\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

\EB[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EB(31),
	o => \EB[31]~input_o\);

\EA[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EA(31),
	o => \EA[31]~input_o\);

\Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( \EB[31]~input_o\ ) + ( \EA[31]~input_o\ ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_EB[31]~input_o\,
	dataf => \ALT_INV_EA[31]~input_o\,
	cin => \Add0~122\,
	sumout => \Add0~125_sumout\);

ww_SOMA(0) <= \SOMA[0]~output_o\;

ww_SOMA(1) <= \SOMA[1]~output_o\;

ww_SOMA(2) <= \SOMA[2]~output_o\;

ww_SOMA(3) <= \SOMA[3]~output_o\;

ww_SOMA(4) <= \SOMA[4]~output_o\;

ww_SOMA(5) <= \SOMA[5]~output_o\;

ww_SOMA(6) <= \SOMA[6]~output_o\;

ww_SOMA(7) <= \SOMA[7]~output_o\;

ww_SOMA(8) <= \SOMA[8]~output_o\;

ww_SOMA(9) <= \SOMA[9]~output_o\;

ww_SOMA(10) <= \SOMA[10]~output_o\;

ww_SOMA(11) <= \SOMA[11]~output_o\;

ww_SOMA(12) <= \SOMA[12]~output_o\;

ww_SOMA(13) <= \SOMA[13]~output_o\;

ww_SOMA(14) <= \SOMA[14]~output_o\;

ww_SOMA(15) <= \SOMA[15]~output_o\;

ww_SOMA(16) <= \SOMA[16]~output_o\;

ww_SOMA(17) <= \SOMA[17]~output_o\;

ww_SOMA(18) <= \SOMA[18]~output_o\;

ww_SOMA(19) <= \SOMA[19]~output_o\;

ww_SOMA(20) <= \SOMA[20]~output_o\;

ww_SOMA(21) <= \SOMA[21]~output_o\;

ww_SOMA(22) <= \SOMA[22]~output_o\;

ww_SOMA(23) <= \SOMA[23]~output_o\;

ww_SOMA(24) <= \SOMA[24]~output_o\;

ww_SOMA(25) <= \SOMA[25]~output_o\;

ww_SOMA(26) <= \SOMA[26]~output_o\;

ww_SOMA(27) <= \SOMA[27]~output_o\;

ww_SOMA(28) <= \SOMA[28]~output_o\;

ww_SOMA(29) <= \SOMA[29]~output_o\;

ww_SOMA(30) <= \SOMA[30]~output_o\;

ww_SOMA(31) <= \SOMA[31]~output_o\;
END structure;


