library verilog;
use verilog.vl_types.all;
entity calculadora_vlg_check_tst is
    port(
        LED_0           : in     vl_logic_vector(6 downto 0);
        LED_1           : in     vl_logic_vector(6 downto 0);
        N               : in     vl_logic;
        RESULTADO       : in     vl_logic_vector(3 downto 0);
        RESULTADO_ABS   : in     vl_logic_vector(3 downto 0);
        V               : in     vl_logic;
        Z               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end calculadora_vlg_check_tst;
