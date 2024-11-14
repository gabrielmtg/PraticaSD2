library IEEE;
use IEEE.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;
 
entity testbench is
end testbench; 

architecture tb of testbench is

CONSTANT B : natural := 8;
CONSTANT N : natural := 64;
CONSTANT P : natural := 1;
signal clk,enable: std_logic := '0';
signal reset: std_logic := '1';
signal sample_ori,sample_can: std_logic_vector(B-1 DOWNTO 0);
signal read_mem,done: std_logic;
signal address: std_logic_vector(5 downto 0);
signal sad_value: std_logic_vector(13 downto 0);

CONSTANT passo : TIME := 1980 ns; -- tempo para a sad terminar de fazer todo calculo(eu acho que é pra ser isso aqui) 
CONSTANT period : TIME := 10 ns; -- tempo do clock

begin

  -- Connect DUV
  DUV: entity work.SAD_V1
    port map(clk, enable,reset,sample_ori,sample_can,read_mem,address,sad_value,done);

    clk <= not clk after period/2;
    reset <= '0' after 10 ns;
    enable <= '1' after 10 ns;

  process
  begin

    sample_ori <= "00000000"; -- Mem_A[end]
    sample_can <= "11111111"; -- Mem_B[end]

    wait for passo;
    assert(sad_value="11111111000000") --16320
    report "Fail 0" severity error;


    sample_ori <= "11110000"; -- Mem_A[end]
    sample_can <= "00001111"; -- Mem_B[end]

    wait for passo;
    assert(sad_value="11111111000000") --16320
    report "Fail 1" severity error;

    --clk <= clk; -- ck
    --enable <= enable; -- iniciar
    --reset <= reset; -- reset
    sample_ori <= "00000000"; -- Mem_A[end]
    sample_can <= "00000001"; -- Mem_B[end]

    wait for passo;
    assert(sad_value="00000001000000") --64
    report "Fail 2" severity error;
    
  end process;
end tb;
