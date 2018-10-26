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

-- DATE "10/25/2018 20:41:38"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	BancoRegistradores IS
    PORT (
	RegWrite : IN std_logic;
	RegA : OUT std_logic_vector(15 DOWNTO 0);
	RegB : OUT std_logic_vector(15 DOWNTO 0);
	WriteData : IN std_logic_vector(15 DOWNTO 0);
	EndRegWrite : IN std_logic_vector(3 DOWNTO 0);
	ReadReg1 : IN std_logic_vector(3 DOWNTO 0);
	ReadReg2 : IN std_logic_vector(3 DOWNTO 0)
	);
END BancoRegistradores;

ARCHITECTURE structure OF BancoRegistradores IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RegWrite : std_logic;
SIGNAL ww_RegA : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_RegB : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_WriteData : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_EndRegWrite : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ReadReg1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ReadReg2 : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegA[0]~output_o\ : std_logic;
SIGNAL \RegA[1]~output_o\ : std_logic;
SIGNAL \RegA[2]~output_o\ : std_logic;
SIGNAL \RegA[3]~output_o\ : std_logic;
SIGNAL \RegA[4]~output_o\ : std_logic;
SIGNAL \RegA[5]~output_o\ : std_logic;
SIGNAL \RegA[6]~output_o\ : std_logic;
SIGNAL \RegA[7]~output_o\ : std_logic;
SIGNAL \RegA[8]~output_o\ : std_logic;
SIGNAL \RegA[9]~output_o\ : std_logic;
SIGNAL \RegA[10]~output_o\ : std_logic;
SIGNAL \RegA[11]~output_o\ : std_logic;
SIGNAL \RegA[12]~output_o\ : std_logic;
SIGNAL \RegA[13]~output_o\ : std_logic;
SIGNAL \RegA[14]~output_o\ : std_logic;
SIGNAL \RegA[15]~output_o\ : std_logic;
SIGNAL \RegB[0]~output_o\ : std_logic;
SIGNAL \RegB[1]~output_o\ : std_logic;
SIGNAL \RegB[2]~output_o\ : std_logic;
SIGNAL \RegB[3]~output_o\ : std_logic;
SIGNAL \RegB[4]~output_o\ : std_logic;
SIGNAL \RegB[5]~output_o\ : std_logic;
SIGNAL \RegB[6]~output_o\ : std_logic;
SIGNAL \RegB[7]~output_o\ : std_logic;
SIGNAL \RegB[8]~output_o\ : std_logic;
SIGNAL \RegB[9]~output_o\ : std_logic;
SIGNAL \RegB[10]~output_o\ : std_logic;
SIGNAL \RegB[11]~output_o\ : std_logic;
SIGNAL \RegB[12]~output_o\ : std_logic;
SIGNAL \RegB[13]~output_o\ : std_logic;
SIGNAL \RegB[14]~output_o\ : std_logic;
SIGNAL \RegB[15]~output_o\ : std_logic;
SIGNAL \RegWrite~input_o\ : std_logic;
SIGNAL \WriteData[0]~input_o\ : std_logic;
SIGNAL \EndRegWrite[0]~input_o\ : std_logic;
SIGNAL \EndRegWrite[1]~input_o\ : std_logic;
SIGNAL \EndRegWrite[2]~input_o\ : std_logic;
SIGNAL \EndRegWrite[3]~input_o\ : std_logic;
SIGNAL \Regs~437_combout\ : std_logic;
SIGNAL \Regs~21_q\ : std_logic;
SIGNAL \Regs~438_combout\ : std_logic;
SIGNAL \Regs~37_q\ : std_logic;
SIGNAL \Regs~439_combout\ : std_logic;
SIGNAL \Regs~53_q\ : std_logic;
SIGNAL \Regs~440_combout\ : std_logic;
SIGNAL \Regs~69_q\ : std_logic;
SIGNAL \ReadReg1[0]~input_o\ : std_logic;
SIGNAL \ReadReg1[1]~input_o\ : std_logic;
SIGNAL \Regs~277_combout\ : std_logic;
SIGNAL \Regs~441_combout\ : std_logic;
SIGNAL \Regs~85_q\ : std_logic;
SIGNAL \Regs~442_combout\ : std_logic;
SIGNAL \Regs~101_q\ : std_logic;
SIGNAL \Regs~443_combout\ : std_logic;
SIGNAL \Regs~117_q\ : std_logic;
SIGNAL \Regs~444_combout\ : std_logic;
SIGNAL \Regs~133_q\ : std_logic;
SIGNAL \Regs~278_combout\ : std_logic;
SIGNAL \Regs~445_combout\ : std_logic;
SIGNAL \Regs~149_q\ : std_logic;
SIGNAL \Regs~446_combout\ : std_logic;
SIGNAL \Regs~165_q\ : std_logic;
SIGNAL \Regs~447_combout\ : std_logic;
SIGNAL \Regs~181_q\ : std_logic;
SIGNAL \Regs~448_combout\ : std_logic;
SIGNAL \Regs~197_q\ : std_logic;
SIGNAL \Regs~279_combout\ : std_logic;
SIGNAL \Regs~449_combout\ : std_logic;
SIGNAL \Regs~213_q\ : std_logic;
SIGNAL \Regs~450_combout\ : std_logic;
SIGNAL \Regs~229_q\ : std_logic;
SIGNAL \Regs~451_combout\ : std_logic;
SIGNAL \Regs~245_q\ : std_logic;
SIGNAL \Regs~452_combout\ : std_logic;
SIGNAL \Regs~261_q\ : std_logic;
SIGNAL \Regs~280_combout\ : std_logic;
SIGNAL \ReadReg1[2]~input_o\ : std_logic;
SIGNAL \ReadReg1[3]~input_o\ : std_logic;
SIGNAL \Regs~281_combout\ : std_logic;
SIGNAL \WriteData[1]~input_o\ : std_logic;
SIGNAL \Regs~22_q\ : std_logic;
SIGNAL \Regs~86_q\ : std_logic;
SIGNAL \Regs~150_q\ : std_logic;
SIGNAL \Regs~214_q\ : std_logic;
SIGNAL \Regs~282_combout\ : std_logic;
SIGNAL \Regs~38_q\ : std_logic;
SIGNAL \Regs~102_q\ : std_logic;
SIGNAL \Regs~166_q\ : std_logic;
SIGNAL \Regs~230_q\ : std_logic;
SIGNAL \Regs~283_combout\ : std_logic;
SIGNAL \Regs~54_q\ : std_logic;
SIGNAL \Regs~118_q\ : std_logic;
SIGNAL \Regs~182_q\ : std_logic;
SIGNAL \Regs~246_q\ : std_logic;
SIGNAL \Regs~284_combout\ : std_logic;
SIGNAL \Regs~70_q\ : std_logic;
SIGNAL \Regs~134_q\ : std_logic;
SIGNAL \Regs~198_q\ : std_logic;
SIGNAL \Regs~262_q\ : std_logic;
SIGNAL \Regs~285_combout\ : std_logic;
SIGNAL \Regs~286_combout\ : std_logic;
SIGNAL \WriteData[2]~input_o\ : std_logic;
SIGNAL \Regs~23_q\ : std_logic;
SIGNAL \Regs~39_q\ : std_logic;
SIGNAL \Regs~55_q\ : std_logic;
SIGNAL \Regs~71_q\ : std_logic;
SIGNAL \Regs~287_combout\ : std_logic;
SIGNAL \Regs~87_q\ : std_logic;
SIGNAL \Regs~103_q\ : std_logic;
SIGNAL \Regs~119_q\ : std_logic;
SIGNAL \Regs~135_q\ : std_logic;
SIGNAL \Regs~288_combout\ : std_logic;
SIGNAL \Regs~151_q\ : std_logic;
SIGNAL \Regs~167_q\ : std_logic;
SIGNAL \Regs~183_q\ : std_logic;
SIGNAL \Regs~199_q\ : std_logic;
SIGNAL \Regs~289_combout\ : std_logic;
SIGNAL \Regs~215_q\ : std_logic;
SIGNAL \Regs~231_q\ : std_logic;
SIGNAL \Regs~247_q\ : std_logic;
SIGNAL \Regs~263_q\ : std_logic;
SIGNAL \Regs~290_combout\ : std_logic;
SIGNAL \Regs~291_combout\ : std_logic;
SIGNAL \WriteData[3]~input_o\ : std_logic;
SIGNAL \Regs~24_q\ : std_logic;
SIGNAL \Regs~88_q\ : std_logic;
SIGNAL \Regs~152_q\ : std_logic;
SIGNAL \Regs~216_q\ : std_logic;
SIGNAL \Regs~292_combout\ : std_logic;
SIGNAL \Regs~40_q\ : std_logic;
SIGNAL \Regs~104_q\ : std_logic;
SIGNAL \Regs~168_q\ : std_logic;
SIGNAL \Regs~232_q\ : std_logic;
SIGNAL \Regs~293_combout\ : std_logic;
SIGNAL \Regs~56_q\ : std_logic;
SIGNAL \Regs~120_q\ : std_logic;
SIGNAL \Regs~184_q\ : std_logic;
SIGNAL \Regs~248_q\ : std_logic;
SIGNAL \Regs~294_combout\ : std_logic;
SIGNAL \Regs~72_q\ : std_logic;
SIGNAL \Regs~136_q\ : std_logic;
SIGNAL \Regs~200_q\ : std_logic;
SIGNAL \Regs~264_q\ : std_logic;
SIGNAL \Regs~295_combout\ : std_logic;
SIGNAL \Regs~296_combout\ : std_logic;
SIGNAL \WriteData[4]~input_o\ : std_logic;
SIGNAL \Regs~25_q\ : std_logic;
SIGNAL \Regs~41_q\ : std_logic;
SIGNAL \Regs~57_q\ : std_logic;
SIGNAL \Regs~73_q\ : std_logic;
SIGNAL \Regs~297_combout\ : std_logic;
SIGNAL \Regs~89_q\ : std_logic;
SIGNAL \Regs~105_q\ : std_logic;
SIGNAL \Regs~121_q\ : std_logic;
SIGNAL \Regs~137_q\ : std_logic;
SIGNAL \Regs~298_combout\ : std_logic;
SIGNAL \Regs~153_q\ : std_logic;
SIGNAL \Regs~169_q\ : std_logic;
SIGNAL \Regs~185_q\ : std_logic;
SIGNAL \Regs~201_q\ : std_logic;
SIGNAL \Regs~299_combout\ : std_logic;
SIGNAL \Regs~217_q\ : std_logic;
SIGNAL \Regs~233_q\ : std_logic;
SIGNAL \Regs~249_q\ : std_logic;
SIGNAL \Regs~265_q\ : std_logic;
SIGNAL \Regs~300_combout\ : std_logic;
SIGNAL \Regs~301_combout\ : std_logic;
SIGNAL \WriteData[5]~input_o\ : std_logic;
SIGNAL \Regs~26_q\ : std_logic;
SIGNAL \Regs~90_q\ : std_logic;
SIGNAL \Regs~154_q\ : std_logic;
SIGNAL \Regs~218_q\ : std_logic;
SIGNAL \Regs~302_combout\ : std_logic;
SIGNAL \Regs~42_q\ : std_logic;
SIGNAL \Regs~106_q\ : std_logic;
SIGNAL \Regs~170_q\ : std_logic;
SIGNAL \Regs~234_q\ : std_logic;
SIGNAL \Regs~303_combout\ : std_logic;
SIGNAL \Regs~58_q\ : std_logic;
SIGNAL \Regs~122_q\ : std_logic;
SIGNAL \Regs~186_q\ : std_logic;
SIGNAL \Regs~250_q\ : std_logic;
SIGNAL \Regs~304_combout\ : std_logic;
SIGNAL \Regs~74_q\ : std_logic;
SIGNAL \Regs~138_q\ : std_logic;
SIGNAL \Regs~202_q\ : std_logic;
SIGNAL \Regs~266_q\ : std_logic;
SIGNAL \Regs~305_combout\ : std_logic;
SIGNAL \Regs~306_combout\ : std_logic;
SIGNAL \WriteData[6]~input_o\ : std_logic;
SIGNAL \Regs~27_q\ : std_logic;
SIGNAL \Regs~43_q\ : std_logic;
SIGNAL \Regs~59_q\ : std_logic;
SIGNAL \Regs~75_q\ : std_logic;
SIGNAL \Regs~307_combout\ : std_logic;
SIGNAL \Regs~91_q\ : std_logic;
SIGNAL \Regs~107_q\ : std_logic;
SIGNAL \Regs~123_q\ : std_logic;
SIGNAL \Regs~139_q\ : std_logic;
SIGNAL \Regs~308_combout\ : std_logic;
SIGNAL \Regs~155_q\ : std_logic;
SIGNAL \Regs~171_q\ : std_logic;
SIGNAL \Regs~187_q\ : std_logic;
SIGNAL \Regs~203_q\ : std_logic;
SIGNAL \Regs~309_combout\ : std_logic;
SIGNAL \Regs~219_q\ : std_logic;
SIGNAL \Regs~235_q\ : std_logic;
SIGNAL \Regs~251_q\ : std_logic;
SIGNAL \Regs~267_q\ : std_logic;
SIGNAL \Regs~310_combout\ : std_logic;
SIGNAL \Regs~311_combout\ : std_logic;
SIGNAL \WriteData[7]~input_o\ : std_logic;
SIGNAL \Regs~28_q\ : std_logic;
SIGNAL \Regs~92_q\ : std_logic;
SIGNAL \Regs~156_q\ : std_logic;
SIGNAL \Regs~220_q\ : std_logic;
SIGNAL \Regs~312_combout\ : std_logic;
SIGNAL \Regs~44_q\ : std_logic;
SIGNAL \Regs~108_q\ : std_logic;
SIGNAL \Regs~172_q\ : std_logic;
SIGNAL \Regs~236_q\ : std_logic;
SIGNAL \Regs~313_combout\ : std_logic;
SIGNAL \Regs~60_q\ : std_logic;
SIGNAL \Regs~124_q\ : std_logic;
SIGNAL \Regs~188_q\ : std_logic;
SIGNAL \Regs~252_q\ : std_logic;
SIGNAL \Regs~314_combout\ : std_logic;
SIGNAL \Regs~76_q\ : std_logic;
SIGNAL \Regs~140_q\ : std_logic;
SIGNAL \Regs~204_q\ : std_logic;
SIGNAL \Regs~268_q\ : std_logic;
SIGNAL \Regs~315_combout\ : std_logic;
SIGNAL \Regs~316_combout\ : std_logic;
SIGNAL \WriteData[8]~input_o\ : std_logic;
SIGNAL \Regs~29_q\ : std_logic;
SIGNAL \Regs~45_q\ : std_logic;
SIGNAL \Regs~61_q\ : std_logic;
SIGNAL \Regs~77_q\ : std_logic;
SIGNAL \Regs~317_combout\ : std_logic;
SIGNAL \Regs~93_q\ : std_logic;
SIGNAL \Regs~109_q\ : std_logic;
SIGNAL \Regs~125_q\ : std_logic;
SIGNAL \Regs~141_q\ : std_logic;
SIGNAL \Regs~318_combout\ : std_logic;
SIGNAL \Regs~157_q\ : std_logic;
SIGNAL \Regs~173_q\ : std_logic;
SIGNAL \Regs~189_q\ : std_logic;
SIGNAL \Regs~205_q\ : std_logic;
SIGNAL \Regs~319_combout\ : std_logic;
SIGNAL \Regs~221_q\ : std_logic;
SIGNAL \Regs~237_q\ : std_logic;
SIGNAL \Regs~253_q\ : std_logic;
SIGNAL \Regs~269_q\ : std_logic;
SIGNAL \Regs~320_combout\ : std_logic;
SIGNAL \Regs~321_combout\ : std_logic;
SIGNAL \WriteData[9]~input_o\ : std_logic;
SIGNAL \Regs~30_q\ : std_logic;
SIGNAL \Regs~94_q\ : std_logic;
SIGNAL \Regs~158_q\ : std_logic;
SIGNAL \Regs~222_q\ : std_logic;
SIGNAL \Regs~322_combout\ : std_logic;
SIGNAL \Regs~46_q\ : std_logic;
SIGNAL \Regs~110_q\ : std_logic;
SIGNAL \Regs~174_q\ : std_logic;
SIGNAL \Regs~238_q\ : std_logic;
SIGNAL \Regs~323_combout\ : std_logic;
SIGNAL \Regs~62_q\ : std_logic;
SIGNAL \Regs~126_q\ : std_logic;
SIGNAL \Regs~190_q\ : std_logic;
SIGNAL \Regs~254_q\ : std_logic;
SIGNAL \Regs~324_combout\ : std_logic;
SIGNAL \Regs~78_q\ : std_logic;
SIGNAL \Regs~142_q\ : std_logic;
SIGNAL \Regs~206_q\ : std_logic;
SIGNAL \Regs~270_q\ : std_logic;
SIGNAL \Regs~325_combout\ : std_logic;
SIGNAL \Regs~326_combout\ : std_logic;
SIGNAL \WriteData[10]~input_o\ : std_logic;
SIGNAL \Regs~31_q\ : std_logic;
SIGNAL \Regs~47_q\ : std_logic;
SIGNAL \Regs~63_q\ : std_logic;
SIGNAL \Regs~79_q\ : std_logic;
SIGNAL \Regs~327_combout\ : std_logic;
SIGNAL \Regs~95_q\ : std_logic;
SIGNAL \Regs~111_q\ : std_logic;
SIGNAL \Regs~127_q\ : std_logic;
SIGNAL \Regs~143_q\ : std_logic;
SIGNAL \Regs~328_combout\ : std_logic;
SIGNAL \Regs~159_q\ : std_logic;
SIGNAL \Regs~175_q\ : std_logic;
SIGNAL \Regs~191_q\ : std_logic;
SIGNAL \Regs~207_q\ : std_logic;
SIGNAL \Regs~329_combout\ : std_logic;
SIGNAL \Regs~223_q\ : std_logic;
SIGNAL \Regs~239_q\ : std_logic;
SIGNAL \Regs~255_q\ : std_logic;
SIGNAL \Regs~271_q\ : std_logic;
SIGNAL \Regs~330_combout\ : std_logic;
SIGNAL \Regs~331_combout\ : std_logic;
SIGNAL \WriteData[11]~input_o\ : std_logic;
SIGNAL \Regs~32_q\ : std_logic;
SIGNAL \Regs~96_q\ : std_logic;
SIGNAL \Regs~160_q\ : std_logic;
SIGNAL \Regs~224_q\ : std_logic;
SIGNAL \Regs~332_combout\ : std_logic;
SIGNAL \Regs~48_q\ : std_logic;
SIGNAL \Regs~112_q\ : std_logic;
SIGNAL \Regs~176_q\ : std_logic;
SIGNAL \Regs~240_q\ : std_logic;
SIGNAL \Regs~333_combout\ : std_logic;
SIGNAL \Regs~64_q\ : std_logic;
SIGNAL \Regs~128_q\ : std_logic;
SIGNAL \Regs~192_q\ : std_logic;
SIGNAL \Regs~256_q\ : std_logic;
SIGNAL \Regs~334_combout\ : std_logic;
SIGNAL \Regs~80_q\ : std_logic;
SIGNAL \Regs~144_q\ : std_logic;
SIGNAL \Regs~208_q\ : std_logic;
SIGNAL \Regs~272_q\ : std_logic;
SIGNAL \Regs~335_combout\ : std_logic;
SIGNAL \Regs~336_combout\ : std_logic;
SIGNAL \WriteData[12]~input_o\ : std_logic;
SIGNAL \Regs~33_q\ : std_logic;
SIGNAL \Regs~49_q\ : std_logic;
SIGNAL \Regs~65_q\ : std_logic;
SIGNAL \Regs~81_q\ : std_logic;
SIGNAL \Regs~337_combout\ : std_logic;
SIGNAL \Regs~97_q\ : std_logic;
SIGNAL \Regs~113_q\ : std_logic;
SIGNAL \Regs~129_q\ : std_logic;
SIGNAL \Regs~145_q\ : std_logic;
SIGNAL \Regs~338_combout\ : std_logic;
SIGNAL \Regs~161_q\ : std_logic;
SIGNAL \Regs~177_q\ : std_logic;
SIGNAL \Regs~193_q\ : std_logic;
SIGNAL \Regs~209_q\ : std_logic;
SIGNAL \Regs~339_combout\ : std_logic;
SIGNAL \Regs~225_q\ : std_logic;
SIGNAL \Regs~241_q\ : std_logic;
SIGNAL \Regs~257_q\ : std_logic;
SIGNAL \Regs~273_q\ : std_logic;
SIGNAL \Regs~340_combout\ : std_logic;
SIGNAL \Regs~341_combout\ : std_logic;
SIGNAL \WriteData[13]~input_o\ : std_logic;
SIGNAL \Regs~34_q\ : std_logic;
SIGNAL \Regs~98_q\ : std_logic;
SIGNAL \Regs~162_q\ : std_logic;
SIGNAL \Regs~226_q\ : std_logic;
SIGNAL \Regs~342_combout\ : std_logic;
SIGNAL \Regs~50_q\ : std_logic;
SIGNAL \Regs~114_q\ : std_logic;
SIGNAL \Regs~178_q\ : std_logic;
SIGNAL \Regs~242_q\ : std_logic;
SIGNAL \Regs~343_combout\ : std_logic;
SIGNAL \Regs~66_q\ : std_logic;
SIGNAL \Regs~130_q\ : std_logic;
SIGNAL \Regs~194_q\ : std_logic;
SIGNAL \Regs~258_q\ : std_logic;
SIGNAL \Regs~344_combout\ : std_logic;
SIGNAL \Regs~82_q\ : std_logic;
SIGNAL \Regs~146_q\ : std_logic;
SIGNAL \Regs~210_q\ : std_logic;
SIGNAL \Regs~274_q\ : std_logic;
SIGNAL \Regs~345_combout\ : std_logic;
SIGNAL \Regs~346_combout\ : std_logic;
SIGNAL \WriteData[14]~input_o\ : std_logic;
SIGNAL \Regs~35_q\ : std_logic;
SIGNAL \Regs~51_q\ : std_logic;
SIGNAL \Regs~67_q\ : std_logic;
SIGNAL \Regs~83_q\ : std_logic;
SIGNAL \Regs~347_combout\ : std_logic;
SIGNAL \Regs~99_q\ : std_logic;
SIGNAL \Regs~115_q\ : std_logic;
SIGNAL \Regs~131_q\ : std_logic;
SIGNAL \Regs~147_q\ : std_logic;
SIGNAL \Regs~348_combout\ : std_logic;
SIGNAL \Regs~163_q\ : std_logic;
SIGNAL \Regs~179_q\ : std_logic;
SIGNAL \Regs~195_q\ : std_logic;
SIGNAL \Regs~211_q\ : std_logic;
SIGNAL \Regs~349_combout\ : std_logic;
SIGNAL \Regs~227_q\ : std_logic;
SIGNAL \Regs~243_q\ : std_logic;
SIGNAL \Regs~259_q\ : std_logic;
SIGNAL \Regs~275_q\ : std_logic;
SIGNAL \Regs~350_combout\ : std_logic;
SIGNAL \Regs~351_combout\ : std_logic;
SIGNAL \WriteData[15]~input_o\ : std_logic;
SIGNAL \Regs~36_q\ : std_logic;
SIGNAL \Regs~100_q\ : std_logic;
SIGNAL \Regs~164_q\ : std_logic;
SIGNAL \Regs~228_q\ : std_logic;
SIGNAL \Regs~352_combout\ : std_logic;
SIGNAL \Regs~52_q\ : std_logic;
SIGNAL \Regs~116_q\ : std_logic;
SIGNAL \Regs~180_q\ : std_logic;
SIGNAL \Regs~244_q\ : std_logic;
SIGNAL \Regs~353_combout\ : std_logic;
SIGNAL \Regs~68_q\ : std_logic;
SIGNAL \Regs~132_q\ : std_logic;
SIGNAL \Regs~196_q\ : std_logic;
SIGNAL \Regs~260_q\ : std_logic;
SIGNAL \Regs~354_combout\ : std_logic;
SIGNAL \Regs~84_q\ : std_logic;
SIGNAL \Regs~148_q\ : std_logic;
SIGNAL \Regs~212_q\ : std_logic;
SIGNAL \Regs~276_q\ : std_logic;
SIGNAL \Regs~355_combout\ : std_logic;
SIGNAL \Regs~356_combout\ : std_logic;
SIGNAL \ReadReg2[0]~input_o\ : std_logic;
SIGNAL \ReadReg2[1]~input_o\ : std_logic;
SIGNAL \Regs~357_combout\ : std_logic;
SIGNAL \Regs~358_combout\ : std_logic;
SIGNAL \Regs~359_combout\ : std_logic;
SIGNAL \Regs~360_combout\ : std_logic;
SIGNAL \ReadReg2[2]~input_o\ : std_logic;
SIGNAL \ReadReg2[3]~input_o\ : std_logic;
SIGNAL \Regs~361_combout\ : std_logic;
SIGNAL \Regs~362_combout\ : std_logic;
SIGNAL \Regs~363_combout\ : std_logic;
SIGNAL \Regs~364_combout\ : std_logic;
SIGNAL \Regs~365_combout\ : std_logic;
SIGNAL \Regs~366_combout\ : std_logic;
SIGNAL \Regs~367_combout\ : std_logic;
SIGNAL \Regs~368_combout\ : std_logic;
SIGNAL \Regs~369_combout\ : std_logic;
SIGNAL \Regs~370_combout\ : std_logic;
SIGNAL \Regs~371_combout\ : std_logic;
SIGNAL \Regs~372_combout\ : std_logic;
SIGNAL \Regs~373_combout\ : std_logic;
SIGNAL \Regs~374_combout\ : std_logic;
SIGNAL \Regs~375_combout\ : std_logic;
SIGNAL \Regs~376_combout\ : std_logic;
SIGNAL \Regs~377_combout\ : std_logic;
SIGNAL \Regs~378_combout\ : std_logic;
SIGNAL \Regs~379_combout\ : std_logic;
SIGNAL \Regs~380_combout\ : std_logic;
SIGNAL \Regs~381_combout\ : std_logic;
SIGNAL \Regs~382_combout\ : std_logic;
SIGNAL \Regs~383_combout\ : std_logic;
SIGNAL \Regs~384_combout\ : std_logic;
SIGNAL \Regs~385_combout\ : std_logic;
SIGNAL \Regs~386_combout\ : std_logic;
SIGNAL \Regs~387_combout\ : std_logic;
SIGNAL \Regs~388_combout\ : std_logic;
SIGNAL \Regs~389_combout\ : std_logic;
SIGNAL \Regs~390_combout\ : std_logic;
SIGNAL \Regs~391_combout\ : std_logic;
SIGNAL \Regs~392_combout\ : std_logic;
SIGNAL \Regs~393_combout\ : std_logic;
SIGNAL \Regs~394_combout\ : std_logic;
SIGNAL \Regs~395_combout\ : std_logic;
SIGNAL \Regs~396_combout\ : std_logic;
SIGNAL \Regs~397_combout\ : std_logic;
SIGNAL \Regs~398_combout\ : std_logic;
SIGNAL \Regs~399_combout\ : std_logic;
SIGNAL \Regs~400_combout\ : std_logic;
SIGNAL \Regs~401_combout\ : std_logic;
SIGNAL \Regs~402_combout\ : std_logic;
SIGNAL \Regs~403_combout\ : std_logic;
SIGNAL \Regs~404_combout\ : std_logic;
SIGNAL \Regs~405_combout\ : std_logic;
SIGNAL \Regs~406_combout\ : std_logic;
SIGNAL \Regs~407_combout\ : std_logic;
SIGNAL \Regs~408_combout\ : std_logic;
SIGNAL \Regs~409_combout\ : std_logic;
SIGNAL \Regs~410_combout\ : std_logic;
SIGNAL \Regs~411_combout\ : std_logic;
SIGNAL \Regs~412_combout\ : std_logic;
SIGNAL \Regs~413_combout\ : std_logic;
SIGNAL \Regs~414_combout\ : std_logic;
SIGNAL \Regs~415_combout\ : std_logic;
SIGNAL \Regs~416_combout\ : std_logic;
SIGNAL \Regs~417_combout\ : std_logic;
SIGNAL \Regs~418_combout\ : std_logic;
SIGNAL \Regs~419_combout\ : std_logic;
SIGNAL \Regs~420_combout\ : std_logic;
SIGNAL \Regs~421_combout\ : std_logic;
SIGNAL \Regs~422_combout\ : std_logic;
SIGNAL \Regs~423_combout\ : std_logic;
SIGNAL \Regs~424_combout\ : std_logic;
SIGNAL \Regs~425_combout\ : std_logic;
SIGNAL \Regs~426_combout\ : std_logic;
SIGNAL \Regs~427_combout\ : std_logic;
SIGNAL \Regs~428_combout\ : std_logic;
SIGNAL \Regs~429_combout\ : std_logic;
SIGNAL \Regs~430_combout\ : std_logic;
SIGNAL \Regs~431_combout\ : std_logic;
SIGNAL \Regs~432_combout\ : std_logic;
SIGNAL \Regs~433_combout\ : std_logic;
SIGNAL \Regs~434_combout\ : std_logic;
SIGNAL \Regs~435_combout\ : std_logic;
SIGNAL \Regs~436_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~199_q\ : std_logic;
SIGNAL \ALT_INV_Regs~183_q\ : std_logic;
SIGNAL \ALT_INV_Regs~167_q\ : std_logic;
SIGNAL \ALT_INV_Regs~151_q\ : std_logic;
SIGNAL \ALT_INV_Regs~288_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~135_q\ : std_logic;
SIGNAL \ALT_INV_Regs~119_q\ : std_logic;
SIGNAL \ALT_INV_Regs~103_q\ : std_logic;
SIGNAL \ALT_INV_Regs~87_q\ : std_logic;
SIGNAL \ALT_INV_Regs~287_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~71_q\ : std_logic;
SIGNAL \ALT_INV_Regs~55_q\ : std_logic;
SIGNAL \ALT_INV_Regs~39_q\ : std_logic;
SIGNAL \ALT_INV_Regs~23_q\ : std_logic;
SIGNAL \ALT_INV_Regs~285_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~262_q\ : std_logic;
SIGNAL \ALT_INV_Regs~198_q\ : std_logic;
SIGNAL \ALT_INV_Regs~134_q\ : std_logic;
SIGNAL \ALT_INV_Regs~70_q\ : std_logic;
SIGNAL \ALT_INV_Regs~284_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~246_q\ : std_logic;
SIGNAL \ALT_INV_Regs~182_q\ : std_logic;
SIGNAL \ALT_INV_Regs~118_q\ : std_logic;
SIGNAL \ALT_INV_Regs~54_q\ : std_logic;
SIGNAL \ALT_INV_Regs~283_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~230_q\ : std_logic;
SIGNAL \ALT_INV_Regs~166_q\ : std_logic;
SIGNAL \ALT_INV_Regs~102_q\ : std_logic;
SIGNAL \ALT_INV_Regs~38_q\ : std_logic;
SIGNAL \ALT_INV_Regs~282_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~214_q\ : std_logic;
SIGNAL \ALT_INV_Regs~150_q\ : std_logic;
SIGNAL \ALT_INV_Regs~86_q\ : std_logic;
SIGNAL \ALT_INV_Regs~22_q\ : std_logic;
SIGNAL \ALT_INV_Regs~280_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~261_q\ : std_logic;
SIGNAL \ALT_INV_Regs~245_q\ : std_logic;
SIGNAL \ALT_INV_Regs~229_q\ : std_logic;
SIGNAL \ALT_INV_Regs~213_q\ : std_logic;
SIGNAL \ALT_INV_Regs~279_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~197_q\ : std_logic;
SIGNAL \ALT_INV_Regs~181_q\ : std_logic;
SIGNAL \ALT_INV_Regs~165_q\ : std_logic;
SIGNAL \ALT_INV_Regs~149_q\ : std_logic;
SIGNAL \ALT_INV_Regs~278_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~133_q\ : std_logic;
SIGNAL \ALT_INV_Regs~117_q\ : std_logic;
SIGNAL \ALT_INV_Regs~101_q\ : std_logic;
SIGNAL \ALT_INV_Regs~85_q\ : std_logic;
SIGNAL \ALT_INV_Regs~277_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~69_q\ : std_logic;
SIGNAL \ALT_INV_Regs~53_q\ : std_logic;
SIGNAL \ALT_INV_Regs~37_q\ : std_logic;
SIGNAL \ALT_INV_Regs~21_q\ : std_logic;
SIGNAL \ALT_INV_Regs~319_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~205_q\ : std_logic;
SIGNAL \ALT_INV_Regs~189_q\ : std_logic;
SIGNAL \ALT_INV_Regs~173_q\ : std_logic;
SIGNAL \ALT_INV_Regs~157_q\ : std_logic;
SIGNAL \ALT_INV_Regs~318_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~141_q\ : std_logic;
SIGNAL \ALT_INV_Regs~125_q\ : std_logic;
SIGNAL \ALT_INV_Regs~109_q\ : std_logic;
SIGNAL \ALT_INV_Regs~93_q\ : std_logic;
SIGNAL \ALT_INV_Regs~317_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~77_q\ : std_logic;
SIGNAL \ALT_INV_Regs~61_q\ : std_logic;
SIGNAL \ALT_INV_Regs~45_q\ : std_logic;
SIGNAL \ALT_INV_Regs~29_q\ : std_logic;
SIGNAL \ALT_INV_Regs~315_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~268_q\ : std_logic;
SIGNAL \ALT_INV_Regs~204_q\ : std_logic;
SIGNAL \ALT_INV_Regs~140_q\ : std_logic;
SIGNAL \ALT_INV_Regs~76_q\ : std_logic;
SIGNAL \ALT_INV_Regs~314_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~252_q\ : std_logic;
SIGNAL \ALT_INV_Regs~188_q\ : std_logic;
SIGNAL \ALT_INV_Regs~124_q\ : std_logic;
SIGNAL \ALT_INV_Regs~60_q\ : std_logic;
SIGNAL \ALT_INV_Regs~313_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~236_q\ : std_logic;
SIGNAL \ALT_INV_Regs~172_q\ : std_logic;
SIGNAL \ALT_INV_Regs~108_q\ : std_logic;
SIGNAL \ALT_INV_Regs~44_q\ : std_logic;
SIGNAL \ALT_INV_Regs~312_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~220_q\ : std_logic;
SIGNAL \ALT_INV_Regs~156_q\ : std_logic;
SIGNAL \ALT_INV_Regs~92_q\ : std_logic;
SIGNAL \ALT_INV_Regs~28_q\ : std_logic;
SIGNAL \ALT_INV_Regs~310_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~267_q\ : std_logic;
SIGNAL \ALT_INV_Regs~251_q\ : std_logic;
SIGNAL \ALT_INV_Regs~235_q\ : std_logic;
SIGNAL \ALT_INV_Regs~219_q\ : std_logic;
SIGNAL \ALT_INV_Regs~309_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~203_q\ : std_logic;
SIGNAL \ALT_INV_Regs~187_q\ : std_logic;
SIGNAL \ALT_INV_Regs~171_q\ : std_logic;
SIGNAL \ALT_INV_Regs~155_q\ : std_logic;
SIGNAL \ALT_INV_Regs~308_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~139_q\ : std_logic;
SIGNAL \ALT_INV_Regs~123_q\ : std_logic;
SIGNAL \ALT_INV_Regs~107_q\ : std_logic;
SIGNAL \ALT_INV_Regs~91_q\ : std_logic;
SIGNAL \ALT_INV_Regs~307_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~75_q\ : std_logic;
SIGNAL \ALT_INV_Regs~59_q\ : std_logic;
SIGNAL \ALT_INV_Regs~43_q\ : std_logic;
SIGNAL \ALT_INV_Regs~27_q\ : std_logic;
SIGNAL \ALT_INV_Regs~305_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~266_q\ : std_logic;
SIGNAL \ALT_INV_Regs~202_q\ : std_logic;
SIGNAL \ALT_INV_Regs~138_q\ : std_logic;
SIGNAL \ALT_INV_Regs~74_q\ : std_logic;
SIGNAL \ALT_INV_Regs~304_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~250_q\ : std_logic;
SIGNAL \ALT_INV_Regs~186_q\ : std_logic;
SIGNAL \ALT_INV_Regs~122_q\ : std_logic;
SIGNAL \ALT_INV_Regs~58_q\ : std_logic;
SIGNAL \ALT_INV_Regs~303_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~234_q\ : std_logic;
SIGNAL \ALT_INV_Regs~170_q\ : std_logic;
SIGNAL \ALT_INV_Regs~106_q\ : std_logic;
SIGNAL \ALT_INV_Regs~42_q\ : std_logic;
SIGNAL \ALT_INV_Regs~302_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~218_q\ : std_logic;
SIGNAL \ALT_INV_Regs~154_q\ : std_logic;
SIGNAL \ALT_INV_Regs~90_q\ : std_logic;
SIGNAL \ALT_INV_Regs~26_q\ : std_logic;
SIGNAL \ALT_INV_Regs~300_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~265_q\ : std_logic;
SIGNAL \ALT_INV_Regs~249_q\ : std_logic;
SIGNAL \ALT_INV_Regs~233_q\ : std_logic;
SIGNAL \ALT_INV_Regs~217_q\ : std_logic;
SIGNAL \ALT_INV_Regs~299_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~201_q\ : std_logic;
SIGNAL \ALT_INV_Regs~185_q\ : std_logic;
SIGNAL \ALT_INV_Regs~169_q\ : std_logic;
SIGNAL \ALT_INV_Regs~153_q\ : std_logic;
SIGNAL \ALT_INV_Regs~298_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~137_q\ : std_logic;
SIGNAL \ALT_INV_Regs~121_q\ : std_logic;
SIGNAL \ALT_INV_Regs~105_q\ : std_logic;
SIGNAL \ALT_INV_Regs~89_q\ : std_logic;
SIGNAL \ALT_INV_Regs~297_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~73_q\ : std_logic;
SIGNAL \ALT_INV_Regs~57_q\ : std_logic;
SIGNAL \ALT_INV_Regs~41_q\ : std_logic;
SIGNAL \ALT_INV_Regs~25_q\ : std_logic;
SIGNAL \ALT_INV_Regs~295_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~264_q\ : std_logic;
SIGNAL \ALT_INV_Regs~200_q\ : std_logic;
SIGNAL \ALT_INV_Regs~136_q\ : std_logic;
SIGNAL \ALT_INV_Regs~72_q\ : std_logic;
SIGNAL \ALT_INV_Regs~294_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~248_q\ : std_logic;
SIGNAL \ALT_INV_Regs~184_q\ : std_logic;
SIGNAL \ALT_INV_Regs~120_q\ : std_logic;
SIGNAL \ALT_INV_Regs~56_q\ : std_logic;
SIGNAL \ALT_INV_Regs~293_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~232_q\ : std_logic;
SIGNAL \ALT_INV_Regs~168_q\ : std_logic;
SIGNAL \ALT_INV_Regs~104_q\ : std_logic;
SIGNAL \ALT_INV_Regs~40_q\ : std_logic;
SIGNAL \ALT_INV_Regs~292_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~216_q\ : std_logic;
SIGNAL \ALT_INV_Regs~152_q\ : std_logic;
SIGNAL \ALT_INV_Regs~88_q\ : std_logic;
SIGNAL \ALT_INV_Regs~24_q\ : std_logic;
SIGNAL \ALT_INV_Regs~290_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~263_q\ : std_logic;
SIGNAL \ALT_INV_Regs~247_q\ : std_logic;
SIGNAL \ALT_INV_Regs~231_q\ : std_logic;
SIGNAL \ALT_INV_Regs~215_q\ : std_logic;
SIGNAL \ALT_INV_Regs~289_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~227_q\ : std_logic;
SIGNAL \ALT_INV_Regs~349_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~211_q\ : std_logic;
SIGNAL \ALT_INV_Regs~195_q\ : std_logic;
SIGNAL \ALT_INV_Regs~179_q\ : std_logic;
SIGNAL \ALT_INV_Regs~163_q\ : std_logic;
SIGNAL \ALT_INV_Regs~348_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~147_q\ : std_logic;
SIGNAL \ALT_INV_Regs~131_q\ : std_logic;
SIGNAL \ALT_INV_Regs~115_q\ : std_logic;
SIGNAL \ALT_INV_Regs~99_q\ : std_logic;
SIGNAL \ALT_INV_Regs~347_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~83_q\ : std_logic;
SIGNAL \ALT_INV_Regs~67_q\ : std_logic;
SIGNAL \ALT_INV_Regs~51_q\ : std_logic;
SIGNAL \ALT_INV_Regs~35_q\ : std_logic;
SIGNAL \ALT_INV_Regs~345_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~274_q\ : std_logic;
SIGNAL \ALT_INV_Regs~210_q\ : std_logic;
SIGNAL \ALT_INV_Regs~146_q\ : std_logic;
SIGNAL \ALT_INV_Regs~82_q\ : std_logic;
SIGNAL \ALT_INV_Regs~344_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~258_q\ : std_logic;
SIGNAL \ALT_INV_Regs~194_q\ : std_logic;
SIGNAL \ALT_INV_Regs~130_q\ : std_logic;
SIGNAL \ALT_INV_Regs~66_q\ : std_logic;
SIGNAL \ALT_INV_Regs~343_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~242_q\ : std_logic;
SIGNAL \ALT_INV_Regs~178_q\ : std_logic;
SIGNAL \ALT_INV_Regs~114_q\ : std_logic;
SIGNAL \ALT_INV_Regs~50_q\ : std_logic;
SIGNAL \ALT_INV_Regs~342_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~226_q\ : std_logic;
SIGNAL \ALT_INV_Regs~162_q\ : std_logic;
SIGNAL \ALT_INV_Regs~98_q\ : std_logic;
SIGNAL \ALT_INV_Regs~34_q\ : std_logic;
SIGNAL \ALT_INV_Regs~340_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~273_q\ : std_logic;
SIGNAL \ALT_INV_Regs~257_q\ : std_logic;
SIGNAL \ALT_INV_Regs~241_q\ : std_logic;
SIGNAL \ALT_INV_Regs~225_q\ : std_logic;
SIGNAL \ALT_INV_Regs~339_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~209_q\ : std_logic;
SIGNAL \ALT_INV_Regs~193_q\ : std_logic;
SIGNAL \ALT_INV_Regs~177_q\ : std_logic;
SIGNAL \ALT_INV_Regs~161_q\ : std_logic;
SIGNAL \ALT_INV_Regs~338_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~145_q\ : std_logic;
SIGNAL \ALT_INV_Regs~129_q\ : std_logic;
SIGNAL \ALT_INV_Regs~113_q\ : std_logic;
SIGNAL \ALT_INV_Regs~97_q\ : std_logic;
SIGNAL \ALT_INV_Regs~337_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~81_q\ : std_logic;
SIGNAL \ALT_INV_Regs~65_q\ : std_logic;
SIGNAL \ALT_INV_Regs~49_q\ : std_logic;
SIGNAL \ALT_INV_Regs~33_q\ : std_logic;
SIGNAL \ALT_INV_Regs~335_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~272_q\ : std_logic;
SIGNAL \ALT_INV_Regs~208_q\ : std_logic;
SIGNAL \ALT_INV_Regs~144_q\ : std_logic;
SIGNAL \ALT_INV_Regs~80_q\ : std_logic;
SIGNAL \ALT_INV_Regs~334_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~256_q\ : std_logic;
SIGNAL \ALT_INV_Regs~192_q\ : std_logic;
SIGNAL \ALT_INV_Regs~128_q\ : std_logic;
SIGNAL \ALT_INV_Regs~64_q\ : std_logic;
SIGNAL \ALT_INV_Regs~333_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~240_q\ : std_logic;
SIGNAL \ALT_INV_Regs~176_q\ : std_logic;
SIGNAL \ALT_INV_Regs~112_q\ : std_logic;
SIGNAL \ALT_INV_Regs~48_q\ : std_logic;
SIGNAL \ALT_INV_Regs~332_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~224_q\ : std_logic;
SIGNAL \ALT_INV_Regs~160_q\ : std_logic;
SIGNAL \ALT_INV_Regs~96_q\ : std_logic;
SIGNAL \ALT_INV_Regs~32_q\ : std_logic;
SIGNAL \ALT_INV_Regs~330_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~271_q\ : std_logic;
SIGNAL \ALT_INV_Regs~255_q\ : std_logic;
SIGNAL \ALT_INV_Regs~239_q\ : std_logic;
SIGNAL \ALT_INV_Regs~223_q\ : std_logic;
SIGNAL \ALT_INV_Regs~329_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~207_q\ : std_logic;
SIGNAL \ALT_INV_Regs~191_q\ : std_logic;
SIGNAL \ALT_INV_Regs~175_q\ : std_logic;
SIGNAL \ALT_INV_Regs~159_q\ : std_logic;
SIGNAL \ALT_INV_Regs~328_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~143_q\ : std_logic;
SIGNAL \ALT_INV_Regs~127_q\ : std_logic;
SIGNAL \ALT_INV_Regs~111_q\ : std_logic;
SIGNAL \ALT_INV_Regs~95_q\ : std_logic;
SIGNAL \ALT_INV_Regs~327_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~79_q\ : std_logic;
SIGNAL \ALT_INV_Regs~63_q\ : std_logic;
SIGNAL \ALT_INV_Regs~47_q\ : std_logic;
SIGNAL \ALT_INV_Regs~31_q\ : std_logic;
SIGNAL \ALT_INV_Regs~325_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~270_q\ : std_logic;
SIGNAL \ALT_INV_Regs~206_q\ : std_logic;
SIGNAL \ALT_INV_Regs~142_q\ : std_logic;
SIGNAL \ALT_INV_Regs~78_q\ : std_logic;
SIGNAL \ALT_INV_Regs~324_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~254_q\ : std_logic;
SIGNAL \ALT_INV_Regs~190_q\ : std_logic;
SIGNAL \ALT_INV_Regs~126_q\ : std_logic;
SIGNAL \ALT_INV_Regs~62_q\ : std_logic;
SIGNAL \ALT_INV_Regs~323_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~238_q\ : std_logic;
SIGNAL \ALT_INV_Regs~174_q\ : std_logic;
SIGNAL \ALT_INV_Regs~110_q\ : std_logic;
SIGNAL \ALT_INV_Regs~46_q\ : std_logic;
SIGNAL \ALT_INV_Regs~322_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~222_q\ : std_logic;
SIGNAL \ALT_INV_Regs~158_q\ : std_logic;
SIGNAL \ALT_INV_Regs~94_q\ : std_logic;
SIGNAL \ALT_INV_Regs~30_q\ : std_logic;
SIGNAL \ALT_INV_Regs~320_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~269_q\ : std_logic;
SIGNAL \ALT_INV_Regs~253_q\ : std_logic;
SIGNAL \ALT_INV_Regs~237_q\ : std_logic;
SIGNAL \ALT_INV_Regs~221_q\ : std_logic;
SIGNAL \ALT_INV_EndRegWrite[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_EndRegWrite[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_EndRegWrite[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_EndRegWrite[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ReadReg2[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_ReadReg2[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_ReadReg2[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ReadReg2[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ReadReg1[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_ReadReg1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_ReadReg1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ReadReg1[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Regs~435_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~434_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~433_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~432_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~430_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~429_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~428_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~427_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~425_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~424_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~423_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~422_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~420_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~419_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~418_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~417_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~415_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~414_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~413_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~412_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~410_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~409_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~408_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~407_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~405_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~404_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~403_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~402_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~400_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~399_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~398_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~397_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~395_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~394_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~393_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~392_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~390_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~389_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~388_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~387_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~385_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~384_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~383_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~382_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~380_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~379_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~378_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~377_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~375_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~374_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~373_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~372_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~370_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~369_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~368_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~367_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~365_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~364_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~363_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~362_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~360_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~359_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~358_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~357_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~355_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~276_q\ : std_logic;
SIGNAL \ALT_INV_Regs~212_q\ : std_logic;
SIGNAL \ALT_INV_Regs~148_q\ : std_logic;
SIGNAL \ALT_INV_Regs~84_q\ : std_logic;
SIGNAL \ALT_INV_Regs~354_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~260_q\ : std_logic;
SIGNAL \ALT_INV_Regs~196_q\ : std_logic;
SIGNAL \ALT_INV_Regs~132_q\ : std_logic;
SIGNAL \ALT_INV_Regs~68_q\ : std_logic;
SIGNAL \ALT_INV_Regs~353_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~244_q\ : std_logic;
SIGNAL \ALT_INV_Regs~180_q\ : std_logic;
SIGNAL \ALT_INV_Regs~116_q\ : std_logic;
SIGNAL \ALT_INV_Regs~52_q\ : std_logic;
SIGNAL \ALT_INV_Regs~352_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~228_q\ : std_logic;
SIGNAL \ALT_INV_Regs~164_q\ : std_logic;
SIGNAL \ALT_INV_Regs~100_q\ : std_logic;
SIGNAL \ALT_INV_Regs~36_q\ : std_logic;
SIGNAL \ALT_INV_Regs~350_combout\ : std_logic;
SIGNAL \ALT_INV_Regs~275_q\ : std_logic;
SIGNAL \ALT_INV_Regs~259_q\ : std_logic;
SIGNAL \ALT_INV_Regs~243_q\ : std_logic;

BEGIN

ww_RegWrite <= RegWrite;
RegA <= ww_RegA;
RegB <= ww_RegB;
ww_WriteData <= WriteData;
ww_EndRegWrite <= EndRegWrite;
ww_ReadReg1 <= ReadReg1;
ww_ReadReg2 <= ReadReg2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Regs~199_q\ <= NOT \Regs~199_q\;
\ALT_INV_Regs~183_q\ <= NOT \Regs~183_q\;
\ALT_INV_Regs~167_q\ <= NOT \Regs~167_q\;
\ALT_INV_Regs~151_q\ <= NOT \Regs~151_q\;
\ALT_INV_Regs~288_combout\ <= NOT \Regs~288_combout\;
\ALT_INV_Regs~135_q\ <= NOT \Regs~135_q\;
\ALT_INV_Regs~119_q\ <= NOT \Regs~119_q\;
\ALT_INV_Regs~103_q\ <= NOT \Regs~103_q\;
\ALT_INV_Regs~87_q\ <= NOT \Regs~87_q\;
\ALT_INV_Regs~287_combout\ <= NOT \Regs~287_combout\;
\ALT_INV_Regs~71_q\ <= NOT \Regs~71_q\;
\ALT_INV_Regs~55_q\ <= NOT \Regs~55_q\;
\ALT_INV_Regs~39_q\ <= NOT \Regs~39_q\;
\ALT_INV_Regs~23_q\ <= NOT \Regs~23_q\;
\ALT_INV_Regs~285_combout\ <= NOT \Regs~285_combout\;
\ALT_INV_Regs~262_q\ <= NOT \Regs~262_q\;
\ALT_INV_Regs~198_q\ <= NOT \Regs~198_q\;
\ALT_INV_Regs~134_q\ <= NOT \Regs~134_q\;
\ALT_INV_Regs~70_q\ <= NOT \Regs~70_q\;
\ALT_INV_Regs~284_combout\ <= NOT \Regs~284_combout\;
\ALT_INV_Regs~246_q\ <= NOT \Regs~246_q\;
\ALT_INV_Regs~182_q\ <= NOT \Regs~182_q\;
\ALT_INV_Regs~118_q\ <= NOT \Regs~118_q\;
\ALT_INV_Regs~54_q\ <= NOT \Regs~54_q\;
\ALT_INV_Regs~283_combout\ <= NOT \Regs~283_combout\;
\ALT_INV_Regs~230_q\ <= NOT \Regs~230_q\;
\ALT_INV_Regs~166_q\ <= NOT \Regs~166_q\;
\ALT_INV_Regs~102_q\ <= NOT \Regs~102_q\;
\ALT_INV_Regs~38_q\ <= NOT \Regs~38_q\;
\ALT_INV_Regs~282_combout\ <= NOT \Regs~282_combout\;
\ALT_INV_Regs~214_q\ <= NOT \Regs~214_q\;
\ALT_INV_Regs~150_q\ <= NOT \Regs~150_q\;
\ALT_INV_Regs~86_q\ <= NOT \Regs~86_q\;
\ALT_INV_Regs~22_q\ <= NOT \Regs~22_q\;
\ALT_INV_Regs~280_combout\ <= NOT \Regs~280_combout\;
\ALT_INV_Regs~261_q\ <= NOT \Regs~261_q\;
\ALT_INV_Regs~245_q\ <= NOT \Regs~245_q\;
\ALT_INV_Regs~229_q\ <= NOT \Regs~229_q\;
\ALT_INV_Regs~213_q\ <= NOT \Regs~213_q\;
\ALT_INV_Regs~279_combout\ <= NOT \Regs~279_combout\;
\ALT_INV_Regs~197_q\ <= NOT \Regs~197_q\;
\ALT_INV_Regs~181_q\ <= NOT \Regs~181_q\;
\ALT_INV_Regs~165_q\ <= NOT \Regs~165_q\;
\ALT_INV_Regs~149_q\ <= NOT \Regs~149_q\;
\ALT_INV_Regs~278_combout\ <= NOT \Regs~278_combout\;
\ALT_INV_Regs~133_q\ <= NOT \Regs~133_q\;
\ALT_INV_Regs~117_q\ <= NOT \Regs~117_q\;
\ALT_INV_Regs~101_q\ <= NOT \Regs~101_q\;
\ALT_INV_Regs~85_q\ <= NOT \Regs~85_q\;
\ALT_INV_Regs~277_combout\ <= NOT \Regs~277_combout\;
\ALT_INV_Regs~69_q\ <= NOT \Regs~69_q\;
\ALT_INV_Regs~53_q\ <= NOT \Regs~53_q\;
\ALT_INV_Regs~37_q\ <= NOT \Regs~37_q\;
\ALT_INV_Regs~21_q\ <= NOT \Regs~21_q\;
\ALT_INV_Regs~319_combout\ <= NOT \Regs~319_combout\;
\ALT_INV_Regs~205_q\ <= NOT \Regs~205_q\;
\ALT_INV_Regs~189_q\ <= NOT \Regs~189_q\;
\ALT_INV_Regs~173_q\ <= NOT \Regs~173_q\;
\ALT_INV_Regs~157_q\ <= NOT \Regs~157_q\;
\ALT_INV_Regs~318_combout\ <= NOT \Regs~318_combout\;
\ALT_INV_Regs~141_q\ <= NOT \Regs~141_q\;
\ALT_INV_Regs~125_q\ <= NOT \Regs~125_q\;
\ALT_INV_Regs~109_q\ <= NOT \Regs~109_q\;
\ALT_INV_Regs~93_q\ <= NOT \Regs~93_q\;
\ALT_INV_Regs~317_combout\ <= NOT \Regs~317_combout\;
\ALT_INV_Regs~77_q\ <= NOT \Regs~77_q\;
\ALT_INV_Regs~61_q\ <= NOT \Regs~61_q\;
\ALT_INV_Regs~45_q\ <= NOT \Regs~45_q\;
\ALT_INV_Regs~29_q\ <= NOT \Regs~29_q\;
\ALT_INV_Regs~315_combout\ <= NOT \Regs~315_combout\;
\ALT_INV_Regs~268_q\ <= NOT \Regs~268_q\;
\ALT_INV_Regs~204_q\ <= NOT \Regs~204_q\;
\ALT_INV_Regs~140_q\ <= NOT \Regs~140_q\;
\ALT_INV_Regs~76_q\ <= NOT \Regs~76_q\;
\ALT_INV_Regs~314_combout\ <= NOT \Regs~314_combout\;
\ALT_INV_Regs~252_q\ <= NOT \Regs~252_q\;
\ALT_INV_Regs~188_q\ <= NOT \Regs~188_q\;
\ALT_INV_Regs~124_q\ <= NOT \Regs~124_q\;
\ALT_INV_Regs~60_q\ <= NOT \Regs~60_q\;
\ALT_INV_Regs~313_combout\ <= NOT \Regs~313_combout\;
\ALT_INV_Regs~236_q\ <= NOT \Regs~236_q\;
\ALT_INV_Regs~172_q\ <= NOT \Regs~172_q\;
\ALT_INV_Regs~108_q\ <= NOT \Regs~108_q\;
\ALT_INV_Regs~44_q\ <= NOT \Regs~44_q\;
\ALT_INV_Regs~312_combout\ <= NOT \Regs~312_combout\;
\ALT_INV_Regs~220_q\ <= NOT \Regs~220_q\;
\ALT_INV_Regs~156_q\ <= NOT \Regs~156_q\;
\ALT_INV_Regs~92_q\ <= NOT \Regs~92_q\;
\ALT_INV_Regs~28_q\ <= NOT \Regs~28_q\;
\ALT_INV_Regs~310_combout\ <= NOT \Regs~310_combout\;
\ALT_INV_Regs~267_q\ <= NOT \Regs~267_q\;
\ALT_INV_Regs~251_q\ <= NOT \Regs~251_q\;
\ALT_INV_Regs~235_q\ <= NOT \Regs~235_q\;
\ALT_INV_Regs~219_q\ <= NOT \Regs~219_q\;
\ALT_INV_Regs~309_combout\ <= NOT \Regs~309_combout\;
\ALT_INV_Regs~203_q\ <= NOT \Regs~203_q\;
\ALT_INV_Regs~187_q\ <= NOT \Regs~187_q\;
\ALT_INV_Regs~171_q\ <= NOT \Regs~171_q\;
\ALT_INV_Regs~155_q\ <= NOT \Regs~155_q\;
\ALT_INV_Regs~308_combout\ <= NOT \Regs~308_combout\;
\ALT_INV_Regs~139_q\ <= NOT \Regs~139_q\;
\ALT_INV_Regs~123_q\ <= NOT \Regs~123_q\;
\ALT_INV_Regs~107_q\ <= NOT \Regs~107_q\;
\ALT_INV_Regs~91_q\ <= NOT \Regs~91_q\;
\ALT_INV_Regs~307_combout\ <= NOT \Regs~307_combout\;
\ALT_INV_Regs~75_q\ <= NOT \Regs~75_q\;
\ALT_INV_Regs~59_q\ <= NOT \Regs~59_q\;
\ALT_INV_Regs~43_q\ <= NOT \Regs~43_q\;
\ALT_INV_Regs~27_q\ <= NOT \Regs~27_q\;
\ALT_INV_Regs~305_combout\ <= NOT \Regs~305_combout\;
\ALT_INV_Regs~266_q\ <= NOT \Regs~266_q\;
\ALT_INV_Regs~202_q\ <= NOT \Regs~202_q\;
\ALT_INV_Regs~138_q\ <= NOT \Regs~138_q\;
\ALT_INV_Regs~74_q\ <= NOT \Regs~74_q\;
\ALT_INV_Regs~304_combout\ <= NOT \Regs~304_combout\;
\ALT_INV_Regs~250_q\ <= NOT \Regs~250_q\;
\ALT_INV_Regs~186_q\ <= NOT \Regs~186_q\;
\ALT_INV_Regs~122_q\ <= NOT \Regs~122_q\;
\ALT_INV_Regs~58_q\ <= NOT \Regs~58_q\;
\ALT_INV_Regs~303_combout\ <= NOT \Regs~303_combout\;
\ALT_INV_Regs~234_q\ <= NOT \Regs~234_q\;
\ALT_INV_Regs~170_q\ <= NOT \Regs~170_q\;
\ALT_INV_Regs~106_q\ <= NOT \Regs~106_q\;
\ALT_INV_Regs~42_q\ <= NOT \Regs~42_q\;
\ALT_INV_Regs~302_combout\ <= NOT \Regs~302_combout\;
\ALT_INV_Regs~218_q\ <= NOT \Regs~218_q\;
\ALT_INV_Regs~154_q\ <= NOT \Regs~154_q\;
\ALT_INV_Regs~90_q\ <= NOT \Regs~90_q\;
\ALT_INV_Regs~26_q\ <= NOT \Regs~26_q\;
\ALT_INV_Regs~300_combout\ <= NOT \Regs~300_combout\;
\ALT_INV_Regs~265_q\ <= NOT \Regs~265_q\;
\ALT_INV_Regs~249_q\ <= NOT \Regs~249_q\;
\ALT_INV_Regs~233_q\ <= NOT \Regs~233_q\;
\ALT_INV_Regs~217_q\ <= NOT \Regs~217_q\;
\ALT_INV_Regs~299_combout\ <= NOT \Regs~299_combout\;
\ALT_INV_Regs~201_q\ <= NOT \Regs~201_q\;
\ALT_INV_Regs~185_q\ <= NOT \Regs~185_q\;
\ALT_INV_Regs~169_q\ <= NOT \Regs~169_q\;
\ALT_INV_Regs~153_q\ <= NOT \Regs~153_q\;
\ALT_INV_Regs~298_combout\ <= NOT \Regs~298_combout\;
\ALT_INV_Regs~137_q\ <= NOT \Regs~137_q\;
\ALT_INV_Regs~121_q\ <= NOT \Regs~121_q\;
\ALT_INV_Regs~105_q\ <= NOT \Regs~105_q\;
\ALT_INV_Regs~89_q\ <= NOT \Regs~89_q\;
\ALT_INV_Regs~297_combout\ <= NOT \Regs~297_combout\;
\ALT_INV_Regs~73_q\ <= NOT \Regs~73_q\;
\ALT_INV_Regs~57_q\ <= NOT \Regs~57_q\;
\ALT_INV_Regs~41_q\ <= NOT \Regs~41_q\;
\ALT_INV_Regs~25_q\ <= NOT \Regs~25_q\;
\ALT_INV_Regs~295_combout\ <= NOT \Regs~295_combout\;
\ALT_INV_Regs~264_q\ <= NOT \Regs~264_q\;
\ALT_INV_Regs~200_q\ <= NOT \Regs~200_q\;
\ALT_INV_Regs~136_q\ <= NOT \Regs~136_q\;
\ALT_INV_Regs~72_q\ <= NOT \Regs~72_q\;
\ALT_INV_Regs~294_combout\ <= NOT \Regs~294_combout\;
\ALT_INV_Regs~248_q\ <= NOT \Regs~248_q\;
\ALT_INV_Regs~184_q\ <= NOT \Regs~184_q\;
\ALT_INV_Regs~120_q\ <= NOT \Regs~120_q\;
\ALT_INV_Regs~56_q\ <= NOT \Regs~56_q\;
\ALT_INV_Regs~293_combout\ <= NOT \Regs~293_combout\;
\ALT_INV_Regs~232_q\ <= NOT \Regs~232_q\;
\ALT_INV_Regs~168_q\ <= NOT \Regs~168_q\;
\ALT_INV_Regs~104_q\ <= NOT \Regs~104_q\;
\ALT_INV_Regs~40_q\ <= NOT \Regs~40_q\;
\ALT_INV_Regs~292_combout\ <= NOT \Regs~292_combout\;
\ALT_INV_Regs~216_q\ <= NOT \Regs~216_q\;
\ALT_INV_Regs~152_q\ <= NOT \Regs~152_q\;
\ALT_INV_Regs~88_q\ <= NOT \Regs~88_q\;
\ALT_INV_Regs~24_q\ <= NOT \Regs~24_q\;
\ALT_INV_Regs~290_combout\ <= NOT \Regs~290_combout\;
\ALT_INV_Regs~263_q\ <= NOT \Regs~263_q\;
\ALT_INV_Regs~247_q\ <= NOT \Regs~247_q\;
\ALT_INV_Regs~231_q\ <= NOT \Regs~231_q\;
\ALT_INV_Regs~215_q\ <= NOT \Regs~215_q\;
\ALT_INV_Regs~289_combout\ <= NOT \Regs~289_combout\;
\ALT_INV_Regs~227_q\ <= NOT \Regs~227_q\;
\ALT_INV_Regs~349_combout\ <= NOT \Regs~349_combout\;
\ALT_INV_Regs~211_q\ <= NOT \Regs~211_q\;
\ALT_INV_Regs~195_q\ <= NOT \Regs~195_q\;
\ALT_INV_Regs~179_q\ <= NOT \Regs~179_q\;
\ALT_INV_Regs~163_q\ <= NOT \Regs~163_q\;
\ALT_INV_Regs~348_combout\ <= NOT \Regs~348_combout\;
\ALT_INV_Regs~147_q\ <= NOT \Regs~147_q\;
\ALT_INV_Regs~131_q\ <= NOT \Regs~131_q\;
\ALT_INV_Regs~115_q\ <= NOT \Regs~115_q\;
\ALT_INV_Regs~99_q\ <= NOT \Regs~99_q\;
\ALT_INV_Regs~347_combout\ <= NOT \Regs~347_combout\;
\ALT_INV_Regs~83_q\ <= NOT \Regs~83_q\;
\ALT_INV_Regs~67_q\ <= NOT \Regs~67_q\;
\ALT_INV_Regs~51_q\ <= NOT \Regs~51_q\;
\ALT_INV_Regs~35_q\ <= NOT \Regs~35_q\;
\ALT_INV_Regs~345_combout\ <= NOT \Regs~345_combout\;
\ALT_INV_Regs~274_q\ <= NOT \Regs~274_q\;
\ALT_INV_Regs~210_q\ <= NOT \Regs~210_q\;
\ALT_INV_Regs~146_q\ <= NOT \Regs~146_q\;
\ALT_INV_Regs~82_q\ <= NOT \Regs~82_q\;
\ALT_INV_Regs~344_combout\ <= NOT \Regs~344_combout\;
\ALT_INV_Regs~258_q\ <= NOT \Regs~258_q\;
\ALT_INV_Regs~194_q\ <= NOT \Regs~194_q\;
\ALT_INV_Regs~130_q\ <= NOT \Regs~130_q\;
\ALT_INV_Regs~66_q\ <= NOT \Regs~66_q\;
\ALT_INV_Regs~343_combout\ <= NOT \Regs~343_combout\;
\ALT_INV_Regs~242_q\ <= NOT \Regs~242_q\;
\ALT_INV_Regs~178_q\ <= NOT \Regs~178_q\;
\ALT_INV_Regs~114_q\ <= NOT \Regs~114_q\;
\ALT_INV_Regs~50_q\ <= NOT \Regs~50_q\;
\ALT_INV_Regs~342_combout\ <= NOT \Regs~342_combout\;
\ALT_INV_Regs~226_q\ <= NOT \Regs~226_q\;
\ALT_INV_Regs~162_q\ <= NOT \Regs~162_q\;
\ALT_INV_Regs~98_q\ <= NOT \Regs~98_q\;
\ALT_INV_Regs~34_q\ <= NOT \Regs~34_q\;
\ALT_INV_Regs~340_combout\ <= NOT \Regs~340_combout\;
\ALT_INV_Regs~273_q\ <= NOT \Regs~273_q\;
\ALT_INV_Regs~257_q\ <= NOT \Regs~257_q\;
\ALT_INV_Regs~241_q\ <= NOT \Regs~241_q\;
\ALT_INV_Regs~225_q\ <= NOT \Regs~225_q\;
\ALT_INV_Regs~339_combout\ <= NOT \Regs~339_combout\;
\ALT_INV_Regs~209_q\ <= NOT \Regs~209_q\;
\ALT_INV_Regs~193_q\ <= NOT \Regs~193_q\;
\ALT_INV_Regs~177_q\ <= NOT \Regs~177_q\;
\ALT_INV_Regs~161_q\ <= NOT \Regs~161_q\;
\ALT_INV_Regs~338_combout\ <= NOT \Regs~338_combout\;
\ALT_INV_Regs~145_q\ <= NOT \Regs~145_q\;
\ALT_INV_Regs~129_q\ <= NOT \Regs~129_q\;
\ALT_INV_Regs~113_q\ <= NOT \Regs~113_q\;
\ALT_INV_Regs~97_q\ <= NOT \Regs~97_q\;
\ALT_INV_Regs~337_combout\ <= NOT \Regs~337_combout\;
\ALT_INV_Regs~81_q\ <= NOT \Regs~81_q\;
\ALT_INV_Regs~65_q\ <= NOT \Regs~65_q\;
\ALT_INV_Regs~49_q\ <= NOT \Regs~49_q\;
\ALT_INV_Regs~33_q\ <= NOT \Regs~33_q\;
\ALT_INV_Regs~335_combout\ <= NOT \Regs~335_combout\;
\ALT_INV_Regs~272_q\ <= NOT \Regs~272_q\;
\ALT_INV_Regs~208_q\ <= NOT \Regs~208_q\;
\ALT_INV_Regs~144_q\ <= NOT \Regs~144_q\;
\ALT_INV_Regs~80_q\ <= NOT \Regs~80_q\;
\ALT_INV_Regs~334_combout\ <= NOT \Regs~334_combout\;
\ALT_INV_Regs~256_q\ <= NOT \Regs~256_q\;
\ALT_INV_Regs~192_q\ <= NOT \Regs~192_q\;
\ALT_INV_Regs~128_q\ <= NOT \Regs~128_q\;
\ALT_INV_Regs~64_q\ <= NOT \Regs~64_q\;
\ALT_INV_Regs~333_combout\ <= NOT \Regs~333_combout\;
\ALT_INV_Regs~240_q\ <= NOT \Regs~240_q\;
\ALT_INV_Regs~176_q\ <= NOT \Regs~176_q\;
\ALT_INV_Regs~112_q\ <= NOT \Regs~112_q\;
\ALT_INV_Regs~48_q\ <= NOT \Regs~48_q\;
\ALT_INV_Regs~332_combout\ <= NOT \Regs~332_combout\;
\ALT_INV_Regs~224_q\ <= NOT \Regs~224_q\;
\ALT_INV_Regs~160_q\ <= NOT \Regs~160_q\;
\ALT_INV_Regs~96_q\ <= NOT \Regs~96_q\;
\ALT_INV_Regs~32_q\ <= NOT \Regs~32_q\;
\ALT_INV_Regs~330_combout\ <= NOT \Regs~330_combout\;
\ALT_INV_Regs~271_q\ <= NOT \Regs~271_q\;
\ALT_INV_Regs~255_q\ <= NOT \Regs~255_q\;
\ALT_INV_Regs~239_q\ <= NOT \Regs~239_q\;
\ALT_INV_Regs~223_q\ <= NOT \Regs~223_q\;
\ALT_INV_Regs~329_combout\ <= NOT \Regs~329_combout\;
\ALT_INV_Regs~207_q\ <= NOT \Regs~207_q\;
\ALT_INV_Regs~191_q\ <= NOT \Regs~191_q\;
\ALT_INV_Regs~175_q\ <= NOT \Regs~175_q\;
\ALT_INV_Regs~159_q\ <= NOT \Regs~159_q\;
\ALT_INV_Regs~328_combout\ <= NOT \Regs~328_combout\;
\ALT_INV_Regs~143_q\ <= NOT \Regs~143_q\;
\ALT_INV_Regs~127_q\ <= NOT \Regs~127_q\;
\ALT_INV_Regs~111_q\ <= NOT \Regs~111_q\;
\ALT_INV_Regs~95_q\ <= NOT \Regs~95_q\;
\ALT_INV_Regs~327_combout\ <= NOT \Regs~327_combout\;
\ALT_INV_Regs~79_q\ <= NOT \Regs~79_q\;
\ALT_INV_Regs~63_q\ <= NOT \Regs~63_q\;
\ALT_INV_Regs~47_q\ <= NOT \Regs~47_q\;
\ALT_INV_Regs~31_q\ <= NOT \Regs~31_q\;
\ALT_INV_Regs~325_combout\ <= NOT \Regs~325_combout\;
\ALT_INV_Regs~270_q\ <= NOT \Regs~270_q\;
\ALT_INV_Regs~206_q\ <= NOT \Regs~206_q\;
\ALT_INV_Regs~142_q\ <= NOT \Regs~142_q\;
\ALT_INV_Regs~78_q\ <= NOT \Regs~78_q\;
\ALT_INV_Regs~324_combout\ <= NOT \Regs~324_combout\;
\ALT_INV_Regs~254_q\ <= NOT \Regs~254_q\;
\ALT_INV_Regs~190_q\ <= NOT \Regs~190_q\;
\ALT_INV_Regs~126_q\ <= NOT \Regs~126_q\;
\ALT_INV_Regs~62_q\ <= NOT \Regs~62_q\;
\ALT_INV_Regs~323_combout\ <= NOT \Regs~323_combout\;
\ALT_INV_Regs~238_q\ <= NOT \Regs~238_q\;
\ALT_INV_Regs~174_q\ <= NOT \Regs~174_q\;
\ALT_INV_Regs~110_q\ <= NOT \Regs~110_q\;
\ALT_INV_Regs~46_q\ <= NOT \Regs~46_q\;
\ALT_INV_Regs~322_combout\ <= NOT \Regs~322_combout\;
\ALT_INV_Regs~222_q\ <= NOT \Regs~222_q\;
\ALT_INV_Regs~158_q\ <= NOT \Regs~158_q\;
\ALT_INV_Regs~94_q\ <= NOT \Regs~94_q\;
\ALT_INV_Regs~30_q\ <= NOT \Regs~30_q\;
\ALT_INV_Regs~320_combout\ <= NOT \Regs~320_combout\;
\ALT_INV_Regs~269_q\ <= NOT \Regs~269_q\;
\ALT_INV_Regs~253_q\ <= NOT \Regs~253_q\;
\ALT_INV_Regs~237_q\ <= NOT \Regs~237_q\;
\ALT_INV_Regs~221_q\ <= NOT \Regs~221_q\;
\ALT_INV_EndRegWrite[3]~input_o\ <= NOT \EndRegWrite[3]~input_o\;
\ALT_INV_EndRegWrite[2]~input_o\ <= NOT \EndRegWrite[2]~input_o\;
\ALT_INV_EndRegWrite[1]~input_o\ <= NOT \EndRegWrite[1]~input_o\;
\ALT_INV_EndRegWrite[0]~input_o\ <= NOT \EndRegWrite[0]~input_o\;
\ALT_INV_ReadReg2[3]~input_o\ <= NOT \ReadReg2[3]~input_o\;
\ALT_INV_ReadReg2[2]~input_o\ <= NOT \ReadReg2[2]~input_o\;
\ALT_INV_ReadReg2[1]~input_o\ <= NOT \ReadReg2[1]~input_o\;
\ALT_INV_ReadReg2[0]~input_o\ <= NOT \ReadReg2[0]~input_o\;
\ALT_INV_ReadReg1[3]~input_o\ <= NOT \ReadReg1[3]~input_o\;
\ALT_INV_ReadReg1[2]~input_o\ <= NOT \ReadReg1[2]~input_o\;
\ALT_INV_ReadReg1[1]~input_o\ <= NOT \ReadReg1[1]~input_o\;
\ALT_INV_ReadReg1[0]~input_o\ <= NOT \ReadReg1[0]~input_o\;
\ALT_INV_Regs~435_combout\ <= NOT \Regs~435_combout\;
\ALT_INV_Regs~434_combout\ <= NOT \Regs~434_combout\;
\ALT_INV_Regs~433_combout\ <= NOT \Regs~433_combout\;
\ALT_INV_Regs~432_combout\ <= NOT \Regs~432_combout\;
\ALT_INV_Regs~430_combout\ <= NOT \Regs~430_combout\;
\ALT_INV_Regs~429_combout\ <= NOT \Regs~429_combout\;
\ALT_INV_Regs~428_combout\ <= NOT \Regs~428_combout\;
\ALT_INV_Regs~427_combout\ <= NOT \Regs~427_combout\;
\ALT_INV_Regs~425_combout\ <= NOT \Regs~425_combout\;
\ALT_INV_Regs~424_combout\ <= NOT \Regs~424_combout\;
\ALT_INV_Regs~423_combout\ <= NOT \Regs~423_combout\;
\ALT_INV_Regs~422_combout\ <= NOT \Regs~422_combout\;
\ALT_INV_Regs~420_combout\ <= NOT \Regs~420_combout\;
\ALT_INV_Regs~419_combout\ <= NOT \Regs~419_combout\;
\ALT_INV_Regs~418_combout\ <= NOT \Regs~418_combout\;
\ALT_INV_Regs~417_combout\ <= NOT \Regs~417_combout\;
\ALT_INV_Regs~415_combout\ <= NOT \Regs~415_combout\;
\ALT_INV_Regs~414_combout\ <= NOT \Regs~414_combout\;
\ALT_INV_Regs~413_combout\ <= NOT \Regs~413_combout\;
\ALT_INV_Regs~412_combout\ <= NOT \Regs~412_combout\;
\ALT_INV_Regs~410_combout\ <= NOT \Regs~410_combout\;
\ALT_INV_Regs~409_combout\ <= NOT \Regs~409_combout\;
\ALT_INV_Regs~408_combout\ <= NOT \Regs~408_combout\;
\ALT_INV_Regs~407_combout\ <= NOT \Regs~407_combout\;
\ALT_INV_Regs~405_combout\ <= NOT \Regs~405_combout\;
\ALT_INV_Regs~404_combout\ <= NOT \Regs~404_combout\;
\ALT_INV_Regs~403_combout\ <= NOT \Regs~403_combout\;
\ALT_INV_Regs~402_combout\ <= NOT \Regs~402_combout\;
\ALT_INV_Regs~400_combout\ <= NOT \Regs~400_combout\;
\ALT_INV_Regs~399_combout\ <= NOT \Regs~399_combout\;
\ALT_INV_Regs~398_combout\ <= NOT \Regs~398_combout\;
\ALT_INV_Regs~397_combout\ <= NOT \Regs~397_combout\;
\ALT_INV_Regs~395_combout\ <= NOT \Regs~395_combout\;
\ALT_INV_Regs~394_combout\ <= NOT \Regs~394_combout\;
\ALT_INV_Regs~393_combout\ <= NOT \Regs~393_combout\;
\ALT_INV_Regs~392_combout\ <= NOT \Regs~392_combout\;
\ALT_INV_Regs~390_combout\ <= NOT \Regs~390_combout\;
\ALT_INV_Regs~389_combout\ <= NOT \Regs~389_combout\;
\ALT_INV_Regs~388_combout\ <= NOT \Regs~388_combout\;
\ALT_INV_Regs~387_combout\ <= NOT \Regs~387_combout\;
\ALT_INV_Regs~385_combout\ <= NOT \Regs~385_combout\;
\ALT_INV_Regs~384_combout\ <= NOT \Regs~384_combout\;
\ALT_INV_Regs~383_combout\ <= NOT \Regs~383_combout\;
\ALT_INV_Regs~382_combout\ <= NOT \Regs~382_combout\;
\ALT_INV_Regs~380_combout\ <= NOT \Regs~380_combout\;
\ALT_INV_Regs~379_combout\ <= NOT \Regs~379_combout\;
\ALT_INV_Regs~378_combout\ <= NOT \Regs~378_combout\;
\ALT_INV_Regs~377_combout\ <= NOT \Regs~377_combout\;
\ALT_INV_Regs~375_combout\ <= NOT \Regs~375_combout\;
\ALT_INV_Regs~374_combout\ <= NOT \Regs~374_combout\;
\ALT_INV_Regs~373_combout\ <= NOT \Regs~373_combout\;
\ALT_INV_Regs~372_combout\ <= NOT \Regs~372_combout\;
\ALT_INV_Regs~370_combout\ <= NOT \Regs~370_combout\;
\ALT_INV_Regs~369_combout\ <= NOT \Regs~369_combout\;
\ALT_INV_Regs~368_combout\ <= NOT \Regs~368_combout\;
\ALT_INV_Regs~367_combout\ <= NOT \Regs~367_combout\;
\ALT_INV_Regs~365_combout\ <= NOT \Regs~365_combout\;
\ALT_INV_Regs~364_combout\ <= NOT \Regs~364_combout\;
\ALT_INV_Regs~363_combout\ <= NOT \Regs~363_combout\;
\ALT_INV_Regs~362_combout\ <= NOT \Regs~362_combout\;
\ALT_INV_Regs~360_combout\ <= NOT \Regs~360_combout\;
\ALT_INV_Regs~359_combout\ <= NOT \Regs~359_combout\;
\ALT_INV_Regs~358_combout\ <= NOT \Regs~358_combout\;
\ALT_INV_Regs~357_combout\ <= NOT \Regs~357_combout\;
\ALT_INV_Regs~355_combout\ <= NOT \Regs~355_combout\;
\ALT_INV_Regs~276_q\ <= NOT \Regs~276_q\;
\ALT_INV_Regs~212_q\ <= NOT \Regs~212_q\;
\ALT_INV_Regs~148_q\ <= NOT \Regs~148_q\;
\ALT_INV_Regs~84_q\ <= NOT \Regs~84_q\;
\ALT_INV_Regs~354_combout\ <= NOT \Regs~354_combout\;
\ALT_INV_Regs~260_q\ <= NOT \Regs~260_q\;
\ALT_INV_Regs~196_q\ <= NOT \Regs~196_q\;
\ALT_INV_Regs~132_q\ <= NOT \Regs~132_q\;
\ALT_INV_Regs~68_q\ <= NOT \Regs~68_q\;
\ALT_INV_Regs~353_combout\ <= NOT \Regs~353_combout\;
\ALT_INV_Regs~244_q\ <= NOT \Regs~244_q\;
\ALT_INV_Regs~180_q\ <= NOT \Regs~180_q\;
\ALT_INV_Regs~116_q\ <= NOT \Regs~116_q\;
\ALT_INV_Regs~52_q\ <= NOT \Regs~52_q\;
\ALT_INV_Regs~352_combout\ <= NOT \Regs~352_combout\;
\ALT_INV_Regs~228_q\ <= NOT \Regs~228_q\;
\ALT_INV_Regs~164_q\ <= NOT \Regs~164_q\;
\ALT_INV_Regs~100_q\ <= NOT \Regs~100_q\;
\ALT_INV_Regs~36_q\ <= NOT \Regs~36_q\;
\ALT_INV_Regs~350_combout\ <= NOT \Regs~350_combout\;
\ALT_INV_Regs~275_q\ <= NOT \Regs~275_q\;
\ALT_INV_Regs~259_q\ <= NOT \Regs~259_q\;
\ALT_INV_Regs~243_q\ <= NOT \Regs~243_q\;

\RegA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~281_combout\,
	devoe => ww_devoe,
	o => \RegA[0]~output_o\);

\RegA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~286_combout\,
	devoe => ww_devoe,
	o => \RegA[1]~output_o\);

\RegA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~291_combout\,
	devoe => ww_devoe,
	o => \RegA[2]~output_o\);

\RegA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~296_combout\,
	devoe => ww_devoe,
	o => \RegA[3]~output_o\);

\RegA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~301_combout\,
	devoe => ww_devoe,
	o => \RegA[4]~output_o\);

\RegA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~306_combout\,
	devoe => ww_devoe,
	o => \RegA[5]~output_o\);

\RegA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~311_combout\,
	devoe => ww_devoe,
	o => \RegA[6]~output_o\);

\RegA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~316_combout\,
	devoe => ww_devoe,
	o => \RegA[7]~output_o\);

\RegA[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~321_combout\,
	devoe => ww_devoe,
	o => \RegA[8]~output_o\);

\RegA[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~326_combout\,
	devoe => ww_devoe,
	o => \RegA[9]~output_o\);

\RegA[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~331_combout\,
	devoe => ww_devoe,
	o => \RegA[10]~output_o\);

\RegA[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~336_combout\,
	devoe => ww_devoe,
	o => \RegA[11]~output_o\);

\RegA[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~341_combout\,
	devoe => ww_devoe,
	o => \RegA[12]~output_o\);

\RegA[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~346_combout\,
	devoe => ww_devoe,
	o => \RegA[13]~output_o\);

\RegA[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~351_combout\,
	devoe => ww_devoe,
	o => \RegA[14]~output_o\);

\RegA[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~356_combout\,
	devoe => ww_devoe,
	o => \RegA[15]~output_o\);

\RegB[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~361_combout\,
	devoe => ww_devoe,
	o => \RegB[0]~output_o\);

\RegB[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~366_combout\,
	devoe => ww_devoe,
	o => \RegB[1]~output_o\);

\RegB[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~371_combout\,
	devoe => ww_devoe,
	o => \RegB[2]~output_o\);

\RegB[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~376_combout\,
	devoe => ww_devoe,
	o => \RegB[3]~output_o\);

\RegB[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~381_combout\,
	devoe => ww_devoe,
	o => \RegB[4]~output_o\);

\RegB[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~386_combout\,
	devoe => ww_devoe,
	o => \RegB[5]~output_o\);

\RegB[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~391_combout\,
	devoe => ww_devoe,
	o => \RegB[6]~output_o\);

\RegB[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~396_combout\,
	devoe => ww_devoe,
	o => \RegB[7]~output_o\);

\RegB[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~401_combout\,
	devoe => ww_devoe,
	o => \RegB[8]~output_o\);

\RegB[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~406_combout\,
	devoe => ww_devoe,
	o => \RegB[9]~output_o\);

\RegB[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~411_combout\,
	devoe => ww_devoe,
	o => \RegB[10]~output_o\);

\RegB[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~416_combout\,
	devoe => ww_devoe,
	o => \RegB[11]~output_o\);

\RegB[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~421_combout\,
	devoe => ww_devoe,
	o => \RegB[12]~output_o\);

\RegB[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~426_combout\,
	devoe => ww_devoe,
	o => \RegB[13]~output_o\);

\RegB[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~431_combout\,
	devoe => ww_devoe,
	o => \RegB[14]~output_o\);

\RegB[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Regs~436_combout\,
	devoe => ww_devoe,
	o => \RegB[15]~output_o\);

\RegWrite~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegWrite,
	o => \RegWrite~input_o\);

\WriteData[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(0),
	o => \WriteData[0]~input_o\);

\EndRegWrite[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EndRegWrite(0),
	o => \EndRegWrite[0]~input_o\);

\EndRegWrite[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EndRegWrite(1),
	o => \EndRegWrite[1]~input_o\);

\EndRegWrite[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EndRegWrite(2),
	o => \EndRegWrite[2]~input_o\);

\EndRegWrite[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EndRegWrite(3),
	o => \EndRegWrite[3]~input_o\);

\Regs~437\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~437_combout\ = (!\EndRegWrite[0]~input_o\ & (!\EndRegWrite[1]~input_o\ & (!\EndRegWrite[2]~input_o\ & !\EndRegWrite[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EndRegWrite[0]~input_o\,
	datab => \ALT_INV_EndRegWrite[1]~input_o\,
	datac => \ALT_INV_EndRegWrite[2]~input_o\,
	datad => \ALT_INV_EndRegWrite[3]~input_o\,
	combout => \Regs~437_combout\);

\Regs~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[0]~input_o\,
	ena => \Regs~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~21_q\);

\Regs~438\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~438_combout\ = (\EndRegWrite[0]~input_o\ & (!\EndRegWrite[1]~input_o\ & (!\EndRegWrite[2]~input_o\ & !\EndRegWrite[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EndRegWrite[0]~input_o\,
	datab => \ALT_INV_EndRegWrite[1]~input_o\,
	datac => \ALT_INV_EndRegWrite[2]~input_o\,
	datad => \ALT_INV_EndRegWrite[3]~input_o\,
	combout => \Regs~438_combout\);

\Regs~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[0]~input_o\,
	ena => \Regs~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~37_q\);

\Regs~439\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~439_combout\ = (!\EndRegWrite[0]~input_o\ & (\EndRegWrite[1]~input_o\ & (!\EndRegWrite[2]~input_o\ & !\EndRegWrite[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EndRegWrite[0]~input_o\,
	datab => \ALT_INV_EndRegWrite[1]~input_o\,
	datac => \ALT_INV_EndRegWrite[2]~input_o\,
	datad => \ALT_INV_EndRegWrite[3]~input_o\,
	combout => \Regs~439_combout\);

\Regs~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[0]~input_o\,
	ena => \Regs~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~53_q\);

\Regs~440\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~440_combout\ = (\EndRegWrite[0]~input_o\ & (\EndRegWrite[1]~input_o\ & (!\EndRegWrite[2]~input_o\ & !\EndRegWrite[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EndRegWrite[0]~input_o\,
	datab => \ALT_INV_EndRegWrite[1]~input_o\,
	datac => \ALT_INV_EndRegWrite[2]~input_o\,
	datad => \ALT_INV_EndRegWrite[3]~input_o\,
	combout => \Regs~440_combout\);

\Regs~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[0]~input_o\,
	ena => \Regs~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~69_q\);

\ReadReg1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ReadReg1(0),
	o => \ReadReg1[0]~input_o\);

\ReadReg1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ReadReg1(1),
	o => \ReadReg1[1]~input_o\);

\Regs~277\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~277_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~69_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~53_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~37_q\ ) ) ) # ( 
-- !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~21_q\,
	datab => \ALT_INV_Regs~37_q\,
	datac => \ALT_INV_Regs~53_q\,
	datad => \ALT_INV_Regs~69_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \Regs~277_combout\);

\Regs~441\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~441_combout\ = (!\EndRegWrite[0]~input_o\ & (!\EndRegWrite[1]~input_o\ & (\EndRegWrite[2]~input_o\ & !\EndRegWrite[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EndRegWrite[0]~input_o\,
	datab => \ALT_INV_EndRegWrite[1]~input_o\,
	datac => \ALT_INV_EndRegWrite[2]~input_o\,
	datad => \ALT_INV_EndRegWrite[3]~input_o\,
	combout => \Regs~441_combout\);

\Regs~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[0]~input_o\,
	ena => \Regs~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~85_q\);

\Regs~442\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~442_combout\ = (\EndRegWrite[0]~input_o\ & (!\EndRegWrite[1]~input_o\ & (\EndRegWrite[2]~input_o\ & !\EndRegWrite[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EndRegWrite[0]~input_o\,
	datab => \ALT_INV_EndRegWrite[1]~input_o\,
	datac => \ALT_INV_EndRegWrite[2]~input_o\,
	datad => \ALT_INV_EndRegWrite[3]~input_o\,
	combout => \Regs~442_combout\);

\Regs~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[0]~input_o\,
	ena => \Regs~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~101_q\);

\Regs~443\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~443_combout\ = (!\EndRegWrite[0]~input_o\ & (\EndRegWrite[1]~input_o\ & (\EndRegWrite[2]~input_o\ & !\EndRegWrite[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EndRegWrite[0]~input_o\,
	datab => \ALT_INV_EndRegWrite[1]~input_o\,
	datac => \ALT_INV_EndRegWrite[2]~input_o\,
	datad => \ALT_INV_EndRegWrite[3]~input_o\,
	combout => \Regs~443_combout\);

\Regs~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[0]~input_o\,
	ena => \Regs~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~117_q\);

\Regs~444\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~444_combout\ = (\EndRegWrite[0]~input_o\ & (\EndRegWrite[1]~input_o\ & (\EndRegWrite[2]~input_o\ & !\EndRegWrite[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EndRegWrite[0]~input_o\,
	datab => \ALT_INV_EndRegWrite[1]~input_o\,
	datac => \ALT_INV_EndRegWrite[2]~input_o\,
	datad => \ALT_INV_EndRegWrite[3]~input_o\,
	combout => \Regs~444_combout\);

\Regs~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[0]~input_o\,
	ena => \Regs~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~133_q\);

\Regs~278\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~278_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~133_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~117_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~101_q\ ) ) ) # ( 
-- !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~85_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~85_q\,
	datab => \ALT_INV_Regs~101_q\,
	datac => \ALT_INV_Regs~117_q\,
	datad => \ALT_INV_Regs~133_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \Regs~278_combout\);

\Regs~445\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~445_combout\ = (!\EndRegWrite[0]~input_o\ & (!\EndRegWrite[1]~input_o\ & (!\EndRegWrite[2]~input_o\ & \EndRegWrite[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EndRegWrite[0]~input_o\,
	datab => \ALT_INV_EndRegWrite[1]~input_o\,
	datac => \ALT_INV_EndRegWrite[2]~input_o\,
	datad => \ALT_INV_EndRegWrite[3]~input_o\,
	combout => \Regs~445_combout\);

\Regs~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[0]~input_o\,
	ena => \Regs~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~149_q\);

\Regs~446\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~446_combout\ = (\EndRegWrite[0]~input_o\ & (!\EndRegWrite[1]~input_o\ & (!\EndRegWrite[2]~input_o\ & \EndRegWrite[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EndRegWrite[0]~input_o\,
	datab => \ALT_INV_EndRegWrite[1]~input_o\,
	datac => \ALT_INV_EndRegWrite[2]~input_o\,
	datad => \ALT_INV_EndRegWrite[3]~input_o\,
	combout => \Regs~446_combout\);

\Regs~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[0]~input_o\,
	ena => \Regs~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~165_q\);

\Regs~447\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~447_combout\ = (!\EndRegWrite[0]~input_o\ & (\EndRegWrite[1]~input_o\ & (!\EndRegWrite[2]~input_o\ & \EndRegWrite[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EndRegWrite[0]~input_o\,
	datab => \ALT_INV_EndRegWrite[1]~input_o\,
	datac => \ALT_INV_EndRegWrite[2]~input_o\,
	datad => \ALT_INV_EndRegWrite[3]~input_o\,
	combout => \Regs~447_combout\);

\Regs~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[0]~input_o\,
	ena => \Regs~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~181_q\);

\Regs~448\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~448_combout\ = (\EndRegWrite[0]~input_o\ & (\EndRegWrite[1]~input_o\ & (!\EndRegWrite[2]~input_o\ & \EndRegWrite[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EndRegWrite[0]~input_o\,
	datab => \ALT_INV_EndRegWrite[1]~input_o\,
	datac => \ALT_INV_EndRegWrite[2]~input_o\,
	datad => \ALT_INV_EndRegWrite[3]~input_o\,
	combout => \Regs~448_combout\);

\Regs~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[0]~input_o\,
	ena => \Regs~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~197_q\);

\Regs~279\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~279_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~197_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~181_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~165_q\ ) ) ) # ( 
-- !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~149_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~149_q\,
	datab => \ALT_INV_Regs~165_q\,
	datac => \ALT_INV_Regs~181_q\,
	datad => \ALT_INV_Regs~197_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \Regs~279_combout\);

\Regs~449\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~449_combout\ = (!\EndRegWrite[0]~input_o\ & (!\EndRegWrite[1]~input_o\ & (\EndRegWrite[2]~input_o\ & \EndRegWrite[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EndRegWrite[0]~input_o\,
	datab => \ALT_INV_EndRegWrite[1]~input_o\,
	datac => \ALT_INV_EndRegWrite[2]~input_o\,
	datad => \ALT_INV_EndRegWrite[3]~input_o\,
	combout => \Regs~449_combout\);

\Regs~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[0]~input_o\,
	ena => \Regs~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~213_q\);

\Regs~450\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~450_combout\ = (\EndRegWrite[0]~input_o\ & (!\EndRegWrite[1]~input_o\ & (\EndRegWrite[2]~input_o\ & \EndRegWrite[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EndRegWrite[0]~input_o\,
	datab => \ALT_INV_EndRegWrite[1]~input_o\,
	datac => \ALT_INV_EndRegWrite[2]~input_o\,
	datad => \ALT_INV_EndRegWrite[3]~input_o\,
	combout => \Regs~450_combout\);

\Regs~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[0]~input_o\,
	ena => \Regs~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~229_q\);

\Regs~451\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~451_combout\ = (!\EndRegWrite[0]~input_o\ & (\EndRegWrite[1]~input_o\ & (\EndRegWrite[2]~input_o\ & \EndRegWrite[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EndRegWrite[0]~input_o\,
	datab => \ALT_INV_EndRegWrite[1]~input_o\,
	datac => \ALT_INV_EndRegWrite[2]~input_o\,
	datad => \ALT_INV_EndRegWrite[3]~input_o\,
	combout => \Regs~451_combout\);

\Regs~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[0]~input_o\,
	ena => \Regs~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~245_q\);

\Regs~452\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~452_combout\ = (\EndRegWrite[0]~input_o\ & (\EndRegWrite[1]~input_o\ & (\EndRegWrite[2]~input_o\ & \EndRegWrite[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EndRegWrite[0]~input_o\,
	datab => \ALT_INV_EndRegWrite[1]~input_o\,
	datac => \ALT_INV_EndRegWrite[2]~input_o\,
	datad => \ALT_INV_EndRegWrite[3]~input_o\,
	combout => \Regs~452_combout\);

\Regs~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[0]~input_o\,
	ena => \Regs~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~261_q\);

\Regs~280\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~280_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~261_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~245_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~229_q\ ) ) ) # ( 
-- !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~213_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~213_q\,
	datab => \ALT_INV_Regs~229_q\,
	datac => \ALT_INV_Regs~245_q\,
	datad => \ALT_INV_Regs~261_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \Regs~280_combout\);

\ReadReg1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ReadReg1(2),
	o => \ReadReg1[2]~input_o\);

\ReadReg1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ReadReg1(3),
	o => \ReadReg1[3]~input_o\);

\Regs~281\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~281_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~280_combout\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~279_combout\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( 
-- \Regs~278_combout\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~277_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~277_combout\,
	datab => \ALT_INV_Regs~278_combout\,
	datac => \ALT_INV_Regs~279_combout\,
	datad => \ALT_INV_Regs~280_combout\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \Regs~281_combout\);

\WriteData[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(1),
	o => \WriteData[1]~input_o\);

\Regs~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[1]~input_o\,
	ena => \Regs~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~22_q\);

\Regs~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[1]~input_o\,
	ena => \Regs~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~86_q\);

\Regs~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[1]~input_o\,
	ena => \Regs~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~150_q\);

\Regs~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[1]~input_o\,
	ena => \Regs~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~214_q\);

\Regs~282\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~282_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~214_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~150_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~86_q\ ) ) ) # ( 
-- !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~22_q\,
	datab => \ALT_INV_Regs~86_q\,
	datac => \ALT_INV_Regs~150_q\,
	datad => \ALT_INV_Regs~214_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \Regs~282_combout\);

\Regs~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[1]~input_o\,
	ena => \Regs~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~38_q\);

\Regs~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[1]~input_o\,
	ena => \Regs~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~102_q\);

\Regs~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[1]~input_o\,
	ena => \Regs~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~166_q\);

\Regs~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[1]~input_o\,
	ena => \Regs~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~230_q\);

\Regs~283\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~283_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~230_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~166_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~102_q\ ) ) ) # ( 
-- !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~38_q\,
	datab => \ALT_INV_Regs~102_q\,
	datac => \ALT_INV_Regs~166_q\,
	datad => \ALT_INV_Regs~230_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \Regs~283_combout\);

\Regs~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[1]~input_o\,
	ena => \Regs~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~54_q\);

\Regs~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[1]~input_o\,
	ena => \Regs~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~118_q\);

\Regs~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[1]~input_o\,
	ena => \Regs~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~182_q\);

\Regs~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[1]~input_o\,
	ena => \Regs~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~246_q\);

\Regs~284\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~284_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~246_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~182_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~118_q\ ) ) ) # ( 
-- !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~54_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~54_q\,
	datab => \ALT_INV_Regs~118_q\,
	datac => \ALT_INV_Regs~182_q\,
	datad => \ALT_INV_Regs~246_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \Regs~284_combout\);

\Regs~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[1]~input_o\,
	ena => \Regs~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~70_q\);

\Regs~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[1]~input_o\,
	ena => \Regs~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~134_q\);

\Regs~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[1]~input_o\,
	ena => \Regs~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~198_q\);

\Regs~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[1]~input_o\,
	ena => \Regs~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~262_q\);

\Regs~285\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~285_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~262_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~198_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~134_q\ ) ) ) # ( 
-- !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~70_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~70_q\,
	datab => \ALT_INV_Regs~134_q\,
	datac => \ALT_INV_Regs~198_q\,
	datad => \ALT_INV_Regs~262_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \Regs~285_combout\);

\Regs~286\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~286_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~285_combout\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~284_combout\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( 
-- \Regs~283_combout\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~282_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~282_combout\,
	datab => \ALT_INV_Regs~283_combout\,
	datac => \ALT_INV_Regs~284_combout\,
	datad => \ALT_INV_Regs~285_combout\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \Regs~286_combout\);

\WriteData[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(2),
	o => \WriteData[2]~input_o\);

\Regs~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[2]~input_o\,
	ena => \Regs~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~23_q\);

\Regs~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[2]~input_o\,
	ena => \Regs~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~39_q\);

\Regs~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[2]~input_o\,
	ena => \Regs~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~55_q\);

\Regs~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[2]~input_o\,
	ena => \Regs~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~71_q\);

\Regs~287\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~287_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~71_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~55_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~39_q\ ) ) ) # ( 
-- !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~23_q\,
	datab => \ALT_INV_Regs~39_q\,
	datac => \ALT_INV_Regs~55_q\,
	datad => \ALT_INV_Regs~71_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \Regs~287_combout\);

\Regs~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[2]~input_o\,
	ena => \Regs~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~87_q\);

\Regs~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[2]~input_o\,
	ena => \Regs~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~103_q\);

\Regs~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[2]~input_o\,
	ena => \Regs~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~119_q\);

\Regs~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[2]~input_o\,
	ena => \Regs~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~135_q\);

\Regs~288\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~288_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~135_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~119_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~103_q\ ) ) ) # ( 
-- !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~87_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~87_q\,
	datab => \ALT_INV_Regs~103_q\,
	datac => \ALT_INV_Regs~119_q\,
	datad => \ALT_INV_Regs~135_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \Regs~288_combout\);

\Regs~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[2]~input_o\,
	ena => \Regs~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~151_q\);

\Regs~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[2]~input_o\,
	ena => \Regs~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~167_q\);

\Regs~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[2]~input_o\,
	ena => \Regs~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~183_q\);

\Regs~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[2]~input_o\,
	ena => \Regs~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~199_q\);

\Regs~289\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~289_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~199_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~183_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~167_q\ ) ) ) # ( 
-- !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~151_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~151_q\,
	datab => \ALT_INV_Regs~167_q\,
	datac => \ALT_INV_Regs~183_q\,
	datad => \ALT_INV_Regs~199_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \Regs~289_combout\);

\Regs~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[2]~input_o\,
	ena => \Regs~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~215_q\);

\Regs~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[2]~input_o\,
	ena => \Regs~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~231_q\);

\Regs~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[2]~input_o\,
	ena => \Regs~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~247_q\);

\Regs~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[2]~input_o\,
	ena => \Regs~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~263_q\);

\Regs~290\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~290_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~263_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~247_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~231_q\ ) ) ) # ( 
-- !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~215_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~215_q\,
	datab => \ALT_INV_Regs~231_q\,
	datac => \ALT_INV_Regs~247_q\,
	datad => \ALT_INV_Regs~263_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \Regs~290_combout\);

\Regs~291\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~291_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~290_combout\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~289_combout\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( 
-- \Regs~288_combout\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~287_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~287_combout\,
	datab => \ALT_INV_Regs~288_combout\,
	datac => \ALT_INV_Regs~289_combout\,
	datad => \ALT_INV_Regs~290_combout\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \Regs~291_combout\);

\WriteData[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(3),
	o => \WriteData[3]~input_o\);

\Regs~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[3]~input_o\,
	ena => \Regs~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~24_q\);

\Regs~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[3]~input_o\,
	ena => \Regs~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~88_q\);

\Regs~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[3]~input_o\,
	ena => \Regs~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~152_q\);

\Regs~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[3]~input_o\,
	ena => \Regs~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~216_q\);

\Regs~292\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~292_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~216_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~152_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~88_q\ ) ) ) # ( 
-- !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~24_q\,
	datab => \ALT_INV_Regs~88_q\,
	datac => \ALT_INV_Regs~152_q\,
	datad => \ALT_INV_Regs~216_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \Regs~292_combout\);

\Regs~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[3]~input_o\,
	ena => \Regs~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~40_q\);

\Regs~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[3]~input_o\,
	ena => \Regs~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~104_q\);

\Regs~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[3]~input_o\,
	ena => \Regs~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~168_q\);

\Regs~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[3]~input_o\,
	ena => \Regs~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~232_q\);

\Regs~293\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~293_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~232_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~168_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~104_q\ ) ) ) # ( 
-- !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~40_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~40_q\,
	datab => \ALT_INV_Regs~104_q\,
	datac => \ALT_INV_Regs~168_q\,
	datad => \ALT_INV_Regs~232_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \Regs~293_combout\);

\Regs~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[3]~input_o\,
	ena => \Regs~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~56_q\);

\Regs~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[3]~input_o\,
	ena => \Regs~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~120_q\);

\Regs~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[3]~input_o\,
	ena => \Regs~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~184_q\);

\Regs~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[3]~input_o\,
	ena => \Regs~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~248_q\);

\Regs~294\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~294_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~248_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~184_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~120_q\ ) ) ) # ( 
-- !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~56_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~56_q\,
	datab => \ALT_INV_Regs~120_q\,
	datac => \ALT_INV_Regs~184_q\,
	datad => \ALT_INV_Regs~248_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \Regs~294_combout\);

\Regs~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[3]~input_o\,
	ena => \Regs~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~72_q\);

\Regs~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[3]~input_o\,
	ena => \Regs~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~136_q\);

\Regs~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[3]~input_o\,
	ena => \Regs~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~200_q\);

\Regs~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[3]~input_o\,
	ena => \Regs~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~264_q\);

\Regs~295\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~295_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~264_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~200_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~136_q\ ) ) ) # ( 
-- !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~72_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~72_q\,
	datab => \ALT_INV_Regs~136_q\,
	datac => \ALT_INV_Regs~200_q\,
	datad => \ALT_INV_Regs~264_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \Regs~295_combout\);

\Regs~296\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~296_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~295_combout\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~294_combout\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( 
-- \Regs~293_combout\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~292_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~292_combout\,
	datab => \ALT_INV_Regs~293_combout\,
	datac => \ALT_INV_Regs~294_combout\,
	datad => \ALT_INV_Regs~295_combout\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \Regs~296_combout\);

\WriteData[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(4),
	o => \WriteData[4]~input_o\);

\Regs~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[4]~input_o\,
	ena => \Regs~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~25_q\);

\Regs~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[4]~input_o\,
	ena => \Regs~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~41_q\);

\Regs~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[4]~input_o\,
	ena => \Regs~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~57_q\);

\Regs~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[4]~input_o\,
	ena => \Regs~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~73_q\);

\Regs~297\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~297_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~73_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~57_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~41_q\ ) ) ) # ( 
-- !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~25_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~25_q\,
	datab => \ALT_INV_Regs~41_q\,
	datac => \ALT_INV_Regs~57_q\,
	datad => \ALT_INV_Regs~73_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \Regs~297_combout\);

\Regs~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[4]~input_o\,
	ena => \Regs~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~89_q\);

\Regs~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[4]~input_o\,
	ena => \Regs~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~105_q\);

\Regs~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[4]~input_o\,
	ena => \Regs~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~121_q\);

\Regs~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[4]~input_o\,
	ena => \Regs~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~137_q\);

\Regs~298\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~298_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~137_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~121_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~105_q\ ) ) ) # ( 
-- !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~89_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~89_q\,
	datab => \ALT_INV_Regs~105_q\,
	datac => \ALT_INV_Regs~121_q\,
	datad => \ALT_INV_Regs~137_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \Regs~298_combout\);

\Regs~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[4]~input_o\,
	ena => \Regs~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~153_q\);

\Regs~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[4]~input_o\,
	ena => \Regs~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~169_q\);

\Regs~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[4]~input_o\,
	ena => \Regs~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~185_q\);

\Regs~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[4]~input_o\,
	ena => \Regs~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~201_q\);

\Regs~299\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~299_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~201_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~185_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~169_q\ ) ) ) # ( 
-- !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~153_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~153_q\,
	datab => \ALT_INV_Regs~169_q\,
	datac => \ALT_INV_Regs~185_q\,
	datad => \ALT_INV_Regs~201_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \Regs~299_combout\);

\Regs~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[4]~input_o\,
	ena => \Regs~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~217_q\);

\Regs~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[4]~input_o\,
	ena => \Regs~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~233_q\);

\Regs~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[4]~input_o\,
	ena => \Regs~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~249_q\);

\Regs~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[4]~input_o\,
	ena => \Regs~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~265_q\);

\Regs~300\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~300_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~265_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~249_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~233_q\ ) ) ) # ( 
-- !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~217_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~217_q\,
	datab => \ALT_INV_Regs~233_q\,
	datac => \ALT_INV_Regs~249_q\,
	datad => \ALT_INV_Regs~265_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \Regs~300_combout\);

\Regs~301\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~301_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~300_combout\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~299_combout\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( 
-- \Regs~298_combout\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~297_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~297_combout\,
	datab => \ALT_INV_Regs~298_combout\,
	datac => \ALT_INV_Regs~299_combout\,
	datad => \ALT_INV_Regs~300_combout\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \Regs~301_combout\);

\WriteData[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(5),
	o => \WriteData[5]~input_o\);

\Regs~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[5]~input_o\,
	ena => \Regs~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~26_q\);

\Regs~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[5]~input_o\,
	ena => \Regs~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~90_q\);

\Regs~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[5]~input_o\,
	ena => \Regs~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~154_q\);

\Regs~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[5]~input_o\,
	ena => \Regs~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~218_q\);

\Regs~302\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~302_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~218_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~154_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~90_q\ ) ) ) # ( 
-- !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~26_q\,
	datab => \ALT_INV_Regs~90_q\,
	datac => \ALT_INV_Regs~154_q\,
	datad => \ALT_INV_Regs~218_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \Regs~302_combout\);

\Regs~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[5]~input_o\,
	ena => \Regs~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~42_q\);

\Regs~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[5]~input_o\,
	ena => \Regs~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~106_q\);

\Regs~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[5]~input_o\,
	ena => \Regs~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~170_q\);

\Regs~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[5]~input_o\,
	ena => \Regs~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~234_q\);

\Regs~303\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~303_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~234_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~170_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~106_q\ ) ) ) # ( 
-- !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~42_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~42_q\,
	datab => \ALT_INV_Regs~106_q\,
	datac => \ALT_INV_Regs~170_q\,
	datad => \ALT_INV_Regs~234_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \Regs~303_combout\);

\Regs~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[5]~input_o\,
	ena => \Regs~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~58_q\);

\Regs~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[5]~input_o\,
	ena => \Regs~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~122_q\);

\Regs~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[5]~input_o\,
	ena => \Regs~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~186_q\);

\Regs~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[5]~input_o\,
	ena => \Regs~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~250_q\);

\Regs~304\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~304_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~250_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~186_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~122_q\ ) ) ) # ( 
-- !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~58_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~58_q\,
	datab => \ALT_INV_Regs~122_q\,
	datac => \ALT_INV_Regs~186_q\,
	datad => \ALT_INV_Regs~250_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \Regs~304_combout\);

\Regs~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[5]~input_o\,
	ena => \Regs~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~74_q\);

\Regs~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[5]~input_o\,
	ena => \Regs~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~138_q\);

\Regs~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[5]~input_o\,
	ena => \Regs~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~202_q\);

\Regs~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[5]~input_o\,
	ena => \Regs~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~266_q\);

\Regs~305\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~305_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~266_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~202_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~138_q\ ) ) ) # ( 
-- !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~74_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~74_q\,
	datab => \ALT_INV_Regs~138_q\,
	datac => \ALT_INV_Regs~202_q\,
	datad => \ALT_INV_Regs~266_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \Regs~305_combout\);

\Regs~306\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~306_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~305_combout\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~304_combout\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( 
-- \Regs~303_combout\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~302_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~302_combout\,
	datab => \ALT_INV_Regs~303_combout\,
	datac => \ALT_INV_Regs~304_combout\,
	datad => \ALT_INV_Regs~305_combout\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \Regs~306_combout\);

\WriteData[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(6),
	o => \WriteData[6]~input_o\);

\Regs~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[6]~input_o\,
	ena => \Regs~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~27_q\);

\Regs~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[6]~input_o\,
	ena => \Regs~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~43_q\);

\Regs~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[6]~input_o\,
	ena => \Regs~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~59_q\);

\Regs~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[6]~input_o\,
	ena => \Regs~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~75_q\);

\Regs~307\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~307_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~75_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~59_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~43_q\ ) ) ) # ( 
-- !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~27_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~27_q\,
	datab => \ALT_INV_Regs~43_q\,
	datac => \ALT_INV_Regs~59_q\,
	datad => \ALT_INV_Regs~75_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \Regs~307_combout\);

\Regs~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[6]~input_o\,
	ena => \Regs~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~91_q\);

\Regs~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[6]~input_o\,
	ena => \Regs~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~107_q\);

\Regs~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[6]~input_o\,
	ena => \Regs~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~123_q\);

\Regs~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[6]~input_o\,
	ena => \Regs~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~139_q\);

\Regs~308\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~308_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~139_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~123_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~107_q\ ) ) ) # ( 
-- !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~91_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~91_q\,
	datab => \ALT_INV_Regs~107_q\,
	datac => \ALT_INV_Regs~123_q\,
	datad => \ALT_INV_Regs~139_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \Regs~308_combout\);

\Regs~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[6]~input_o\,
	ena => \Regs~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~155_q\);

\Regs~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[6]~input_o\,
	ena => \Regs~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~171_q\);

\Regs~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[6]~input_o\,
	ena => \Regs~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~187_q\);

\Regs~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[6]~input_o\,
	ena => \Regs~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~203_q\);

\Regs~309\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~309_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~203_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~187_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~171_q\ ) ) ) # ( 
-- !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~155_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~155_q\,
	datab => \ALT_INV_Regs~171_q\,
	datac => \ALT_INV_Regs~187_q\,
	datad => \ALT_INV_Regs~203_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \Regs~309_combout\);

\Regs~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[6]~input_o\,
	ena => \Regs~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~219_q\);

\Regs~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[6]~input_o\,
	ena => \Regs~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~235_q\);

\Regs~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[6]~input_o\,
	ena => \Regs~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~251_q\);

\Regs~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[6]~input_o\,
	ena => \Regs~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~267_q\);

\Regs~310\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~310_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~267_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~251_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~235_q\ ) ) ) # ( 
-- !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~219_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~219_q\,
	datab => \ALT_INV_Regs~235_q\,
	datac => \ALT_INV_Regs~251_q\,
	datad => \ALT_INV_Regs~267_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \Regs~310_combout\);

\Regs~311\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~311_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~310_combout\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~309_combout\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( 
-- \Regs~308_combout\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~307_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~307_combout\,
	datab => \ALT_INV_Regs~308_combout\,
	datac => \ALT_INV_Regs~309_combout\,
	datad => \ALT_INV_Regs~310_combout\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \Regs~311_combout\);

\WriteData[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(7),
	o => \WriteData[7]~input_o\);

\Regs~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[7]~input_o\,
	ena => \Regs~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~28_q\);

\Regs~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[7]~input_o\,
	ena => \Regs~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~92_q\);

\Regs~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[7]~input_o\,
	ena => \Regs~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~156_q\);

\Regs~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[7]~input_o\,
	ena => \Regs~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~220_q\);

\Regs~312\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~312_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~220_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~156_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~92_q\ ) ) ) # ( 
-- !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~28_q\,
	datab => \ALT_INV_Regs~92_q\,
	datac => \ALT_INV_Regs~156_q\,
	datad => \ALT_INV_Regs~220_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \Regs~312_combout\);

\Regs~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[7]~input_o\,
	ena => \Regs~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~44_q\);

\Regs~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[7]~input_o\,
	ena => \Regs~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~108_q\);

\Regs~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[7]~input_o\,
	ena => \Regs~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~172_q\);

\Regs~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[7]~input_o\,
	ena => \Regs~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~236_q\);

\Regs~313\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~313_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~236_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~172_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~108_q\ ) ) ) # ( 
-- !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~44_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~44_q\,
	datab => \ALT_INV_Regs~108_q\,
	datac => \ALT_INV_Regs~172_q\,
	datad => \ALT_INV_Regs~236_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \Regs~313_combout\);

\Regs~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[7]~input_o\,
	ena => \Regs~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~60_q\);

\Regs~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[7]~input_o\,
	ena => \Regs~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~124_q\);

\Regs~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[7]~input_o\,
	ena => \Regs~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~188_q\);

\Regs~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[7]~input_o\,
	ena => \Regs~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~252_q\);

\Regs~314\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~314_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~252_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~188_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~124_q\ ) ) ) # ( 
-- !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~60_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~60_q\,
	datab => \ALT_INV_Regs~124_q\,
	datac => \ALT_INV_Regs~188_q\,
	datad => \ALT_INV_Regs~252_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \Regs~314_combout\);

\Regs~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[7]~input_o\,
	ena => \Regs~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~76_q\);

\Regs~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[7]~input_o\,
	ena => \Regs~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~140_q\);

\Regs~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[7]~input_o\,
	ena => \Regs~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~204_q\);

\Regs~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[7]~input_o\,
	ena => \Regs~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~268_q\);

\Regs~315\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~315_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~268_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~204_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~140_q\ ) ) ) # ( 
-- !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~76_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~76_q\,
	datab => \ALT_INV_Regs~140_q\,
	datac => \ALT_INV_Regs~204_q\,
	datad => \ALT_INV_Regs~268_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \Regs~315_combout\);

\Regs~316\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~316_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~315_combout\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~314_combout\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( 
-- \Regs~313_combout\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~312_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~312_combout\,
	datab => \ALT_INV_Regs~313_combout\,
	datac => \ALT_INV_Regs~314_combout\,
	datad => \ALT_INV_Regs~315_combout\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \Regs~316_combout\);

\WriteData[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(8),
	o => \WriteData[8]~input_o\);

\Regs~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[8]~input_o\,
	ena => \Regs~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~29_q\);

\Regs~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[8]~input_o\,
	ena => \Regs~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~45_q\);

\Regs~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[8]~input_o\,
	ena => \Regs~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~61_q\);

\Regs~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[8]~input_o\,
	ena => \Regs~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~77_q\);

\Regs~317\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~317_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~77_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~61_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~45_q\ ) ) ) # ( 
-- !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~29_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~29_q\,
	datab => \ALT_INV_Regs~45_q\,
	datac => \ALT_INV_Regs~61_q\,
	datad => \ALT_INV_Regs~77_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \Regs~317_combout\);

\Regs~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[8]~input_o\,
	ena => \Regs~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~93_q\);

\Regs~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[8]~input_o\,
	ena => \Regs~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~109_q\);

\Regs~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[8]~input_o\,
	ena => \Regs~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~125_q\);

\Regs~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[8]~input_o\,
	ena => \Regs~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~141_q\);

\Regs~318\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~318_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~141_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~125_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~109_q\ ) ) ) # ( 
-- !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~93_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~93_q\,
	datab => \ALT_INV_Regs~109_q\,
	datac => \ALT_INV_Regs~125_q\,
	datad => \ALT_INV_Regs~141_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \Regs~318_combout\);

\Regs~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[8]~input_o\,
	ena => \Regs~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~157_q\);

\Regs~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[8]~input_o\,
	ena => \Regs~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~173_q\);

\Regs~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[8]~input_o\,
	ena => \Regs~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~189_q\);

\Regs~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[8]~input_o\,
	ena => \Regs~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~205_q\);

\Regs~319\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~319_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~205_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~189_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~173_q\ ) ) ) # ( 
-- !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~157_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~157_q\,
	datab => \ALT_INV_Regs~173_q\,
	datac => \ALT_INV_Regs~189_q\,
	datad => \ALT_INV_Regs~205_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \Regs~319_combout\);

\Regs~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[8]~input_o\,
	ena => \Regs~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~221_q\);

\Regs~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[8]~input_o\,
	ena => \Regs~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~237_q\);

\Regs~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[8]~input_o\,
	ena => \Regs~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~253_q\);

\Regs~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[8]~input_o\,
	ena => \Regs~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~269_q\);

\Regs~320\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~320_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~269_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~253_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~237_q\ ) ) ) # ( 
-- !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~221_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~221_q\,
	datab => \ALT_INV_Regs~237_q\,
	datac => \ALT_INV_Regs~253_q\,
	datad => \ALT_INV_Regs~269_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \Regs~320_combout\);

\Regs~321\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~321_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~320_combout\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~319_combout\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( 
-- \Regs~318_combout\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~317_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~317_combout\,
	datab => \ALT_INV_Regs~318_combout\,
	datac => \ALT_INV_Regs~319_combout\,
	datad => \ALT_INV_Regs~320_combout\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \Regs~321_combout\);

\WriteData[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(9),
	o => \WriteData[9]~input_o\);

\Regs~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[9]~input_o\,
	ena => \Regs~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~30_q\);

\Regs~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[9]~input_o\,
	ena => \Regs~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~94_q\);

\Regs~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[9]~input_o\,
	ena => \Regs~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~158_q\);

\Regs~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[9]~input_o\,
	ena => \Regs~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~222_q\);

\Regs~322\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~322_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~222_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~158_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~94_q\ ) ) ) # ( 
-- !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~30_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~30_q\,
	datab => \ALT_INV_Regs~94_q\,
	datac => \ALT_INV_Regs~158_q\,
	datad => \ALT_INV_Regs~222_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \Regs~322_combout\);

\Regs~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[9]~input_o\,
	ena => \Regs~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~46_q\);

\Regs~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[9]~input_o\,
	ena => \Regs~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~110_q\);

\Regs~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[9]~input_o\,
	ena => \Regs~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~174_q\);

\Regs~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[9]~input_o\,
	ena => \Regs~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~238_q\);

\Regs~323\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~323_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~238_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~174_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~110_q\ ) ) ) # ( 
-- !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~46_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~46_q\,
	datab => \ALT_INV_Regs~110_q\,
	datac => \ALT_INV_Regs~174_q\,
	datad => \ALT_INV_Regs~238_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \Regs~323_combout\);

\Regs~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[9]~input_o\,
	ena => \Regs~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~62_q\);

\Regs~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[9]~input_o\,
	ena => \Regs~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~126_q\);

\Regs~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[9]~input_o\,
	ena => \Regs~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~190_q\);

\Regs~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[9]~input_o\,
	ena => \Regs~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~254_q\);

\Regs~324\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~324_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~254_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~190_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~126_q\ ) ) ) # ( 
-- !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~62_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~62_q\,
	datab => \ALT_INV_Regs~126_q\,
	datac => \ALT_INV_Regs~190_q\,
	datad => \ALT_INV_Regs~254_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \Regs~324_combout\);

\Regs~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[9]~input_o\,
	ena => \Regs~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~78_q\);

\Regs~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[9]~input_o\,
	ena => \Regs~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~142_q\);

\Regs~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[9]~input_o\,
	ena => \Regs~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~206_q\);

\Regs~270\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[9]~input_o\,
	ena => \Regs~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~270_q\);

\Regs~325\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~325_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~270_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~206_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~142_q\ ) ) ) # ( 
-- !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~78_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~78_q\,
	datab => \ALT_INV_Regs~142_q\,
	datac => \ALT_INV_Regs~206_q\,
	datad => \ALT_INV_Regs~270_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \Regs~325_combout\);

\Regs~326\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~326_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~325_combout\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~324_combout\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( 
-- \Regs~323_combout\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~322_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~322_combout\,
	datab => \ALT_INV_Regs~323_combout\,
	datac => \ALT_INV_Regs~324_combout\,
	datad => \ALT_INV_Regs~325_combout\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \Regs~326_combout\);

\WriteData[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(10),
	o => \WriteData[10]~input_o\);

\Regs~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[10]~input_o\,
	ena => \Regs~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~31_q\);

\Regs~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[10]~input_o\,
	ena => \Regs~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~47_q\);

\Regs~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[10]~input_o\,
	ena => \Regs~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~63_q\);

\Regs~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[10]~input_o\,
	ena => \Regs~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~79_q\);

\Regs~327\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~327_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~79_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~63_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~47_q\ ) ) ) # ( 
-- !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~31_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~31_q\,
	datab => \ALT_INV_Regs~47_q\,
	datac => \ALT_INV_Regs~63_q\,
	datad => \ALT_INV_Regs~79_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \Regs~327_combout\);

\Regs~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[10]~input_o\,
	ena => \Regs~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~95_q\);

\Regs~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[10]~input_o\,
	ena => \Regs~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~111_q\);

\Regs~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[10]~input_o\,
	ena => \Regs~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~127_q\);

\Regs~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[10]~input_o\,
	ena => \Regs~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~143_q\);

\Regs~328\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~328_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~143_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~127_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~111_q\ ) ) ) # ( 
-- !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~95_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~95_q\,
	datab => \ALT_INV_Regs~111_q\,
	datac => \ALT_INV_Regs~127_q\,
	datad => \ALT_INV_Regs~143_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \Regs~328_combout\);

\Regs~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[10]~input_o\,
	ena => \Regs~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~159_q\);

\Regs~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[10]~input_o\,
	ena => \Regs~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~175_q\);

\Regs~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[10]~input_o\,
	ena => \Regs~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~191_q\);

\Regs~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[10]~input_o\,
	ena => \Regs~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~207_q\);

\Regs~329\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~329_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~207_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~191_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~175_q\ ) ) ) # ( 
-- !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~159_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~159_q\,
	datab => \ALT_INV_Regs~175_q\,
	datac => \ALT_INV_Regs~191_q\,
	datad => \ALT_INV_Regs~207_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \Regs~329_combout\);

\Regs~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[10]~input_o\,
	ena => \Regs~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~223_q\);

\Regs~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[10]~input_o\,
	ena => \Regs~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~239_q\);

\Regs~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[10]~input_o\,
	ena => \Regs~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~255_q\);

\Regs~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[10]~input_o\,
	ena => \Regs~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~271_q\);

\Regs~330\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~330_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~271_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~255_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~239_q\ ) ) ) # ( 
-- !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~223_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~223_q\,
	datab => \ALT_INV_Regs~239_q\,
	datac => \ALT_INV_Regs~255_q\,
	datad => \ALT_INV_Regs~271_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \Regs~330_combout\);

\Regs~331\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~331_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~330_combout\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~329_combout\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( 
-- \Regs~328_combout\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~327_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~327_combout\,
	datab => \ALT_INV_Regs~328_combout\,
	datac => \ALT_INV_Regs~329_combout\,
	datad => \ALT_INV_Regs~330_combout\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \Regs~331_combout\);

\WriteData[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(11),
	o => \WriteData[11]~input_o\);

\Regs~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[11]~input_o\,
	ena => \Regs~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~32_q\);

\Regs~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[11]~input_o\,
	ena => \Regs~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~96_q\);

\Regs~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[11]~input_o\,
	ena => \Regs~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~160_q\);

\Regs~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[11]~input_o\,
	ena => \Regs~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~224_q\);

\Regs~332\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~332_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~224_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~160_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~96_q\ ) ) ) # ( 
-- !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~32_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~32_q\,
	datab => \ALT_INV_Regs~96_q\,
	datac => \ALT_INV_Regs~160_q\,
	datad => \ALT_INV_Regs~224_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \Regs~332_combout\);

\Regs~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[11]~input_o\,
	ena => \Regs~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~48_q\);

\Regs~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[11]~input_o\,
	ena => \Regs~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~112_q\);

\Regs~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[11]~input_o\,
	ena => \Regs~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~176_q\);

\Regs~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[11]~input_o\,
	ena => \Regs~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~240_q\);

\Regs~333\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~333_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~240_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~176_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~112_q\ ) ) ) # ( 
-- !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~48_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~48_q\,
	datab => \ALT_INV_Regs~112_q\,
	datac => \ALT_INV_Regs~176_q\,
	datad => \ALT_INV_Regs~240_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \Regs~333_combout\);

\Regs~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[11]~input_o\,
	ena => \Regs~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~64_q\);

\Regs~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[11]~input_o\,
	ena => \Regs~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~128_q\);

\Regs~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[11]~input_o\,
	ena => \Regs~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~192_q\);

\Regs~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[11]~input_o\,
	ena => \Regs~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~256_q\);

\Regs~334\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~334_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~256_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~192_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~128_q\ ) ) ) # ( 
-- !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~64_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~64_q\,
	datab => \ALT_INV_Regs~128_q\,
	datac => \ALT_INV_Regs~192_q\,
	datad => \ALT_INV_Regs~256_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \Regs~334_combout\);

\Regs~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[11]~input_o\,
	ena => \Regs~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~80_q\);

\Regs~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[11]~input_o\,
	ena => \Regs~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~144_q\);

\Regs~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[11]~input_o\,
	ena => \Regs~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~208_q\);

\Regs~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[11]~input_o\,
	ena => \Regs~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~272_q\);

\Regs~335\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~335_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~272_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~208_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~144_q\ ) ) ) # ( 
-- !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~80_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~80_q\,
	datab => \ALT_INV_Regs~144_q\,
	datac => \ALT_INV_Regs~208_q\,
	datad => \ALT_INV_Regs~272_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \Regs~335_combout\);

\Regs~336\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~336_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~335_combout\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~334_combout\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( 
-- \Regs~333_combout\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~332_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~332_combout\,
	datab => \ALT_INV_Regs~333_combout\,
	datac => \ALT_INV_Regs~334_combout\,
	datad => \ALT_INV_Regs~335_combout\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \Regs~336_combout\);

\WriteData[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(12),
	o => \WriteData[12]~input_o\);

\Regs~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[12]~input_o\,
	ena => \Regs~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~33_q\);

\Regs~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[12]~input_o\,
	ena => \Regs~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~49_q\);

\Regs~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[12]~input_o\,
	ena => \Regs~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~65_q\);

\Regs~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[12]~input_o\,
	ena => \Regs~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~81_q\);

\Regs~337\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~337_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~81_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~65_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~49_q\ ) ) ) # ( 
-- !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~33_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~33_q\,
	datab => \ALT_INV_Regs~49_q\,
	datac => \ALT_INV_Regs~65_q\,
	datad => \ALT_INV_Regs~81_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \Regs~337_combout\);

\Regs~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[12]~input_o\,
	ena => \Regs~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~97_q\);

\Regs~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[12]~input_o\,
	ena => \Regs~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~113_q\);

\Regs~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[12]~input_o\,
	ena => \Regs~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~129_q\);

\Regs~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[12]~input_o\,
	ena => \Regs~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~145_q\);

\Regs~338\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~338_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~145_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~129_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~113_q\ ) ) ) # ( 
-- !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~97_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~97_q\,
	datab => \ALT_INV_Regs~113_q\,
	datac => \ALT_INV_Regs~129_q\,
	datad => \ALT_INV_Regs~145_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \Regs~338_combout\);

\Regs~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[12]~input_o\,
	ena => \Regs~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~161_q\);

\Regs~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[12]~input_o\,
	ena => \Regs~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~177_q\);

\Regs~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[12]~input_o\,
	ena => \Regs~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~193_q\);

\Regs~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[12]~input_o\,
	ena => \Regs~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~209_q\);

\Regs~339\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~339_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~209_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~193_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~177_q\ ) ) ) # ( 
-- !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~161_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~161_q\,
	datab => \ALT_INV_Regs~177_q\,
	datac => \ALT_INV_Regs~193_q\,
	datad => \ALT_INV_Regs~209_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \Regs~339_combout\);

\Regs~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[12]~input_o\,
	ena => \Regs~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~225_q\);

\Regs~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[12]~input_o\,
	ena => \Regs~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~241_q\);

\Regs~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[12]~input_o\,
	ena => \Regs~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~257_q\);

\Regs~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[12]~input_o\,
	ena => \Regs~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~273_q\);

\Regs~340\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~340_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~273_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~257_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~241_q\ ) ) ) # ( 
-- !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~225_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~225_q\,
	datab => \ALT_INV_Regs~241_q\,
	datac => \ALT_INV_Regs~257_q\,
	datad => \ALT_INV_Regs~273_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \Regs~340_combout\);

\Regs~341\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~341_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~340_combout\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~339_combout\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( 
-- \Regs~338_combout\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~337_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~337_combout\,
	datab => \ALT_INV_Regs~338_combout\,
	datac => \ALT_INV_Regs~339_combout\,
	datad => \ALT_INV_Regs~340_combout\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \Regs~341_combout\);

\WriteData[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(13),
	o => \WriteData[13]~input_o\);

\Regs~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[13]~input_o\,
	ena => \Regs~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~34_q\);

\Regs~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[13]~input_o\,
	ena => \Regs~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~98_q\);

\Regs~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[13]~input_o\,
	ena => \Regs~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~162_q\);

\Regs~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[13]~input_o\,
	ena => \Regs~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~226_q\);

\Regs~342\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~342_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~226_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~162_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~98_q\ ) ) ) # ( 
-- !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~34_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~34_q\,
	datab => \ALT_INV_Regs~98_q\,
	datac => \ALT_INV_Regs~162_q\,
	datad => \ALT_INV_Regs~226_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \Regs~342_combout\);

\Regs~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[13]~input_o\,
	ena => \Regs~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~50_q\);

\Regs~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[13]~input_o\,
	ena => \Regs~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~114_q\);

\Regs~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[13]~input_o\,
	ena => \Regs~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~178_q\);

\Regs~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[13]~input_o\,
	ena => \Regs~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~242_q\);

\Regs~343\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~343_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~242_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~178_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~114_q\ ) ) ) # ( 
-- !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~50_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~50_q\,
	datab => \ALT_INV_Regs~114_q\,
	datac => \ALT_INV_Regs~178_q\,
	datad => \ALT_INV_Regs~242_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \Regs~343_combout\);

\Regs~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[13]~input_o\,
	ena => \Regs~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~66_q\);

\Regs~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[13]~input_o\,
	ena => \Regs~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~130_q\);

\Regs~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[13]~input_o\,
	ena => \Regs~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~194_q\);

\Regs~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[13]~input_o\,
	ena => \Regs~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~258_q\);

\Regs~344\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~344_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~258_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~194_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~130_q\ ) ) ) # ( 
-- !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~66_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~66_q\,
	datab => \ALT_INV_Regs~130_q\,
	datac => \ALT_INV_Regs~194_q\,
	datad => \ALT_INV_Regs~258_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \Regs~344_combout\);

\Regs~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[13]~input_o\,
	ena => \Regs~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~82_q\);

\Regs~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[13]~input_o\,
	ena => \Regs~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~146_q\);

\Regs~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[13]~input_o\,
	ena => \Regs~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~210_q\);

\Regs~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[13]~input_o\,
	ena => \Regs~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~274_q\);

\Regs~345\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~345_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~274_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~210_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~146_q\ ) ) ) # ( 
-- !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~82_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~82_q\,
	datab => \ALT_INV_Regs~146_q\,
	datac => \ALT_INV_Regs~210_q\,
	datad => \ALT_INV_Regs~274_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \Regs~345_combout\);

\Regs~346\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~346_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~345_combout\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~344_combout\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( 
-- \Regs~343_combout\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~342_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~342_combout\,
	datab => \ALT_INV_Regs~343_combout\,
	datac => \ALT_INV_Regs~344_combout\,
	datad => \ALT_INV_Regs~345_combout\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \Regs~346_combout\);

\WriteData[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(14),
	o => \WriteData[14]~input_o\);

\Regs~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[14]~input_o\,
	ena => \Regs~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~35_q\);

\Regs~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[14]~input_o\,
	ena => \Regs~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~51_q\);

\Regs~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[14]~input_o\,
	ena => \Regs~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~67_q\);

\Regs~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[14]~input_o\,
	ena => \Regs~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~83_q\);

\Regs~347\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~347_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~83_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~67_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~51_q\ ) ) ) # ( 
-- !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~35_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~35_q\,
	datab => \ALT_INV_Regs~51_q\,
	datac => \ALT_INV_Regs~67_q\,
	datad => \ALT_INV_Regs~83_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \Regs~347_combout\);

\Regs~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[14]~input_o\,
	ena => \Regs~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~99_q\);

\Regs~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[14]~input_o\,
	ena => \Regs~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~115_q\);

\Regs~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[14]~input_o\,
	ena => \Regs~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~131_q\);

\Regs~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[14]~input_o\,
	ena => \Regs~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~147_q\);

\Regs~348\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~348_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~147_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~131_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~115_q\ ) ) ) # ( 
-- !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~99_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~99_q\,
	datab => \ALT_INV_Regs~115_q\,
	datac => \ALT_INV_Regs~131_q\,
	datad => \ALT_INV_Regs~147_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \Regs~348_combout\);

\Regs~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[14]~input_o\,
	ena => \Regs~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~163_q\);

\Regs~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[14]~input_o\,
	ena => \Regs~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~179_q\);

\Regs~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[14]~input_o\,
	ena => \Regs~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~195_q\);

\Regs~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[14]~input_o\,
	ena => \Regs~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~211_q\);

\Regs~349\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~349_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~211_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~195_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~179_q\ ) ) ) # ( 
-- !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~163_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~163_q\,
	datab => \ALT_INV_Regs~179_q\,
	datac => \ALT_INV_Regs~195_q\,
	datad => \ALT_INV_Regs~211_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \Regs~349_combout\);

\Regs~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[14]~input_o\,
	ena => \Regs~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~227_q\);

\Regs~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[14]~input_o\,
	ena => \Regs~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~243_q\);

\Regs~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[14]~input_o\,
	ena => \Regs~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~259_q\);

\Regs~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[14]~input_o\,
	ena => \Regs~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~275_q\);

\Regs~350\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~350_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~275_q\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~259_q\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~243_q\ ) ) ) # ( 
-- !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~227_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~227_q\,
	datab => \ALT_INV_Regs~243_q\,
	datac => \ALT_INV_Regs~259_q\,
	datad => \ALT_INV_Regs~275_q\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \Regs~350_combout\);

\Regs~351\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~351_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~350_combout\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~349_combout\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( 
-- \Regs~348_combout\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~347_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~347_combout\,
	datab => \ALT_INV_Regs~348_combout\,
	datac => \ALT_INV_Regs~349_combout\,
	datad => \ALT_INV_Regs~350_combout\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \Regs~351_combout\);

\WriteData[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WriteData(15),
	o => \WriteData[15]~input_o\);

\Regs~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[15]~input_o\,
	ena => \Regs~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~36_q\);

\Regs~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[15]~input_o\,
	ena => \Regs~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~100_q\);

\Regs~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[15]~input_o\,
	ena => \Regs~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~164_q\);

\Regs~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[15]~input_o\,
	ena => \Regs~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~228_q\);

\Regs~352\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~352_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~228_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~164_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~100_q\ ) ) ) # ( 
-- !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~36_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~36_q\,
	datab => \ALT_INV_Regs~100_q\,
	datac => \ALT_INV_Regs~164_q\,
	datad => \ALT_INV_Regs~228_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \Regs~352_combout\);

\Regs~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[15]~input_o\,
	ena => \Regs~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~52_q\);

\Regs~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[15]~input_o\,
	ena => \Regs~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~116_q\);

\Regs~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[15]~input_o\,
	ena => \Regs~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~180_q\);

\Regs~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[15]~input_o\,
	ena => \Regs~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~244_q\);

\Regs~353\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~353_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~244_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~180_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~116_q\ ) ) ) # ( 
-- !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~52_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~52_q\,
	datab => \ALT_INV_Regs~116_q\,
	datac => \ALT_INV_Regs~180_q\,
	datad => \ALT_INV_Regs~244_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \Regs~353_combout\);

\Regs~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[15]~input_o\,
	ena => \Regs~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~68_q\);

\Regs~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[15]~input_o\,
	ena => \Regs~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~132_q\);

\Regs~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[15]~input_o\,
	ena => \Regs~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~196_q\);

\Regs~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[15]~input_o\,
	ena => \Regs~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~260_q\);

\Regs~354\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~354_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~260_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~196_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~132_q\ ) ) ) # ( 
-- !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~68_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~68_q\,
	datab => \ALT_INV_Regs~132_q\,
	datac => \ALT_INV_Regs~196_q\,
	datad => \ALT_INV_Regs~260_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \Regs~354_combout\);

\Regs~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[15]~input_o\,
	ena => \Regs~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~84_q\);

\Regs~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[15]~input_o\,
	ena => \Regs~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~148_q\);

\Regs~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[15]~input_o\,
	ena => \Regs~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~212_q\);

\Regs~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RegWrite~input_o\,
	d => \WriteData[15]~input_o\,
	ena => \Regs~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Regs~276_q\);

\Regs~355\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~355_combout\ = ( \ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~276_q\ ) ) ) # ( !\ReadReg1[2]~input_o\ & ( \ReadReg1[3]~input_o\ & ( \Regs~212_q\ ) ) ) # ( \ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~148_q\ ) ) ) # ( 
-- !\ReadReg1[2]~input_o\ & ( !\ReadReg1[3]~input_o\ & ( \Regs~84_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~84_q\,
	datab => \ALT_INV_Regs~148_q\,
	datac => \ALT_INV_Regs~212_q\,
	datad => \ALT_INV_Regs~276_q\,
	datae => \ALT_INV_ReadReg1[2]~input_o\,
	dataf => \ALT_INV_ReadReg1[3]~input_o\,
	combout => \Regs~355_combout\);

\Regs~356\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~356_combout\ = ( \ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~355_combout\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( \ReadReg1[1]~input_o\ & ( \Regs~354_combout\ ) ) ) # ( \ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( 
-- \Regs~353_combout\ ) ) ) # ( !\ReadReg1[0]~input_o\ & ( !\ReadReg1[1]~input_o\ & ( \Regs~352_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~352_combout\,
	datab => \ALT_INV_Regs~353_combout\,
	datac => \ALT_INV_Regs~354_combout\,
	datad => \ALT_INV_Regs~355_combout\,
	datae => \ALT_INV_ReadReg1[0]~input_o\,
	dataf => \ALT_INV_ReadReg1[1]~input_o\,
	combout => \Regs~356_combout\);

\ReadReg2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ReadReg2(0),
	o => \ReadReg2[0]~input_o\);

\ReadReg2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ReadReg2(1),
	o => \ReadReg2[1]~input_o\);

\Regs~357\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~357_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~69_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~53_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~37_q\ ) ) ) # ( 
-- !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~21_q\,
	datab => \ALT_INV_Regs~37_q\,
	datac => \ALT_INV_Regs~53_q\,
	datad => \ALT_INV_Regs~69_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \Regs~357_combout\);

\Regs~358\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~358_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~133_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~117_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~101_q\ ) ) ) # ( 
-- !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~85_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~85_q\,
	datab => \ALT_INV_Regs~101_q\,
	datac => \ALT_INV_Regs~117_q\,
	datad => \ALT_INV_Regs~133_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \Regs~358_combout\);

\Regs~359\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~359_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~197_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~181_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~165_q\ ) ) ) # ( 
-- !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~149_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~149_q\,
	datab => \ALT_INV_Regs~165_q\,
	datac => \ALT_INV_Regs~181_q\,
	datad => \ALT_INV_Regs~197_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \Regs~359_combout\);

\Regs~360\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~360_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~261_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~245_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~229_q\ ) ) ) # ( 
-- !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~213_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~213_q\,
	datab => \ALT_INV_Regs~229_q\,
	datac => \ALT_INV_Regs~245_q\,
	datad => \ALT_INV_Regs~261_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \Regs~360_combout\);

\ReadReg2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ReadReg2(2),
	o => \ReadReg2[2]~input_o\);

\ReadReg2[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ReadReg2(3),
	o => \ReadReg2[3]~input_o\);

\Regs~361\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~361_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~360_combout\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~359_combout\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( 
-- \Regs~358_combout\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~357_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~357_combout\,
	datab => \ALT_INV_Regs~358_combout\,
	datac => \ALT_INV_Regs~359_combout\,
	datad => \ALT_INV_Regs~360_combout\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \Regs~361_combout\);

\Regs~362\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~362_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~214_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~150_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~86_q\ ) ) ) # ( 
-- !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~22_q\,
	datab => \ALT_INV_Regs~86_q\,
	datac => \ALT_INV_Regs~150_q\,
	datad => \ALT_INV_Regs~214_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \Regs~362_combout\);

\Regs~363\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~363_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~230_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~166_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~102_q\ ) ) ) # ( 
-- !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~38_q\,
	datab => \ALT_INV_Regs~102_q\,
	datac => \ALT_INV_Regs~166_q\,
	datad => \ALT_INV_Regs~230_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \Regs~363_combout\);

\Regs~364\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~364_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~246_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~182_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~118_q\ ) ) ) # ( 
-- !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~54_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~54_q\,
	datab => \ALT_INV_Regs~118_q\,
	datac => \ALT_INV_Regs~182_q\,
	datad => \ALT_INV_Regs~246_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \Regs~364_combout\);

\Regs~365\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~365_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~262_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~198_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~134_q\ ) ) ) # ( 
-- !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~70_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~70_q\,
	datab => \ALT_INV_Regs~134_q\,
	datac => \ALT_INV_Regs~198_q\,
	datad => \ALT_INV_Regs~262_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \Regs~365_combout\);

\Regs~366\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~366_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~365_combout\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~364_combout\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( 
-- \Regs~363_combout\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~362_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~362_combout\,
	datab => \ALT_INV_Regs~363_combout\,
	datac => \ALT_INV_Regs~364_combout\,
	datad => \ALT_INV_Regs~365_combout\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \Regs~366_combout\);

\Regs~367\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~367_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~71_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~55_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~39_q\ ) ) ) # ( 
-- !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~23_q\,
	datab => \ALT_INV_Regs~39_q\,
	datac => \ALT_INV_Regs~55_q\,
	datad => \ALT_INV_Regs~71_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \Regs~367_combout\);

\Regs~368\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~368_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~135_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~119_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~103_q\ ) ) ) # ( 
-- !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~87_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~87_q\,
	datab => \ALT_INV_Regs~103_q\,
	datac => \ALT_INV_Regs~119_q\,
	datad => \ALT_INV_Regs~135_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \Regs~368_combout\);

\Regs~369\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~369_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~199_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~183_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~167_q\ ) ) ) # ( 
-- !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~151_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~151_q\,
	datab => \ALT_INV_Regs~167_q\,
	datac => \ALT_INV_Regs~183_q\,
	datad => \ALT_INV_Regs~199_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \Regs~369_combout\);

\Regs~370\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~370_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~263_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~247_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~231_q\ ) ) ) # ( 
-- !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~215_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~215_q\,
	datab => \ALT_INV_Regs~231_q\,
	datac => \ALT_INV_Regs~247_q\,
	datad => \ALT_INV_Regs~263_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \Regs~370_combout\);

\Regs~371\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~371_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~370_combout\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~369_combout\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( 
-- \Regs~368_combout\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~367_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~367_combout\,
	datab => \ALT_INV_Regs~368_combout\,
	datac => \ALT_INV_Regs~369_combout\,
	datad => \ALT_INV_Regs~370_combout\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \Regs~371_combout\);

\Regs~372\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~372_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~216_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~152_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~88_q\ ) ) ) # ( 
-- !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~24_q\,
	datab => \ALT_INV_Regs~88_q\,
	datac => \ALT_INV_Regs~152_q\,
	datad => \ALT_INV_Regs~216_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \Regs~372_combout\);

\Regs~373\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~373_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~232_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~168_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~104_q\ ) ) ) # ( 
-- !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~40_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~40_q\,
	datab => \ALT_INV_Regs~104_q\,
	datac => \ALT_INV_Regs~168_q\,
	datad => \ALT_INV_Regs~232_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \Regs~373_combout\);

\Regs~374\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~374_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~248_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~184_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~120_q\ ) ) ) # ( 
-- !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~56_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~56_q\,
	datab => \ALT_INV_Regs~120_q\,
	datac => \ALT_INV_Regs~184_q\,
	datad => \ALT_INV_Regs~248_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \Regs~374_combout\);

\Regs~375\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~375_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~264_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~200_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~136_q\ ) ) ) # ( 
-- !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~72_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~72_q\,
	datab => \ALT_INV_Regs~136_q\,
	datac => \ALT_INV_Regs~200_q\,
	datad => \ALT_INV_Regs~264_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \Regs~375_combout\);

\Regs~376\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~376_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~375_combout\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~374_combout\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( 
-- \Regs~373_combout\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~372_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~372_combout\,
	datab => \ALT_INV_Regs~373_combout\,
	datac => \ALT_INV_Regs~374_combout\,
	datad => \ALT_INV_Regs~375_combout\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \Regs~376_combout\);

\Regs~377\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~377_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~73_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~57_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~41_q\ ) ) ) # ( 
-- !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~25_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~25_q\,
	datab => \ALT_INV_Regs~41_q\,
	datac => \ALT_INV_Regs~57_q\,
	datad => \ALT_INV_Regs~73_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \Regs~377_combout\);

\Regs~378\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~378_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~137_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~121_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~105_q\ ) ) ) # ( 
-- !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~89_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~89_q\,
	datab => \ALT_INV_Regs~105_q\,
	datac => \ALT_INV_Regs~121_q\,
	datad => \ALT_INV_Regs~137_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \Regs~378_combout\);

\Regs~379\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~379_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~201_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~185_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~169_q\ ) ) ) # ( 
-- !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~153_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~153_q\,
	datab => \ALT_INV_Regs~169_q\,
	datac => \ALT_INV_Regs~185_q\,
	datad => \ALT_INV_Regs~201_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \Regs~379_combout\);

\Regs~380\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~380_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~265_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~249_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~233_q\ ) ) ) # ( 
-- !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~217_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~217_q\,
	datab => \ALT_INV_Regs~233_q\,
	datac => \ALT_INV_Regs~249_q\,
	datad => \ALT_INV_Regs~265_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \Regs~380_combout\);

\Regs~381\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~381_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~380_combout\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~379_combout\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( 
-- \Regs~378_combout\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~377_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~377_combout\,
	datab => \ALT_INV_Regs~378_combout\,
	datac => \ALT_INV_Regs~379_combout\,
	datad => \ALT_INV_Regs~380_combout\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \Regs~381_combout\);

\Regs~382\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~382_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~218_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~154_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~90_q\ ) ) ) # ( 
-- !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~26_q\,
	datab => \ALT_INV_Regs~90_q\,
	datac => \ALT_INV_Regs~154_q\,
	datad => \ALT_INV_Regs~218_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \Regs~382_combout\);

\Regs~383\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~383_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~234_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~170_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~106_q\ ) ) ) # ( 
-- !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~42_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~42_q\,
	datab => \ALT_INV_Regs~106_q\,
	datac => \ALT_INV_Regs~170_q\,
	datad => \ALT_INV_Regs~234_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \Regs~383_combout\);

\Regs~384\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~384_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~250_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~186_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~122_q\ ) ) ) # ( 
-- !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~58_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~58_q\,
	datab => \ALT_INV_Regs~122_q\,
	datac => \ALT_INV_Regs~186_q\,
	datad => \ALT_INV_Regs~250_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \Regs~384_combout\);

\Regs~385\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~385_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~266_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~202_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~138_q\ ) ) ) # ( 
-- !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~74_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~74_q\,
	datab => \ALT_INV_Regs~138_q\,
	datac => \ALT_INV_Regs~202_q\,
	datad => \ALT_INV_Regs~266_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \Regs~385_combout\);

\Regs~386\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~386_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~385_combout\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~384_combout\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( 
-- \Regs~383_combout\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~382_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~382_combout\,
	datab => \ALT_INV_Regs~383_combout\,
	datac => \ALT_INV_Regs~384_combout\,
	datad => \ALT_INV_Regs~385_combout\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \Regs~386_combout\);

\Regs~387\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~387_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~75_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~59_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~43_q\ ) ) ) # ( 
-- !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~27_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~27_q\,
	datab => \ALT_INV_Regs~43_q\,
	datac => \ALT_INV_Regs~59_q\,
	datad => \ALT_INV_Regs~75_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \Regs~387_combout\);

\Regs~388\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~388_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~139_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~123_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~107_q\ ) ) ) # ( 
-- !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~91_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~91_q\,
	datab => \ALT_INV_Regs~107_q\,
	datac => \ALT_INV_Regs~123_q\,
	datad => \ALT_INV_Regs~139_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \Regs~388_combout\);

\Regs~389\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~389_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~203_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~187_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~171_q\ ) ) ) # ( 
-- !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~155_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~155_q\,
	datab => \ALT_INV_Regs~171_q\,
	datac => \ALT_INV_Regs~187_q\,
	datad => \ALT_INV_Regs~203_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \Regs~389_combout\);

\Regs~390\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~390_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~267_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~251_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~235_q\ ) ) ) # ( 
-- !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~219_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~219_q\,
	datab => \ALT_INV_Regs~235_q\,
	datac => \ALT_INV_Regs~251_q\,
	datad => \ALT_INV_Regs~267_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \Regs~390_combout\);

\Regs~391\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~391_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~390_combout\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~389_combout\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( 
-- \Regs~388_combout\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~387_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~387_combout\,
	datab => \ALT_INV_Regs~388_combout\,
	datac => \ALT_INV_Regs~389_combout\,
	datad => \ALT_INV_Regs~390_combout\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \Regs~391_combout\);

\Regs~392\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~392_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~220_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~156_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~92_q\ ) ) ) # ( 
-- !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~28_q\,
	datab => \ALT_INV_Regs~92_q\,
	datac => \ALT_INV_Regs~156_q\,
	datad => \ALT_INV_Regs~220_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \Regs~392_combout\);

\Regs~393\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~393_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~236_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~172_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~108_q\ ) ) ) # ( 
-- !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~44_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~44_q\,
	datab => \ALT_INV_Regs~108_q\,
	datac => \ALT_INV_Regs~172_q\,
	datad => \ALT_INV_Regs~236_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \Regs~393_combout\);

\Regs~394\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~394_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~252_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~188_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~124_q\ ) ) ) # ( 
-- !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~60_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~60_q\,
	datab => \ALT_INV_Regs~124_q\,
	datac => \ALT_INV_Regs~188_q\,
	datad => \ALT_INV_Regs~252_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \Regs~394_combout\);

\Regs~395\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~395_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~268_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~204_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~140_q\ ) ) ) # ( 
-- !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~76_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~76_q\,
	datab => \ALT_INV_Regs~140_q\,
	datac => \ALT_INV_Regs~204_q\,
	datad => \ALT_INV_Regs~268_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \Regs~395_combout\);

\Regs~396\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~396_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~395_combout\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~394_combout\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( 
-- \Regs~393_combout\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~392_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~392_combout\,
	datab => \ALT_INV_Regs~393_combout\,
	datac => \ALT_INV_Regs~394_combout\,
	datad => \ALT_INV_Regs~395_combout\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \Regs~396_combout\);

\Regs~397\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~397_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~77_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~61_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~45_q\ ) ) ) # ( 
-- !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~29_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~29_q\,
	datab => \ALT_INV_Regs~45_q\,
	datac => \ALT_INV_Regs~61_q\,
	datad => \ALT_INV_Regs~77_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \Regs~397_combout\);

\Regs~398\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~398_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~141_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~125_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~109_q\ ) ) ) # ( 
-- !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~93_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~93_q\,
	datab => \ALT_INV_Regs~109_q\,
	datac => \ALT_INV_Regs~125_q\,
	datad => \ALT_INV_Regs~141_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \Regs~398_combout\);

\Regs~399\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~399_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~205_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~189_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~173_q\ ) ) ) # ( 
-- !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~157_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~157_q\,
	datab => \ALT_INV_Regs~173_q\,
	datac => \ALT_INV_Regs~189_q\,
	datad => \ALT_INV_Regs~205_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \Regs~399_combout\);

\Regs~400\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~400_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~269_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~253_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~237_q\ ) ) ) # ( 
-- !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~221_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~221_q\,
	datab => \ALT_INV_Regs~237_q\,
	datac => \ALT_INV_Regs~253_q\,
	datad => \ALT_INV_Regs~269_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \Regs~400_combout\);

\Regs~401\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~401_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~400_combout\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~399_combout\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( 
-- \Regs~398_combout\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~397_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~397_combout\,
	datab => \ALT_INV_Regs~398_combout\,
	datac => \ALT_INV_Regs~399_combout\,
	datad => \ALT_INV_Regs~400_combout\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \Regs~401_combout\);

\Regs~402\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~402_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~222_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~158_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~94_q\ ) ) ) # ( 
-- !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~30_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~30_q\,
	datab => \ALT_INV_Regs~94_q\,
	datac => \ALT_INV_Regs~158_q\,
	datad => \ALT_INV_Regs~222_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \Regs~402_combout\);

\Regs~403\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~403_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~238_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~174_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~110_q\ ) ) ) # ( 
-- !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~46_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~46_q\,
	datab => \ALT_INV_Regs~110_q\,
	datac => \ALT_INV_Regs~174_q\,
	datad => \ALT_INV_Regs~238_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \Regs~403_combout\);

\Regs~404\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~404_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~254_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~190_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~126_q\ ) ) ) # ( 
-- !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~62_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~62_q\,
	datab => \ALT_INV_Regs~126_q\,
	datac => \ALT_INV_Regs~190_q\,
	datad => \ALT_INV_Regs~254_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \Regs~404_combout\);

\Regs~405\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~405_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~270_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~206_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~142_q\ ) ) ) # ( 
-- !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~78_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~78_q\,
	datab => \ALT_INV_Regs~142_q\,
	datac => \ALT_INV_Regs~206_q\,
	datad => \ALT_INV_Regs~270_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \Regs~405_combout\);

\Regs~406\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~406_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~405_combout\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~404_combout\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( 
-- \Regs~403_combout\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~402_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~402_combout\,
	datab => \ALT_INV_Regs~403_combout\,
	datac => \ALT_INV_Regs~404_combout\,
	datad => \ALT_INV_Regs~405_combout\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \Regs~406_combout\);

\Regs~407\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~407_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~79_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~63_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~47_q\ ) ) ) # ( 
-- !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~31_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~31_q\,
	datab => \ALT_INV_Regs~47_q\,
	datac => \ALT_INV_Regs~63_q\,
	datad => \ALT_INV_Regs~79_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \Regs~407_combout\);

\Regs~408\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~408_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~143_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~127_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~111_q\ ) ) ) # ( 
-- !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~95_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~95_q\,
	datab => \ALT_INV_Regs~111_q\,
	datac => \ALT_INV_Regs~127_q\,
	datad => \ALT_INV_Regs~143_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \Regs~408_combout\);

\Regs~409\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~409_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~207_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~191_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~175_q\ ) ) ) # ( 
-- !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~159_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~159_q\,
	datab => \ALT_INV_Regs~175_q\,
	datac => \ALT_INV_Regs~191_q\,
	datad => \ALT_INV_Regs~207_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \Regs~409_combout\);

\Regs~410\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~410_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~271_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~255_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~239_q\ ) ) ) # ( 
-- !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~223_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~223_q\,
	datab => \ALT_INV_Regs~239_q\,
	datac => \ALT_INV_Regs~255_q\,
	datad => \ALT_INV_Regs~271_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \Regs~410_combout\);

\Regs~411\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~411_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~410_combout\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~409_combout\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( 
-- \Regs~408_combout\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~407_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~407_combout\,
	datab => \ALT_INV_Regs~408_combout\,
	datac => \ALT_INV_Regs~409_combout\,
	datad => \ALT_INV_Regs~410_combout\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \Regs~411_combout\);

\Regs~412\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~412_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~224_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~160_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~96_q\ ) ) ) # ( 
-- !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~32_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~32_q\,
	datab => \ALT_INV_Regs~96_q\,
	datac => \ALT_INV_Regs~160_q\,
	datad => \ALT_INV_Regs~224_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \Regs~412_combout\);

\Regs~413\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~413_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~240_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~176_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~112_q\ ) ) ) # ( 
-- !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~48_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~48_q\,
	datab => \ALT_INV_Regs~112_q\,
	datac => \ALT_INV_Regs~176_q\,
	datad => \ALT_INV_Regs~240_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \Regs~413_combout\);

\Regs~414\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~414_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~256_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~192_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~128_q\ ) ) ) # ( 
-- !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~64_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~64_q\,
	datab => \ALT_INV_Regs~128_q\,
	datac => \ALT_INV_Regs~192_q\,
	datad => \ALT_INV_Regs~256_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \Regs~414_combout\);

\Regs~415\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~415_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~272_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~208_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~144_q\ ) ) ) # ( 
-- !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~80_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~80_q\,
	datab => \ALT_INV_Regs~144_q\,
	datac => \ALT_INV_Regs~208_q\,
	datad => \ALT_INV_Regs~272_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \Regs~415_combout\);

\Regs~416\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~416_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~415_combout\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~414_combout\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( 
-- \Regs~413_combout\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~412_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~412_combout\,
	datab => \ALT_INV_Regs~413_combout\,
	datac => \ALT_INV_Regs~414_combout\,
	datad => \ALT_INV_Regs~415_combout\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \Regs~416_combout\);

\Regs~417\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~417_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~81_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~65_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~49_q\ ) ) ) # ( 
-- !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~33_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~33_q\,
	datab => \ALT_INV_Regs~49_q\,
	datac => \ALT_INV_Regs~65_q\,
	datad => \ALT_INV_Regs~81_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \Regs~417_combout\);

\Regs~418\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~418_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~145_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~129_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~113_q\ ) ) ) # ( 
-- !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~97_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~97_q\,
	datab => \ALT_INV_Regs~113_q\,
	datac => \ALT_INV_Regs~129_q\,
	datad => \ALT_INV_Regs~145_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \Regs~418_combout\);

\Regs~419\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~419_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~209_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~193_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~177_q\ ) ) ) # ( 
-- !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~161_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~161_q\,
	datab => \ALT_INV_Regs~177_q\,
	datac => \ALT_INV_Regs~193_q\,
	datad => \ALT_INV_Regs~209_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \Regs~419_combout\);

\Regs~420\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~420_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~273_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~257_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~241_q\ ) ) ) # ( 
-- !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~225_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~225_q\,
	datab => \ALT_INV_Regs~241_q\,
	datac => \ALT_INV_Regs~257_q\,
	datad => \ALT_INV_Regs~273_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \Regs~420_combout\);

\Regs~421\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~421_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~420_combout\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~419_combout\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( 
-- \Regs~418_combout\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~417_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~417_combout\,
	datab => \ALT_INV_Regs~418_combout\,
	datac => \ALT_INV_Regs~419_combout\,
	datad => \ALT_INV_Regs~420_combout\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \Regs~421_combout\);

\Regs~422\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~422_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~226_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~162_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~98_q\ ) ) ) # ( 
-- !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~34_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~34_q\,
	datab => \ALT_INV_Regs~98_q\,
	datac => \ALT_INV_Regs~162_q\,
	datad => \ALT_INV_Regs~226_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \Regs~422_combout\);

\Regs~423\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~423_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~242_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~178_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~114_q\ ) ) ) # ( 
-- !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~50_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~50_q\,
	datab => \ALT_INV_Regs~114_q\,
	datac => \ALT_INV_Regs~178_q\,
	datad => \ALT_INV_Regs~242_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \Regs~423_combout\);

\Regs~424\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~424_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~258_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~194_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~130_q\ ) ) ) # ( 
-- !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~66_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~66_q\,
	datab => \ALT_INV_Regs~130_q\,
	datac => \ALT_INV_Regs~194_q\,
	datad => \ALT_INV_Regs~258_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \Regs~424_combout\);

\Regs~425\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~425_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~274_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~210_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~146_q\ ) ) ) # ( 
-- !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~82_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~82_q\,
	datab => \ALT_INV_Regs~146_q\,
	datac => \ALT_INV_Regs~210_q\,
	datad => \ALT_INV_Regs~274_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \Regs~425_combout\);

\Regs~426\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~426_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~425_combout\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~424_combout\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( 
-- \Regs~423_combout\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~422_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~422_combout\,
	datab => \ALT_INV_Regs~423_combout\,
	datac => \ALT_INV_Regs~424_combout\,
	datad => \ALT_INV_Regs~425_combout\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \Regs~426_combout\);

\Regs~427\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~427_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~83_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~67_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~51_q\ ) ) ) # ( 
-- !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~35_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~35_q\,
	datab => \ALT_INV_Regs~51_q\,
	datac => \ALT_INV_Regs~67_q\,
	datad => \ALT_INV_Regs~83_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \Regs~427_combout\);

\Regs~428\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~428_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~147_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~131_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~115_q\ ) ) ) # ( 
-- !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~99_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~99_q\,
	datab => \ALT_INV_Regs~115_q\,
	datac => \ALT_INV_Regs~131_q\,
	datad => \ALT_INV_Regs~147_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \Regs~428_combout\);

\Regs~429\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~429_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~211_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~195_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~179_q\ ) ) ) # ( 
-- !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~163_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~163_q\,
	datab => \ALT_INV_Regs~179_q\,
	datac => \ALT_INV_Regs~195_q\,
	datad => \ALT_INV_Regs~211_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \Regs~429_combout\);

\Regs~430\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~430_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~275_q\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~259_q\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~243_q\ ) ) ) # ( 
-- !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~227_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~227_q\,
	datab => \ALT_INV_Regs~243_q\,
	datac => \ALT_INV_Regs~259_q\,
	datad => \ALT_INV_Regs~275_q\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \Regs~430_combout\);

\Regs~431\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~431_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~430_combout\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~429_combout\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( 
-- \Regs~428_combout\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~427_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~427_combout\,
	datab => \ALT_INV_Regs~428_combout\,
	datac => \ALT_INV_Regs~429_combout\,
	datad => \ALT_INV_Regs~430_combout\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \Regs~431_combout\);

\Regs~432\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~432_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~228_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~164_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~100_q\ ) ) ) # ( 
-- !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~36_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~36_q\,
	datab => \ALT_INV_Regs~100_q\,
	datac => \ALT_INV_Regs~164_q\,
	datad => \ALT_INV_Regs~228_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \Regs~432_combout\);

\Regs~433\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~433_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~244_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~180_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~116_q\ ) ) ) # ( 
-- !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~52_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~52_q\,
	datab => \ALT_INV_Regs~116_q\,
	datac => \ALT_INV_Regs~180_q\,
	datad => \ALT_INV_Regs~244_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \Regs~433_combout\);

\Regs~434\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~434_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~260_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~196_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~132_q\ ) ) ) # ( 
-- !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~68_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~68_q\,
	datab => \ALT_INV_Regs~132_q\,
	datac => \ALT_INV_Regs~196_q\,
	datad => \ALT_INV_Regs~260_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \Regs~434_combout\);

\Regs~435\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~435_combout\ = ( \ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~276_q\ ) ) ) # ( !\ReadReg2[2]~input_o\ & ( \ReadReg2[3]~input_o\ & ( \Regs~212_q\ ) ) ) # ( \ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~148_q\ ) ) ) # ( 
-- !\ReadReg2[2]~input_o\ & ( !\ReadReg2[3]~input_o\ & ( \Regs~84_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~84_q\,
	datab => \ALT_INV_Regs~148_q\,
	datac => \ALT_INV_Regs~212_q\,
	datad => \ALT_INV_Regs~276_q\,
	datae => \ALT_INV_ReadReg2[2]~input_o\,
	dataf => \ALT_INV_ReadReg2[3]~input_o\,
	combout => \Regs~435_combout\);

\Regs~436\ : cyclonev_lcell_comb
-- Equation(s):
-- \Regs~436_combout\ = ( \ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~435_combout\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( \ReadReg2[1]~input_o\ & ( \Regs~434_combout\ ) ) ) # ( \ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( 
-- \Regs~433_combout\ ) ) ) # ( !\ReadReg2[0]~input_o\ & ( !\ReadReg2[1]~input_o\ & ( \Regs~432_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Regs~432_combout\,
	datab => \ALT_INV_Regs~433_combout\,
	datac => \ALT_INV_Regs~434_combout\,
	datad => \ALT_INV_Regs~435_combout\,
	datae => \ALT_INV_ReadReg2[0]~input_o\,
	dataf => \ALT_INV_ReadReg2[1]~input_o\,
	combout => \Regs~436_combout\);

ww_RegA(0) <= \RegA[0]~output_o\;

ww_RegA(1) <= \RegA[1]~output_o\;

ww_RegA(2) <= \RegA[2]~output_o\;

ww_RegA(3) <= \RegA[3]~output_o\;

ww_RegA(4) <= \RegA[4]~output_o\;

ww_RegA(5) <= \RegA[5]~output_o\;

ww_RegA(6) <= \RegA[6]~output_o\;

ww_RegA(7) <= \RegA[7]~output_o\;

ww_RegA(8) <= \RegA[8]~output_o\;

ww_RegA(9) <= \RegA[9]~output_o\;

ww_RegA(10) <= \RegA[10]~output_o\;

ww_RegA(11) <= \RegA[11]~output_o\;

ww_RegA(12) <= \RegA[12]~output_o\;

ww_RegA(13) <= \RegA[13]~output_o\;

ww_RegA(14) <= \RegA[14]~output_o\;

ww_RegA(15) <= \RegA[15]~output_o\;

ww_RegB(0) <= \RegB[0]~output_o\;

ww_RegB(1) <= \RegB[1]~output_o\;

ww_RegB(2) <= \RegB[2]~output_o\;

ww_RegB(3) <= \RegB[3]~output_o\;

ww_RegB(4) <= \RegB[4]~output_o\;

ww_RegB(5) <= \RegB[5]~output_o\;

ww_RegB(6) <= \RegB[6]~output_o\;

ww_RegB(7) <= \RegB[7]~output_o\;

ww_RegB(8) <= \RegB[8]~output_o\;

ww_RegB(9) <= \RegB[9]~output_o\;

ww_RegB(10) <= \RegB[10]~output_o\;

ww_RegB(11) <= \RegB[11]~output_o\;

ww_RegB(12) <= \RegB[12]~output_o\;

ww_RegB(13) <= \RegB[13]~output_o\;

ww_RegB(14) <= \RegB[14]~output_o\;

ww_RegB(15) <= \RegB[15]~output_o\;
END structure;


