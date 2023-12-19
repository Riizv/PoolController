library ieee; 

use ieee.std_logic_1164.all; 

  

entity PoolController is 

    port ( 

        clk : in std_logic; 

        reset : in std_logic; 

        level_sensor : in std_logic_vector(1 downto 0); 

        pump : out std_logic 

    ); 

end entity PoolController; 

  

architecture arch of PoolController is 

    type state is (idle, pumping); 

    signal current_state, next_state : state; 

begin 

    process(clk, reset) 

    begin 

        if reset = '1' then 

            current_state <= idle; 

        elsif rising_edge(clk) then 

            current_state <= next_state; 

        end if; 

    end process; 

  

    process(current_state, level_sensor) 

    begin 

        case current_state is 

            when idle => 

                if level_sensor = "00" then 

                    next_state <= idle; 

                    pump <= '0'; 

                elsif level_sensor = "01" then 

                    next_state <= pumping; 

                    pump <= '1'; 

                elsif level_sensor = "10" then 

                    next_state <= idle; 

                    pump <= '0'; 

                else 

                    next_state <= idle; 

                    pump <= '0'; 

                end if; 

            when pumping => 

                if level_sensor = "00" then 

                    next_state <= idle; 

                    pump <= '0'; 

                elsif level_sensor = "01" then 

                    next_state <= pumping; 

                    pump <= '1'; 

                elsif level_sensor = "10" then 

                    next_state <= idle; 

                    pump <= '0'; 

                else 

                    next_state <= idle; 

                    pump <= '0'; 

                end if; 

        end case; 

    end process; 

end architecture arch; 