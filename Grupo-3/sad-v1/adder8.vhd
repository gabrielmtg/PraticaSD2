library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity adder8 is
    generic (n : positive := 8);
    port (
        a, b: in std_logic_vector (n-1 downto 0);
        cout: out std_logic;
        s: out std_logic_vector (n-1 downto 0)
    );
end adder8;

architecture rtl of adder8 is
signal result: std_logic_vector(n downto 0);
begin

    result <= ('0' & a) + ('0' & b);
    cout <= result(n);
    s <= result(n-1 downto 0);

end rtl;
