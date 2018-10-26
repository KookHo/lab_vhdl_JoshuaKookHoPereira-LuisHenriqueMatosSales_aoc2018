library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.numeric_bit.all;

entity ShiftDir is port
	(A : in std_logic_vector (15 downto 0);
	 S : out std_logic_Vector (15 downto 0)
	);
end ShiftDir;

architecture behavior of ShiftDir is
--signal aux : std_logic;
--aux <= A(15);

begin
process(A)
	begin
		if A(15) = '1' then
			S <= '1' & '1' & A(15 downto 2);
		else
			S <= '0' & '0' & A(15 downto 2);
		end if;
	end process;
end behavior;