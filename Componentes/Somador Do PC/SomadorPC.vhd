library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;

entity SomadorPC is port
	(
	EA: in integer;
	EB: in integer;
	SOMA: out integer
	);
end SomadorPC;

ARCHITECTURE behavior of SomadorPC is
begin
	SOMA <= EA + EB;

end; 	