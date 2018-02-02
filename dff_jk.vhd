library ieee;
use ieee.std_logic_1164.all;

entity dff_jk is
	port(
		D : in std_logic;
		CLK: in std_logic;
		Reset: in std_logic;
		Q : inout std_logic;
		notQ : inout std_logic
		);
end dff_jk;

architecture ar_dff_jk of dff_jk is

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

signal notD : std_logic;

begin

notD <= NOT D;
U1 : jk_flipflop port map(D,notD,CLK,Reset,Q,notQ);

end ar_dff_jk;
