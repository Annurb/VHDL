library IEEE; 
use IEEE.Std_Logic_1164.all; 

entity circuito_multi 
is port (
			SW: in std_logic_vector(3 downto 0);            
			LEDR: out std_logic_vector(3 downto 0)
			);
end circuito_multi; 

architecture circuito of circuito_multi is
signal A: std_logic_vector(3 downto 0);
begin    
   LEDR(3) <= ((not A(3)) and (not A(2)) and  A(1) and A(0)) or (A(2) and A(1) and (not A(0))) or (A(3) and (not A(1)) and A(0)) or (A(3) and A(2));
   LEDR(2) <= not A(0);
   LEDR(1) <= (not A(2)) or A(3);
   LEDR(0) <= (not A(1)) and (not A(0));
	A(3) <= SW(3);
	A(2) <= SW(2);
	A(1) <= SW(1);
	A(0) <= SW(0);
end circuito; 
