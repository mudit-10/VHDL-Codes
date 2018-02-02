library ieee;
use ieee.std_logic_1164.all;

entity as is
	port(
		A0 : in bit;
		A1 : in bit;
		A2 : in bit;
		A3 : in bit;
		B0 : in bit;
		B1 : in bit;
		B2 : in bit;
		B3 : in bit;
		M : in bit;
		S0 : out bit;
		S1 : out bit;
		S2 : out bit;
		S3 : out bit;
		Cout : out bit
		);
end as;

architecture ar_as of as is

component xor_gate is
	port(
		A : in bit;
		B : in bit;
		C : out bit
		);
end component;

component full_adder is
	port(
		A : in bit;
		B : in bit;
		Cin : in bit;
		Sum_out : out bit;
		Cout : out bit
		);
end component;

signal X0,X1,X2,X3,C0,C1,C2 : bit;

begin

U0 : xor_gate port map(A => B0, B => M, C => X0);
U1 : xor_gate port map(A => B1, B => M, C => X1);
U2 : xor_gate port map(A => B2, B => M, C => X2);
U3 : xor_gate port map(A => B3, B => M, C => X3);

FA0 : full_adder port map(A=> A0, B => X0, Cin => M, Sum_out => S0, Cout => C0);
FA1 : full_adder port map(A=> A1, B => X1, Cin => C0, Sum_out => S1, Cout => C1);
FA2 : full_adder port map(A=> A2, B => X2, Cin => C1, Sum_out => S2, Cout => C2);
FA3 : full_adder port map(A=> A3, B => X3, Cin => C2, Sum_out => S3, Cout => Cout);

end ar_as;

