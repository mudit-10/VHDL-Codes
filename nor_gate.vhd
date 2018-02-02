library ieee;
use ieee.std_logic_1164.all;

entity nor_gate is
	port(
		A : in bit;
		B : in bit;
		C : out bit
		);
end nor_gate;

architecture ar_nor_gate of nor_gate is

begin
	C <= A NOR B;

end ar_nor_gate;
