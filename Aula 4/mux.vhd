library IEEE;
use IEEE.std_logic_1164.all;

entity mux is
port(
w, x, y, z: in std_logic_vector(3 downto 0);
sel: in std_logic_vector(1 downto 0);
saida: out std_logic_vector(3 downto 0)
);
end mux;

architecture circuito of mux is
begin
saida <= w when sel = "00" else
				x when sel = "01" else
				y when sel = "10" else
				z;
end circuito;