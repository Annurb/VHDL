library IEEE;
use IEEE.Std_Logic_1164.all;

entity OnlyA is
port (

SW: in Std_Logic_Vector(2 downto 0);

LEDR: out Std_Logic_Vector(9 downto 0)

);
end OnlyA;

architecture circuito of OnlyA is
signal A, B, C, D, E, F, Y: std_logic;
begin

Y <= D and E and F;
D <= A and not(B);
E <= not(B) and not(C);
F <= A and not(C);

A <= SW(0);
B <= SW(1);
C <= SW(2);

LEDR(0) <= Y;

end circuito;