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
    type state_type is (idle, up, down, loading, floor_change);
    signal current_state, next_state: state_type;

    -- keep track if floor changed or not
    signal floor_changed: std_logic := '0';

    -- signal describes if elevator needs to stop at current floor or not
    signal floor_stop: std_logic := '0'; 

    signal i_direction: std_logic := '1'; --default direction up
    signal i_current_floor: unsigned(3 downto 0) := (others => '0');

    --signal destination_array: std_logic_vector(7 downto 0); --:= destination_array;
    --signal floor_call_array: std_logic_vector(7 downto 0);-- := floor_call_array;
	
	
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
	  variable temp: std_logic := '0';
      begin
        -- check if we are at a destination floor or at floor call floor
        if(dest_arr(to_integer(cur_floor)) = '1' or (not floor_call_arr(to_integer(cur_floor)) = 'Z')) then
            temp :='1';
        -- check if there is a floor call going up
        elsif(floor_call_arr(to_integer(cur_floor)) = '1' and i_dir = '1') then
            temp := '1';
        -- check if there is a floor call going down
        elsif(floor_call_arr(to_integer(cur_floor)) = '0' and i_dir = '0') then
            temp := '1';
        else
            temp := '0';
        end if;
		return temp;
    end check_floor_stop;

------------End function declarations------------- 

begin	
	 -- process: check_destination_calls
     -- description: loops through destination_array to check if the elevator
     --     is heading towards a destination or not
     -- input: 
     -- output: 
    check_destination_bits: process(destination_array, floor_call_array)
	variable i: integer := 0;
    begin
--------------------------Set Destination bit-------------------------------------
        destination <= '0';
        -- check for destinations below elevator first
		if i_direction = '1' Then
            i := 7;
			while i >= 0 loop
                -- if floor we are checking is a destination floor
				if(destination_array(i) = '1') then
					-- there is a destination above us
					if(i_current_floor < i) then
						destination <= '1';
					-- there is a destination below elevator
					elsif(i_current_floor > i) then
						destination <= '1';
                        i_direction <= '0';
					-- destination at current floor
					else
						destination <= '0';
					end if;
				    exit; -- stop looping once we found the floor_call
				end if;
				i := i - 1;
			end loop;
        -- check for destinations above elevator first
		else
            i := 0;
			while i <= 7 loop
            -- if floor we are checking is a destination floor
            if(destination_array(i) = '1') then
                -- there is a destination above us
                if(i_current_floor < i) then
                    destination <= '1';
                    i_direction <= '1';
                -- there is a destination below elevator
                elsif(i_current_floor > i) then
                    destination <= '1';
                -- destination at current floor
                else
                    destination <= '0';
                end if;
                exit; -- stop looping once we found the floor_call
            end if;
            i := i + 1;
			end loop;
		end if;
        
-----------------End set destination bit--------------------------------------

----------------Start set floor call bit-----------------------------------
        i := 0;
        floor_call <= '0';
        while i <= 7 loop
            if(not (floor_call_array(i) = 'Z')) then
                -- there is a floor call above us
                if(i_current_floor < i) then
                    floor_call <= '1';
                    -- only change direction if we arent heading toward destination
                    if(destination = '0') then
                        i_direction <= '1';
                    end if;
                -- there is a floor call below elevator
                elsif(i_current_floor > i) then
                    floor_call <= '1';
                    if(destination = '0') then
                        i_direction <= '0';
                    end if;
                -- floor call at current floor
                else
                    floor_call <= '1';
                end if;
            exit; -- stop looping once we found the floor_call
            end if;
            i := i + 1;
        end loop;
-----------------End set floor call bit---------------------------------
    end process check_destination_bits;
	 
	 
    
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
    process(floor_call, floor_stop, i_direction, destination, i_current_floor, floor_changed, destination_array)
        begin
        -- set floor_stop bit before entering case statement
		floor_stop <= check_floor_stop(i_current_floor, destination_array, floor_call_array, i_direction);
        case current_state is
            when idle =>
                -- idle and floor call above elevator
                if((floor_call = '1' or destination = '1') and floor_stop = '0' and i_direction = '1') then
                    next_state <= up;
                -- idle and floor call below elevator
                elsif((floor_call = '1' or destination = '1') and floor_stop = '0' and i_direction = '0') then
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
                    next_state <= floor_change;
                end if;
            when down =>
                -- if there is a floor call or destination stop and load passengers
                if(floor_stop = '1') then
                    next_state <= loading;
                -- otherwise continue down
                else
                    next_state <= floor_change;
                end if;
            when loading =>
                -- still heading to a destination continue down
                if(destination = '1' and i_direction = '0' and floor_stop = '0') then
                    next_state <= down;
                -- still heading to a destination continue up
                elsif(destination = '1' and i_direction = '1' and floor_stop = '0') then
                    next_state <= up;
                -- not heading to a destination and no floor calls go to idle
                else
                    next_state <= idle;
                end if;
            when floor_change =>
                if(i_direction = '1') then
                    next_state <= up;
                else
                    next_state <= down;
                end if;
        end case;
    end process;

    -- describe outputs of the fsm
    --moore: process(current_state, floor_call_array, i_current_floor, i_direction)
    moore: process(current_state)
        begin
        -- Initialize state_out to default values so case only covers when they change
        door <= '0';
        state_out <= "00";
        case current_state is
            when idle =>
                --floor_stop <= '0';
            when up =>
                i_current_floor <= i_current_floor + 1;
                floor_changed <= '1';
                state_out <= "01";
                --i_direction <= '1';
            when down =>
                i_current_floor <= i_current_floor - 1;
                floor_changed <= '1';
                state_out <= "10";
                --i_direction <= '0';
            when loading =>
                state_out <= "11";
                door <= '1';
				--destination_array(to_integer(i_current_floor)) <= '0';
				--floor_call_array(to_integer(i_current_floor)) <= 'Z';
				
            when floor_change =>
                floor_changed <= '0';
        end case;
    end process moore;
	
current_floor <= i_current_floor; -- drive floor to output
direction <= i_direction; -- drive direction to output
end architecture logic;