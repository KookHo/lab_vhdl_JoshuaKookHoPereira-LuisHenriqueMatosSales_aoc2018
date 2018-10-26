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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/26/2018 11:21:53"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          UCMips16Uni
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY UCMips16Uni_vhd_vec_tst IS
END UCMips16Uni_vhd_vec_tst;
ARCHITECTURE UCMips16Uni_arch OF UCMips16Uni_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Branch : STD_LOGIC;
SIGNAL Jump : STD_LOGIC;
SIGNAL Mem2Reg : STD_LOGIC;
SIGNAL MemRead : STD_LOGIC;
SIGNAL MemWrite : STD_LOGIC;
SIGNAL OPCode : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL RegDst : STD_LOGIC;
SIGNAL RegWrite : STD_LOGIC;
SIGNAL ULAOp : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL ULASrc : STD_LOGIC;
COMPONENT UCMips16Uni
	PORT (
	Branch : OUT STD_LOGIC;
	Jump : OUT STD_LOGIC;
	Mem2Reg : OUT STD_LOGIC;
	MemRead : OUT STD_LOGIC;
	MemWrite : OUT STD_LOGIC;
	OPCode : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	RegDst : OUT STD_LOGIC;
	RegWrite : OUT STD_LOGIC;
	ULAOp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	ULASrc : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : UCMips16Uni
	PORT MAP (
-- list connections between master ports and signals
	Branch => Branch,
	Jump => Jump,
	Mem2Reg => Mem2Reg,
	MemRead => MemRead,
	MemWrite => MemWrite,
	OPCode => OPCode,
	RegDst => RegDst,
	RegWrite => RegWrite,
	ULAOp => ULAOp,
	ULASrc => ULASrc
	);
-- OPCode[3]
t_prcs_OPCode_3: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		OPCode(3) <= '0';
		WAIT FOR 240000 ps;
		OPCode(3) <= '1';
		WAIT FOR 240000 ps;
	END LOOP;
	OPCode(3) <= '0';
WAIT;
END PROCESS t_prcs_OPCode_3;
-- OPCode[2]
t_prcs_OPCode_2: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		OPCode(2) <= '0';
		WAIT FOR 120000 ps;
		OPCode(2) <= '1';
		WAIT FOR 120000 ps;
	END LOOP;
	OPCode(2) <= '0';
WAIT;
END PROCESS t_prcs_OPCode_2;
-- OPCode[1]
t_prcs_OPCode_1: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		OPCode(1) <= '0';
		WAIT FOR 60000 ps;
		OPCode(1) <= '1';
		WAIT FOR 60000 ps;
	END LOOP;
	OPCode(1) <= '0';
WAIT;
END PROCESS t_prcs_OPCode_1;
-- OPCode[0]
t_prcs_OPCode_0: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		OPCode(0) <= '0';
		WAIT FOR 30000 ps;
		OPCode(0) <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	OPCode(0) <= '0';
	WAIT FOR 30000 ps;
	OPCode(0) <= '1';
WAIT;
END PROCESS t_prcs_OPCode_0;
END UCMips16Uni_arch;
