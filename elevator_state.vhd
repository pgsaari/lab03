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

    -- do we need to stop at current_floor or not?
    signal floor_stop: std_logic; 

    signal i_direction: std_logic := '1'; --default direction up
    signal i_current_floor: unsigned(3 downto 0) := (others => '0');

    -- destination = any button pressed inside of elevator
    signal destination: std_logic; -- are we heading towards a destination?

    -- floor_call = any button pressed on any floor
    signal floor_call: std_logic; -- is there a floor call anywhere (from idle state)?

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
		floor_stop <= check_floor_stop(i_current_floor);
		-- floor_call <= check_floor_calls
        case current_state is
            when idle =>
                if(floor_call = '1' and floor_stop = '0' and i_direction = '1') then
                    next_state <= up;
                elsif(floor_call = '1' and floor_stop = '0' and i_direction = '0') then
                    next_state <= down;
                elsif(destination = '0' and floor_stop = '1' and floor_call = '1') then
                    next_state <= loading;
                else
                    next_state <= idle;
                end if;
            when up =>
                if(floor_stop = '1') then
                    next_state <= loading;
                else
                    next_state <= up;
                end if;
            when down =>
                if(floor_stop = '1') then
                    next_state <= loading;
                else
                    next_state <= down;
                end if;
            when loading =>
                if(destination = '0' and floor_stop = '1' and floor_call = '0') then
                    next_state <= idle;
                elsif(destination = '1' and i_direction = '1' and floor_stop = '0') then
                    next_state <= up;
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
				floor_call <= check_floor_calls(floor_call_array);
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
				destination_array(to_integer(i_current_floor)) <= '0';
				floor_call_array(to_integer(i_current_floor)) <= 'Z';
				destination <= check_destination_calls(destination_array);
        end case;
    end process moore;

	
    -- process to check if we need to open the doors for our current floor
    function check_floor_stop(signal cur_floor: unsigned(3 downto 0))
		return std_logic is
		variable temp: std_logic;
        begin
        temp := '0';
        -- check if we are at a destination floor
        if(destination_array(to_integer(cur_floor)) = '1') then
            temp :='1';
        end if;
        -- check if there is a floor call going up
        if(floor_call_array(to_integer(cur_floor)) = '1' and i_direction = '1') then
            temp := '1';
        end if;
        -- check if there is a floor call going down
        if(floor_call_array(to_integer(cur_floor)) = '0' and i_direction = '0') then
            temp := '1';
        end if;
		return temp;
    end check_floor_stop;

    -- loop through floors to check for floor calls
    function check_floor_calls(signal floors: std_logic_vector(7 downto 0))
	return std_logic is
	variable floor_temp: std_logic;
	variable i: integer := 0;
    begin
        while i <= 7 loop
            if(not floor_call_array(i) = 'Z') then
                -- there is a floor call above us
                if(i_current_floor < i) then
                    floor_temp <= '1';
                    i_direction <= '1';
                -- there is a floor call below elevator
                elsif(i_current_floor > i) then
                    floor_temp <= '1';
                    i_direction <= '0';
                -- floor call at current floor
                else
                    floor_temp <= '1';
                end if;
            exit; -- stop looping once we found the floor_call
            end if;
            i := i + 1;
        end loop;
	return floor_temp;
    end check_floor_calls;
	
	 -- loop through floors to check for destination calls
    function check_destination_calls(signal floors: std_logic_vector(7 downto 0))
	return std_logic is
	variable floor_temp: std_logic;
	variable i: integer := 0;
    begin
		if i_direction = '1' Then
			while i <= 7 loop
				if(destination_array(i) = '1') then
					-- there is a destination above us
					if(i_current_floor < i AND i_direction = '1') then
						floor_temp <= '1';
					-- there is a destination below elevator
					elsif(i_current_floor > i AND i_direction = '0') then
						floor_temp <= '1';
					-- destination at current floor
					else
						floor_temp <= '0';
					end if;
				exit; -- stop looping once we found the floor_call
				end if;
				i := i + 1;
			end loop;
		else
			i := 7;
			while i >= 7 loop
            if(destination_array(i) = '1') then
                -- there is a destination above us
                if(i_current_floor < i AND i_direction = '1') then
                    floor_temp <= '1';
                -- there is a destination below elevator
                elsif(i_current_floor > i AND i_direction = '0') then
                    floor_temp <= '1';
                -- destination at current floor
                else
                    floor_temp <= '0';
                end if;
            exit; -- stop looping once we found the floor_call
            end if;
            i := i - 1;
			end loop;
		end if;
	return floor_temp;
    end check_destination_calls;

current_floor <= i_current_floor; -- drive floor to output
direction <= i_direction; -- drive direction to output
end architecture logic;