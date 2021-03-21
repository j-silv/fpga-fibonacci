library ieee;
use ieee.std_logic_1164.all;

-- simple mux to select which ASCII character to send via UART
-- The char_sel signal is controlled by the carry bit on the fibonacci gen.
-- If the cary is HIGH (overflow with the fibonacci generator) then we'll send an error char
-- Otherwise, we'll send an ok char

entity char_select is
    port (
        char_sel : in std_logic;
        char_out : out std_logic_vector(7 downto 0)
    );
end entity;

architecture logic of char_select is
begin
    with char_sel select
        char_out <= x"42" when '0', -- the ASCII character 'B' represents 'BON'
                    x"45" when '1', -- the ASCII character 'E' represents 'ERREUR' 
                    x"00" when others; -- we could add other chars if needed
end architecture;

