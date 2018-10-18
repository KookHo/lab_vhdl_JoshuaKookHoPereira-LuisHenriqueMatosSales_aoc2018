library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity SomadorPC is port
	(
	EA: in std_logic_vector (4 downto 0);
	EB: in std_logic_vector (4 downto 0);
	SOMA: out std_logic_vector (4 downto 0)
	);
end SomadorPC;

ARCHITECTURE behavior of SomadorPC is
begin
	SOMA <= EA + EB;

end;