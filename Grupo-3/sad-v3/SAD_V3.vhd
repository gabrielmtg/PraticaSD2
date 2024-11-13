LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY SAD_V3 IS
	GENERIC (
		-- obrigatório ---
		-- defina as operações considerando o número B de bits por amostra
		B : POSITIVE := 32; -- número de bits por amostra
		-----------------------------------------------------------------------
		-- desejado (i.e., não obrigatório) ---
		-- se você desejar, pode usar os valores abaixo para descrever uma
		-- entidade que funcione tanto para a SAD v1 quanto para a SAD v3.
		N : POSITIVE := 16; -- número de amostras por bloco
		P : POSITIVE := 4 -- número de amostras de cada bloco lidas em paralelo
		-----------------------------------------------------------------------
	);
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
		sample_ori : IN STD_LOGIC_VECTOR (B-1 DOWNTO 0); -- Mem_A[end]
		sample_can : IN STD_LOGIC_VECTOR (B-1 DOWNTO 0); -- Mem_B[end]
		read_mem : OUT STD_LOGIC; -- read
		address : OUT STD_LOGIC_VECTOR (3 DOWNTO 0); -- end -- Esse aqui é o que vai controlar o acesso a memoria(o que vai ter que variar)
		sad_value : OUT STD_LOGIC_VECTOR (13 DOWNTO 0); -- SAD
		done: OUT STD_LOGIC -- pronto
	);
END ENTITY; -- sad

ARCHITECTURE arch OF SAD_V3 IS
signal Szi,Sci,ScpA,ScpB,Szsoma,Scsoma,Scsad_reg,Smenor: STD_LOGIC;

BEGIN

Bloco_de_Controle: entity work.sad_controle port map(clk,enable,reset,read_mem,done, Szi, Sci, ScPA, ScPB, Szsoma, Scsoma, Scsad_reg, Smenor);

Bloco_de_Operacao: entity work.sad_operativo port map(clk,Szi,Sci,ScpA,ScpB,Szsoma,Scsoma,Scsad_reg,Smenor,
sample_ori(7 downto 0),sample_can(7 downto 0), -- pA0,pB0
sample_ori(15 downto 8),sample_can(15 downto 8), -- pA1,pB1
sample_ori(23 downto 16),sample_can(23 downto 16), -- pA2,pB2
sample_ori(31 downto 24),sample_can(31 downto 24), -- pA3,pB3
address,sad_value);

END ARCHITECTURE; -- arch