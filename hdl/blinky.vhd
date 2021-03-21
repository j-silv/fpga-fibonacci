library ieee;
use ieee.std_logic_1164.all;

entity blinky is 
    generic (
        -- based on a 50 MHz onboard clock to have a 1 Hz LED blinky
        led_period: integer := 50000000/2
    );
    port (
        clk: in std_logic;
        rst: in std_logic := '0';
        led_out: out std_logic 
    );
end entity;

architecture logic of blinky is 
    signal led_temp : std_logic := '0';
begin 
    process(clk) 
    variable num_cycles : integer := 0;
    begin 
    if rising_edge(clk) then
        if rst = '1' then
            num_cycles := 0;
            led_temp <= '0';
            
        elsif rst = '0' then
            if (num_cycles = led_period) then 
                
                -- count this clock edge as being part of led_period
                num_cycles := 1;
                led_temp <= not(led_temp);
                        
            else 
                num_cycles := num_cycles + 1;
            end if;
        end if;
    end if;

    end process;   

    -- update led_out 
    led_out <= led_temp;

end architecture;