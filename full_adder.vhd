--adiciona packages
library ieee;
use ieee.std_logic_114.all;

--declara as entradas e saídas
entity full_adder is
port map (
	A: in std_logic;
	B: in std_logic;
	Cin: in std_logic;
	Sum: in std_logic;
	Cout: in std_logic
);
end full_adder;

--declara as operações lógicas
architecture rtl of full_adder is
	signal line1: std_logic; --usei essa componente "line" pra ficar mais didático
	signal line2: std_logic;
	signal line3: std_logic;
begin
	line1 <= A xor B;
	line2 <= line1 and Cin;
	line3 <= A and B;
	Sum <= line1 xor Cin;
	Cout <= line2 or line3;
end rtl
