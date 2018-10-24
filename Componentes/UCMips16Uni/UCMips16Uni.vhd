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
		
		RegDst   <= '1' when OPCode = "0000" else '0' when OPCode = "0001"; -- a decididr os OPCodes
		Branch   <= '1' when OPCode = "0110" else '0' when OPCode = "0001"; -- a decididr os OPCodes
		Jump     <= '1' when OPCode = "0101" else '0' when OPCode = "0001"; -- a decididr os OPCodes
		MemRead  <= '1' when OPCode = "0111" else '0' when OPCode = "0001"; -- a decididr os OPCodes
		MemWrite <= '1' when OPCode = "1000" else '0' when OPCode = "0001"; -- a decididr os OPCodes
		Mem2Reg  <= '1' when OPCode = "1001" else '0' when OPCode = "0001"; -- a decididr os OPCodes
		ULASrc   <= '1' when OPCode = "0000" else '0' when OPCode = "0001"; -- a decididr os OPCodes
		RegWrite <= '1' when OPCode = "0000" else '0' when OPCode = "0001"; -- a decididr os OPCodes
		
		ULAOp <= "00" when OPCode = "0000" else "01" when OPCode = "0001" else "10" when OPCode = "0010" else "11" when OPCode = "0011";
		
end CPU;
			