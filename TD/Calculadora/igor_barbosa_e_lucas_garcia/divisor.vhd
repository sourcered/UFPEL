library IEEE;
use IEEE.std_logic_1164.all;

entity divisor is
	port(
		-- ENTRADAS
		ENTRADA: in std_logic_vector(3 downto 0);		

		-- SAIDAS
		RESULTADO_divisao: out std_logic_vector(3 downto 0);
		OVERFLOW: out std_logic
		 );
end divisor;

architecture arch_divisor of divisor is
begin
	with ENTRADA(0) select
		OVERFLOW <= 
				'1' when '1',
				'0' when others;
	RESULTADO_divisao(0) <= ENTRADA(1);
	RESULTADO_divisao(1) <= ENTRADA(2);
	RESULTADO_divisao(2) <= '0';
end arch_divisor;