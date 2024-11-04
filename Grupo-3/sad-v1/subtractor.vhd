LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY subtractor IS
	GENERIC (N : POSITIVE := 8);
	PORT (
		A, B: IN std_logic_vector (N-1 DOWNTO 0);
		X: out std_logic;
		S: OUT std_logic_vector (N DOWNTO 0)
	);
END subtractor;

ARCHITECTURE arch OF subtractor IS
BEGIN

	S <= std_logic_vector(signed('0' & A) - signed('0' & B));

END arch;