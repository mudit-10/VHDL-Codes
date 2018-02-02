library ieee;
use ieee.std_logic_1164.all;

entity nand_gate1 is
	port(
		A : in bit;
		B : in bit;
		C : out bit
		);
end nand_gate1;

architecture ar_nand_gate1 of nand_gate1 is

begin
	C <= A NAND B;

end ar_nand_gate1;

entity and_gate1 is
	port(
		X : in bit;
		Y : in bit;
		Z : out bit
		);
end and_gate1;

architecture ar_and_gate1 of and_gate1 is

component nand_gate1 is
	port(
		A : in bit;
		B : in bit;
		C : out bit
		);
end component;

signal O : bit;

begin

U1 : nand_gate1 port map(A => X, B => Y, C => O);
U2 : nand_gate1 port map(A => O, B => O, C => Z);

end ar_and_gate1;

