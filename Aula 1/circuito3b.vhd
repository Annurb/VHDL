library IEEE;
use IEEE.Std_Logic_1164.all;


entity circuito3b is
port (
HEX5: out	std_logic_vector(6 downto 0);
HEX4: out	std_logic_vector(6 downto 0);
HEX3: out	std_logic_vector(6 downto 0);
HEX2: out	std_logic_vector(6 downto 0);
HEX1: out	std_logic_vector(6 downto 0);
HEX0: out	std_logic_vector(6 downto 0)
);
end circuito3b;


architecture arc_circuito3b of circuito3b is
begin

-- Mostra a letra t no display HEX0
HEX5(6) <='0';		
HEX5(5) <='0';		
HEX5(4) <='0';		
HEX5(3) <='0';		
HEX5(2) <='0';		
HEX5(1) <='1';		
HEX5(0) <='1';		

HEX4(6) <='0';		
HEX4(5) <='1';		
HEX4(4) <='0';		
HEX4(3) <='1';		
HEX4(2) <='1';		
HEX4(1) <='1';		
HEX4(0) <='1';

HEX3(6) <='1';		
HEX3(5) <='0';		
HEX3(4) <='0';		
HEX3(3) <='0';		
HEX3(2) <='0';		
HEX3(1) <='0';		
HEX3(0) <='1';		

HEX2(6) <='1';		
HEX2(5) <='0';		
HEX2(4) <='0';		
HEX2(3) <='1';		
HEX2(2) <='0';		
HEX2(1) <='0';		
HEX2(0) <='0';	

HEX1(6) <='1';		
HEX1(5) <='0';		
HEX1(4) <='0';		
HEX1(3) <='1';		
HEX1(2) <='0';		
HEX1(1) <='0';		
HEX1(0) <='0';

HEX0(6) <='0';		
HEX0(5) <='0';		
HEX0(4) <='0';		
HEX0(3) <='1';		
HEX0(2) <='0';		
HEX0(1) <='0';		
HEX0(0) <='0';							

-- Completar para os outros displays HEX4, HEX3 ... HEX0

end arc_circuito3b;