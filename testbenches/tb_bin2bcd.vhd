library ieee;
use ieee.std_logic_1164.all;
use work.digit_types.bcd_digit;
 
entity tb_bin2bcd is
end tb_bin2bcd;
 
architecture behavior of tb_bin2bcd is 
    component bin2bcd
        generic (
            BIN_IN_LENGTH : integer;
            NUM_BCD_DIGITS: integer
        );
        port ( 
            bin_in : in  std_logic_vector ((BIN_IN_LENGTH-1) downto 0);
            bcd_out: out bcd_digit((NUM_BCD_DIGITS-1) downto 0)
        );      
    end component;

    constant BIN_IN_LENGTH : integer := 16;
    constant NUM_BCD_DIGITS: integer := 4;  

    signal bin_in : std_logic_vector((BIN_IN_LENGTH-1) downto 0) := (others => '0');

    -- (can be omitted)
    signal clk : std_logic := '0';

    signal bcd_out : bcd_digit((NUM_BCD_DIGITS-1) downto 0) := (others => (others => '0'));

    -- clock period definitions
    -- (can be omitted)
    constant CLK_PERIOD : time := 10 ns;

begin
 
    -- instantiate the unit under test (uut)
    uut: bin2bcd 
        generic map (
            BIN_IN_LENGTH => BIN_IN_LENGTH,
            NUM_BCD_DIGITS => NUM_BCD_DIGITS
        )
        
        port map (
            bin_in => bin_in,
            bcd_out => bcd_out
        );

   -- clock process definitions  
   -- the whole process could be omitted (not a sequential design)
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
      -- hold reset state for 30 ns.
      wait for 30 ns;	

      wait for CLK_PERIOD*10;

      -- should return 4095
      bin_in <= x"0fff";
      wait for CLK_PERIOD*10;  
      assert bcd_out(3) & bcd_out(2) & bcd_out(1) & bcd_out(0) = x"4095" severity error; 

      -- should return 0
      bin_in <= x"0000";
      wait for CLK_PERIOD*10;  
      assert bcd_out(3) & bcd_out(2) & bcd_out(1) & bcd_out(0) = x"0000" severity error;

      -- should return 2748
      bin_in <= x"0abc";
      wait for CLK_PERIOD*10;  
      assert bcd_out(3) & bcd_out(2) & bcd_out(1) & bcd_out(0) = x"2748" severity error;

      -- should return 9999
      bin_in <= x"270F";
      wait for CLK_PERIOD*10; 
      assert bcd_out(3) & bcd_out(2) & bcd_out(1) & bcd_out(0) = x"9999" severity error;

      -- should return 312
      bin_in <= x"0138";
      wait for CLK_PERIOD*10;  
      assert bcd_out(3) & bcd_out(2) & bcd_out(1) & bcd_out(0) = x"0312" severity error;
		
      wait;
   end process;
end;