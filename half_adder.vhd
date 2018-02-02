library ieee;
use ieee.std_logic_1164.all;

entity half_adder is
	port(
		X : in bit;
		Y : in bit;
		Sum : out bit;
		Carry : out bit
		);
end half_adder;

architecture ar_half_adder of half_adder is

component and_gate is
	port(
		A : in bit;
		B : in bit;
		C : out bit
		);
end component;

component xor_gate is
	port(
		A : in bit;
		B : in bit;
		C : out bit
		);
end component;

begin

U1 : xor_gate port map(A => X, B => Y, C => Sum);
U2 : and_gate port map(A => X, B => Y, C => Carry);

end ar_half_adder;