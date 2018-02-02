library ieee;
use ieee.std_logic_1164.all;

entity t_flipflop is
	port(
		T : in std_logic;
		CLK : in std_logic;
		Reset : in std_logic;
		Q : out std_logic;
		notQ : out std_logic
		);
end t_flipflop;

architecture ar_t_flipflop of t_flipflop is

component jk_flipflop is
	port(
		J : in std_logic;
		K : in std_logic;
		CLK : in std_logic;
		Reset : in std_logic;
		Q : out std_logic;
		notQ : out std_logic
		);
end component;

begin

U1: jk_flipflop port map(T,T,CLK,Reset,Q,notQ);

end ar_t_flipflop;
