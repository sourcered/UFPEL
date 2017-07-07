library IEEE;
use IEEE.std_logic_1164.all;

entity mux_overflow_para_display is
	port(
		-- ENTRADA
		ENTRADA_PALAVRA_OVERFLOW: in std_logic_vector(6 downto 0); 
		ENTRADA_PALAVRA_OVERFLOW_2: in std_logic_vector(6 downto 0); 
		RESULTADO_PALAVRA_NUMERO: in std_logic_vector(6 downto 0); 
		RESULTADO_PALAVRA_NUMERO_2: in std_logic_vector(6 downto 0); 
		OVERFLOW: in std_logic;
		
		-- SAIDAS
		SAIDA_0: out std_logic_vector(6 downto 0);
		SAIDA_1: out std_logic_vector(6 downto 0)
	);
end mux_overflow_para_display;

architecture arch_mux_overflow_para_display of mux_overflow_para_display is
begin
	with OVERFLOW select
		SAIDA_0 <=  RESULTADO_PALAVRA_NUMERO when '0',
						ENTRADA_PALAVRA_OVERFLOW when '1';
	with OVERFLOW select
		SAIDA_1 <=  RESULTADO_PALAVRA_NUMERO_2 when '0',
						ENTRADA_PALAVRA_OVERFLOW_2 when '1';				
end arch_mux_overflow_para_display;