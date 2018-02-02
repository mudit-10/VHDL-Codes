library ieee;
use ieee.std_logic_1164.all;

entity not_gate is
	port(
		A : in bit;
		O : out bit
		);
end not_gate;

architecture ar_not_gate of not_gate is

begin
	O <= NOT A;

end ar_not_gate;
