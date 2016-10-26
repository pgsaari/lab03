library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity elevator_state is port(
    clk: in std_logic;
    term1: in std_logic;

    -- each bit represents a floor: z = no call, 1 = up, 0 = down
    floor_call_array: in std_logic_vector(7 downto 0) := (others <= 'z');

    -- buttons pressed inside of elevator
    destination_array: in std_logic_vector(7 downto 0);


    en1: out std_logic; -- timer to stay on a state
    direction: out std_logic;
    door: out std_logic; -- 1 for open, 0 for close
    current_floor: out unsigned(3 downto 0) := (others <= '0'); -- 8 floors max
    state_out: out std_logic_vector(3 downto 0)
); end entity;

architecture logic of elevator_state is

    --define state types
    type state_type is (idle, up, down, check, loading);
    signal current_state, next_state: state_type;

    -- do we need to stop at current_floor or not?
    signal floor_stop: std_logic; 

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
    process()-- need to put inputs and signals inside of here
        variable i: positive := 0;
        begin
        case current_state is
            when idle =>
                if(idle_up)
                else
                    next_state <= idle;
                end if;
            case up =>
                if(direction = '1')
        end case;
    end process;

    -- describe outputs of the fsm
    moore: process(current_state)
        begin
        -- Initialize state_out to default values so case only covers when they change
        door <= '0';
        case current_state is
            when idle =>
                state_out <= "00";
                floor_stop <= '0';
            when up =>
                current_floor <= current_floor + 1;
                state_out <= "01";
            when down =>
                current_floor <= current_floor - 1;
                state_out <= "10";
            when loading =>
                state_out <= "11"'
        end case;
    end process moore;

    -- process to check if we need to open the doors for our current floor
    floor_changed: process(current_floor)
        begin
        floor_stop = '0';
        -- check if we are at a destination floor
        if(destination_array(current_floor) = '1') then
            floor_stop = '1';
        end if;
        -- check if there is a floor call going up
        if(floor_call_array(current_floor) = '1' and direction = '1') then
            floor_stop = '1';
        end if;
        -- check if there is a floor call going down
        if(floor_call_array(current_floor) = '0' and direction = '0') then
            floor_stop = '1';
        end if;
    end process floor_changed;

    -- loop through floors to check for floor calls
    check_floor_calls: process(floor_call_array)
        begin
        while i <= 7 loop
            if(not floor_call_array(i) = 'z') then
                -- there is a floor call above us
                if(current_floor < i) then
                    floor_call = '1';
                    direction = '1';
                -- there is a floor call below elevator
                elsif(current_floor > i)
                    floor_call = '1';
                    direction = '0';
                -- floor call at current floor
                else
                    floor_call = '1';
                end if;
            exit; -- stop looping once we found the floor_call
            end if;
        end loop;
    end process check_floor_calls;

end architecture logic;