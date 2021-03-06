--test bench

library ieee;
use ieee.std_logic_114.all;

entity half_subtractor_tb is
end half_subtractor_tb;

--cria sinais lógicos para representar as entradas e saídas
architecture behave of half_subtractor_tb is
	signal A: std_logic:= '0';
	signal B: std_logic:= '0';
	signal Diff: std_logic;
	signal Borrow: std_logic;

--faz a chamada do "half.subtractor" já criado e associa as portas
begin
	UUT: entity work.half_subtractor
		port map (
			A => A;
			B => B;
			Diff => Diff;
			Borrow => Borrow
		);
    
-- implementa os testes
	process is
	begin
		A <= '0';
		B <= '0';
		wait for 10ns;

		A <= '0';
		B <= '1';
		wait for 10ns;

		A <= '1';
		B <= '0';
		wait for 10ns;

		A <= '1';
		B <= '1';
		wait for 10ns;
	end process
end behave;
