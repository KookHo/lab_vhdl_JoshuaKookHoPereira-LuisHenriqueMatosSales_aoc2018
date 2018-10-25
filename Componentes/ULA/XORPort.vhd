library ieee;
use ieee.std_logic_1164.all;

entity XORPort is port
	(
		EA, EB: in STD_LOGIC;
		SAIDA: out STD_LOGIC
	);
end XORPort;

ARCHITECTURE behavior of XORPort is

component ANDPort
	port (A: in STD_LOGIC;
			B: in STD_LOGIC;
			S: out STD_LOGIC
			);
end component;

component ORPort
	port (A: in STD_LOGIC;
			B: in STD_LOGIC;
			S: out STD_LOGIC
			);
end component;

component NOTPort
	port(A: in STD_LOGIC;
		  S: out STD_LOGIC
		  );
end component;

signal SAND: STD_LOGIC;
signal SAND2: STD_LOGIC;
signal AN: STD_LOGIC;
signal BN: STD_LOGIC;

begin
	G1: NOTPort port map (EA , AN); 
	G2: ANDPort port map (AN, EB, SAND);
	G3: NOTPort port map (EB, BN);
	G4: ANDPort port map (EA, BN, SAND2);
	G5: ORPort port map (SAND, SAND2, SAIDA);
end;