library IEEE;
use IEEE.std_logic_1164.all;

entity topo is
port(
SW: in std_logic_vector(5 downto 0);
HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6: out std_logic_vector(6 downto 0)
);
end topo;

architecture circuito of topo is
signal S0, S1, S2, S3, F: std_logic_vector(3 downto 0);

component circuito1 is
port(
A: in std_logic_vector(3 downto 0);
f1, f2, f3, f4: out std_logic_vector(3 downto 0)
);
end component;

component mux_41 is
port(
a, b, c, d: in std_logic_vector(3 downto 0);
sel: in std_logic_vector(1 downto 0);
saida: out std_logic_vector(3 downto 0)
);
end component;

component mux_21 is
port(
a: in std_logic_vector(6 downto 0);
sel: in std_logic;
saida: out std_logic_vector(6 downto 0)
);
end component;

component decod_c2 is
port(
e: in std_logic_vector(3 downto 0);
s: out std_logic_vector(6 downto 0)
);
end component;

component decod is
port(
e: in std_logic_vector(1 downto 0);
s: out std_logic_vector(6 downto 0)
);
end component;

begin
C1: circuito1 port map(SW(3 downto 0), S0, S1, S2, S3);
MUX4: mux_41 port map(S0, S1, S2, S3, SW(5 downto 4), F);
MUX2I: mux_21 port map("1111111", SW(3), HEX6(6 downto 0));
MUX2M: mux_21 port map("0001111", SW(5), HEX4(6 downto 0));
MUX2F: mux_21 port map("1111111", F(3), HEX1(6 downto 0));
DEC2A: decod_c2 port map(SW(3 downto 0), HEX5(6 downto 0));
DEC2F: decod_c2 port map(F, HEX0(6 downto 0));
DEC: decod port map(SW(5 downto 4), HEX3( 6 downto 0));
HEX2(6 downto 0) <= "0110111";
end circuito;