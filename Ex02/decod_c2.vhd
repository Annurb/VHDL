library IEEE;
use IEEE.std_logic_1164.all;

entity decod_c2 is
port(
e: in std_logic_vector(3 downto 0);
s: out std_logic_vector(6 downto 0)
);
end decod_c2;

architecture circuito of decod_c2 is
begin
s <= "1000000" when e = "0000" else -- 0
"1111001" when e = "0001" else -- 1
"0100100" when e = "0010" else -- 2
"0110000" when e = "0011" else -- 3
"0011001" when e = "0100" else -- 4
"0010010" when e = "0101" else -- 5
"0000010" when e = "0110" else -- 6
"1111000" when e = "0111" else -- 7
"0000000" when e = "1000" else -- 8
"1111000" when e = "1001" else -- 7
"0000010" when e = "1010" else -- 6
"0010010" when e = "1011" else -- 5
"0011001" when e = "1100" else -- 4
"0110000" when e = "1101" else -- 3
"0100100" when e = "1110" else -- 2
"1111001"; -- 1
end circuito;