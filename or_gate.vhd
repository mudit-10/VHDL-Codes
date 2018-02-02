library ieee;
use ieee.std_logic_1164.all;

entity or_gate is
	port(
		A : in bit;
		B : in bit;
		C : out bit
		);
end or_gate;

architecture ar_or_gate of or_gate is

begin
	C <= A OR B;

end ar_or_gate;
