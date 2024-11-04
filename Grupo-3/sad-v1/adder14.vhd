LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY adder14 IS
	GENERIC (N : POSITIVE := 14);
	PORT (
		A, B: IN std_logic_vector (N-1 DOWNTO 0);
		c_out: OUT STD_LOGIC;
		S: OUT std_logic_vector (N-1 DOWNTO 0)
	);
END adder14;

ARCHITECTURE arch OF adder14 IS
SIGNAL resultado: std_logic_vector(N DOWNTO 0);
BEGIN

	resultado <= ('0'& A) + ('0' & B);
	c_out <= resultado(N);
	S <= resultado(N-1 downto 0);

END arch;