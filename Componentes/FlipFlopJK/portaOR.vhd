library ieee;
use ieee.std_logic_1164.all;

entity portaOR is port(
	A: in STD_LOGIC;
	B: in STD_LOGIC;
	SA: out STD_LOGIC

);

end portaOR;

ARCHITECTURE behavior of portaOR is
BEGIN
	SA <= A or B;
END behavior;