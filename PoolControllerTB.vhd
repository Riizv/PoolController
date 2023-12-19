library ieee; 

use ieee.std_logic_1164.all; 

  

entity PoolControllerTB is 

end entity PoolControllerTB; 

  

architecture testbench of PoolControllerTB is 

    signal clk : std_logic := '0'; 

    signal reset : std_logic := '0'; 

    signal level_sensor : std_logic_vector(1 downto 0) := "00"; 

    signal pump : std_logic; 

begin 

    uut : entity work.PoolController

        port map ( 

            clk => clk, 

            reset => reset, 

            level_sensor => level_sensor, 

            pump => pump 

        ); 

  

    process 

    begin 

        reset <= '1'; 

        wait for 10 ns; 

        reset <= '0'; 

        wait for 10 ns; 

        level_sensor <= "01"; 

        wait for 10 ns; 

        level_sensor <= "10"; 

        wait for 10 ns; 

        level_sensor <= "00"; 

        wait for 10 ns; 

        level_sensor <= "11"; 

        wait for 10 ns; 

        level_sensor <= "00"; 

        wait for 10 ns; 

        level_sensor <= "01"; 

        wait for 10 ns; 

        level_sensor <= "10"; 

        wait for 10 ns; 

        level_sensor <= "00"; 

        wait for 10 ns; 

        level_sensor <= "11"; 

        wait for 10 ns; 

        level_sensor <= "00"; 

        wait for 10 ns; 

        level_sensor <= "01"; 

        wait for 10 ns; 

        level_sensor <= "10"; 

        wait for 10 ns; 

        level_sensor <= "00"; 

        wait for 10 ns; 

        level_sensor <= "11"; 

        wait for 10 ns; 

        level_sensor <= "00"; 

        wait for 10 ns; 

        level_sensor <= "01"; 

        wait for 10 ns; 

        level_sensor <= "10"; 

        wait for 10 ns; 

        level_sensor <= "00"; 

        wait for 10 ns; 

        level_sensor <= "11"; 

        wait for 10 ns; 

        level_sensor <= "00"; 

        wait for 10 ns; 

        level_sensor <= "01"; 

        wait for 10 ns; 

        level_sensor <= "10"; 

        wait for 10 ns; 

        level_sensor <= "00"; 

        wait for 10 ns; 

        level_sensor <= "11"; 

        wait for 10 ns; 

        level_sensor <= "00"; 

        wait for 10 ns; 

        level_sensor <= "01"; 

        wait for 10 ns; 

        level_sensor <= "10"; 

        wait for 10 ns; 

        level_sensor <= "00"; 

        wait for 10 ns; 

        level_sensor <= "11"; 

        wait for 10 ns; 

        level_sensor <= "00"; 

        wait for 10 ns; 

        level_sensor <= "01"; 

        wait for 10 ns; 

        level_sensor <= "10"; 

        wait for 10 ns; 

        level_sensor <= "00"; 

        wait for 10 ns; 

        level_sensor <= "11"; 

        wait for 10 ns; 

        level_sensor <= "00"; 

        wait for 10 ns; 

        level_sensor <= "01"; 

        wait for 10 ns; 

        level_sensor <= "10"; 

        wait for 10 ns; 

        level_sensor <= "00"; 

        wait for 10 ns; 

        level_sensor <= "11"; 

        wait for 10 ns; 

        level_sensor <= "00"; 

        wait for 10 ns; 

        level_sensor <= "01"; 

        wait for 10 ns; 

        level_sensor <= "10"; 

        wait for 10 ns; 

        level_sensor <= "00"; 

        wait for 10 ns; 

        level_sensor <= "11"; 

        wait for 10 ns; 

        level_sensor <= "00"; 

        wait for 10 ns; 

        level_sensor <= "01"; 

        wait for 10 ns; 

        level_sensor <= "10"; 

        wait for 10 ns; 

        level_sensor <= "00"; 

        wait for 10 ns; 

        level_sensor <= "11"; 

        wait for 10 ns; 

        level_sensor <= "00"; 

        wait for 10 ns; 

        level_sensor <= "01"; 

        wait for 10 ns; 

        level_sensor <= "10"; 

        wait for 10 ns; 

        level_sensor <= "00"; 

        wait for 10 ns; 

        level_sensor <= "11"; 

        wait for 10 ns; 

        level_sensor <= "00"; 

        wait for 10 ns; 

        level_sensor <= "01"; 

        wait for 10 ns; 

        level_sensor <= "10"; 

        wait for 10 ns; 

        level_sensor <= "00"; 

           

end process; 

end; 