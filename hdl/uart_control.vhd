--==========================================================
-- Controller for UART module
--==========================================================
-- TASK 1:
-- detect when to initiate a transmission from 50 MHz clock
-- domain (coming from 1 Hz input impulse)
------------------------------------------------------------
-- TASK 2:
-- implement a 'handshaking' protocol with uart_transmit
-- module in baud_clk domain to start data transmission. 
--
-- 1) controller gets TX request (50 MHz clk domain)
-- 2) controller sends TX request to peripheral
-- 3) controller waits for TX request ACK (TX_DONE goes low)
-- 4) controller waits for TX_DONE = '1'
------------------------------------------------------------
-- TASK 3:
-- once transmit module declares that the byte transfer has
-- completed, uart_control block waits for 50 MHz clock
-- domain impulse to go low, before reinitializing the
-- UART and idling for a new data transmission request
------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity uart_control is
    port (
        rst : in std_logic;
        clk : in std_logic;

        -- tx request line from 50 MHz clock domain
        TX_REQ_IN : in std_logic;

        -- uart_transmit flag
        TX_DONE : in std_logic;

        -- send new tx request to uart_transmit
        TX_REQ_OUT : out std_logic := '0'
    );
end entity;

architecture logic of uart_control is

    -- state machine
    type state_type is (IDLE, WAIT_ACK, WAIT_EOT, WAIT_RESET);
    signal state : state_type;

begin

    process (clk, rst)
    begin
        -- asynchronous reset
        if rst = '1' then

            TX_REQ_OUT <= '0';
            state <= IDLE;

        elsif rising_edge(clk) then

            case state is

                -- wait for new TX request from 50 MHz domain
                when IDLE =>
                    if TX_REQ_IN = '1' then
                        -- request new TX (uart_transmit)
                        TX_REQ_OUT <= '1';
                        state <= WAIT_ACK;
                    else
                        TX_REQ_OUT <= '0';
                        state <= IDLE;
                    end if;

                -- wait for uart_transmit to acknowledge TX request
                -- by starting data transmission (TX_DONE goes low)
                when WAIT_ACK =>
                    if TX_DONE = '0' then
                        TX_REQ_OUT <= '0';
                        state <= WAIT_EOT;
                    else
                        TX_REQ_OUT <= '1';
                        state <= WAIT_ACK;
                    end if;

                -- wait for end of tranmission flag
                when WAIT_EOT =>
                    if TX_DONE = '1' then
                        state <= WAIT_RESET;
                    else
                        state <= WAIT_EOT;
                    end if;

                -- before sending new char, make TX request line in 
                -- 50 MHz clkc domain has gone low
                when WAIT_RESET =>
                    if TX_REQ_IN = '0' then
                        state <= IDLE;
                    else
                        state <= WAIT_RESET;
                    end if;
            end case;
        end if;
    end process;
end architecture;