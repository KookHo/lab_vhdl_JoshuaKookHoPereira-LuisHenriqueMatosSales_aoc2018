library ieee;
use ieee.std_logic_1164.all;

entity ContadorSinc is port
	(
	 A, B, Clock: in std_logic;
	 S0, S1, S2: out std_logic
	);
end ContadorSinc;

architecture behavior of ContadorSinc is

component JK
	port(J,K,clock: in std_logic;
		  Q1: out std_logic
		 );
end component;

component portaAND
	port(	A: in STD_LOGIC;
			B: in STD_LOGIC;
			SA: out STD_LOGIC
		 );
end component;

signal jk1: std_logic;
signal jk2: std_logic;
signal and1: std_logic;

begin
	G1: JK port map (A, B, Clock, jk1);
	G2: JK port map (jk1, jk1, Clock, jk2);
	G3: portaAND port map (jk1, jk2, and1);
	G4: JK port map (and1, and1, Clock, S2);
	S0 <= jk1;
	S1 <= jk2;
end;