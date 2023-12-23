library ieee; 

use ieee.std_logic_1164.all; 

entity PoolControllerTB is 
end entity PoolControllerTB; 

architecture testbench of PoolControllerTB is 

component PoolController 
port(
    clk : in std_logic; 
    reset : in std_logic; 
    level_sensor : in std_logic_vector(1 downto 0); 
    pump : out std_logic 
);
end component;

    signal clk : std_logic := '0'; 
    signal reset : std_logic := '0'; 
    signal level_sensor : std_logic_vector(1 downto 0) := "00"; 
    signal pump : std_logic; 
    constant clk_peroid: time:= 10 ns;
begin 

    uut : PoolController
        port map ( 
            clk => clk, 
            reset => reset, 
            level_sensor => level_sensor, 
            pump => pump 
        ); 

    process
    begin
        wait for 10 ns;
        clk <= not clk;
    end process;

    stim_proc: process
    begin
        reset <= '1';
        wait for 10 ns;
        reset <= '0';

        wait for clk_peroid*10;
    end process;
    
    -- process 
    -- begin 
    -- for i in 0 to 3 loop
    --     level_sensor <= i;
    --     wait for 10 ns;
    -- end loop;
    --     end process;


end; 