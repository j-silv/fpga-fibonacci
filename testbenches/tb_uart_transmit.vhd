library ieee;
use ieee.std_logic_1164.all;

entity tb_uart_transmit is
end tb_uart_transmit;

architecture bench of tb_uart_transmit is 
    constant DATA_LENGTH : integer := 8;
    
    signal start_tr : std_logic :='0';
    signal data_in: std_logic_vector((DATA_LENGTH-1) downto 0);
    signal clk : std_logic := '0';
    signal rst : std_logic := '0';
    signal tx : std_logic;

    component uart is 
      generic (
          constant DATA_LENGTH : integer := 8
      );

      port (
          start_tr: in std_logic;
          data_in: in std_logic_vector((DATA_LENGTH-1) downto 0);
          clk: in std_logic;
          rst: in std_logic;
          tx: out std_logic := '1'
      );  

    end component uart;

begin

  inst_uart_transmit : uart
    generic map (
      DATA_LENGTH => DATA_LENGTH
    )
    
    port map (
        start_tr => start_tr,
        data_in => data_in,
        clk => clk,
        rst => rst,
        tx => tx
    );
  
    clk <= not(clk) after 10 ns;

    rst  <= '1',
            '0' after 15 ns;

    data_in <= x"AA", -- 10101010
               x"00" after 113 ns;
            
    start_tr <= '0', 
                '1' after 32 ns;
            
end bench;