library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity master_control is 
generic (
		num_elevators: positive
);
port(
    clk: in std_logic; -- 50 MHz clock
    -- state out of each elevator is 4 bits long
    states: in std_logic_vector(4*num_elevators-1 downto 0);
    input_array: in std_logic_vector(5 downto 0); 

    enable: out std_logic_vector(num_elevators-1 downto 0) := (others => '0');

); end entity;

architecture logic of master_control is

begin

end architecture logic;