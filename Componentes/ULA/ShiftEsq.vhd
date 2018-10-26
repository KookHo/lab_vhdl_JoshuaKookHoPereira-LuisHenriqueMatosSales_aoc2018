library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.numeric_bit.all;

entity ShiftEsq is port
	(A : in std_logic_vector (15 downto 0);
	 S : out std_logic_Vector (15 downto 0)
	);
end ShiftEsq;

architecture behavior of ShiftEsq is
	
	
begin

	S <= A(13 downto 0) & '0' & '0';

end;