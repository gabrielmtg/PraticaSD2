LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE IEEE.math_real.all; -- (pra usar o log teos que fazer o cast real(real(numero))) e depois fazer o integer(number)
use ieee.numeric_std.all;-- pra usar os signed

ENTITY datapathV3 IS
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
		clk,zi,ci,cpA0,cpA1,cpA2,cpA3,cpB0,cpB1,cpB2,cpB3,zsoma,csoma,csad_reg : IN STD_LOGIC; -- tem que ter o clk(acho q não)
		menor : OUT STD_LOGIC; 
		
		--LB : integer(LOG2(real(N))); -- e para ser o log de 64, logo o nosso 6, ver depois
		pA0,pB0 : IN STD_LOGIC_VECTOR(B-1 DOWNTO 0); 
		pA1,pB1 : IN STD_LOGIC_VECTOR(B-1 DOWNTO 0); 
		pA2,pB2 : IN STD_LOGIC_VECTOR(B-1 DOWNTO 0); 
		pA3,pB3 : IN STD_LOGIC_VECTOR(B-1 DOWNTO 0); 
		fim : OUT STD_LOGIC_VECTOR(3 DOWNTO 0); -- a saida end so datapath(4 bits)
		SAD : OUT STD_LOGIC_VECTOR(13 DOWNTO 0) -- a saida sad do datapath(14 bits)
	);
	
--para chegar nesse 14 temos que pegar o log de 64(6) e somar com o 8 que temos, ai vamos ter o 14, mas como fazer isso?
--usar a função do log 2 da libary math, mas é melhor ver isso depois
	
END ENTITY; -- sad

ARCHITECTURE arch OF datapathV3 IS
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
signal saidaSUB0,saidaSUB1,saidaSUB2,saidaSUB3: std_logic_vector(7 downto 0);
signal x,xx,xxx,xxxx: std_logic; --signals inuteis só pra botar no carryout deles
signal saidaABS0,saidaABS1,saidaABS2,saidaABS3: std_logic_vector(7 downto 0); -- nem vamos ter que usar, o ABSjá tá dentro dos subtratores
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

-----------------------COMPONENTES------------------

-------SOMADOR E SUBTRATOR--------

component adder is
	generic
	(
		DATA_WIDTH : natural := 6
	);
	port 
	(
		a		: in signed ((DATA_WIDTH-1) downto 0);
		b		: in signed ((DATA_WIDTH-1) downto 0);
		add_sub : in std_logic;
		result	: out std_logic_vector ((DATA_WIDTH-1) downto 0)
	);
end component;

component adder4 is
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
end component;

component adder8 is
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
end component;

component adder9 is
	generic
	(
		DATA_WIDTH : natural := 9
	);
	port 
	(
		a		: in signed ((DATA_WIDTH-1) downto 0);
		b		: in signed ((DATA_WIDTH-1) downto 0);
		add_sub : in std_logic;
		result	: out std_logic_vector ((DATA_WIDTH-1) downto 0)
	);
end component;

component adder14 is
	generic
	(
		DATA_WIDTH : natural := 14
	);
	port 
	(
		a		: in signed ((DATA_WIDTH-1) downto 0);
		b		: in signed ((DATA_WIDTH-1) downto 0);
		add_sub : in std_logic;
		result	: out std_logic_vector ((DATA_WIDTH-1) downto 0)
	);
end component;


component subtractor is
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
end component;

---------REGISTRADORES-----
component reg7 IS
GENERIC ( N : INTEGER := 7 ) ;
PORT (R : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0) ;
Rin, Clock: IN STD_LOGIC ;
Q : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0) ) ;
END component ;	

component reg5 IS
GENERIC ( N : INTEGER := 5 ) ;
PORT (R : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0) ;
Rin, Clock: IN STD_LOGIC ;
Q : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0) ) ;
END component ;

component regn8 IS
GENERIC ( N : INTEGER := 8 ) ;
PORT (R : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0) ;
Rin, Clock: IN STD_LOGIC ;
Q : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0) ) ;
END component ;	

component regn14 IS
GENERIC ( N : INTEGER := 14 ) ;
PORT (R : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0) ;
Rin, Clock: IN STD_LOGIC ;
Q : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0) ) ;
END component ;	

-------MUX----------------

component mux6 is
    Port (
        a   : in  STD_LOGIC_VECTOR(6 DOWNTO 0);          -- Entrada 1
        b   : in  STD_LOGIC_VECTOR(6 DOWNTO 0);          -- Entrada 2
        sel : in  STD_LOGIC;          -- Sinal de seleção
        y   : out STD_LOGIC_VECTOR(6 DOWNTO 0)           -- Saída
    );
end component;

component mux5 is
    Port (
        a   : in  STD_LOGIC_VECTOR(4 DOWNTO 0);          -- Entrada 1
        b   : in  STD_LOGIC_VECTOR(4 DOWNTO 0);          -- Entrada 2
        sel : in  STD_LOGIC;          -- Sinal de seleção
        y   : out STD_LOGIC_VECTOR(4 DOWNTO 0)           -- Saída
    );
end component;

component mux14 is
    Port (
        a   : in  STD_LOGIC_VECTOR(13 DOWNTO 0);          -- Entrada 1
        b   : in  STD_LOGIC_VECTOR(13 DOWNTO 0);          -- Entrada 2
        sel : in  STD_LOGIC;          -- Sinal de seleção
        y   : out STD_LOGIC_VECTOR(13 DOWNTO 0)           -- Saída
    );
end component;

BEGIN
-- Vamos desenvolver aqui o comportamento do circuito

-- ciclo do loop------------------------------------------------
Muxi: mux5 port map(entradadomuxi,"00000",zi,saidamuxi);
Regi: reg5 PORT MAP(saidamuxi,ci,clk,saidaregi);
menor <= saidaregi(4); -- parte da 'quebra' de bits ---- pegamos esse sinal pra o menor
saidaregi4 <= saidaregi(3 downto 0); -- parte da 'quebra' de bits -- pegamos esse sinal pro end tambem
fim <= saidaregi4; -- saida end(botei fim pq end nao dava)
Somadori: adder4 port map(signed(saidaregi4),"1111",carryoutsomador4,saidasomadori); -- tem que transformar o saidaregi6 em signed
entradadomuxi <= (carryoutsomador4 & saidasomadori) ;

--ciclo das memorias----------------------------------------------
RegPA0: regn8 port map(pA0,cpA,clk,saidaPA0);
RegPA1: regn8 port map(pA1,cpA,clk,saidaPA1);
RegPA2: regn8 port map(pA2,cpA,clk,saidaPA2);
RegPA3: regn8 port map(pA3,cpA,clk,saidaPA3);
RegPB0: regn8 port map(pB0,cpB,clk,saidaPB0);
RegPB1: regn8 port map(pB1,cpB,clk,saidaPB1);
RegPB2: regn8 port map(pB2,cpB,clk,saidaPB2);
RegPB3: regn8 port map(pB3,cpB,clk,saidaPB3);
Subtrator0: subtractor port map(signed(saidaPA0),signed(saidaPB0),x,saidaSUB0); -- já tem o ABS dentro deles
Subtrator1: subtractor port map(signed(saidaPA1),signed(saidaPB1),xx,saidaSUB1); 
Subtrator2: subtractor port map(signed(saidaPA2),signed(saidaPB2),xxx,saidaSUB2); 
Subtrator3: subtractor port map(signed(saidaPA3),signed(saidaPB3),xxxx,saidaSUB3); 
Adder0: adder8 port map(signed(saidaSUB0),signed(saidaSUB1),carryoutsomador0,saidaADD0);
Adder1: adder8 port map(signed(saidaSUB2),signed(saidaSUB3),carryoutsomador1,saidaADD1);
saidaADD09 <= saidaADD0 & carryoutsomador0;
saidaADD19 <= saidaADD1 & carryoutsomador1;
Adder2: adder9 port map(signed(saidaADD09),signed(saidaADD19),carryoutsomador2,saidaADD2);
saidaADD210 <= carryoutsomador2 & saidaADD2;
saidaADD214 <= "0000" & saidaADD210;
Adder3: adder14 port map(signed(saidaSOMA),signed(saidaADD214),y,saidaADD3);
MMux14: mux14 port map(saidaADD3,"00000000000000",zsoma,saidaMUX14);
regsoma: regn14 port map(saidaMUX14,csoma,clk,saidaSOMA);
SAD_reg: regn14 port map(saidaSOMA,csad_reg,clk,saidaSAD_reg);
SAD <= saidaSAD_reg; -- esse e o valor que temos na saida SAD

END ARCHITECTURE; -- arch