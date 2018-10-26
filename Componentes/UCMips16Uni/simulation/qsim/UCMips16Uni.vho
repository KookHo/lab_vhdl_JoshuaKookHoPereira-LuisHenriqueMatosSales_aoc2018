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

-- DATE "10/26/2018 11:21:55"

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

ENTITY 	UCMips16Uni IS
    PORT (
	OPCode : IN std_logic_vector(3 DOWNTO 0);
	ULAOp : OUT std_logic_vector(1 DOWNTO 0);
	RegDst : OUT std_logic;
	Jump : OUT std_logic;
	Branch : OUT std_logic;
	MemRead : OUT std_logic;
	MemWrite : OUT std_logic;
	ULASrc : OUT std_logic;
	Mem2Reg : OUT std_logic;
	RegWrite : OUT std_logic
	);
END UCMips16Uni;

ARCHITECTURE structure OF UCMips16Uni IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_OPCode : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ULAOp : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_RegDst : std_logic;
SIGNAL ww_Jump : std_logic;
SIGNAL ww_Branch : std_logic;
SIGNAL ww_MemRead : std_logic;
SIGNAL ww_MemWrite : std_logic;
SIGNAL ww_ULASrc : std_logic;
SIGNAL ww_Mem2Reg : std_logic;
SIGNAL ww_RegWrite : std_logic;
SIGNAL \ULAOp[0]~output_o\ : std_logic;
SIGNAL \ULAOp[1]~output_o\ : std_logic;
SIGNAL \RegDst~output_o\ : std_logic;
SIGNAL \Jump~output_o\ : std_logic;
SIGNAL \Branch~output_o\ : std_logic;
SIGNAL \MemRead~output_o\ : std_logic;
SIGNAL \MemWrite~output_o\ : std_logic;
SIGNAL \ULASrc~output_o\ : std_logic;
SIGNAL \Mem2Reg~output_o\ : std_logic;
SIGNAL \RegWrite~output_o\ : std_logic;
SIGNAL \OPCode[1]~input_o\ : std_logic;
SIGNAL \OPCode[0]~input_o\ : std_logic;
SIGNAL \OPCode[3]~input_o\ : std_logic;
SIGNAL \OPCode[2]~input_o\ : std_logic;
SIGNAL \ULAOp[1]~0_combout\ : std_logic;
SIGNAL \Equal14~2_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \ULAOp[0]$latch~combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \ULAOp[1]$latch~combout\ : std_logic;
SIGNAL \RegDst~0_combout\ : std_logic;
SIGNAL \Jump~0_combout\ : std_logic;
SIGNAL \Branch~0_combout\ : std_logic;
SIGNAL \Equal14~0_combout\ : std_logic;
SIGNAL \Equal14~1_combout\ : std_logic;
SIGNAL \RegWrite~0_combout\ : std_logic;
SIGNAL \ALT_INV_OPCode[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_OPCode[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_OPCode[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ULAOp[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal14~2_combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \ALT_INV_ULAOp[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_OPCode[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_ULAOp[1]$latch~combout\ : std_logic;

BEGIN

ww_OPCode <= OPCode;
ULAOp <= ww_ULAOp;
RegDst <= ww_RegDst;
Jump <= ww_Jump;
Branch <= ww_Branch;
MemRead <= ww_MemRead;
MemWrite <= ww_MemWrite;
ULASrc <= ww_ULASrc;
Mem2Reg <= ww_Mem2Reg;
RegWrite <= ww_RegWrite;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_OPCode[0]~input_o\ <= NOT \OPCode[0]~input_o\;
\ALT_INV_OPCode[3]~input_o\ <= NOT \OPCode[3]~input_o\;
\ALT_INV_OPCode[1]~input_o\ <= NOT \OPCode[1]~input_o\;
\ALT_INV_ULAOp[1]~0_combout\ <= NOT \ULAOp[1]~0_combout\;
\ALT_INV_Equal14~2_combout\ <= NOT \Equal14~2_combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\ALT_INV_comb~1_combout\ <= NOT \comb~1_combout\;
\ALT_INV_comb~3_combout\ <= NOT \comb~3_combout\;
\ALT_INV_comb~2_combout\ <= NOT \comb~2_combout\;
\ALT_INV_ULAOp[0]$latch~combout\ <= NOT \ULAOp[0]$latch~combout\;
\ALT_INV_OPCode[2]~input_o\ <= NOT \OPCode[2]~input_o\;
\ALT_INV_ULAOp[1]$latch~combout\ <= NOT \ULAOp[1]$latch~combout\;

\ULAOp[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULAOp[0]$latch~combout\,
	devoe => ww_devoe,
	o => \ULAOp[0]~output_o\);

\ULAOp[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULAOp[1]$latch~combout\,
	devoe => ww_devoe,
	o => \ULAOp[1]~output_o\);

\RegDst~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegDst~0_combout\,
	devoe => ww_devoe,
	o => \RegDst~output_o\);

\Jump~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Jump~0_combout\,
	devoe => ww_devoe,
	o => \Jump~output_o\);

\Branch~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Branch~0_combout\,
	devoe => ww_devoe,
	o => \Branch~output_o\);

\MemRead~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal14~0_combout\,
	devoe => ww_devoe,
	o => \MemRead~output_o\);

\MemWrite~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal14~1_combout\,
	devoe => ww_devoe,
	o => \MemWrite~output_o\);

\ULASrc~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ULASrc~output_o\);

\Mem2Reg~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal14~0_combout\,
	devoe => ww_devoe,
	o => \Mem2Reg~output_o\);

\RegWrite~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegWrite~0_combout\,
	devoe => ww_devoe,
	o => \RegWrite~output_o\);

\OPCode[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPCode(1),
	o => \OPCode[1]~input_o\);

\OPCode[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPCode(0),
	o => \OPCode[0]~input_o\);

\OPCode[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPCode(3),
	o => \OPCode[3]~input_o\);

\OPCode[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPCode(2),
	o => \OPCode[2]~input_o\);

\ULAOp[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULAOp[1]~0_combout\ = (!\OPCode[2]~input_o\ & ((!\OPCode[3]~input_o\) # ((\OPCode[1]~input_o\ & !\OPCode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110010001000100011001000100010001100100010001000110010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OPCode[3]~input_o\,
	datab => \ALT_INV_OPCode[2]~input_o\,
	datac => \ALT_INV_OPCode[1]~input_o\,
	datad => \ALT_INV_OPCode[0]~input_o\,
	combout => \ULAOp[1]~0_combout\);

\Equal14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal14~2_combout\ = (!\OPCode[2]~input_o\ & !\OPCode[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OPCode[2]~input_o\,
	datab => \ALT_INV_OPCode[3]~input_o\,
	combout => \Equal14~2_combout\);

\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (!\ULAOp[1]~0_combout\) # ((\Equal14~2_combout\ & ((!\OPCode[1]~input_o\) # (\OPCode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111011111100001111101111110000111110111111000011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OPCode[1]~input_o\,
	datab => \ALT_INV_OPCode[0]~input_o\,
	datac => \ALT_INV_ULAOp[1]~0_combout\,
	datad => \ALT_INV_Equal14~2_combout\,
	combout => \comb~1_combout\);

\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\ULAOp[1]~0_combout\ & (\Equal14~2_combout\ & ((!\OPCode[1]~input_o\) # (\OPCode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001011000000000000101100000000000010110000000000001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OPCode[1]~input_o\,
	datab => \ALT_INV_OPCode[0]~input_o\,
	datac => \ALT_INV_ULAOp[1]~0_combout\,
	datad => \ALT_INV_Equal14~2_combout\,
	combout => \comb~0_combout\);

\ULAOp[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULAOp[0]$latch~combout\ = ( \comb~1_combout\ & ( !\comb~0_combout\ & ( \ULAOp[0]$latch~combout\ ) ) ) # ( !\comb~1_combout\ & ( !\comb~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_ULAOp[0]$latch~combout\,
	datae => \ALT_INV_comb~1_combout\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \ULAOp[0]$latch~combout\);

\comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = ((!\OPCode[1]~input_o\) # (!\OPCode[3]~input_o\ $ (\OPCode[0]~input_o\))) # (\OPCode[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111010111111111111101011111111111110101111111111111010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OPCode[2]~input_o\,
	datab => \ALT_INV_OPCode[3]~input_o\,
	datac => \ALT_INV_OPCode[0]~input_o\,
	datad => \ALT_INV_OPCode[1]~input_o\,
	combout => \comb~2_combout\);

\comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = (!\OPCode[2]~input_o\ & (!\OPCode[3]~input_o\ & ((!\OPCode[0]~input_o\) # (!\OPCode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000000100010001000000010001000100000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OPCode[2]~input_o\,
	datab => \ALT_INV_OPCode[3]~input_o\,
	datac => \ALT_INV_OPCode[0]~input_o\,
	datad => \ALT_INV_OPCode[1]~input_o\,
	combout => \comb~3_combout\);

\ULAOp[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULAOp[1]$latch~combout\ = ( \comb~2_combout\ & ( !\comb~3_combout\ & ( \ULAOp[1]$latch~combout\ ) ) ) # ( !\comb~2_combout\ & ( !\comb~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_ULAOp[1]$latch~combout\,
	datae => \ALT_INV_comb~2_combout\,
	dataf => \ALT_INV_comb~3_combout\,
	combout => \ULAOp[1]$latch~combout\);

\RegDst~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegDst~0_combout\ = !\OPCode[2]~input_o\ $ (((!\OPCode[1]~input_o\ & \OPCode[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010011010100110101001101010011010100110101001101010011010100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OPCode[2]~input_o\,
	datab => \ALT_INV_OPCode[1]~input_o\,
	datac => \ALT_INV_OPCode[3]~input_o\,
	combout => \RegDst~0_combout\);

\Jump~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Jump~0_combout\ = (\OPCode[2]~input_o\ & (\OPCode[1]~input_o\ & !\OPCode[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OPCode[2]~input_o\,
	datab => \ALT_INV_OPCode[1]~input_o\,
	datac => \ALT_INV_OPCode[3]~input_o\,
	combout => \Jump~0_combout\);

\Branch~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Branch~0_combout\ = (\OPCode[2]~input_o\ & (!\OPCode[1]~input_o\ & !\OPCode[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OPCode[2]~input_o\,
	datab => \ALT_INV_OPCode[1]~input_o\,
	datac => \ALT_INV_OPCode[3]~input_o\,
	combout => \Branch~0_combout\);

\Equal14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal14~0_combout\ = (!\OPCode[2]~input_o\ & (!\OPCode[1]~input_o\ & (\OPCode[3]~input_o\ & !\OPCode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OPCode[2]~input_o\,
	datab => \ALT_INV_OPCode[1]~input_o\,
	datac => \ALT_INV_OPCode[3]~input_o\,
	datad => \ALT_INV_OPCode[0]~input_o\,
	combout => \Equal14~0_combout\);

\Equal14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal14~1_combout\ = (!\OPCode[2]~input_o\ & (!\OPCode[1]~input_o\ & (\OPCode[3]~input_o\ & \OPCode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OPCode[2]~input_o\,
	datab => \ALT_INV_OPCode[1]~input_o\,
	datac => \ALT_INV_OPCode[3]~input_o\,
	datad => \ALT_INV_OPCode[0]~input_o\,
	combout => \Equal14~1_combout\);

\RegWrite~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegWrite~0_combout\ = (!\OPCode[2]~input_o\ & (((!\OPCode[3]~input_o\) # (!\OPCode[0]~input_o\)) # (\OPCode[1]~input_o\))) # (\OPCode[2]~input_o\ & (!\OPCode[1]~input_o\ & (\OPCode[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111010100110101011101010011010101110101001101010111010100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OPCode[2]~input_o\,
	datab => \ALT_INV_OPCode[1]~input_o\,
	datac => \ALT_INV_OPCode[3]~input_o\,
	datad => \ALT_INV_OPCode[0]~input_o\,
	combout => \RegWrite~0_combout\);

ww_ULAOp(0) <= \ULAOp[0]~output_o\;

ww_ULAOp(1) <= \ULAOp[1]~output_o\;

ww_RegDst <= \RegDst~output_o\;

ww_Jump <= \Jump~output_o\;

ww_Branch <= \Branch~output_o\;

ww_MemRead <= \MemRead~output_o\;

ww_MemWrite <= \MemWrite~output_o\;

ww_ULASrc <= \ULASrc~output_o\;

ww_Mem2Reg <= \Mem2Reg~output_o\;

ww_RegWrite <= \RegWrite~output_o\;
END structure;


