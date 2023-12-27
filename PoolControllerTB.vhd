library ieee; 

use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

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
        clk <= '0';
        wait for 5 ns;
        clk <= '1';
        wait for 5 ns;
    end process;
    
    -- process(clk, reset)
    -- begin
    --     if(reset='1') then
    --         level_sensor <= "00";
    --     elsif falling_edge(clk) then
    --             level_sensor <= level_sensor + '1'; 
    --     end if;
    -- end process;

    process 
     begin 
         reset <= '1';
         wait for 10 ns;
         reset <='0';
         end process;
end; 
