library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.ALL;

entity Adder16Bits is
	port (
		A,B: in std_logic_vector(15 downto 0);
		C: out std_logic_vector(15 downto 0)
	);
end Adder16Bits;

architecture behavior of Adder16Bits is
	begin
	C <= A + B;
end behavior;