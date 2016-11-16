 library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity floor_control is port(
   clk: in std_logic; -- This is clock
	direction: in std_logic; -- This is direction of elevator
	current_floor: in unsigned(3 downto 0); -- This is current floor of the elevator
	enable: in std_logic; --Used to tell floor_control when to latch in data
	state: in std_logic_vector(2 downto 0);
	
	-- This is the input from top level which essentialy comes from board switches
	--Bit '4' specifies which array to write to
	--Bit '3' specifies what direction to specify when writing to array
	--Bit '2' downto '0' are used to specify the floor
	input_array: in std_logic_vector(4 downto 0); 
	
    -- each bit represents a floor: 1 = up , 0 = no call
    floor_call_array_up: out std_logic_vector(7 downto 0) := (others => '0');
	 
	  -- each bit represents a floor: 1 = down, 0 = no call
    floor_call_array_down: out std_logic_vector(7 downto 0) := (others => '0');

    -- buttons pressed inside of elevator
    destination_array: out std_logic_vector(7 downto 0) := (others => '0')

); end entity;

architecture logic of floor_control is

signal which_array : std_logic:= '0'; -- '0' is write to i_floor_call_array & '1' is write to i_destination_array
signal which_direction : std_logic:= '0'; -- '0' is direction down & '1' is direction up
signal which_floor : unsigned(2 downto 0):= (others => '0'); -- This specifies the floor to write (swtich 0 = floor 0, switch 1 = floor 1 etc.)

signal i_floor_call_array_up: std_logic_vector(7 downto 0) := (others => '0'); -- used to drive output
signal i_floor_call_array_down: std_logic_vector(7 downto 0) := (others => '0'); -- used to drive output
signal i_destination_array: std_logic_vector(7 downto 0) := (others => '0'); -- used to drive output

BEGIN

--This will add and remove remove floor calls whithin i_floor_call_array_up and i_floor_call_array_down
--'1' There is a floor call at specified floor(index) to go "UP" if "UP" array or "DOWN" if "DOWN" array
--'0' There is no current floor_call at specified floor(index)
floor: process(clk, current_floor, enable) begin
	if(falling_edge(clk)) then
		if enable = '1' then
			if which_array = '0' Then
				if which_direction = '0' Then
					i_floor_call_array_down(to_integer(which_floor)) <= '1';
				else -- which_direction = '1'
					i_floor_call_array_up(to_integer(which_floor)) <= '1';
				end if;
			else -- which array = 1
				i_destination_array(to_integer(which_floor)) <= '1';
			end if;		
		end if;

		if i_destination_array(to_integer(current_floor)) = '1' Then
			i_destination_array(to_integer(current_floor)) <= '0';
		end if;

		if (state = "000" and (i_floor_call_array_up(to_integer(current_floor)) = '1')) then
			i_floor_call_array_up(to_integer(current_floor)) <= '0';
		end if;
		
		if (state = "000" and (i_floor_call_array_down(to_integer(current_floor)) = '1')) then
			i_floor_call_array_down(to_integer(current_floor)) <= '0';
		end if;

		if direction = '1' AND i_floor_call_array_up(to_integer(current_floor)) = '1' Then
			i_floor_call_array_up(to_integer(current_floor)) <= '0';
		end if;
		
		if direction = '0' AND i_floor_call_array_down(to_integer(current_floor)) = '1' Then
			i_floor_call_array_down(to_integer(current_floor)) <= '0';
		end if;
	end if;
end process;

--Sets latched data from board to easy to use variables
latch: process(input_array) begin
	which_array <= input_array(4);
	which_direction <= input_array(3);
	which_floor <= unsigned(input_array(2 downto 0));
end process;

floor_call_array_up <= i_floor_call_array_up;
floor_call_array_down <= i_floor_call_array_down;
destination_array <= i_destination_array;
end architecture logic;