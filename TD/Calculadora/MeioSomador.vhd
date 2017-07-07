library IEEE;
use IEEE.std_logic_1164.all;

entity MeioSomador is
	port(
	a , b : in std_logic;
	Sum, Cout : out std_logic
	);
end MeioSomador;

architecture arq_MeioSomador of MeioSomador is
begin
	Sum <= a xor b;
	Cout <= a and b;
end arq_MeioSomador;