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
-- Generated on "10/25/2018 20:10:16"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MemoriaROM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MemoriaROM_vhd_vec_tst IS
END MemoriaROM_vhd_vec_tst;
ARCHITECTURE MemoriaROM_arch OF MemoriaROM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL dado : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL endereco : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT MemoriaROM
	PORT (
	dado : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	endereco : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MemoriaROM
	PORT MAP (
-- list connections between master ports and signals
	dado => dado,
	endereco => endereco
	);
-- endereco[3]
t_prcs_endereco_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		endereco(3) <= '0';
		WAIT FOR 80000 ps;
		endereco(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	endereco(3) <= '0';
WAIT;
END PROCESS t_prcs_endereco_3;
-- endereco[2]
t_prcs_endereco_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		endereco(2) <= '0';
		WAIT FOR 40000 ps;
		endereco(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	endereco(2) <= '0';
WAIT;
END PROCESS t_prcs_endereco_2;
-- endereco[1]
t_prcs_endereco_1: PROCESS
BEGIN
LOOP
	endereco(1) <= '0';
	WAIT FOR 20000 ps;
	endereco(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_endereco_1;
-- endereco[0]
t_prcs_endereco_0: PROCESS
BEGIN
LOOP
	endereco(0) <= '0';
	WAIT FOR 10000 ps;
	endereco(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_endereco_0;
END MemoriaROM_arch;
