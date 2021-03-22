library ieee;
use ieee.std_logic_1164.all;

-- this control block takes in the 1 Hz impulse, delays it
-- by a given number of clock cycles, then outputs the delayed impulse.
-- this is so that the calculation of the Fibonacci term has propagated through
-- and the overflow bit for that module is stable. The delayed impulse will then
-- toggle the 'start_tr' bit on the UART module

entity controller is 
    generic(
        clk_cycle_delay : integer := 1
    );
    port(
        clk: in std_logic;
        rst: in std_logic;

        -- impulse
        data_in: in std_logic;

        -- delayed impulse
        data_out : out std_logic := '0'
    );
end entity;

architecture logic of controller is 

    -- state machine
	type state_type is (IDLE, DELAY_TRANSMIT, BEGIN_TRANSMIT);

	-- register to hold the current state
	signal state : state_type;

begin
    process(clk, rst)
        variable count: integer := 0;
    begin
        -- asynchronous rst
        if rst = '1' then
            count := 0;
            state <= IDLE;

        elsif rising_edge(clk) then 
            case state is 

                when IDLE =>

                    -- pulse detection
                    if data_in = '1' then
                        -- we should start counting clock cycles since the state machine
                        -- has an intrinsic 1 clk cycle delay between states
                        count := count + 1;
                        state <= DELAY_TRANSMIT;
                    else
                        state <= IDLE;
                    end if;

                when DELAY_TRANSMIT =>

                    if count >= clk_cycle_delay then 
                        count := 0;
                        state <= BEGIN_TRANSMIT;
                    else
                        count := count + 1;
                        state <= DELAY_TRANSMIT;
                    end if;

                when BEGIN_TRANSMIT =>
                
                    state <= IDLE;
            
            end case;
        end if;
    end process;

    process(state)
    begin
        case state is 

            when IDLE =>
                data_out <= '0';

            when DELAY_TRANSMIT =>
                data_out <= '0';

            when BEGIN_TRANSMIT =>
                data_out <= '1';

        end case;
    end process; 
end architecture;