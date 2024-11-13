LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY absolute IS
	GENERIC (N : POSITIVE := 9);
	PORT (
		a: IN std_logic_vector (N-1 DOWNTO 0);
		s: OUT std_logic_vector (N-2 DOWNTO 0)
	);
END absolute;

ARCHITECTURE arch OF absolute IS
BEGIN
	WITH a(N-1) SELECT
		s <= 	a(N-2 DOWNTO 0) WHEN '0',
		std_logic_vector(-signed(a)(N-2 DOWNTO 0)) WHEN OTHERS;

END arch;