LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY Reg16 IS PORT
	( 
	 D: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
	 Reset, Clock: IN STD_LOGIC;
	 Q: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);

END Reg16;

ARCHITECTURE behavior OF Reg16 IS

BEGIN
	PROCESS ( Reset, Clock )
		BEGIN
			IF Reset = '0' THEN
				Q <= (others => '0');
			ELSIF rising_edge(Clock) THEN
				Q <= D;
			END IF;
	END PROCESS;
END behavior;