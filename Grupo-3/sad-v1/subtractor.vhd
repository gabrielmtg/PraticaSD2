-- Quartus II VHDL Template
-- Signed Adder/Subtractor

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity subtractor is

	generic
	(
		DATA_WIDTH : natural := 8
	);

	port 
	(
		a		: in signed ((DATA_WIDTH-1) downto 0);
		b		: in signed ((DATA_WIDTH-1) downto 0);
		add_sub : in std_logic;
		result	: out std_logic_vector ((DATA_WIDTH-1) downto 0)
	);

end entity;

architecture rtl of subtractor is

signal X : signed ((DATA_WIDTH-1) downto 0); -- sinal pra fazer a conversão entre signed e std_logic_vector

begin

	process(a,b,add_sub)
	begin
		-- Add if "add_sub" is 1, else subtract
		if (add_sub = '0') then
			X <= a + b;
		else
			X <= a - b;
		end if;
	end process;
	
	result <= std_logic_vector(abs(X)); -- ja temos o abs aqui no subtrator!!!(outro motivo pra ter o sinal signed)

end rtl;
