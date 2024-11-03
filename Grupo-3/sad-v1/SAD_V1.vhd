LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY SAD_V1 IS
	GENERIC (
		-- obrigatório ---
		-- defina as operações considerando o número B de bits por amostra
		B : POSITIVE := 8; -- número de bits por amostra
		-----------------------------------------------------------------------
		-- desejado (i.e., não obrigatório) ---
		-- se você desejar, pode usar os valores abaixo para descrever uma
		-- entidade que funcione tanto para a SAD v1 quanto para a SAD v3.
		N : POSITIVE := 64; -- número de amostras por bloco
		P : POSITIVE := 1 -- número de amostras de cada bloco lidas em paralelo
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
		address : OUT STD_LOGIC_VECTOR (5 DOWNTO 0); -- end -- Esse aqui é o que vai controlar o acesso a memoria(o que vai ter que variar)
		sad_value : OUT STD_LOGIC_VECTOR (13 DOWNTO 0); -- SAD
		done: OUT STD_LOGIC -- pronto
	);
END ENTITY; -- sad

ARCHITECTURE arch OF SAD_V1 IS


component sad_controle IS
	GENERIC (
		B : POSITIVE := 8; -- número de bits por amostra
		P : POSITIVE := 1 -- número de amostras de cada bloco lidas em paralelo
		-----------------------------------------------------------------------
	);
	PORT (
		clk : IN STD_LOGIC; -- ck
		enable : IN STD_LOGIC; -- iniciar
		reset : IN STD_LOGIC; -- reset
		read_mem : OUT STD_LOGIC; -- read
		done,zi,ci,cPA,cPB,zsoma,csoma,csad_reg: OUT STD_LOGIC; -- pronto e outras coisas
		menor : IN STD_LOGIC -- menor
	);
	
END component; -- sad_controle

component sad_operativo IS
	GENERIC (
		B : POSITIVE := 8; -- número de bits por amostra
		N : POSITIVE := 64; -- número de amostras por bloco
		P : POSITIVE := 1 -- número de amostras de cada bloco lidas em paralelo
		-----------------------------------------------------------------------
	);
	PORT (
		clk,zi,ci,cpA,cpB,zsoma,csoma,csad_reg : IN STD_LOGIC; -- tem que ter o clk(acho q não)
		menor : OUT STD_LOGIC; 
		pA,pB : IN STD_LOGIC_VECTOR(B-1 DOWNTO 0); 
		fim : OUT STD_LOGIC_VECTOR(5 DOWNTO 0); -- a saida end so sad_operativo(6 bits)
		SAD : OUT STD_LOGIC_VECTOR(13 DOWNTO 0) -- a saida sad do sad_operativo(14 bits)
	);
	
END component; -- sad_operativo

-----------------------------SIGNALS------------------------------------


signal Szi,Sci,ScpA,ScpB,Szsoma,Scsoma,Scsad_reg,Smenor: STD_LOGIC;

BEGIN

Bloco_de_Controle: sad_controle port map(clk,enable,reset,read_mem,done, Szi, Sci, ScPA, ScPB, Szsoma, Scsoma, Scsad_reg, Smenor);

Bloco_de_Operacao: sad_operativo port map(clk,Szi,Sci,ScpA,ScpB,Szsoma,Scsoma,Scsad_reg,Smenor,sample_ori,sample_can,address,sad_value);

END ARCHITECTURE; -- arch