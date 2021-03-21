library ieee;
use ieee.std_logic_1164.all;

entity edge_divider is 

end entity;

architecture logic of edge_divider is 
begin


end architecture;


library ieee;
use ieee.std_logic_1164.all;

-- NOTE: GPIO[0] corresponds to pin 1!!!
--       GPIO[1] corresponds to pin 2!!

entity genval is 
    generic (
        tw : integer := 50;
        
        -- based on a 50 MHz onboard clock to have a 1 Hz LED blinky
        led_period: integer := 50000000/2
    );
    
    port (
        clk: in std_logic;
        rst: in std_logic := '0';
        ten: out std_logic;
        
        test_in: in std_logic;
        test_out: out std_logic;
        
        led_out: out std_logic
        
    );
end genval;


architecture logic of genval is 
    signal led_temp : std_logic := '0';
begin 

    process(clk) 
        variable num_cycles : integer := 0;
        
    begin 
        if rising_edge(clk) then
            if rst = '1' then
                num_cycles := 0;
                ten <= '0';
                
            elsif rst = '0' then
                if (num_cycles = tw) then 
                    
                    -- count this clock edge as being part of tw
                    num_cycles := 1;
                    ten <= '1';
                             
                else 
                    num_cycles := num_cycles + 1;
                    ten <= '0';
                end if;
            end if;
        end if;
    
    end process;
    

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
    
    -- testing liaison with oscilloscope
    process(test_in) 
    begin
        if (test_in = '1') then
            test_out <= '1';
        elsif (test_in = '0') then 
            test_out <= '0';
        else
            test_out <= '0';
        end if;
    end process;


end architecture;