library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity adder4 is
    generic (N : positive := 4);
    port (
        a, b: in std_logic_vector (N-1 downto 0);
        cout: out std_logic;
        s: out std_logic_vector (N-1 downto 0)
    );
end adder4;

architecture rtl of adder4 is
signal result: std_logic_vector(N downto 0);
begin

    result <= ('0' & a) + ('0' & b);
    cout <= result(N);
    s <= result(N-1 downto 0);

end rtl;
