--==========================================================
-- Tranmission/data transfer UART module
--==========================================================
-- TASK 1:
-- detect a data transmission request
------------------------------------------------------------
-- TASK 2:
-- communicate with UART peripheral (slave) by setting
-- a START bit, shifting data byte through one bit at a time
-- and concluding transmission with a STOP bit
------------------------------------------------------------
-- TASK 3:
-- indicate to uart_control block that transmission is done
-- and wait for data transmission request line to go high
-- before reintializing and returning to IDLE state
------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

-- ************** NEEDS TO BE REFACTORED *******************

-- entity uart is 
--     generic (
--         constant DATA_LENGTH : integer := 8
--     );

--     port (
--         rst: in std_logic;
--         data_in: in std_logic_vector((DATA_LENGTH-1) downto 0);  -- parallel data in
--         tx_req: in std_logic; 
--         baud_clk: in std_logic;

--         --UART transmit data out (in idle state the signal is HIGH)
--         --start bit is an active LOW
--         tx: out std_logic := '1'
		
-- 		transmit_done: out std_logic := '1'
--     );  
-- end entity;

-- architecture logic of uart is 

-- 	-- state machine
-- 	type state_type is (IDLE, START_TRANSMIT, DATA_TRANSMIT, STOP_TRANSMIT);

-- 	-- register to hold the current state
-- 	signal state : state_type;

--     signal shift_register : std_logic_vector((DATA_LENGTH-1) downto 0) := (others => '0');

-- begin

--     process (baud_clk, rst)
--         variable bits_sent : integer := 0;
--     begin
--         -- asynchronous reset
--         if rst = '1' then
		
-- 			shift_register <= (others => '0');
-- 			tx <= '1';
-- 			bits_sent := 0;
-- 			transmit_done <= '1';
--             state <= IDLE;

--         elsif rising_edge(baud_clk) then
--             case state is

--                 -- in this state, we're waiting for user to start transmission 
--                 -- by setting the start_tx pin HIGH
--                 when IDLE =>

--                     -- transmit line will stay high until transmission starts
--                     tx <= '1';
					
--                     -- has the user started a transmission?
--                     if tx_req = '1' then 
					
-- 						-- reset transmit_done bit
-- 						transmit_done <= '0';
						
--                         -- next clock edge send the start bit
--                         state <= START_TRANSMIT;
						
--                     else
-- 						-- not currently transmitting
-- 						transmit_done <= '1';
						
--                         -- otherwise stay in this state
--                         state <= IDLE;
--                     end if;

--                 -- in this state, we are sending the start bit for UART communication
--                 when START_TRANSMIT =>

--                     -- start bit
--                     tx <= '0';

--                     -- load shift register 
--                     shift_register <= data_in;

--                     -- start data transmission
--                     state <= DATA_TRANSMIT;

--                 -- in this state, we are sending the actual data
--                 when DATA_TRANSMIT =>

--                     -- are we done sending the data?
--                     if bits_sent >= DATA_LENGTH then

--                         -- reset number of bits sent
--                         bits_sent := 0;
--                         state <= STOP_TRANSMIT;
--                     else
--                         -- serial out
--                         tx <= shift_register(7);

--                         -- increment number of bits sent
--                         bits_sent := bits_sent + 1; 

--                         -- shift bits
--                         for i in 0 to (DATA_LENGTH-2) loop
--                             shift_register(i+1) <= shift_register(i);	
--                         end loop;    
                        
--                         state <= DATA_TRANSMIT;
--                     end if;			
					
-- 				end if;
--             end case;
--         end if;
--     end process;
-- end architecture;
