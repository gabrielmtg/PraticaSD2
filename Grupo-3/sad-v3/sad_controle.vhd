LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.numeric_std.all;
use ieee.math_real.all;
use ieee.std_logic_unsigned.all;

ENTITY sad_controle IS

	PORT (
		-- ATENÇÃO: modifiquem a largura de bits das entradas e saídas que
		-- estão marcadas com DEFINIR de acordo com o número de bits B e
		-- de acordo com o necessário para cada versão da SAD (tentem utilizar
		-- os valores N e P descritos acima para criar apenas uma descrição
		-- configurável que funcione tanto para a SAD v1 quanto para a SAD v3).
		-- Não modifiquem os nomes das portas, apenas a largura de bits quando
		-- for necessário.
		clk : IN STD_LOGIC; -- ck
		enable : IN STD_LOGIC; -- iniciar
		reset : IN STD_LOGIC; -- reset
		--sample_ori : IN STD_LOGIC_VECTOR (B-1 DOWNTO 0); -- Mem_A[end]
		--sample_can : IN STD_LOGIC_VECTOR (B-1 DOWNTO 0); -- Mem_B[end]
		done : OUT STD_LOGIC; -- read
		--address : OUT STD_LOGIC_VECTOR (5 DOWNTO 0); -- end -- Aqui é pra pegar o log de N(no caso log de 64, que é 5)
		--sad_value : OUT STD_LOGIC_VECTOR (13 DOWNTO 0); -- SAD -- aqui deveriamos somar o B com o Log de N(8+5 = 13)
		read_mem,zi,ci,cpA,cpB,zsoma,csoma,csad_reg: OUT STD_LOGIC; -- done e outras coisas
        menor : IN STD_LOGIC -- menor
	);
	
END ENTITY; -- sad

ARCHITECTURE arch OF sad_controle IS
	type estado is (S0, S1, S2, S3, S4, S5);
	signal estadoAtual, proximoEstado : estado;
	
	-- descrever
	-- usar sad_bo e sad_bc (sad_operativo e sad_controle)
	-- não codifiquem toda a arquitetura apenas neste arquivo
	-- modularizem a descrição de vocês...
BEGIN

--revisar isso dps pq com certeza nao esta certo.
process(estadoAtual, menor, enable)
begin
case estadoAtual is
    when S0 =>
        done <= '1';
	read_mem <= '0';
        zi <= '0';
        ci <= '0';
        cPA <= '0';
        cPB <= '0';
        zsoma <= '0';
        csoma <= '0';
        csad_reg <= '0';

	if enable = '0' then
        	proximoEstado <= S0;
	else
		proximoEstado <= S1;
        end if;

    when S1 =>
        done <= '0';
	read_mem <= '0';
        zi <= '1';
        ci <= '1';
        cPA <= '0';
        cPB <= '0';
        zsoma <= '1';
        csoma <= '1';
        csad_reg <= '0';
        proximoEstado <= S2;

    when S2 =>
        done <= '0';
	read_mem <= '0';
        zi <= '0';
        ci <= '0';
        cPA <= '0';
        cPB <= '0';
        zsoma <= '0';
        csoma <= '0';
        csad_reg <= '0';
        if(menor = '0') then
            proximoEstado <= S5;
        elsif (menor = '1') then
            proximoEstado <= S3;
        end if;
    when S3 =>
        done <= '0';
	read_mem <= '1';
        zi <= '0';
        ci <= '0';
        cPA <= '1';
        cPB <= '1';
        zsoma <= '0';
        csoma <= '0';
        csad_reg <= '0';
        proximoEstado <= S4;
    when S4 =>
        done <= '0';
	read_mem <= '0';
        zi <= '0';
        ci <= '1';
        cPA <= '0';
        cPB <= '0';
        zsoma <= '0';
        csoma <= '1';
        csad_reg <= '0';
        proximoEstado <= S2;
    when S5 =>
        done <= '0';
	read_mem <= '0';
        zi <= '0';
        ci <= '0';
        cPA <= '0';
        cPB <= '0';
        zsoma <= '0';
        csoma <= '0';
        csad_reg <= '1';
        proximoEstado <= S0;
    end case;
end process;

process(reset, clk)
begin
    if(reset = '1') then
        estadoAtual <= S0;
    elsif(rising_edge(clk)) then
        estadoAtual <= proximoEstado;
    end if;
end process;

    
END ARCHITECTURE; -- arch