library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity subtractor is
    generic (n : positive := 8);
    port (
        a, b: in std_logic_vector (n-1 downto 0);
        x: out std_logic;
        s: out std_logic_vector (n downto 0)
    );
end subtractor;

architecture rtl of subtractor is
begin

    s <= std_logic_vector(signed('0' & a) - signed('0' & b));

end rtl;
