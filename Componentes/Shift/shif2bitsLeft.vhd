library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

entity shif2bitsLeft is
generic(n:integer:= 2);
port (R     :in     STD_LOGIC_VECTOR(n-1 downto 0);
        L,E,w :in       STD_LOGIC;
        Clock   :in     STD_LOGIC;
        Q       :buffer STD_LOGIC_VECTOR(n-1 downto 0));
end shif2bitsLeft;

architecture Behavioral of shif2bitsLeft is
begin
process
begin
    wait until Clock'Event and Clock = '1';
    if L = '1' then
          Q <= R;
    elsif E = '1' then
        Q(0) <= w;
        Genbits: for i in 1 to n-1 loop
            Q(i) <= Q(i-1);
        End loop;
    End if;
End process;
end Behavioral;