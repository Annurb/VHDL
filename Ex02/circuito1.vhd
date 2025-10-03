library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity circuito1 is
port(
A: in std_logic_vector(3 downto 0);
f1, f2, f3, f4: out std_logic_vector(3 downto 0)
);
end circuito1;

architecture circuito of circuito1 is
begin
f1 <= A + "0010";
f2 <= A + "0110";
f3 <= A + "1111";
f4 <= A + "1101";

end circuito;