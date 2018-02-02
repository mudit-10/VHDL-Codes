library ieee;
use ieee.std_logic_1164.all;

entity jk_flipflop is
	port(
		J : in std_logic;
		K : in std_logic;
		CLK : in std_logic;
		Reset : in std_logic;
		Q : out std_logic;
		notQ : out std_logic
		);
end jk_flipflop;

architecture ar_jk_flipflop of jk_flipflop is

signal TMP : std_logic;

begin

	PROCESS(CLK,Reset)
	
	begin

	if(Reset='1') then
		TMP <= '0';
	else

		if(CLK='1' and CLK'EVENT) then
			if(J='0' and K='0') then
			TMP <= TMP;
			elsif(J='1' and K='1') then
			TMP <= NOT TMP;
			elsif(J='0' and K='1') then
			TMP <= '0';
			else
			TMP <= '1';
			end if;
		end if;
	end if;
	
	end PROCESS;

	Q <= TMP;
	notQ <= NOT TMP;

end ar_jk_flipflop;
