library IEEE;
use IEEE.std_logic_1164.all;

entity mux_21 is
port(
a: in std_logic_vector(6 downto 0);
sel: in std_logic;
saida: out std_logic_vector(6 downto 0)
);
end mux_21;

architecture circuito of mux_21 is
begin
saida <= a when sel = '0' else
				"0111111";
end circuito;