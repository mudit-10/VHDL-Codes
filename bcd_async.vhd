library ieee;
use ieee.std_logic_1164.all;

entity bcd_async is
	port(
		CLK : in std_logic;
		Reset : inout std_logic;
		Q : inout std_logic_vector(3 downto 0)
		);
end bcd_async;

architecture ar_bcd_async of bcd_async is

component t_flipflop is
	port(
		T : in std_logic;
		CLK : in std_logic;
		Reset : in std_logic;
		Q : out std_logic;
		notQ : out std_logic
		);
end component;

signal nQ : std_logic_vector(3 downto 0);

begin

U1 : t_flipflop port map('1',CLK,Reset,Q(0),nQ(0));
U2 : t_flipflop port map('1',nQ(0),Reset,Q(1),nQ(1));
U3 : t_flipflop port map('1',nQ(1),Reset,Q(2),nQ(2));
U4 : t_flipflop port map('1',nQ(2),Reset,Q(3),nQ(3));

Reset <= Q(3) AND Q(1);

end ar_bcd_async;