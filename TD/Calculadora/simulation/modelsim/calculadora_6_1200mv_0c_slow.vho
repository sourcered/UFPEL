-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "06/29/2017 17:43:07"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	calculadora IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	C_IN : IN std_logic;
	SEL : IN std_logic_vector(1 DOWNTO 0);
	V : OUT std_logic;
	N : OUT std_logic;
	Z : OUT std_logic;
	LED_0 : OUT std_logic_vector(6 DOWNTO 0);
	LED_1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END calculadora;

-- Design Ports Information
-- V	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_0[0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_0[1]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_0[2]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_0[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_0[4]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_0[5]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_0[6]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_1[0]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_1[1]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_1[2]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_1[3]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_1[4]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_1[5]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_1[6]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_IN	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[0]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[1]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF calculadora IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_C_IN : std_logic;
SIGNAL ww_SEL : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_V : std_logic;
SIGNAL ww_N : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_LED_0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LED_1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \Mux0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instancia_mux_overflow|Mux0~0_combout\ : std_logic;
SIGNAL \instancia_somador|SomC1|Meio2|Sum~2_combout\ : std_logic;
SIGNAL \instancia_somador|SomC1|Meio2|Sum~3_combout\ : std_logic;
SIGNAL \V~output_o\ : std_logic;
SIGNAL \N~output_o\ : std_logic;
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \LED_0[0]~output_o\ : std_logic;
SIGNAL \LED_0[1]~output_o\ : std_logic;
SIGNAL \LED_0[2]~output_o\ : std_logic;
SIGNAL \LED_0[3]~output_o\ : std_logic;
SIGNAL \LED_0[4]~output_o\ : std_logic;
SIGNAL \LED_0[5]~output_o\ : std_logic;
SIGNAL \LED_0[6]~output_o\ : std_logic;
SIGNAL \LED_1[0]~output_o\ : std_logic;
SIGNAL \LED_1[1]~output_o\ : std_logic;
SIGNAL \LED_1[2]~output_o\ : std_logic;
SIGNAL \LED_1[3]~output_o\ : std_logic;
SIGNAL \LED_1[4]~output_o\ : std_logic;
SIGNAL \LED_1[5]~output_o\ : std_logic;
SIGNAL \LED_1[6]~output_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \SEL[0]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \instancia_somador|SomC1|c_out~2_combout\ : std_logic;
SIGNAL \instancia_somador|SomC1|c_out~3_combout\ : std_logic;
SIGNAL \instancia_somador|SomC2|c_out~0_combout\ : std_logic;
SIGNAL \instancia_somador|SomC3|c_out~0_combout\ : std_logic;
SIGNAL \C_IN~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \instancia_mux_overflow|Mux0~1_combout\ : std_logic;
SIGNAL \SEL[1]~input_o\ : std_logic;
SIGNAL \instancia_mux_overflow|Mux0~2_combout\ : std_logic;
SIGNAL \instancia_somador|SomC3|Meio2|Sum~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \instancia_somador|SomC0|Meio2|Sum~0_combout\ : std_logic;
SIGNAL \Mux0~0clkctrl_outclk\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \instancia_mux_zero|Equal0~0_combout\ : std_logic;
SIGNAL \instancia_mux_overflow_para_display|SAIDA_0[1]~0_combout\ : std_logic;
SIGNAL \instancia_mux_overflow_para_display|SAIDA_1[0]~0_combout\ : std_logic;
SIGNAL \instancia_mux_overflow_para_display|SAIDA_1[1]~1_combout\ : std_logic;
SIGNAL \instancia_mux_overflow_para_display|SAIDA_1[2]~2_combout\ : std_logic;
SIGNAL \instancia_mux_overflow_para_display|SAIDA_1[3]~3_combout\ : std_logic;
SIGNAL \instancia_mux_overflow_para_display|SAIDA_1[4]~4_combout\ : std_logic;
SIGNAL \instancia_mux_overflow_para_display|SAIDA_1[5]~5_combout\ : std_logic;
SIGNAL \instancia_abs_n|fio_resultado_adicao\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instancia_mux_overflow_para_display|ALT_INV_SAIDA_1[2]~2_combout\ : std_logic;
SIGNAL \instancia_mux_overflow_para_display|ALT_INV_SAIDA_1[0]~0_combout\ : std_logic;
SIGNAL \instancia_mux_zero|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \instancia_mux_overflow|ALT_INV_Mux0~2_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_C_IN <= C_IN;
ww_SEL <= SEL;
V <= ww_V;
N <= ww_N;
Z <= ww_Z;
LED_0 <= ww_LED_0;
LED_1 <= ww_LED_1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mux0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mux0~0_combout\);
\instancia_mux_overflow_para_display|ALT_INV_SAIDA_1[2]~2_combout\ <= NOT \instancia_mux_overflow_para_display|SAIDA_1[2]~2_combout\;
\instancia_mux_overflow_para_display|ALT_INV_SAIDA_1[0]~0_combout\ <= NOT \instancia_mux_overflow_para_display|SAIDA_1[0]~0_combout\;
\instancia_mux_zero|ALT_INV_Equal0~0_combout\ <= NOT \instancia_mux_zero|Equal0~0_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\instancia_mux_overflow|ALT_INV_Mux0~2_combout\ <= NOT \instancia_mux_overflow|Mux0~2_combout\;

-- Location: LCCOMB_X32_Y14_N10
\instancia_mux_overflow|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \instancia_mux_overflow|Mux0~0_combout\ = (\SEL[0]~input_o\ & ((\C_IN~input_o\) # ((\A[0]~input_o\)))) # (!\SEL[0]~input_o\ & (!\C_IN~input_o\ & (\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~input_o\,
	datab => \C_IN~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[0]~input_o\,
	combout => \instancia_mux_overflow|Mux0~0_combout\);

-- Location: LCCOMB_X32_Y14_N18
\instancia_somador|SomC1|Meio2|Sum~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \instancia_somador|SomC1|Meio2|Sum~2_combout\ = (\B[0]~input_o\ & ((\A[0]~input_o\))) # (!\B[0]~input_o\ & (\SEL[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \SEL[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \instancia_somador|SomC1|Meio2|Sum~2_combout\);

-- Location: LCCOMB_X32_Y14_N26
\instancia_somador|SomC1|Meio2|Sum~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \instancia_somador|SomC1|Meio2|Sum~3_combout\ = \SEL[0]~input_o\ $ (\instancia_somador|SomC1|Meio2|Sum~2_combout\ $ (\B[1]~input_o\ $ (\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~input_o\,
	datab => \instancia_somador|SomC1|Meio2|Sum~2_combout\,
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \instancia_somador|SomC1|Meio2|Sum~3_combout\);

-- Location: IOOBUF_X33_Y25_N2
\V~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instancia_mux_overflow|Mux0~2_combout\,
	devoe => ww_devoe,
	o => \V~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\N~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \N~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\Z~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instancia_mux_zero|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOOBUF_X33_Y27_N9
\LED_0[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instancia_mux_overflow|ALT_INV_Mux0~2_combout\,
	devoe => ww_devoe,
	o => \LED_0[0]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\LED_0[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instancia_mux_overflow_para_display|SAIDA_0[1]~0_combout\,
	devoe => ww_devoe,
	o => \LED_0[1]~output_o\);

-- Location: IOOBUF_X31_Y31_N9
\LED_0[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instancia_mux_overflow|ALT_INV_Mux0~2_combout\,
	devoe => ww_devoe,
	o => \LED_0[2]~output_o\);

-- Location: IOOBUF_X29_Y31_N2
\LED_0[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instancia_mux_overflow|ALT_INV_Mux0~2_combout\,
	devoe => ww_devoe,
	o => \LED_0[3]~output_o\);

-- Location: IOOBUF_X31_Y31_N2
\LED_0[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instancia_mux_overflow|ALT_INV_Mux0~2_combout\,
	devoe => ww_devoe,
	o => \LED_0[4]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\LED_0[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instancia_mux_overflow|ALT_INV_Mux0~2_combout\,
	devoe => ww_devoe,
	o => \LED_0[5]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\LED_0[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instancia_mux_overflow|ALT_INV_Mux0~2_combout\,
	devoe => ww_devoe,
	o => \LED_0[6]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\LED_1[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instancia_mux_overflow_para_display|ALT_INV_SAIDA_1[0]~0_combout\,
	devoe => ww_devoe,
	o => \LED_1[0]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\LED_1[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instancia_mux_overflow_para_display|SAIDA_1[1]~1_combout\,
	devoe => ww_devoe,
	o => \LED_1[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\LED_1[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instancia_mux_overflow_para_display|ALT_INV_SAIDA_1[2]~2_combout\,
	devoe => ww_devoe,
	o => \LED_1[2]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\LED_1[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instancia_mux_overflow_para_display|SAIDA_1[3]~3_combout\,
	devoe => ww_devoe,
	o => \LED_1[3]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\LED_1[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instancia_mux_overflow_para_display|SAIDA_1[4]~4_combout\,
	devoe => ww_devoe,
	o => \LED_1[4]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\LED_1[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instancia_mux_overflow_para_display|SAIDA_1[5]~5_combout\,
	devoe => ww_devoe,
	o => \LED_1[5]~output_o\);

-- Location: IOOBUF_X33_Y24_N2
\LED_1[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instancia_mux_overflow_para_display|SAIDA_1[3]~3_combout\,
	devoe => ww_devoe,
	o => \LED_1[6]~output_o\);

-- Location: IOIBUF_X33_Y10_N1
\B[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X33_Y11_N1
\A[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X33_Y22_N8
\B[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X33_Y15_N8
\SEL[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL(0),
	o => \SEL[0]~input_o\);

-- Location: IOIBUF_X33_Y16_N22
\A[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X33_Y16_N15
\B[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X33_Y14_N1
\A[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X32_Y14_N2
\instancia_somador|SomC1|c_out~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \instancia_somador|SomC1|c_out~2_combout\ = (\B[0]~input_o\ & ((\A[0]~input_o\))) # (!\B[0]~input_o\ & (\SEL[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \SEL[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \instancia_somador|SomC1|c_out~2_combout\);

-- Location: LCCOMB_X32_Y14_N20
\instancia_somador|SomC1|c_out~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \instancia_somador|SomC1|c_out~3_combout\ = (\A[1]~input_o\ & ((\instancia_somador|SomC1|c_out~2_combout\) # (\SEL[0]~input_o\ $ (\B[1]~input_o\)))) # (!\A[1]~input_o\ & (\instancia_somador|SomC1|c_out~2_combout\ & (\SEL[0]~input_o\ $ (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \instancia_somador|SomC1|c_out~2_combout\,
	combout => \instancia_somador|SomC1|c_out~3_combout\);

-- Location: LCCOMB_X32_Y14_N28
\instancia_somador|SomC2|c_out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \instancia_somador|SomC2|c_out~0_combout\ = (\A[2]~input_o\ & ((\instancia_somador|SomC1|c_out~3_combout\) # (\B[2]~input_o\ $ (\SEL[0]~input_o\)))) # (!\A[2]~input_o\ & (\instancia_somador|SomC1|c_out~3_combout\ & (\B[2]~input_o\ $ (\SEL[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SEL[0]~input_o\,
	datad => \instancia_somador|SomC1|c_out~3_combout\,
	combout => \instancia_somador|SomC2|c_out~0_combout\);

-- Location: LCCOMB_X32_Y14_N12
\instancia_somador|SomC3|c_out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \instancia_somador|SomC3|c_out~0_combout\ = (\A[3]~input_o\ & ((\instancia_somador|SomC2|c_out~0_combout\) # (\SEL[0]~input_o\ $ (\B[3]~input_o\)))) # (!\A[3]~input_o\ & (\instancia_somador|SomC2|c_out~0_combout\ & (\SEL[0]~input_o\ $ (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \instancia_somador|SomC2|c_out~0_combout\,
	combout => \instancia_somador|SomC3|c_out~0_combout\);

-- Location: IOIBUF_X33_Y14_N8
\C_IN~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C_IN,
	o => \C_IN~input_o\);

-- Location: IOIBUF_X33_Y22_N1
\B[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X32_Y14_N8
\instancia_mux_overflow|Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \instancia_mux_overflow|Mux0~1_combout\ = (\instancia_mux_overflow|Mux0~0_combout\ & (((\B[0]~input_o\) # (!\C_IN~input_o\)))) # (!\instancia_mux_overflow|Mux0~0_combout\ & (\B[3]~input_o\ & (\C_IN~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_mux_overflow|Mux0~0_combout\,
	datab => \B[3]~input_o\,
	datac => \C_IN~input_o\,
	datad => \B[0]~input_o\,
	combout => \instancia_mux_overflow|Mux0~1_combout\);

-- Location: IOIBUF_X33_Y11_N8
\SEL[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL(1),
	o => \SEL[1]~input_o\);

-- Location: LCCOMB_X32_Y14_N4
\instancia_mux_overflow|Mux0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \instancia_mux_overflow|Mux0~2_combout\ = (\SEL[1]~input_o\ & (((\instancia_mux_overflow|Mux0~1_combout\)))) # (!\SEL[1]~input_o\ & (\instancia_somador|SomC3|c_out~0_combout\ $ ((\instancia_somador|SomC2|c_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_somador|SomC3|c_out~0_combout\,
	datab => \instancia_somador|SomC2|c_out~0_combout\,
	datac => \instancia_mux_overflow|Mux0~1_combout\,
	datad => \SEL[1]~input_o\,
	combout => \instancia_mux_overflow|Mux0~2_combout\);

-- Location: LCCOMB_X32_Y14_N6
\instancia_somador|SomC3|Meio2|Sum~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \instancia_somador|SomC3|Meio2|Sum~0_combout\ = \A[3]~input_o\ $ (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	combout => \instancia_somador|SomC3|Meio2|Sum~0_combout\);

-- Location: LCCOMB_X32_Y14_N16
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\SEL[1]~input_o\) # (\instancia_somador|SomC3|Meio2|Sum~0_combout\ $ (\SEL[0]~input_o\ $ (!\instancia_somador|SomC2|c_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \instancia_somador|SomC3|Meio2|Sum~0_combout\,
	datac => \SEL[0]~input_o\,
	datad => \instancia_somador|SomC2|c_out~0_combout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X32_Y14_N0
\instancia_somador|SomC0|Meio2|Sum~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \instancia_somador|SomC0|Meio2|Sum~0_combout\ = \B[0]~input_o\ $ (\A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \instancia_somador|SomC0|Meio2|Sum~0_combout\);

-- Location: CLKCTRL_G8
\Mux0~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mux0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mux0~0clkctrl_outclk\);

-- Location: LCCOMB_X32_Y14_N22
\instancia_abs_n|fio_resultado_adicao[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \instancia_abs_n|fio_resultado_adicao\(0) = (GLOBAL(\Mux0~0clkctrl_outclk\) & (\instancia_abs_n|fio_resultado_adicao\(0))) # (!GLOBAL(\Mux0~0clkctrl_outclk\) & ((\instancia_somador|SomC0|Meio2|Sum~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_abs_n|fio_resultado_adicao\(0),
	datac => \instancia_somador|SomC0|Meio2|Sum~0_combout\,
	datad => \Mux0~0clkctrl_outclk\,
	combout => \instancia_abs_n|fio_resultado_adicao\(0));

-- Location: IOIBUF_X33_Y10_N8
\A[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X32_Y14_N24
\Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = \SEL[0]~input_o\ $ (\instancia_somador|SomC1|c_out~3_combout\ $ (\B[2]~input_o\ $ (\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~input_o\,
	datab => \instancia_somador|SomC1|c_out~3_combout\,
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X32_Y14_N14
\instancia_abs_n|fio_resultado_adicao[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \instancia_abs_n|fio_resultado_adicao\(2) = (GLOBAL(\Mux0~0clkctrl_outclk\) & ((\instancia_abs_n|fio_resultado_adicao\(2)))) # (!GLOBAL(\Mux0~0clkctrl_outclk\) & (\Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux1~0_combout\,
	datac => \instancia_abs_n|fio_resultado_adicao\(2),
	datad => \Mux0~0clkctrl_outclk\,
	combout => \instancia_abs_n|fio_resultado_adicao\(2));

-- Location: LCCOMB_X32_Y14_N30
\instancia_abs_n|fio_resultado_adicao[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \instancia_abs_n|fio_resultado_adicao\(1) = (GLOBAL(\Mux0~0clkctrl_outclk\) & ((\instancia_abs_n|fio_resultado_adicao\(1)))) # (!GLOBAL(\Mux0~0clkctrl_outclk\) & (\instancia_somador|SomC1|Meio2|Sum~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_somador|SomC1|Meio2|Sum~3_combout\,
	datac => \instancia_abs_n|fio_resultado_adicao\(1),
	datad => \Mux0~0clkctrl_outclk\,
	combout => \instancia_abs_n|fio_resultado_adicao\(1));

-- Location: LCCOMB_X32_Y12_N8
\instancia_mux_zero|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \instancia_mux_zero|Equal0~0_combout\ = (!\instancia_abs_n|fio_resultado_adicao\(0) & (!\instancia_abs_n|fio_resultado_adicao\(2) & !\instancia_abs_n|fio_resultado_adicao\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_abs_n|fio_resultado_adicao\(0),
	datac => \instancia_abs_n|fio_resultado_adicao\(2),
	datad => \instancia_abs_n|fio_resultado_adicao\(1),
	combout => \instancia_mux_zero|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y12_N22
\instancia_mux_overflow_para_display|SAIDA_0[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \instancia_mux_overflow_para_display|SAIDA_0[1]~0_combout\ = (\Mux0~0_combout\ & !\instancia_mux_overflow|Mux0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux0~0_combout\,
	datad => \instancia_mux_overflow|Mux0~2_combout\,
	combout => \instancia_mux_overflow_para_display|SAIDA_0[1]~0_combout\);

-- Location: LCCOMB_X32_Y12_N0
\instancia_mux_overflow_para_display|SAIDA_1[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \instancia_mux_overflow_para_display|SAIDA_1[0]~0_combout\ = (\instancia_abs_n|fio_resultado_adicao\(2)) # (\instancia_mux_overflow|Mux0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia_abs_n|fio_resultado_adicao\(2),
	datad => \instancia_mux_overflow|Mux0~2_combout\,
	combout => \instancia_mux_overflow_para_display|SAIDA_1[0]~0_combout\);

-- Location: LCCOMB_X32_Y12_N10
\instancia_mux_overflow_para_display|SAIDA_1[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \instancia_mux_overflow_para_display|SAIDA_1[1]~1_combout\ = (!\instancia_mux_overflow|Mux0~2_combout\ & ((\instancia_abs_n|fio_resultado_adicao\(1) & (\instancia_abs_n|fio_resultado_adicao\(0) & !\instancia_abs_n|fio_resultado_adicao\(2))) # 
-- (!\instancia_abs_n|fio_resultado_adicao\(1) & ((\instancia_abs_n|fio_resultado_adicao\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_abs_n|fio_resultado_adicao\(1),
	datab => \instancia_abs_n|fio_resultado_adicao\(0),
	datac => \instancia_abs_n|fio_resultado_adicao\(2),
	datad => \instancia_mux_overflow|Mux0~2_combout\,
	combout => \instancia_mux_overflow_para_display|SAIDA_1[1]~1_combout\);

-- Location: LCCOMB_X32_Y12_N24
\instancia_mux_overflow_para_display|SAIDA_1[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \instancia_mux_overflow_para_display|SAIDA_1[2]~2_combout\ = (\instancia_mux_overflow|Mux0~2_combout\) # ((!\instancia_abs_n|fio_resultado_adicao\(1) & (!\instancia_abs_n|fio_resultado_adicao\(0) & \instancia_abs_n|fio_resultado_adicao\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_abs_n|fio_resultado_adicao\(1),
	datab => \instancia_abs_n|fio_resultado_adicao\(0),
	datac => \instancia_abs_n|fio_resultado_adicao\(2),
	datad => \instancia_mux_overflow|Mux0~2_combout\,
	combout => \instancia_mux_overflow_para_display|SAIDA_1[2]~2_combout\);

-- Location: LCCOMB_X32_Y12_N2
\instancia_mux_overflow_para_display|SAIDA_1[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \instancia_mux_overflow_para_display|SAIDA_1[3]~3_combout\ = (\instancia_abs_n|fio_resultado_adicao\(1) & (!\instancia_mux_overflow|Mux0~2_combout\ & (\instancia_abs_n|fio_resultado_adicao\(0) $ (\instancia_abs_n|fio_resultado_adicao\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_abs_n|fio_resultado_adicao\(1),
	datab => \instancia_abs_n|fio_resultado_adicao\(0),
	datac => \instancia_abs_n|fio_resultado_adicao\(2),
	datad => \instancia_mux_overflow|Mux0~2_combout\,
	combout => \instancia_mux_overflow_para_display|SAIDA_1[3]~3_combout\);

-- Location: LCCOMB_X32_Y12_N28
\instancia_mux_overflow_para_display|SAIDA_1[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \instancia_mux_overflow_para_display|SAIDA_1[4]~4_combout\ = (!\instancia_abs_n|fio_resultado_adicao\(1) & (!\instancia_abs_n|fio_resultado_adicao\(0) & (\instancia_abs_n|fio_resultado_adicao\(2) & !\instancia_mux_overflow|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_abs_n|fio_resultado_adicao\(1),
	datab => \instancia_abs_n|fio_resultado_adicao\(0),
	datac => \instancia_abs_n|fio_resultado_adicao\(2),
	datad => \instancia_mux_overflow|Mux0~2_combout\,
	combout => \instancia_mux_overflow_para_display|SAIDA_1[4]~4_combout\);

-- Location: LCCOMB_X32_Y12_N18
\instancia_mux_overflow_para_display|SAIDA_1[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \instancia_mux_overflow_para_display|SAIDA_1[5]~5_combout\ = (\instancia_abs_n|fio_resultado_adicao\(1) & (\instancia_abs_n|fio_resultado_adicao\(0) & (\instancia_abs_n|fio_resultado_adicao\(2) & !\instancia_mux_overflow|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_abs_n|fio_resultado_adicao\(1),
	datab => \instancia_abs_n|fio_resultado_adicao\(0),
	datac => \instancia_abs_n|fio_resultado_adicao\(2),
	datad => \instancia_mux_overflow|Mux0~2_combout\,
	combout => \instancia_mux_overflow_para_display|SAIDA_1[5]~5_combout\);

ww_V <= \V~output_o\;

ww_N <= \N~output_o\;

ww_Z <= \Z~output_o\;

ww_LED_0(0) <= \LED_0[0]~output_o\;

ww_LED_0(1) <= \LED_0[1]~output_o\;

ww_LED_0(2) <= \LED_0[2]~output_o\;

ww_LED_0(3) <= \LED_0[3]~output_o\;

ww_LED_0(4) <= \LED_0[4]~output_o\;

ww_LED_0(5) <= \LED_0[5]~output_o\;

ww_LED_0(6) <= \LED_0[6]~output_o\;

ww_LED_1(0) <= \LED_1[0]~output_o\;

ww_LED_1(1) <= \LED_1[1]~output_o\;

ww_LED_1(2) <= \LED_1[2]~output_o\;

ww_LED_1(3) <= \LED_1[3]~output_o\;

ww_LED_1(4) <= \LED_1[4]~output_o\;

ww_LED_1(5) <= \LED_1[5]~output_o\;

ww_LED_1(6) <= \LED_1[6]~output_o\;
END structure;


