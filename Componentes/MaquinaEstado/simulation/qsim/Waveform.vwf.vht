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
-- Generated on "10/26/2018 15:55:04"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MaquinaEstado
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MaquinaEstado_vhd_vec_tst IS
END MaquinaEstado_vhd_vec_tst;
ARCHITECTURE MaquinaEstado_arch OF MaquinaEstado_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clock : STD_LOGIC;
SIGNAL P : STD_LOGIC;
SIGNAL R : STD_LOGIC;
SIGNAL Start : STD_LOGIC;
COMPONENT MaquinaEstado
	PORT (
	Clock : IN STD_LOGIC;
	P : IN STD_LOGIC;
	R : OUT STD_LOGIC;
	Start : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : MaquinaEstado
	PORT MAP (
-- list connections between master ports and signals
	Clock => Clock,
	P => P,
	R => R,
	Start => Start
	);

-- Clock
t_prcs_Clock: PROCESS
BEGIN
	Clock <= '0';
WAIT;
END PROCESS t_prcs_Clock;

-- P
t_prcs_P: PROCESS
BEGIN
	P <= '0';
WAIT;
END PROCESS t_prcs_P;

-- Start
t_prcs_Start: PROCESS
BEGIN
	Start <= '0';
WAIT;
END PROCESS t_prcs_Start;
END MaquinaEstado_arch;
