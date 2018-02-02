library ieee;
use ieee.std_logic_1164.all;

entity mux_2X1 is
	port(
		A : in bit;
		B : in bit;
		S : in bit;
		F : out bit
		);
end mux_2X1;

architecture ar_mux_2X1 of mux_2X1 is

component or_gate is
	port(
		A : in bit;
		B : in bit;
		C : out bit
		);
end component;

component and_gate is
	port(
		A : in bit;
		B : in bit;
		C : out bit
		);
end component;

component not_gate is
	port(
		A : in bit;
		O : out bit
		);
end component;

signal not_S, F1,F2 : bit;

begin
	
U1 : not_gate port map(A => S, O => not_S);
U2 : and_gate port map(A => A, B => not_S, C => F1);
U3 : and_gate port map(A => B, B => S, C => F2);
U4 : or_gate port map(A => F1, B => F2, C => F);

end ar_mux_2X1;


