-- Quartus II VHDL Template
-- Signed Adder/Subtractor

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder4 is

	generic
	(
		DATA_WIDTH : natural := 4
	);

	port 
	(
		a		: in signed ((DATA_WIDTH-1) downto 0);
		b		: in signed ((DATA_WIDTH-1) downto 0);
		add_sub : in std_logic;
		result	: out std_logic_vector ((DATA_WIDTH-1) downto 0)
	);

end entity;

architecture rtl of adder4 is

signal x: signed((DATA_WIDTH-1) downto 0);

begin

	process(a,b,add_sub)
	begin
		-- Add if "add_sub" is 1, else subtract
		if (add_sub = '1') then
			x <= a + b;
		else
			x <= a - b;
		end if;
	end process;
	
	result <= std_logic_vector(x);

end rtl;
