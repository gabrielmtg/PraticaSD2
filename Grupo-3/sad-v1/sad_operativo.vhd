LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE IEEE.math_real.all; -- (pra usar o log teos que fazer o cast real(real(numero))) e depois fazer o integer(number)
use ieee.numeric_std.all;-- pra usar os signed
ENTITY sad_operativo IS
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
		clk,zi,ci,cpA,cpB,zsoma,csoma,csad_reg : IN STD_LOGIC; -- tem que ter o clk(acho q não)
		menor : OUT STD_LOGIC; 
		
		--LB : integer(LOG2(real(N))); -- e para ser o log de 64, logo o nosso 6, ver depois
		pA,pB : IN STD_LOGIC_VECTOR(B-1 DOWNTO 0); 
		fim : OUT STD_LOGIC_VECTOR(5 DOWNTO 0); -- a saida end so datapath(6 bits)
		SAD : OUT STD_LOGIC_VECTOR(13 DOWNTO 0) -- a saida sad do datapath(14 bits)
	);
	
--para chegar nesse 14 temos que pegar o log de 64(6) e somar com o 8 que temos, ai vamos ter o 14, mas como fazer isso?
--usar a função do log 2 da libary math, mas é melhor ver isso depois
	
END ENTITY; -- sad

ARCHITECTURE arch OF sad_operativo IS
	-- descrever
	-- usar sad_bo e sad_bc (sad_operativo e sad_controle)
	-- não codifiquem toda a arquitetura apenas neste arquivo
	-- modularizem a descrição de vocês...
	
	
------------SIGNALS-----------------	

-----------------signals do incrementar do loop--------------

signal saidamuxi: std_logic_vector(6 downto 0);
signal saidaregi: std_logic_vector(6 downto 0);

signal saidaregi6: std_logic_vector(5 downto 0);
--o sinal do menor sai nessa partição desse sinal de 7 bits em 6 bits e 1 bit

signal saidasomadori: std_logic_vector(5 downto 0);
signal entradadomuxi: std_logic_vector(6 downto 0);
signal carryoutsomador6,carryoutsomador8,carryoutsomador14,carryoutsubtractor: std_logic;

-------------------------signals da soma das memorias----------------------------------
signal saidaPA,saidaPB,saidaABS: std_logic_vector(7 downto 0);
--CONCATENAMOS A SAIDA DO ABS COM 6 BITS, LOGO TEREMOS 14 BITS
signal saidaADDDER,saidaMUX,saidaSOMA,saidaSAD_reg,entradasomador14: std_logic_vector(13 downto 0);
----------------signals extras----------------
signal saidaABS0: std_logic_vector(7 downto 0);
signal saidaSUB: std_LOGIC_VECTOR(8 downto 0);

begin

-- ciclo do loop------------------------------------------------
Muxi: entity work.mux6 port map(entradadomuxi,"0000000",zi,saidamuxi);
Regi: entity work.reg7 PORT MAP(clk,'0',ci,saidamuxi,saidaregi);
menor <= not(saidaregi(6)); -- parte da 'quebra' de bits ---- pegamos esse sinal pra o menor
saidaregi6 <= saidaregi(5 downto 0); -- parte da 'quebra' de bits -- pegamos esse sinal pro end tambem
fim <= saidaregi6; -- saida end(botei fim pq end nao dava)
Somadori: entity work.adder port map(saidaregi6,"000001",carryoutsomador6,saidasomadori); -- tem que transformar o saidaregi6 em signed
entradadomuxi <= (carryoutsomador6 & saidasomadori) ;

--ciclo das memorias----------------------------------------------
RegPA: entity work.regn8 port map(clk,'0',cpA,pA,saidaPA);
RegPB: entity work.regn8 port map(clk,'0',cpB,pB,saidaPB);
Subtrator: entity work.subtractor port map(saidaPA,saidaPB,carryoutsubtractor,saidaSUB); -- carryout aqui é só pra constar, e ja temos o abs no subtrator
Absolute0: entity work.absolute port map(saidaSUB,saidaABS0);
entradasomador14 <= "000000" & saidaABS0; -- colocamos 6 bits a esquerda
Somador: entity work.adder14 port map(saidaSOMA,entradasomador14,carryoutsomador14,saidaADDDER);
Mux: entity work.mux14 port map(saidaADDDER,"00000000000000",zsoma,saidaMUX);
regsoma: entity work.reg14 port map(clk,'0',csoma,saidaMUX,saidaSOMA); -- esse é o SOMA 
ultimoreg: entity work.reg14 port map(clk,'0',csad_reg,saidaSOMA,SAD); -- esse é o SOMA 

END ARCHITECTURE; -- arch
