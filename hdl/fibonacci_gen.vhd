library ieee;
use ieee.std_logic_1164.all;

-- "numeric_std" est utilisée au lieu de std_unsigned/std_signed
-- ces dernières cast automatiquement les vecteurs à signed/unsigned
-- pour faire les opérations arithmétiques
use ieee.numeric_std.all;

entity fibonacci_gen is
    generic (
        -- ce terme détermine le nombre de bits pour le vecteur de sortie 
        -- 'sequence_number'
        TAILLE_SORTIE : integer := 32
    );

    port (
        -- initialisation synchrone
        init : in std_logic;

        -- enable synchrone
        enable : in std_logic;

        -- à chaque front horloge, un nouveau terme de la suite Fibonacci est 
        -- calculée si le signal 'enable' est actif
        clk : in std_logic;

        -- la valeur de ce vecteur d'entrée détermine 
        -- le nombre de termes à compter de la suite Fibonacci 
        nb_termes : in std_logic_vector(7 downto 0);

        -- le terme courant de la suite Fibonacci
        sequence_number : out std_logic_vector((TAILLE_SORTIE - 1) downto 0) := (others => '0');

        -- tant que ce signal est actif, les valeurs que prend le vecteur 
        -- de sortie 'sequence_number' sont éronnées
        overflow : out std_logic
    );
end fibonacci_gen;

architecture logic of fibonacci_gen is
    -- signaux intérmediares
    signal terme_futur : std_logic_vector((TAILLE_SORTIE - 1) downto 0);
    signal terme_actuel : std_logic_vector((TAILLE_SORTIE - 1) downto 0);
    signal terme_precedent : std_logic_vector((TAILLE_SORTIE - 1) downto 0);
    signal count_nb_termes : std_logic_vector(7 downto 0) := (others => '0');
begin

    -- ce process ne touche que les signaux: 
    -- terme_precedent, terme_actuel, count_nb_termes
    process (clk)
    begin
        if rising_edge(clk) then

            -- est-ce qu'on recommence le comptage de la suite de Fibonacci?
            if (init = '1' or count_nb_termes = nb_termes) then
                terme_actuel <= (others => '0');
                terme_precedent <= (others => '0');
                overflow <= '0';

                -- remet à 1 et pas à 0, car 0 est un terme dans la suite de Fibonacci
                count_nb_termes <= std_logic_vector(to_unsigned(1, count_nb_termes'length));

            -- est-ce qu'on continue à générer le prochain nombre de la suite de Fibonacci?
            elsif enable = '1' then

                -- en régime normal, le terme_futur devrait toujours être >= 
                -- le terme_actuel. sinon, le terme_futur a du faire un overflow
                if terme_futur < terme_actuel then
                    overflow <= '1';
                end if;

                -- mise à jour des signaux intermediares
                terme_actuel <= terme_futur;
                terme_precedent <= terme_actuel;

                -- incrément le nombre de termes calculés
                count_nb_termes <= std_logic_vector(unsigned(count_nb_termes) + to_unsigned(1, count_nb_termes'length));

            end if;
        end if;
    end process;

    -- mettre à jour le vecteur de sortie 
    sequence_number <= terme_actuel;

    -- ce process ne touche que la valeur du terme_futur
    process (terme_actuel, terme_precedent)

        -- ce constant est pour comparer quand les signaux intermediares = 0
        constant all_zeros : std_logic_vector((TAILLE_SORTIE - 1) downto 0) := (others => '0');

    begin
        -- quand terme_actuel = terme_precedent = 0, nous avons eu une initialisation
        -- OU le nb de termes demandés a été atteint
        if (terme_actuel = all_zeros and terme_precedent = all_zeros) then
            terme_futur <= std_logic_vector(to_unsigned(1, terme_futur'length));
        else

            -- mettre a jour le terme futur avec des termes_actuel et terme_precedent
            -- qui viennent d'etre mise à jour
            terme_futur <= std_logic_vector(unsigned(terme_actuel) + unsigned(terme_precedent));

        end if;
    end process;

end logic;