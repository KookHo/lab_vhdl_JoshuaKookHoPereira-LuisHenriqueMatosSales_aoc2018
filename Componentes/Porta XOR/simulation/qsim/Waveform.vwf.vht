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
-- Generated on "10/25/2018 18:47:58"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          XXOR
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY XXOR_vhd_vec_tst IS
END XXOR_vhd_vec_tst;
ARCHITECTURE XXOR_arch OF XXOR_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL EA : STD_LOGIC;
SIGNAL EB : STD_LOGIC;
SIGNAL SAIDA : STD_LOGIC;
COMPONENT XXOR
	PORT (
	EA : IN STD_LOGIC;
	EB : IN STD_LOGIC;
	SAIDA : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : XXOR
	PORT MAP (
-- list connections between master ports and signals
	EA => EA,
	EB => EB,
	SAIDA => SAIDA
	);

-- EA
t_prcs_EA: PROCESS
BEGIN
LOOP
	EA <= '0';
	WAIT FOR 10000 ps;
	EA <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_EA;

-- EB
t_prcs_EB: PROCESS
BEGIN
LOOP
	EB <= '0';
	WAIT FOR 20000 ps;
	EB <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_EB;
END XXOR_arch;
