library IEEE;
use IEEE.std_logic_1164.all;

entity c_adder is
	port(
		a, b, c_in: in std_logic;
		sum, carry : out std_logic
	);
end c_adder;

architecture n_c_adder of c_adder is
begin
	sum <= a xor b xor c_in;
	carry <= (a and b) or (a and c_in) or (b and c_in);
end n_c_adder;