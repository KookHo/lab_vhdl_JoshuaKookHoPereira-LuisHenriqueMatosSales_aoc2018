library ieee;
use ieee.std_logic_1164.all;

entity ANDPort is port(
	A: in STD_LOGIC;
	B: in STD_LOGIC;
	S: out STD_LOGIC

);

end ANDPort;

ARCHITECTURE behavior of ANDPort is
BEGIN
	S <= A and B;
END behavior;