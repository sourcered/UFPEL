library IEEE;
use IEEE.std_logic_1164.all;

entity multiplicador is
	port(
		-- ENTRADAS
		ENTRADA: in std_logic_vector(3 downto 0);

		-- SAIDAS
		RESULTADO_multiplicacao: out std_logic_vector(3 downto 0);
		OVERFLOW: out std_logic
		 );
end multiplicador;

architecture arch_multiplicador of multiplicador is
begin
	with ENTRADA(3) select
		OVERFLOW <= 
				'1' when '1',
				'0' when others;
	RESULTADO_multiplicacao(1) <= ENTRADA(0);
	RESULTADO_multiplicacao(2) <= ENTRADA(1);
	RESULTADO_multiplicacao(0) <= '0';	
end arch_multiplicador;