library IEEE;
use IEEE.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;
use IEEE.std_logic_textio.all;
use std.textio.all;

entity testbench is
end testbench; 

architecture tb of testbench is

CONSTANT B : natural := 32;
CONSTANT N : natural := 16;
CONSTANT P : natural := 4;
signal clk,reset: std_logic := '0';
signal enable: std_logic := '1';
signal sample_ori,sample_can: std_logic_vector(B-1 DOWNTO 0);
signal read_mem,done: std_logic;
signal address: std_logic_vector(3 downto 0);
signal sad_value: std_logic_vector(13 downto 0);
signal finished: std_logic := '0';

CONSTANT passo : TIME := 530 ns; -- tempo para a sad ler 1 dos 16 valores da memoria
-- 540 é o tempo para terminar 1 teste
CONSTANT period : TIME := 10 ns; -- tempo do clock
-- tempo no nosso clock = 104.6 Mhz = 9.5547487101089 ns
--duplicamos para ter garantia de tempo logo 20 ns.

begin

  -- Connect DUV
  DUV: entity work.SAD_V3
    port map(clk, enable,reset,sample_ori,sample_can,read_mem,address,sad_value,done);

    clk <= not clk after period/2 when finished /= '1' else '0';
    --reset <= '0' after 10 ns;
    --enable <= '1' after 10 ns;

    stim: process is
       file arquivo_de_estimulos : text open read_mode is "../../estimulos.dat";
      -- vou organizar os dados assim:
      -- Valores de A,B e saida vão tá assim -> 00000000000000000000000000000000 11111111111111111111111111111111  11111111000000     
       variable linha_de_estimulos: line; --Todos os valores que precisamos tão em 1 linha
       variable espaco: character;
       variable valor_de_entrada_A: bit_vector(31 downto 0);
       variable valor_de_entrada_B: bit_vector(31 downto 0);
       variable valor_de_saida: bit_vector(13 downto 0);
       begin
      
        while not endfile(arquivo_de_estimulos) loop

          -- read inputs
          readline(arquivo_de_estimulos, linha_de_estimulos);

          read(linha_de_estimulos, valor_de_entrada_A);
          sample_ori <= to_stdlogicvector (valor_de_entrada_A);

          read(linha_de_estimulos, espaco); -- pula um espaço em branco

          read(linha_de_estimulos, valor_de_entrada_B);
          sample_can <= to_stdlogicvector (valor_de_entrada_B);
          
          read(linha_de_estimulos, espaco); -- pula um espaço em branco

          read(linha_de_estimulos, valor_de_saida); -- lê o valor esperado
          wait until done = '1';
          wait for 10 ns;
            assert (sad_value = to_stdlogicvector(valor_de_saida))
              report
                "Falha na simulacao. "
              severity error;
          end loop;
                    
          wait for passo;
          finished <= '1';
          assert false report "Test done." severity note;
          wait;
          end process;

      end tb;
      
