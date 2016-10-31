library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity elevator_state is port(
    clk: in std_logic;
    term1: in std_logic;

    -- each bit represents a floor: z = no call, 1 = up, 0 = down
    floor_call_array: in std_logic_vector(7 downto 0) := (others => 'Z');

    -- buttons pressed inside of elevator
    destination_array: in std_logic_vector(7 downto 0);


    en1: out std_logic; -- timer to stay on a state
    direction: out std_logic;
    door: out std_logic; -- 1 for open, 0 for close
    current_floor: out unsigned(3 downto 0) := (others => '0'); -- 8 floors max
    state_out: out std_logic_vector(1 downto 0)
); end entity;

architecture logic of elevator_state is

    --define state types
    type state_type is (idle, up, down, loading);
    signal current_state, next_state: state_type;

    -- signal describes if elevator needs to stop at current floor or not
    signal floor_stop: std_logic := '0'; 

    signal i_direction: std_logic := '1'; --default direction up
    signal i_current_floor: unsigned(3 downto 0) := (others => '0');

    signal i_dest_arr: std_logic_vector(7 downto 0) := destination_array;
    signal i_floor_call_arr: std_logic_vector(7 downto 0) := floor_call_array;

    -- destination = any button pressed inside of elevator
    signal destination: std_logic := '0'; -- are we heading towards a destination?

    -- floor_call = any button pressed on any floor
    signal floor_call: std_logic := '0'; -- is there a floor call anywhere (from idle state)?

	 -------------Functions go before 'begin'--------------

	 -- function: check_floor_stop
     -- description: checks if the elevator needs to stop at the current floor
     --     for either a floor call in the same direction of the elevator or
     --     the current floor is a destination floor
     -- input: cur_floor = unsinged reprentation of current floor
     --        dest_arr = array that holds all destination floors
     --        floor_call_arr = array that holds all floor calls
     --        i_dir = elevators current direction
     -- output: floor_stop = 1 for stop at floor. 0 for don't stop at floor
    function check_floor_stop(signal cur_floor: unsigned(3 downto 0);
                              signal dest_arr: std_logic_vector(7 downto 0);
                              signal floor_call_arr: std_logic_vector(7 downto 0);
                              signal i_dir: std_logic) 
    return std_logic is
	  variable temp: std_logic;
      begin
        temp := '0';
        -- check if we are at a destination floor
        if(dest_arr(to_integer(cur_floor)) = '1') then
            temp :='1';
        end if;
        -- check if there is a floor call going up
        if(floor_call_arr(to_integer(cur_floor)) = '1' and i_dir = '1') then
            temp := '1';
        end if;
        -- check if there is a floor call going down
        if(floor_call_arr(to_integer(cur_floor)) = '0' and i_dir = '0') then
            temp := '1';
        end if;
		return temp;
    end check_floor_stop;

    -- function: check_floor_calls
     -- description: loops through the floor call array to check for any floor calls
     --     within the array, Z = no floor call
     --                       1 = floor call up
     --                       0 = floor call down 
     -- input: floor_call_arr = array that holds all floor calls     
     --        cur_floor = unsinged reprentation of current floor
     --        dir = elevators current direction
     -- output: floor_call = 1 means there is a floor call. 0 for not
    function check_floor_calls(signal floor_call_arr: std_logic_vector(7 downto 0);
                               signal cur_floor: unsigned(3 downto 0);
                               signal dir: std_logic)
	return std_logic is
	variable fl_call: std_logic := '0';
	variable i: integer := 0;
    begin
        while i <= 7 loop
            if(not floor_call_arr(i) = 'Z') then
                -- there is a floor call above us
                if(cur_floor < i) then
                    fl_call := '1';
                    -- NEED NEW WAY TO SET DIRECTION CANT SET TWO VALUES IN ONE FUNCTION
                    --dir <= '1';
                -- there is a floor call below elevator
                elsif(cur_floor > i) then
                    fl_call := '1';
                    --dir <= '0';
                -- floor call at current floor
                else
                    fl_call := '1';
                end if;
            exit; -- stop looping once we found the floor_call
            end if;
            i := i + 1;
        end loop;
	return fl_call;
    end check_floor_calls;
	
	 -- function: check_destination_calls
     -- description: loops through destination_array to check if the elevator
     --     is heading towards a destination or not
     -- input: dest_arr = array that holds all destination floors
     --        cur_floor = unsinged reprentation of current floor
     --        i_dir = elevators current direction
     -- output: destination = 1 for heading to destination 0 for not
    function check_destination_calls(signal dest_arr: std_logic_vector(7 downto 0);
                                     signal cur_floor: unsigned(3 downto 0);
                                     signal dir: std_logic)
	return std_logic is
	variable dest: std_logic := '0';
	variable i: integer := 0;
    begin
        -- check for destinations below elevator first
		if dir = '1' Then
			while i <= 7 loop
                -- if floor we are checking is a destination floor
				if(dest_arr(i) = '1') then
					-- there is a destination above us
					if(cur_floor < i AND dir = '1') then
						dest := '1';
					-- there is a destination below elevator
					elsif(cur_floor > i AND dir = '0') then
						dest := '1';
					-- destination at current floor
					else
						dest := '0';
					end if;
				exit; -- stop looping once we found the floor_call
				end if;
				i := i + 1;
			end loop;
        -- check for destinations above elevator first
		else
			i := 7;
			while i >= 7 loop
            -- if floor we are checking is a destination floor
            if(dest_arr(i) = '1') then
                -- there is a destination above us
                if(cur_floor < i AND dir = '1') then
                    dest := '1';
                -- there is a destination below elevator
                elsif(cur_floor > i AND dir = '0') then
                    dest := '1';
                -- destination at current floor
                else
                    dest := '0';
                end if;
            exit; -- stop looping once we found the floor_call
            end if;
            i := i - 1;
			end loop;
		end if;
	return dest;
    end check_destination_calls;
	 
------------End function declarations------------- 
	 
    begin
    -- change state on clk rising_edge
    process(clk)
        begin
        if rising_edge(clk) then
			current_state <= next_state;
		else
			current_state <=current_state;
		end if;
    end process;

    -- describe logic for determining next state
    process(floor_call, floor_stop, i_direction, destination)
        begin
        -- set floor_stop bit before entering case statement
		floor_stop <= check_floor_stop(i_current_floor, i_dest_arr, i_floor_call_arr, i_direction);
        case current_state is
            when idle =>
                -- idle and floor call above elevator
                if(floor_call = '1' and floor_stop = '0' and i_direction = '1') then
                    next_state <= up;
                -- idle and floor call below elevator
                elsif(floor_call = '1' and floor_stop = '0' and i_direction = '0') then
                    next_state <= down;
                -- elevator in idle and floor call at current floor
                elsif(destination = '0' and floor_stop = '1' and floor_call = '1') then
                    next_state <= loading;
                else
                    next_state <= idle;
                end if;
            when up =>
                -- if there is a floor call or destination stop and load passengers
                if(floor_stop = '1') then
                    next_state <= loading;
                -- otherwise continue up
                else
                    next_state <= up;
                end if;
            when down =>
                -- if there is a floor call or destination stop and load passengers
                if(floor_stop = '1') then
                    next_state <= loading;
                -- otherwise continue down
                else
                    next_state <= down;
                end if;
            when loading =>
                -- not heading to a destination and no floor calls go to idle
                if(destination = '0' and floor_stop = '1' and floor_call = '0') then
                    next_state <= idle;
                -- still heading to a destination continue up
                elsif(destination = '1' and i_direction = '1' and floor_stop = '0') then
                    next_state <= up;
                -- still heading to destination continue down
                else
                    next_state <= down;
                end if;
        end case;
    end process;

    -- describe outputs of the fsm
    moore: process(current_state)
        begin
        -- Initialize state_out to default values so case only covers when they change
        door <= '0';
        state_out <= "00";
        case current_state is
            when idle =>
                floor_stop <= '0';
                ------------------------
                -- floor call is not getting set in modelsim...
				floor_call <= check_floor_calls(i_floor_call_arr, i_current_floor, i_direction);
                -----------------------
            when up =>
                i_current_floor <= i_current_floor + 1;
                state_out <= "01";
                i_direction <= '1';
            when down =>
                i_current_floor <= i_current_floor - 1;
                state_out <= "10";
                i_direction <= '0';
            when loading =>
                state_out <= "11";
                door <= '1';
				i_dest_arr(to_integer(i_current_floor)) <= '0';
				i_floor_call_arr(to_integer(i_current_floor)) <= 'Z';
				destination <= check_destination_calls(i_dest_arr, i_current_floor, i_direction);
        end case;
    end process moore;

current_floor <= i_current_floor; -- drive floor to output
direction <= i_direction; -- drive direction to output
end architecture logic;