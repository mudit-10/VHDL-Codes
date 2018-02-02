library ieee;
use ieee.std_logic_1164.all;

entity decoder_3X8 is
	port(
		A1 : in bit;
		A2 : in bit;
		A3 : in bit;
		E : in bit;
		O1 : out bit;
		O2 : out bit;
		O3 : out bit;
		O4 : out bit;
		O5 : out bit;
		O6 : out bit;
		O7 : out bit;
		O8 : out bit
		);
end decoder_3X8;

architecture ar_decoder_3X8 of decoder_3X8 is

signal notA1, notA2, notA3,notE : bit;

component not_gate is
	port(
		A : in bit;
		O : out bit
		);
end component;

component four_ip_and is
	port(
		A : in bit;
		B : in bit;
		C : in bit;
		D : in bit;
		O : out bit
		);
end component;

begin

U1: not_gate port map(A1,notA1);
U2: not_gate port map(A2,notA2);
U3: not_gate port map(A3,notA3);
UE: not_gate port map(E,notE);
U4: four_ip_and port map(notA1,notA2,notA3,notE,O1);
U5: four_ip_and port map(notA1,notA2,A3,notE,O2);
U6: four_ip_and port map(notA1,A2,notA3,notE,O3);
U7: four_ip_and port map(notA1,A2,A3,notE,O4);
U8: four_ip_and port map(A1,notA2,notA3,notE,O5);
U9: four_ip_and port map(A1,notA2,A3,notE,O6);
U10: four_ip_and port map(A1,A2,notA3,notE,O7);
U11: four_ip_and port map(A1,A2,A3,notE,O8);

end ar_decoder_3X8;
