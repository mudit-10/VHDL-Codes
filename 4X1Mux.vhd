library ieee;
use ieee.std_logic_1164.all;

entity mux_4X1 is
	port(
		A0 : in bit;
		A1 : in bit;
		A2 : in bit;
		A3 : in bit;
		S0 : in bit;
		S1 : in bit;
		F : out bit
		);
end mux_4X1;

architecture ar_mux_4X1 of mux_4X1 is

component mux_2X1 is
	port(
		A : in bit;
		B : in bit;
		S : in bit;
		F : out bit
		);
end component;

signal F1,F2 : bit;

begin

U1 : mux_2X1 port map(A => A0, B => A1, S => S0, F => F1);
U2 : mux_2X1 port map(A => A2, B => A3, S => S0, F => F2);
U3 : mux_2X1 port map(A => F1, B => F2, S => S1, F => F); 

end ar_mux_4X1;


