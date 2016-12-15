library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity floor_control is 
generic (
		num_floors: positive -- states how many floors
);
port(
   clk: in std_logic; -- This is clock
	input_clock : in std_logic; -- This is 50Mhz clock for input
	direction: in std_logic; -- This is direction of elevator
	current_floor: in std_logic_vector(3 downto 0); -- This is current floor of the elevator(Max amount of floors is 16)
	enable: in std_logic; --Used to tell floor_control when to latch in data
	state: in std_logic_vector(2 downto 0); --current state of elevator
	
	--This is the input from top level which essentialy comes from board switches
	--Bit '5' specifies which array to write to ( 1 is destination array) ( 0 is floor call array)
	--Bit '4' specifies what direction to specify when writing to array ( 1 is up) ( 0 is down)
	--Bit '3' downto '0' are used to specify the floor
	input_array: in std_logic_vector(5 downto 0); 
	
    -- each bit represents a floor: 1 = up , 0 = no call
    floor_call_array_up: out std_logic_vector(num_floors-1 downto 0) := (others => '0');
	 
	  -- each bit represents a floor: 1 = down, 0 = no call
    floor_call_array_down: out std_logic_vector(num_floors-1 downto 0) := (others => '0');

    -- buttons pressed inside of elevator
    destination_array: out std_logic_vector(num_floors-1 downto 0) := (others => '0')

); end entity;

architecture logic of floor_control is

signal which_array : std_logic:= '0'; -- '0' is write to i_floor_call_array & '1' is write to i_destination_array
signal which_direction : std_logic:= '0'; -- '0' is direction down & '1' is direction up
signal which_floor : unsigned(3 downto 0):= (others => '0'); -- This specifies the floor to write (swtich 0 = floor 0, switch 1 = floor 1 etc.)

signal i_floor_call_array_up: std_logic_vector(num_floors-1 downto 0) := (others => '0'); -- used to drive output
signal i_floor_call_array_down: std_logic_vector(num_floors-1 downto 0) := (others => '0'); -- used to drive output
signal i_destination_array: std_logic_vector(num_floors-1 downto 0) := (others => '0'); -- used to drive output

BEGIN

--This will add and remove remove floor calls whithin i_floor_call_array_up and i_floor_call_array_down
--'1' There is a floor call at specified floor(index) to go "UP" if "UP" array or "DOWN" if "DOWN" array
--'0' There is no current floor_call at specified floor(index)
floor: process(clk, current_floor, enable, input_clock) begin
	if(rising_edge(input_clock)) then -- 50 MHZ clock
	
		-- THIS PART IS USED TO SET A FLOOR CALL OR DESTINATION CALL
		if enable = '1' then
			if which_array = '0' Then -- THIS IS A FLOOR CALL
				if which_direction = '0' Then -- FLOOR CALL IS TO GO DOWN
					i_floor_call_array_down(to_integer(which_floor)) <= '1';
				else -- which_direction = '1' FLOOR CALL IS TO GO UP
					i_floor_call_array_up(to_integer(which_floor)) <= '1';
				end if;
			else -- which array = 1 THIS IS A DESTINATION CALL
				i_destination_array(to_integer(which_floor)) <= '1';
			end if;		
		end if;
	
		--THIS PART IS USED TO DELETE A FLOOR CALL OR DESTINATION CALL ONCE THE ELEVATOR REACHES THE DESIGNATED FLOOR
		if (clk = '1') then -- real time clock that elevators run on
			if i_destination_array(to_integer(unsigned(current_floor))) = '1' Then --FIRST CHECK IF CURRENT FLOOR IS A DESTINATION FLOOR
				i_destination_array(to_integer(unsigned(current_floor))) <= '0';
			end if;
			--USED TO CHECK IF THE ELEVATOR IS IDLE AND THERE IS A FLOOR CALL TO GO UP ON THE ELEVATORS CURRENT FLOOR
			if (state = "000" and (i_floor_call_array_up(to_integer(unsigned(current_floor))) = '1')) then
				i_floor_call_array_up(to_integer(unsigned(current_floor))) <= '0';
			end if;
			--USED TO CHECK IF ELEVATOR IS IDLE AND THERE IS A FLOOR CALL TO GO DOWN ON THE ELEVATORS CURRENT FLOOR
			if (state = "000" and (i_floor_call_array_down(to_integer(unsigned(current_floor))) = '1')) then
				i_floor_call_array_down(to_integer(unsigned(current_floor))) <= '0';
			end if;
			--CHECK IF THE THERE IS A FLOOR CALL IN THE SAME DIRECTION OF THE ELEVATOR (DIRECTION UP)
			if direction = '1' AND i_floor_call_array_up(to_integer(unsigned(current_floor))) = '1' Then
				i_floor_call_array_up(to_integer(unsigned(current_floor))) <= '0';
			end if;
			--CHECK IF THE THERE IS A FLOOR CALL IN THE SAME DIRECTION OF TEH ELEVATOR (DIRECTION DOWN)
			if direction = '0' AND i_floor_call_array_down(to_integer(unsigned(current_floor))) = '1' Then
				i_floor_call_array_down(to_integer(unsigned(current_floor))) <= '0';
			end if;
		end if;
	end if;
end process;

--Sets latched data from board to easy to use variables
latch: process(input_array) begin
	which_array <= input_array(5); -- if 1 it is destination array, if 0 it is floor call
	which_direction <= input_array(4); -- if 1 direction is up, if 0 direction is down
	which_floor <= unsigned(input_array(3 downto 0)); -- specifies floor of destination call or floor call
end process;

floor_call_array_up <= i_floor_call_array_up; 
floor_call_array_down <= i_floor_call_array_down;
destination_array <= i_destination_array;
end architecture logic;