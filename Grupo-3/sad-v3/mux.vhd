library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_2x1 is
    Port (
        a   : in  STD_LOGIC;          -- Entrada 1
        b   : in  STD_LOGIC;          -- Entrada 2
        sel : in  STD_LOGIC;          -- Sinal de seleção
        y   : out STD_LOGIC           -- Saída
    );
end mux_2x1;

architecture Behavioral of mux_2x1 is
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
