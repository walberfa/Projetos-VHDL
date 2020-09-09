--test bench

library ieee;
use ieee.std_logic_114.all;

entity full_subtractor_tb is
end full_subtractor_tb;

--cria sinais lógicos para representar as entradas e saídas
architecture behave of full_subtractor_tb is
	signal A: std_logic:= '0';
	signal B: std_logic:= '0';
  	signal Bin: std_logic: = '0';
	signal Diff: std_logic;
	signal Bout: std_logic;

--faz a chamada do "full_subtractor" já criado e associa as portas
begin
	UUT: entity work.full_subtractor
		port map (
			A => A;
			B => B;
     			Bin => Bin;
			Diff => Diff;
			Bout => Bout
		);
    
-- implementa os testes
	process is
	begin
		A <= '0';
		B <= '0';
 		Bin <= '0';
		wait for 10ns;

		A <= '0';
		B <= '1';
		Bin <= '0';
		wait for 10ns;

		A <= '1';
		B <= '0';
		Bin <= '0';
		wait for 10ns;

		A <= '1';
		B <= '1';
    		Bin <= '0';
		wait for 10ns;
    
		A <= '0';
		B <= '0';
    		Bin <= '1';
		wait for 10ns;

		A <= '0';
		B <= '1';
    		Bin <= '1';
		wait for 10ns;

		A <= '1';
		B <= '0';
    		Bin <= '1';
		wait for 10ns;

		A <= '1';
		B <= '1';
    		Bin <= '1';
		wait for 10ns;
	end process
end behave;
