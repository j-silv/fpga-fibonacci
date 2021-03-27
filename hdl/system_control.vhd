--==========================================================
-- Controller block for the system
--==========================================================
-- TASK 1:
-- takes in 1 Hz impulse, delays it by n # of clk cycles.
-- This assures propagation of overflow bit through Fibonacci
-- generator module.
------------------------------------------------------------
-- TASK 2 (NOT YET IMPLEMENTED):
-- send CR control character for PC serial terminal
------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity system_control is 
    generic(
        clk_cycle_delay : integer := 5
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

architecture logic of system_control is 

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
				
					-- keep data_out active for several clock cycles
				    if count >= clk_cycle_delay then 
                        count := 0;
                        state <= IDLE;
                    else
                        count := count + 1;
                        state <= BEGIN_TRANSMIT;	
					end if;
            
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