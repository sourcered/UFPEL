library IEEE;
use IEEE.std_logic_1164.all;

-- MUX 4:1
entity mux_over is
    port(
        -- ENTRADA
        OVERFLOW_SOMA: in std_logic;
        OVERFLOW_SUBTRACAO: in std_logic;
        OVERFLOW_MULTIPLICACAO: in std_logic;
		  OVERFLOW_DIVISAO: in std_logic;
        SEL: in std_logic_vector(1 downto 0);

        -- SAIDAS
        SAIDA: out std_logic
    );
end mux_over;

architecture arch_mux_over of mux_over is
begin 
    with SEL select
        SAIDA <= OVERFLOW_SOMA when "00",
                 OVERFLOW_SUBTRACAO when "01",
                 OVERFLOW_MULTIPLICACAO when "10",
                 OVERFLOW_DIVISAO when "11",
                 '0' when others;
end arch_mux_over;