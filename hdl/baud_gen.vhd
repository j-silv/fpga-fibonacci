library ieee;
use ieee.std_logic_1164.all;

-- thought i needed this package to compare the std_logic vectors 
-- but it compiled fine. seems like std_logic_1164 takes care of that
--use ieee.numeric_std.all;

-- NOTE: had a bug: i was comparing baud_select in multiple condition if statement 
-- which was a std_logic with a bit (wouldnt compile)

entity baud_gen is 
    generic (
      BAUD_9600: integer := 9600;
      BAUD_19200: integer := 19200;
      BAUD_SELECT_9600: std_logic := '0';
      BAUD_SELECT_19200: std_logic := '1'
    );
    
    port (
        baud_select: in std_logic;
        clk: in std_logic;
        rst: in std_logic := '0';

        baud_out: out std_logic := '0'
    );
end entity;

architecture logic of baud_gen is 
    signal baud_out_temp : std_logic := '0';
begin 

    process(clk, rst)
        variable count : integer := 0;
    begin 
        -- asynchronous reset
        if (rst = '1') then 
            count := 0;
            baud_out_temp <= '0';
            
        elsif rising_edge(clk) then   
            count := count + 1;
            -- if the user has selected a certain baud rate and the variable has reached the specified rate,
            -- then toggle baud_out_temp signal state. Thus we generate a clock at a frequency of 9600 or 19200 Hz
            if (baud_select = BAUD_SELECT_9600 and count = BAUD_9600) or ( baud_select = BAUD_SELECT_19200 and count = BAUD_19200)  then   
                count := 0;
                baud_out_temp <= not(baud_out_temp);
            end if;
        end if;
    end process;
    
    -- update the output whenever internal signal changes 
    -- at the end of the process
    baud_out <= baud_out_temp;
    
end architecture;