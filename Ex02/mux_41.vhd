library IEEE;
use IEEE.std_logic_1164.all;

entity mux_41 is
port(
a, b, c, d: in std_logic_vector(3 downto 0);
sel: in std_logic_vector(1 downto 0);
saida: out std_logic_vector(3 downto 0)
);
end mux_41;

architecture circuito of mux_41 is
begin
saida <= a when sel = "00" else
b when sel = "01" else
c when sel = "10" else
d;
end circuito;