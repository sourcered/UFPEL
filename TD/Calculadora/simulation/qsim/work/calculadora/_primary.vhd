library verilog;
use verilog.vl_types.all;
entity calculadora is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        C_IN            : in     vl_logic;
        SEL             : in     vl_logic_vector(1 downto 0);
        RESULTADO       : out    vl_logic_vector(3 downto 0);
        RESULTADO_ABS   : out    vl_logic_vector(3 downto 0);
        V               : out    vl_logic;
        N               : out    vl_logic;
        Z               : out    vl_logic;
        LED_0           : out    vl_logic_vector(6 downto 0);
        LED_1           : out    vl_logic_vector(6 downto 0)
    );
end calculadora;
