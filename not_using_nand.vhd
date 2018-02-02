library ieee;
use ieee.std_logic_1164.all;

entity not_gate1 is
	port(
		A : in bit;
		O : out bit
		);
end not_gate1;

architecture ar_not_gate1 of not_gate1 is

component nand_gate is
	port(
		Nand_A : in bit;
		Nand_B : in bit;
		Nand_C : out bit
		);
end component;

begin
	
U1: nand_gate port map(Nand_A => A,Nand_B => A,Nand_C => O);

end ar_not_gate1;
