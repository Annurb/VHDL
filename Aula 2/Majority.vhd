library IEEE;
use IEEE.Std_Logic_1164.all;

entity majority is
port (

SW: in Std_Logic_Vector(2 downto 0);

LEDR: out Std_Logic_Vector(9 downto 0)

);
end majority;

architecture circuito of majority is
signal A, B, C, D, E, F, Y: std_logic;
begin

Y <= D or E or F;
D <= A and B;
E <= B and C;
F <= A and C;
A <= SW(0);
B <= SW(1);
C <= SW(2);
LEDR(0) <= Y;

end circuito;