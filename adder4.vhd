library ieee;
use ieee.std_logic_1164.all

entity adder4 is
port (
	A: in std_logic_vector (3 downto 0);
	B: in std_logic_vector (3 downto 0);
	Cin: in std_logic;
	S: out std_logic_vector (3 downto 0);
	Cout: out std_logic
);
end adder4;

architecture behave of adder4 is
component full_adder
port (
	A: in std_logic;
	B: in std_logic;
	Cin: in std_logic;
	S: out std_logic;
	Cout: out std_logic
);
end component;
	signal C1: std_logic;
	signal C2: std_logic;
	signal C3: std_logic;

begin
	FA1: full_adder port map (A(0),B(0),Cin,S(0),C1);
	FA2: full_adder port map (A(1),B(1),C1,S(1),C2);
	FA3: full_adder port map (A(2),B(2),C2,S(2),C3);
	FA4: full_adder port map (A(3),B(3),C3,S(3),Cout);
end behave;
