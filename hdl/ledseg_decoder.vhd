library ieee;
use ieee.std_logic_1164.all;

-- COMMON ANODE LED 7 SEGMENT DECODER (n digits)
-- Segments: G F E D C B A

entity ledseg_decoder is
    port (
        decimal_in : in std_logic_vector(3 downto 0);
        -- decimal point not included
        ledseg_out : out std_logic_vector(6 downto 0)
    );
end entity;

architecture logic of ledseg_decoder is
begin
    process (decimal_in)
    begin
        case (decimal_in) is
            when x"0" => ledseg_out <= b"1000000";
            when x"1" => ledseg_out <= b"1111001";
            when x"2" => ledseg_out <= b"0100100";
            when x"3" => ledseg_out <= b"0110000";
            when x"4" => ledseg_out <= b"0011001";
            when x"5" => ledseg_out <= b"0010010";
            when x"6" => ledseg_out <= b"0000010";
            when x"7" => ledseg_out <= b"1011000";
            when x"8" => ledseg_out <= b"0000000";
            when x"9" => ledseg_out <= b"0010000";

                -- invalid inputs turn off all segments
            when others => ledseg_out <= b"1111111";
        end case;
    end process;
end architecture;