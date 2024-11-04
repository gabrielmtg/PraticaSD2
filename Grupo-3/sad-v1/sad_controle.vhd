LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY sad_controle IS PORT(
	clk : IN STD_LOGIC; -- ck
	enable : IN STD_LOGIC; -- iniciar
	reset : IN STD_LOGIC; -- reset
	read_mem : OUT STD_LOGIC; -- read
	done: OUT STD_LOGIC; -- pronto
	zi, ci, cpA, cpB, zSoma, csoma, csad_reg: OUT std_logic; -- comandos
	menor: IN std_logic -- status
);
END ENTITY;

ARCHITECTURE arch OF sad_controle IS
	TYPE estado IS (S0, S1, S2, S3, S4, S5);
	SIGNAL EstadoAtual, ProximoEstado : estado;
BEGIN
	PROCESS (EstadoAtual, enable, menor)
	BEGIN
		CASE EstadoAtual IS
			WHEN S0 =>
				done <= '1';
				read_mem <= '0';
				zi <= '0';
				ci <= '0';
				zSoma <= '0';
				csoma <= '0';
				cpA <= '0';
				cpB <= '0';
				csad_reg <= '0';
				
				IF enable='0' THEN
					ProximoEstado <= S0;
				ELSE 
					ProximoEstado <= S1;
				END IF;
			WHEN S1 =>
				done <= '0';
				read_mem <= '0';
				zi <= '1';
				ci <= '1';
				zSoma <= '1';
				csoma <= '1';
				cpA <= '0';
				cpB <= '0';
				csad_reg <= '0';
				
				ProximoEstado <= S2;
			WHEN S2 =>
				done <= '0';
				read_mem <= '0';
				zi <= '0';
				ci <= '0';
				zSoma <= '0';
				csoma <= '0';
				cpA <= '0';
				cpB <= '0';
				csad_reg <= '0';

				IF menor='0' THEN
					ProximoEstado <= S5;
				ELSE 
					ProximoEstado <= S3;
				END IF;
			WHEN S3 =>
				done <= '0';
				read_mem <= '1';
				zi <= '0';
				ci <= '0';
				zSoma <= '0';
				csoma <= '0';
				cpA <= '1';
				cpB <= '1';
				csad_reg <= '0';
				
				ProximoEstado <= S4;
			WHEN S4 =>
				done <= '0';
				read_mem <= '0';
				zi <= '0';
				ci <= '1';
				zSoma <= '0';
				csoma <= '1';
				cpA <= '0';
				cpB <= '0';
				csad_reg <= '0';

				proximoEstado <= S2;
			WHEN S5 =>
				done <= '0';
				read_mem <= '0';
				zi <= '0';
				ci <= '0';
				zSoma <= '0';
				csoma <= '0';
				cpA <= '0';
				cpB <= '0';
				csad_reg <= '1';

				ProximoEstado <= S0;
		END CASE;
	END PROCESS;
	
	PROCESS (clk, reset)
	BEGIN
		IF reset = '1' THEN
			EstadoAtual <= S0;
		ELSIF (rising_edge(clk)) THEN
			EstadoAtual <= ProximoEstado;
		END IF;
	END PROCESS;
	
END ARCHITECTURE; -- arch