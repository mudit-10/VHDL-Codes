library ieee;
use ieee.std_logic_1164.all;

entity four_ip_and is
	port(
		A : in bit;
		B : in bit;
		C : in bit;
		D : in bit;
		O : out bit
		);
end four_ip_and;

architecture ar_four_ip_and of four_ip_and is

begin

	O <= A AND B AND C AND D;

end ar_four_ip_and;

