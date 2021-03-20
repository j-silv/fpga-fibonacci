library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- termes Fibonacci pour réference
-- 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144

entity tb_fibonacci_gen is
end tb_fibonacci_gen;

architecture bench of tb_fibonacci_gen is 

  -- avec une taille de 4, nous avons la possibilité d'aller 
  -- jusqu'à 13 dans la suite de Fibonacci 
  constant TAILLE_SORTIE : integer := 4; 
  
  -- ************** pas d'overflow ***************
  -- l'utilisateur veut aller jusqu'au 13 
  constant NB_TERMES_INTEGER : integer := 8;

  -- ************** overflow ***************
  -- l'utilisateur veut aller jusqu'au 55 
  --constant NB_TERMES_INTEGER : integer := 11;
  
  signal init : std_logic;
  signal enable : std_logic;
  signal clk : std_logic := '0';
  signal nb_termes : std_logic_vector(7 downto 0);
  signal sequence_number : std_logic_vector((TAILLE_SORTIE-1) downto 0);
  signal overflow  : std_logic;
  
  component fibonacci_gen is 
    generic (
      TAILLE_SORTIE : integer
    );
    
    port (
      init : in std_logic;
      enable : in std_logic;
      clk : in std_logic;
      nb_termes : in std_logic_vector(7 downto 0);
      sequence_number : out std_logic_vector((TAILLE_SORTIE-1) downto 0);
      overflow  : out std_logic
  );
  end component fibonacci_gen;
begin

  inst_fibonacci_gen : fibonacci_gen
    generic map (
      TAILLE_SORTIE => TAILLE_SORTIE
    )
    
    port map (
      init => init,
      enable => enable,
      clk => clk,
      nb_termes => nb_termes,
      sequence_number => sequence_number,
      overflow => overflow
    );
  
  clk <= not(clk) after 1 ns;
  
  enable  <= '1',
             '0' after 15 ns,
             '1' after 24 ns;
         
  
  init <= '1', 
          '0' after 3 ns,
          '1' after 34 ns,
          '0' after 36 ns;
          
  -- definir combien de termes on veut de la suite fibonacci
  nb_termes <= std_logic_vector(to_unsigned(NB_TERMES_INTEGER, nb_termes'length));
          
       
end bench;

