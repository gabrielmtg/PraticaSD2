library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity adder9 is
    generic (n : positive := 9);
    port (
        a, b: in std_logic_vector (n-1 downto 0);
        cout: out std_logic;
        s: out std_logic_vector (n-1 downto 0)
    );
end adder9;

architecture rtl of adder9 is
signal result: std_logic_vector(n downto 0);
begin

    result <= ('0' & a) + ('0' & b);
    cout <= result(n);
    s <= result(n-1 downto 0);

end rtl;
