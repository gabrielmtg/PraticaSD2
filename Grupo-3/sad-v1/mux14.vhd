library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux14 is
    Port (
        a   : in  STD_LOGIC_VECTOR(13 DOWNTO 0);          -- Entrada 1
        b   : in  STD_LOGIC_VECTOR(13 DOWNTO 0);          -- Entrada 2
        sel : in  STD_LOGIC;          -- Sinal de seleção
        y   : out STD_LOGIC_VECTOR(13 DOWNTO 0)           -- Saída
    );
end mux14;

architecture Behavioral of mux14 is
begin
    process(a, b, sel)
    begin
        if sel = '0' then
            y <= a;                  -- Se sel for 0, seleciona a
        else
            y <= b;                  -- Se sel for 1, seleciona b
        end if;
    end process;
end Behavioral;
