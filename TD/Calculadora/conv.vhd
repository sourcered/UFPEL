library IEEE;
use IEEE.std_logic_1164.all;

entity conv is
 port(
		n: in std_logic;
		entrada : in std_logic_vector(3 downto 0);
		OVERFLOW: in std_logic;
		
		display0_overflow: out std_logic_vector(6 downto 0);
		display1_overflow: out std_logic_vector(6 downto 0);
		display0, display1 : out std_logic_vector(6 downto 0)
 );
end conv;
 
architecture conv_arq of conv is
 begin
	-- Display numeros
	with n select
		display0 <=
			"0000001" when '0',
			"1111110" when '1',
			"1111110" when others;

	with entrada select
		display1 <=
			"0000001" when "0000",
			"1001111" when "0001",
			"0010010" when "0010",
			"0000110" when "0011",
			"1001100" when "0100",
			"0100100" when "0101",
			"0100000" when "0110",
			"0001111" when "0111",
			"1111110" when others;
			
	-- OVERFLOW
	with OVERFLOW select
		display0_overflow <= "1111110" when '1',
									"0111000" when others;
	with OVERFLOW select
		display1_overflow <= "1111110" when '1',
									"0111000" when others;
end conv_arq;