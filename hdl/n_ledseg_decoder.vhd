library ieee;
use ieee.std_logic_1164.all;
use work.digit_types.ledseg_digit;
use work.digit_types.bcd_digit;

-- COMMON ANODE LED 7 SEGMENT DECODER (n digits)
-- Segments: G F E D C B A
entity n_ledseg_decoder is 
    generic (
        NUM_DIGITS : integer := 4
    );
    port (
        decimal_in : in bcd_digit((NUM_DIGITS-1) downto 0);
        ledseg_out : out ledseg_digit(NUM_DIGITS-1 downto 0) := (others => (others => '1'))
    );
end entity;

architecture logic of n_ledseg_decoder is
    component ledseg_decoder is
        port (
            decimal_in : in std_logic_vector(3 downto 0);
            ledseg_out : out std_logic_vector(6 downto 0)
        );
    end component ledseg_decoder;
begin
    
    build_n_digits: for i in 0 to (NUM_DIGITS-1) generate
    -- dont need to do specify ledseg_decoder architecture 
    -- (there's only one)
    begin
        decoder: ledseg_decoder
            port map (
                decimal_in => decimal_in(i),
                ledseg_out => ledseg_out(i)
            );
    end generate build_n_digits;

end architecture;