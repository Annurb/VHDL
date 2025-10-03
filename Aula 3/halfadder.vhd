library IEEE;
  use IEEE.Std_Logic_1164.all;

entity halfadder is
  port (A    : in  std_logic;
        B    : in  std_logic;
        Sum  : out std_logic;
        Cout : out std_logic
       );
end entity;

architecture circuito of halfadder is
begin
  Sum  <= A xor B;
  Cout <= A and B;
end architecture;
