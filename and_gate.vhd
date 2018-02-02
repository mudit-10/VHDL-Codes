library ieee;
use ieee.std_logic_1164.all;

entity and_gate is
	port(
		A : in bit;
		B : in bit;
		C : out bit
		);
end and_gate;

architecture ar_and_gate of and_gate is

begin
	C <= A AND B;

end ar_and_gate;

