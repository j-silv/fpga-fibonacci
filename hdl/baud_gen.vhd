library ieee;
use ieee.std_logic_1164.all;

-- thought i needed this package to compare the std_logic vectors 
-- but it compiled fine. seems like std_logic_1164 takes care of that
--use ieee.numeric_std.all;

-- NOTE: had a bug: i was comparing baud_select in multiple condition if statement 
-- which was a std_logic with a bit (wouldnt compile)

entity baud_gen is
    generic (
        CLK_FREQ : integer := 50000000
    );

    port (
        baud_select : in std_logic;
        clk : in std_logic;
        rst : in std_logic := '0';

        baud_out : out std_logic := '0'
    );
end entity;

architecture logic of baud_gen is

    -- to determine the count for obtaining the specified baud rate, the following
    -- formula is used: CLK_FREQ/X = BAUD_RATE/2 => CLK_FREQ/(2*BAUD_RATE)

    -- example: to have a baud rate of 9600 (9600 bits/s) with a CLK_FREQ of 50 MHz,
    -- we have to count to 50*(10^6)/(19200), thus X ~= 2604. This means that every 2604 ticks,
    -- the baud_out signal's state will toggle. In one second, there will be 50 million ticks, which means that
    -- the baud_out signal would have toggled ((50*10^6)/2600) times, ~= 19200. 
    -- THUS, the frequency of the baud_out signal would be 19200/2, = 9600.

    constant COUNT_BAUD_9600 : integer := CLK_FREQ/(2 * 9600);
    constant COUNT_BAUD_19200 : integer := CLK_FREQ/(2 * 19200);

    constant BAUD_SELECT_9600 : std_logic := '0';
    constant BAUD_SELECT_19200 : std_logic := '1';

    signal baud_out_temp : std_logic := '0';

begin

    process (clk, rst)
        variable count : integer := 0;
    begin
        -- asynchronous reset
        if (rst = '1') then
            count := 0;
            baud_out_temp <= '0';

        elsif rising_edge(clk) then
            count := count + 1;
            -- if the user has selected a certain baud rate and the variable has reached the specified rate,
            -- then toggle baud_out_temp signal state. Thus we generate a clock at a frequency of 9600 or 19200 Hz.
            -- NOTE: it's important to have an >= expression for the count, otherwise the count might depass 
            -- 9600 and/or 19200 if for example baud_select was high-z or any other signal type
            if (baud_select = BAUD_SELECT_9600 and count >= COUNT_BAUD_9600) or (baud_select = BAUD_SELECT_19200 and count >= COUNT_BAUD_19200) then
                count := 0;
                baud_out_temp <= not(baud_out_temp);
            end if;
        end if;
    end process;

    -- update the output whenever internal signal changes 
    -- at the end of the process
    baud_out <= baud_out_temp;

end architecture;