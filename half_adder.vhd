--adiciona packages
library ieee;
use ieee.std_logic_114.all;

--declara as entradas e saídas
entity half_adder is
port (
	A: in std_logic;
	B: in std_logic;
	Sum: out std_logic;
	Carry: out std_logic
);
end half_adder;

--declara as operações lógicas
architecture rtl of half_adder is
begin
	Sum <= A xor B;
	Carry <= A and B;
end rtl;
