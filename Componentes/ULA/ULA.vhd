library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.ALL;

Entity ULA is port
	(
	 RegA: in std_logic_vector (15 downto 0);
	 RegB: in std_logic_vector (15 downto 0);
	 ULAOP: in std_logic_vector (3 downto 0);
	 SaidaULA: out std_logic_vector (15 downto 0);
	 Zero: out std_logic
	);
end ULA;

ARCHITECTURE behavior of ULA is

component ANDPort
	port (A: in STD_LOGIC;
			B: in STD_LOGIC;
			S: out STD_LOGIC
			);
end component;

component ORPort
	port(A: in STD_LOGIC;
		  B: in STD_LOGIC;
		  S: out STD_LOGIC
		 );
end component;

component NOTPort
	port(A: in STD_LOGIC;
		  S: out STD_LOGIC
		 );
end component;

component XORPort
	port(EA, EB: in STD_LOGIC;
		  SAIDA: out STD_LOGIC
		 );
end component;

component Adder16Bits
	port(A,B: in std_logic_vector(15 downto 0);
		  C: out std_logic_vector(15 downto 0)
	    );
end component;

component Subtractor
	port(A,B: in std_logic_vector(15 downto 0);
		  C: out std_logic_vector(15 downto 0)
	    );
end component;

component NANDPort
	port(A, B : in std_logic;
		  S: out std_logic
		 );
end component;

component NORPort
	port(A, B : in std_logic;
		  S: out std_logic
		 );
end component;

component TheMultiplexador
	port(A, O, NR, NA, X ,NO :in std_logic;
		  Sum, Sub, ShiftL, ShiftR: in std_logic_vector (15 downto 0);
		  Choice: in std_logic_vector (3 downto 0);
		  OutPut: out std_logic_vector (15 downto 0)
		 );
end component;

component ShiftEsq
	port(A : in std_logic_vector (15 downto 0);
		  S : out std_logic_Vector (15 downto 0)
		 );
end component;

component ShiftDir
	port(A : in std_logic_vector (15 downto 0);
		  S : out std_logic_Vector (15 downto 0)
		 );
end component;

signal ANDResult: std_logic;
signal ORResult: std_logic;
signal NOTResult: std_logic;
signal XORResult: std_logic;
signal SumResult: std_logic_vector (15 downto 0);
signal SubResult: std_logic_vector (15 downto 0);
signal NANDResult: std_logic;
signal NORResult: std_logic;
signal SHIFTL: std_logic_vector (15 downto 0);
signal SHIFTR: std_logic_vector (15 downto 0);

begin
	G1: NOTPort port map (RegA(15) , NOTResult); 
	G2: ANDPort port map (RegA(15), RegB(15), ANDResult);
	G3: XORPort port map (RegA(15), RegB(15), XORResult);
	G4: ORPort port map (RegA(15), RegB(15), ORResult);
	G5: Adder16Bits port map (RegA, RegB, SumResult);
	G6: Subtractor port map (RegA, RegB, SubResult);
	G7: NANDPort port map (RegA(15), RegB(15), NANDResult);
	G8: NORPort port map (RegA(15), RegB(15), NORResult);
	G9: ShiftDir port map(RegA, SHIFTR);
	G10: ShiftEsq port map(RegA, SHIFTL);
	G11: TheMultiplexador port map (ANDResult, ORResult, NORResult,NANDResult, XORResult,
											 NOTResult, SumResult, SubResult,SHIFTL, SHIFTR, ULAOP, SaidaULA);
	
end;
