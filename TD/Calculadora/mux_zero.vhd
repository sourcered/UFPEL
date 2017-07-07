library IEEE;
use IEEE.std_logic_1164.all;

entity mux_zero is
	port(
		-- ENTRADAS
		ENTRADA: in std_logic_vector(3 downto 0);
		
		-- SAIDAS
		SAIDA: out std_logic
	);
end mux_zero;

architecture arch_mux_zero of mux_zero is
begin 

    SAIDA <= 
				'1' when ENTRADA="0000" else
				'1' when ENTRADA="1000" else
            '0';
        
end arch_mux_zero;