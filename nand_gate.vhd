library ieee;
use ieee.std_logic_1164.all;

entity nand_gate is
	port(
		Nand_A : in bit;
		Nand_B : in bit;
		Nand_C : out bit
		);
end nand_gate;

architecture ar_nand_gate of nand_gate is

begin
	Nand_C <= Nand_A NAND Nand_B;

end ar_nand_gate;

