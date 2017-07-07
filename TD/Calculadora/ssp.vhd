library IEEE;
use IEEE.std_logic_1164.all;

entity ssp is
	port(
		control : in std_logic;
		A , B : in std_logic_vector(3 downto 0);
		Soma : out std_logic_vector(3 downto 0);
		overflow : out std_logic
	);
end ssp;

architecture arq_ssp of ssp is
signal C0, C1, C2, C3, Ov, Carry: std_logic;
component SomadorCompleto
	port(
		x , y, c_in  : in std_logic;
		S, c_out : out std_logic
	);
end component;
begin
	
	C0 <= control;
	
	SomC0 : SomadorCompleto
		port map(x => A(0), y => (B(0) xor C0), c_in => C0,S => Soma(0), c_out => C1);
	SomC1 : SomadorCompleto
		port map(x => A(1), y => (B(1)xor C0), c_in => C1, S => Soma(1), c_out => C2);
	SomC2 : somadorCompleto
		port map(x => A(2), y => (B(2) xor C0), c_in => C2, S => Soma(2), c_out => C3);
		Ov <= C3;
	SomC3 : somadorCompleto
		port map(x => A(3), y => (B(3)xor C0), c_in => C3, S => Soma(3), c_out => Carry);
		
	overflow <= Ov xor Carry;
		
end arq_ssp;