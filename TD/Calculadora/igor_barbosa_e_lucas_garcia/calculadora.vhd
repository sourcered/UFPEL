-- 00 - SOMAR 
-- 01 - SUBTRAIR
-- 10 - MULTIPLICAR
-- 11 - DIVIDIR

library IEEE;
use IEEE.std_logic_1164.all;

entity calculadora is
	port(
		-- ENTRADAS
		A: in std_logic_vector(3 downto 0);
		B: in std_logic_vector(3 downto 0);
		C_IN: in std_logic;
		SEL: in std_logic_vector(1 downto 0);
		
		-- SAIDAS
		V: out std_logic; -- Caso do somador ||||||| VAI APARECER NO DISPLAY (NÃO PRECISA)
		N: out std_logic;
		Z: out std_logic;
		LED_0: out std_logic_vector(6 downto 0); -- 7 segmentos
		LED_1: out std_logic_vector(6 downto 0)
	);
end calculadora;

architecture arch_calculadora of calculadora is

-- ** COMPONENTS **

component somador is
	port(
		x: in std_logic_vector(3 downto 0);
		y: in std_logic_vector(3 downto 0);
		c_in: in std_logic;
		overflow: out std_logic;
		s: out std_logic_vector(3 downto 0)
	);
end component;

component ssp is
	port(
		control : in std_logic;
		A , B : in std_logic_vector(3 downto 0);
		Soma : out std_logic_vector(3 downto 0);
		overflow : out std_logic
	);
end component;

component multiplicador is
	port(
		-- ENTRADAS
		ENTRADA: in std_logic_vector(3 downto 0);

		-- SAIDAS
		RESULTADO_multiplicacao: out std_logic_vector(3 downto 0);
		OVERFLOW: out std_logic
	);
end component;

component divisor is
	port(
		-- ENTRADAS
		ENTRADA: in std_logic_vector(3 downto 0);

		-- SAIDAS
		RESULTADO_divisao: out std_logic_vector(3 downto 0);
		OVERFLOW: out std_logic
	);
end component;

-- MUX 2:1
component mux is
    port(
        -- ENTRADA
        A: in std_logic_vector(3 downto 0);
        B: in std_logic_vector(3 downto 0);
        CIN: in std_logic;

        -- SAIDAS
        SAIDA: out std_logic_vector(3 downto 0)
    );

end component;

component conv is
	port(
	  	-- ENTRADA
		n: in std_logic;
		entrada : in std_logic_vector(3 downto 0);
		OVERFLOW: in std_logic;

		-- SAIDA
		display0_overflow, display1_overflow: out std_logic_vector(6 downto 0);
		display0, display1 : out std_logic_vector(6 downto 0)
	);
end component;

component mux_over is
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
end component;

component mapeador_n is
    port(
        -- ENTRADA
        ENTRADA : in std_logic_vector(3 downto 0);

        -- SAIDAS
		  N: out std_logic;
        SAIDA: out std_logic_vector(3 downto 0)
    );
end component;

component mux_zero is
	port(
		-- ENTRADAS
		ENTRADA: in std_logic_vector(3 downto 0);
		
		-- SAIDAS
		SAIDA: out std_logic
	);
end component;

component mux_overflow_para_display is
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
end component;

-- ** !FIM COMPONENTS! **

-- **   SIGNALS 	**

signal fio_resultado_mux_2_para_1: std_logic_vector(3 downto 0);
signal fio_resultado_soma: std_logic_vector(3 downto 0);
signal fio_resultado_subtracao: std_logic_vector(3 downto 0);
signal fio_resultado_multiplicacao: std_logic_vector(3 downto 0);
signal fio_resultado_divisao: std_logic_vector(3 downto 0);
signal fio_resultado_final: std_logic_vector(3 downto 0);
signal fio_resultado_abs: std_logic_vector(3 downto 0);
signal fio_Z: std_logic;
signal fio_N: std_logic;
signal fio_N_2: std_logic;
signal fio_LED_0: std_logic_vector(6 downto 0);
signal fio_LED_1: std_logic_vector(6 downto 0);
signal fio_display_0: std_logic_vector(6 downto 0);
signal fio_display_1: std_logic_vector(6 downto 0);
signal fio_display_overflow_0: std_logic_vector(6 downto 0);
signal fio_display_overflow_1: std_logic_vector(6 downto 0);

	-- FIOS OVERFLOWS
signal fio_overflow_soma: std_logic;
signal fio_overflow_subtracao: std_logic;
signal fio_overflow_multiplicacao: std_logic;
signal fio_overflow_divisao: std_logic;
signal fio_overselected: std_logic;
signal fio_overflow_mais_um: std_logic;

-- ** !FIM SINGALS! **

begin
	-- MUX 2:1 PARA MULTIPLICADOR & DIVISOR
	-- selecionar A ou B
	instancia_mux_2_para_1: mux
		port map(A => A, B => B, CIN => C_IN, SAIDA => fio_resultado_mux_2_para_1);

	-- SOMADOR
	instancia_somador: somador
		port map(
		x => A,
		y => B,
		c_in => SEL(0),
		overflow => fio_overflow_soma,
		s => fio_resultado_soma
	);

	-- SUBTRATOR
	instancia_subtrator: somador
		port map(
		x => A,
		y => B,
		c_in => SEL(0),
		overflow => fio_overflow_subtracao,
		s => fio_resultado_subtracao
	);

	-- MULTIPLICADOR
	instancia_multiplicador: multiplicador
		port map(ENTRADA => fio_resultado_mux_2_para_1, RESULTADO_multiplicacao => fio_resultado_multiplicacao, OVERFLOW => fio_overflow_multiplicacao);
		
	-- DIVISOR
	instancia_divisor: divisor
		port map(ENTRADA => fio_resultado_mux_2_para_1, RESULTADO_divisao => fio_resultado_divisao, OVERFLOW => fio_overflow_divisao);
		
	-- MUX 4:1
	-- CONTROLA QUAL OPERACAO VAI PASSAR PARA O 'CONTROLE LED'
	with SEL select
		fio_resultado_final <=  
								fio_resultado_soma 				when "00",
								fio_resultado_subtracao 		when "01", 
								fio_resultado_multiplicacao 	when "10",
								fio_resultado_divisao 			when "11",
								"0000" when others; -- NAO VALIDO quando valores logicoas

	-- MUX OVERFLOW
	instancia_mux_overflow: mux_over
		port map(
			OVERFLOW_SOMA => fio_overflow_soma,
			OVERFLOW_SUBTRACAO => fio_overflow_subtracao,
			OVERFLOW_MULTIPLICACAO => fio_overflow_multiplicacao,
			OVERFLOW_DIVISAO => fio_overflow_divisao,
			SEL => SEL, SAIDA => fio_overselected);

	-- CONTROLE LED --
		-- ABS E BIT N (flag negativo)
		instancia_abs_n: mapeador_n
			port map(ENTRADA => fio_resultado_final, N => fio_N, SAIDA => fio_resultado_abs);
			
		N <= fio_N;
			
		-- LED (MAPEIA)
		instancia_conv: conv
			port map(n => fio_N, entrada => fio_resultado_abs, OVERFLOW => fio_overselected, display0_overflow => fio_display_overflow_0, display1_overflow => fio_display_overflow_1, display0 => fio_LED_0, display1 => fio_LED_1);
		
		instancia_mux_overflow_para_display: mux_overflow_para_display
			port map(
				ENTRADA_PALAVRA_OVERFLOW => fio_display_overflow_0,
				ENTRADA_PALAVRA_OVERFLOW_2 => fio_display_overflow_1,
				RESULTADO_PALAVRA_NUMERO => fio_LED_0,
				RESULTADO_PALAVRA_NUMERO_2 => fio_LED_1,
				OVERFLOW => fio_overselected,
				SAIDA_0=> fio_display_0,
				SAIDA_1 => fio_display_1);
				
		LED_0 <= fio_display_0;
		LED_1 <= fio_display_1;

	-- FIM CONTROLE LED --

	-- FLAGS (Z flag zero)
	instancia_mux_zero: mux_zero 
		port map(ENTRADA => fio_resultado_abs, SAIDA => fio_Z);
	Z <= fio_Z;
	
	V <= fio_overselected;

end arch_calculadora;