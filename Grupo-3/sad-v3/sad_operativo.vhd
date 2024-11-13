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
		clk,zi,ci,cpA,cpB,zsoma,csoma,csad_reg : IN STD_LOGIC; -- tem que ter o clk(acho q não)
		menor : OUT STD_LOGIC; 
		
		--LB : integer(LOG2(real(N))); -- e para ser o log de 64, logo o nosso 6, ver depois
		pA0,pB0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
		pA1,pB1 : IN STD_LOGIC_VECTOR(15 DOWNTO 8); 
		pA2,pB2 : IN STD_LOGIC_VECTOR(23 DOWNTO 16); 
		pA3,pB3 : IN STD_LOGIC_VECTOR(31 DOWNTO 24); 
		fim : OUT STD_LOGIC_VECTOR(3 DOWNTO 0); -- a saida end so datapath(4 bits)
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

signal saidamuxi: std_logic_vector(4 downto 0);
signal saidaregi: std_logic_vector(4 downto 0);

signal saidaregi4: std_logic_vector(3 downto 0);
--o sinal do "menor" sai nessa partição desse sinal de 7 bits em 6 bits e 1 bit

signal saidasomadori: std_logic_vector(3 downto 0);
signal entradadomuxi: std_logic_vector(4 downto 0); -- concatenamos com a saidasomadori para termos 5 bits dnv e colocar no mux
signal carryoutsomador4: std_logic;

-------------------------signals da soma das memorias----------------------------------
-- tutorial para entender isso aqui:
-- olhar a imagem do SADv3 nos slides da aula 6T, está na ordem que os componentes aparece
--por exemplo, começamos com os regPA0,PB0...
--vamos para os ABS
--vamos para os somadores(nomeie eles por ordem de aparição no modelo do professor lá, então o ADD0 é o 
-- primeiro somador a aparecer da esquerda pra direita)

signal saidaPA0,saidaPA1,saidaPA2,saidaPA3,saidaPB0,saidaPB1,saidaPB2,saidaPB3: std_logic_vector(7 downto 0); -- signal dos reg do começo
signal x,xx,xxx,xxxx: std_logic; --signals inuteis só pra botar no carryout deles
signal saidaADD0,saidaADD1: std_logic_vector(7 downto 0);
signal carryoutsomador0,carryoutsomador1: std_logic; -- signal do carryout do somador
signal saidaADD09,saidaADD19: std_logic_vector(8 downto 0); -- signal pra concatenar com os carryout
signal saidaADD2: std_logic_vector(8 downto 0);
signal carryoutsomador2: std_logic;
signal saidaADD210: std_logic_vector(9 downto 0); -- concatenamos com o carryout
signal saidaADD214: std_logic_vector(13 downto 0); -- concatenamos com 4 zeros
signal y: std_logic; --signals inuteis só pra botar no carryout deles
signal saidaADD3: std_logic_vector(13 downto 0);
signal saidaMUX14: std_logic_vector(13 downto 0);
signal saidaSOMA: std_logic_vector(13 downto 0); -- entra no somador 14 e no SAD_reg
signal saidaSAD_reg: std_logic_vector(13 downto 0); -- entra no somador 14 e no SAD_reg

----------------signals extras------------------------------
signal saidaABS0,saidaABS1,saidaABS2,saidaABS3: std_logic_vector(7 downto 0);
signal saidaSUB0,saidaSUB1,saidaSUB2,saidaSUB3: std_LOGIC_VECTOR(8 downto 0);

BEGIN
-- Vamos desenvolver aqui o comportamento do circuito

-- ciclo do loop------------------------------------------------
Muxi: entity work.mux5 port map(entradadomuxi,"00000",zi,saidamuxi);
Regi: entity work.reg5 PORT MAP(clk,'0',ci,saidamuxi,saidaregi);
menor <= not(saidaregi(4)); -- parte da 'quebra' de bits ---- pegamos esse sinal pra o menor
saidaregi4 <= saidaregi(3 downto 0); -- parte da 'quebra' de bits -- pegamos esse sinal pro end tambem
fim <= saidaregi4; -- saida end(botei fim pq end nao dava)
Somadori: entity work.adder4 port map(saidaregi4,"0001",carryoutsomador4,saidasomadori); -- tem que transformar o saidaregi6 em signed
entradadomuxi <= (carryoutsomador4 & saidasomadori) ;

--ciclo das memorias----------------------------------------------
RegPA0: entity work.regn8 port map(clk,'0',cpA,pA0,saidaPA0);
RegPA1: entity work.regn8 port map(clk,'0',cpA,pA1,saidaPA1);
RegPA2: entity work.regn8 port map(clk,'0',cpA,pA2,saidaPA2);
RegPA3: entity work.regn8 port map(clk,'0',cpA,pA3,saidaPA3);
RegPB0: entity work.regn8 port map(clk,'0',cpB,pB0,saidaPB0);
RegPB1: entity work.regn8 port map(clk,'0',cpB,pB1,saidaPB1);
RegPB2: entity work.regn8 port map(clk,'0',cpB,pB2,saidaPB2);
RegPB3: entity work.regn8 port map(clk,'0',cpB,pB3,saidaPB3);
Subtrator0: entity work.subtractor port map(saidaPA0,saidaPB0,x,saidaSUB0);
Subtrator1: entity work.subtractor port map(saidaPA1,saidaPB1,xx,saidaSUB1);
Subtrator2: entity work.subtractor port map(saidaPA2,saidaPB2,xxx,saidaSUB2);
Subtrator3: entity work.subtractor port map(saidaPA3,saidaPB3,xxxx,saidaSUB3);
Absolute0: entity work.absolute port map(saidaSUB0,saidaABS0);
Absolute1: entity work.absolute port map(saidaSUB1,saidaABS1);
Absolute2: entity work.absolute port map(saidaSUB2,saidaABS2);
Absolute3: entity work.absolute port map(saidaSUB3,saidaABS3);
Adder0: entity work.adder8 port map(saidaABS0,saidaABS1,carryoutsomador0,saidaADD0);
Adder1: entity work.adder8 port map(saidaABS2,saidaABS3,carryoutsomador1,saidaADD1);
saidaADD09 <= carryoutsomador0 & saidaADD0;
saidaADD19 <= carryoutsomador1 & saidaADD1;
Adder2: entity work.adder9 port map(saidaADD09,saidaADD19,carryoutsomador2,saidaADD2);
saidaADD210 <= carryoutsomador2 & saidaADD2;
saidaADD214 <= "0000" & saidaADD210;
Adder3: entity work.adder14 port map(saidaSOMA,saidaADD214,y,saidaADD3);
MMux14: entity work.mux14 port map(saidaADD3,"00000000000000",zsoma,saidaMUX14);entity work.
regsoma: entity work.reg14 port map(clk,'0',csoma,saidaMUX14,saidaSOMA);
SAD_reg: entity work.reg14 port map(clk,'0',csad_reg,saidaSOMA,SAD);


END ARCHITECTURE; -- arch