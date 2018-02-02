library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
	port(
		A : in bit;
		B : in bit;
		Cin : in bit;
		Sum_out : out bit;
		Cout : out bit
		);
end full_adder;

architecture ar_full_adder of full_adder is

component half_adder is
	port(
		X : in bit;
		Y : in bit;
		Sum : out bit;
		Carry : out bit
		);
end component;

component or_gate is
	port(
		A : in bit;
		B : in bit;
		C : out bit
		);
end component;

signal S1,C1,C2 : bit;

begin

U1 : half_adder port map(X => A, Y => B, Sum => S1, Carry => C1);
U2 : half_adder port map(X => S1, Y => Cin, Sum => Sum_out, Carry => C2);
U3 : or_gate port map(A => C1, B => C2, C => Cout);

end ar_full_adder;


