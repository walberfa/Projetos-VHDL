--adiciona packages
library ieee;
use ieee.std_logic_114.all;

--declara as entradas e saídas
entity full_subtractor is
port map (
	A: in std_logic;
	B: in std_logic;
	Bin: in std_logic;
	Diff: in std_logic;
	Bout: in std_logic
);
end full_subtractor;

--declara as operações lógicas
architecture rtl of full_subtractor is
	signal line1: std_logic; --usei essa componente "line" pra ficar mais didático
	signal line2: std_logic;
	signal line3: std_logic;
	signal line4: std_logic;
begin
	line1 <= A xor B;
	line2 <= (not A) and B;
        line3 <= (not A) and Bin;
	line4 <= B and Bin;
	Diff <= line1 xor Bin;
	Bout <= line2 or line3 or line4;
end rtl
