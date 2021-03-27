library ieee;
use ieee.std_logic_1164.all;

package digit_types is
    -- unconstrained arraies (undefined length)
    -- index type range is defined when an object of these types is declared
    type bcd_digit is array (integer range <>) of std_logic_vector(3 downto 0);
    type ledseg_digit is array (integer range <>) of std_logic_vector(6 downto 0);
end package digit_types;