library ieee;
use ieee.std_logic_1164.all;

entity MemoriaROM is port
	(endereco: in integer range 0 to 15;
	 dado: out std_ulogic_vector (7 downto 0)
	);
end MemoriaROM;

ARCHITECTURE behavior of MemoriaROM is
	type ROM_ARRAY is array (0 to 15) of std_ulogic_vector (7 downto 0);
	
	constant ROM: ROM_ARRAY := (
										 "00000001", "00000010", "00000011", "00000100",
										 "00000101", "00000110", "00000111", "00001000",
										 "00001001", "00001011", "00011001", "01101000",
										 "01011000", "11110000", "00110001", "00010100"
										);
begin
	dado <= ROM(endereco);
end;