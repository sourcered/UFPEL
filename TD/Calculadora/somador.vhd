library IEEE;
use IEEE.std_logic_1164.all;

entity somador is
	port(
		x: in std_logic_vector(3 downto 0);
		y: in std_logic_vector(3 downto 0);
		c_in: in std_logic;
		overflow: out std_logic;
		s: out std_logic_vector(3 downto 0)
	);
end somador;

architecture n_somador of somador is

component c_adder
	port(
		a, b, c_in: in std_logic;
		sum, carry : out std_logic
	);
end component;

signal temp_c: std_logic_vector(4 downto 0);

begin
	ca0: c_adder
		port map(a => x(0), b => (y(0) xor c_in), c_in => c_in, sum => s(0), carry => temp_c(0));
	ca1: c_adder
		port map(a => x(1), b => (y(1) xor c_in), c_in => temp_c(0), sum => s(1), carry => temp_c(1));
	ca2: c_adder
		port map(a => x(2), b => (y(2) xor c_in), c_in => temp_c(1), sum => s(2), carry => temp_c(2));
	ca3: c_adder
		port map(a => x(3), b => (y(3) xor c_in), c_in => temp_c(2), sum => s(3), carry => temp_c(3));
	overflow <= temp_c(3) xor temp_c(2);
end n_somador;
