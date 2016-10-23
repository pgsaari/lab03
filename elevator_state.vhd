library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity elevator_state is port(
    clk: in std_logic;

    direction: in std_logic;

    -- each bit represents a floor? 1 for call made
    floor_call: in std_logic_vector(7 downto 0);

    -- corresponding bits use 0 to go down and 1 to go up
    floor_call_dir: in std_logic_vector(7 downto 0);

    -- buttons pressed inside of elevator
    destination: in std_logic_vector(7 downto 0);

    door: out std_logic; -- 1 for open, 0 for close
    current_floor: out std_logic_vector(3 downto 0); -- 8 floors max
    state_out: out std_logic_vector(3 downto 0)


); end entity;

architecture logic of elevator_state is

    --define state types
    type state_type is (idle, up, down, loading);
    signal current_state, next_state: state_type;

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
    process()
        begin
        case current_state is

        end case;
    end process;

    -- describe outputs of the fsm
    moore: process(current_state)
        begin
        -- Initialize state_out to default values so case only covers when they change
        case current_state is

        end case;
    end process moore;

end architecture logic;