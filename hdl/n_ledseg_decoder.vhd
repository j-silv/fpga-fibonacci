library ieee;
use ieee.std_logic_1164.all;
use work.digit_types.ledseg_digit;
use work.digit_types.bcd_digit;

-- COMMON ANODE LED 7 SEGMENT DECODER (n digits)
-- Segments: A B C D E F G
entity n_ledseg_decoder is 

    generic (
        NUM_DIGITS : integer := 4
    );
    port (
        decimal_in : in bcd_digit((NUM_DIGITS-1) downto 0);
        ledseg_out : out ledseg_digit(NUM_DIGITS-1 downto 0) := (others => (others => '0'))
    );
end entity;

architecture logic of n_ledseg_decoder is 
begin

end architecture;