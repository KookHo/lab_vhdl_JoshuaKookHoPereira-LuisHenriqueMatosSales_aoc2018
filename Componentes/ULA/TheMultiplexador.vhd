library ieee;
use ieee.std_logic_1164.all;

entity TheMultiplexador is port
	(
	 A, O, NR, NA, X ,NO :in std_logic;
	 Sum, Sub, ShiftL, ShiftR: in std_logic_vector (15 downto 0);
	 Choice: in std_logic_vector (3 downto 0);
	 OutPut: out std_logic_vector (15 downto 0)
	);
end TheMultiplexador;

architecture behavior of TheMultiplexador is
begin
	process(Choice)
		begin
			case Choice is
				when "0000" => OutPut <=	(others => '0');
				when "0001" => OutPut <=   Sum;
				when "0010" => OutPut <=	Sub;
				when "0011" => OutPut <=	(0 => A, others => '0');
				when "0100" => OutPut <=	(0 => NO, others => '0');
				when "0101" => OutPut <=	(0 => O, others => '0');
				when "0110" => OutPut <=	(0 => NA, others => '0');
				when "0111" => OutPut <=	(0 => NR, others => '0');
				when "1000" => OutPut <=	(0 => X, others => '0');
				when "1001" => OutPut <=	ShiftL;
				when "1010" => OutPut <=	ShiftR;
				when "1011" => OutPut <=	(others => '0');
				when "1100" => OutPut <=	(others => '0');
				when "1101" => OutPut <=	(others => '0');
				when "1110" => OutPut <=	(others => '0');
				when "1111" => OutPut <=	(others => '0');
			end case;
	end process;
end behavior;