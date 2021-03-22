library ieee;
use ieee.std_logic_1164.all;

entity uart is 
    generic (
        constant DATA_LENGTH : integer := 8
    );

    port (
        rst: in std_logic;
        data_in: in std_logic_vector((DATA_LENGTH-1) downto 0);  -- parallel data in
        start_tr: in std_logic; -- start the transmission 
        clk: in std_logic;

        --UART transmit data out (in idle state the signal is HIGH)
        --start bit is an active LOW
        tx: out std_logic := '1'
    );  
end entity;

architecture logic of uart is 

	-- state machine
	type state_type is (IDLE, START_TRANSMIT, DATA_TRANSMIT, STOP_TRANSMIT, WAIT_RESET);

	-- register to hold the current state
	signal state : state_type;

    signal shift_register : std_logic_vector((DATA_LENGTH-1) downto 0) := (others => '0');

begin

    process (clk, rst)
        variable bits_sent : integer := 0;
    begin
        -- asynchronous reset
        if rst = '1' then
            state <= IDLE;

        elsif rising_edge(clk) then
            case state is

                -- in this state, we're waiting for user to start transmission 
                -- by setting the start_tr pin HIGH
                when IDLE =>

                    -- transmit line will stay high until transmission starts
                    tx <= '1';

                    -- has the user started a transmission?
                    if start_tr = '1' then 
                        -- next clock edge send the start bit
                        state <= START_TRANSMIT;
                    else
                        -- otherwise stay in this state
                        state <= IDLE;
                    end if;

                -- in this state, we are sending the start bit for UART communication
                when START_TRANSMIT =>

                    -- start bit
                    tx <= '0';

                    -- load shift register 
                    shift_register <= data_in;

                    -- start data transmission
                    state <= DATA_TRANSMIT;

                -- in this state, we are sending the actual data
                when DATA_TRANSMIT =>

                    -- are we done sending the data?
                    if bits_sent >= DATA_LENGTH then

                        -- reset number of bits sent
                        bits_sent := 0;
                        state <= STOP_TRANSMIT;
                    else
                        -- serial out
                        tx <= shift_register(7);

                        -- increment number of bits sent
                        bits_sent := bits_sent + 1; 

                        -- shift bits
                        for i in 0 to (DATA_LENGTH-2) loop
                            shift_register(i+1) <= shift_register(i);	
                        end loop;    
                        
                        state <= DATA_TRANSMIT;
                    end if;

                -- in this state, we are sending the stop bit for UART communication
                when STOP_TRANSMIT =>
                    -- stop bit
                    tx <= '1';

                    state <= WAIT_RESET;

                -- in this state, we are waiting for user to set start_tr pin LOW
                when WAIT_RESET =>
                
                    if start_tr = '0' then
                        state <= IDLE;
                    else
                        state <= WAIT_RESET;
                    end if;

            end case;
        end if;
    end process;
end architecture;