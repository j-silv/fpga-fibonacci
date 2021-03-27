library ieee;
use ieee.std_logic_1164.all;

entity tb_uart_transmit is
end tb_uart_transmit;

architecture bench of tb_uart_transmit is 
    constant DATA_LENGTH : integer := 8;
    
    signal rst : std_logic := '0';
    signal clk : std_logic := '0';
    signal data_in: std_logic_vector((DATA_LENGTH-1) downto 0);
    signal TX_REQ_IN : std_logic :='0';

    signal TX_DONE : std_logic;
    signal UART_TX : std_logic;
    

    component uart_transmit is 
      generic (
          constant DATA_LENGTH : integer := 8
      );

      port (
        rst: in std_logic;
        clk: in std_logic;
        data_in: in std_logic_vector((DATA_LENGTH-1) downto 0);
        TX_REQ_IN: in std_logic; 
		TX_DONE: out std_logic;
        UART_TX: out std_logic
      );  

    end component uart_transmit;

begin

  inst_uart_transmit : uart_transmit
    generic map (
      DATA_LENGTH => DATA_LENGTH
    )
    
    port map (
        clk => clk,
        rst => rst,
        TX_REQ_IN => TX_REQ_IN,
        data_in => data_in,
        TX_DONE => TX_DONE,
        UART_TX => UART_TX
    );
  
    clk <= not(clk) after 10 ns;

    rst  <= '1',
            '0' after 15 ns;

    data_in <= x"F0", -- 1111 0000
               x"00" after 90 ns;
    
    TX_REQ_IN <= '1' after 45 ns,
                 '0' after 95 ns;
            
end bench;