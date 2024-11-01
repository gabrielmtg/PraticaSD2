LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
ENTITY regn14 IS
GENERIC ( N : INTEGER := 14 ) ;
PORT (R : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0) ;
Rin, Clock: IN STD_LOGIC ;
Q : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0) ) ;
END regn14 ;
ARCHITECTURE Behavior OF regn14 IS
BEGIN
PROCESS
BEGIN
WAIT UNTIL Clock'EVENT AND Clock = '1' ;
IF Rin = '1' THEN Q <= R ;
END IF ;
END PROCESS ;
END Behavior ;