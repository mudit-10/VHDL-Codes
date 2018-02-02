library ieee;
use ieee.std_logic_1164.all;

entity sync_counter is
	port(
		CLK : in std_logic;
		Reset : in std_logic;
		Q : inout std_logic_vector(2 downto 0)
		);
end sync_counter;

architecture ar_sync_counter of sync_counter is

component t_flipflop is
	port(
		T : in std_logic;
		CLK : in std_logic;
		Reset : in std_logic;
		Q : out std_logic;
		notQ : out std_logic
		);
end component;

signal nQ: std_logic_vector(2 downto 0);
signal T: std_logic_vector(2 downto 0);

begin

T(0) <= '1';
T(1) <= (NOT Q(2)) AND (Q(0));
T(2) <= ((NOT Q(2)) AND Q(1) AND Q(0)) OR (Q(2) AND (NOT Q(1)) AND Q(0)); 

U1 : t_flipflop port map(T(0),CLK,Reset,Q(0),nQ(0));
U2 : t_flipflop port map(T(1),CLK,Reset,Q(1),nQ(1));
U3 : t_flipflop port map(T(2),CLK,Reset,Q(2),nQ(2));

end ar_sync_counter;