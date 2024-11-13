library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reg5 is
    Port (
        CLK : in std_logic;
        RST : in std_logic;
        EN  : in std_logic;
        D   : in std_logic_vector(4 downto 0);
        Q   : out std_logic_vector(4 downto 0)
    );
end reg5;

architecture Behavioral of reg5 is
    signal Q_reg : std_logic_vector(4 downto 0);
begin
    process(CLK, RST)
    begin
        if RST = '1' then
            Q_reg <= (others => '0'); -- Reseta o registrador
        elsif rising_edge(CLK) then
            if EN = '1' then
                Q_reg <= D; -- Carrega o valor de D no registrador
            end if;
        end if;
    end process;

    Q <= Q_reg; -- Atribui o valor do registrador à saída Q

end Behavioral;