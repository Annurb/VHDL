library IEEE;
  use IEEE.Std_Logic_1164.all;

entity somador is
  port (X : in  Std_Logic_Vector(3 downto 0);
        Y : in  Std_Logic_Vector(3 downto 0);
        S : out Std_Logic_Vector(4 downto 0)
       );
end entity;

architecture soma4 of somador is
  signal C : Std_Logic_Vector(2 downto 0);
  component halfadder is
    port (A    : in  Std_Logic;
          B    : in  Std_Logic;
          Sum  : out Std_Logic;
          Cout : out Std_logic);
  end component;

  component fulladder is
    port (A    : in  Std_Logic;
          B    : in  Std_logic;
          Cin  : in  Std_Logic;
          Sum  : out Std_Logic;
          Cout : out Std_Logic);
  end component;
begin
  HA: halfadder port map (X(0), Y(0), S(0), C(0));
  FA1: fulladder port map (X(1), Y(1), C(0), S(1), C(1));
  FA2: fulladder port map (X(2), Y(2), C(1), S(2), C(2));
  FA3: fulladder port map (X(3), Y(3), C(2), S(3), S(4));
end architecture;
