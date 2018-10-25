library ieee;
use ieee.std_logic_1164.all;

entity XXOR is port
	(
		EA, EB: in STD_LOGIC;
		SAIDA: out STD_LOGIC
	);
end XXOR;

ARCHITECTURE behavior of XXOR is

component PortaAND
	port (A: in STD_LOGIC;
			B: in STD_LOGIC;
			SA: out STD_LOGIC
			);
end component;

component PortaOR
	port (A: in STD_LOGIC;
			B: in STD_LOGIC;
			S: out STD_LOGIC
			);
end component;

component PortaNOT
	port(A: in STD_LOGIC;
		  S: out STD_LOGIC
		  );
end component;

signal SAND: STD_LOGIC;
signal SAND2: STD_LOGIC;
signal AN: STD_LOGIC;
signal BN: STD_LOGIC;

begin
	G1: PortaNOT port map (EA , AN); 
	G2: PortaAND port map (AN, EB, SAND);
	G3: PortaNOT port map (EB, BN);
	G4: PortaAND port map (EA, BN, SAND2);
	G5: PortaOR port map (SAND, SAND2, SAIDA);
end;