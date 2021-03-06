LIBRARY ieee;
USE ieee.std_logic_1164.all;


entity Adder2Bits is port
	( A, B  : in  STD_LOGIC_VECTOR(1 DOWNTO 0);
     Cin : in  STD_LOGIC;
     S : out STD_LOGIC_VECTOR(1 DOWNTO 0);
     Cout  : out STD_LOGIC
    );
End Adder2Bits;

ARCHITECTURE behavior of Adder2Bits is

    COMPONENT Adder1Bit
        PORT( A, B, Cin  : IN  STD_LOGIC;
                S, Cout  : OUT STD_LOGIC
        );
    END COMPONENT;

    SIGNAL C1 : STD_LOGIC;

BEGIN

    AdderBit0: Adder1BIt PORT MAP (A(0), B(0), Cin, S(0), C1);
    AdderBit1: Adder1BIt PORT MAP (A(1), B(1), C1, S(1), Cout);

END behavior;
