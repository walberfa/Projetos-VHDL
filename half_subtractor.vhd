--adiciona packages
library ieee;
use ieee.std_logic_114.all;

--declara as entradas e saídas
entity half_subtractor is
port (
	A: in std_logic;
	B: in std_logic;
	Diff: out std_logic;
	Borrow: out std_logic
);
end half_subtractor;

--declara as operações lógicas
architecture rtl of half_subtractor is
begin
	Diff <= A xor B;
	Borrow <= (not A) and B;
end rtl;
