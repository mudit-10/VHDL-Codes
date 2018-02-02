library ieee;
use ieee.std_logic_1164.all;

entity nand_gate2 is
	port(
		A : in bit;
		B : in bit;
		C : out bit
		);
end nand_gate2;

architecture ar_nand_gate2 of nand_gate2 is

begin

	C <= A NAND B;

end ar_nand_gate2;


entity or_gate2 is
	port(
		X : in bit;
		Y : in bit;
		Z : out bit
		);
end or_gate2;

architecture ar_or_gate2 of or_gate2 is

component nand_gate2 is
	port(
		A : in bit;
		B : in bit;
		C : out bit
		);
end component;

signal O1,O2 : bit;

begin

U1 : nand_gate2 port map(A => X, B => X, C => O1);
U2 : nand_gate2 port map(A => Y, B => Y, C => O2);
U3 : nand_gate2 port map(A => O1, B => O1, C => Z);

end ar_or_gate2;

