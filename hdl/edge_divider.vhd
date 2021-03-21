library ieee;
use ieee.std_logic_1164.all;

entity edge_divider is 
    generic (
        divide_edge_value : integer := 50
    );
    port (
        clk: in std_logic;
        rst: in std_logic := '0';
        impulse_out: out std_logic
    );
end edge_divider;


architecture logic of edge_divider is 
begin 
    process(clk) 
        variable num_cycles : integer := 0;
    begin 
        if rising_edge(clk) then
            if rst = '1' then
                num_cycles := 0;
                impulse_out <= '0';
                
            elsif rst = '0' then
                if (num_cycles = divide_edge_value) then 
                    
                    -- count this clock edge as being part of divide_edge_value
                    num_cycles := 1;
                    impulse_out <= '1';
                             
                else 
                    num_cycles := num_cycles + 1;
                    impulse_out <= '0';
                end if;
            end if;
        end if;
    end process;
end architecture;