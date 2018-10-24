library ieee;
use ieee.std_logic_1164.all;

ENTITY Adder16Bits is
    PORT (  A, B : IN  std_logic_vector(15 DOWNTO 0);
            Cin  : IN  STD_LOGIC;
            S : OUT std_logic_vector(15 DOWNTO 0);
            Cout : OUT std_logic);
END Adder16Bits;

ARCHITECTURE behavior of Adder16Bits is

    COMPONENT Adder2Bits
        PORT(  A, B: IN    STD_LOGIC_VECTOR(1 DOWNTO 0);
               Cin: IN    STD_LOGIC;
               S: OUT   STD_LOGIC_VECTOR(1 DOWNTO 0);
               Cout: OUT   STD_LOGIC);
    END COMPONENT;

    SIGNAL C1, C2, C3, C4, C5, C6, C7  : std_LOGIC;

BEGIN

    Adder0: Adder2Bits PORT MAP ( A(1  DOWNTO 0)  , B(1 DOWNTO 0)  , Cin, S(1 DOWNTO 0)   , C1  );
    Adder1: Adder2Bits PORT MAP ( A(3  DOWNTO 2)  , B(3 DOWNTO 2)  , C1 , S(3 DOWNTO 2)   , C2  );
    Adder2: Adder2Bits PORT MAP ( A(5  DOWNTO 4)  , B(5 DOWNTO 4)  , C2 , S(5 DOWNTO 4)   , C3  );
    Adder3: Adder2Bits PORT MAP ( A(7  DOWNTO 6)  , B(7 DOWNTO 6)  , C3 , S(7 DOWNTO 6)   , C4  );
    Adder4: Adder2Bits PORT MAP ( A(9  DOWNTO 8)  , B(9 DOWNTO 8)  , C4 , S(9 DOWNTO 8)   , C5  );
    Adder5: Adder2Bits PORT MAP ( A(11 DOWNTO 10) , B(11 DOWNTO 10), C5 , S(11 DOWNTO 10) , C6  );
    Adder6: Adder2Bits PORT MAP ( A(13 DOWNTO 12) , B(13 DOWNTO 12), C6 , S(13 DOWNTO 12) , C7  );
    Adder7: Adder2Bits PORT MAP ( A(15 DOWNTO 14) , B(15 DOWNTO 14), C7 , S(15 DOWNTO 14) , Cout);

END behavior;