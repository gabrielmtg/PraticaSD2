LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.numeric_std.all;
use ieee.math_real.all;
use ieee.std_logic_unsigned.all;

ENTITY sad_controle IS
	GENERIC (
		B : POSITIVE := 8;

		N : POSITIVE := 64;
		P : POSITIVE := 1
	);
	PORT (
		clk : IN STD_LOGIC;
		enable : IN STD_LOGIC;
		reset : IN STD_LOGIC;
		read_mem : OUT STD_LOGIC;
		done,zi,ci,cPA,cPB,zsoma,csoma,csad_reg: OUT STD_LOGIC;
		menor : IN STD_LOGIC 
	);
	
END ENTITY;

ARCHITECTURE arch OF sad_controle IS
	type estado is (S0, S1, S2, S3, S4, S5);
	signal estadoAtual, proximoEstado : estado;
BEGIN
process(estadoAtual, enable, menor)
begin
	case estadoAtual is
		when S0 =>
			done <= '1';
			zi <= '0';
			ci <= '0';
			cPA <= '0';
			cPB <= '0';
			zsoma <= '0';
			csoma <= '0';
			csad_reg <= '0';
			read_mem <= '0';
			if(enable = '1') then
				proximoEstado <= S0;
			else
				proximoEstado <= S1;
			end if;
		when S1 =>
			done <= '0';
			zi <= '1';
			ci <= '1';
			cPA <= '0';
			cPB <= '0';
			zsoma <= '1';
			csoma <= '1';
			csad_reg <= '0';
			read_mem <= '0';
			proximoEstado <= S2;

		when S2 =>
			done <= '0';
			zi <= '1';
			ci <= '1';
			cPA <= '0';
			cPB <= '0';
			zsoma <= '1';
			csoma <= '1';
			csad_reg <= '0';
			read_mem <= '0';
			if(menor = '0') then
				proximoEstado <= S3;
			else
				proximoEstado <= S5;
			end if;
		when S3 =>
			done <= '0';
			zi <= '1';
			ci <= '1';
			cPA <= '1';
			cPB <= '1';
			zsoma <= '0';
			csoma <= '0';
			csad_reg <= '0';
			read_mem <= '1';
			proximoEstado <= S4;
		when S4 =>
			done <= '0';
			zi <= '0';
			ci <= '1';
			cPA <= '0';
			cPB <= '0';
			zsoma <= '0';
			csoma <= '1';
			csad_reg <= '0';
			read_mem <= '0';
			proximoEstado <= S2;
		when S5 =>
			done <= '0';
			zi <= '0';
			ci <= '0';
			cPA <= '0';
			cPB <= '0';
			zsoma <= '0';
			csoma <= '0';
			csad_reg <= '1';
			read_mem <= '0';
			proximoEstado <= S0;
		end case;
	end process;

process(clk, reset)
begin
	if(reset = '1') then
		estadoAtual <= S0;
	elsif (rising_edge(clk)) then
		estadoAtual <= proximoEstado;
	end if;
end process;

END ARCHITECTURE;