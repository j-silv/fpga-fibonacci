-------------------------------------------------------------------------------
-- source code adapted from: https://en.wikipedia.org/wiki/double_dabble
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.digit_types.bcd_digit;

entity bin2bcd is
    generic (
        -- input binary signal bit length
        BIN_IN_LENGTH : integer := 12;
        -- 4 digits means: ones, tens, hundreds, thousands
        NUM_BCD_DIGITS : integer := 4
    );
    port (
        bin_in : in std_logic_vector((BIN_IN_LENGTH - 1) downto 0);

        -- an array of N number of BCD digits each with 4 bits (see type package)
        bcd_out : out bcd_digit((NUM_BCD_DIGITS - 1) downto 0) := (others => (others => '0'))
    );
end bin2bcd;

architecture behavioral of bin2bcd is
begin

    process (bin_in)
        -- this holds the input binary number
        variable temp : std_logic_vector ((BIN_IN_LENGTH - 1) downto 0);

        -- each BCD digit takes up 4 bits, so we can easily determine the total bit width
        -- needed for this variable based on the generic
        variable bcd_temp : unsigned ((NUM_BCD_DIGITS * 4 - 1) downto 0) := (others => '0');
    begin
        -- zero the bcd variable
        bcd_temp := (others => '0');

        -- read input into temp variable
        temp((BIN_IN_LENGTH - 1) downto 0) := bin_in;

        -- following loop could be optimized since we do not need to check and 
        -- add 3 for the first 3 iterations (number can never be > 4)
        for i in 0 to (BIN_IN_LENGTH - 1) loop

            -- loop through each BCD digit to check if result of the shifting number is greater than 4
            for j in 0 to (NUM_BCD_DIGITS - 1) loop

                -- algorithm to check each BCD digit going from LSB to MSB 
                -- (3 downto 0, 7 downto 4, ... etc.)
                if bcd_temp((3 + 4 * j) downto j * 4) > 4 then
                    bcd_temp((3 + 4 * j) downto j * 4) := bcd_temp((3 + 4 * j) downto j * 4) + 3;
                end if;

            end loop;

            -- shift bcd_temp left by 1 bit, copy MSB of temp into LSB of bcd_temp
            bcd_temp := bcd_temp(NUM_BCD_DIGITS * 4 - 2 downto 0) & temp(BIN_IN_LENGTH - 1);

            -- shift temp left by 1 bit
            temp := temp((BIN_IN_LENGTH - 2) downto 0) & '0';

        end loop;

        -- set output after type conversion.
        -- again, the complicated looking formula for indexing the bcd_temp variable
        -- is to obtain the individual BCD digits and place them into the bcd_out array
        for i in 0 to (NUM_BCD_DIGITS - 1) loop
            bcd_out(i) <= std_logic_vector(bcd_temp((3 + 4 * i) downto i * 4));
        end loop;

    end process;

end behavioral;