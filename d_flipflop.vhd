library ieee;
use ieee.std_logic_1164.all;

entity d_flipflop is
	port(
		D : in bit;
		CLK: in bit;
		Q : inout bit;
		notQ : inout bit
		);
end d_flipflop;

architecture ar_d_flipflop of d_flipflop is

signal notD : bit;

component sr_flipflop is
	port(
		S : in bit;
		R : in bit;
		CLK : in bit;
		Q : inout bit;
		notQ : inout bit
		);
end component;

begin

notD <= NOT D;

U1 : sr_flipflop port map(D,notD,CLK,Q,notQ);

end ar_d_flipflop;