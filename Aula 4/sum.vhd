library IEEE;
use IEEE.Std_Logic_1164.all;
use IEEE.std_logic_unsigned.all; -- necessário para o +

entity sum is
port (
A, B: in std_logic_vector(3 downto 0);
F: out std_logic_vector(3 downto 0)
);
end sum;

architecture circuito of sum is
begin
F <= A + B;
end circuito;