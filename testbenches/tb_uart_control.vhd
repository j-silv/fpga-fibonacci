library ieee;
use ieee.std_logic_1164.all;

entity tb_uart_control is
end tb_uart_control;

architecture bench of tb_uart_control is

    signal rst : std_logic := '0';
    signal clk : std_logic := '0';

    signal TX_REQ_IN : std_logic := '0';
    signal TX_DONE : std_logic := '1';

    signal TX_REQ_OUT : std_logic;

    component uart_control is
        port (
            rst : in std_logic;
            clk : in std_logic;
            TX_REQ_IN : in std_logic;
            TX_DONE : in std_logic;
            TX_REQ_OUT : out std_logic
        );

    end component uart_control;

begin

    inst_uart_control : uart_control
    port map (
        rst => rst,
        clk => clk,
        TX_REQ_IN => TX_REQ_IN,
        TX_DONE => TX_DONE,
        TX_REQ_OUT => TX_REQ_OUT
    );

    clk <= not(clk) after 10 ns;

    rst <= '1',
           '0' after 15 ns;

    TX_REQ_IN <= '1' after 25 ns,
                 '0' after 45 ns;
    
    -- simulating the uart_transmit block
    TX_DONE <= '0' after 100 ns,
               '1' after 180 ns;

end bench;