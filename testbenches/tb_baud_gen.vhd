library ieee;
use ieee.std_logic_1164.all;

entity tb_baud_gen is
end tb_baud_gen;

architecture bench of tb_baud_gen is 

    -- 50 MHz for visualizing both baud rates in ModelSim
    constant CLK_FREQ : integer := 50000000; 
    
    signal baud_select : std_logic :='0';
    signal clk : std_logic := '0';
    signal rst : std_logic := '0';
    signal baud_out : std_logic;

    component baud_gen is 
        generic (
            CLK_FREQ: integer
        );

        port (
            baud_select: in std_logic;
            clk: in std_logic;
            rst: in std_logic;
            baud_out: out std_logic
        );

    end component baud_gen;

begin

  inst_baud_gen : baud_gen
    generic map (
      CLK_FREQ => CLK_FREQ
    )
    
    port map (
        baud_select => baud_select,
        clk => clk,
        rst => rst,
        baud_out => baud_out
    );
  
    clk <= not(clk) after 10 ns;

    rst  <= '1',
            '0' after 15 ns;
            
    baud_select <= '0', 
                   '1' after 1 ms;
            
end bench;