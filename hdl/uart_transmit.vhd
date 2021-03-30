--==========================================================
-- Tranmission/data transfer UART module
--==========================================================
-- TASK 1:
-- detect a data transmission request
------------------------------------------------------------
-- TASK 2:
-- acknowledge TX request from UART controller (master) 
-- by setting the TX_DONE flag low
------------------------------------------------------------
-- TASK 3:
-- 1) send start bit via TX serial line
-- 2) shift data byte through one bit at a time 
-- 3) send stop bit and stop transmission
------------------------------------------------------------
-- TASK 4:
-- indicate to uart_control block that transmission is done
-- by setting TX_DONE flag high
------------------------------------------------------------
--________________________________________________
-- transmission example with data: 0b11001010     |
--                                                |
-- CLK: ‾_‾_‾_‾_‾_‾_‾_‾_‾_‾_‾_‾_‾_‾_‾_‾_‾_‾_‾_‾_  |
--                                                |
-- TX:   ‾‾‾‾‾_  _  ‾  _  ‾  _  _  ‾  ‾  ‾‾‾‾‾‾‾  |
--       ^^^^ ^  ^  ^  ^  ^  ^  ^  ^  ^  ^  ^^^^  |
--      |IDLE|SA|D0|D1|D2|D3|D4|D5|D6|D7|SP|IDLE| |
--‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾

library ieee;
use ieee.std_logic_1164.all;

entity uart_transmit is
    generic (
        constant DATA_LENGTH : integer := 8
    );

    port (

        -- parallel data in
        data_in : in std_logic_vector((DATA_LENGTH - 1) downto 0);

        -- request line coming from uart_control block
        TX_REQ_IN : in std_logic;

        rst : in std_logic;

        -- clock coming from baud rate generator
        clk : in std_logic;

        --UART transmit data out
        --start bit is an active LOW
        UART_TX : out std_logic := '1';

        TX_DONE : out std_logic := '1'

    );
end entity;

architecture logic of uart_transmit is

    -- state machine
    type state_type is (IDLE, DATA_TX, END_TX);
    signal state : state_type;

    signal shift_register : std_logic_vector((DATA_LENGTH - 1) downto 0) := (others => '0');

begin

    process (clk, rst)
        variable bits_sent : integer := 0;
    begin
        -- asynchronous reset
        if rst = '1' then
            shift_register <= (others => '0');
            UART_TX <= '1';
            bits_sent := 0;
            TX_DONE <= '1';
            state <= IDLE;

        elsif rising_edge(clk) then
            case state is
                when IDLE =>
                    if TX_REQ_IN = '1' then

                        -- let uart_control know that a TX is underway
                        TX_DONE <= '0';

                        -- send start bit
                        UART_TX <= '0';

                        -- load shift register 
                        shift_register <= data_in;

                        state <= DATA_TX;

                    else
                        -- not currently transmitting
                        UART_TX <= '1';
                        TX_DONE <= '1';
                        state <= IDLE;
                    end if;

                when DATA_TX =>

                    -- are we done sending the data byte?
                    if bits_sent >= DATA_LENGTH then

                        bits_sent := 0;

                        -- send STOP bit
                        UART_TX <= '1';

                        state <= END_TX;

                    else
                        -- serial out the LSB of the shift_register
                        UART_TX <= shift_register(0);

                        -- increment number of bits sent
                        bits_sent := bits_sent + 1;

                        -- shift bits
                        for i in 0 to (DATA_LENGTH - 2) loop
                            shift_register(i) <= shift_register(i + 1);
                        end loop;



                        state <= DATA_TX;
                    end if;

                -- an explicit state is included for the end of transmission
                -- so that the STOP bit has time to be sent
                when END_TX =>
                    TX_DONE <= '1';
                    state <= IDLE;

            end case;
        end if;
    end process;
end architecture;