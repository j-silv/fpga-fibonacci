library ieee;
use ieee.std_logic_1164.all;

entity tb_edge_divider is
end tb_edge_divider;

architecture bench of tb_edge_divider is 

    signal clk : std_logic := '0';
    signal rst : std_logic := '0';
    signal impulse_out : std_logic;

    component edge_divider is 
        generic (
            divide_edge_value : integer
        );

        port (
            clk: in std_logic;
            rst: in std_logic;
            impulse_out: out std_logic
        );

    end component edge_divider;

    -- in this test environement, we should see a 10 MHz impulse
    constant divide_edge_value : integer := 5;

    -- 50 MHz clock
    constant CLK_PERIOD : time := 20 ns;
begin
    clk_process : process
    begin
        clk <= '0';
        wait for CLK_PERIOD/2;
        clk <= '1';
        wait for CLK_PERIOD/2;
    end process;


  inst_edge_divider : edge_divider
    generic map (
      divide_edge_value => divide_edge_value
    )
    
    port map (
        clk => clk,
        rst => rst,
        impulse_out => impulse_out
    );

    rst  <= '1',
            '0' after 15 ns;
            
end bench;