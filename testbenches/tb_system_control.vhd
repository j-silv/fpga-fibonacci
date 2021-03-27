library ieee;
use ieee.std_logic_1164.all;
 
entity tb_system_control is
end tb_system_control;
 
architecture behavior of tb_system_control is 
    component system_control
        generic(
            clk_cycle_delay : integer
        );
        port(
            clk: in std_logic;
            rst: in std_logic;
            data_in: in std_logic;
            data_out : out std_logic
        );     
    end component;

    constant clk_cycle_delay : integer := 5;

    signal rst : std_logic;
    signal data_in : std_logic;
    signal data_out : std_logic;
    signal clk : std_logic := '0';

    constant CLK_PERIOD : time := 20 ns;

begin
 
    uut: system_control 
        generic map (
            clk_cycle_delay => clk_cycle_delay
        )
        port map (
            clk => clk,
            rst => rst,
            data_in => data_in,
            data_out => data_out
        );

    clk_process : process
    begin
        clk <= '0';
        wait for CLK_PERIOD/2;
        clk <= '1';
        wait for CLK_PERIOD/2;
    end process;
 
    -- stimulus process
    stim_proc: process
    begin		
        rst  <= '1',
                '0' after 5 ns;

        -- simulation of impulse in
        data_in <= '0',
                   '1' after 10 ns,
                   '0' after 30 ns,
                   '1' after 470 ns,
                   '0' after 490 ns;
            
      wait;
   end process;
end;