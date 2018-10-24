library ieee;
use ieee.std_logic_1164.all;

entity Adder1bit is
        port( A, B, Cin: in  std_logic;
              S, Cout: out std_logic 
				 );
end Adder1bit;

architecture behavior of Adder1bit is
	begin
        S <=  (not A and not B and Cin) or (not A and B and not Cin) or (A and not B and not Cin) or (A and B and Cin);
        Cout <= (not A and B and Cin) or (A and not B and Cin) or (A and B and not Cin) or (A and B and Cin);
end behavior;