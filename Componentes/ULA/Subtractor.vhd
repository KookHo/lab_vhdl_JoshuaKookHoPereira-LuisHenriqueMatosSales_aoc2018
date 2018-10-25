library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.ALL;

entity Subtractor is
	port (
		A,B: in std_logic_vector(15 downto 0);
		C: out std_logic_vector(15 downto 0)
	);
end Subtractor;

architecture behavior of Subtractor is
	begin
	C <= A - B;
end behavior;