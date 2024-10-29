library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity SUBTRACTOR_SOURCE is
Port ( A, B, C : in  STD_LOGIC;
H_DIFFERENCE, F_DIFFERENCE, H_BORROW, F_BORROW : out  STD_LOGIC);
end SUBTRACTOR_SOURCE;


architecture dataflow of SUBTRACTOR_SOURCE is

begin

---half subtractor--(nao vamos usar)

H_DIFFERENCE <= A xor B;
H_BORROW <= (not A) and B;

---full subtractor

F_DIFFERENCE <= A xor B xor C;
F_BORROW <= ((not A) and (B or C)) or (B and C);

end dataflow;