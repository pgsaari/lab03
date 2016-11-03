library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity floor_control is port(
    clk: in std_logic; -- This is clock
	direction: in std_logic; -- This is direction of elevator
	current_floor: in unsigned(3 downto 0); -- This is current floor of the elevator
	enable: in std_logic; --Used to tell floor_control when to latch in data
	
	-- This is the input from top level which essentialy comes from board switches
	--Bit '9' specifies which array to write to
	--Bit '8' specifies what direction to specify when writing to array
	--Bit '7' downto '0' are used to specify the floor
	input_array: in std_logic_vector(9 downto 0); 
	
    -- each bit represents a floor: z = no call, 1 = up, 0 = down
    floor_call_array: out std_logic_vector(7 downto 0) := (others => 'Z');

    -- buttons pressed inside of elevator
    destination_array: out std_logic_vector(7 downto 0);

); end entity;

architecture logic of floor_control is

signal which_array : std_logic:=input(9); -- '0' is write to floor_call_array & '1' is write to destination_array
signal which_direction : std_logic:=input(8); -- '0' is direction down & '1' is direction up
signal which_floor : std_logic_vector(7 downto 0):= input_array(7 downto 0); -- This specifies the floor to write to "HEX VALUE"

--This will add and remove remove floor calls whithin floor_call_array 
--'1' There is a floor call at specified floor(index) to go "UP"
--'0' There is a floor call at specifed floor(index) to go "DOWN"
--'Z' There is no current floor_call at specified floor(index)
floor: process(current_floor, enable)

end process

--This will add and remove remove destination calls whithin destination_array
--'1' There is a floor call at specified floor(index) to go "UP"
--'0' There is a floor call at specifed floor(index) to go "DOWN"
Dest: process(floor_call_array, enable)

end process

end architecture logic;