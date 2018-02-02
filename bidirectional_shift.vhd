library ieee;
use ieee.std_logic_1164.all;

entity middle is
	port(
		A1 : in std_logic;
		A2 : in std_logic;
		A3 : in std_logic;
		O : out std_logic
		);
end middle;

architecture ar_middle of middle is

signal notA2,O1,O2 : std_logic;

begin

notA2 <= NOT A2;
O1 <= A1 AND A2;
O2 <= notA2 AND A3;
O <= O1 OR O2;

end ar_middle;

library ieee;
use ieee.std_logic_1164.all;

entity bi_shift is
	port(
		M : in std_logic;
		Din : in std_logic;
		CLK : in std_logic;
		Reset : in std_logic;
		Dout : inout std_logic
		);
end bi_shift;

architecture ar_bi_shift of bi_shift is

component middle is
	port(
		A1 : in std_logic;
		A2 : in std_logic;
		A3 : in std_logic;
		O : out std_logic
		);
end component;

component dff_jk is
	port(
		D : in std_logic;
		CLK: in std_logic;
		Reset: in std_logic;
		Q : inout std_logic;
		notQ : inout std_logic
		);
end component;

signal D1,D2,D3,D4,Q1,Q2,Q3,notQ1,notQ2,notQ3,notQ4 : std_logic;

begin

U1 : middle port map(Din,M,Q2,D1);
U2 : dff_jk port map(D1,CLK,Reset,Q1,notQ1);
U3 : middle port map(Q1,M,Q3,D2);
U4 : dff_jk port map(D2,CLK,Reset,Q2,notQ2);
U5 : middle port map(Q2,M,Dout,D3);
U6 : dff_jk port map(D3,CLK,Reset,Q3,notQ3);
U7 : middle port map(Q3,M,Din,D4);
U8 : dff_jk port map(D4,CLK,Reset,Dout,notQ4);

end ar_bi_shift;