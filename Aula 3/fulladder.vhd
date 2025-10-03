library IEEE;
use IEEE.Std_Logic_1164.all;
entity fulladder is
port (A: in std_logic;
B: in std_logic;
Cin: in std_logic;
Sum: out std_logic;
Cout: out std_logic
);
end fulladder;
architecture circuito of fulladder is
signal C, D, E: std_logic;
begin
C <= A xor B;
Sum <= Cin xor C;
D <= Cin and C;
E <= A and B;
Cout <= D or E;
end circuito;