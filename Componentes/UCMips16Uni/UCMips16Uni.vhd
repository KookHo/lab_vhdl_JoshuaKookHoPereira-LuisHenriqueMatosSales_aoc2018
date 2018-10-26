library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity UCMips16Uni is 
	port (
			OPCode: in std_logic_vector (3 downto 0);
			ULAOp: out std_logic_vector (1 downto 0);
			RegDst, Jump, Branch, MemRead, MemWrite, ULASrc, Mem2Reg, RegWrite: out std_logic
		  );
end UCMips16Uni;

ARCHiTECTURE CPU of UCMips16Uni is
	begin
		
		RegDst   <= '1' when OPCode = "0000" else '1' when OPCode = "0001" else '1' when OPCode = "0010" else '1' when OPCode = "0011" 
						else '1' when OPCode = "1010" else '1' when OPCode = "1011" else '1' when OPCode = "1100" else '1' when OPCode = "1101" else '0';
		Branch   <= '1' when OPCode = "0100" else '1' when OPCode = "0101" else '0';
		Jump     <= '1' when OPCode = "0110" else '1' when OPCode = "0111" else '0';
		MemRead  <= '1' when OPCode = "1000" else '0';
		MemWrite <= '1' when OPCode = "1001" else '0';
		Mem2Reg  <= '1' when OPCode = "1000" else '0';
		ULASrc   <= '1' when OPCode = "1000" else '1' when OPCode = "1001";
		RegWrite <= '1' when OPCode = "1000" else '1' when OPCode = "0000" else '1' when OPCode = "0001" else '1' when OPCode = "0010" else '1' when OPCode = "0011" 
						else '1' when OPCode = "1010" else '1' when OPCode = "1011" else '1' when OPCode = "1100" else '1' when OPCode = "1101" else '0';
		
		ULAOp <= "00" when OPCode = "0000" else "00" when OPCode = "0001" else "01" when OPCode = "0010" else "10" when OPCode = "0011" else "11" when OPCode = "1010";
		
end CPU;
			