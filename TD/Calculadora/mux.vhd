library IEEE;
use IEEE.std_logic_1164.all;

-- MUX 2:1
entity mux is
    port(
        -- ENTRADA
        A: in std_logic_vector(3 downto 0);
        B: in std_logic_vector(3 downto 0);
        CIN: in std_logic;

        -- SAIDAS
        SAIDA: out std_logic_vector(3 downto 0)
    );

end mux;

architecture arch_mux of mux is
begin 
    with CIN select
        SAIDA <= A when '0',
                 B when '1',
                 A when others;
end arch_mux;