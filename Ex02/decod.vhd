library IEEE;
use IEEE.std_logic_1164.all;

entity decod is
port(
e: in std_logic_vector(1 downto 0);
s: out std_logic_vector(6 downto 0)
);
end decod;

architecture circuito of decod is
begin
s <= "0100100" when e = "00" else -- 2
"0000010" when e = "01" else -- 6
"1111001" when e = "10" else -- 1
"0110000"; -- 3
end circuito;