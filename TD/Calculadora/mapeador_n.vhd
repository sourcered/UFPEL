library IEEE;
use IEEE.std_logic_1164.all;

-- MUX 4:1
entity mapeador_n is
    port(
        -- ENTRADA
        ENTRADA : in std_logic_vector(3 downto 0);

        -- SAIDAS
		  N: out std_logic;
        SAIDA: out std_logic_vector(3 downto 0)
    );
end mapeador_n;

architecture arch_mapeador_n of mapeador_n is

-- ** SINGALS ** --
signal fio_resultado_adicao: std_logic_vector(3 downto 0);
signal fio_n: std_logic;
-- ** FIM SINGALS **
	begin 
        -- SETA N
        fio_n <= ENTRADA(3);
		  
	with ENTRADA select
			fio_resultado_adicao <=
				
				"0111" when "1001",
				"0110" when "1010",
				"0101" when "1011",
				"0100" when "1100",
				"0011" when "1101",
				"0010" when "1110",
				"0001" when "1111",
				"0000" when "0000",
				"0001" when "0001",
				"0010" when "0010",
				"0011" when "0011",
				"0100" when "0100",
				"0101" when "0101",
				"0110" when "0110",
				"0111" when "0111",
				"XXXX" when others;
						  
		  
		  N <= fio_n;
        SAIDA <= fio_resultado_adicao;
end arch_mapeador_n;