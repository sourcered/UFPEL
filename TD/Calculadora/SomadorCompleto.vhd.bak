library IEEE;
use IEEE.std_logic_1164.all;

entity SomadorCompleto is
	port(
	
	x , y, c_in  : in std_logic;
	S, c_out : out std_logic
	);
end SomadorCompleto;

architecture arq_SomadorCompleto of SomadorCompleto is
signal tempS, tempC1, tempC2: std_logic;
component MeioSomador
	port(
	a , b : in std_logic;
	Sum, Cout : out std_logic
	);
end component;
begin
	Meio1: MeioSomador
		port map(a => x, b => y, Sum =>tempS, Cout =>tempC1);
	Meio2 : MeioSomador
		port map(a => tempS, b => c_in , Sum => S, Cout => tempC2);
	
	c_out <= tempC1 or tempC2;
	
end arq_SomadorCompleto;