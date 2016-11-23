-- Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.0.0 Build 211 04/27/2016 SJ Lite Edition"

-- DATE "11/22/2016 20:33:40"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	elevator_top IS
    PORT (
	CLOCK_50 : IN std_logic;
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	KEY : IN std_logic;
	SW : IN std_logic_vector(5 DOWNTO 0)
	);
END elevator_top;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF elevator_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_KEY : std_logic;
SIGNAL ww_SW : std_logic_vector(5 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \count1|Add0~25_sumout\ : std_logic;
SIGNAL \count1|Add0~26\ : std_logic;
SIGNAL \count1|Add0~21_sumout\ : std_logic;
SIGNAL \count1|Add0~22\ : std_logic;
SIGNAL \count1|Add0~29_sumout\ : std_logic;
SIGNAL \count1|Add0~30\ : std_logic;
SIGNAL \count1|Add0~57_sumout\ : std_logic;
SIGNAL \count1|Add0~58\ : std_logic;
SIGNAL \count1|Add0~89_sumout\ : std_logic;
SIGNAL \count1|Add0~90\ : std_logic;
SIGNAL \count1|Add0~93_sumout\ : std_logic;
SIGNAL \count1|Add0~94\ : std_logic;
SIGNAL \count1|Add0~1_sumout\ : std_logic;
SIGNAL \count1|Add0~2\ : std_logic;
SIGNAL \count1|Add0~5_sumout\ : std_logic;
SIGNAL \count1|Add0~6\ : std_logic;
SIGNAL \count1|Add0~13_sumout\ : std_logic;
SIGNAL \count1|Add0~14\ : std_logic;
SIGNAL \count1|Add0~9_sumout\ : std_logic;
SIGNAL \count1|Add0~10\ : std_logic;
SIGNAL \count1|Add0~17_sumout\ : std_logic;
SIGNAL \count1|Add0~18\ : std_logic;
SIGNAL \count1|Add0~37_sumout\ : std_logic;
SIGNAL \count1|Add0~38\ : std_logic;
SIGNAL \count1|Add0~33_sumout\ : std_logic;
SIGNAL \count1|Add0~34\ : std_logic;
SIGNAL \count1|Add0~41_sumout\ : std_logic;
SIGNAL \count1|Add0~42\ : std_logic;
SIGNAL \count1|Add0~45_sumout\ : std_logic;
SIGNAL \count1|Add0~46\ : std_logic;
SIGNAL \count1|Add0~49_sumout\ : std_logic;
SIGNAL \count1|Add0~50\ : std_logic;
SIGNAL \count1|Add0~53_sumout\ : std_logic;
SIGNAL \count1|Add0~54\ : std_logic;
SIGNAL \count1|Add0~61_sumout\ : std_logic;
SIGNAL \count1|Equal0~2_combout\ : std_logic;
SIGNAL \count1|Add0~62\ : std_logic;
SIGNAL \count1|Add0~97_sumout\ : std_logic;
SIGNAL \count1|Add0~98\ : std_logic;
SIGNAL \count1|Add0~101_sumout\ : std_logic;
SIGNAL \count1|Add0~102\ : std_logic;
SIGNAL \count1|Add0~109_sumout\ : std_logic;
SIGNAL \count1|Add0~110\ : std_logic;
SIGNAL \count1|Add0~105_sumout\ : std_logic;
SIGNAL \count1|Equal0~4_combout\ : std_logic;
SIGNAL \count1|Equal0~0_combout\ : std_logic;
SIGNAL \count1|Equal0~1_combout\ : std_logic;
SIGNAL \count1|Add0~106\ : std_logic;
SIGNAL \count1|Add0~81_sumout\ : std_logic;
SIGNAL \count1|Add0~82\ : std_logic;
SIGNAL \count1|Add0~65_sumout\ : std_logic;
SIGNAL \count1|Add0~66\ : std_logic;
SIGNAL \count1|Add0~69_sumout\ : std_logic;
SIGNAL \count1|Add0~70\ : std_logic;
SIGNAL \count1|Add0~73_sumout\ : std_logic;
SIGNAL \count1|Add0~74\ : std_logic;
SIGNAL \count1|Add0~77_sumout\ : std_logic;
SIGNAL \count1|Add0~78\ : std_logic;
SIGNAL \count1|Add0~85_sumout\ : std_logic;
SIGNAL \count1|Equal0~3_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \state_mach|i_current_floor[0]~4_combout\ : std_logic;
SIGNAL \state_mach|Selector2~2_combout\ : std_logic;
SIGNAL \state_mach|current_state.down~q\ : std_logic;
SIGNAL \state_mach|Selector1~0_combout\ : std_logic;
SIGNAL \state_mach|i_current_floor~1_combout\ : std_logic;
SIGNAL \state_mach|i_current_floor[1]~DUPLICATE_q\ : std_logic;
SIGNAL \state_mach|i_current_floor[2]~2_combout\ : std_logic;
SIGNAL \state_mach|i_current_floor[3]~3_combout\ : std_logic;
SIGNAL \state_mach|i_current_floor[3]~DUPLICATE_q\ : std_logic;
SIGNAL \f_control|Decoder1~7_combout\ : std_logic;
SIGNAL \KEY~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \f_control|i_destination_array~0_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \f_control|Decoder0~7_combout\ : std_logic;
SIGNAL \f_control|i_destination_array~9_combout\ : std_logic;
SIGNAL \f_control|Decoder1~6_combout\ : std_logic;
SIGNAL \f_control|Decoder0~4_combout\ : std_logic;
SIGNAL \f_control|i_destination_array~15_combout\ : std_logic;
SIGNAL \f_control|Decoder1~1_combout\ : std_logic;
SIGNAL \f_control|Decoder0~5_combout\ : std_logic;
SIGNAL \f_control|i_destination_array~12_combout\ : std_logic;
SIGNAL \state_mach|i_current_floor[2]~DUPLICATE_q\ : std_logic;
SIGNAL \state_mach|destination~0_combout\ : std_logic;
SIGNAL \f_control|Decoder0~6_combout\ : std_logic;
SIGNAL \f_control|i_destination_array~13_combout\ : std_logic;
SIGNAL \state_mach|Mux0~1_combout\ : std_logic;
SIGNAL \f_control|Decoder0~3_combout\ : std_logic;
SIGNAL \f_control|Decoder1~5_combout\ : std_logic;
SIGNAL \f_control|i_destination_array~14_combout\ : std_logic;
SIGNAL \f_control|Decoder1~2_combout\ : std_logic;
SIGNAL \f_control|Decoder0~0_combout\ : std_logic;
SIGNAL \f_control|i_destination_array~1_combout\ : std_logic;
SIGNAL \f_control|Decoder1~4_combout\ : std_logic;
SIGNAL \f_control|Decoder0~2_combout\ : std_logic;
SIGNAL \f_control|i_destination_array~2_combout\ : std_logic;
SIGNAL \state_mach|Mux0~0_combout\ : std_logic;
SIGNAL \f_control|Decoder1~8_combout\ : std_logic;
SIGNAL \f_control|Decoder0~8_combout\ : std_logic;
SIGNAL \f_control|i_destination_array~10_combout\ : std_logic;
SIGNAL \f_control|Decoder1~9_combout\ : std_logic;
SIGNAL \f_control|Decoder0~9_combout\ : std_logic;
SIGNAL \f_control|i_destination_array~11_combout\ : std_logic;
SIGNAL \f_control|Decoder1~10_combout\ : std_logic;
SIGNAL \f_control|Decoder0~10_combout\ : std_logic;
SIGNAL \f_control|i_destination_array~7_combout\ : std_logic;
SIGNAL \f_control|Decoder1~11_combout\ : std_logic;
SIGNAL \f_control|Decoder0~11_combout\ : std_logic;
SIGNAL \f_control|i_destination_array~8_combout\ : std_logic;
SIGNAL \state_mach|Mux0~2_combout\ : std_logic;
SIGNAL \f_control|Decoder0~14_combout\ : std_logic;
SIGNAL \f_control|i_destination_array~3_combout\ : std_logic;
SIGNAL \state_mach|LessThan31~0_combout\ : std_logic;
SIGNAL \f_control|Decoder0~15_combout\ : std_logic;
SIGNAL \f_control|i_destination_array~4_combout\ : std_logic;
SIGNAL \f_control|Decoder1~13_combout\ : std_logic;
SIGNAL \f_control|Decoder0~13_combout\ : std_logic;
SIGNAL \f_control|i_destination_array~6_combout\ : std_logic;
SIGNAL \f_control|Decoder1~12_combout\ : std_logic;
SIGNAL \f_control|Decoder0~12_combout\ : std_logic;
SIGNAL \f_control|i_destination_array~5_combout\ : std_logic;
SIGNAL \state_mach|Mux0~3_combout\ : std_logic;
SIGNAL \state_mach|Mux0~4_combout\ : std_logic;
SIGNAL \f_control|Decoder1~3_combout\ : std_logic;
SIGNAL \f_control|Decoder0~1_combout\ : std_logic;
SIGNAL \f_control|i_destination_array~16_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~26_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~24_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~27_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~25_combout\ : std_logic;
SIGNAL \state_mach|i_direction~10_combout\ : std_logic;
SIGNAL \state_mach|i_direction~40_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~28_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~29_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~30_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~61_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~77_combout\ : std_logic;
SIGNAL \state_mach|LessThan28~0_combout\ : std_logic;
SIGNAL \state_mach|destination~1_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~62_combout\ : std_logic;
SIGNAL \state_mach|LessThan30~0_combout\ : std_logic;
SIGNAL \state_mach|i_direction~7_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~89_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~65_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~63_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~64_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~66_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~67_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~73_combout\ : std_logic;
SIGNAL \state_mach|LessThan14~0_combout\ : std_logic;
SIGNAL \state_mach|Add1~0_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~68_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~69_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~70_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~71_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~72_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~74_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~75_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~76_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~78_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~51_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~59_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~52_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~57_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~58_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~54_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~55_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~53_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~56_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~97_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~93_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~60_combout\ : std_logic;
SIGNAL \state_mach|destination~2_combout\ : std_logic;
SIGNAL \state_mach|destination~q\ : std_logic;
SIGNAL \state_mach|Selector2~1_combout\ : std_logic;
SIGNAL \state_mach|i_current_floor~0_combout\ : std_logic;
SIGNAL \f_control|Decoder1~14_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_up~31_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \f_control|i_floor_call_array_up~0_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_up~23_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_up~7_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_up~22_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_up~6_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_up~21_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_up~5_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_up~24_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_up~8_combout\ : std_logic;
SIGNAL \state_mach|Mux1~1_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_up~28_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_up~12_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_up~27_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_up~11_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_up~25_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_up~9_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_up~26_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_up~10_combout\ : std_logic;
SIGNAL \state_mach|Mux1~2_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_up~20_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_up~4_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_up~18_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_up~2_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_up~19_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_up~3_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_up~17_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_up~1_combout\ : std_logic;
SIGNAL \state_mach|Mux1~0_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_up~30_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_up~14_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_up~29_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_up~13_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_up~32_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_up~16_combout\ : std_logic;
SIGNAL \state_mach|Mux1~3_combout\ : std_logic;
SIGNAL \state_mach|Mux1~4_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_up~15_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_down~20_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_down~0_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_down~4_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_down~18_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_down~2_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_down~19_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_down~3_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_down~17_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_down~1_combout\ : std_logic;
SIGNAL \state_mach|Mux2~0_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_down~21_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_down~5_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_down~24_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_down~8_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_down~23_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_down~7_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_down~22_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_down~6_combout\ : std_logic;
SIGNAL \state_mach|Mux2~1_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_down~28_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_down~12_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_down~25_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_down~9_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_down~27_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_down~11_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_down~26_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_down~10_combout\ : std_logic;
SIGNAL \state_mach|Mux2~2_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_down~29_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_down~13_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_down~30_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_down~14_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_down~32_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_down~16_combout\ : std_logic;
SIGNAL \state_mach|Mux2~3_combout\ : std_logic;
SIGNAL \state_mach|Mux2~4_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_down~31_combout\ : std_logic;
SIGNAL \f_control|i_floor_call_array_down~15_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~20_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~19_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~7_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~9_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~10_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~8_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~11_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~0_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~1_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~5_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~2_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~3_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~4_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~6_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~12_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~21_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~22_combout\ : std_logic;
SIGNAL \state_mach|i_direction~5_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~13_combout\ : std_logic;
SIGNAL \state_mach|i_direction~46_combout\ : std_logic;
SIGNAL \state_mach|i_direction~47_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~17_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~18_combout\ : std_logic;
SIGNAL \state_mach|i_direction~43_combout\ : std_logic;
SIGNAL \state_mach|i_direction~44_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~16_combout\ : std_logic;
SIGNAL \state_mach|i_direction~0_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~14_combout\ : std_logic;
SIGNAL \state_mach|i_direction~2_combout\ : std_logic;
SIGNAL \state_mach|i_direction~1_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~15_combout\ : std_logic;
SIGNAL \state_mach|i_direction~3_combout\ : std_logic;
SIGNAL \state_mach|i_direction~4_combout\ : std_logic;
SIGNAL \state_mach|i_direction~9_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~23_combout\ : std_logic;
SIGNAL \state_mach|i_direction~16_combout\ : std_logic;
SIGNAL \state_mach|i_direction~17_combout\ : std_logic;
SIGNAL \state_mach|i_direction~18_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~82_combout\ : std_logic;
SIGNAL \state_mach|i_direction~11_combout\ : std_logic;
SIGNAL \f_control|Decoder1~0_combout\ : std_logic;
SIGNAL \state_mach|i_direction~19_combout\ : std_logic;
SIGNAL \state_mach|i_direction~20_combout\ : std_logic;
SIGNAL \state_mach|i_direction~14_combout\ : std_logic;
SIGNAL \state_mach|i_direction~15_combout\ : std_logic;
SIGNAL \state_mach|i_direction~42_combout\ : std_logic;
SIGNAL \state_mach|i_direction~21_combout\ : std_logic;
SIGNAL \state_mach|i_direction~48_combout\ : std_logic;
SIGNAL \state_mach|i_direction~49_combout\ : std_logic;
SIGNAL \state_mach|i_direction~22_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~83_combout\ : std_logic;
SIGNAL \state_mach|LessThan19~0_combout\ : std_logic;
SIGNAL \state_mach|i_direction~12_combout\ : std_logic;
SIGNAL \state_mach|LessThan27~0_combout\ : std_logic;
SIGNAL \state_mach|i_direction~13_combout\ : std_logic;
SIGNAL \state_mach|i_direction~33_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~32_combout\ : std_logic;
SIGNAL \state_mach|i_direction~41_combout\ : std_logic;
SIGNAL \state_mach|i_direction~24_combout\ : std_logic;
SIGNAL \state_mach|i_direction~25_combout\ : std_logic;
SIGNAL \state_mach|LessThan23~0_combout\ : std_logic;
SIGNAL \state_mach|LessThan22~0_combout\ : std_logic;
SIGNAL \state_mach|i_direction~26_combout\ : std_logic;
SIGNAL \state_mach|i_direction~27_combout\ : std_logic;
SIGNAL \state_mach|i_direction~28_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~31_combout\ : std_logic;
SIGNAL \state_mach|i_direction~29_combout\ : std_logic;
SIGNAL \state_mach|i_direction~30_combout\ : std_logic;
SIGNAL \state_mach|i_direction~31_combout\ : std_logic;
SIGNAL \state_mach|i_direction~32_combout\ : std_logic;
SIGNAL \state_mach|i_direction~34_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~47_combout\ : std_logic;
SIGNAL \state_mach|i_direction~6_combout\ : std_logic;
SIGNAL \state_mach|i_direction~8_combout\ : std_logic;
SIGNAL \state_mach|i_direction~45_combout\ : std_logic;
SIGNAL \state_mach|i_direction~36_combout\ : std_logic;
SIGNAL \state_mach|i_direction~37_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~48_combout\ : std_logic;
SIGNAL \state_mach|i_direction~35_combout\ : std_logic;
SIGNAL \state_mach|i_direction~23_combout\ : std_logic;
SIGNAL \state_mach|i_direction~38_combout\ : std_logic;
SIGNAL \state_mach|i_direction~39_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~49_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~40_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~41_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~38_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~39_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~81_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~44_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~43_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~45_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~33_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~34_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~35_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~36_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~37_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~42_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~84_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~85_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~79_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~80_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~46_combout\ : std_logic;
SIGNAL \state_mach|check_destination_bits~50_combout\ : std_logic;
SIGNAL \state_mach|i_direction~q\ : std_logic;
SIGNAL \state_mach|floor_stop~0_combout\ : std_logic;
SIGNAL \state_mach|floor_stop~q\ : std_logic;
SIGNAL \state_mach|floor_call~q\ : std_logic;
SIGNAL \state_mach|Selector2~0_combout\ : std_logic;
SIGNAL \state_mach|Selector1~1_combout\ : std_logic;
SIGNAL \state_mach|current_state.up~q\ : std_logic;
SIGNAL \state_mach|Selector3~0_combout\ : std_logic;
SIGNAL \state_mach|current_state.loading~q\ : std_logic;
SIGNAL \state_mach|Selector0~0_combout\ : std_logic;
SIGNAL \state_mach|current_state.idle~q\ : std_logic;
SIGNAL \hexF|Mux6~0_combout\ : std_logic;
SIGNAL \hexF|segs[0]~0_combout\ : std_logic;
SIGNAL \hexF|Mux5~0_combout\ : std_logic;
SIGNAL \hexF|Mux5~1_combout\ : std_logic;
SIGNAL \hexF|Mux4~0_combout\ : std_logic;
SIGNAL \hexF|Mux4~1_combout\ : std_logic;
SIGNAL \hexF|Mux3~0_combout\ : std_logic;
SIGNAL \hexF|segs[3]~1_combout\ : std_logic;
SIGNAL \hexF|Mux2~0_combout\ : std_logic;
SIGNAL \hexF|segs[4]~2_combout\ : std_logic;
SIGNAL \hexF|Mux1~0_combout\ : std_logic;
SIGNAL \hexF|segs[5]~3_combout\ : std_logic;
SIGNAL \hexF|Mux0~0_combout\ : std_logic;
SIGNAL \hexF|segs[6]~4_combout\ : std_logic;
SIGNAL \count1|i_count\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \state_mach|i_current_floor\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \f_control|i_floor_call_array_up\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \f_control|i_floor_call_array_down\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \f_control|i_destination_array\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \state_mach|ALT_INV_i_direction~18_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~17_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~16_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~15_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~14_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~13_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~12_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~30_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~29_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~28_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_LessThan27~0_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_LessThan19~0_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~11_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_i_destination_array\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \state_mach|ALT_INV_i_direction~10_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~27_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~26_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~25_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~24_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~23_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~22_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_i_floor_call_array_down\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \f_control|ALT_INV_i_floor_call_array_up\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \state_mach|ALT_INV_check_destination_bits~21_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~9_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~8_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~7_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_LessThan30~0_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~20_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~19_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_LessThan31~0_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~6_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~5_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_LessThan14~0_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~4_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~3_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~2_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~1_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_LessThan22~0_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~0_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~18_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~17_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~16_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~15_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~14_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~13_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~12_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~11_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~10_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~9_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~8_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~7_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~6_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~5_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~4_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~3_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~2_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~1_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~0_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~0_combout\ : std_logic;
SIGNAL \count1|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \count1|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \count1|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \count1|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \count1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_Selector2~2_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_Selector1~1_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_Selector2~1_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_current_state.loading~q\ : std_logic;
SIGNAL \state_mach|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_destination~q\ : std_logic;
SIGNAL \state_mach|ALT_INV_floor_call~q\ : std_logic;
SIGNAL \state_mach|ALT_INV_floor_stop~q\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~q\ : std_logic;
SIGNAL \hexF|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \hexF|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \hexF|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \hexF|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \hexF|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \hexF|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_current_state.down~q\ : std_logic;
SIGNAL \state_mach|ALT_INV_current_state.up~q\ : std_logic;
SIGNAL \state_mach|ALT_INV_current_state.idle~q\ : std_logic;
SIGNAL \hexF|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_current_floor\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \state_mach|ALT_INV_check_destination_bits~97_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~93_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~89_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~85_combout\ : std_logic;
SIGNAL \count1|ALT_INV_i_count\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_current_floor[2]~DUPLICATE_q\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~49_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~48_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~84_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~47_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~46_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~45_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~44_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~43_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~83_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~82_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~81_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~80_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~79_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~42_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_i_floor_call_array_down~32_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_i_floor_call_array_up~32_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_i_floor_call_array_down~31_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_i_floor_call_array_up~31_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_i_floor_call_array_down~30_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_i_floor_call_array_up~30_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_i_floor_call_array_down~29_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_i_floor_call_array_up~29_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_i_floor_call_array_down~28_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_i_floor_call_array_up~28_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_i_floor_call_array_down~27_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_i_floor_call_array_up~27_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_i_floor_call_array_down~26_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_i_floor_call_array_up~26_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_i_floor_call_array_down~25_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_i_floor_call_array_up~25_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_i_floor_call_array_down~24_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_i_floor_call_array_up~24_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_i_floor_call_array_down~23_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_i_floor_call_array_up~23_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_i_floor_call_array_down~22_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_i_floor_call_array_up~22_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_i_floor_call_array_down~21_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_i_floor_call_array_up~21_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_i_floor_call_array_down~20_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_i_floor_call_array_up~20_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_i_floor_call_array_down~19_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_i_floor_call_array_up~19_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_i_floor_call_array_down~18_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_i_floor_call_array_up~18_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_i_floor_call_array_down~17_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_i_floor_call_array_up~17_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~41_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_i_destination_array~0_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_Decoder0~15_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_Decoder0~14_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_Decoder1~14_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_Decoder0~13_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_Decoder1~13_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_Decoder0~12_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_Decoder1~12_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_Decoder0~11_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_Decoder1~11_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_Decoder0~10_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_Decoder1~10_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_Decoder0~9_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_Decoder1~9_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_Decoder0~8_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_Decoder1~8_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_Decoder0~7_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_Decoder1~7_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_Decoder0~6_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_Decoder0~5_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_Decoder0~4_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_Decoder1~6_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_Decoder0~3_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_Decoder1~5_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_Decoder0~2_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_Decoder1~4_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_Decoder0~1_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_Decoder1~3_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_i_floor_call_array_down~0_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_i_floor_call_array_up~0_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_Decoder0~0_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_Decoder1~2_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~78_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~77_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~76_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~75_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~74_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~73_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~72_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~71_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~70_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~69_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~68_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~67_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~66_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~65_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~64_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~63_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_destination~1_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~62_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~61_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~60_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~59_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~58_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_destination~0_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_Decoder1~1_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~57_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~56_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~55_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~54_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~53_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~52_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~51_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~40_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_Mux2~4_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_Mux2~3_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_Mux1~4_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_Mux1~3_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~49_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~39_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~38_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~48_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~37_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~36_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~35_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~47_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~46_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~45_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~44_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_LessThan28~0_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~43_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~42_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~41_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~40_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~39_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~38_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~37_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~36_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~35_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~34_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~33_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~34_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~33_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~32_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~31_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~30_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~29_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~28_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~27_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~26_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_LessThan23~0_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~25_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~24_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~32_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_check_destination_bits~31_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~23_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~22_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~21_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~20_combout\ : std_logic;
SIGNAL \state_mach|ALT_INV_i_direction~19_combout\ : std_logic;
SIGNAL \f_control|ALT_INV_Decoder1~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
HEX0 <= ww_HEX0;
ww_KEY <= KEY;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\state_mach|ALT_INV_i_direction~18_combout\ <= NOT \state_mach|i_direction~18_combout\;
\state_mach|ALT_INV_i_direction~17_combout\ <= NOT \state_mach|i_direction~17_combout\;
\state_mach|ALT_INV_i_direction~16_combout\ <= NOT \state_mach|i_direction~16_combout\;
\state_mach|ALT_INV_i_direction~15_combout\ <= NOT \state_mach|i_direction~15_combout\;
\state_mach|ALT_INV_i_direction~14_combout\ <= NOT \state_mach|i_direction~14_combout\;
\state_mach|ALT_INV_i_direction~13_combout\ <= NOT \state_mach|i_direction~13_combout\;
\state_mach|ALT_INV_i_direction~12_combout\ <= NOT \state_mach|i_direction~12_combout\;
\state_mach|ALT_INV_check_destination_bits~30_combout\ <= NOT \state_mach|check_destination_bits~30_combout\;
\state_mach|ALT_INV_check_destination_bits~29_combout\ <= NOT \state_mach|check_destination_bits~29_combout\;
\state_mach|ALT_INV_check_destination_bits~28_combout\ <= NOT \state_mach|check_destination_bits~28_combout\;
\state_mach|ALT_INV_LessThan27~0_combout\ <= NOT \state_mach|LessThan27~0_combout\;
\state_mach|ALT_INV_LessThan19~0_combout\ <= NOT \state_mach|LessThan19~0_combout\;
\state_mach|ALT_INV_i_direction~11_combout\ <= NOT \state_mach|i_direction~11_combout\;
\f_control|ALT_INV_i_destination_array\(0) <= NOT \f_control|i_destination_array\(0);
\state_mach|ALT_INV_i_direction~10_combout\ <= NOT \state_mach|i_direction~10_combout\;
\state_mach|ALT_INV_check_destination_bits~27_combout\ <= NOT \state_mach|check_destination_bits~27_combout\;
\f_control|ALT_INV_i_destination_array\(4) <= NOT \f_control|i_destination_array\(4);
\f_control|ALT_INV_i_destination_array\(3) <= NOT \f_control|i_destination_array\(3);
\state_mach|ALT_INV_check_destination_bits~26_combout\ <= NOT \state_mach|check_destination_bits~26_combout\;
\f_control|ALT_INV_i_destination_array\(6) <= NOT \f_control|i_destination_array\(6);
\f_control|ALT_INV_i_destination_array\(5) <= NOT \f_control|i_destination_array\(5);
\state_mach|ALT_INV_check_destination_bits~25_combout\ <= NOT \state_mach|check_destination_bits~25_combout\;
\f_control|ALT_INV_i_destination_array\(9) <= NOT \f_control|i_destination_array\(9);
\f_control|ALT_INV_i_destination_array\(8) <= NOT \f_control|i_destination_array\(8);
\f_control|ALT_INV_i_destination_array\(7) <= NOT \f_control|i_destination_array\(7);
\state_mach|ALT_INV_check_destination_bits~24_combout\ <= NOT \state_mach|check_destination_bits~24_combout\;
\f_control|ALT_INV_i_destination_array\(11) <= NOT \f_control|i_destination_array\(11);
\f_control|ALT_INV_i_destination_array\(10) <= NOT \f_control|i_destination_array\(10);
\f_control|ALT_INV_i_destination_array\(13) <= NOT \f_control|i_destination_array\(13);
\f_control|ALT_INV_i_destination_array\(12) <= NOT \f_control|i_destination_array\(12);
\f_control|ALT_INV_i_destination_array\(15) <= NOT \f_control|i_destination_array\(15);
\f_control|ALT_INV_i_destination_array\(14) <= NOT \f_control|i_destination_array\(14);
\f_control|ALT_INV_i_destination_array\(2) <= NOT \f_control|i_destination_array\(2);
\f_control|ALT_INV_i_destination_array\(1) <= NOT \f_control|i_destination_array\(1);
\state_mach|ALT_INV_check_destination_bits~23_combout\ <= NOT \state_mach|check_destination_bits~23_combout\;
\state_mach|ALT_INV_check_destination_bits~22_combout\ <= NOT \state_mach|check_destination_bits~22_combout\;
\f_control|ALT_INV_i_floor_call_array_down\(15) <= NOT \f_control|i_floor_call_array_down\(15);
\f_control|ALT_INV_i_floor_call_array_up\(15) <= NOT \f_control|i_floor_call_array_up\(15);
\state_mach|ALT_INV_check_destination_bits~21_combout\ <= NOT \state_mach|check_destination_bits~21_combout\;
\state_mach|ALT_INV_i_direction~9_combout\ <= NOT \state_mach|i_direction~9_combout\;
\state_mach|ALT_INV_i_direction~8_combout\ <= NOT \state_mach|i_direction~8_combout\;
\state_mach|ALT_INV_i_direction~7_combout\ <= NOT \state_mach|i_direction~7_combout\;
\state_mach|ALT_INV_LessThan30~0_combout\ <= NOT \state_mach|LessThan30~0_combout\;
\state_mach|ALT_INV_check_destination_bits~20_combout\ <= NOT \state_mach|check_destination_bits~20_combout\;
\f_control|ALT_INV_i_floor_call_array_down\(14) <= NOT \f_control|i_floor_call_array_down\(14);
\f_control|ALT_INV_i_floor_call_array_up\(14) <= NOT \f_control|i_floor_call_array_up\(14);
\state_mach|ALT_INV_check_destination_bits~19_combout\ <= NOT \state_mach|check_destination_bits~19_combout\;
\f_control|ALT_INV_i_floor_call_array_down\(13) <= NOT \f_control|i_floor_call_array_down\(13);
\f_control|ALT_INV_i_floor_call_array_up\(13) <= NOT \f_control|i_floor_call_array_up\(13);
\state_mach|ALT_INV_LessThan31~0_combout\ <= NOT \state_mach|LessThan31~0_combout\;
\state_mach|ALT_INV_i_direction~6_combout\ <= NOT \state_mach|i_direction~6_combout\;
\state_mach|ALT_INV_i_direction~5_combout\ <= NOT \state_mach|i_direction~5_combout\;
\state_mach|ALT_INV_LessThan14~0_combout\ <= NOT \state_mach|LessThan14~0_combout\;
\state_mach|ALT_INV_Add1~0_combout\ <= NOT \state_mach|Add1~0_combout\;
\state_mach|ALT_INV_i_direction~4_combout\ <= NOT \state_mach|i_direction~4_combout\;
\state_mach|ALT_INV_i_direction~3_combout\ <= NOT \state_mach|i_direction~3_combout\;
\state_mach|ALT_INV_i_direction~2_combout\ <= NOT \state_mach|i_direction~2_combout\;
\state_mach|ALT_INV_i_direction~1_combout\ <= NOT \state_mach|i_direction~1_combout\;
\state_mach|ALT_INV_LessThan22~0_combout\ <= NOT \state_mach|LessThan22~0_combout\;
\state_mach|ALT_INV_i_direction~0_combout\ <= NOT \state_mach|i_direction~0_combout\;
\state_mach|ALT_INV_check_destination_bits~18_combout\ <= NOT \state_mach|check_destination_bits~18_combout\;
\state_mach|ALT_INV_check_destination_bits~17_combout\ <= NOT \state_mach|check_destination_bits~17_combout\;
\state_mach|ALT_INV_check_destination_bits~16_combout\ <= NOT \state_mach|check_destination_bits~16_combout\;
\state_mach|ALT_INV_check_destination_bits~15_combout\ <= NOT \state_mach|check_destination_bits~15_combout\;
\state_mach|ALT_INV_check_destination_bits~14_combout\ <= NOT \state_mach|check_destination_bits~14_combout\;
\state_mach|ALT_INV_check_destination_bits~13_combout\ <= NOT \state_mach|check_destination_bits~13_combout\;
\state_mach|ALT_INV_check_destination_bits~12_combout\ <= NOT \state_mach|check_destination_bits~12_combout\;
\state_mach|ALT_INV_check_destination_bits~11_combout\ <= NOT \state_mach|check_destination_bits~11_combout\;
\f_control|ALT_INV_i_floor_call_array_down\(12) <= NOT \f_control|i_floor_call_array_down\(12);
\f_control|ALT_INV_i_floor_call_array_up\(12) <= NOT \f_control|i_floor_call_array_up\(12);
\state_mach|ALT_INV_check_destination_bits~10_combout\ <= NOT \state_mach|check_destination_bits~10_combout\;
\f_control|ALT_INV_i_floor_call_array_down\(11) <= NOT \f_control|i_floor_call_array_down\(11);
\f_control|ALT_INV_i_floor_call_array_up\(11) <= NOT \f_control|i_floor_call_array_up\(11);
\state_mach|ALT_INV_check_destination_bits~9_combout\ <= NOT \state_mach|check_destination_bits~9_combout\;
\f_control|ALT_INV_i_floor_call_array_down\(10) <= NOT \f_control|i_floor_call_array_down\(10);
\f_control|ALT_INV_i_floor_call_array_up\(10) <= NOT \f_control|i_floor_call_array_up\(10);
\state_mach|ALT_INV_check_destination_bits~8_combout\ <= NOT \state_mach|check_destination_bits~8_combout\;
\f_control|ALT_INV_i_floor_call_array_down\(9) <= NOT \f_control|i_floor_call_array_down\(9);
\f_control|ALT_INV_i_floor_call_array_up\(9) <= NOT \f_control|i_floor_call_array_up\(9);
\state_mach|ALT_INV_check_destination_bits~7_combout\ <= NOT \state_mach|check_destination_bits~7_combout\;
\f_control|ALT_INV_i_floor_call_array_down\(8) <= NOT \f_control|i_floor_call_array_down\(8);
\f_control|ALT_INV_i_floor_call_array_up\(8) <= NOT \f_control|i_floor_call_array_up\(8);
\state_mach|ALT_INV_check_destination_bits~6_combout\ <= NOT \state_mach|check_destination_bits~6_combout\;
\state_mach|ALT_INV_check_destination_bits~5_combout\ <= NOT \state_mach|check_destination_bits~5_combout\;
\f_control|ALT_INV_i_floor_call_array_down\(7) <= NOT \f_control|i_floor_call_array_down\(7);
\f_control|ALT_INV_i_floor_call_array_up\(7) <= NOT \f_control|i_floor_call_array_up\(7);
\state_mach|ALT_INV_check_destination_bits~4_combout\ <= NOT \state_mach|check_destination_bits~4_combout\;
\f_control|ALT_INV_i_floor_call_array_down\(6) <= NOT \f_control|i_floor_call_array_down\(6);
\f_control|ALT_INV_i_floor_call_array_up\(6) <= NOT \f_control|i_floor_call_array_up\(6);
\state_mach|ALT_INV_check_destination_bits~3_combout\ <= NOT \state_mach|check_destination_bits~3_combout\;
\f_control|ALT_INV_i_floor_call_array_down\(5) <= NOT \f_control|i_floor_call_array_down\(5);
\f_control|ALT_INV_i_floor_call_array_up\(5) <= NOT \f_control|i_floor_call_array_up\(5);
\state_mach|ALT_INV_check_destination_bits~2_combout\ <= NOT \state_mach|check_destination_bits~2_combout\;
\f_control|ALT_INV_i_floor_call_array_down\(4) <= NOT \f_control|i_floor_call_array_down\(4);
\f_control|ALT_INV_i_floor_call_array_up\(4) <= NOT \f_control|i_floor_call_array_up\(4);
\state_mach|ALT_INV_check_destination_bits~1_combout\ <= NOT \state_mach|check_destination_bits~1_combout\;
\f_control|ALT_INV_i_floor_call_array_down\(3) <= NOT \f_control|i_floor_call_array_down\(3);
\f_control|ALT_INV_i_floor_call_array_up\(3) <= NOT \f_control|i_floor_call_array_up\(3);
\state_mach|ALT_INV_check_destination_bits~0_combout\ <= NOT \state_mach|check_destination_bits~0_combout\;
\f_control|ALT_INV_i_floor_call_array_down\(2) <= NOT \f_control|i_floor_call_array_down\(2);
\f_control|ALT_INV_i_floor_call_array_up\(2) <= NOT \f_control|i_floor_call_array_up\(2);
\f_control|ALT_INV_i_floor_call_array_down\(0) <= NOT \f_control|i_floor_call_array_down\(0);
\f_control|ALT_INV_i_floor_call_array_up\(0) <= NOT \f_control|i_floor_call_array_up\(0);
\f_control|ALT_INV_i_floor_call_array_down\(1) <= NOT \f_control|i_floor_call_array_down\(1);
\f_control|ALT_INV_i_floor_call_array_up\(1) <= NOT \f_control|i_floor_call_array_up\(1);
\ALT_INV_rtl~0_combout\ <= NOT \rtl~0_combout\;
\count1|ALT_INV_Equal0~4_combout\ <= NOT \count1|Equal0~4_combout\;
\count1|ALT_INV_Equal0~3_combout\ <= NOT \count1|Equal0~3_combout\;
\count1|ALT_INV_Equal0~2_combout\ <= NOT \count1|Equal0~2_combout\;
\count1|ALT_INV_Equal0~1_combout\ <= NOT \count1|Equal0~1_combout\;
\count1|ALT_INV_Equal0~0_combout\ <= NOT \count1|Equal0~0_combout\;
\state_mach|ALT_INV_Selector2~2_combout\ <= NOT \state_mach|Selector2~2_combout\;
\state_mach|ALT_INV_Selector1~1_combout\ <= NOT \state_mach|Selector1~1_combout\;
\state_mach|ALT_INV_Selector2~1_combout\ <= NOT \state_mach|Selector2~1_combout\;
\state_mach|ALT_INV_Selector1~0_combout\ <= NOT \state_mach|Selector1~0_combout\;
\state_mach|ALT_INV_current_state.loading~q\ <= NOT \state_mach|current_state.loading~q\;
\state_mach|ALT_INV_Selector2~0_combout\ <= NOT \state_mach|Selector2~0_combout\;
\state_mach|ALT_INV_destination~q\ <= NOT \state_mach|destination~q\;
\state_mach|ALT_INV_floor_call~q\ <= NOT \state_mach|floor_call~q\;
\state_mach|ALT_INV_floor_stop~q\ <= NOT \state_mach|floor_stop~q\;
\state_mach|ALT_INV_i_direction~q\ <= NOT \state_mach|i_direction~q\;
\hexF|ALT_INV_Mux0~0_combout\ <= NOT \hexF|Mux0~0_combout\;
\hexF|ALT_INV_Mux1~0_combout\ <= NOT \hexF|Mux1~0_combout\;
\hexF|ALT_INV_Mux2~0_combout\ <= NOT \hexF|Mux2~0_combout\;
\hexF|ALT_INV_Mux3~0_combout\ <= NOT \hexF|Mux3~0_combout\;
\hexF|ALT_INV_Mux4~0_combout\ <= NOT \hexF|Mux4~0_combout\;
\hexF|ALT_INV_Mux5~0_combout\ <= NOT \hexF|Mux5~0_combout\;
\state_mach|ALT_INV_current_state.down~q\ <= NOT \state_mach|current_state.down~q\;
\state_mach|ALT_INV_current_state.up~q\ <= NOT \state_mach|current_state.up~q\;
\state_mach|ALT_INV_current_state.idle~q\ <= NOT \state_mach|current_state.idle~q\;
\hexF|ALT_INV_Mux6~0_combout\ <= NOT \hexF|Mux6~0_combout\;
\state_mach|ALT_INV_i_current_floor\(3) <= NOT \state_mach|i_current_floor\(3);
\state_mach|ALT_INV_i_current_floor\(2) <= NOT \state_mach|i_current_floor\(2);
\state_mach|ALT_INV_i_current_floor\(1) <= NOT \state_mach|i_current_floor\(1);
\state_mach|ALT_INV_i_current_floor\(0) <= NOT \state_mach|i_current_floor\(0);
\state_mach|ALT_INV_check_destination_bits~97_combout\ <= NOT \state_mach|check_destination_bits~97_combout\;
\state_mach|ALT_INV_check_destination_bits~93_combout\ <= NOT \state_mach|check_destination_bits~93_combout\;
\state_mach|ALT_INV_check_destination_bits~89_combout\ <= NOT \state_mach|check_destination_bits~89_combout\;
\state_mach|ALT_INV_check_destination_bits~85_combout\ <= NOT \state_mach|check_destination_bits~85_combout\;
\count1|ALT_INV_i_count\(20) <= NOT \count1|i_count\(20);
\count1|ALT_INV_i_count\(21) <= NOT \count1|i_count\(21);
\count1|ALT_INV_i_count\(19) <= NOT \count1|i_count\(19);
\count1|ALT_INV_i_count\(18) <= NOT \count1|i_count\(18);
\count1|ALT_INV_i_count\(5) <= NOT \count1|i_count\(5);
\count1|ALT_INV_i_count\(4) <= NOT \count1|i_count\(4);
\count1|ALT_INV_i_count\(27) <= NOT \count1|i_count\(27);
\count1|ALT_INV_i_count\(22) <= NOT \count1|i_count\(22);
\count1|ALT_INV_i_count\(26) <= NOT \count1|i_count\(26);
\count1|ALT_INV_i_count\(25) <= NOT \count1|i_count\(25);
\count1|ALT_INV_i_count\(24) <= NOT \count1|i_count\(24);
\count1|ALT_INV_i_count\(23) <= NOT \count1|i_count\(23);
\count1|ALT_INV_i_count\(17) <= NOT \count1|i_count\(17);
\count1|ALT_INV_i_count\(3) <= NOT \count1|i_count\(3);
\count1|ALT_INV_i_count\(16) <= NOT \count1|i_count\(16);
\count1|ALT_INV_i_count\(15) <= NOT \count1|i_count\(15);
\count1|ALT_INV_i_count\(14) <= NOT \count1|i_count\(14);
\count1|ALT_INV_i_count\(13) <= NOT \count1|i_count\(13);
\count1|ALT_INV_i_count\(11) <= NOT \count1|i_count\(11);
\count1|ALT_INV_i_count\(12) <= NOT \count1|i_count\(12);
\count1|ALT_INV_i_count\(2) <= NOT \count1|i_count\(2);
\count1|ALT_INV_i_count\(0) <= NOT \count1|i_count\(0);
\count1|ALT_INV_i_count\(1) <= NOT \count1|i_count\(1);
\count1|ALT_INV_i_count\(10) <= NOT \count1|i_count\(10);
\count1|ALT_INV_i_count\(8) <= NOT \count1|i_count\(8);
\count1|ALT_INV_i_count\(9) <= NOT \count1|i_count\(9);
\count1|ALT_INV_i_count\(7) <= NOT \count1|i_count\(7);
\count1|ALT_INV_i_count\(6) <= NOT \count1|i_count\(6);
\state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\ <= NOT \state_mach|i_current_floor[3]~DUPLICATE_q\;
\state_mach|ALT_INV_i_current_floor[2]~DUPLICATE_q\ <= NOT \state_mach|i_current_floor[2]~DUPLICATE_q\;
\state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\ <= NOT \state_mach|i_current_floor[1]~DUPLICATE_q\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_KEY~input_o\ <= NOT \KEY~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\state_mach|ALT_INV_i_direction~49_combout\ <= NOT \state_mach|i_direction~49_combout\;
\state_mach|ALT_INV_i_direction~48_combout\ <= NOT \state_mach|i_direction~48_combout\;
\state_mach|ALT_INV_check_destination_bits~84_combout\ <= NOT \state_mach|check_destination_bits~84_combout\;
\state_mach|ALT_INV_i_direction~47_combout\ <= NOT \state_mach|i_direction~47_combout\;
\state_mach|ALT_INV_i_direction~46_combout\ <= NOT \state_mach|i_direction~46_combout\;
\state_mach|ALT_INV_i_direction~45_combout\ <= NOT \state_mach|i_direction~45_combout\;
\state_mach|ALT_INV_i_direction~44_combout\ <= NOT \state_mach|i_direction~44_combout\;
\state_mach|ALT_INV_i_direction~43_combout\ <= NOT \state_mach|i_direction~43_combout\;
\state_mach|ALT_INV_check_destination_bits~83_combout\ <= NOT \state_mach|check_destination_bits~83_combout\;
\state_mach|ALT_INV_check_destination_bits~82_combout\ <= NOT \state_mach|check_destination_bits~82_combout\;
\state_mach|ALT_INV_check_destination_bits~81_combout\ <= NOT \state_mach|check_destination_bits~81_combout\;
\state_mach|ALT_INV_check_destination_bits~80_combout\ <= NOT \state_mach|check_destination_bits~80_combout\;
\state_mach|ALT_INV_check_destination_bits~79_combout\ <= NOT \state_mach|check_destination_bits~79_combout\;
\state_mach|ALT_INV_i_direction~42_combout\ <= NOT \state_mach|i_direction~42_combout\;
\f_control|ALT_INV_i_floor_call_array_down~32_combout\ <= NOT \f_control|i_floor_call_array_down~32_combout\;
\f_control|ALT_INV_i_floor_call_array_up~32_combout\ <= NOT \f_control|i_floor_call_array_up~32_combout\;
\f_control|ALT_INV_i_floor_call_array_down~31_combout\ <= NOT \f_control|i_floor_call_array_down~31_combout\;
\f_control|ALT_INV_i_floor_call_array_up~31_combout\ <= NOT \f_control|i_floor_call_array_up~31_combout\;
\f_control|ALT_INV_i_floor_call_array_down~30_combout\ <= NOT \f_control|i_floor_call_array_down~30_combout\;
\f_control|ALT_INV_i_floor_call_array_up~30_combout\ <= NOT \f_control|i_floor_call_array_up~30_combout\;
\f_control|ALT_INV_i_floor_call_array_down~29_combout\ <= NOT \f_control|i_floor_call_array_down~29_combout\;
\f_control|ALT_INV_i_floor_call_array_up~29_combout\ <= NOT \f_control|i_floor_call_array_up~29_combout\;
\f_control|ALT_INV_i_floor_call_array_down~28_combout\ <= NOT \f_control|i_floor_call_array_down~28_combout\;
\f_control|ALT_INV_i_floor_call_array_up~28_combout\ <= NOT \f_control|i_floor_call_array_up~28_combout\;
\f_control|ALT_INV_i_floor_call_array_down~27_combout\ <= NOT \f_control|i_floor_call_array_down~27_combout\;
\f_control|ALT_INV_i_floor_call_array_up~27_combout\ <= NOT \f_control|i_floor_call_array_up~27_combout\;
\f_control|ALT_INV_i_floor_call_array_down~26_combout\ <= NOT \f_control|i_floor_call_array_down~26_combout\;
\f_control|ALT_INV_i_floor_call_array_up~26_combout\ <= NOT \f_control|i_floor_call_array_up~26_combout\;
\f_control|ALT_INV_i_floor_call_array_down~25_combout\ <= NOT \f_control|i_floor_call_array_down~25_combout\;
\f_control|ALT_INV_i_floor_call_array_up~25_combout\ <= NOT \f_control|i_floor_call_array_up~25_combout\;
\f_control|ALT_INV_i_floor_call_array_down~24_combout\ <= NOT \f_control|i_floor_call_array_down~24_combout\;
\f_control|ALT_INV_i_floor_call_array_up~24_combout\ <= NOT \f_control|i_floor_call_array_up~24_combout\;
\f_control|ALT_INV_i_floor_call_array_down~23_combout\ <= NOT \f_control|i_floor_call_array_down~23_combout\;
\f_control|ALT_INV_i_floor_call_array_up~23_combout\ <= NOT \f_control|i_floor_call_array_up~23_combout\;
\f_control|ALT_INV_i_floor_call_array_down~22_combout\ <= NOT \f_control|i_floor_call_array_down~22_combout\;
\f_control|ALT_INV_i_floor_call_array_up~22_combout\ <= NOT \f_control|i_floor_call_array_up~22_combout\;
\f_control|ALT_INV_i_floor_call_array_down~21_combout\ <= NOT \f_control|i_floor_call_array_down~21_combout\;
\f_control|ALT_INV_i_floor_call_array_up~21_combout\ <= NOT \f_control|i_floor_call_array_up~21_combout\;
\f_control|ALT_INV_i_floor_call_array_down~20_combout\ <= NOT \f_control|i_floor_call_array_down~20_combout\;
\f_control|ALT_INV_i_floor_call_array_up~20_combout\ <= NOT \f_control|i_floor_call_array_up~20_combout\;
\f_control|ALT_INV_i_floor_call_array_down~19_combout\ <= NOT \f_control|i_floor_call_array_down~19_combout\;
\f_control|ALT_INV_i_floor_call_array_up~19_combout\ <= NOT \f_control|i_floor_call_array_up~19_combout\;
\f_control|ALT_INV_i_floor_call_array_down~18_combout\ <= NOT \f_control|i_floor_call_array_down~18_combout\;
\f_control|ALT_INV_i_floor_call_array_up~18_combout\ <= NOT \f_control|i_floor_call_array_up~18_combout\;
\f_control|ALT_INV_i_floor_call_array_down~17_combout\ <= NOT \f_control|i_floor_call_array_down~17_combout\;
\f_control|ALT_INV_i_floor_call_array_up~17_combout\ <= NOT \f_control|i_floor_call_array_up~17_combout\;
\state_mach|ALT_INV_i_direction~41_combout\ <= NOT \state_mach|i_direction~41_combout\;
\f_control|ALT_INV_i_destination_array~0_combout\ <= NOT \f_control|i_destination_array~0_combout\;
\f_control|ALT_INV_Decoder0~15_combout\ <= NOT \f_control|Decoder0~15_combout\;
\f_control|ALT_INV_Decoder0~14_combout\ <= NOT \f_control|Decoder0~14_combout\;
\f_control|ALT_INV_Decoder1~14_combout\ <= NOT \f_control|Decoder1~14_combout\;
\f_control|ALT_INV_Decoder0~13_combout\ <= NOT \f_control|Decoder0~13_combout\;
\f_control|ALT_INV_Decoder1~13_combout\ <= NOT \f_control|Decoder1~13_combout\;
\f_control|ALT_INV_Decoder0~12_combout\ <= NOT \f_control|Decoder0~12_combout\;
\f_control|ALT_INV_Decoder1~12_combout\ <= NOT \f_control|Decoder1~12_combout\;
\f_control|ALT_INV_Decoder0~11_combout\ <= NOT \f_control|Decoder0~11_combout\;
\f_control|ALT_INV_Decoder1~11_combout\ <= NOT \f_control|Decoder1~11_combout\;
\f_control|ALT_INV_Decoder0~10_combout\ <= NOT \f_control|Decoder0~10_combout\;
\f_control|ALT_INV_Decoder1~10_combout\ <= NOT \f_control|Decoder1~10_combout\;
\f_control|ALT_INV_Decoder0~9_combout\ <= NOT \f_control|Decoder0~9_combout\;
\f_control|ALT_INV_Decoder1~9_combout\ <= NOT \f_control|Decoder1~9_combout\;
\f_control|ALT_INV_Decoder0~8_combout\ <= NOT \f_control|Decoder0~8_combout\;
\f_control|ALT_INV_Decoder1~8_combout\ <= NOT \f_control|Decoder1~8_combout\;
\f_control|ALT_INV_Decoder0~7_combout\ <= NOT \f_control|Decoder0~7_combout\;
\f_control|ALT_INV_Decoder1~7_combout\ <= NOT \f_control|Decoder1~7_combout\;
\f_control|ALT_INV_Decoder0~6_combout\ <= NOT \f_control|Decoder0~6_combout\;
\f_control|ALT_INV_Decoder0~5_combout\ <= NOT \f_control|Decoder0~5_combout\;
\f_control|ALT_INV_Decoder0~4_combout\ <= NOT \f_control|Decoder0~4_combout\;
\f_control|ALT_INV_Decoder1~6_combout\ <= NOT \f_control|Decoder1~6_combout\;
\f_control|ALT_INV_Decoder0~3_combout\ <= NOT \f_control|Decoder0~3_combout\;
\f_control|ALT_INV_Decoder1~5_combout\ <= NOT \f_control|Decoder1~5_combout\;
\f_control|ALT_INV_Decoder0~2_combout\ <= NOT \f_control|Decoder0~2_combout\;
\f_control|ALT_INV_Decoder1~4_combout\ <= NOT \f_control|Decoder1~4_combout\;
\f_control|ALT_INV_Decoder0~1_combout\ <= NOT \f_control|Decoder0~1_combout\;
\f_control|ALT_INV_Decoder1~3_combout\ <= NOT \f_control|Decoder1~3_combout\;
\f_control|ALT_INV_i_floor_call_array_down~0_combout\ <= NOT \f_control|i_floor_call_array_down~0_combout\;
\f_control|ALT_INV_i_floor_call_array_up~0_combout\ <= NOT \f_control|i_floor_call_array_up~0_combout\;
\f_control|ALT_INV_Decoder0~0_combout\ <= NOT \f_control|Decoder0~0_combout\;
\f_control|ALT_INV_Decoder1~2_combout\ <= NOT \f_control|Decoder1~2_combout\;
\state_mach|ALT_INV_check_destination_bits~78_combout\ <= NOT \state_mach|check_destination_bits~78_combout\;
\state_mach|ALT_INV_check_destination_bits~77_combout\ <= NOT \state_mach|check_destination_bits~77_combout\;
\state_mach|ALT_INV_check_destination_bits~76_combout\ <= NOT \state_mach|check_destination_bits~76_combout\;
\state_mach|ALT_INV_check_destination_bits~75_combout\ <= NOT \state_mach|check_destination_bits~75_combout\;
\state_mach|ALT_INV_check_destination_bits~74_combout\ <= NOT \state_mach|check_destination_bits~74_combout\;
\state_mach|ALT_INV_check_destination_bits~73_combout\ <= NOT \state_mach|check_destination_bits~73_combout\;
\state_mach|ALT_INV_check_destination_bits~72_combout\ <= NOT \state_mach|check_destination_bits~72_combout\;
\state_mach|ALT_INV_check_destination_bits~71_combout\ <= NOT \state_mach|check_destination_bits~71_combout\;
\state_mach|ALT_INV_check_destination_bits~70_combout\ <= NOT \state_mach|check_destination_bits~70_combout\;
\state_mach|ALT_INV_check_destination_bits~69_combout\ <= NOT \state_mach|check_destination_bits~69_combout\;
\state_mach|ALT_INV_check_destination_bits~68_combout\ <= NOT \state_mach|check_destination_bits~68_combout\;
\state_mach|ALT_INV_check_destination_bits~67_combout\ <= NOT \state_mach|check_destination_bits~67_combout\;
\state_mach|ALT_INV_check_destination_bits~66_combout\ <= NOT \state_mach|check_destination_bits~66_combout\;
\state_mach|ALT_INV_check_destination_bits~65_combout\ <= NOT \state_mach|check_destination_bits~65_combout\;
\state_mach|ALT_INV_check_destination_bits~64_combout\ <= NOT \state_mach|check_destination_bits~64_combout\;
\state_mach|ALT_INV_check_destination_bits~63_combout\ <= NOT \state_mach|check_destination_bits~63_combout\;
\state_mach|ALT_INV_destination~1_combout\ <= NOT \state_mach|destination~1_combout\;
\state_mach|ALT_INV_check_destination_bits~62_combout\ <= NOT \state_mach|check_destination_bits~62_combout\;
\state_mach|ALT_INV_check_destination_bits~61_combout\ <= NOT \state_mach|check_destination_bits~61_combout\;
\state_mach|ALT_INV_check_destination_bits~60_combout\ <= NOT \state_mach|check_destination_bits~60_combout\;
\state_mach|ALT_INV_check_destination_bits~59_combout\ <= NOT \state_mach|check_destination_bits~59_combout\;
\state_mach|ALT_INV_check_destination_bits~58_combout\ <= NOT \state_mach|check_destination_bits~58_combout\;
\state_mach|ALT_INV_destination~0_combout\ <= NOT \state_mach|destination~0_combout\;
\f_control|ALT_INV_Decoder1~1_combout\ <= NOT \f_control|Decoder1~1_combout\;
\state_mach|ALT_INV_check_destination_bits~57_combout\ <= NOT \state_mach|check_destination_bits~57_combout\;
\state_mach|ALT_INV_check_destination_bits~56_combout\ <= NOT \state_mach|check_destination_bits~56_combout\;
\state_mach|ALT_INV_check_destination_bits~55_combout\ <= NOT \state_mach|check_destination_bits~55_combout\;
\state_mach|ALT_INV_check_destination_bits~54_combout\ <= NOT \state_mach|check_destination_bits~54_combout\;
\state_mach|ALT_INV_check_destination_bits~53_combout\ <= NOT \state_mach|check_destination_bits~53_combout\;
\state_mach|ALT_INV_check_destination_bits~52_combout\ <= NOT \state_mach|check_destination_bits~52_combout\;
\state_mach|ALT_INV_check_destination_bits~51_combout\ <= NOT \state_mach|check_destination_bits~51_combout\;
\state_mach|ALT_INV_i_direction~40_combout\ <= NOT \state_mach|i_direction~40_combout\;
\state_mach|ALT_INV_Mux2~4_combout\ <= NOT \state_mach|Mux2~4_combout\;
\state_mach|ALT_INV_Mux2~3_combout\ <= NOT \state_mach|Mux2~3_combout\;
\state_mach|ALT_INV_Mux2~2_combout\ <= NOT \state_mach|Mux2~2_combout\;
\state_mach|ALT_INV_Mux2~1_combout\ <= NOT \state_mach|Mux2~1_combout\;
\state_mach|ALT_INV_Mux2~0_combout\ <= NOT \state_mach|Mux2~0_combout\;
\state_mach|ALT_INV_Mux1~4_combout\ <= NOT \state_mach|Mux1~4_combout\;
\state_mach|ALT_INV_Mux1~3_combout\ <= NOT \state_mach|Mux1~3_combout\;
\state_mach|ALT_INV_Mux1~2_combout\ <= NOT \state_mach|Mux1~2_combout\;
\state_mach|ALT_INV_Mux1~1_combout\ <= NOT \state_mach|Mux1~1_combout\;
\state_mach|ALT_INV_Mux1~0_combout\ <= NOT \state_mach|Mux1~0_combout\;
\state_mach|ALT_INV_Mux0~4_combout\ <= NOT \state_mach|Mux0~4_combout\;
\state_mach|ALT_INV_Mux0~3_combout\ <= NOT \state_mach|Mux0~3_combout\;
\state_mach|ALT_INV_Mux0~2_combout\ <= NOT \state_mach|Mux0~2_combout\;
\state_mach|ALT_INV_Mux0~1_combout\ <= NOT \state_mach|Mux0~1_combout\;
\state_mach|ALT_INV_Mux0~0_combout\ <= NOT \state_mach|Mux0~0_combout\;
\state_mach|ALT_INV_check_destination_bits~49_combout\ <= NOT \state_mach|check_destination_bits~49_combout\;
\state_mach|ALT_INV_i_direction~39_combout\ <= NOT \state_mach|i_direction~39_combout\;
\state_mach|ALT_INV_i_direction~38_combout\ <= NOT \state_mach|i_direction~38_combout\;
\state_mach|ALT_INV_check_destination_bits~48_combout\ <= NOT \state_mach|check_destination_bits~48_combout\;
\state_mach|ALT_INV_i_direction~37_combout\ <= NOT \state_mach|i_direction~37_combout\;
\state_mach|ALT_INV_i_direction~36_combout\ <= NOT \state_mach|i_direction~36_combout\;
\state_mach|ALT_INV_i_direction~35_combout\ <= NOT \state_mach|i_direction~35_combout\;
\state_mach|ALT_INV_check_destination_bits~47_combout\ <= NOT \state_mach|check_destination_bits~47_combout\;
\state_mach|ALT_INV_check_destination_bits~46_combout\ <= NOT \state_mach|check_destination_bits~46_combout\;
\state_mach|ALT_INV_check_destination_bits~45_combout\ <= NOT \state_mach|check_destination_bits~45_combout\;
\state_mach|ALT_INV_check_destination_bits~44_combout\ <= NOT \state_mach|check_destination_bits~44_combout\;
\state_mach|ALT_INV_LessThan28~0_combout\ <= NOT \state_mach|LessThan28~0_combout\;
\state_mach|ALT_INV_check_destination_bits~43_combout\ <= NOT \state_mach|check_destination_bits~43_combout\;
\state_mach|ALT_INV_check_destination_bits~42_combout\ <= NOT \state_mach|check_destination_bits~42_combout\;
\state_mach|ALT_INV_check_destination_bits~41_combout\ <= NOT \state_mach|check_destination_bits~41_combout\;
\state_mach|ALT_INV_check_destination_bits~40_combout\ <= NOT \state_mach|check_destination_bits~40_combout\;
\state_mach|ALT_INV_check_destination_bits~39_combout\ <= NOT \state_mach|check_destination_bits~39_combout\;
\state_mach|ALT_INV_check_destination_bits~38_combout\ <= NOT \state_mach|check_destination_bits~38_combout\;
\state_mach|ALT_INV_check_destination_bits~37_combout\ <= NOT \state_mach|check_destination_bits~37_combout\;
\state_mach|ALT_INV_check_destination_bits~36_combout\ <= NOT \state_mach|check_destination_bits~36_combout\;
\state_mach|ALT_INV_check_destination_bits~35_combout\ <= NOT \state_mach|check_destination_bits~35_combout\;
\state_mach|ALT_INV_check_destination_bits~34_combout\ <= NOT \state_mach|check_destination_bits~34_combout\;
\state_mach|ALT_INV_check_destination_bits~33_combout\ <= NOT \state_mach|check_destination_bits~33_combout\;
\state_mach|ALT_INV_i_direction~34_combout\ <= NOT \state_mach|i_direction~34_combout\;
\state_mach|ALT_INV_i_direction~33_combout\ <= NOT \state_mach|i_direction~33_combout\;
\state_mach|ALT_INV_i_direction~32_combout\ <= NOT \state_mach|i_direction~32_combout\;
\state_mach|ALT_INV_i_direction~31_combout\ <= NOT \state_mach|i_direction~31_combout\;
\state_mach|ALT_INV_i_direction~30_combout\ <= NOT \state_mach|i_direction~30_combout\;
\state_mach|ALT_INV_i_direction~29_combout\ <= NOT \state_mach|i_direction~29_combout\;
\state_mach|ALT_INV_i_direction~28_combout\ <= NOT \state_mach|i_direction~28_combout\;
\state_mach|ALT_INV_i_direction~27_combout\ <= NOT \state_mach|i_direction~27_combout\;
\state_mach|ALT_INV_i_direction~26_combout\ <= NOT \state_mach|i_direction~26_combout\;
\state_mach|ALT_INV_LessThan23~0_combout\ <= NOT \state_mach|LessThan23~0_combout\;
\state_mach|ALT_INV_i_direction~25_combout\ <= NOT \state_mach|i_direction~25_combout\;
\state_mach|ALT_INV_i_direction~24_combout\ <= NOT \state_mach|i_direction~24_combout\;
\state_mach|ALT_INV_check_destination_bits~32_combout\ <= NOT \state_mach|check_destination_bits~32_combout\;
\state_mach|ALT_INV_check_destination_bits~31_combout\ <= NOT \state_mach|check_destination_bits~31_combout\;
\state_mach|ALT_INV_i_direction~23_combout\ <= NOT \state_mach|i_direction~23_combout\;
\state_mach|ALT_INV_i_direction~22_combout\ <= NOT \state_mach|i_direction~22_combout\;
\state_mach|ALT_INV_i_direction~21_combout\ <= NOT \state_mach|i_direction~21_combout\;
\state_mach|ALT_INV_i_direction~20_combout\ <= NOT \state_mach|i_direction~20_combout\;
\state_mach|ALT_INV_i_direction~19_combout\ <= NOT \state_mach|i_direction~19_combout\;
\f_control|ALT_INV_Decoder1~0_combout\ <= NOT \f_control|Decoder1~0_combout\;

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexF|segs[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X89_Y11_N79
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexF|Mux5~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X89_Y11_N96
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexF|Mux4~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X89_Y4_N79
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexF|segs[3]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X89_Y13_N56
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexF|segs[4]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X89_Y13_N39
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexF|segs[5]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X89_Y4_N96
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hexF|segs[6]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G6
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: LABCELL_X19_Y4_N30
\count1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~25_sumout\ = SUM(( \count1|i_count\(0) ) + ( VCC ) + ( !VCC ))
-- \count1|Add0~26\ = CARRY(( \count1|i_count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count1|ALT_INV_i_count\(0),
	cin => GND,
	sumout => \count1|Add0~25_sumout\,
	cout => \count1|Add0~26\);

-- Location: FF_X19_Y4_N20
\count1|i_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \count1|Add0~25_sumout\,
	sclr => \rtl~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(0));

-- Location: LABCELL_X19_Y4_N33
\count1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~21_sumout\ = SUM(( \count1|i_count\(1) ) + ( GND ) + ( \count1|Add0~26\ ))
-- \count1|Add0~22\ = CARRY(( \count1|i_count\(1) ) + ( GND ) + ( \count1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count1|ALT_INV_i_count\(1),
	cin => \count1|Add0~26\,
	sumout => \count1|Add0~21_sumout\,
	cout => \count1|Add0~22\);

-- Location: FF_X19_Y4_N35
\count1|i_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~21_sumout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(1));

-- Location: LABCELL_X19_Y4_N36
\count1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~29_sumout\ = SUM(( \count1|i_count\(2) ) + ( GND ) + ( \count1|Add0~22\ ))
-- \count1|Add0~30\ = CARRY(( \count1|i_count\(2) ) + ( GND ) + ( \count1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count1|ALT_INV_i_count\(2),
	cin => \count1|Add0~22\,
	sumout => \count1|Add0~29_sumout\,
	cout => \count1|Add0~30\);

-- Location: FF_X19_Y4_N38
\count1|i_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~29_sumout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(2));

-- Location: LABCELL_X19_Y4_N39
\count1|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~57_sumout\ = SUM(( \count1|i_count\(3) ) + ( GND ) + ( \count1|Add0~30\ ))
-- \count1|Add0~58\ = CARRY(( \count1|i_count\(3) ) + ( GND ) + ( \count1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count1|ALT_INV_i_count\(3),
	cin => \count1|Add0~30\,
	sumout => \count1|Add0~57_sumout\,
	cout => \count1|Add0~58\);

-- Location: FF_X19_Y4_N41
\count1|i_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~57_sumout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(3));

-- Location: LABCELL_X19_Y4_N42
\count1|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~89_sumout\ = SUM(( \count1|i_count\(4) ) + ( GND ) + ( \count1|Add0~58\ ))
-- \count1|Add0~90\ = CARRY(( \count1|i_count\(4) ) + ( GND ) + ( \count1|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \count1|ALT_INV_i_count\(4),
	cin => \count1|Add0~58\,
	sumout => \count1|Add0~89_sumout\,
	cout => \count1|Add0~90\);

-- Location: FF_X19_Y4_N44
\count1|i_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~89_sumout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(4));

-- Location: LABCELL_X19_Y4_N45
\count1|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~93_sumout\ = SUM(( \count1|i_count\(5) ) + ( GND ) + ( \count1|Add0~90\ ))
-- \count1|Add0~94\ = CARRY(( \count1|i_count\(5) ) + ( GND ) + ( \count1|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count1|ALT_INV_i_count\(5),
	cin => \count1|Add0~90\,
	sumout => \count1|Add0~93_sumout\,
	cout => \count1|Add0~94\);

-- Location: FF_X19_Y4_N47
\count1|i_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~93_sumout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(5));

-- Location: LABCELL_X19_Y4_N48
\count1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~1_sumout\ = SUM(( \count1|i_count\(6) ) + ( GND ) + ( \count1|Add0~94\ ))
-- \count1|Add0~2\ = CARRY(( \count1|i_count\(6) ) + ( GND ) + ( \count1|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count1|ALT_INV_i_count\(6),
	cin => \count1|Add0~94\,
	sumout => \count1|Add0~1_sumout\,
	cout => \count1|Add0~2\);

-- Location: FF_X19_Y4_N50
\count1|i_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~1_sumout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(6));

-- Location: LABCELL_X19_Y4_N51
\count1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~5_sumout\ = SUM(( \count1|i_count\(7) ) + ( GND ) + ( \count1|Add0~2\ ))
-- \count1|Add0~6\ = CARRY(( \count1|i_count\(7) ) + ( GND ) + ( \count1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count1|ALT_INV_i_count\(7),
	cin => \count1|Add0~2\,
	sumout => \count1|Add0~5_sumout\,
	cout => \count1|Add0~6\);

-- Location: FF_X19_Y4_N53
\count1|i_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~5_sumout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(7));

-- Location: LABCELL_X19_Y4_N54
\count1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~13_sumout\ = SUM(( \count1|i_count\(8) ) + ( GND ) + ( \count1|Add0~6\ ))
-- \count1|Add0~14\ = CARRY(( \count1|i_count\(8) ) + ( GND ) + ( \count1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count1|ALT_INV_i_count\(8),
	cin => \count1|Add0~6\,
	sumout => \count1|Add0~13_sumout\,
	cout => \count1|Add0~14\);

-- Location: FF_X19_Y4_N56
\count1|i_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~13_sumout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(8));

-- Location: LABCELL_X19_Y4_N57
\count1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~9_sumout\ = SUM(( \count1|i_count\(9) ) + ( GND ) + ( \count1|Add0~14\ ))
-- \count1|Add0~10\ = CARRY(( \count1|i_count\(9) ) + ( GND ) + ( \count1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count1|ALT_INV_i_count\(9),
	cin => \count1|Add0~14\,
	sumout => \count1|Add0~9_sumout\,
	cout => \count1|Add0~10\);

-- Location: FF_X19_Y4_N59
\count1|i_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~9_sumout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(9));

-- Location: LABCELL_X19_Y3_N0
\count1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~17_sumout\ = SUM(( \count1|i_count\(10) ) + ( GND ) + ( \count1|Add0~10\ ))
-- \count1|Add0~18\ = CARRY(( \count1|i_count\(10) ) + ( GND ) + ( \count1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count1|ALT_INV_i_count\(10),
	cin => \count1|Add0~10\,
	sumout => \count1|Add0~17_sumout\,
	cout => \count1|Add0~18\);

-- Location: FF_X19_Y3_N2
\count1|i_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~17_sumout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(10));

-- Location: LABCELL_X19_Y3_N3
\count1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~37_sumout\ = SUM(( \count1|i_count\(11) ) + ( GND ) + ( \count1|Add0~18\ ))
-- \count1|Add0~38\ = CARRY(( \count1|i_count\(11) ) + ( GND ) + ( \count1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count1|ALT_INV_i_count\(11),
	cin => \count1|Add0~18\,
	sumout => \count1|Add0~37_sumout\,
	cout => \count1|Add0~38\);

-- Location: FF_X19_Y3_N5
\count1|i_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~37_sumout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(11));

-- Location: LABCELL_X19_Y3_N6
\count1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~33_sumout\ = SUM(( \count1|i_count\(12) ) + ( GND ) + ( \count1|Add0~38\ ))
-- \count1|Add0~34\ = CARRY(( \count1|i_count\(12) ) + ( GND ) + ( \count1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \count1|ALT_INV_i_count\(12),
	cin => \count1|Add0~38\,
	sumout => \count1|Add0~33_sumout\,
	cout => \count1|Add0~34\);

-- Location: FF_X19_Y3_N8
\count1|i_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~33_sumout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(12));

-- Location: LABCELL_X19_Y3_N9
\count1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~41_sumout\ = SUM(( \count1|i_count\(13) ) + ( GND ) + ( \count1|Add0~34\ ))
-- \count1|Add0~42\ = CARRY(( \count1|i_count\(13) ) + ( GND ) + ( \count1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count1|ALT_INV_i_count\(13),
	cin => \count1|Add0~34\,
	sumout => \count1|Add0~41_sumout\,
	cout => \count1|Add0~42\);

-- Location: FF_X19_Y3_N11
\count1|i_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~41_sumout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(13));

-- Location: LABCELL_X19_Y3_N12
\count1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~45_sumout\ = SUM(( \count1|i_count\(14) ) + ( GND ) + ( \count1|Add0~42\ ))
-- \count1|Add0~46\ = CARRY(( \count1|i_count\(14) ) + ( GND ) + ( \count1|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \count1|ALT_INV_i_count\(14),
	cin => \count1|Add0~42\,
	sumout => \count1|Add0~45_sumout\,
	cout => \count1|Add0~46\);

-- Location: FF_X19_Y3_N14
\count1|i_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~45_sumout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(14));

-- Location: LABCELL_X19_Y3_N15
\count1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~49_sumout\ = SUM(( \count1|i_count\(15) ) + ( GND ) + ( \count1|Add0~46\ ))
-- \count1|Add0~50\ = CARRY(( \count1|i_count\(15) ) + ( GND ) + ( \count1|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count1|ALT_INV_i_count\(15),
	cin => \count1|Add0~46\,
	sumout => \count1|Add0~49_sumout\,
	cout => \count1|Add0~50\);

-- Location: FF_X19_Y3_N17
\count1|i_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~49_sumout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(15));

-- Location: LABCELL_X19_Y3_N18
\count1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~53_sumout\ = SUM(( \count1|i_count\(16) ) + ( GND ) + ( \count1|Add0~50\ ))
-- \count1|Add0~54\ = CARRY(( \count1|i_count\(16) ) + ( GND ) + ( \count1|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count1|ALT_INV_i_count\(16),
	cin => \count1|Add0~50\,
	sumout => \count1|Add0~53_sumout\,
	cout => \count1|Add0~54\);

-- Location: FF_X19_Y3_N20
\count1|i_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~53_sumout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(16));

-- Location: LABCELL_X19_Y3_N21
\count1|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~61_sumout\ = SUM(( \count1|i_count\(17) ) + ( GND ) + ( \count1|Add0~54\ ))
-- \count1|Add0~62\ = CARRY(( \count1|i_count\(17) ) + ( GND ) + ( \count1|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count1|ALT_INV_i_count\(17),
	cin => \count1|Add0~54\,
	sumout => \count1|Add0~61_sumout\,
	cout => \count1|Add0~62\);

-- Location: FF_X19_Y3_N23
\count1|i_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~61_sumout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(17));

-- Location: LABCELL_X19_Y4_N24
\count1|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Equal0~2_combout\ = ( !\count1|i_count\(13) & ( \count1|i_count\(15) & ( (!\count1|i_count\(16) & (!\count1|i_count\(3) & (!\count1|i_count\(17) & \count1|i_count\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count1|ALT_INV_i_count\(16),
	datab => \count1|ALT_INV_i_count\(3),
	datac => \count1|ALT_INV_i_count\(17),
	datad => \count1|ALT_INV_i_count\(14),
	datae => \count1|ALT_INV_i_count\(13),
	dataf => \count1|ALT_INV_i_count\(15),
	combout => \count1|Equal0~2_combout\);

-- Location: LABCELL_X19_Y3_N24
\count1|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~97_sumout\ = SUM(( \count1|i_count\(18) ) + ( GND ) + ( \count1|Add0~62\ ))
-- \count1|Add0~98\ = CARRY(( \count1|i_count\(18) ) + ( GND ) + ( \count1|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count1|ALT_INV_i_count\(18),
	cin => \count1|Add0~62\,
	sumout => \count1|Add0~97_sumout\,
	cout => \count1|Add0~98\);

-- Location: FF_X19_Y3_N26
\count1|i_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~97_sumout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(18));

-- Location: LABCELL_X19_Y3_N27
\count1|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~101_sumout\ = SUM(( \count1|i_count\(19) ) + ( GND ) + ( \count1|Add0~98\ ))
-- \count1|Add0~102\ = CARRY(( \count1|i_count\(19) ) + ( GND ) + ( \count1|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count1|ALT_INV_i_count\(19),
	cin => \count1|Add0~98\,
	sumout => \count1|Add0~101_sumout\,
	cout => \count1|Add0~102\);

-- Location: FF_X19_Y3_N29
\count1|i_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~101_sumout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(19));

-- Location: LABCELL_X19_Y3_N30
\count1|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~109_sumout\ = SUM(( \count1|i_count\(20) ) + ( GND ) + ( \count1|Add0~102\ ))
-- \count1|Add0~110\ = CARRY(( \count1|i_count\(20) ) + ( GND ) + ( \count1|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \count1|ALT_INV_i_count\(20),
	cin => \count1|Add0~102\,
	sumout => \count1|Add0~109_sumout\,
	cout => \count1|Add0~110\);

-- Location: FF_X19_Y3_N32
\count1|i_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~109_sumout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(20));

-- Location: LABCELL_X19_Y3_N33
\count1|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~105_sumout\ = SUM(( \count1|i_count\(21) ) + ( GND ) + ( \count1|Add0~110\ ))
-- \count1|Add0~106\ = CARRY(( \count1|i_count\(21) ) + ( GND ) + ( \count1|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count1|ALT_INV_i_count\(21),
	cin => \count1|Add0~110\,
	sumout => \count1|Add0~105_sumout\,
	cout => \count1|Add0~106\);

-- Location: FF_X19_Y3_N35
\count1|i_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~105_sumout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(21));

-- Location: LABCELL_X19_Y4_N6
\count1|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Equal0~4_combout\ = ( \count1|i_count\(21) & ( !\count1|i_count\(19) & ( (!\count1|i_count\(5) & (\count1|i_count\(20) & !\count1|i_count\(18))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \count1|ALT_INV_i_count\(5),
	datac => \count1|ALT_INV_i_count\(20),
	datad => \count1|ALT_INV_i_count\(18),
	datae => \count1|ALT_INV_i_count\(21),
	dataf => \count1|ALT_INV_i_count\(19),
	combout => \count1|Equal0~4_combout\);

-- Location: LABCELL_X19_Y4_N21
\count1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Equal0~0_combout\ = ( \count1|i_count\(8) & ( !\count1|i_count\(6) & ( (!\count1|i_count\(9) & \count1|i_count\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count1|ALT_INV_i_count\(9),
	datad => \count1|ALT_INV_i_count\(7),
	datae => \count1|ALT_INV_i_count\(8),
	dataf => \count1|ALT_INV_i_count\(6),
	combout => \count1|Equal0~0_combout\);

-- Location: LABCELL_X19_Y4_N0
\count1|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Equal0~1_combout\ = ( !\count1|i_count\(11) & ( !\count1|i_count\(1) & ( (!\count1|i_count\(0) & (\count1|i_count\(12) & (!\count1|i_count\(10) & !\count1|i_count\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count1|ALT_INV_i_count\(0),
	datab => \count1|ALT_INV_i_count\(12),
	datac => \count1|ALT_INV_i_count\(10),
	datad => \count1|ALT_INV_i_count\(2),
	datae => \count1|ALT_INV_i_count\(11),
	dataf => \count1|ALT_INV_i_count\(1),
	combout => \count1|Equal0~1_combout\);

-- Location: LABCELL_X19_Y3_N36
\count1|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~81_sumout\ = SUM(( \count1|i_count\(22) ) + ( GND ) + ( \count1|Add0~106\ ))
-- \count1|Add0~82\ = CARRY(( \count1|i_count\(22) ) + ( GND ) + ( \count1|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count1|ALT_INV_i_count\(22),
	cin => \count1|Add0~106\,
	sumout => \count1|Add0~81_sumout\,
	cout => \count1|Add0~82\);

-- Location: FF_X19_Y3_N38
\count1|i_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~81_sumout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(22));

-- Location: LABCELL_X19_Y3_N39
\count1|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~65_sumout\ = SUM(( \count1|i_count\(23) ) + ( GND ) + ( \count1|Add0~82\ ))
-- \count1|Add0~66\ = CARRY(( \count1|i_count\(23) ) + ( GND ) + ( \count1|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count1|ALT_INV_i_count\(23),
	cin => \count1|Add0~82\,
	sumout => \count1|Add0~65_sumout\,
	cout => \count1|Add0~66\);

-- Location: FF_X19_Y3_N41
\count1|i_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~65_sumout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(23));

-- Location: LABCELL_X19_Y3_N42
\count1|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~69_sumout\ = SUM(( \count1|i_count\(24) ) + ( GND ) + ( \count1|Add0~66\ ))
-- \count1|Add0~70\ = CARRY(( \count1|i_count\(24) ) + ( GND ) + ( \count1|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \count1|ALT_INV_i_count\(24),
	cin => \count1|Add0~66\,
	sumout => \count1|Add0~69_sumout\,
	cout => \count1|Add0~70\);

-- Location: FF_X19_Y3_N44
\count1|i_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~69_sumout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(24));

-- Location: LABCELL_X19_Y3_N45
\count1|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~73_sumout\ = SUM(( \count1|i_count\(25) ) + ( GND ) + ( \count1|Add0~70\ ))
-- \count1|Add0~74\ = CARRY(( \count1|i_count\(25) ) + ( GND ) + ( \count1|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count1|ALT_INV_i_count\(25),
	cin => \count1|Add0~70\,
	sumout => \count1|Add0~73_sumout\,
	cout => \count1|Add0~74\);

-- Location: FF_X19_Y3_N47
\count1|i_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~73_sumout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(25));

-- Location: LABCELL_X19_Y3_N48
\count1|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~77_sumout\ = SUM(( \count1|i_count\(26) ) + ( GND ) + ( \count1|Add0~74\ ))
-- \count1|Add0~78\ = CARRY(( \count1|i_count\(26) ) + ( GND ) + ( \count1|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \count1|ALT_INV_i_count\(26),
	cin => \count1|Add0~74\,
	sumout => \count1|Add0~77_sumout\,
	cout => \count1|Add0~78\);

-- Location: FF_X19_Y3_N50
\count1|i_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~77_sumout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(26));

-- Location: LABCELL_X19_Y3_N51
\count1|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Add0~85_sumout\ = SUM(( \count1|i_count\(27) ) + ( GND ) + ( \count1|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count1|ALT_INV_i_count\(27),
	cin => \count1|Add0~78\,
	sumout => \count1|Add0~85_sumout\);

-- Location: FF_X19_Y3_N53
\count1|i_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \count1|Add0~85_sumout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count1|i_count\(27));

-- Location: LABCELL_X19_Y3_N54
\count1|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \count1|Equal0~3_combout\ = ( \count1|i_count\(22) & ( !\count1|i_count\(24) & ( (\count1|i_count\(27) & (!\count1|i_count\(25) & (!\count1|i_count\(26) & \count1|i_count\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count1|ALT_INV_i_count\(27),
	datab => \count1|ALT_INV_i_count\(25),
	datac => \count1|ALT_INV_i_count\(26),
	datad => \count1|ALT_INV_i_count\(23),
	datae => \count1|ALT_INV_i_count\(22),
	dataf => \count1|ALT_INV_i_count\(24),
	combout => \count1|Equal0~3_combout\);

-- Location: LABCELL_X19_Y4_N15
\rtl~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = LCELL(( \count1|Equal0~1_combout\ & ( \count1|Equal0~3_combout\ & ( (\count1|Equal0~2_combout\ & (!\count1|i_count\(4) & (\count1|Equal0~4_combout\ & \count1|Equal0~0_combout\))) ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count1|ALT_INV_Equal0~2_combout\,
	datab => \count1|ALT_INV_i_count\(4),
	datac => \count1|ALT_INV_Equal0~4_combout\,
	datad => \count1|ALT_INV_Equal0~0_combout\,
	datae => \count1|ALT_INV_Equal0~1_combout\,
	dataf => \count1|ALT_INV_Equal0~3_combout\,
	combout => \rtl~0_combout\);

-- Location: LABCELL_X17_Y8_N54
\state_mach|i_current_floor[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_current_floor[0]~4_combout\ = !\state_mach|i_current_floor\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \state_mach|ALT_INV_i_current_floor\(0),
	combout => \state_mach|i_current_floor[0]~4_combout\);

-- Location: LABCELL_X18_Y3_N27
\state_mach|Selector2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|Selector2~2_combout\ = ( \state_mach|Selector2~0_combout\ & ( ((!\state_mach|floor_stop~q\ & !\state_mach|Selector2~1_combout\)) # (\state_mach|i_direction~q\) ) ) # ( !\state_mach|Selector2~0_combout\ & ( (!\state_mach|floor_stop~q\ & 
-- !\state_mach|Selector2~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000111111111010000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_floor_stop~q\,
	datac => \state_mach|ALT_INV_Selector2~1_combout\,
	datad => \state_mach|ALT_INV_i_direction~q\,
	dataf => \state_mach|ALT_INV_Selector2~0_combout\,
	combout => \state_mach|Selector2~2_combout\);

-- Location: FF_X19_Y5_N29
\state_mach|current_state.down\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	asdata => \state_mach|Selector2~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_mach|current_state.down~q\);

-- Location: FF_X17_Y7_N56
\state_mach|i_current_floor[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rtl~0_combout\,
	asdata => \state_mach|i_current_floor~1_combout\,
	sload => VCC,
	ena => \state_mach|i_current_floor~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_mach|i_current_floor\(1));

-- Location: LABCELL_X18_Y3_N51
\state_mach|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|Selector1~0_combout\ = ( \state_mach|destination~q\ & ( (!\state_mach|floor_stop~q\ & (((\state_mach|current_state.loading~q\ & !\state_mach|i_direction~q\)) # (\state_mach|current_state.up~q\))) ) ) # ( !\state_mach|destination~q\ & ( 
-- (\state_mach|current_state.up~q\ & !\state_mach|floor_stop~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000001001111000000000100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.loading~q\,
	datab => \state_mach|ALT_INV_i_direction~q\,
	datac => \state_mach|ALT_INV_current_state.up~q\,
	datad => \state_mach|ALT_INV_floor_stop~q\,
	dataf => \state_mach|ALT_INV_destination~q\,
	combout => \state_mach|Selector1~0_combout\);

-- Location: LABCELL_X18_Y3_N33
\state_mach|i_current_floor~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_current_floor~1_combout\ = ( \state_mach|Selector2~0_combout\ & ( !\state_mach|i_current_floor\(1) $ (!\state_mach|i_current_floor\(0) $ (((\state_mach|i_direction~q\ & !\state_mach|Selector1~0_combout\)))) ) ) # ( 
-- !\state_mach|Selector2~0_combout\ & ( !\state_mach|i_current_floor\(1) $ (!\state_mach|i_current_floor\(0) $ (!\state_mach|Selector1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100101100110100110010110011001101001011001100110100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor\(1),
	datab => \state_mach|ALT_INV_i_current_floor\(0),
	datac => \state_mach|ALT_INV_i_direction~q\,
	datad => \state_mach|ALT_INV_Selector1~0_combout\,
	dataf => \state_mach|ALT_INV_Selector2~0_combout\,
	combout => \state_mach|i_current_floor~1_combout\);

-- Location: FF_X17_Y7_N55
\state_mach|i_current_floor[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rtl~0_combout\,
	asdata => \state_mach|i_current_floor~1_combout\,
	sload => VCC,
	ena => \state_mach|i_current_floor~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_mach|i_current_floor[1]~DUPLICATE_q\);

-- Location: LABCELL_X18_Y3_N30
\state_mach|i_current_floor[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_current_floor[2]~2_combout\ = ( \state_mach|Selector1~1_combout\ & ( !\state_mach|i_current_floor\(2) $ (((!\state_mach|i_current_floor\(1)) # (!\state_mach|i_current_floor\(0)))) ) ) # ( !\state_mach|Selector1~1_combout\ & ( 
-- !\state_mach|i_current_floor\(2) $ ((((!\state_mach|Selector2~2_combout\) # (\state_mach|i_current_floor\(0))) # (\state_mach|i_current_floor\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110000111000011111000011100011110000111100001111000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor\(1),
	datab => \state_mach|ALT_INV_i_current_floor\(0),
	datac => \state_mach|ALT_INV_i_current_floor\(2),
	datad => \state_mach|ALT_INV_Selector2~2_combout\,
	dataf => \state_mach|ALT_INV_Selector1~1_combout\,
	combout => \state_mach|i_current_floor[2]~2_combout\);

-- Location: FF_X17_Y7_N2
\state_mach|i_current_floor[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rtl~0_combout\,
	asdata => \state_mach|i_current_floor[2]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_mach|i_current_floor\(2));

-- Location: LABCELL_X18_Y3_N9
\state_mach|i_current_floor[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_current_floor[3]~3_combout\ = ( \state_mach|Selector2~2_combout\ & ( \state_mach|Selector1~1_combout\ & ( !\state_mach|i_current_floor[3]~DUPLICATE_q\ $ (((!\state_mach|i_current_floor\(2)) # ((!\state_mach|i_current_floor\(0)) # 
-- (!\state_mach|i_current_floor\(1))))) ) ) ) # ( !\state_mach|Selector2~2_combout\ & ( \state_mach|Selector1~1_combout\ & ( !\state_mach|i_current_floor[3]~DUPLICATE_q\ $ (((!\state_mach|i_current_floor\(2)) # ((!\state_mach|i_current_floor\(0)) # 
-- (!\state_mach|i_current_floor\(1))))) ) ) ) # ( \state_mach|Selector2~2_combout\ & ( !\state_mach|Selector1~1_combout\ & ( !\state_mach|i_current_floor[3]~DUPLICATE_q\ $ ((((\state_mach|i_current_floor\(1)) # (\state_mach|i_current_floor\(0))) # 
-- (\state_mach|i_current_floor\(2)))) ) ) ) # ( !\state_mach|Selector2~2_combout\ & ( !\state_mach|Selector1~1_combout\ & ( \state_mach|i_current_floor[3]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011100100110011001100110011001101100011001100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor\(2),
	datab => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	datac => \state_mach|ALT_INV_i_current_floor\(0),
	datad => \state_mach|ALT_INV_i_current_floor\(1),
	datae => \state_mach|ALT_INV_Selector2~2_combout\,
	dataf => \state_mach|ALT_INV_Selector1~1_combout\,
	combout => \state_mach|i_current_floor[3]~3_combout\);

-- Location: FF_X18_Y7_N59
\state_mach|i_current_floor[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rtl~0_combout\,
	asdata => \state_mach|i_current_floor[3]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_mach|i_current_floor[3]~DUPLICATE_q\);

-- Location: LABCELL_X18_Y7_N15
\f_control|Decoder1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|Decoder1~7_combout\ = ( \state_mach|i_current_floor[1]~DUPLICATE_q\ & ( (\state_mach|i_current_floor\(0) & (\state_mach|i_current_floor\(2) & !\state_mach|i_current_floor[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor\(0),
	datab => \state_mach|ALT_INV_i_current_floor\(2),
	datad => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	dataf => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	combout => \f_control|Decoder1~7_combout\);

-- Location: IOIBUF_X36_Y0_N1
\KEY~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY,
	o => \KEY~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: MLABCELL_X15_Y4_N45
\f_control|i_destination_array~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_destination_array~0_combout\ = ( \SW[5]~input_o\ & ( !\KEY~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_KEY~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \f_control|i_destination_array~0_combout\);

-- Location: IOIBUF_X8_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LABCELL_X16_Y5_N33
\f_control|Decoder0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|Decoder0~7_combout\ = ( \SW[0]~input_o\ & ( (\SW[2]~input_o\ & (\SW[1]~input_o\ & !\SW[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \f_control|Decoder0~7_combout\);

-- Location: LABCELL_X18_Y7_N36
\f_control|i_destination_array~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_destination_array~9_combout\ = ( \f_control|i_destination_array\(7) & ( \rtl~0_combout\ & ( (!\f_control|Decoder1~7_combout\) # (!\state_mach|Mux0~4_combout\) ) ) ) # ( !\f_control|i_destination_array\(7) & ( \rtl~0_combout\ & ( 
-- (\f_control|i_destination_array~0_combout\ & (\f_control|Decoder0~7_combout\ & ((!\f_control|Decoder1~7_combout\) # (!\state_mach|Mux0~4_combout\)))) ) ) ) # ( \f_control|i_destination_array\(7) & ( !\rtl~0_combout\ ) ) # ( 
-- !\f_control|i_destination_array\(7) & ( !\rtl~0_combout\ & ( (\f_control|i_destination_array~0_combout\ & \f_control|Decoder0~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_Decoder1~7_combout\,
	datab => \state_mach|ALT_INV_Mux0~4_combout\,
	datac => \f_control|ALT_INV_i_destination_array~0_combout\,
	datad => \f_control|ALT_INV_Decoder0~7_combout\,
	datae => \f_control|ALT_INV_i_destination_array\(7),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_destination_array~9_combout\);

-- Location: FF_X18_Y7_N38
\f_control|i_destination_array[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_destination_array~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_destination_array\(7));

-- Location: LABCELL_X17_Y5_N54
\f_control|Decoder1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|Decoder1~6_combout\ = (!\state_mach|i_current_floor\(0) & (!\state_mach|i_current_floor[1]~DUPLICATE_q\ & (\state_mach|i_current_floor\(2) & !\state_mach|i_current_floor[3]~DUPLICATE_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor\(0),
	datab => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	datac => \state_mach|ALT_INV_i_current_floor\(2),
	datad => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	combout => \f_control|Decoder1~6_combout\);

-- Location: LABCELL_X18_Y8_N33
\f_control|Decoder0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|Decoder0~4_combout\ = ( !\SW[3]~input_o\ & ( !\SW[0]~input_o\ & ( (!\SW[1]~input_o\ & \SW[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datae => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \f_control|Decoder0~4_combout\);

-- Location: MLABCELL_X15_Y7_N48
\f_control|i_destination_array~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_destination_array~15_combout\ = ( \f_control|i_destination_array\(4) & ( \rtl~0_combout\ & ( (!\state_mach|Mux0~4_combout\) # (!\f_control|Decoder1~6_combout\) ) ) ) # ( !\f_control|i_destination_array\(4) & ( \rtl~0_combout\ & ( 
-- (\f_control|Decoder0~4_combout\ & (\f_control|i_destination_array~0_combout\ & ((!\state_mach|Mux0~4_combout\) # (!\f_control|Decoder1~6_combout\)))) ) ) ) # ( \f_control|i_destination_array\(4) & ( !\rtl~0_combout\ ) ) # ( 
-- !\f_control|i_destination_array\(4) & ( !\rtl~0_combout\ & ( (\f_control|Decoder0~4_combout\ & \f_control|i_destination_array~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_Mux0~4_combout\,
	datab => \f_control|ALT_INV_Decoder1~6_combout\,
	datac => \f_control|ALT_INV_Decoder0~4_combout\,
	datad => \f_control|ALT_INV_i_destination_array~0_combout\,
	datae => \f_control|ALT_INV_i_destination_array\(4),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_destination_array~15_combout\);

-- Location: FF_X15_Y7_N50
\f_control|i_destination_array[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_destination_array~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_destination_array\(4));

-- Location: LABCELL_X17_Y5_N57
\f_control|Decoder1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|Decoder1~1_combout\ = ( \state_mach|i_current_floor\(2) & ( (!\state_mach|i_current_floor[1]~DUPLICATE_q\ & (!\state_mach|i_current_floor[3]~DUPLICATE_q\ & \state_mach|i_current_floor\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	datac => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	datad => \state_mach|ALT_INV_i_current_floor\(0),
	dataf => \state_mach|ALT_INV_i_current_floor\(2),
	combout => \f_control|Decoder1~1_combout\);

-- Location: MLABCELL_X15_Y4_N36
\f_control|Decoder0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|Decoder0~5_combout\ = ( !\SW[1]~input_o\ & ( (\SW[0]~input_o\ & (!\SW[3]~input_o\ & \SW[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \f_control|Decoder0~5_combout\);

-- Location: MLABCELL_X15_Y7_N15
\f_control|i_destination_array~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_destination_array~12_combout\ = ( \f_control|i_destination_array\(5) & ( \rtl~0_combout\ & ( (!\state_mach|Mux0~4_combout\) # (!\f_control|Decoder1~1_combout\) ) ) ) # ( !\f_control|i_destination_array\(5) & ( \rtl~0_combout\ & ( 
-- (\f_control|Decoder0~5_combout\ & (\f_control|i_destination_array~0_combout\ & ((!\state_mach|Mux0~4_combout\) # (!\f_control|Decoder1~1_combout\)))) ) ) ) # ( \f_control|i_destination_array\(5) & ( !\rtl~0_combout\ ) ) # ( 
-- !\f_control|i_destination_array\(5) & ( !\rtl~0_combout\ & ( (\f_control|Decoder0~5_combout\ & \f_control|i_destination_array~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_Mux0~4_combout\,
	datab => \f_control|ALT_INV_Decoder1~1_combout\,
	datac => \f_control|ALT_INV_Decoder0~5_combout\,
	datad => \f_control|ALT_INV_i_destination_array~0_combout\,
	datae => \f_control|ALT_INV_i_destination_array\(5),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_destination_array~12_combout\);

-- Location: FF_X15_Y7_N17
\f_control|i_destination_array[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_destination_array~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_destination_array\(5));

-- Location: FF_X18_Y7_N58
\state_mach|i_current_floor[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rtl~0_combout\,
	asdata => \state_mach|i_current_floor[3]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_mach|i_current_floor\(3));

-- Location: FF_X17_Y7_N1
\state_mach|i_current_floor[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rtl~0_combout\,
	asdata => \state_mach|i_current_floor[2]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_mach|i_current_floor[2]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y7_N33
\state_mach|destination~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|destination~0_combout\ = ( \state_mach|i_current_floor[2]~DUPLICATE_q\ & ( (\state_mach|i_current_floor\(1) & (!\state_mach|i_current_floor\(3) & !\state_mach|i_current_floor\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor\(1),
	datac => \state_mach|ALT_INV_i_current_floor\(3),
	datad => \state_mach|ALT_INV_i_current_floor\(0),
	dataf => \state_mach|ALT_INV_i_current_floor[2]~DUPLICATE_q\,
	combout => \state_mach|destination~0_combout\);

-- Location: LABCELL_X16_Y4_N0
\f_control|Decoder0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|Decoder0~6_combout\ = ( !\SW[3]~input_o\ & ( (\SW[2]~input_o\ & (!\SW[0]~input_o\ & \SW[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \f_control|Decoder0~6_combout\);

-- Location: LABCELL_X18_Y7_N18
\f_control|i_destination_array~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_destination_array~13_combout\ = ( \f_control|i_destination_array\(6) & ( \rtl~0_combout\ & ( (!\state_mach|destination~0_combout\) # (!\state_mach|Mux0~4_combout\) ) ) ) # ( !\f_control|i_destination_array\(6) & ( \rtl~0_combout\ & ( 
-- (\f_control|i_destination_array~0_combout\ & (\f_control|Decoder0~6_combout\ & ((!\state_mach|destination~0_combout\) # (!\state_mach|Mux0~4_combout\)))) ) ) ) # ( \f_control|i_destination_array\(6) & ( !\rtl~0_combout\ ) ) # ( 
-- !\f_control|i_destination_array\(6) & ( !\rtl~0_combout\ & ( (\f_control|i_destination_array~0_combout\ & \f_control|Decoder0~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_destination~0_combout\,
	datab => \state_mach|ALT_INV_Mux0~4_combout\,
	datac => \f_control|ALT_INV_i_destination_array~0_combout\,
	datad => \f_control|ALT_INV_Decoder0~6_combout\,
	datae => \f_control|ALT_INV_i_destination_array\(6),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_destination_array~13_combout\);

-- Location: FF_X18_Y7_N20
\f_control|i_destination_array[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_destination_array~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_destination_array\(6));

-- Location: LABCELL_X16_Y8_N48
\state_mach|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|Mux0~1_combout\ = ( \f_control|i_destination_array\(5) & ( \f_control|i_destination_array\(6) & ( (!\state_mach|i_current_floor[1]~DUPLICATE_q\ & (((\f_control|i_destination_array\(4))) # (\state_mach|i_current_floor\(0)))) # 
-- (\state_mach|i_current_floor[1]~DUPLICATE_q\ & ((!\state_mach|i_current_floor\(0)) # ((\f_control|i_destination_array\(7))))) ) ) ) # ( !\f_control|i_destination_array\(5) & ( \f_control|i_destination_array\(6) & ( 
-- (!\state_mach|i_current_floor[1]~DUPLICATE_q\ & (!\state_mach|i_current_floor\(0) & ((\f_control|i_destination_array\(4))))) # (\state_mach|i_current_floor[1]~DUPLICATE_q\ & ((!\state_mach|i_current_floor\(0)) # ((\f_control|i_destination_array\(7))))) ) 
-- ) ) # ( \f_control|i_destination_array\(5) & ( !\f_control|i_destination_array\(6) & ( (!\state_mach|i_current_floor[1]~DUPLICATE_q\ & (((\f_control|i_destination_array\(4))) # (\state_mach|i_current_floor\(0)))) # 
-- (\state_mach|i_current_floor[1]~DUPLICATE_q\ & (\state_mach|i_current_floor\(0) & (\f_control|i_destination_array\(7)))) ) ) ) # ( !\f_control|i_destination_array\(5) & ( !\f_control|i_destination_array\(6) & ( 
-- (!\state_mach|i_current_floor[1]~DUPLICATE_q\ & (!\state_mach|i_current_floor\(0) & ((\f_control|i_destination_array\(4))))) # (\state_mach|i_current_floor[1]~DUPLICATE_q\ & (\state_mach|i_current_floor\(0) & (\f_control|i_destination_array\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001001000111010101101000101110011010110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	datab => \state_mach|ALT_INV_i_current_floor\(0),
	datac => \f_control|ALT_INV_i_destination_array\(7),
	datad => \f_control|ALT_INV_i_destination_array\(4),
	datae => \f_control|ALT_INV_i_destination_array\(5),
	dataf => \f_control|ALT_INV_i_destination_array\(6),
	combout => \state_mach|Mux0~1_combout\);

-- Location: MLABCELL_X15_Y4_N42
\f_control|Decoder0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|Decoder0~3_combout\ = ( \SW[1]~input_o\ & ( (\SW[0]~input_o\ & (!\SW[3]~input_o\ & !\SW[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \f_control|Decoder0~3_combout\);

-- Location: LABCELL_X18_Y8_N57
\f_control|Decoder1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|Decoder1~5_combout\ = ( !\state_mach|i_current_floor[2]~DUPLICATE_q\ & ( \state_mach|i_current_floor[1]~DUPLICATE_q\ & ( (!\state_mach|i_current_floor\(3) & \state_mach|i_current_floor\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \state_mach|ALT_INV_i_current_floor\(3),
	datad => \state_mach|ALT_INV_i_current_floor\(0),
	datae => \state_mach|ALT_INV_i_current_floor[2]~DUPLICATE_q\,
	dataf => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	combout => \f_control|Decoder1~5_combout\);

-- Location: LABCELL_X16_Y8_N30
\f_control|i_destination_array~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_destination_array~14_combout\ = ( \f_control|i_destination_array\(3) & ( \rtl~0_combout\ & ( (!\f_control|Decoder1~5_combout\) # (!\state_mach|Mux0~4_combout\) ) ) ) # ( !\f_control|i_destination_array\(3) & ( \rtl~0_combout\ & ( 
-- (\f_control|Decoder0~3_combout\ & (\f_control|i_destination_array~0_combout\ & ((!\f_control|Decoder1~5_combout\) # (!\state_mach|Mux0~4_combout\)))) ) ) ) # ( \f_control|i_destination_array\(3) & ( !\rtl~0_combout\ ) ) # ( 
-- !\f_control|i_destination_array\(3) & ( !\rtl~0_combout\ & ( (\f_control|Decoder0~3_combout\ & \f_control|i_destination_array~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111111111111111100000101000001001111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_Decoder0~3_combout\,
	datab => \f_control|ALT_INV_Decoder1~5_combout\,
	datac => \f_control|ALT_INV_i_destination_array~0_combout\,
	datad => \state_mach|ALT_INV_Mux0~4_combout\,
	datae => \f_control|ALT_INV_i_destination_array\(3),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_destination_array~14_combout\);

-- Location: FF_X16_Y8_N32
\f_control|i_destination_array[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_destination_array~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_destination_array\(3));

-- Location: LABCELL_X19_Y7_N21
\f_control|Decoder1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|Decoder1~2_combout\ = ( !\state_mach|i_current_floor[3]~DUPLICATE_q\ & ( (\state_mach|i_current_floor\(0) & (!\state_mach|i_current_floor[2]~DUPLICATE_q\ & !\state_mach|i_current_floor[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \state_mach|ALT_INV_i_current_floor\(0),
	datac => \state_mach|ALT_INV_i_current_floor[2]~DUPLICATE_q\,
	datad => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	dataf => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	combout => \f_control|Decoder1~2_combout\);

-- Location: LABCELL_X18_Y8_N3
\f_control|Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|Decoder0~0_combout\ = ( !\SW[3]~input_o\ & ( \SW[0]~input_o\ & ( (!\SW[1]~input_o\ & !\SW[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datae => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \f_control|Decoder0~0_combout\);

-- Location: MLABCELL_X15_Y7_N30
\f_control|i_destination_array~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_destination_array~1_combout\ = ( \f_control|i_destination_array\(1) & ( \rtl~0_combout\ & ( (!\state_mach|Mux0~4_combout\) # (!\f_control|Decoder1~2_combout\) ) ) ) # ( !\f_control|i_destination_array\(1) & ( \rtl~0_combout\ & ( 
-- (\f_control|Decoder0~0_combout\ & (\f_control|i_destination_array~0_combout\ & ((!\state_mach|Mux0~4_combout\) # (!\f_control|Decoder1~2_combout\)))) ) ) ) # ( \f_control|i_destination_array\(1) & ( !\rtl~0_combout\ ) ) # ( 
-- !\f_control|i_destination_array\(1) & ( !\rtl~0_combout\ & ( (\f_control|Decoder0~0_combout\ & \f_control|i_destination_array~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_Mux0~4_combout\,
	datab => \f_control|ALT_INV_Decoder1~2_combout\,
	datac => \f_control|ALT_INV_Decoder0~0_combout\,
	datad => \f_control|ALT_INV_i_destination_array~0_combout\,
	datae => \f_control|ALT_INV_i_destination_array\(1),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_destination_array~1_combout\);

-- Location: FF_X15_Y7_N32
\f_control|i_destination_array[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_destination_array~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_destination_array\(1));

-- Location: LABCELL_X18_Y6_N0
\f_control|Decoder1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|Decoder1~4_combout\ = ( \state_mach|i_current_floor[1]~DUPLICATE_q\ & ( (!\state_mach|i_current_floor\(3) & (!\state_mach|i_current_floor\(0) & !\state_mach|i_current_floor[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \state_mach|ALT_INV_i_current_floor\(3),
	datac => \state_mach|ALT_INV_i_current_floor\(0),
	datad => \state_mach|ALT_INV_i_current_floor[2]~DUPLICATE_q\,
	dataf => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	combout => \f_control|Decoder1~4_combout\);

-- Location: LABCELL_X16_Y5_N39
\f_control|Decoder0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|Decoder0~2_combout\ = ( !\SW[3]~input_o\ & ( !\SW[0]~input_o\ & ( (!\SW[2]~input_o\ & \SW[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datae => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \f_control|Decoder0~2_combout\);

-- Location: MLABCELL_X15_Y7_N36
\f_control|i_destination_array~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_destination_array~2_combout\ = ( \f_control|i_destination_array\(2) & ( \rtl~0_combout\ & ( (!\state_mach|Mux0~4_combout\) # (!\f_control|Decoder1~4_combout\) ) ) ) # ( !\f_control|i_destination_array\(2) & ( \rtl~0_combout\ & ( 
-- (\f_control|i_destination_array~0_combout\ & (\f_control|Decoder0~2_combout\ & ((!\state_mach|Mux0~4_combout\) # (!\f_control|Decoder1~4_combout\)))) ) ) ) # ( \f_control|i_destination_array\(2) & ( !\rtl~0_combout\ ) ) # ( 
-- !\f_control|i_destination_array\(2) & ( !\rtl~0_combout\ & ( (\f_control|i_destination_array~0_combout\ & \f_control|Decoder0~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_Mux0~4_combout\,
	datab => \f_control|ALT_INV_Decoder1~4_combout\,
	datac => \f_control|ALT_INV_i_destination_array~0_combout\,
	datad => \f_control|ALT_INV_Decoder0~2_combout\,
	datae => \f_control|ALT_INV_i_destination_array\(2),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_destination_array~2_combout\);

-- Location: FF_X15_Y7_N38
\f_control|i_destination_array[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_destination_array~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_destination_array\(2));

-- Location: LABCELL_X16_Y8_N36
\state_mach|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|Mux0~0_combout\ = ( \f_control|i_destination_array\(2) & ( \f_control|i_destination_array\(0) & ( (!\state_mach|i_current_floor\(0)) # ((!\state_mach|i_current_floor[1]~DUPLICATE_q\ & ((\f_control|i_destination_array\(1)))) # 
-- (\state_mach|i_current_floor[1]~DUPLICATE_q\ & (\f_control|i_destination_array\(3)))) ) ) ) # ( !\f_control|i_destination_array\(2) & ( \f_control|i_destination_array\(0) & ( (!\state_mach|i_current_floor[1]~DUPLICATE_q\ & 
-- (((!\state_mach|i_current_floor\(0)) # (\f_control|i_destination_array\(1))))) # (\state_mach|i_current_floor[1]~DUPLICATE_q\ & (\f_control|i_destination_array\(3) & (\state_mach|i_current_floor\(0)))) ) ) ) # ( \f_control|i_destination_array\(2) & ( 
-- !\f_control|i_destination_array\(0) & ( (!\state_mach|i_current_floor[1]~DUPLICATE_q\ & (((\state_mach|i_current_floor\(0) & \f_control|i_destination_array\(1))))) # (\state_mach|i_current_floor[1]~DUPLICATE_q\ & (((!\state_mach|i_current_floor\(0))) # 
-- (\f_control|i_destination_array\(3)))) ) ) ) # ( !\f_control|i_destination_array\(2) & ( !\f_control|i_destination_array\(0) & ( (\state_mach|i_current_floor\(0) & ((!\state_mach|i_current_floor[1]~DUPLICATE_q\ & ((\f_control|i_destination_array\(1)))) # 
-- (\state_mach|i_current_floor[1]~DUPLICATE_q\ & (\f_control|i_destination_array\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011010100010101101110100001101010111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	datab => \f_control|ALT_INV_i_destination_array\(3),
	datac => \state_mach|ALT_INV_i_current_floor\(0),
	datad => \f_control|ALT_INV_i_destination_array\(1),
	datae => \f_control|ALT_INV_i_destination_array\(2),
	dataf => \f_control|ALT_INV_i_destination_array\(0),
	combout => \state_mach|Mux0~0_combout\);

-- Location: LABCELL_X16_Y5_N27
\f_control|Decoder1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|Decoder1~8_combout\ = ( !\state_mach|i_current_floor[1]~DUPLICATE_q\ & ( (!\state_mach|i_current_floor[2]~DUPLICATE_q\ & (!\state_mach|i_current_floor\(0) & \state_mach|i_current_floor[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \state_mach|ALT_INV_i_current_floor[2]~DUPLICATE_q\,
	datac => \state_mach|ALT_INV_i_current_floor\(0),
	datad => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	dataf => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	combout => \f_control|Decoder1~8_combout\);

-- Location: LABCELL_X18_Y8_N39
\f_control|Decoder0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|Decoder0~8_combout\ = ( \SW[3]~input_o\ & ( !\SW[0]~input_o\ & ( (!\SW[1]~input_o\ & !\SW[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datae => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \f_control|Decoder0~8_combout\);

-- Location: MLABCELL_X15_Y7_N18
\f_control|i_destination_array~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_destination_array~10_combout\ = ( \f_control|i_destination_array\(8) & ( \rtl~0_combout\ & ( (!\state_mach|Mux0~4_combout\) # (!\f_control|Decoder1~8_combout\) ) ) ) # ( !\f_control|i_destination_array\(8) & ( \rtl~0_combout\ & ( 
-- (\f_control|i_destination_array~0_combout\ & (\f_control|Decoder0~8_combout\ & ((!\state_mach|Mux0~4_combout\) # (!\f_control|Decoder1~8_combout\)))) ) ) ) # ( \f_control|i_destination_array\(8) & ( !\rtl~0_combout\ ) ) # ( 
-- !\f_control|i_destination_array\(8) & ( !\rtl~0_combout\ & ( (\f_control|i_destination_array~0_combout\ & \f_control|Decoder0~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_Mux0~4_combout\,
	datab => \f_control|ALT_INV_Decoder1~8_combout\,
	datac => \f_control|ALT_INV_i_destination_array~0_combout\,
	datad => \f_control|ALT_INV_Decoder0~8_combout\,
	datae => \f_control|ALT_INV_i_destination_array\(8),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_destination_array~10_combout\);

-- Location: FF_X15_Y7_N20
\f_control|i_destination_array[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_destination_array~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_destination_array\(8));

-- Location: MLABCELL_X15_Y7_N24
\f_control|Decoder1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|Decoder1~9_combout\ = ( !\state_mach|i_current_floor[1]~DUPLICATE_q\ & ( (!\state_mach|i_current_floor\(2) & (\state_mach|i_current_floor\(3) & \state_mach|i_current_floor\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor\(2),
	datac => \state_mach|ALT_INV_i_current_floor\(3),
	datad => \state_mach|ALT_INV_i_current_floor\(0),
	dataf => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	combout => \f_control|Decoder1~9_combout\);

-- Location: LABCELL_X16_Y5_N54
\f_control|Decoder0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|Decoder0~9_combout\ = ( \SW[3]~input_o\ & ( \SW[0]~input_o\ & ( (!\SW[1]~input_o\ & !\SW[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datae => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \f_control|Decoder0~9_combout\);

-- Location: MLABCELL_X15_Y7_N42
\f_control|i_destination_array~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_destination_array~11_combout\ = ( \f_control|i_destination_array\(9) & ( \rtl~0_combout\ & ( (!\state_mach|Mux0~4_combout\) # (!\f_control|Decoder1~9_combout\) ) ) ) # ( !\f_control|i_destination_array\(9) & ( \rtl~0_combout\ & ( 
-- (\f_control|Decoder0~9_combout\ & (\f_control|i_destination_array~0_combout\ & ((!\state_mach|Mux0~4_combout\) # (!\f_control|Decoder1~9_combout\)))) ) ) ) # ( \f_control|i_destination_array\(9) & ( !\rtl~0_combout\ ) ) # ( 
-- !\f_control|i_destination_array\(9) & ( !\rtl~0_combout\ & ( (\f_control|Decoder0~9_combout\ & \f_control|i_destination_array~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_Mux0~4_combout\,
	datab => \f_control|ALT_INV_Decoder1~9_combout\,
	datac => \f_control|ALT_INV_Decoder0~9_combout\,
	datad => \f_control|ALT_INV_i_destination_array~0_combout\,
	datae => \f_control|ALT_INV_i_destination_array\(9),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_destination_array~11_combout\);

-- Location: FF_X15_Y7_N44
\f_control|i_destination_array[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_destination_array~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_destination_array\(9));

-- Location: LABCELL_X17_Y5_N3
\f_control|Decoder1~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|Decoder1~10_combout\ = ( \state_mach|i_current_floor[3]~DUPLICATE_q\ & ( !\state_mach|i_current_floor\(2) & ( (!\state_mach|i_current_floor\(0) & \state_mach|i_current_floor[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor\(0),
	datac => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	datae => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	dataf => \state_mach|ALT_INV_i_current_floor\(2),
	combout => \f_control|Decoder1~10_combout\);

-- Location: LABCELL_X16_Y5_N24
\f_control|Decoder0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|Decoder0~10_combout\ = ( \SW[1]~input_o\ & ( (\SW[3]~input_o\ & (!\SW[2]~input_o\ & !\SW[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \f_control|Decoder0~10_combout\);

-- Location: LABCELL_X16_Y4_N42
\f_control|i_destination_array~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_destination_array~7_combout\ = ( \f_control|i_destination_array\(10) & ( \rtl~0_combout\ & ( (!\f_control|Decoder1~10_combout\) # (!\state_mach|Mux0~4_combout\) ) ) ) # ( !\f_control|i_destination_array\(10) & ( \rtl~0_combout\ & ( 
-- (\f_control|i_destination_array~0_combout\ & (\f_control|Decoder0~10_combout\ & ((!\f_control|Decoder1~10_combout\) # (!\state_mach|Mux0~4_combout\)))) ) ) ) # ( \f_control|i_destination_array\(10) & ( !\rtl~0_combout\ ) ) # ( 
-- !\f_control|i_destination_array\(10) & ( !\rtl~0_combout\ & ( (\f_control|i_destination_array~0_combout\ & \f_control|Decoder0~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_Decoder1~10_combout\,
	datab => \state_mach|ALT_INV_Mux0~4_combout\,
	datac => \f_control|ALT_INV_i_destination_array~0_combout\,
	datad => \f_control|ALT_INV_Decoder0~10_combout\,
	datae => \f_control|ALT_INV_i_destination_array\(10),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_destination_array~7_combout\);

-- Location: FF_X16_Y4_N44
\f_control|i_destination_array[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_destination_array~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_destination_array\(10));

-- Location: LABCELL_X17_Y7_N9
\f_control|Decoder1~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|Decoder1~11_combout\ = ( \state_mach|i_current_floor[1]~DUPLICATE_q\ & ( (!\state_mach|i_current_floor\(2) & (\state_mach|i_current_floor\(3) & \state_mach|i_current_floor\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \state_mach|ALT_INV_i_current_floor\(2),
	datac => \state_mach|ALT_INV_i_current_floor\(3),
	datad => \state_mach|ALT_INV_i_current_floor\(0),
	dataf => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	combout => \f_control|Decoder1~11_combout\);

-- Location: LABCELL_X16_Y4_N27
\f_control|Decoder0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|Decoder0~11_combout\ = ( \SW[3]~input_o\ & ( (\SW[0]~input_o\ & (!\SW[2]~input_o\ & \SW[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \f_control|Decoder0~11_combout\);

-- Location: LABCELL_X16_Y4_N54
\f_control|i_destination_array~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_destination_array~8_combout\ = ( \f_control|i_destination_array\(11) & ( \rtl~0_combout\ & ( (!\f_control|Decoder1~11_combout\) # (!\state_mach|Mux0~4_combout\) ) ) ) # ( !\f_control|i_destination_array\(11) & ( \rtl~0_combout\ & ( 
-- (\f_control|i_destination_array~0_combout\ & (\f_control|Decoder0~11_combout\ & ((!\f_control|Decoder1~11_combout\) # (!\state_mach|Mux0~4_combout\)))) ) ) ) # ( \f_control|i_destination_array\(11) & ( !\rtl~0_combout\ ) ) # ( 
-- !\f_control|i_destination_array\(11) & ( !\rtl~0_combout\ & ( (\f_control|i_destination_array~0_combout\ & \f_control|Decoder0~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_Decoder1~11_combout\,
	datab => \state_mach|ALT_INV_Mux0~4_combout\,
	datac => \f_control|ALT_INV_i_destination_array~0_combout\,
	datad => \f_control|ALT_INV_Decoder0~11_combout\,
	datae => \f_control|ALT_INV_i_destination_array\(11),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_destination_array~8_combout\);

-- Location: FF_X16_Y4_N56
\f_control|i_destination_array[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_destination_array~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_destination_array\(11));

-- Location: LABCELL_X16_Y8_N12
\state_mach|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|Mux0~2_combout\ = ( \f_control|i_destination_array\(10) & ( \f_control|i_destination_array\(11) & ( ((!\state_mach|i_current_floor\(0) & (\f_control|i_destination_array\(8))) # (\state_mach|i_current_floor\(0) & 
-- ((\f_control|i_destination_array\(9))))) # (\state_mach|i_current_floor[1]~DUPLICATE_q\) ) ) ) # ( !\f_control|i_destination_array\(10) & ( \f_control|i_destination_array\(11) & ( (!\state_mach|i_current_floor[1]~DUPLICATE_q\ & 
-- ((!\state_mach|i_current_floor\(0) & (\f_control|i_destination_array\(8))) # (\state_mach|i_current_floor\(0) & ((\f_control|i_destination_array\(9)))))) # (\state_mach|i_current_floor[1]~DUPLICATE_q\ & (\state_mach|i_current_floor\(0))) ) ) ) # ( 
-- \f_control|i_destination_array\(10) & ( !\f_control|i_destination_array\(11) & ( (!\state_mach|i_current_floor[1]~DUPLICATE_q\ & ((!\state_mach|i_current_floor\(0) & (\f_control|i_destination_array\(8))) # (\state_mach|i_current_floor\(0) & 
-- ((\f_control|i_destination_array\(9)))))) # (\state_mach|i_current_floor[1]~DUPLICATE_q\ & (!\state_mach|i_current_floor\(0))) ) ) ) # ( !\f_control|i_destination_array\(10) & ( !\f_control|i_destination_array\(11) & ( 
-- (!\state_mach|i_current_floor[1]~DUPLICATE_q\ & ((!\state_mach|i_current_floor\(0) & (\f_control|i_destination_array\(8))) # (\state_mach|i_current_floor\(0) & ((\f_control|i_destination_array\(9)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	datab => \state_mach|ALT_INV_i_current_floor\(0),
	datac => \f_control|ALT_INV_i_destination_array\(8),
	datad => \f_control|ALT_INV_i_destination_array\(9),
	datae => \f_control|ALT_INV_i_destination_array\(10),
	dataf => \f_control|ALT_INV_i_destination_array\(11),
	combout => \state_mach|Mux0~2_combout\);

-- Location: LABCELL_X16_Y5_N45
\f_control|Decoder0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|Decoder0~14_combout\ = ( !\SW[0]~input_o\ & ( (\SW[2]~input_o\ & (\SW[1]~input_o\ & \SW[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \f_control|Decoder0~14_combout\);

-- Location: LABCELL_X16_Y6_N6
\f_control|i_destination_array~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_destination_array~3_combout\ = ( \f_control|i_destination_array\(14) & ( \rtl~0_combout\ & ( (!\state_mach|Mux0~4_combout\) # (!\f_control|Decoder1~14_combout\) ) ) ) # ( !\f_control|i_destination_array\(14) & ( \rtl~0_combout\ & ( 
-- (\f_control|i_destination_array~0_combout\ & (\f_control|Decoder0~14_combout\ & ((!\state_mach|Mux0~4_combout\) # (!\f_control|Decoder1~14_combout\)))) ) ) ) # ( \f_control|i_destination_array\(14) & ( !\rtl~0_combout\ ) ) # ( 
-- !\f_control|i_destination_array\(14) & ( !\rtl~0_combout\ & ( (\f_control|i_destination_array~0_combout\ & \f_control|Decoder0~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_Mux0~4_combout\,
	datab => \f_control|ALT_INV_Decoder1~14_combout\,
	datac => \f_control|ALT_INV_i_destination_array~0_combout\,
	datad => \f_control|ALT_INV_Decoder0~14_combout\,
	datae => \f_control|ALT_INV_i_destination_array\(14),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_destination_array~3_combout\);

-- Location: FF_X16_Y6_N8
\f_control|i_destination_array[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_destination_array~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_destination_array\(14));

-- Location: LABCELL_X16_Y6_N54
\state_mach|LessThan31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|LessThan31~0_combout\ = ( \state_mach|i_current_floor\(2) & ( (\state_mach|i_current_floor\(0) & (\state_mach|i_current_floor[1]~DUPLICATE_q\ & \state_mach|i_current_floor[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \state_mach|ALT_INV_i_current_floor\(0),
	datac => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	datad => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	dataf => \state_mach|ALT_INV_i_current_floor\(2),
	combout => \state_mach|LessThan31~0_combout\);

-- Location: LABCELL_X16_Y5_N30
\f_control|Decoder0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|Decoder0~15_combout\ = ( \SW[0]~input_o\ & ( (\SW[2]~input_o\ & (\SW[1]~input_o\ & \SW[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \f_control|Decoder0~15_combout\);

-- Location: LABCELL_X16_Y7_N48
\f_control|i_destination_array~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_destination_array~4_combout\ = ( \f_control|i_destination_array\(15) & ( \rtl~0_combout\ & ( (!\state_mach|LessThan31~0_combout\) # (!\state_mach|Mux0~4_combout\) ) ) ) # ( !\f_control|i_destination_array\(15) & ( \rtl~0_combout\ & ( 
-- (\f_control|i_destination_array~0_combout\ & (\f_control|Decoder0~15_combout\ & ((!\state_mach|LessThan31~0_combout\) # (!\state_mach|Mux0~4_combout\)))) ) ) ) # ( \f_control|i_destination_array\(15) & ( !\rtl~0_combout\ ) ) # ( 
-- !\f_control|i_destination_array\(15) & ( !\rtl~0_combout\ & ( (\f_control|i_destination_array~0_combout\ & \f_control|Decoder0~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_LessThan31~0_combout\,
	datab => \state_mach|ALT_INV_Mux0~4_combout\,
	datac => \f_control|ALT_INV_i_destination_array~0_combout\,
	datad => \f_control|ALT_INV_Decoder0~15_combout\,
	datae => \f_control|ALT_INV_i_destination_array\(15),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_destination_array~4_combout\);

-- Location: FF_X16_Y7_N50
\f_control|i_destination_array[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_destination_array~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_destination_array\(15));

-- Location: LABCELL_X17_Y7_N12
\f_control|Decoder1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|Decoder1~13_combout\ = ( !\state_mach|i_current_floor[1]~DUPLICATE_q\ & ( (\state_mach|i_current_floor\(0) & (\state_mach|i_current_floor\(2) & \state_mach|i_current_floor\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor\(0),
	datab => \state_mach|ALT_INV_i_current_floor\(2),
	datac => \state_mach|ALT_INV_i_current_floor\(3),
	dataf => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	combout => \f_control|Decoder1~13_combout\);

-- Location: LABCELL_X16_Y4_N12
\f_control|Decoder0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|Decoder0~13_combout\ = ( \SW[3]~input_o\ & ( (!\SW[1]~input_o\ & (\SW[2]~input_o\ & \SW[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \f_control|Decoder0~13_combout\);

-- Location: MLABCELL_X15_Y4_N18
\f_control|i_destination_array~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_destination_array~6_combout\ = ( \f_control|i_destination_array\(13) & ( \rtl~0_combout\ & ( (!\f_control|Decoder1~13_combout\) # (!\state_mach|Mux0~4_combout\) ) ) ) # ( !\f_control|i_destination_array\(13) & ( \rtl~0_combout\ & ( 
-- (\f_control|i_destination_array~0_combout\ & (\f_control|Decoder0~13_combout\ & ((!\f_control|Decoder1~13_combout\) # (!\state_mach|Mux0~4_combout\)))) ) ) ) # ( \f_control|i_destination_array\(13) & ( !\rtl~0_combout\ ) ) # ( 
-- !\f_control|i_destination_array\(13) & ( !\rtl~0_combout\ & ( (\f_control|i_destination_array~0_combout\ & \f_control|Decoder0~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_Decoder1~13_combout\,
	datab => \state_mach|ALT_INV_Mux0~4_combout\,
	datac => \f_control|ALT_INV_i_destination_array~0_combout\,
	datad => \f_control|ALT_INV_Decoder0~13_combout\,
	datae => \f_control|ALT_INV_i_destination_array\(13),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_destination_array~6_combout\);

-- Location: FF_X15_Y4_N20
\f_control|i_destination_array[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_destination_array~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_destination_array\(13));

-- Location: LABCELL_X17_Y7_N48
\f_control|Decoder1~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|Decoder1~12_combout\ = ( !\state_mach|i_current_floor[1]~DUPLICATE_q\ & ( (!\state_mach|i_current_floor\(0) & (\state_mach|i_current_floor\(2) & \state_mach|i_current_floor\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor\(0),
	datab => \state_mach|ALT_INV_i_current_floor\(2),
	datac => \state_mach|ALT_INV_i_current_floor\(3),
	dataf => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	combout => \f_control|Decoder1~12_combout\);

-- Location: MLABCELL_X15_Y4_N30
\f_control|Decoder0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|Decoder0~12_combout\ = ( !\SW[1]~input_o\ & ( (!\SW[0]~input_o\ & (\SW[3]~input_o\ & \SW[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \f_control|Decoder0~12_combout\);

-- Location: MLABCELL_X15_Y4_N24
\f_control|i_destination_array~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_destination_array~5_combout\ = ( \f_control|i_destination_array\(12) & ( \rtl~0_combout\ & ( (!\f_control|Decoder1~12_combout\) # (!\state_mach|Mux0~4_combout\) ) ) ) # ( !\f_control|i_destination_array\(12) & ( \rtl~0_combout\ & ( 
-- (\f_control|i_destination_array~0_combout\ & (\f_control|Decoder0~12_combout\ & ((!\f_control|Decoder1~12_combout\) # (!\state_mach|Mux0~4_combout\)))) ) ) ) # ( \f_control|i_destination_array\(12) & ( !\rtl~0_combout\ ) ) # ( 
-- !\f_control|i_destination_array\(12) & ( !\rtl~0_combout\ & ( (\f_control|i_destination_array~0_combout\ & \f_control|Decoder0~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_Decoder1~12_combout\,
	datab => \state_mach|ALT_INV_Mux0~4_combout\,
	datac => \f_control|ALT_INV_i_destination_array~0_combout\,
	datad => \f_control|ALT_INV_Decoder0~12_combout\,
	datae => \f_control|ALT_INV_i_destination_array\(12),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_destination_array~5_combout\);

-- Location: FF_X15_Y4_N26
\f_control|i_destination_array[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_destination_array~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_destination_array\(12));

-- Location: LABCELL_X16_Y8_N24
\state_mach|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|Mux0~3_combout\ = ( \f_control|i_destination_array\(13) & ( \f_control|i_destination_array\(12) & ( (!\state_mach|i_current_floor[1]~DUPLICATE_q\) # ((!\state_mach|i_current_floor\(0) & (\f_control|i_destination_array\(14))) # 
-- (\state_mach|i_current_floor\(0) & ((\f_control|i_destination_array\(15))))) ) ) ) # ( !\f_control|i_destination_array\(13) & ( \f_control|i_destination_array\(12) & ( (!\state_mach|i_current_floor[1]~DUPLICATE_q\ & (((!\state_mach|i_current_floor\(0))))) 
-- # (\state_mach|i_current_floor[1]~DUPLICATE_q\ & ((!\state_mach|i_current_floor\(0) & (\f_control|i_destination_array\(14))) # (\state_mach|i_current_floor\(0) & ((\f_control|i_destination_array\(15)))))) ) ) ) # ( \f_control|i_destination_array\(13) & ( 
-- !\f_control|i_destination_array\(12) & ( (!\state_mach|i_current_floor[1]~DUPLICATE_q\ & (((\state_mach|i_current_floor\(0))))) # (\state_mach|i_current_floor[1]~DUPLICATE_q\ & ((!\state_mach|i_current_floor\(0) & (\f_control|i_destination_array\(14))) # 
-- (\state_mach|i_current_floor\(0) & ((\f_control|i_destination_array\(15)))))) ) ) ) # ( !\f_control|i_destination_array\(13) & ( !\f_control|i_destination_array\(12) & ( (\state_mach|i_current_floor[1]~DUPLICATE_q\ & ((!\state_mach|i_current_floor\(0) & 
-- (\f_control|i_destination_array\(14))) # (\state_mach|i_current_floor\(0) & ((\f_control|i_destination_array\(15)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000110100001111110110000101101011011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	datab => \f_control|ALT_INV_i_destination_array\(14),
	datac => \state_mach|ALT_INV_i_current_floor\(0),
	datad => \f_control|ALT_INV_i_destination_array\(15),
	datae => \f_control|ALT_INV_i_destination_array\(13),
	dataf => \f_control|ALT_INV_i_destination_array\(12),
	combout => \state_mach|Mux0~3_combout\);

-- Location: LABCELL_X16_Y8_N6
\state_mach|Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|Mux0~4_combout\ = ( \state_mach|i_current_floor[2]~DUPLICATE_q\ & ( \state_mach|i_current_floor\(3) & ( \state_mach|Mux0~3_combout\ ) ) ) # ( !\state_mach|i_current_floor[2]~DUPLICATE_q\ & ( \state_mach|i_current_floor\(3) & ( 
-- \state_mach|Mux0~2_combout\ ) ) ) # ( \state_mach|i_current_floor[2]~DUPLICATE_q\ & ( !\state_mach|i_current_floor\(3) & ( \state_mach|Mux0~1_combout\ ) ) ) # ( !\state_mach|i_current_floor[2]~DUPLICATE_q\ & ( !\state_mach|i_current_floor\(3) & ( 
-- \state_mach|Mux0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_Mux0~1_combout\,
	datab => \state_mach|ALT_INV_Mux0~0_combout\,
	datac => \state_mach|ALT_INV_Mux0~2_combout\,
	datad => \state_mach|ALT_INV_Mux0~3_combout\,
	datae => \state_mach|ALT_INV_i_current_floor[2]~DUPLICATE_q\,
	dataf => \state_mach|ALT_INV_i_current_floor\(3),
	combout => \state_mach|Mux0~4_combout\);

-- Location: LABCELL_X19_Y7_N42
\f_control|Decoder1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|Decoder1~3_combout\ = ( !\state_mach|i_current_floor[3]~DUPLICATE_q\ & ( (!\state_mach|i_current_floor\(1) & (!\state_mach|i_current_floor\(0) & !\state_mach|i_current_floor[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \state_mach|ALT_INV_i_current_floor\(1),
	datac => \state_mach|ALT_INV_i_current_floor\(0),
	datad => \state_mach|ALT_INV_i_current_floor[2]~DUPLICATE_q\,
	dataf => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	combout => \f_control|Decoder1~3_combout\);

-- Location: LABCELL_X16_Y5_N42
\f_control|Decoder0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|Decoder0~1_combout\ = ( !\SW[0]~input_o\ & ( (!\SW[2]~input_o\ & (!\SW[1]~input_o\ & !\SW[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \f_control|Decoder0~1_combout\);

-- Location: MLABCELL_X15_Y7_N6
\f_control|i_destination_array~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_destination_array~16_combout\ = ( \f_control|i_destination_array\(0) & ( \rtl~0_combout\ & ( (!\state_mach|Mux0~4_combout\) # (!\f_control|Decoder1~3_combout\) ) ) ) # ( !\f_control|i_destination_array\(0) & ( \rtl~0_combout\ & ( 
-- (\f_control|i_destination_array~0_combout\ & (\f_control|Decoder0~1_combout\ & ((!\state_mach|Mux0~4_combout\) # (!\f_control|Decoder1~3_combout\)))) ) ) ) # ( \f_control|i_destination_array\(0) & ( !\rtl~0_combout\ ) ) # ( 
-- !\f_control|i_destination_array\(0) & ( !\rtl~0_combout\ & ( (\f_control|i_destination_array~0_combout\ & \f_control|Decoder0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_Mux0~4_combout\,
	datab => \f_control|ALT_INV_Decoder1~3_combout\,
	datac => \f_control|ALT_INV_i_destination_array~0_combout\,
	datad => \f_control|ALT_INV_Decoder0~1_combout\,
	datae => \f_control|ALT_INV_i_destination_array\(0),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_destination_array~16_combout\);

-- Location: FF_X15_Y7_N8
\f_control|i_destination_array[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_destination_array~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_destination_array\(0));

-- Location: LABCELL_X17_Y7_N51
\state_mach|check_destination_bits~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~26_combout\ = (\f_control|i_destination_array\(5)) # (\f_control|i_destination_array\(6))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \f_control|ALT_INV_i_destination_array\(6),
	datad => \f_control|ALT_INV_i_destination_array\(5),
	combout => \state_mach|check_destination_bits~26_combout\);

-- Location: LABCELL_X16_Y4_N18
\state_mach|check_destination_bits~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~24_combout\ = ( \f_control|i_destination_array\(14) & ( \f_control|i_destination_array\(15) ) ) # ( !\f_control|i_destination_array\(14) & ( \f_control|i_destination_array\(15) ) ) # ( \f_control|i_destination_array\(14) 
-- & ( !\f_control|i_destination_array\(15) ) ) # ( !\f_control|i_destination_array\(14) & ( !\f_control|i_destination_array\(15) & ( (((\f_control|i_destination_array\(13)) # (\f_control|i_destination_array\(12))) # (\f_control|i_destination_array\(10))) # 
-- (\f_control|i_destination_array\(11)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_destination_array\(11),
	datab => \f_control|ALT_INV_i_destination_array\(10),
	datac => \f_control|ALT_INV_i_destination_array\(12),
	datad => \f_control|ALT_INV_i_destination_array\(13),
	datae => \f_control|ALT_INV_i_destination_array\(14),
	dataf => \f_control|ALT_INV_i_destination_array\(15),
	combout => \state_mach|check_destination_bits~24_combout\);

-- Location: LABCELL_X16_Y8_N0
\state_mach|check_destination_bits~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~27_combout\ = ( !\f_control|i_destination_array\(4) & ( !\f_control|i_destination_array\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \f_control|ALT_INV_i_destination_array\(3),
	dataf => \f_control|ALT_INV_i_destination_array\(4),
	combout => \state_mach|check_destination_bits~27_combout\);

-- Location: LABCELL_X16_Y6_N45
\state_mach|check_destination_bits~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~25_combout\ = ( \f_control|i_destination_array\(9) ) # ( !\f_control|i_destination_array\(9) & ( (\f_control|i_destination_array\(8)) # (\f_control|i_destination_array\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \f_control|ALT_INV_i_destination_array\(7),
	datad => \f_control|ALT_INV_i_destination_array\(8),
	dataf => \f_control|ALT_INV_i_destination_array\(9),
	combout => \state_mach|check_destination_bits~25_combout\);

-- Location: LABCELL_X16_Y4_N30
\state_mach|i_direction~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~10_combout\ = ( \state_mach|check_destination_bits~27_combout\ & ( !\state_mach|check_destination_bits~25_combout\ & ( (!\f_control|i_destination_array\(1) & (!\f_control|i_destination_array\(2) & 
-- (!\state_mach|check_destination_bits~26_combout\ & !\state_mach|check_destination_bits~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_destination_array\(1),
	datab => \f_control|ALT_INV_i_destination_array\(2),
	datac => \state_mach|ALT_INV_check_destination_bits~26_combout\,
	datad => \state_mach|ALT_INV_check_destination_bits~24_combout\,
	datae => \state_mach|ALT_INV_check_destination_bits~27_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~25_combout\,
	combout => \state_mach|i_direction~10_combout\);

-- Location: MLABCELL_X15_Y6_N0
\state_mach|i_direction~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~40_combout\ = ( \state_mach|i_direction~10_combout\ & ( !\f_control|i_destination_array\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \f_control|ALT_INV_i_destination_array\(0),
	dataf => \state_mach|ALT_INV_i_direction~10_combout\,
	combout => \state_mach|i_direction~40_combout\);

-- Location: MLABCELL_X15_Y7_N54
\state_mach|check_destination_bits~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~28_combout\ = ( !\f_control|i_destination_array\(5) & ( !\f_control|i_destination_array\(3) & ( (!\f_control|i_destination_array\(2) & (!\f_control|i_destination_array\(1) & (!\f_control|i_destination_array\(4) & 
-- !\f_control|i_destination_array\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_destination_array\(2),
	datab => \f_control|ALT_INV_i_destination_array\(1),
	datac => \f_control|ALT_INV_i_destination_array\(4),
	datad => \f_control|ALT_INV_i_destination_array\(0),
	datae => \f_control|ALT_INV_i_destination_array\(5),
	dataf => \f_control|ALT_INV_i_destination_array\(3),
	combout => \state_mach|check_destination_bits~28_combout\);

-- Location: LABCELL_X18_Y7_N12
\state_mach|check_destination_bits~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~29_combout\ = ( !\f_control|i_destination_array\(6) & ( !\f_control|i_destination_array\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \f_control|ALT_INV_i_destination_array\(7),
	dataf => \f_control|ALT_INV_i_destination_array\(6),
	combout => \state_mach|check_destination_bits~29_combout\);

-- Location: MLABCELL_X15_Y7_N3
\state_mach|check_destination_bits~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~30_combout\ = ( \state_mach|check_destination_bits~29_combout\ & ( (((!\state_mach|check_destination_bits~28_combout\) # (\f_control|i_destination_array\(10))) # (\f_control|i_destination_array\(9))) # 
-- (\f_control|i_destination_array\(8)) ) ) # ( !\state_mach|check_destination_bits~29_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111011111111111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_destination_array\(8),
	datab => \f_control|ALT_INV_i_destination_array\(9),
	datac => \f_control|ALT_INV_i_destination_array\(10),
	datad => \state_mach|ALT_INV_check_destination_bits~28_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~29_combout\,
	combout => \state_mach|check_destination_bits~30_combout\);

-- Location: LABCELL_X16_Y8_N42
\state_mach|check_destination_bits~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~61_combout\ = ( !\state_mach|check_destination_bits~30_combout\ & ( (!\f_control|i_destination_array\(14) & (!\f_control|i_destination_array\(12) & (!\f_control|i_destination_array\(11) & 
-- !\f_control|i_destination_array\(13)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_destination_array\(14),
	datab => \f_control|ALT_INV_i_destination_array\(12),
	datac => \f_control|ALT_INV_i_destination_array\(11),
	datad => \f_control|ALT_INV_i_destination_array\(13),
	dataf => \state_mach|ALT_INV_check_destination_bits~30_combout\,
	combout => \state_mach|check_destination_bits~61_combout\);

-- Location: MLABCELL_X15_Y6_N48
\state_mach|check_destination_bits~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~77_combout\ = ( !\state_mach|check_destination_bits~30_combout\ & ( (!\f_control|i_destination_array\(11) & !\f_control|i_destination_array\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \f_control|ALT_INV_i_destination_array\(11),
	datad => \f_control|ALT_INV_i_destination_array\(12),
	dataf => \state_mach|ALT_INV_check_destination_bits~30_combout\,
	combout => \state_mach|check_destination_bits~77_combout\);

-- Location: LABCELL_X16_Y4_N15
\state_mach|LessThan28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|LessThan28~0_combout\ = ( \state_mach|i_current_floor[3]~DUPLICATE_q\ & ( \state_mach|i_current_floor\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \state_mach|ALT_INV_i_current_floor\(2),
	dataf => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	combout => \state_mach|LessThan28~0_combout\);

-- Location: MLABCELL_X15_Y4_N0
\state_mach|destination~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|destination~1_combout\ = ( \state_mach|i_current_floor\(1) & ( \state_mach|LessThan28~0_combout\ & ( !\state_mach|i_current_floor\(2) ) ) ) # ( !\state_mach|i_current_floor\(1) & ( \state_mach|LessThan28~0_combout\ & ( 
-- (!\state_mach|i_current_floor\(0)) # (!\state_mach|i_current_floor\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111100111111001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \state_mach|ALT_INV_i_current_floor\(0),
	datac => \state_mach|ALT_INV_i_current_floor\(2),
	datae => \state_mach|ALT_INV_i_current_floor\(1),
	dataf => \state_mach|ALT_INV_LessThan28~0_combout\,
	combout => \state_mach|destination~1_combout\);

-- Location: MLABCELL_X15_Y5_N57
\state_mach|check_destination_bits~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~62_combout\ = ( !\f_control|i_destination_array\(11) & ( !\state_mach|check_destination_bits~30_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \f_control|ALT_INV_i_destination_array\(11),
	dataf => \state_mach|ALT_INV_check_destination_bits~30_combout\,
	combout => \state_mach|check_destination_bits~62_combout\);

-- Location: LABCELL_X17_Y6_N15
\state_mach|LessThan30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|LessThan30~0_combout\ = ( \state_mach|i_current_floor[2]~DUPLICATE_q\ & ( (\state_mach|i_current_floor[1]~DUPLICATE_q\ & \state_mach|i_current_floor[3]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	datad => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	dataf => \state_mach|ALT_INV_i_current_floor[2]~DUPLICATE_q\,
	combout => \state_mach|LessThan30~0_combout\);

-- Location: LABCELL_X18_Y6_N12
\state_mach|i_direction~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~7_combout\ = ( \state_mach|i_current_floor[1]~DUPLICATE_q\ & ( (\state_mach|i_current_floor[3]~DUPLICATE_q\ & \state_mach|i_current_floor\(2)) ) ) # ( !\state_mach|i_current_floor[1]~DUPLICATE_q\ & ( 
-- (\state_mach|i_current_floor[3]~DUPLICATE_q\ & (\state_mach|i_current_floor\(2) & \state_mach|i_current_floor\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	datac => \state_mach|ALT_INV_i_current_floor\(2),
	datad => \state_mach|ALT_INV_i_current_floor\(0),
	dataf => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	combout => \state_mach|i_direction~7_combout\);

-- Location: LABCELL_X16_Y5_N0
\state_mach|check_destination_bits~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~89_combout\ = ( !\state_mach|LessThan30~0_combout\ & ( (!\f_control|i_destination_array\(11) & (!\f_control|i_destination_array\(12) & (!\state_mach|check_destination_bits~30_combout\ & 
-- ((!\f_control|i_destination_array\(13)) # (!\state_mach|i_direction~7_combout\))))) ) ) # ( \state_mach|LessThan30~0_combout\ & ( (!\f_control|i_destination_array\(11) & (!\f_control|i_destination_array\(12) & 
-- (!\state_mach|check_destination_bits~30_combout\ & ((\state_mach|LessThan31~0_combout\) # (\f_control|i_destination_array\(13)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1010100000000000001010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_destination_array\(11),
	datab => \f_control|ALT_INV_i_destination_array\(13),
	datac => \state_mach|ALT_INV_LessThan31~0_combout\,
	datad => \f_control|ALT_INV_i_destination_array\(12),
	datae => \state_mach|ALT_INV_LessThan30~0_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~30_combout\,
	datag => \state_mach|ALT_INV_i_direction~7_combout\,
	combout => \state_mach|check_destination_bits~89_combout\);

-- Location: LABCELL_X16_Y6_N3
\state_mach|check_destination_bits~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~65_combout\ = ( \f_control|i_destination_array\(0) & ( (!\state_mach|i_current_floor\(0) & (!\state_mach|i_current_floor[1]~DUPLICATE_q\ & (!\state_mach|i_current_floor\(2) & 
-- !\state_mach|i_current_floor[3]~DUPLICATE_q\))) ) ) # ( !\f_control|i_destination_array\(0) & ( (\state_mach|i_current_floor\(0) & (!\state_mach|i_current_floor[1]~DUPLICATE_q\ & (!\state_mach|i_current_floor\(2) & 
-- !\state_mach|i_current_floor[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor\(0),
	datab => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	datac => \state_mach|ALT_INV_i_current_floor\(2),
	datad => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	dataf => \f_control|ALT_INV_i_destination_array\(0),
	combout => \state_mach|check_destination_bits~65_combout\);

-- Location: LABCELL_X16_Y6_N27
\state_mach|check_destination_bits~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~63_combout\ = ( !\f_control|i_destination_array\(0) & ( !\f_control|i_destination_array\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \f_control|ALT_INV_i_destination_array\(1),
	dataf => \f_control|ALT_INV_i_destination_array\(0),
	combout => \state_mach|check_destination_bits~63_combout\);

-- Location: LABCELL_X16_Y6_N0
\state_mach|check_destination_bits~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~64_combout\ = ( !\state_mach|i_current_floor[3]~DUPLICATE_q\ & ( (!\state_mach|i_current_floor[1]~DUPLICATE_q\ & (\state_mach|i_current_floor\(2) & (!\state_mach|i_current_floor\(0) $ 
-- (!\f_control|i_destination_array\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001001000000000000100100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor\(0),
	datab => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	datac => \f_control|ALT_INV_i_destination_array\(4),
	datad => \state_mach|ALT_INV_i_current_floor\(2),
	dataf => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	combout => \state_mach|check_destination_bits~64_combout\);

-- Location: LABCELL_X16_Y6_N42
\state_mach|check_destination_bits~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~66_combout\ = ( !\state_mach|i_current_floor[2]~DUPLICATE_q\ & ( (\state_mach|i_current_floor[1]~DUPLICATE_q\ & (!\state_mach|i_current_floor[3]~DUPLICATE_q\ & (!\f_control|i_destination_array\(2) $ 
-- (!\state_mach|i_current_floor\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000000000000100100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_destination_array\(2),
	datab => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	datac => \state_mach|ALT_INV_i_current_floor\(0),
	datad => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	dataf => \state_mach|ALT_INV_i_current_floor[2]~DUPLICATE_q\,
	combout => \state_mach|check_destination_bits~66_combout\);

-- Location: LABCELL_X16_Y6_N48
\state_mach|check_destination_bits~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~67_combout\ = ( \state_mach|check_destination_bits~64_combout\ & ( \state_mach|check_destination_bits~66_combout\ & ( (!\state_mach|check_destination_bits~65_combout\ & !\state_mach|check_destination_bits~63_combout\) ) 
-- ) ) # ( !\state_mach|check_destination_bits~64_combout\ & ( \state_mach|check_destination_bits~66_combout\ & ( (!\state_mach|check_destination_bits~63_combout\ & (!\state_mach|check_destination_bits~65_combout\)) # 
-- (\state_mach|check_destination_bits~63_combout\ & (((!\f_control|i_destination_array\(2) & !\f_control|i_destination_array\(3))))) ) ) ) # ( \state_mach|check_destination_bits~64_combout\ & ( !\state_mach|check_destination_bits~66_combout\ & ( 
-- (!\state_mach|check_destination_bits~63_combout\ & (!\state_mach|check_destination_bits~65_combout\)) # (\state_mach|check_destination_bits~63_combout\ & (((\f_control|i_destination_array\(3)) # (\f_control|i_destination_array\(2))))) ) ) ) # ( 
-- !\state_mach|check_destination_bits~64_combout\ & ( !\state_mach|check_destination_bits~66_combout\ & ( (!\state_mach|check_destination_bits~65_combout\) # (\state_mach|check_destination_bits~63_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011100010111011101110111000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_check_destination_bits~65_combout\,
	datab => \state_mach|ALT_INV_check_destination_bits~63_combout\,
	datac => \f_control|ALT_INV_i_destination_array\(2),
	datad => \f_control|ALT_INV_i_destination_array\(3),
	datae => \state_mach|ALT_INV_check_destination_bits~64_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~66_combout\,
	combout => \state_mach|check_destination_bits~67_combout\);

-- Location: MLABCELL_X15_Y7_N0
\state_mach|check_destination_bits~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~73_combout\ = ( \state_mach|check_destination_bits~29_combout\ & ( (!\f_control|i_destination_array\(8) & (\state_mach|check_destination_bits~28_combout\ & !\f_control|i_destination_array\(9))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_destination_array\(8),
	datac => \state_mach|ALT_INV_check_destination_bits~28_combout\,
	datad => \f_control|ALT_INV_i_destination_array\(9),
	dataf => \state_mach|ALT_INV_check_destination_bits~29_combout\,
	combout => \state_mach|check_destination_bits~73_combout\);

-- Location: LABCELL_X18_Y6_N39
\state_mach|LessThan14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|LessThan14~0_combout\ = ( !\state_mach|i_current_floor[1]~DUPLICATE_q\ & ( !\state_mach|i_current_floor\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \state_mach|ALT_INV_i_current_floor\(2),
	dataf => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	combout => \state_mach|LessThan14~0_combout\);

-- Location: LABCELL_X18_Y6_N21
\state_mach|Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|Add1~0_combout\ = ( !\state_mach|i_current_floor[1]~DUPLICATE_q\ & ( (!\state_mach|i_current_floor\(2) & !\state_mach|i_current_floor\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \state_mach|ALT_INV_i_current_floor\(2),
	datad => \state_mach|ALT_INV_i_current_floor\(0),
	dataf => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	combout => \state_mach|Add1~0_combout\);

-- Location: MLABCELL_X21_Y6_N15
\state_mach|check_destination_bits~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~68_combout\ = ( \state_mach|Add1~0_combout\ & ( \state_mach|check_destination_bits~28_combout\ & ( (!\f_control|i_destination_array\(8) & \state_mach|check_destination_bits~29_combout\) ) ) ) # ( 
-- !\state_mach|Add1~0_combout\ & ( \state_mach|check_destination_bits~28_combout\ & ( (!\f_control|i_destination_array\(8) & (\state_mach|check_destination_bits~29_combout\ & ((!\state_mach|i_current_floor\(3)) # (!\state_mach|LessThan14~0_combout\)))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110010000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor\(3),
	datab => \f_control|ALT_INV_i_destination_array\(8),
	datac => \state_mach|ALT_INV_LessThan14~0_combout\,
	datad => \state_mach|ALT_INV_check_destination_bits~29_combout\,
	datae => \state_mach|ALT_INV_Add1~0_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~28_combout\,
	combout => \state_mach|check_destination_bits~68_combout\);

-- Location: LABCELL_X17_Y8_N33
\state_mach|check_destination_bits~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~69_combout\ = ( \state_mach|i_current_floor\(0) & ( (\f_control|i_destination_array\(7) & (\state_mach|i_current_floor\(2) & \state_mach|i_current_floor[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_destination_array\(7),
	datac => \state_mach|ALT_INV_i_current_floor\(2),
	datad => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	dataf => \state_mach|ALT_INV_i_current_floor\(0),
	combout => \state_mach|check_destination_bits~69_combout\);

-- Location: LABCELL_X17_Y8_N30
\state_mach|check_destination_bits~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~70_combout\ = ( !\state_mach|i_current_floor\(0) & ( (!\state_mach|i_current_floor\(2) & (\f_control|i_destination_array\(7) & !\state_mach|i_current_floor[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \state_mach|ALT_INV_i_current_floor\(2),
	datac => \f_control|ALT_INV_i_destination_array\(7),
	datad => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	dataf => \state_mach|ALT_INV_i_current_floor\(0),
	combout => \state_mach|check_destination_bits~70_combout\);

-- Location: LABCELL_X17_Y8_N24
\state_mach|check_destination_bits~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~71_combout\ = ( \state_mach|check_destination_bits~29_combout\ & ( \state_mach|check_destination_bits~28_combout\ & ( (!\f_control|i_destination_array\(8)) # ((!\state_mach|i_current_floor\(0) & 
-- (!\state_mach|i_current_floor\(2) & !\state_mach|i_current_floor[1]~DUPLICATE_q\))) ) ) ) # ( !\state_mach|check_destination_bits~29_combout\ & ( \state_mach|check_destination_bits~28_combout\ & ( (!\state_mach|i_current_floor\(0) & 
-- (!\state_mach|i_current_floor\(2) & !\state_mach|i_current_floor[1]~DUPLICATE_q\)) ) ) ) # ( \state_mach|check_destination_bits~29_combout\ & ( !\state_mach|check_destination_bits~28_combout\ & ( (!\state_mach|i_current_floor\(0) & 
-- (!\state_mach|i_current_floor\(2) & !\state_mach|i_current_floor[1]~DUPLICATE_q\)) ) ) ) # ( !\state_mach|check_destination_bits~29_combout\ & ( !\state_mach|check_destination_bits~28_combout\ & ( (!\state_mach|i_current_floor\(0) & 
-- (!\state_mach|i_current_floor\(2) & !\state_mach|i_current_floor[1]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000010001000000000001111100011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor\(0),
	datab => \state_mach|ALT_INV_i_current_floor\(2),
	datac => \f_control|ALT_INV_i_destination_array\(8),
	datad => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	datae => \state_mach|ALT_INV_check_destination_bits~29_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~28_combout\,
	combout => \state_mach|check_destination_bits~71_combout\);

-- Location: LABCELL_X17_Y8_N6
\state_mach|check_destination_bits~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~72_combout\ = ( \state_mach|destination~0_combout\ & ( \state_mach|check_destination_bits~71_combout\ & ( ((!\state_mach|i_current_floor\(3) & (\state_mach|check_destination_bits~69_combout\)) # 
-- (\state_mach|i_current_floor\(3) & ((!\state_mach|check_destination_bits~70_combout\)))) # (\f_control|i_destination_array\(6)) ) ) ) # ( !\state_mach|destination~0_combout\ & ( \state_mach|check_destination_bits~71_combout\ & ( 
-- (!\f_control|i_destination_array\(6) & ((!\state_mach|i_current_floor\(3) & (\state_mach|check_destination_bits~69_combout\)) # (\state_mach|i_current_floor\(3) & ((!\state_mach|check_destination_bits~70_combout\))))) ) ) ) # ( 
-- \state_mach|destination~0_combout\ & ( !\state_mach|check_destination_bits~71_combout\ & ( ((\state_mach|check_destination_bits~69_combout\ & !\state_mach|i_current_floor\(3))) # (\f_control|i_destination_array\(6)) ) ) ) # ( 
-- !\state_mach|destination~0_combout\ & ( !\state_mach|check_destination_bits~71_combout\ & ( (\state_mach|check_destination_bits~69_combout\ & (!\f_control|i_destination_array\(6) & !\state_mach|i_current_floor\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000011100110111001101001100010000000111111101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_check_destination_bits~69_combout\,
	datab => \f_control|ALT_INV_i_destination_array\(6),
	datac => \state_mach|ALT_INV_i_current_floor\(3),
	datad => \state_mach|ALT_INV_check_destination_bits~70_combout\,
	datae => \state_mach|ALT_INV_destination~0_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~71_combout\,
	combout => \state_mach|check_destination_bits~72_combout\);

-- Location: LABCELL_X17_Y8_N0
\state_mach|check_destination_bits~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~74_combout\ = ( \state_mach|check_destination_bits~29_combout\ & ( \state_mach|check_destination_bits~28_combout\ & ( (!\f_control|i_destination_array\(9) & !\f_control|i_destination_array\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \f_control|ALT_INV_i_destination_array\(9),
	datad => \f_control|ALT_INV_i_destination_array\(8),
	datae => \state_mach|ALT_INV_check_destination_bits~29_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~28_combout\,
	combout => \state_mach|check_destination_bits~74_combout\);

-- Location: LABCELL_X17_Y8_N42
\state_mach|check_destination_bits~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~75_combout\ = ( \state_mach|check_destination_bits~74_combout\ & ( \state_mach|i_current_floor\(2) ) ) # ( \state_mach|check_destination_bits~74_combout\ & ( !\state_mach|i_current_floor\(2) & ( 
-- (!\state_mach|i_current_floor[1]~DUPLICATE_q\) # ((!\state_mach|i_current_floor\(3)) # (!\f_control|i_destination_array\(10) $ (\state_mach|i_current_floor\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111101111110100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_destination_array\(10),
	datab => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	datac => \state_mach|ALT_INV_i_current_floor\(3),
	datad => \state_mach|ALT_INV_i_current_floor\(0),
	datae => \state_mach|ALT_INV_check_destination_bits~74_combout\,
	dataf => \state_mach|ALT_INV_i_current_floor\(2),
	combout => \state_mach|check_destination_bits~75_combout\);

-- Location: MLABCELL_X15_Y6_N24
\state_mach|check_destination_bits~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~76_combout\ = ( \state_mach|check_destination_bits~72_combout\ & ( !\state_mach|check_destination_bits~75_combout\ & ( ((!\state_mach|check_destination_bits~68_combout\ & 
-- ((!\state_mach|check_destination_bits~67_combout\) # (\state_mach|check_destination_bits~28_combout\)))) # (\state_mach|check_destination_bits~73_combout\) ) ) ) # ( !\state_mach|check_destination_bits~72_combout\ & ( 
-- !\state_mach|check_destination_bits~75_combout\ & ( ((!\state_mach|check_destination_bits~28_combout\ & (!\state_mach|check_destination_bits~67_combout\ & !\state_mach|check_destination_bits~68_combout\))) # 
-- (\state_mach|check_destination_bits~73_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111100001111110111110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_check_destination_bits~28_combout\,
	datab => \state_mach|ALT_INV_check_destination_bits~67_combout\,
	datac => \state_mach|ALT_INV_check_destination_bits~73_combout\,
	datad => \state_mach|ALT_INV_check_destination_bits~68_combout\,
	datae => \state_mach|ALT_INV_check_destination_bits~72_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~75_combout\,
	combout => \state_mach|check_destination_bits~76_combout\);

-- Location: MLABCELL_X15_Y6_N18
\state_mach|check_destination_bits~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~78_combout\ = ( \state_mach|check_destination_bits~89_combout\ & ( \state_mach|check_destination_bits~76_combout\ & ( !\state_mach|check_destination_bits~61_combout\ ) ) ) # ( 
-- !\state_mach|check_destination_bits~89_combout\ & ( \state_mach|check_destination_bits~76_combout\ & ( (!\state_mach|check_destination_bits~77_combout\ & (!\state_mach|destination~1_combout\ & (!\state_mach|check_destination_bits~61_combout\ & 
-- \state_mach|check_destination_bits~62_combout\))) ) ) ) # ( \state_mach|check_destination_bits~89_combout\ & ( !\state_mach|check_destination_bits~76_combout\ & ( !\state_mach|check_destination_bits~61_combout\ ) ) ) # ( 
-- !\state_mach|check_destination_bits~89_combout\ & ( !\state_mach|check_destination_bits~76_combout\ & ( (!\state_mach|check_destination_bits~77_combout\ & (!\state_mach|check_destination_bits~61_combout\ & ((!\state_mach|destination~1_combout\) # 
-- (!\state_mach|check_destination_bits~62_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010000000111100001111000000000000100000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_check_destination_bits~77_combout\,
	datab => \state_mach|ALT_INV_destination~1_combout\,
	datac => \state_mach|ALT_INV_check_destination_bits~61_combout\,
	datad => \state_mach|ALT_INV_check_destination_bits~62_combout\,
	datae => \state_mach|ALT_INV_check_destination_bits~89_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~76_combout\,
	combout => \state_mach|check_destination_bits~78_combout\);

-- Location: MLABCELL_X15_Y4_N51
\state_mach|check_destination_bits~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~51_combout\ = ( !\state_mach|check_destination_bits~25_combout\ & ( \state_mach|check_destination_bits~27_combout\ & ( (!\state_mach|check_destination_bits~24_combout\ & !\state_mach|check_destination_bits~26_combout\) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \state_mach|ALT_INV_check_destination_bits~24_combout\,
	datac => \state_mach|ALT_INV_check_destination_bits~26_combout\,
	datae => \state_mach|ALT_INV_check_destination_bits~25_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~27_combout\,
	combout => \state_mach|check_destination_bits~51_combout\);

-- Location: MLABCELL_X15_Y4_N6
\state_mach|check_destination_bits~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~59_combout\ = ( \state_mach|i_current_floor\(1) & ( \state_mach|check_destination_bits~51_combout\ & ( (((!\f_control|i_destination_array\(2)) # (\state_mach|i_current_floor\(0))) # 
-- (\state_mach|i_current_floor[3]~DUPLICATE_q\)) # (\state_mach|i_current_floor\(2)) ) ) ) # ( !\state_mach|i_current_floor\(1) & ( \state_mach|check_destination_bits~51_combout\ & ( (((!\state_mach|i_current_floor\(0)) # 
-- (\f_control|i_destination_array\(2))) # (\state_mach|i_current_floor[3]~DUPLICATE_q\)) # (\state_mach|i_current_floor\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111011111111111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor\(2),
	datab => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	datac => \f_control|ALT_INV_i_destination_array\(2),
	datad => \state_mach|ALT_INV_i_current_floor\(0),
	datae => \state_mach|ALT_INV_i_current_floor\(1),
	dataf => \state_mach|ALT_INV_check_destination_bits~51_combout\,
	combout => \state_mach|check_destination_bits~59_combout\);

-- Location: MLABCELL_X15_Y6_N45
\state_mach|check_destination_bits~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~52_combout\ = ( \state_mach|i_current_floor[3]~DUPLICATE_q\ ) # ( !\state_mach|i_current_floor[3]~DUPLICATE_q\ & ( (!\state_mach|i_current_floor[2]~DUPLICATE_q\ & ((!\state_mach|i_current_floor[1]~DUPLICATE_q\) # 
-- ((!\state_mach|i_current_floor\(0)) # (\f_control|i_destination_array\(4))))) # (\state_mach|i_current_floor[2]~DUPLICATE_q\ & (((!\f_control|i_destination_array\(4)) # (\state_mach|i_current_floor\(0))) # (\state_mach|i_current_floor[1]~DUPLICATE_q\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111011111111110111101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor[2]~DUPLICATE_q\,
	datab => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	datac => \f_control|ALT_INV_i_destination_array\(4),
	datad => \state_mach|ALT_INV_i_current_floor\(0),
	dataf => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	combout => \state_mach|check_destination_bits~52_combout\);

-- Location: MLABCELL_X21_Y6_N33
\state_mach|check_destination_bits~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~57_combout\ = ( \state_mach|i_current_floor[1]~DUPLICATE_q\ & ( \f_control|i_destination_array\(8) ) ) # ( !\state_mach|i_current_floor[1]~DUPLICATE_q\ & ( \f_control|i_destination_array\(8) & ( 
-- ((!\state_mach|i_current_floor\(3)) # (!\state_mach|i_current_floor\(0) $ (!\f_control|i_destination_array\(9)))) # (\state_mach|i_current_floor\(2)) ) ) ) # ( \state_mach|i_current_floor[1]~DUPLICATE_q\ & ( !\f_control|i_destination_array\(8) & ( 
-- (!\state_mach|i_current_floor\(0)) # ((!\state_mach|i_current_floor\(2)) # ((\state_mach|i_current_floor\(3)) # (\f_control|i_destination_array\(9)))) ) ) ) # ( !\state_mach|i_current_floor[1]~DUPLICATE_q\ & ( !\f_control|i_destination_array\(8) & ( 
-- (!\state_mach|i_current_floor\(0)) # (((!\f_control|i_destination_array\(9)) # (!\state_mach|i_current_floor\(3))) # (\state_mach|i_current_floor\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111011111011111111111111111111011110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor\(0),
	datab => \state_mach|ALT_INV_i_current_floor\(2),
	datac => \f_control|ALT_INV_i_destination_array\(9),
	datad => \state_mach|ALT_INV_i_current_floor\(3),
	datae => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	dataf => \f_control|ALT_INV_i_destination_array\(8),
	combout => \state_mach|check_destination_bits~57_combout\);

-- Location: MLABCELL_X15_Y6_N9
\state_mach|check_destination_bits~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~58_combout\ = ( \f_control|Decoder1~1_combout\ & ( (\f_control|i_destination_array\(6) & !\state_mach|destination~0_combout\) ) ) # ( !\f_control|Decoder1~1_combout\ & ( (!\f_control|i_destination_array\(6)) # 
-- (!\state_mach|destination~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \f_control|ALT_INV_i_destination_array\(6),
	datad => \state_mach|ALT_INV_destination~0_combout\,
	dataf => \f_control|ALT_INV_Decoder1~1_combout\,
	combout => \state_mach|check_destination_bits~58_combout\);

-- Location: MLABCELL_X15_Y6_N51
\state_mach|check_destination_bits~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~54_combout\ = ( \state_mach|i_current_floor[2]~DUPLICATE_q\ & ( (!\state_mach|i_current_floor[3]~DUPLICATE_q\) # ((!\state_mach|i_current_floor[1]~DUPLICATE_q\) # (!\f_control|i_destination_array\(15) $ 
-- (!\state_mach|i_current_floor\(0)))) ) ) # ( !\state_mach|i_current_floor[2]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111011111111101111101111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	datab => \f_control|ALT_INV_i_destination_array\(15),
	datac => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	datad => \state_mach|ALT_INV_i_current_floor\(0),
	dataf => \state_mach|ALT_INV_i_current_floor[2]~DUPLICATE_q\,
	combout => \state_mach|check_destination_bits~54_combout\);

-- Location: MLABCELL_X15_Y6_N42
\state_mach|check_destination_bits~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~55_combout\ = ( \state_mach|i_current_floor[3]~DUPLICATE_q\ & ( (!\state_mach|i_current_floor[2]~DUPLICATE_q\) # ((!\f_control|i_destination_array\(13) $ (!\state_mach|i_current_floor\(0))) # 
-- (\state_mach|i_current_floor[1]~DUPLICATE_q\)) ) ) # ( !\state_mach|i_current_floor[3]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110111111111110111011111111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor[2]~DUPLICATE_q\,
	datab => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	datac => \f_control|ALT_INV_i_destination_array\(13),
	datad => \state_mach|ALT_INV_i_current_floor\(0),
	dataf => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	combout => \state_mach|check_destination_bits~55_combout\);

-- Location: LABCELL_X19_Y6_N24
\state_mach|check_destination_bits~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~53_combout\ = ( \f_control|i_destination_array\(12) ) # ( !\f_control|i_destination_array\(12) & ( ((\f_control|i_destination_array\(13)) # (\f_control|i_destination_array\(15))) # (\f_control|i_destination_array\(14)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111111001111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \f_control|ALT_INV_i_destination_array\(14),
	datac => \f_control|ALT_INV_i_destination_array\(15),
	datad => \f_control|ALT_INV_i_destination_array\(13),
	dataf => \f_control|ALT_INV_i_destination_array\(12),
	combout => \state_mach|check_destination_bits~53_combout\);

-- Location: MLABCELL_X15_Y6_N3
\state_mach|check_destination_bits~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~56_combout\ = ( \state_mach|i_current_floor[2]~DUPLICATE_q\ ) # ( !\state_mach|i_current_floor[2]~DUPLICATE_q\ & ( (!\state_mach|i_current_floor[3]~DUPLICATE_q\) # ((!\state_mach|i_current_floor[1]~DUPLICATE_q\) # 
-- (!\f_control|i_destination_array\(11) $ (!\state_mach|i_current_floor\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111110111111011111111011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_destination_array\(11),
	datab => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	datac => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	datad => \state_mach|ALT_INV_i_current_floor\(0),
	dataf => \state_mach|ALT_INV_i_current_floor[2]~DUPLICATE_q\,
	combout => \state_mach|check_destination_bits~56_combout\);

-- Location: MLABCELL_X15_Y6_N12
\state_mach|check_destination_bits~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~97_combout\ = ( !\state_mach|check_destination_bits~53_combout\ & ( (((\state_mach|check_destination_bits~56_combout\ & ((\state_mach|check_destination_bits~24_combout\))))) ) ) # ( 
-- \state_mach|check_destination_bits~53_combout\ & ( (\state_mach|check_destination_bits~24_combout\ & ((!\f_control|i_destination_array\(15) & ((!\f_control|i_destination_array\(14) & ((\state_mach|check_destination_bits~55_combout\))) # 
-- (\f_control|i_destination_array\(14) & (\state_mach|check_destination_bits~54_combout\)))) # (\f_control|i_destination_array\(15) & (\state_mach|check_destination_bits~54_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000000001111000011110011010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_check_destination_bits~54_combout\,
	datab => \state_mach|ALT_INV_check_destination_bits~55_combout\,
	datac => \f_control|ALT_INV_i_destination_array\(15),
	datad => \f_control|ALT_INV_i_destination_array\(14),
	datae => \state_mach|ALT_INV_check_destination_bits~53_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~24_combout\,
	datag => \state_mach|ALT_INV_check_destination_bits~56_combout\,
	combout => \state_mach|check_destination_bits~97_combout\);

-- Location: MLABCELL_X15_Y6_N30
\state_mach|check_destination_bits~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~93_combout\ = ( !\state_mach|check_destination_bits~25_combout\ & ( (!\state_mach|check_destination_bits~24_combout\ & ((!\state_mach|check_destination_bits~26_combout\ & (\state_mach|check_destination_bits~52_combout\)) 
-- # (\state_mach|check_destination_bits~26_combout\ & (((\state_mach|check_destination_bits~58_combout\)))))) # (\state_mach|check_destination_bits~24_combout\ & ((((\state_mach|check_destination_bits~97_combout\))))) ) ) # ( 
-- \state_mach|check_destination_bits~25_combout\ & ( ((((!\state_mach|check_destination_bits~24_combout\ & \state_mach|check_destination_bits~57_combout\)) # (\state_mach|check_destination_bits~97_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010000000101010000010100000101001110101011111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_check_destination_bits~24_combout\,
	datab => \state_mach|ALT_INV_check_destination_bits~52_combout\,
	datac => \state_mach|ALT_INV_check_destination_bits~57_combout\,
	datad => \state_mach|ALT_INV_check_destination_bits~58_combout\,
	datae => \state_mach|ALT_INV_check_destination_bits~25_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~97_combout\,
	datag => \state_mach|ALT_INV_check_destination_bits~26_combout\,
	combout => \state_mach|check_destination_bits~93_combout\);

-- Location: MLABCELL_X15_Y6_N54
\state_mach|check_destination_bits~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~60_combout\ = ( \state_mach|check_destination_bits~59_combout\ & ( \state_mach|check_destination_bits~93_combout\ & ( (!\state_mach|i_direction~10_combout\) # ((!\state_mach|Add1~0_combout\) # 
-- (\state_mach|i_current_floor[3]~DUPLICATE_q\)) ) ) ) # ( !\state_mach|check_destination_bits~59_combout\ & ( \state_mach|check_destination_bits~93_combout\ & ( (!\state_mach|i_direction~10_combout\ & (((!\state_mach|check_destination_bits~51_combout\)))) 
-- # (\state_mach|i_direction~10_combout\ & ((!\state_mach|Add1~0_combout\) # ((\state_mach|i_current_floor[3]~DUPLICATE_q\)))) ) ) ) # ( \state_mach|check_destination_bits~59_combout\ & ( !\state_mach|check_destination_bits~93_combout\ & ( 
-- (!\state_mach|i_direction~10_combout\) # ((!\state_mach|Add1~0_combout\) # (\state_mach|i_current_floor[3]~DUPLICATE_q\)) ) ) ) # ( !\state_mach|check_destination_bits~59_combout\ & ( !\state_mach|check_destination_bits~93_combout\ & ( 
-- (\state_mach|i_direction~10_combout\ & ((!\state_mach|Add1~0_combout\) # (\state_mach|i_current_floor[3]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001010101111011101111111111100100111101011110111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_direction~10_combout\,
	datab => \state_mach|ALT_INV_Add1~0_combout\,
	datac => \state_mach|ALT_INV_check_destination_bits~51_combout\,
	datad => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	datae => \state_mach|ALT_INV_check_destination_bits~59_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~93_combout\,
	combout => \state_mach|check_destination_bits~60_combout\);

-- Location: MLABCELL_X15_Y6_N36
\state_mach|destination~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|destination~2_combout\ = ( !\state_mach|i_direction~q\ & ( (!\state_mach|i_direction~40_combout\ & (((\state_mach|check_destination_bits~60_combout\)))) ) ) # ( \state_mach|i_direction~q\ & ( ((!\state_mach|check_destination_bits~61_combout\ & 
-- (((\state_mach|check_destination_bits~78_combout\)))) # (\state_mach|check_destination_bits~61_combout\ & (\f_control|i_destination_array\(15) & ((!\state_mach|LessThan31~0_combout\) # (\state_mach|check_destination_bits~78_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101000001010000000000000110000001010000010101111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_direction~40_combout\,
	datab => \state_mach|ALT_INV_LessThan31~0_combout\,
	datac => \f_control|ALT_INV_i_destination_array\(15),
	datad => \state_mach|ALT_INV_check_destination_bits~61_combout\,
	datae => \state_mach|ALT_INV_i_direction~q\,
	dataf => \state_mach|ALT_INV_check_destination_bits~78_combout\,
	datag => \state_mach|ALT_INV_check_destination_bits~60_combout\,
	combout => \state_mach|destination~2_combout\);

-- Location: FF_X15_Y6_N38
\state_mach|destination\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \state_mach|destination~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_mach|destination~q\);

-- Location: LABCELL_X18_Y3_N15
\state_mach|Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|Selector2~1_combout\ = ( \state_mach|destination~q\ & ( (!\state_mach|current_state.down~q\ & ((!\state_mach|current_state.loading~q\) # (!\state_mach|i_direction~q\))) ) ) # ( !\state_mach|destination~q\ & ( !\state_mach|current_state.down~q\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000101000001111000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.loading~q\,
	datac => \state_mach|ALT_INV_current_state.down~q\,
	datad => \state_mach|ALT_INV_i_direction~q\,
	dataf => \state_mach|ALT_INV_destination~q\,
	combout => \state_mach|Selector2~1_combout\);

-- Location: LABCELL_X18_Y3_N12
\state_mach|i_current_floor~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_current_floor~0_combout\ = ( \state_mach|Selector1~0_combout\ ) # ( !\state_mach|Selector1~0_combout\ & ( ((!\state_mach|Selector2~1_combout\ & !\state_mach|floor_stop~q\)) # (\state_mach|Selector2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100001111110011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \state_mach|ALT_INV_Selector2~1_combout\,
	datac => \state_mach|ALT_INV_Selector2~0_combout\,
	datad => \state_mach|ALT_INV_floor_stop~q\,
	dataf => \state_mach|ALT_INV_Selector1~0_combout\,
	combout => \state_mach|i_current_floor~0_combout\);

-- Location: FF_X17_Y7_N17
\state_mach|i_current_floor[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rtl~0_combout\,
	asdata => \state_mach|i_current_floor[0]~4_combout\,
	sload => VCC,
	ena => \state_mach|i_current_floor~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_mach|i_current_floor\(0));

-- Location: MLABCELL_X15_Y7_N27
\f_control|Decoder1~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|Decoder1~14_combout\ = ( \state_mach|i_current_floor[3]~DUPLICATE_q\ & ( (!\state_mach|i_current_floor\(0) & (\state_mach|i_current_floor[1]~DUPLICATE_q\ & \state_mach|i_current_floor[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \state_mach|ALT_INV_i_current_floor\(0),
	datac => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	datad => \state_mach|ALT_INV_i_current_floor[2]~DUPLICATE_q\,
	dataf => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	combout => \f_control|Decoder1~14_combout\);

-- Location: LABCELL_X16_Y7_N15
\f_control|i_floor_call_array_up~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_up~31_combout\ = ( \state_mach|i_direction~q\ & ( (\f_control|Decoder1~14_combout\ & ((!\state_mach|current_state.idle~q\) # ((\state_mach|current_state.up~q\ & \state_mach|current_state.down~q\)))) ) ) # ( 
-- !\state_mach|i_direction~q\ & ( \f_control|Decoder1~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110000001100010011000000110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.up~q\,
	datab => \f_control|ALT_INV_Decoder1~14_combout\,
	datac => \state_mach|ALT_INV_current_state.idle~q\,
	datad => \state_mach|ALT_INV_current_state.down~q\,
	dataf => \state_mach|ALT_INV_i_direction~q\,
	combout => \f_control|i_floor_call_array_up~31_combout\);

-- Location: IOIBUF_X2_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: MLABCELL_X15_Y4_N57
\f_control|i_floor_call_array_up~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_up~0_combout\ = ( \SW[4]~input_o\ & ( (!\SW[5]~input_o\ & !\KEY~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datac => \ALT_INV_KEY~input_o\,
	dataf => \ALT_INV_SW[4]~input_o\,
	combout => \f_control|i_floor_call_array_up~0_combout\);

-- Location: LABCELL_X19_Y7_N9
\f_control|i_floor_call_array_up~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_up~23_combout\ = ( \state_mach|current_state.idle~q\ & ( (\state_mach|destination~0_combout\ & ((!\state_mach|i_direction~q\) # ((\state_mach|current_state.down~q\ & \state_mach|current_state.up~q\)))) ) ) # ( 
-- !\state_mach|current_state.idle~q\ & ( \state_mach|destination~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111100010000000011110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.down~q\,
	datab => \state_mach|ALT_INV_current_state.up~q\,
	datac => \state_mach|ALT_INV_i_direction~q\,
	datad => \state_mach|ALT_INV_destination~0_combout\,
	dataf => \state_mach|ALT_INV_current_state.idle~q\,
	combout => \f_control|i_floor_call_array_up~23_combout\);

-- Location: LABCELL_X19_Y7_N36
\f_control|i_floor_call_array_up~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_up~7_combout\ = ( \f_control|i_floor_call_array_up\(6) & ( \rtl~0_combout\ & ( (!\f_control|i_floor_call_array_up~23_combout\) # (!\state_mach|Mux1~4_combout\) ) ) ) # ( !\f_control|i_floor_call_array_up\(6) & ( 
-- \rtl~0_combout\ & ( (\f_control|i_floor_call_array_up~0_combout\ & (\f_control|Decoder0~6_combout\ & ((!\f_control|i_floor_call_array_up~23_combout\) # (!\state_mach|Mux1~4_combout\)))) ) ) ) # ( \f_control|i_floor_call_array_up\(6) & ( !\rtl~0_combout\ ) 
-- ) # ( !\f_control|i_floor_call_array_up\(6) & ( !\rtl~0_combout\ & ( (\f_control|i_floor_call_array_up~0_combout\ & \f_control|Decoder0~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_floor_call_array_up~23_combout\,
	datab => \state_mach|ALT_INV_Mux1~4_combout\,
	datac => \f_control|ALT_INV_i_floor_call_array_up~0_combout\,
	datad => \f_control|ALT_INV_Decoder0~6_combout\,
	datae => \f_control|ALT_INV_i_floor_call_array_up\(6),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_floor_call_array_up~7_combout\);

-- Location: FF_X19_Y7_N38
\f_control|i_floor_call_array_up[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_floor_call_array_up~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_floor_call_array_up\(6));

-- Location: LABCELL_X18_Y7_N30
\f_control|i_floor_call_array_up~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_up~22_combout\ = ( \f_control|Decoder1~1_combout\ & ( (!\state_mach|current_state.idle~q\) # ((!\state_mach|i_direction~q\) # ((\state_mach|current_state.up~q\ & \state_mach|current_state.down~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111101010111111111110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.idle~q\,
	datab => \state_mach|ALT_INV_current_state.up~q\,
	datac => \state_mach|ALT_INV_current_state.down~q\,
	datad => \state_mach|ALT_INV_i_direction~q\,
	dataf => \f_control|ALT_INV_Decoder1~1_combout\,
	combout => \f_control|i_floor_call_array_up~22_combout\);

-- Location: LABCELL_X18_Y7_N0
\f_control|i_floor_call_array_up~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_up~6_combout\ = ( \f_control|i_floor_call_array_up\(5) & ( \rtl~0_combout\ & ( (!\state_mach|Mux1~4_combout\) # (!\f_control|i_floor_call_array_up~22_combout\) ) ) ) # ( !\f_control|i_floor_call_array_up\(5) & ( 
-- \rtl~0_combout\ & ( (\f_control|i_floor_call_array_up~0_combout\ & (\f_control|Decoder0~5_combout\ & ((!\state_mach|Mux1~4_combout\) # (!\f_control|i_floor_call_array_up~22_combout\)))) ) ) ) # ( \f_control|i_floor_call_array_up\(5) & ( !\rtl~0_combout\ ) 
-- ) # ( !\f_control|i_floor_call_array_up\(5) & ( !\rtl~0_combout\ & ( (\f_control|i_floor_call_array_up~0_combout\ & \f_control|Decoder0~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111111111111100000000010101001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_floor_call_array_up~0_combout\,
	datab => \state_mach|ALT_INV_Mux1~4_combout\,
	datac => \f_control|ALT_INV_i_floor_call_array_up~22_combout\,
	datad => \f_control|ALT_INV_Decoder0~5_combout\,
	datae => \f_control|ALT_INV_i_floor_call_array_up\(5),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_floor_call_array_up~6_combout\);

-- Location: FF_X18_Y7_N2
\f_control|i_floor_call_array_up[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_floor_call_array_up~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_floor_call_array_up\(5));

-- Location: LABCELL_X17_Y5_N18
\f_control|i_floor_call_array_up~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_up~21_combout\ = ( \state_mach|current_state.idle~q\ & ( (\f_control|Decoder1~6_combout\ & ((!\state_mach|i_direction~q\) # ((\state_mach|current_state.up~q\ & \state_mach|current_state.down~q\)))) ) ) # ( 
-- !\state_mach|current_state.idle~q\ & ( \f_control|Decoder1~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100100010001000110010001000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_direction~q\,
	datab => \f_control|ALT_INV_Decoder1~6_combout\,
	datac => \state_mach|ALT_INV_current_state.up~q\,
	datad => \state_mach|ALT_INV_current_state.down~q\,
	dataf => \state_mach|ALT_INV_current_state.idle~q\,
	combout => \f_control|i_floor_call_array_up~21_combout\);

-- Location: LABCELL_X18_Y5_N54
\f_control|i_floor_call_array_up~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_up~5_combout\ = ( \f_control|i_floor_call_array_up\(4) & ( \rtl~0_combout\ & ( (!\f_control|i_floor_call_array_up~21_combout\) # (!\state_mach|Mux1~4_combout\) ) ) ) # ( !\f_control|i_floor_call_array_up\(4) & ( 
-- \rtl~0_combout\ & ( (\f_control|Decoder0~4_combout\ & (\f_control|i_floor_call_array_up~0_combout\ & ((!\f_control|i_floor_call_array_up~21_combout\) # (!\state_mach|Mux1~4_combout\)))) ) ) ) # ( \f_control|i_floor_call_array_up\(4) & ( !\rtl~0_combout\ ) 
-- ) # ( !\f_control|i_floor_call_array_up\(4) & ( !\rtl~0_combout\ & ( (\f_control|Decoder0~4_combout\ & \f_control|i_floor_call_array_up~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111111111111100000000010101001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_Decoder0~4_combout\,
	datab => \f_control|ALT_INV_i_floor_call_array_up~21_combout\,
	datac => \state_mach|ALT_INV_Mux1~4_combout\,
	datad => \f_control|ALT_INV_i_floor_call_array_up~0_combout\,
	datae => \f_control|ALT_INV_i_floor_call_array_up\(4),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_floor_call_array_up~5_combout\);

-- Location: FF_X18_Y5_N56
\f_control|i_floor_call_array_up[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_floor_call_array_up~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_floor_call_array_up\(4));

-- Location: LABCELL_X19_Y5_N18
\f_control|i_floor_call_array_up~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_up~24_combout\ = ( \state_mach|current_state.down~q\ & ( (\f_control|Decoder1~7_combout\ & (((!\state_mach|current_state.idle~q\) # (!\state_mach|i_direction~q\)) # (\state_mach|current_state.up~q\))) ) ) # ( 
-- !\state_mach|current_state.down~q\ & ( (\f_control|Decoder1~7_combout\ & ((!\state_mach|current_state.idle~q\) # (!\state_mach|i_direction~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111100000000001111110000000000111111010000000011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.up~q\,
	datab => \state_mach|ALT_INV_current_state.idle~q\,
	datac => \state_mach|ALT_INV_i_direction~q\,
	datad => \f_control|ALT_INV_Decoder1~7_combout\,
	dataf => \state_mach|ALT_INV_current_state.down~q\,
	combout => \f_control|i_floor_call_array_up~24_combout\);

-- Location: LABCELL_X19_Y5_N12
\f_control|i_floor_call_array_up~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_up~8_combout\ = ( \f_control|i_floor_call_array_up\(7) & ( \rtl~0_combout\ & ( (!\state_mach|Mux1~4_combout\) # (!\f_control|i_floor_call_array_up~24_combout\) ) ) ) # ( !\f_control|i_floor_call_array_up\(7) & ( 
-- \rtl~0_combout\ & ( (\f_control|i_floor_call_array_up~0_combout\ & (\f_control|Decoder0~7_combout\ & ((!\state_mach|Mux1~4_combout\) # (!\f_control|i_floor_call_array_up~24_combout\)))) ) ) ) # ( \f_control|i_floor_call_array_up\(7) & ( !\rtl~0_combout\ ) 
-- ) # ( !\f_control|i_floor_call_array_up\(7) & ( !\rtl~0_combout\ & ( (\f_control|i_floor_call_array_up~0_combout\ & \f_control|Decoder0~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_Mux1~4_combout\,
	datab => \f_control|ALT_INV_i_floor_call_array_up~24_combout\,
	datac => \f_control|ALT_INV_i_floor_call_array_up~0_combout\,
	datad => \f_control|ALT_INV_Decoder0~7_combout\,
	datae => \f_control|ALT_INV_i_floor_call_array_up\(7),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_floor_call_array_up~8_combout\);

-- Location: FF_X19_Y5_N14
\f_control|i_floor_call_array_up[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_floor_call_array_up~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_floor_call_array_up\(7));

-- Location: LABCELL_X18_Y7_N54
\state_mach|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|Mux1~1_combout\ = ( \f_control|i_floor_call_array_up\(7) & ( \state_mach|i_current_floor[1]~DUPLICATE_q\ & ( (\f_control|i_floor_call_array_up\(6)) # (\state_mach|i_current_floor\(0)) ) ) ) # ( !\f_control|i_floor_call_array_up\(7) & ( 
-- \state_mach|i_current_floor[1]~DUPLICATE_q\ & ( (!\state_mach|i_current_floor\(0) & \f_control|i_floor_call_array_up\(6)) ) ) ) # ( \f_control|i_floor_call_array_up\(7) & ( !\state_mach|i_current_floor[1]~DUPLICATE_q\ & ( (!\state_mach|i_current_floor\(0) 
-- & ((\f_control|i_floor_call_array_up\(4)))) # (\state_mach|i_current_floor\(0) & (\f_control|i_floor_call_array_up\(5))) ) ) ) # ( !\f_control|i_floor_call_array_up\(7) & ( !\state_mach|i_current_floor[1]~DUPLICATE_q\ & ( (!\state_mach|i_current_floor\(0) 
-- & ((\f_control|i_floor_call_array_up\(4)))) # (\state_mach|i_current_floor\(0) & (\f_control|i_floor_call_array_up\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor\(0),
	datab => \f_control|ALT_INV_i_floor_call_array_up\(6),
	datac => \f_control|ALT_INV_i_floor_call_array_up\(5),
	datad => \f_control|ALT_INV_i_floor_call_array_up\(4),
	datae => \f_control|ALT_INV_i_floor_call_array_up\(7),
	dataf => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	combout => \state_mach|Mux1~1_combout\);

-- Location: LABCELL_X18_Y5_N30
\f_control|i_floor_call_array_up~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_up~28_combout\ = ( \f_control|Decoder1~11_combout\ & ( (!\state_mach|i_direction~q\) # ((!\state_mach|current_state.idle~q\) # ((\state_mach|current_state.up~q\ & \state_mach|current_state.down~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111100111111011111110011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.up~q\,
	datab => \state_mach|ALT_INV_i_direction~q\,
	datac => \state_mach|ALT_INV_current_state.idle~q\,
	datad => \state_mach|ALT_INV_current_state.down~q\,
	dataf => \f_control|ALT_INV_Decoder1~11_combout\,
	combout => \f_control|i_floor_call_array_up~28_combout\);

-- Location: LABCELL_X18_Y5_N12
\f_control|i_floor_call_array_up~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_up~12_combout\ = ( \f_control|i_floor_call_array_up\(11) & ( \rtl~0_combout\ & ( (!\f_control|i_floor_call_array_up~28_combout\) # (!\state_mach|Mux1~4_combout\) ) ) ) # ( !\f_control|i_floor_call_array_up\(11) & ( 
-- \rtl~0_combout\ & ( (\f_control|Decoder0~11_combout\ & (\f_control|i_floor_call_array_up~0_combout\ & ((!\f_control|i_floor_call_array_up~28_combout\) # (!\state_mach|Mux1~4_combout\)))) ) ) ) # ( \f_control|i_floor_call_array_up\(11) & ( !\rtl~0_combout\ 
-- ) ) # ( !\f_control|i_floor_call_array_up\(11) & ( !\rtl~0_combout\ & ( (\f_control|Decoder0~11_combout\ & \f_control|i_floor_call_array_up~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_floor_call_array_up~28_combout\,
	datab => \state_mach|ALT_INV_Mux1~4_combout\,
	datac => \f_control|ALT_INV_Decoder0~11_combout\,
	datad => \f_control|ALT_INV_i_floor_call_array_up~0_combout\,
	datae => \f_control|ALT_INV_i_floor_call_array_up\(11),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_floor_call_array_up~12_combout\);

-- Location: FF_X18_Y5_N14
\f_control|i_floor_call_array_up[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_floor_call_array_up~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_floor_call_array_up\(11));

-- Location: LABCELL_X18_Y5_N21
\f_control|i_floor_call_array_up~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_up~27_combout\ = ( \state_mach|current_state.idle~q\ & ( (\f_control|Decoder1~10_combout\ & ((!\state_mach|i_direction~q\) # ((\state_mach|current_state.up~q\ & \state_mach|current_state.down~q\)))) ) ) # ( 
-- !\state_mach|current_state.idle~q\ & ( \f_control|Decoder1~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110000001100010011000000110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.up~q\,
	datab => \f_control|ALT_INV_Decoder1~10_combout\,
	datac => \state_mach|ALT_INV_i_direction~q\,
	datad => \state_mach|ALT_INV_current_state.down~q\,
	dataf => \state_mach|ALT_INV_current_state.idle~q\,
	combout => \f_control|i_floor_call_array_up~27_combout\);

-- Location: LABCELL_X18_Y5_N24
\f_control|i_floor_call_array_up~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_up~11_combout\ = ( \f_control|i_floor_call_array_up\(10) & ( \rtl~0_combout\ & ( (!\f_control|i_floor_call_array_up~27_combout\) # (!\state_mach|Mux1~4_combout\) ) ) ) # ( !\f_control|i_floor_call_array_up\(10) & ( 
-- \rtl~0_combout\ & ( (\f_control|Decoder0~10_combout\ & (\f_control|i_floor_call_array_up~0_combout\ & ((!\f_control|i_floor_call_array_up~27_combout\) # (!\state_mach|Mux1~4_combout\)))) ) ) ) # ( \f_control|i_floor_call_array_up\(10) & ( !\rtl~0_combout\ 
-- ) ) # ( !\f_control|i_floor_call_array_up\(10) & ( !\rtl~0_combout\ & ( (\f_control|Decoder0~10_combout\ & \f_control|i_floor_call_array_up~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_floor_call_array_up~27_combout\,
	datab => \state_mach|ALT_INV_Mux1~4_combout\,
	datac => \f_control|ALT_INV_Decoder0~10_combout\,
	datad => \f_control|ALT_INV_i_floor_call_array_up~0_combout\,
	datae => \f_control|ALT_INV_i_floor_call_array_up\(10),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_floor_call_array_up~11_combout\);

-- Location: FF_X18_Y5_N26
\f_control|i_floor_call_array_up[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_floor_call_array_up~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_floor_call_array_up\(10));

-- Location: LABCELL_X19_Y5_N21
\f_control|i_floor_call_array_up~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_up~25_combout\ = ( \state_mach|current_state.down~q\ & ( (\f_control|Decoder1~8_combout\ & (((!\state_mach|current_state.idle~q\) # (!\state_mach|i_direction~q\)) # (\state_mach|current_state.up~q\))) ) ) # ( 
-- !\state_mach|current_state.down~q\ & ( (\f_control|Decoder1~8_combout\ & ((!\state_mach|current_state.idle~q\) # (!\state_mach|i_direction~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110000001111000011010000111100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.up~q\,
	datab => \state_mach|ALT_INV_current_state.idle~q\,
	datac => \f_control|ALT_INV_Decoder1~8_combout\,
	datad => \state_mach|ALT_INV_i_direction~q\,
	dataf => \state_mach|ALT_INV_current_state.down~q\,
	combout => \f_control|i_floor_call_array_up~25_combout\);

-- Location: LABCELL_X19_Y5_N54
\f_control|i_floor_call_array_up~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_up~9_combout\ = ( \f_control|i_floor_call_array_up\(8) & ( \rtl~0_combout\ & ( (!\state_mach|Mux1~4_combout\) # (!\f_control|i_floor_call_array_up~25_combout\) ) ) ) # ( !\f_control|i_floor_call_array_up\(8) & ( 
-- \rtl~0_combout\ & ( (\f_control|i_floor_call_array_up~0_combout\ & (\f_control|Decoder0~8_combout\ & ((!\state_mach|Mux1~4_combout\) # (!\f_control|i_floor_call_array_up~25_combout\)))) ) ) ) # ( \f_control|i_floor_call_array_up\(8) & ( !\rtl~0_combout\ ) 
-- ) # ( !\f_control|i_floor_call_array_up\(8) & ( !\rtl~0_combout\ & ( (\f_control|i_floor_call_array_up~0_combout\ & \f_control|Decoder0~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_Mux1~4_combout\,
	datab => \f_control|ALT_INV_i_floor_call_array_up~25_combout\,
	datac => \f_control|ALT_INV_i_floor_call_array_up~0_combout\,
	datad => \f_control|ALT_INV_Decoder0~8_combout\,
	datae => \f_control|ALT_INV_i_floor_call_array_up\(8),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_floor_call_array_up~9_combout\);

-- Location: FF_X19_Y5_N56
\f_control|i_floor_call_array_up[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_floor_call_array_up~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_floor_call_array_up\(8));

-- Location: LABCELL_X18_Y5_N33
\f_control|i_floor_call_array_up~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_up~26_combout\ = ( \state_mach|current_state.idle~q\ & ( (\f_control|Decoder1~9_combout\ & ((!\state_mach|i_direction~q\) # ((\state_mach|current_state.up~q\ & \state_mach|current_state.down~q\)))) ) ) # ( 
-- !\state_mach|current_state.idle~q\ & ( \f_control|Decoder1~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001100000011010000110000001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.up~q\,
	datab => \state_mach|ALT_INV_i_direction~q\,
	datac => \f_control|ALT_INV_Decoder1~9_combout\,
	datad => \state_mach|ALT_INV_current_state.down~q\,
	dataf => \state_mach|ALT_INV_current_state.idle~q\,
	combout => \f_control|i_floor_call_array_up~26_combout\);

-- Location: LABCELL_X18_Y5_N0
\f_control|i_floor_call_array_up~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_up~10_combout\ = ( \f_control|i_floor_call_array_up\(9) & ( \rtl~0_combout\ & ( (!\f_control|i_floor_call_array_up~26_combout\) # (!\state_mach|Mux1~4_combout\) ) ) ) # ( !\f_control|i_floor_call_array_up\(9) & ( 
-- \rtl~0_combout\ & ( (\f_control|Decoder0~9_combout\ & (\f_control|i_floor_call_array_up~0_combout\ & ((!\f_control|i_floor_call_array_up~26_combout\) # (!\state_mach|Mux1~4_combout\)))) ) ) ) # ( \f_control|i_floor_call_array_up\(9) & ( !\rtl~0_combout\ ) 
-- ) # ( !\f_control|i_floor_call_array_up\(9) & ( !\rtl~0_combout\ & ( (\f_control|Decoder0~9_combout\ & \f_control|i_floor_call_array_up~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_floor_call_array_up~26_combout\,
	datab => \state_mach|ALT_INV_Mux1~4_combout\,
	datac => \f_control|ALT_INV_Decoder0~9_combout\,
	datad => \f_control|ALT_INV_i_floor_call_array_up~0_combout\,
	datae => \f_control|ALT_INV_i_floor_call_array_up\(9),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_floor_call_array_up~10_combout\);

-- Location: FF_X18_Y5_N2
\f_control|i_floor_call_array_up[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_floor_call_array_up~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_floor_call_array_up\(9));

-- Location: LABCELL_X18_Y5_N42
\state_mach|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|Mux1~2_combout\ = ( \f_control|i_floor_call_array_up\(9) & ( \state_mach|i_current_floor[1]~DUPLICATE_q\ & ( (!\state_mach|i_current_floor\(0) & ((\f_control|i_floor_call_array_up\(10)))) # (\state_mach|i_current_floor\(0) & 
-- (\f_control|i_floor_call_array_up\(11))) ) ) ) # ( !\f_control|i_floor_call_array_up\(9) & ( \state_mach|i_current_floor[1]~DUPLICATE_q\ & ( (!\state_mach|i_current_floor\(0) & ((\f_control|i_floor_call_array_up\(10)))) # (\state_mach|i_current_floor\(0) 
-- & (\f_control|i_floor_call_array_up\(11))) ) ) ) # ( \f_control|i_floor_call_array_up\(9) & ( !\state_mach|i_current_floor[1]~DUPLICATE_q\ & ( (\f_control|i_floor_call_array_up\(8)) # (\state_mach|i_current_floor\(0)) ) ) ) # ( 
-- !\f_control|i_floor_call_array_up\(9) & ( !\state_mach|i_current_floor[1]~DUPLICATE_q\ & ( (!\state_mach|i_current_floor\(0) & \f_control|i_floor_call_array_up\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100001100111111111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_floor_call_array_up\(11),
	datab => \state_mach|ALT_INV_i_current_floor\(0),
	datac => \f_control|ALT_INV_i_floor_call_array_up\(10),
	datad => \f_control|ALT_INV_i_floor_call_array_up\(8),
	datae => \f_control|ALT_INV_i_floor_call_array_up\(9),
	dataf => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	combout => \state_mach|Mux1~2_combout\);

-- Location: LABCELL_X19_Y5_N0
\f_control|i_floor_call_array_up~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_up~20_combout\ = ( \state_mach|current_state.down~q\ & ( (\f_control|Decoder1~5_combout\ & (((!\state_mach|current_state.idle~q\) # (!\state_mach|i_direction~q\)) # (\state_mach|current_state.up~q\))) ) ) # ( 
-- !\state_mach|current_state.down~q\ & ( (\f_control|Decoder1~5_combout\ & ((!\state_mach|current_state.idle~q\) # (!\state_mach|i_direction~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111100000000001111110000000000111111010000000011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.up~q\,
	datab => \state_mach|ALT_INV_current_state.idle~q\,
	datac => \state_mach|ALT_INV_i_direction~q\,
	datad => \f_control|ALT_INV_Decoder1~5_combout\,
	dataf => \state_mach|ALT_INV_current_state.down~q\,
	combout => \f_control|i_floor_call_array_up~20_combout\);

-- Location: LABCELL_X19_Y5_N42
\f_control|i_floor_call_array_up~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_up~4_combout\ = ( \f_control|i_floor_call_array_up\(3) & ( \rtl~0_combout\ & ( (!\f_control|i_floor_call_array_up~20_combout\) # (!\state_mach|Mux1~4_combout\) ) ) ) # ( !\f_control|i_floor_call_array_up\(3) & ( 
-- \rtl~0_combout\ & ( (\f_control|i_floor_call_array_up~0_combout\ & (\f_control|Decoder0~3_combout\ & ((!\f_control|i_floor_call_array_up~20_combout\) # (!\state_mach|Mux1~4_combout\)))) ) ) ) # ( \f_control|i_floor_call_array_up\(3) & ( !\rtl~0_combout\ ) 
-- ) # ( !\f_control|i_floor_call_array_up\(3) & ( !\rtl~0_combout\ & ( (\f_control|i_floor_call_array_up~0_combout\ & \f_control|Decoder0~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_floor_call_array_up~20_combout\,
	datab => \state_mach|ALT_INV_Mux1~4_combout\,
	datac => \f_control|ALT_INV_i_floor_call_array_up~0_combout\,
	datad => \f_control|ALT_INV_Decoder0~3_combout\,
	datae => \f_control|ALT_INV_i_floor_call_array_up\(3),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_floor_call_array_up~4_combout\);

-- Location: FF_X19_Y5_N44
\f_control|i_floor_call_array_up[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_floor_call_array_up~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_floor_call_array_up\(3));

-- Location: LABCELL_X19_Y7_N30
\f_control|i_floor_call_array_up~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_up~18_combout\ = ( \state_mach|i_direction~q\ & ( (\f_control|Decoder1~3_combout\ & ((!\state_mach|current_state.idle~q\) # ((\state_mach|current_state.up~q\ & \state_mach|current_state.down~q\)))) ) ) # ( 
-- !\state_mach|i_direction~q\ & ( \f_control|Decoder1~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110000001100010011000000110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.up~q\,
	datab => \f_control|ALT_INV_Decoder1~3_combout\,
	datac => \state_mach|ALT_INV_current_state.idle~q\,
	datad => \state_mach|ALT_INV_current_state.down~q\,
	dataf => \state_mach|ALT_INV_i_direction~q\,
	combout => \f_control|i_floor_call_array_up~18_combout\);

-- Location: LABCELL_X19_Y7_N12
\f_control|i_floor_call_array_up~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_up~2_combout\ = ( \f_control|i_floor_call_array_up\(0) & ( \rtl~0_combout\ & ( (!\state_mach|Mux1~4_combout\) # (!\f_control|i_floor_call_array_up~18_combout\) ) ) ) # ( !\f_control|i_floor_call_array_up\(0) & ( 
-- \rtl~0_combout\ & ( (\f_control|Decoder0~1_combout\ & (\f_control|i_floor_call_array_up~0_combout\ & ((!\state_mach|Mux1~4_combout\) # (!\f_control|i_floor_call_array_up~18_combout\)))) ) ) ) # ( \f_control|i_floor_call_array_up\(0) & ( !\rtl~0_combout\ ) 
-- ) # ( !\f_control|i_floor_call_array_up\(0) & ( !\rtl~0_combout\ & ( (\f_control|Decoder0~1_combout\ & \f_control|i_floor_call_array_up~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_Mux1~4_combout\,
	datab => \f_control|ALT_INV_i_floor_call_array_up~18_combout\,
	datac => \f_control|ALT_INV_Decoder0~1_combout\,
	datad => \f_control|ALT_INV_i_floor_call_array_up~0_combout\,
	datae => \f_control|ALT_INV_i_floor_call_array_up\(0),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_floor_call_array_up~2_combout\);

-- Location: FF_X19_Y7_N14
\f_control|i_floor_call_array_up[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_floor_call_array_up~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_floor_call_array_up\(0));

-- Location: LABCELL_X19_Y5_N3
\f_control|i_floor_call_array_up~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_up~19_combout\ = ( \state_mach|current_state.down~q\ & ( (\f_control|Decoder1~4_combout\ & (((!\state_mach|current_state.idle~q\) # (!\state_mach|i_direction~q\)) # (\state_mach|current_state.up~q\))) ) ) # ( 
-- !\state_mach|current_state.down~q\ & ( (\f_control|Decoder1~4_combout\ & ((!\state_mach|current_state.idle~q\) # (!\state_mach|i_direction~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110000001111000011010000111100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.up~q\,
	datab => \state_mach|ALT_INV_current_state.idle~q\,
	datac => \f_control|ALT_INV_Decoder1~4_combout\,
	datad => \state_mach|ALT_INV_i_direction~q\,
	dataf => \state_mach|ALT_INV_current_state.down~q\,
	combout => \f_control|i_floor_call_array_up~19_combout\);

-- Location: LABCELL_X19_Y5_N30
\f_control|i_floor_call_array_up~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_up~3_combout\ = ( \f_control|i_floor_call_array_up\(2) & ( \rtl~0_combout\ & ( (!\f_control|i_floor_call_array_up~19_combout\) # (!\state_mach|Mux1~4_combout\) ) ) ) # ( !\f_control|i_floor_call_array_up\(2) & ( 
-- \rtl~0_combout\ & ( (\f_control|Decoder0~2_combout\ & (\f_control|i_floor_call_array_up~0_combout\ & ((!\f_control|i_floor_call_array_up~19_combout\) # (!\state_mach|Mux1~4_combout\)))) ) ) ) # ( \f_control|i_floor_call_array_up\(2) & ( !\rtl~0_combout\ ) 
-- ) # ( !\f_control|i_floor_call_array_up\(2) & ( !\rtl~0_combout\ & ( (\f_control|Decoder0~2_combout\ & \f_control|i_floor_call_array_up~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_floor_call_array_up~19_combout\,
	datab => \state_mach|ALT_INV_Mux1~4_combout\,
	datac => \f_control|ALT_INV_Decoder0~2_combout\,
	datad => \f_control|ALT_INV_i_floor_call_array_up~0_combout\,
	datae => \f_control|ALT_INV_i_floor_call_array_up\(2),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_floor_call_array_up~3_combout\);

-- Location: FF_X19_Y5_N32
\f_control|i_floor_call_array_up[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_floor_call_array_up~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_floor_call_array_up\(2));

-- Location: LABCELL_X19_Y7_N6
\f_control|i_floor_call_array_up~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_up~17_combout\ = ( \state_mach|i_direction~q\ & ( (\f_control|Decoder1~2_combout\ & ((!\state_mach|current_state.idle~q\) # ((\state_mach|current_state.down~q\ & \state_mach|current_state.up~q\)))) ) ) # ( 
-- !\state_mach|i_direction~q\ & ( \f_control|Decoder1~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000000010000111100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.down~q\,
	datab => \state_mach|ALT_INV_current_state.up~q\,
	datac => \f_control|ALT_INV_Decoder1~2_combout\,
	datad => \state_mach|ALT_INV_current_state.idle~q\,
	dataf => \state_mach|ALT_INV_i_direction~q\,
	combout => \f_control|i_floor_call_array_up~17_combout\);

-- Location: LABCELL_X19_Y7_N24
\f_control|i_floor_call_array_up~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_up~1_combout\ = ( \f_control|i_floor_call_array_up\(1) & ( \rtl~0_combout\ & ( (!\f_control|i_floor_call_array_up~17_combout\) # (!\state_mach|Mux1~4_combout\) ) ) ) # ( !\f_control|i_floor_call_array_up\(1) & ( 
-- \rtl~0_combout\ & ( (\f_control|i_floor_call_array_up~0_combout\ & (\f_control|Decoder0~0_combout\ & ((!\f_control|i_floor_call_array_up~17_combout\) # (!\state_mach|Mux1~4_combout\)))) ) ) ) # ( \f_control|i_floor_call_array_up\(1) & ( !\rtl~0_combout\ ) 
-- ) # ( !\f_control|i_floor_call_array_up\(1) & ( !\rtl~0_combout\ & ( (\f_control|i_floor_call_array_up~0_combout\ & \f_control|Decoder0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_floor_call_array_up~17_combout\,
	datab => \state_mach|ALT_INV_Mux1~4_combout\,
	datac => \f_control|ALT_INV_i_floor_call_array_up~0_combout\,
	datad => \f_control|ALT_INV_Decoder0~0_combout\,
	datae => \f_control|ALT_INV_i_floor_call_array_up\(1),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_floor_call_array_up~1_combout\);

-- Location: FF_X19_Y7_N26
\f_control|i_floor_call_array_up[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_floor_call_array_up~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_floor_call_array_up\(1));

-- Location: LABCELL_X18_Y8_N15
\state_mach|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|Mux1~0_combout\ = ( \f_control|i_floor_call_array_up\(2) & ( \f_control|i_floor_call_array_up\(1) & ( (!\state_mach|i_current_floor\(0) & (((\f_control|i_floor_call_array_up\(0))) # (\state_mach|i_current_floor[1]~DUPLICATE_q\))) # 
-- (\state_mach|i_current_floor\(0) & ((!\state_mach|i_current_floor[1]~DUPLICATE_q\) # ((\f_control|i_floor_call_array_up\(3))))) ) ) ) # ( !\f_control|i_floor_call_array_up\(2) & ( \f_control|i_floor_call_array_up\(1) & ( (!\state_mach|i_current_floor\(0) 
-- & (!\state_mach|i_current_floor[1]~DUPLICATE_q\ & ((\f_control|i_floor_call_array_up\(0))))) # (\state_mach|i_current_floor\(0) & ((!\state_mach|i_current_floor[1]~DUPLICATE_q\) # ((\f_control|i_floor_call_array_up\(3))))) ) ) ) # ( 
-- \f_control|i_floor_call_array_up\(2) & ( !\f_control|i_floor_call_array_up\(1) & ( (!\state_mach|i_current_floor\(0) & (((\f_control|i_floor_call_array_up\(0))) # (\state_mach|i_current_floor[1]~DUPLICATE_q\))) # (\state_mach|i_current_floor\(0) & 
-- (\state_mach|i_current_floor[1]~DUPLICATE_q\ & (\f_control|i_floor_call_array_up\(3)))) ) ) ) # ( !\f_control|i_floor_call_array_up\(2) & ( !\f_control|i_floor_call_array_up\(1) & ( (!\state_mach|i_current_floor\(0) & 
-- (!\state_mach|i_current_floor[1]~DUPLICATE_q\ & ((\f_control|i_floor_call_array_up\(0))))) # (\state_mach|i_current_floor\(0) & (\state_mach|i_current_floor[1]~DUPLICATE_q\ & (\f_control|i_floor_call_array_up\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001001000111010101101000101110011010110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor\(0),
	datab => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	datac => \f_control|ALT_INV_i_floor_call_array_up\(3),
	datad => \f_control|ALT_INV_i_floor_call_array_up\(0),
	datae => \f_control|ALT_INV_i_floor_call_array_up\(2),
	dataf => \f_control|ALT_INV_i_floor_call_array_up\(1),
	combout => \state_mach|Mux1~0_combout\);

-- Location: LABCELL_X17_Y7_N39
\f_control|i_floor_call_array_up~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_up~30_combout\ = ( \f_control|Decoder1~13_combout\ & ( (!\state_mach|i_direction~q\) # ((!\state_mach|current_state.idle~q\) # ((\state_mach|current_state.down~q\ & \state_mach|current_state.up~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111100111111011111110011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.down~q\,
	datab => \state_mach|ALT_INV_i_direction~q\,
	datac => \state_mach|ALT_INV_current_state.idle~q\,
	datad => \state_mach|ALT_INV_current_state.up~q\,
	dataf => \f_control|ALT_INV_Decoder1~13_combout\,
	combout => \f_control|i_floor_call_array_up~30_combout\);

-- Location: LABCELL_X17_Y7_N18
\f_control|i_floor_call_array_up~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_up~14_combout\ = ( \f_control|i_floor_call_array_up\(13) & ( \rtl~0_combout\ & ( (!\f_control|i_floor_call_array_up~30_combout\) # (!\state_mach|Mux1~4_combout\) ) ) ) # ( !\f_control|i_floor_call_array_up\(13) & ( 
-- \rtl~0_combout\ & ( (\f_control|i_floor_call_array_up~0_combout\ & (\f_control|Decoder0~13_combout\ & ((!\f_control|i_floor_call_array_up~30_combout\) # (!\state_mach|Mux1~4_combout\)))) ) ) ) # ( \f_control|i_floor_call_array_up\(13) & ( !\rtl~0_combout\ 
-- ) ) # ( !\f_control|i_floor_call_array_up\(13) & ( !\rtl~0_combout\ & ( (\f_control|i_floor_call_array_up~0_combout\ & \f_control|Decoder0~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_floor_call_array_up~30_combout\,
	datab => \state_mach|ALT_INV_Mux1~4_combout\,
	datac => \f_control|ALT_INV_i_floor_call_array_up~0_combout\,
	datad => \f_control|ALT_INV_Decoder0~13_combout\,
	datae => \f_control|ALT_INV_i_floor_call_array_up\(13),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_floor_call_array_up~14_combout\);

-- Location: FF_X17_Y7_N20
\f_control|i_floor_call_array_up[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_floor_call_array_up~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_floor_call_array_up\(13));

-- Location: LABCELL_X18_Y7_N33
\f_control|i_floor_call_array_up~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_up~29_combout\ = ( \f_control|Decoder1~12_combout\ & ( (!\state_mach|current_state.idle~q\) # ((!\state_mach|i_direction~q\) # ((\state_mach|current_state.up~q\ & \state_mach|current_state.down~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010111110111111101011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.idle~q\,
	datab => \state_mach|ALT_INV_current_state.up~q\,
	datac => \state_mach|ALT_INV_i_direction~q\,
	datad => \state_mach|ALT_INV_current_state.down~q\,
	dataf => \f_control|ALT_INV_Decoder1~12_combout\,
	combout => \f_control|i_floor_call_array_up~29_combout\);

-- Location: LABCELL_X18_Y7_N27
\f_control|i_floor_call_array_up~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_up~13_combout\ = ( \f_control|i_floor_call_array_up\(12) & ( \rtl~0_combout\ & ( (!\f_control|i_floor_call_array_up~29_combout\) # (!\state_mach|Mux1~4_combout\) ) ) ) # ( !\f_control|i_floor_call_array_up\(12) & ( 
-- \rtl~0_combout\ & ( (\f_control|Decoder0~12_combout\ & (\f_control|i_floor_call_array_up~0_combout\ & ((!\f_control|i_floor_call_array_up~29_combout\) # (!\state_mach|Mux1~4_combout\)))) ) ) ) # ( \f_control|i_floor_call_array_up\(12) & ( !\rtl~0_combout\ 
-- ) ) # ( !\f_control|i_floor_call_array_up\(12) & ( !\rtl~0_combout\ & ( (\f_control|Decoder0~12_combout\ & \f_control|i_floor_call_array_up~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_floor_call_array_up~29_combout\,
	datab => \state_mach|ALT_INV_Mux1~4_combout\,
	datac => \f_control|ALT_INV_Decoder0~12_combout\,
	datad => \f_control|ALT_INV_i_floor_call_array_up~0_combout\,
	datae => \f_control|ALT_INV_i_floor_call_array_up\(12),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_floor_call_array_up~13_combout\);

-- Location: FF_X18_Y7_N29
\f_control|i_floor_call_array_up[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_floor_call_array_up~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_floor_call_array_up\(12));

-- Location: LABCELL_X16_Y7_N33
\f_control|i_floor_call_array_up~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_up~32_combout\ = ( \state_mach|current_state.idle~q\ & ( (\state_mach|LessThan31~0_combout\ & ((!\state_mach|i_direction~q\) # ((\state_mach|current_state.up~q\ & \state_mach|current_state.down~q\)))) ) ) # ( 
-- !\state_mach|current_state.idle~q\ & ( \state_mach|LessThan31~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010000010100010101000001010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_LessThan31~0_combout\,
	datab => \state_mach|ALT_INV_current_state.up~q\,
	datac => \state_mach|ALT_INV_i_direction~q\,
	datad => \state_mach|ALT_INV_current_state.down~q\,
	dataf => \state_mach|ALT_INV_current_state.idle~q\,
	combout => \f_control|i_floor_call_array_up~32_combout\);

-- Location: LABCELL_X16_Y7_N18
\f_control|i_floor_call_array_up~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_up~16_combout\ = ( \f_control|i_floor_call_array_up\(15) & ( \rtl~0_combout\ & ( (!\state_mach|Mux1~4_combout\) # (!\f_control|i_floor_call_array_up~32_combout\) ) ) ) # ( !\f_control|i_floor_call_array_up\(15) & ( 
-- \rtl~0_combout\ & ( (\f_control|i_floor_call_array_up~0_combout\ & (\f_control|Decoder0~15_combout\ & ((!\state_mach|Mux1~4_combout\) # (!\f_control|i_floor_call_array_up~32_combout\)))) ) ) ) # ( \f_control|i_floor_call_array_up\(15) & ( !\rtl~0_combout\ 
-- ) ) # ( !\f_control|i_floor_call_array_up\(15) & ( !\rtl~0_combout\ & ( (\f_control|i_floor_call_array_up~0_combout\ & \f_control|Decoder0~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_Mux1~4_combout\,
	datab => \f_control|ALT_INV_i_floor_call_array_up~32_combout\,
	datac => \f_control|ALT_INV_i_floor_call_array_up~0_combout\,
	datad => \f_control|ALT_INV_Decoder0~15_combout\,
	datae => \f_control|ALT_INV_i_floor_call_array_up\(15),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_floor_call_array_up~16_combout\);

-- Location: FF_X16_Y7_N20
\f_control|i_floor_call_array_up[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_floor_call_array_up~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_floor_call_array_up\(15));

-- Location: LABCELL_X17_Y7_N24
\state_mach|Mux1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|Mux1~3_combout\ = ( \f_control|i_floor_call_array_up\(15) & ( \state_mach|i_current_floor\(0) & ( (\state_mach|i_current_floor[1]~DUPLICATE_q\) # (\f_control|i_floor_call_array_up\(13)) ) ) ) # ( !\f_control|i_floor_call_array_up\(15) & ( 
-- \state_mach|i_current_floor\(0) & ( (\f_control|i_floor_call_array_up\(13) & !\state_mach|i_current_floor[1]~DUPLICATE_q\) ) ) ) # ( \f_control|i_floor_call_array_up\(15) & ( !\state_mach|i_current_floor\(0) & ( 
-- (!\state_mach|i_current_floor[1]~DUPLICATE_q\ & (\f_control|i_floor_call_array_up\(12))) # (\state_mach|i_current_floor[1]~DUPLICATE_q\ & ((\f_control|i_floor_call_array_up\(14)))) ) ) ) # ( !\f_control|i_floor_call_array_up\(15) & ( 
-- !\state_mach|i_current_floor\(0) & ( (!\state_mach|i_current_floor[1]~DUPLICATE_q\ & (\f_control|i_floor_call_array_up\(12))) # (\state_mach|i_current_floor[1]~DUPLICATE_q\ & ((\f_control|i_floor_call_array_up\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_floor_call_array_up\(13),
	datab => \f_control|ALT_INV_i_floor_call_array_up\(12),
	datac => \f_control|ALT_INV_i_floor_call_array_up\(14),
	datad => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	datae => \f_control|ALT_INV_i_floor_call_array_up\(15),
	dataf => \state_mach|ALT_INV_i_current_floor\(0),
	combout => \state_mach|Mux1~3_combout\);

-- Location: LABCELL_X18_Y7_N6
\state_mach|Mux1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|Mux1~4_combout\ = ( \state_mach|Mux1~0_combout\ & ( \state_mach|Mux1~3_combout\ & ( (!\state_mach|i_current_floor[2]~DUPLICATE_q\ & (((!\state_mach|i_current_floor\(3)) # (\state_mach|Mux1~2_combout\)))) # 
-- (\state_mach|i_current_floor[2]~DUPLICATE_q\ & (((\state_mach|i_current_floor\(3))) # (\state_mach|Mux1~1_combout\))) ) ) ) # ( !\state_mach|Mux1~0_combout\ & ( \state_mach|Mux1~3_combout\ & ( (!\state_mach|i_current_floor[2]~DUPLICATE_q\ & 
-- (((\state_mach|Mux1~2_combout\ & \state_mach|i_current_floor\(3))))) # (\state_mach|i_current_floor[2]~DUPLICATE_q\ & (((\state_mach|i_current_floor\(3))) # (\state_mach|Mux1~1_combout\))) ) ) ) # ( \state_mach|Mux1~0_combout\ & ( 
-- !\state_mach|Mux1~3_combout\ & ( (!\state_mach|i_current_floor[2]~DUPLICATE_q\ & (((!\state_mach|i_current_floor\(3)) # (\state_mach|Mux1~2_combout\)))) # (\state_mach|i_current_floor[2]~DUPLICATE_q\ & (\state_mach|Mux1~1_combout\ & 
-- ((!\state_mach|i_current_floor\(3))))) ) ) ) # ( !\state_mach|Mux1~0_combout\ & ( !\state_mach|Mux1~3_combout\ & ( (!\state_mach|i_current_floor[2]~DUPLICATE_q\ & (((\state_mach|Mux1~2_combout\ & \state_mach|i_current_floor\(3))))) # 
-- (\state_mach|i_current_floor[2]~DUPLICATE_q\ & (\state_mach|Mux1~1_combout\ & ((!\state_mach|i_current_floor\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000111101010011000000000101001111111111010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_Mux1~1_combout\,
	datab => \state_mach|ALT_INV_Mux1~2_combout\,
	datac => \state_mach|ALT_INV_i_current_floor[2]~DUPLICATE_q\,
	datad => \state_mach|ALT_INV_i_current_floor\(3),
	datae => \state_mach|ALT_INV_Mux1~0_combout\,
	dataf => \state_mach|ALT_INV_Mux1~3_combout\,
	combout => \state_mach|Mux1~4_combout\);

-- Location: LABCELL_X16_Y7_N6
\f_control|i_floor_call_array_up~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_up~15_combout\ = ( \f_control|i_floor_call_array_up\(14) & ( \rtl~0_combout\ & ( (!\f_control|i_floor_call_array_up~31_combout\) # (!\state_mach|Mux1~4_combout\) ) ) ) # ( !\f_control|i_floor_call_array_up\(14) & ( 
-- \rtl~0_combout\ & ( (\f_control|i_floor_call_array_up~0_combout\ & (\f_control|Decoder0~14_combout\ & ((!\f_control|i_floor_call_array_up~31_combout\) # (!\state_mach|Mux1~4_combout\)))) ) ) ) # ( \f_control|i_floor_call_array_up\(14) & ( !\rtl~0_combout\ 
-- ) ) # ( !\f_control|i_floor_call_array_up\(14) & ( !\rtl~0_combout\ & ( (\f_control|i_floor_call_array_up~0_combout\ & \f_control|Decoder0~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111111111111100000000001100101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_floor_call_array_up~31_combout\,
	datab => \f_control|ALT_INV_i_floor_call_array_up~0_combout\,
	datac => \state_mach|ALT_INV_Mux1~4_combout\,
	datad => \f_control|ALT_INV_Decoder0~14_combout\,
	datae => \f_control|ALT_INV_i_floor_call_array_up\(14),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_floor_call_array_up~15_combout\);

-- Location: FF_X16_Y7_N8
\f_control|i_floor_call_array_up[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_floor_call_array_up~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_floor_call_array_up\(14));

-- Location: LABCELL_X19_Y5_N9
\f_control|i_floor_call_array_down~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_down~20_combout\ = ( \state_mach|current_state.down~q\ & ( (\f_control|Decoder1~5_combout\ & (((!\state_mach|current_state.idle~q\) # (\state_mach|i_direction~q\)) # (\state_mach|current_state.up~q\))) ) ) # ( 
-- !\state_mach|current_state.down~q\ & ( (\f_control|Decoder1~5_combout\ & ((!\state_mach|current_state.idle~q\) # (\state_mach|i_direction~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001111000000001100111100000000110111110000000011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.up~q\,
	datab => \state_mach|ALT_INV_current_state.idle~q\,
	datac => \state_mach|ALT_INV_i_direction~q\,
	datad => \f_control|ALT_INV_Decoder1~5_combout\,
	dataf => \state_mach|ALT_INV_current_state.down~q\,
	combout => \f_control|i_floor_call_array_down~20_combout\);

-- Location: MLABCELL_X15_Y4_N12
\f_control|i_floor_call_array_down~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_down~0_combout\ = ( !\SW[5]~input_o\ & ( (!\KEY~input_o\ & !\SW[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \f_control|i_floor_call_array_down~0_combout\);

-- Location: LABCELL_X19_Y5_N36
\f_control|i_floor_call_array_down~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_down~4_combout\ = ( \f_control|i_floor_call_array_down\(3) & ( \rtl~0_combout\ & ( (!\f_control|i_floor_call_array_down~20_combout\) # (!\state_mach|Mux2~4_combout\) ) ) ) # ( !\f_control|i_floor_call_array_down\(3) & ( 
-- \rtl~0_combout\ & ( (\f_control|Decoder0~3_combout\ & (\f_control|i_floor_call_array_down~0_combout\ & ((!\f_control|i_floor_call_array_down~20_combout\) # (!\state_mach|Mux2~4_combout\)))) ) ) ) # ( \f_control|i_floor_call_array_down\(3) & ( 
-- !\rtl~0_combout\ ) ) # ( !\f_control|i_floor_call_array_down\(3) & ( !\rtl~0_combout\ & ( (\f_control|Decoder0~3_combout\ & \f_control|i_floor_call_array_down~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_floor_call_array_down~20_combout\,
	datab => \state_mach|ALT_INV_Mux2~4_combout\,
	datac => \f_control|ALT_INV_Decoder0~3_combout\,
	datad => \f_control|ALT_INV_i_floor_call_array_down~0_combout\,
	datae => \f_control|ALT_INV_i_floor_call_array_down\(3),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_floor_call_array_down~4_combout\);

-- Location: FF_X19_Y5_N38
\f_control|i_floor_call_array_down[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_floor_call_array_down~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_floor_call_array_down\(3));

-- Location: LABCELL_X19_Y7_N33
\f_control|i_floor_call_array_down~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_down~18_combout\ = ( \state_mach|current_state.idle~q\ & ( (\f_control|Decoder1~3_combout\ & (((\state_mach|current_state.up~q\ & \state_mach|current_state.down~q\)) # (\state_mach|i_direction~q\))) ) ) # ( 
-- !\state_mach|current_state.idle~q\ & ( \f_control|Decoder1~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000011000100110000001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.up~q\,
	datab => \f_control|ALT_INV_Decoder1~3_combout\,
	datac => \state_mach|ALT_INV_i_direction~q\,
	datad => \state_mach|ALT_INV_current_state.down~q\,
	dataf => \state_mach|ALT_INV_current_state.idle~q\,
	combout => \f_control|i_floor_call_array_down~18_combout\);

-- Location: LABCELL_X19_Y7_N54
\f_control|i_floor_call_array_down~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_down~2_combout\ = ( \f_control|i_floor_call_array_down\(0) & ( \rtl~0_combout\ & ( (!\state_mach|Mux2~4_combout\) # (!\f_control|i_floor_call_array_down~18_combout\) ) ) ) # ( !\f_control|i_floor_call_array_down\(0) & ( 
-- \rtl~0_combout\ & ( (\f_control|Decoder0~1_combout\ & (\f_control|i_floor_call_array_down~0_combout\ & ((!\state_mach|Mux2~4_combout\) # (!\f_control|i_floor_call_array_down~18_combout\)))) ) ) ) # ( \f_control|i_floor_call_array_down\(0) & ( 
-- !\rtl~0_combout\ ) ) # ( !\f_control|i_floor_call_array_down\(0) & ( !\rtl~0_combout\ & ( (\f_control|Decoder0~1_combout\ & \f_control|i_floor_call_array_down~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_Mux2~4_combout\,
	datab => \f_control|ALT_INV_i_floor_call_array_down~18_combout\,
	datac => \f_control|ALT_INV_Decoder0~1_combout\,
	datad => \f_control|ALT_INV_i_floor_call_array_down~0_combout\,
	datae => \f_control|ALT_INV_i_floor_call_array_down\(0),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_floor_call_array_down~2_combout\);

-- Location: FF_X19_Y7_N56
\f_control|i_floor_call_array_down[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_floor_call_array_down~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_floor_call_array_down\(0));

-- Location: LABCELL_X19_Y5_N24
\f_control|i_floor_call_array_down~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_down~19_combout\ = ( \state_mach|current_state.down~q\ & ( (\f_control|Decoder1~4_combout\ & (((!\state_mach|current_state.idle~q\) # (\state_mach|i_direction~q\)) # (\state_mach|current_state.up~q\))) ) ) # ( 
-- !\state_mach|current_state.down~q\ & ( (\f_control|Decoder1~4_combout\ & ((!\state_mach|current_state.idle~q\) # (\state_mach|i_direction~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000011001100110000001100110011000100110011001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.up~q\,
	datab => \f_control|ALT_INV_Decoder1~4_combout\,
	datac => \state_mach|ALT_INV_i_direction~q\,
	datad => \state_mach|ALT_INV_current_state.idle~q\,
	dataf => \state_mach|ALT_INV_current_state.down~q\,
	combout => \f_control|i_floor_call_array_down~19_combout\);

-- Location: LABCELL_X19_Y5_N48
\f_control|i_floor_call_array_down~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_down~3_combout\ = ( \f_control|i_floor_call_array_down\(2) & ( \rtl~0_combout\ & ( (!\state_mach|Mux2~4_combout\) # (!\f_control|i_floor_call_array_down~19_combout\) ) ) ) # ( !\f_control|i_floor_call_array_down\(2) & ( 
-- \rtl~0_combout\ & ( (\f_control|Decoder0~2_combout\ & (\f_control|i_floor_call_array_down~0_combout\ & ((!\state_mach|Mux2~4_combout\) # (!\f_control|i_floor_call_array_down~19_combout\)))) ) ) ) # ( \f_control|i_floor_call_array_down\(2) & ( 
-- !\rtl~0_combout\ ) ) # ( !\f_control|i_floor_call_array_down\(2) & ( !\rtl~0_combout\ & ( (\f_control|Decoder0~2_combout\ & \f_control|i_floor_call_array_down~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_Mux2~4_combout\,
	datab => \f_control|ALT_INV_i_floor_call_array_down~19_combout\,
	datac => \f_control|ALT_INV_Decoder0~2_combout\,
	datad => \f_control|ALT_INV_i_floor_call_array_down~0_combout\,
	datae => \f_control|ALT_INV_i_floor_call_array_down\(2),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_floor_call_array_down~3_combout\);

-- Location: FF_X19_Y5_N50
\f_control|i_floor_call_array_down[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_floor_call_array_down~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_floor_call_array_down\(2));

-- Location: LABCELL_X19_Y7_N51
\f_control|i_floor_call_array_down~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_down~17_combout\ = ( \state_mach|current_state.up~q\ & ( \state_mach|i_direction~q\ & ( \f_control|Decoder1~2_combout\ ) ) ) # ( !\state_mach|current_state.up~q\ & ( \state_mach|i_direction~q\ & ( 
-- \f_control|Decoder1~2_combout\ ) ) ) # ( \state_mach|current_state.up~q\ & ( !\state_mach|i_direction~q\ & ( (\f_control|Decoder1~2_combout\ & ((!\state_mach|current_state.idle~q\) # (\state_mach|current_state.down~q\))) ) ) ) # ( 
-- !\state_mach|current_state.up~q\ & ( !\state_mach|i_direction~q\ & ( (!\state_mach|current_state.idle~q\ & \f_control|Decoder1~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.idle~q\,
	datab => \f_control|ALT_INV_Decoder1~2_combout\,
	datad => \state_mach|ALT_INV_current_state.down~q\,
	datae => \state_mach|ALT_INV_current_state.up~q\,
	dataf => \state_mach|ALT_INV_i_direction~q\,
	combout => \f_control|i_floor_call_array_down~17_combout\);

-- Location: LABCELL_X19_Y7_N0
\f_control|i_floor_call_array_down~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_down~1_combout\ = ( \f_control|i_floor_call_array_down\(1) & ( \rtl~0_combout\ & ( (!\f_control|i_floor_call_array_down~17_combout\) # (!\state_mach|Mux2~4_combout\) ) ) ) # ( !\f_control|i_floor_call_array_down\(1) & ( 
-- \rtl~0_combout\ & ( (\f_control|Decoder0~0_combout\ & (\f_control|i_floor_call_array_down~0_combout\ & ((!\f_control|i_floor_call_array_down~17_combout\) # (!\state_mach|Mux2~4_combout\)))) ) ) ) # ( \f_control|i_floor_call_array_down\(1) & ( 
-- !\rtl~0_combout\ ) ) # ( !\f_control|i_floor_call_array_down\(1) & ( !\rtl~0_combout\ & ( (\f_control|Decoder0~0_combout\ & \f_control|i_floor_call_array_down~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111111111111100000000001100101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_floor_call_array_down~17_combout\,
	datab => \f_control|ALT_INV_Decoder0~0_combout\,
	datac => \state_mach|ALT_INV_Mux2~4_combout\,
	datad => \f_control|ALT_INV_i_floor_call_array_down~0_combout\,
	datae => \f_control|ALT_INV_i_floor_call_array_down\(1),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_floor_call_array_down~1_combout\);

-- Location: FF_X19_Y7_N2
\f_control|i_floor_call_array_down[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_floor_call_array_down~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_floor_call_array_down\(1));

-- Location: LABCELL_X17_Y5_N6
\state_mach|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|Mux2~0_combout\ = ( \f_control|i_floor_call_array_down\(2) & ( \f_control|i_floor_call_array_down\(1) & ( (!\state_mach|i_current_floor[1]~DUPLICATE_q\ & (((\f_control|i_floor_call_array_down\(0))) # (\state_mach|i_current_floor\(0)))) # 
-- (\state_mach|i_current_floor[1]~DUPLICATE_q\ & ((!\state_mach|i_current_floor\(0)) # ((\f_control|i_floor_call_array_down\(3))))) ) ) ) # ( !\f_control|i_floor_call_array_down\(2) & ( \f_control|i_floor_call_array_down\(1) & ( 
-- (!\state_mach|i_current_floor[1]~DUPLICATE_q\ & (((\f_control|i_floor_call_array_down\(0))) # (\state_mach|i_current_floor\(0)))) # (\state_mach|i_current_floor[1]~DUPLICATE_q\ & (\state_mach|i_current_floor\(0) & 
-- (\f_control|i_floor_call_array_down\(3)))) ) ) ) # ( \f_control|i_floor_call_array_down\(2) & ( !\f_control|i_floor_call_array_down\(1) & ( (!\state_mach|i_current_floor[1]~DUPLICATE_q\ & (!\state_mach|i_current_floor\(0) & 
-- ((\f_control|i_floor_call_array_down\(0))))) # (\state_mach|i_current_floor[1]~DUPLICATE_q\ & ((!\state_mach|i_current_floor\(0)) # ((\f_control|i_floor_call_array_down\(3))))) ) ) ) # ( !\f_control|i_floor_call_array_down\(2) & ( 
-- !\f_control|i_floor_call_array_down\(1) & ( (!\state_mach|i_current_floor[1]~DUPLICATE_q\ & (!\state_mach|i_current_floor\(0) & ((\f_control|i_floor_call_array_down\(0))))) # (\state_mach|i_current_floor[1]~DUPLICATE_q\ & (\state_mach|i_current_floor\(0) 
-- & (\f_control|i_floor_call_array_down\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001010001011100110100100011101010110110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	datab => \state_mach|ALT_INV_i_current_floor\(0),
	datac => \f_control|ALT_INV_i_floor_call_array_down\(3),
	datad => \f_control|ALT_INV_i_floor_call_array_down\(0),
	datae => \f_control|ALT_INV_i_floor_call_array_down\(2),
	dataf => \f_control|ALT_INV_i_floor_call_array_down\(1),
	combout => \state_mach|Mux2~0_combout\);

-- Location: LABCELL_X17_Y5_N51
\f_control|i_floor_call_array_down~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_down~21_combout\ = ( \state_mach|i_direction~q\ & ( \f_control|Decoder1~6_combout\ ) ) # ( !\state_mach|i_direction~q\ & ( (\f_control|Decoder1~6_combout\ & ((!\state_mach|current_state.idle~q\) # 
-- ((\state_mach|current_state.up~q\ & \state_mach|current_state.down~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001101000011000000110100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.up~q\,
	datab => \state_mach|ALT_INV_current_state.idle~q\,
	datac => \f_control|ALT_INV_Decoder1~6_combout\,
	datad => \state_mach|ALT_INV_current_state.down~q\,
	dataf => \state_mach|ALT_INV_i_direction~q\,
	combout => \f_control|i_floor_call_array_down~21_combout\);

-- Location: LABCELL_X17_Y5_N36
\f_control|i_floor_call_array_down~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_down~5_combout\ = ( \f_control|i_floor_call_array_down\(4) & ( \rtl~0_combout\ & ( (!\f_control|i_floor_call_array_down~21_combout\) # (!\state_mach|Mux2~4_combout\) ) ) ) # ( !\f_control|i_floor_call_array_down\(4) & ( 
-- \rtl~0_combout\ & ( (\f_control|Decoder0~4_combout\ & (\f_control|i_floor_call_array_down~0_combout\ & ((!\f_control|i_floor_call_array_down~21_combout\) # (!\state_mach|Mux2~4_combout\)))) ) ) ) # ( \f_control|i_floor_call_array_down\(4) & ( 
-- !\rtl~0_combout\ ) ) # ( !\f_control|i_floor_call_array_down\(4) & ( !\rtl~0_combout\ & ( (\f_control|Decoder0~4_combout\ & \f_control|i_floor_call_array_down~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_floor_call_array_down~21_combout\,
	datab => \state_mach|ALT_INV_Mux2~4_combout\,
	datac => \f_control|ALT_INV_Decoder0~4_combout\,
	datad => \f_control|ALT_INV_i_floor_call_array_down~0_combout\,
	datae => \f_control|ALT_INV_i_floor_call_array_down\(4),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_floor_call_array_down~5_combout\);

-- Location: FF_X17_Y5_N38
\f_control|i_floor_call_array_down[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_floor_call_array_down~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_floor_call_array_down\(4));

-- Location: LABCELL_X18_Y5_N9
\f_control|i_floor_call_array_down~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_down~24_combout\ = ( \state_mach|current_state.idle~q\ & ( (\f_control|Decoder1~7_combout\ & (((\state_mach|current_state.up~q\ & \state_mach|current_state.down~q\)) # (\state_mach|i_direction~q\))) ) ) # ( 
-- !\state_mach|current_state.idle~q\ & ( \f_control|Decoder1~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000011000001110000001100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.up~q\,
	datab => \state_mach|ALT_INV_i_direction~q\,
	datac => \f_control|ALT_INV_Decoder1~7_combout\,
	datad => \state_mach|ALT_INV_current_state.down~q\,
	dataf => \state_mach|ALT_INV_current_state.idle~q\,
	combout => \f_control|i_floor_call_array_down~24_combout\);

-- Location: LABCELL_X18_Y5_N48
\f_control|i_floor_call_array_down~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_down~8_combout\ = ( \f_control|i_floor_call_array_down\(7) & ( \rtl~0_combout\ & ( (!\f_control|i_floor_call_array_down~24_combout\) # (!\state_mach|Mux2~4_combout\) ) ) ) # ( !\f_control|i_floor_call_array_down\(7) & ( 
-- \rtl~0_combout\ & ( (\f_control|i_floor_call_array_down~0_combout\ & (\f_control|Decoder0~7_combout\ & ((!\f_control|i_floor_call_array_down~24_combout\) # (!\state_mach|Mux2~4_combout\)))) ) ) ) # ( \f_control|i_floor_call_array_down\(7) & ( 
-- !\rtl~0_combout\ ) ) # ( !\f_control|i_floor_call_array_down\(7) & ( !\rtl~0_combout\ & ( (\f_control|i_floor_call_array_down~0_combout\ & \f_control|Decoder0~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_floor_call_array_down~24_combout\,
	datab => \state_mach|ALT_INV_Mux2~4_combout\,
	datac => \f_control|ALT_INV_i_floor_call_array_down~0_combout\,
	datad => \f_control|ALT_INV_Decoder0~7_combout\,
	datae => \f_control|ALT_INV_i_floor_call_array_down\(7),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_floor_call_array_down~8_combout\);

-- Location: FF_X18_Y5_N50
\f_control|i_floor_call_array_down[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_floor_call_array_down~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_floor_call_array_down\(7));

-- Location: LABCELL_X18_Y3_N21
\f_control|i_floor_call_array_down~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_down~23_combout\ = ( \state_mach|destination~0_combout\ & ( \state_mach|current_state.up~q\ & ( ((!\state_mach|current_state.idle~q\) # (\state_mach|current_state.down~q\)) # (\state_mach|i_direction~q\) ) ) ) # ( 
-- \state_mach|destination~0_combout\ & ( !\state_mach|current_state.up~q\ & ( (!\state_mach|current_state.idle~q\) # (\state_mach|i_direction~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011111010100000000000000001111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_direction~q\,
	datac => \state_mach|ALT_INV_current_state.idle~q\,
	datad => \state_mach|ALT_INV_current_state.down~q\,
	datae => \state_mach|ALT_INV_destination~0_combout\,
	dataf => \state_mach|ALT_INV_current_state.up~q\,
	combout => \f_control|i_floor_call_array_down~23_combout\);

-- Location: LABCELL_X18_Y3_N42
\f_control|i_floor_call_array_down~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_down~7_combout\ = ( \f_control|i_floor_call_array_down\(6) & ( \rtl~0_combout\ & ( (!\f_control|i_floor_call_array_down~23_combout\) # (!\state_mach|Mux2~4_combout\) ) ) ) # ( !\f_control|i_floor_call_array_down\(6) & ( 
-- \rtl~0_combout\ & ( (\f_control|Decoder0~6_combout\ & (\f_control|i_floor_call_array_down~0_combout\ & ((!\f_control|i_floor_call_array_down~23_combout\) # (!\state_mach|Mux2~4_combout\)))) ) ) ) # ( \f_control|i_floor_call_array_down\(6) & ( 
-- !\rtl~0_combout\ ) ) # ( !\f_control|i_floor_call_array_down\(6) & ( !\rtl~0_combout\ & ( (\f_control|Decoder0~6_combout\ & \f_control|i_floor_call_array_down~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_floor_call_array_down~23_combout\,
	datab => \state_mach|ALT_INV_Mux2~4_combout\,
	datac => \f_control|ALT_INV_Decoder0~6_combout\,
	datad => \f_control|ALT_INV_i_floor_call_array_down~0_combout\,
	datae => \f_control|ALT_INV_i_floor_call_array_down\(6),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_floor_call_array_down~7_combout\);

-- Location: FF_X18_Y3_N44
\f_control|i_floor_call_array_down[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_floor_call_array_down~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_floor_call_array_down\(6));

-- Location: LABCELL_X18_Y5_N6
\f_control|i_floor_call_array_down~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_down~22_combout\ = ( \state_mach|current_state.idle~q\ & ( (\f_control|Decoder1~1_combout\ & (((\state_mach|current_state.up~q\ & \state_mach|current_state.down~q\)) # (\state_mach|i_direction~q\))) ) ) # ( 
-- !\state_mach|current_state.idle~q\ & ( \f_control|Decoder1~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000011000001110000001100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.up~q\,
	datab => \state_mach|ALT_INV_i_direction~q\,
	datac => \f_control|ALT_INV_Decoder1~1_combout\,
	datad => \state_mach|ALT_INV_current_state.down~q\,
	dataf => \state_mach|ALT_INV_current_state.idle~q\,
	combout => \f_control|i_floor_call_array_down~22_combout\);

-- Location: LABCELL_X18_Y5_N36
\f_control|i_floor_call_array_down~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_down~6_combout\ = ( \f_control|i_floor_call_array_down\(5) & ( \rtl~0_combout\ & ( (!\f_control|i_floor_call_array_down~22_combout\) # (!\state_mach|Mux2~4_combout\) ) ) ) # ( !\f_control|i_floor_call_array_down\(5) & ( 
-- \rtl~0_combout\ & ( (\f_control|i_floor_call_array_down~0_combout\ & (\f_control|Decoder0~5_combout\ & ((!\f_control|i_floor_call_array_down~22_combout\) # (!\state_mach|Mux2~4_combout\)))) ) ) ) # ( \f_control|i_floor_call_array_down\(5) & ( 
-- !\rtl~0_combout\ ) ) # ( !\f_control|i_floor_call_array_down\(5) & ( !\rtl~0_combout\ & ( (\f_control|i_floor_call_array_down~0_combout\ & \f_control|Decoder0~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_floor_call_array_down~22_combout\,
	datab => \state_mach|ALT_INV_Mux2~4_combout\,
	datac => \f_control|ALT_INV_i_floor_call_array_down~0_combout\,
	datad => \f_control|ALT_INV_Decoder0~5_combout\,
	datae => \f_control|ALT_INV_i_floor_call_array_down\(5),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_floor_call_array_down~6_combout\);

-- Location: FF_X18_Y5_N38
\f_control|i_floor_call_array_down[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_floor_call_array_down~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_floor_call_array_down\(5));

-- Location: LABCELL_X17_Y5_N24
\state_mach|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|Mux2~1_combout\ = ( \f_control|i_floor_call_array_down\(6) & ( \f_control|i_floor_call_array_down\(5) & ( (!\state_mach|i_current_floor[1]~DUPLICATE_q\ & (((\f_control|i_floor_call_array_down\(4))) # (\state_mach|i_current_floor\(0)))) # 
-- (\state_mach|i_current_floor[1]~DUPLICATE_q\ & ((!\state_mach|i_current_floor\(0)) # ((\f_control|i_floor_call_array_down\(7))))) ) ) ) # ( !\f_control|i_floor_call_array_down\(6) & ( \f_control|i_floor_call_array_down\(5) & ( 
-- (!\state_mach|i_current_floor[1]~DUPLICATE_q\ & (((\f_control|i_floor_call_array_down\(4))) # (\state_mach|i_current_floor\(0)))) # (\state_mach|i_current_floor[1]~DUPLICATE_q\ & (\state_mach|i_current_floor\(0) & 
-- ((\f_control|i_floor_call_array_down\(7))))) ) ) ) # ( \f_control|i_floor_call_array_down\(6) & ( !\f_control|i_floor_call_array_down\(5) & ( (!\state_mach|i_current_floor[1]~DUPLICATE_q\ & (!\state_mach|i_current_floor\(0) & 
-- (\f_control|i_floor_call_array_down\(4)))) # (\state_mach|i_current_floor[1]~DUPLICATE_q\ & ((!\state_mach|i_current_floor\(0)) # ((\f_control|i_floor_call_array_down\(7))))) ) ) ) # ( !\f_control|i_floor_call_array_down\(6) & ( 
-- !\f_control|i_floor_call_array_down\(5) & ( (!\state_mach|i_current_floor[1]~DUPLICATE_q\ & (!\state_mach|i_current_floor\(0) & (\f_control|i_floor_call_array_down\(4)))) # (\state_mach|i_current_floor[1]~DUPLICATE_q\ & (\state_mach|i_current_floor\(0) & 
-- ((\f_control|i_floor_call_array_down\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001010011000101110100101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	datab => \state_mach|ALT_INV_i_current_floor\(0),
	datac => \f_control|ALT_INV_i_floor_call_array_down\(4),
	datad => \f_control|ALT_INV_i_floor_call_array_down\(7),
	datae => \f_control|ALT_INV_i_floor_call_array_down\(6),
	dataf => \f_control|ALT_INV_i_floor_call_array_down\(5),
	combout => \state_mach|Mux2~1_combout\);

-- Location: LABCELL_X16_Y4_N39
\f_control|i_floor_call_array_down~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_down~28_combout\ = ( \state_mach|current_state.up~q\ & ( \state_mach|current_state.idle~q\ & ( (\f_control|Decoder1~11_combout\ & ((\state_mach|i_direction~q\) # (\state_mach|current_state.down~q\))) ) ) ) # ( 
-- !\state_mach|current_state.up~q\ & ( \state_mach|current_state.idle~q\ & ( (\f_control|Decoder1~11_combout\ & \state_mach|i_direction~q\) ) ) ) # ( \state_mach|current_state.up~q\ & ( !\state_mach|current_state.idle~q\ & ( \f_control|Decoder1~11_combout\ 
-- ) ) ) # ( !\state_mach|current_state.up~q\ & ( !\state_mach|current_state.idle~q\ & ( \f_control|Decoder1~11_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000010101010001000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_Decoder1~11_combout\,
	datab => \state_mach|ALT_INV_current_state.down~q\,
	datad => \state_mach|ALT_INV_i_direction~q\,
	datae => \state_mach|ALT_INV_current_state.up~q\,
	dataf => \state_mach|ALT_INV_current_state.idle~q\,
	combout => \f_control|i_floor_call_array_down~28_combout\);

-- Location: LABCELL_X16_Y4_N48
\f_control|i_floor_call_array_down~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_down~12_combout\ = ( \f_control|i_floor_call_array_down\(11) & ( \rtl~0_combout\ & ( (!\state_mach|Mux2~4_combout\) # (!\f_control|i_floor_call_array_down~28_combout\) ) ) ) # ( !\f_control|i_floor_call_array_down\(11) & ( 
-- \rtl~0_combout\ & ( (\f_control|Decoder0~11_combout\ & (\f_control|i_floor_call_array_down~0_combout\ & ((!\state_mach|Mux2~4_combout\) # (!\f_control|i_floor_call_array_down~28_combout\)))) ) ) ) # ( \f_control|i_floor_call_array_down\(11) & ( 
-- !\rtl~0_combout\ ) ) # ( !\f_control|i_floor_call_array_down\(11) & ( !\rtl~0_combout\ & ( (\f_control|Decoder0~11_combout\ & \f_control|i_floor_call_array_down~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_Mux2~4_combout\,
	datab => \f_control|ALT_INV_i_floor_call_array_down~28_combout\,
	datac => \f_control|ALT_INV_Decoder0~11_combout\,
	datad => \f_control|ALT_INV_i_floor_call_array_down~0_combout\,
	datae => \f_control|ALT_INV_i_floor_call_array_down\(11),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_floor_call_array_down~12_combout\);

-- Location: FF_X16_Y4_N50
\f_control|i_floor_call_array_down[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_floor_call_array_down~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_floor_call_array_down\(11));

-- Location: LABCELL_X17_Y5_N48
\f_control|i_floor_call_array_down~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_down~25_combout\ = ( \state_mach|i_direction~q\ & ( \f_control|Decoder1~8_combout\ ) ) # ( !\state_mach|i_direction~q\ & ( (\f_control|Decoder1~8_combout\ & ((!\state_mach|current_state.idle~q\) # 
-- ((\state_mach|current_state.up~q\ & \state_mach|current_state.down~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001101000011000000110100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.up~q\,
	datab => \state_mach|ALT_INV_current_state.idle~q\,
	datac => \f_control|ALT_INV_Decoder1~8_combout\,
	datad => \state_mach|ALT_INV_current_state.down~q\,
	dataf => \state_mach|ALT_INV_i_direction~q\,
	combout => \f_control|i_floor_call_array_down~25_combout\);

-- Location: LABCELL_X17_Y5_N12
\f_control|i_floor_call_array_down~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_down~9_combout\ = ( \f_control|i_floor_call_array_down\(8) & ( \rtl~0_combout\ & ( (!\f_control|i_floor_call_array_down~25_combout\) # (!\state_mach|Mux2~4_combout\) ) ) ) # ( !\f_control|i_floor_call_array_down\(8) & ( 
-- \rtl~0_combout\ & ( (\f_control|i_floor_call_array_down~0_combout\ & (\f_control|Decoder0~8_combout\ & ((!\f_control|i_floor_call_array_down~25_combout\) # (!\state_mach|Mux2~4_combout\)))) ) ) ) # ( \f_control|i_floor_call_array_down\(8) & ( 
-- !\rtl~0_combout\ ) ) # ( !\f_control|i_floor_call_array_down\(8) & ( !\rtl~0_combout\ & ( (\f_control|i_floor_call_array_down~0_combout\ & \f_control|Decoder0~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_floor_call_array_down~25_combout\,
	datab => \state_mach|ALT_INV_Mux2~4_combout\,
	datac => \f_control|ALT_INV_i_floor_call_array_down~0_combout\,
	datad => \f_control|ALT_INV_Decoder0~8_combout\,
	datae => \f_control|ALT_INV_i_floor_call_array_down\(8),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_floor_call_array_down~9_combout\);

-- Location: FF_X17_Y5_N14
\f_control|i_floor_call_array_down[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_floor_call_array_down~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_floor_call_array_down\(8));

-- Location: LABCELL_X16_Y5_N6
\f_control|i_floor_call_array_down~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_down~27_combout\ = ( \state_mach|current_state.down~q\ & ( \state_mach|current_state.idle~q\ & ( (\f_control|Decoder1~10_combout\ & ((\state_mach|i_direction~q\) # (\state_mach|current_state.up~q\))) ) ) ) # ( 
-- !\state_mach|current_state.down~q\ & ( \state_mach|current_state.idle~q\ & ( (\f_control|Decoder1~10_combout\ & \state_mach|i_direction~q\) ) ) ) # ( \state_mach|current_state.down~q\ & ( !\state_mach|current_state.idle~q\ & ( 
-- \f_control|Decoder1~10_combout\ ) ) ) # ( !\state_mach|current_state.down~q\ & ( !\state_mach|current_state.idle~q\ & ( \f_control|Decoder1~10_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000011000000110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.up~q\,
	datab => \f_control|ALT_INV_Decoder1~10_combout\,
	datac => \state_mach|ALT_INV_i_direction~q\,
	datae => \state_mach|ALT_INV_current_state.down~q\,
	dataf => \state_mach|ALT_INV_current_state.idle~q\,
	combout => \f_control|i_floor_call_array_down~27_combout\);

-- Location: LABCELL_X16_Y5_N48
\f_control|i_floor_call_array_down~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_down~11_combout\ = ( \f_control|i_floor_call_array_down\(10) & ( \rtl~0_combout\ & ( (!\state_mach|Mux2~4_combout\) # (!\f_control|i_floor_call_array_down~27_combout\) ) ) ) # ( !\f_control|i_floor_call_array_down\(10) & ( 
-- \rtl~0_combout\ & ( (\f_control|i_floor_call_array_down~0_combout\ & (\f_control|Decoder0~10_combout\ & ((!\state_mach|Mux2~4_combout\) # (!\f_control|i_floor_call_array_down~27_combout\)))) ) ) ) # ( \f_control|i_floor_call_array_down\(10) & ( 
-- !\rtl~0_combout\ ) ) # ( !\f_control|i_floor_call_array_down\(10) & ( !\rtl~0_combout\ & ( (\f_control|i_floor_call_array_down~0_combout\ & \f_control|Decoder0~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_Mux2~4_combout\,
	datab => \f_control|ALT_INV_i_floor_call_array_down~27_combout\,
	datac => \f_control|ALT_INV_i_floor_call_array_down~0_combout\,
	datad => \f_control|ALT_INV_Decoder0~10_combout\,
	datae => \f_control|ALT_INV_i_floor_call_array_down\(10),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_floor_call_array_down~11_combout\);

-- Location: FF_X16_Y5_N50
\f_control|i_floor_call_array_down[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_floor_call_array_down~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_floor_call_array_down\(10));

-- Location: LABCELL_X16_Y5_N15
\f_control|i_floor_call_array_down~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_down~26_combout\ = ( \state_mach|i_direction~q\ & ( \state_mach|current_state.idle~q\ & ( \f_control|Decoder1~9_combout\ ) ) ) # ( !\state_mach|i_direction~q\ & ( \state_mach|current_state.idle~q\ & ( 
-- (\state_mach|current_state.up~q\ & (\state_mach|current_state.down~q\ & \f_control|Decoder1~9_combout\)) ) ) ) # ( \state_mach|i_direction~q\ & ( !\state_mach|current_state.idle~q\ & ( \f_control|Decoder1~9_combout\ ) ) ) # ( !\state_mach|i_direction~q\ & 
-- ( !\state_mach|current_state.idle~q\ & ( \f_control|Decoder1~9_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000001000000010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.up~q\,
	datab => \state_mach|ALT_INV_current_state.down~q\,
	datac => \f_control|ALT_INV_Decoder1~9_combout\,
	datae => \state_mach|ALT_INV_i_direction~q\,
	dataf => \state_mach|ALT_INV_current_state.idle~q\,
	combout => \f_control|i_floor_call_array_down~26_combout\);

-- Location: LABCELL_X16_Y5_N18
\f_control|i_floor_call_array_down~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_down~10_combout\ = ( \f_control|i_floor_call_array_down\(9) & ( \rtl~0_combout\ & ( (!\f_control|i_floor_call_array_down~26_combout\) # (!\state_mach|Mux2~4_combout\) ) ) ) # ( !\f_control|i_floor_call_array_down\(9) & ( 
-- \rtl~0_combout\ & ( (\f_control|Decoder0~9_combout\ & (\f_control|i_floor_call_array_down~0_combout\ & ((!\f_control|i_floor_call_array_down~26_combout\) # (!\state_mach|Mux2~4_combout\)))) ) ) ) # ( \f_control|i_floor_call_array_down\(9) & ( 
-- !\rtl~0_combout\ ) ) # ( !\f_control|i_floor_call_array_down\(9) & ( !\rtl~0_combout\ & ( (\f_control|Decoder0~9_combout\ & \f_control|i_floor_call_array_down~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_floor_call_array_down~26_combout\,
	datab => \state_mach|ALT_INV_Mux2~4_combout\,
	datac => \f_control|ALT_INV_Decoder0~9_combout\,
	datad => \f_control|ALT_INV_i_floor_call_array_down~0_combout\,
	datae => \f_control|ALT_INV_i_floor_call_array_down\(9),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_floor_call_array_down~10_combout\);

-- Location: FF_X16_Y5_N20
\f_control|i_floor_call_array_down[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_floor_call_array_down~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_floor_call_array_down\(9));

-- Location: LABCELL_X17_Y5_N42
\state_mach|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|Mux2~2_combout\ = ( \f_control|i_floor_call_array_down\(10) & ( \f_control|i_floor_call_array_down\(9) & ( (!\state_mach|i_current_floor[1]~DUPLICATE_q\ & (((\f_control|i_floor_call_array_down\(8))) # (\state_mach|i_current_floor\(0)))) # 
-- (\state_mach|i_current_floor[1]~DUPLICATE_q\ & ((!\state_mach|i_current_floor\(0)) # ((\f_control|i_floor_call_array_down\(11))))) ) ) ) # ( !\f_control|i_floor_call_array_down\(10) & ( \f_control|i_floor_call_array_down\(9) & ( 
-- (!\state_mach|i_current_floor[1]~DUPLICATE_q\ & (((\f_control|i_floor_call_array_down\(8))) # (\state_mach|i_current_floor\(0)))) # (\state_mach|i_current_floor[1]~DUPLICATE_q\ & (\state_mach|i_current_floor\(0) & 
-- (\f_control|i_floor_call_array_down\(11)))) ) ) ) # ( \f_control|i_floor_call_array_down\(10) & ( !\f_control|i_floor_call_array_down\(9) & ( (!\state_mach|i_current_floor[1]~DUPLICATE_q\ & (!\state_mach|i_current_floor\(0) & 
-- ((\f_control|i_floor_call_array_down\(8))))) # (\state_mach|i_current_floor[1]~DUPLICATE_q\ & ((!\state_mach|i_current_floor\(0)) # ((\f_control|i_floor_call_array_down\(11))))) ) ) ) # ( !\f_control|i_floor_call_array_down\(10) & ( 
-- !\f_control|i_floor_call_array_down\(9) & ( (!\state_mach|i_current_floor[1]~DUPLICATE_q\ & (!\state_mach|i_current_floor\(0) & ((\f_control|i_floor_call_array_down\(8))))) # (\state_mach|i_current_floor[1]~DUPLICATE_q\ & (\state_mach|i_current_floor\(0) 
-- & (\f_control|i_floor_call_array_down\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001010001011100110100100011101010110110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	datab => \state_mach|ALT_INV_i_current_floor\(0),
	datac => \f_control|ALT_INV_i_floor_call_array_down\(11),
	datad => \f_control|ALT_INV_i_floor_call_array_down\(8),
	datae => \f_control|ALT_INV_i_floor_call_array_down\(10),
	dataf => \f_control|ALT_INV_i_floor_call_array_down\(9),
	combout => \state_mach|Mux2~2_combout\);

-- Location: LABCELL_X18_Y7_N48
\f_control|i_floor_call_array_down~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_down~29_combout\ = ( \f_control|Decoder1~12_combout\ & ( (!\state_mach|current_state.idle~q\) # (((\state_mach|current_state.up~q\ & \state_mach|current_state.down~q\)) # (\state_mach|i_direction~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101011111111111010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.idle~q\,
	datab => \state_mach|ALT_INV_current_state.up~q\,
	datac => \state_mach|ALT_INV_current_state.down~q\,
	datad => \state_mach|ALT_INV_i_direction~q\,
	dataf => \f_control|ALT_INV_Decoder1~12_combout\,
	combout => \f_control|i_floor_call_array_down~29_combout\);

-- Location: LABCELL_X18_Y7_N45
\f_control|i_floor_call_array_down~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_down~13_combout\ = ( \f_control|i_floor_call_array_down\(12) & ( \rtl~0_combout\ & ( (!\state_mach|Mux2~4_combout\) # (!\f_control|i_floor_call_array_down~29_combout\) ) ) ) # ( !\f_control|i_floor_call_array_down\(12) & ( 
-- \rtl~0_combout\ & ( (\f_control|Decoder0~12_combout\ & (\f_control|i_floor_call_array_down~0_combout\ & ((!\state_mach|Mux2~4_combout\) # (!\f_control|i_floor_call_array_down~29_combout\)))) ) ) ) # ( \f_control|i_floor_call_array_down\(12) & ( 
-- !\rtl~0_combout\ ) ) # ( !\f_control|i_floor_call_array_down\(12) & ( !\rtl~0_combout\ & ( (\f_control|Decoder0~12_combout\ & \f_control|i_floor_call_array_down~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_Mux2~4_combout\,
	datab => \f_control|ALT_INV_i_floor_call_array_down~29_combout\,
	datac => \f_control|ALT_INV_Decoder0~12_combout\,
	datad => \f_control|ALT_INV_i_floor_call_array_down~0_combout\,
	datae => \f_control|ALT_INV_i_floor_call_array_down\(12),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_floor_call_array_down~13_combout\);

-- Location: FF_X18_Y7_N47
\f_control|i_floor_call_array_down[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_floor_call_array_down~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_floor_call_array_down\(12));

-- Location: LABCELL_X16_Y7_N57
\f_control|i_floor_call_array_down~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_down~30_combout\ = ( \f_control|Decoder1~13_combout\ & ( (!\state_mach|current_state.idle~q\) # (((\state_mach|current_state.up~q\ & \state_mach|current_state.down~q\)) # (\state_mach|i_direction~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001111110111111100111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.up~q\,
	datab => \state_mach|ALT_INV_current_state.idle~q\,
	datac => \state_mach|ALT_INV_i_direction~q\,
	datad => \state_mach|ALT_INV_current_state.down~q\,
	dataf => \f_control|ALT_INV_Decoder1~13_combout\,
	combout => \f_control|i_floor_call_array_down~30_combout\);

-- Location: LABCELL_X16_Y7_N36
\f_control|i_floor_call_array_down~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_down~14_combout\ = ( \f_control|i_floor_call_array_down\(13) & ( \rtl~0_combout\ & ( (!\f_control|i_floor_call_array_down~30_combout\) # (!\state_mach|Mux2~4_combout\) ) ) ) # ( !\f_control|i_floor_call_array_down\(13) & ( 
-- \rtl~0_combout\ & ( (\f_control|Decoder0~13_combout\ & (\f_control|i_floor_call_array_down~0_combout\ & ((!\f_control|i_floor_call_array_down~30_combout\) # (!\state_mach|Mux2~4_combout\)))) ) ) ) # ( \f_control|i_floor_call_array_down\(13) & ( 
-- !\rtl~0_combout\ ) ) # ( !\f_control|i_floor_call_array_down\(13) & ( !\rtl~0_combout\ & ( (\f_control|Decoder0~13_combout\ & \f_control|i_floor_call_array_down~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_floor_call_array_down~30_combout\,
	datab => \state_mach|ALT_INV_Mux2~4_combout\,
	datac => \f_control|ALT_INV_Decoder0~13_combout\,
	datad => \f_control|ALT_INV_i_floor_call_array_down~0_combout\,
	datae => \f_control|ALT_INV_i_floor_call_array_down\(13),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_floor_call_array_down~14_combout\);

-- Location: FF_X16_Y7_N38
\f_control|i_floor_call_array_down[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_floor_call_array_down~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_floor_call_array_down\(13));

-- Location: LABCELL_X16_Y7_N54
\f_control|i_floor_call_array_down~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_down~32_combout\ = ( \state_mach|i_direction~q\ & ( \state_mach|LessThan31~0_combout\ ) ) # ( !\state_mach|i_direction~q\ & ( (\state_mach|LessThan31~0_combout\ & ((!\state_mach|current_state.idle~q\) # 
-- ((\state_mach|current_state.up~q\ & \state_mach|current_state.down~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001101000011000000110100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.up~q\,
	datab => \state_mach|ALT_INV_current_state.idle~q\,
	datac => \state_mach|ALT_INV_LessThan31~0_combout\,
	datad => \state_mach|ALT_INV_current_state.down~q\,
	dataf => \state_mach|ALT_INV_i_direction~q\,
	combout => \f_control|i_floor_call_array_down~32_combout\);

-- Location: LABCELL_X16_Y7_N0
\f_control|i_floor_call_array_down~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_down~16_combout\ = ( \f_control|i_floor_call_array_down\(15) & ( \rtl~0_combout\ & ( (!\f_control|i_floor_call_array_down~32_combout\) # (!\state_mach|Mux2~4_combout\) ) ) ) # ( !\f_control|i_floor_call_array_down\(15) & ( 
-- \rtl~0_combout\ & ( (\f_control|i_floor_call_array_down~0_combout\ & (\f_control|Decoder0~15_combout\ & ((!\f_control|i_floor_call_array_down~32_combout\) # (!\state_mach|Mux2~4_combout\)))) ) ) ) # ( \f_control|i_floor_call_array_down\(15) & ( 
-- !\rtl~0_combout\ ) ) # ( !\f_control|i_floor_call_array_down\(15) & ( !\rtl~0_combout\ & ( (\f_control|i_floor_call_array_down~0_combout\ & \f_control|Decoder0~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_floor_call_array_down~32_combout\,
	datab => \state_mach|ALT_INV_Mux2~4_combout\,
	datac => \f_control|ALT_INV_i_floor_call_array_down~0_combout\,
	datad => \f_control|ALT_INV_Decoder0~15_combout\,
	datae => \f_control|ALT_INV_i_floor_call_array_down\(15),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_floor_call_array_down~16_combout\);

-- Location: FF_X16_Y7_N2
\f_control|i_floor_call_array_down[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_floor_call_array_down~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_floor_call_array_down\(15));

-- Location: LABCELL_X17_Y7_N57
\state_mach|Mux2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|Mux2~3_combout\ = ( \f_control|i_floor_call_array_down\(15) & ( \f_control|i_floor_call_array_down\(14) & ( ((!\state_mach|i_current_floor\(0) & (\f_control|i_floor_call_array_down\(12))) # (\state_mach|i_current_floor\(0) & 
-- ((\f_control|i_floor_call_array_down\(13))))) # (\state_mach|i_current_floor\(1)) ) ) ) # ( !\f_control|i_floor_call_array_down\(15) & ( \f_control|i_floor_call_array_down\(14) & ( (!\state_mach|i_current_floor\(1) & ((!\state_mach|i_current_floor\(0) & 
-- (\f_control|i_floor_call_array_down\(12))) # (\state_mach|i_current_floor\(0) & ((\f_control|i_floor_call_array_down\(13)))))) # (\state_mach|i_current_floor\(1) & (!\state_mach|i_current_floor\(0))) ) ) ) # ( \f_control|i_floor_call_array_down\(15) & ( 
-- !\f_control|i_floor_call_array_down\(14) & ( (!\state_mach|i_current_floor\(1) & ((!\state_mach|i_current_floor\(0) & (\f_control|i_floor_call_array_down\(12))) # (\state_mach|i_current_floor\(0) & ((\f_control|i_floor_call_array_down\(13)))))) # 
-- (\state_mach|i_current_floor\(1) & (\state_mach|i_current_floor\(0))) ) ) ) # ( !\f_control|i_floor_call_array_down\(15) & ( !\f_control|i_floor_call_array_down\(14) & ( (!\state_mach|i_current_floor\(1) & ((!\state_mach|i_current_floor\(0) & 
-- (\f_control|i_floor_call_array_down\(12))) # (\state_mach|i_current_floor\(0) & ((\f_control|i_floor_call_array_down\(13)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000110010011101101001100011011100101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor\(1),
	datab => \state_mach|ALT_INV_i_current_floor\(0),
	datac => \f_control|ALT_INV_i_floor_call_array_down\(12),
	datad => \f_control|ALT_INV_i_floor_call_array_down\(13),
	datae => \f_control|ALT_INV_i_floor_call_array_down\(15),
	dataf => \f_control|ALT_INV_i_floor_call_array_down\(14),
	combout => \state_mach|Mux2~3_combout\);

-- Location: LABCELL_X17_Y5_N30
\state_mach|Mux2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|Mux2~4_combout\ = ( \state_mach|i_current_floor[2]~DUPLICATE_q\ & ( \state_mach|Mux2~3_combout\ & ( (\state_mach|i_current_floor\(3)) # (\state_mach|Mux2~1_combout\) ) ) ) # ( !\state_mach|i_current_floor[2]~DUPLICATE_q\ & ( 
-- \state_mach|Mux2~3_combout\ & ( (!\state_mach|i_current_floor\(3) & (\state_mach|Mux2~0_combout\)) # (\state_mach|i_current_floor\(3) & ((\state_mach|Mux2~2_combout\))) ) ) ) # ( \state_mach|i_current_floor[2]~DUPLICATE_q\ & ( !\state_mach|Mux2~3_combout\ 
-- & ( (\state_mach|Mux2~1_combout\ & !\state_mach|i_current_floor\(3)) ) ) ) # ( !\state_mach|i_current_floor[2]~DUPLICATE_q\ & ( !\state_mach|Mux2~3_combout\ & ( (!\state_mach|i_current_floor\(3) & (\state_mach|Mux2~0_combout\)) # 
-- (\state_mach|i_current_floor\(3) & ((\state_mach|Mux2~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111001100110000000001010101000011110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_Mux2~0_combout\,
	datab => \state_mach|ALT_INV_Mux2~1_combout\,
	datac => \state_mach|ALT_INV_Mux2~2_combout\,
	datad => \state_mach|ALT_INV_i_current_floor\(3),
	datae => \state_mach|ALT_INV_i_current_floor[2]~DUPLICATE_q\,
	dataf => \state_mach|ALT_INV_Mux2~3_combout\,
	combout => \state_mach|Mux2~4_combout\);

-- Location: LABCELL_X16_Y7_N12
\f_control|i_floor_call_array_down~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_down~31_combout\ = ( \state_mach|i_direction~q\ & ( \f_control|Decoder1~14_combout\ ) ) # ( !\state_mach|i_direction~q\ & ( (\f_control|Decoder1~14_combout\ & ((!\state_mach|current_state.idle~q\) # 
-- ((\state_mach|current_state.up~q\ & \state_mach|current_state.down~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000001001100110000000100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.up~q\,
	datab => \f_control|ALT_INV_Decoder1~14_combout\,
	datac => \state_mach|ALT_INV_current_state.down~q\,
	datad => \state_mach|ALT_INV_current_state.idle~q\,
	dataf => \state_mach|ALT_INV_i_direction~q\,
	combout => \f_control|i_floor_call_array_down~31_combout\);

-- Location: LABCELL_X16_Y7_N24
\f_control|i_floor_call_array_down~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|i_floor_call_array_down~15_combout\ = ( \f_control|i_floor_call_array_down\(14) & ( \rtl~0_combout\ & ( (!\state_mach|Mux2~4_combout\) # (!\f_control|i_floor_call_array_down~31_combout\) ) ) ) # ( !\f_control|i_floor_call_array_down\(14) & ( 
-- \rtl~0_combout\ & ( (\f_control|i_floor_call_array_down~0_combout\ & (\f_control|Decoder0~14_combout\ & ((!\state_mach|Mux2~4_combout\) # (!\f_control|i_floor_call_array_down~31_combout\)))) ) ) ) # ( \f_control|i_floor_call_array_down\(14) & ( 
-- !\rtl~0_combout\ ) ) # ( !\f_control|i_floor_call_array_down\(14) & ( !\rtl~0_combout\ & ( (\f_control|i_floor_call_array_down~0_combout\ & \f_control|Decoder0~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111111111111100000000000011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_Mux2~4_combout\,
	datab => \f_control|ALT_INV_i_floor_call_array_down~31_combout\,
	datac => \f_control|ALT_INV_i_floor_call_array_down~0_combout\,
	datad => \f_control|ALT_INV_Decoder0~14_combout\,
	datae => \f_control|ALT_INV_i_floor_call_array_down\(14),
	dataf => \ALT_INV_rtl~0_combout\,
	combout => \f_control|i_floor_call_array_down~15_combout\);

-- Location: FF_X16_Y7_N26
\f_control|i_floor_call_array_down[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \f_control|i_floor_call_array_down~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_control|i_floor_call_array_down\(14));

-- Location: LABCELL_X17_Y7_N36
\state_mach|check_destination_bits~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~20_combout\ = ( !\f_control|i_floor_call_array_down\(14) & ( !\f_control|i_floor_call_array_up\(14) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \f_control|ALT_INV_i_floor_call_array_up\(14),
	dataf => \f_control|ALT_INV_i_floor_call_array_down\(14),
	combout => \state_mach|check_destination_bits~20_combout\);

-- Location: LABCELL_X17_Y7_N15
\state_mach|check_destination_bits~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~19_combout\ = ( !\f_control|i_floor_call_array_down\(13) & ( !\f_control|i_floor_call_array_up\(13) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \f_control|ALT_INV_i_floor_call_array_up\(13),
	dataf => \f_control|ALT_INV_i_floor_call_array_down\(13),
	combout => \state_mach|check_destination_bits~19_combout\);

-- Location: LABCELL_X18_Y4_N6
\state_mach|check_destination_bits~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~7_combout\ = ( !\f_control|i_floor_call_array_up\(8) & ( !\f_control|i_floor_call_array_down\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \f_control|ALT_INV_i_floor_call_array_down\(8),
	dataf => \f_control|ALT_INV_i_floor_call_array_up\(8),
	combout => \state_mach|check_destination_bits~7_combout\);

-- Location: LABCELL_X17_Y4_N12
\state_mach|check_destination_bits~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~9_combout\ = ( \f_control|i_floor_call_array_up\(10) & ( \f_control|i_floor_call_array_down\(10) ) ) # ( !\f_control|i_floor_call_array_up\(10) & ( \f_control|i_floor_call_array_down\(10) ) ) # ( 
-- \f_control|i_floor_call_array_up\(10) & ( !\f_control|i_floor_call_array_down\(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \f_control|ALT_INV_i_floor_call_array_up\(10),
	dataf => \f_control|ALT_INV_i_floor_call_array_down\(10),
	combout => \state_mach|check_destination_bits~9_combout\);

-- Location: LABCELL_X17_Y4_N27
\state_mach|check_destination_bits~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~10_combout\ = ( \f_control|i_floor_call_array_up\(11) ) # ( !\f_control|i_floor_call_array_up\(11) & ( \f_control|i_floor_call_array_down\(11) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_floor_call_array_down\(11),
	dataf => \f_control|ALT_INV_i_floor_call_array_up\(11),
	combout => \state_mach|check_destination_bits~10_combout\);

-- Location: LABCELL_X17_Y5_N21
\state_mach|check_destination_bits~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~8_combout\ = ( !\f_control|i_floor_call_array_down\(9) & ( !\f_control|i_floor_call_array_up\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \f_control|ALT_INV_i_floor_call_array_up\(9),
	dataf => \f_control|ALT_INV_i_floor_call_array_down\(9),
	combout => \state_mach|check_destination_bits~8_combout\);

-- Location: LABCELL_X17_Y4_N54
\state_mach|check_destination_bits~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~11_combout\ = (!\f_control|i_floor_call_array_up\(12) & !\f_control|i_floor_call_array_down\(12))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \f_control|ALT_INV_i_floor_call_array_up\(12),
	datad => \f_control|ALT_INV_i_floor_call_array_down\(12),
	combout => \state_mach|check_destination_bits~11_combout\);

-- Location: LABCELL_X18_Y4_N0
\state_mach|check_destination_bits~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~0_combout\ = ( !\f_control|i_floor_call_array_up\(0) & ( !\f_control|i_floor_call_array_down\(1) & ( (!\f_control|i_floor_call_array_down\(0) & (!\f_control|i_floor_call_array_up\(2) & 
-- (!\f_control|i_floor_call_array_up\(1) & !\f_control|i_floor_call_array_down\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_floor_call_array_down\(0),
	datab => \f_control|ALT_INV_i_floor_call_array_up\(2),
	datac => \f_control|ALT_INV_i_floor_call_array_up\(1),
	datad => \f_control|ALT_INV_i_floor_call_array_down\(2),
	datae => \f_control|ALT_INV_i_floor_call_array_up\(0),
	dataf => \f_control|ALT_INV_i_floor_call_array_down\(1),
	combout => \state_mach|check_destination_bits~0_combout\);

-- Location: LABCELL_X19_Y5_N6
\state_mach|check_destination_bits~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~1_combout\ = ( !\f_control|i_floor_call_array_up\(3) & ( !\f_control|i_floor_call_array_down\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \f_control|ALT_INV_i_floor_call_array_down\(3),
	dataf => \f_control|ALT_INV_i_floor_call_array_up\(3),
	combout => \state_mach|check_destination_bits~1_combout\);

-- Location: LABCELL_X19_Y5_N27
\state_mach|check_destination_bits~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~5_combout\ = ( !\f_control|i_floor_call_array_up\(7) & ( !\f_control|i_floor_call_array_down\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \f_control|ALT_INV_i_floor_call_array_down\(7),
	dataf => \f_control|ALT_INV_i_floor_call_array_up\(7),
	combout => \state_mach|check_destination_bits~5_combout\);

-- Location: LABCELL_X18_Y5_N18
\state_mach|check_destination_bits~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~2_combout\ = ( !\f_control|i_floor_call_array_down\(4) & ( !\f_control|i_floor_call_array_up\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \f_control|ALT_INV_i_floor_call_array_up\(4),
	dataf => \f_control|ALT_INV_i_floor_call_array_down\(4),
	combout => \state_mach|check_destination_bits~2_combout\);

-- Location: LABCELL_X18_Y7_N51
\state_mach|check_destination_bits~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~3_combout\ = ( !\f_control|i_floor_call_array_down\(5) & ( !\f_control|i_floor_call_array_up\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \f_control|ALT_INV_i_floor_call_array_up\(5),
	dataf => \f_control|ALT_INV_i_floor_call_array_down\(5),
	combout => \state_mach|check_destination_bits~3_combout\);

-- Location: LABCELL_X18_Y3_N39
\state_mach|check_destination_bits~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~4_combout\ = ( !\f_control|i_floor_call_array_up\(6) & ( !\f_control|i_floor_call_array_down\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \f_control|ALT_INV_i_floor_call_array_down\(6),
	dataf => \f_control|ALT_INV_i_floor_call_array_up\(6),
	combout => \state_mach|check_destination_bits~4_combout\);

-- Location: LABCELL_X18_Y4_N30
\state_mach|check_destination_bits~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~6_combout\ = ( \state_mach|check_destination_bits~3_combout\ & ( \state_mach|check_destination_bits~4_combout\ & ( (\state_mach|check_destination_bits~0_combout\ & (\state_mach|check_destination_bits~1_combout\ & 
-- (\state_mach|check_destination_bits~5_combout\ & \state_mach|check_destination_bits~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_check_destination_bits~0_combout\,
	datab => \state_mach|ALT_INV_check_destination_bits~1_combout\,
	datac => \state_mach|ALT_INV_check_destination_bits~5_combout\,
	datad => \state_mach|ALT_INV_check_destination_bits~2_combout\,
	datae => \state_mach|ALT_INV_check_destination_bits~3_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~4_combout\,
	combout => \state_mach|check_destination_bits~6_combout\);

-- Location: LABCELL_X17_Y4_N48
\state_mach|check_destination_bits~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~12_combout\ = ( \state_mach|check_destination_bits~11_combout\ & ( \state_mach|check_destination_bits~6_combout\ & ( (\state_mach|check_destination_bits~7_combout\ & (!\state_mach|check_destination_bits~9_combout\ & 
-- (!\state_mach|check_destination_bits~10_combout\ & \state_mach|check_destination_bits~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_check_destination_bits~7_combout\,
	datab => \state_mach|ALT_INV_check_destination_bits~9_combout\,
	datac => \state_mach|ALT_INV_check_destination_bits~10_combout\,
	datad => \state_mach|ALT_INV_check_destination_bits~8_combout\,
	datae => \state_mach|ALT_INV_check_destination_bits~11_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~6_combout\,
	combout => \state_mach|check_destination_bits~12_combout\);

-- Location: LABCELL_X17_Y4_N21
\state_mach|check_destination_bits~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~21_combout\ = ( \state_mach|check_destination_bits~12_combout\ & ( (\state_mach|check_destination_bits~20_combout\ & \state_mach|check_destination_bits~19_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_check_destination_bits~20_combout\,
	datad => \state_mach|ALT_INV_check_destination_bits~19_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~12_combout\,
	combout => \state_mach|check_destination_bits~21_combout\);

-- Location: LABCELL_X17_Y4_N18
\state_mach|check_destination_bits~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~22_combout\ = ( \state_mach|check_destination_bits~12_combout\ & ( (!\state_mach|check_destination_bits~20_combout\) # (((!\state_mach|check_destination_bits~19_combout\) # (\f_control|i_floor_call_array_down\(15))) # 
-- (\f_control|i_floor_call_array_up\(15))) ) ) # ( !\state_mach|check_destination_bits~12_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111101111111111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_check_destination_bits~20_combout\,
	datab => \f_control|ALT_INV_i_floor_call_array_up\(15),
	datac => \f_control|ALT_INV_i_floor_call_array_down\(15),
	datad => \state_mach|ALT_INV_check_destination_bits~19_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~12_combout\,
	combout => \state_mach|check_destination_bits~22_combout\);

-- Location: LABCELL_X19_Y6_N36
\state_mach|i_direction~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~5_combout\ = ( \state_mach|check_destination_bits~7_combout\ & ( \state_mach|check_destination_bits~6_combout\ & ( (\state_mach|i_current_floor[3]~DUPLICATE_q\ & ((!\state_mach|check_destination_bits~8_combout\ & 
-- ((!\state_mach|Add1~0_combout\))) # (\state_mach|check_destination_bits~8_combout\ & (!\state_mach|LessThan14~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_LessThan14~0_combout\,
	datab => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	datac => \state_mach|ALT_INV_Add1~0_combout\,
	datad => \state_mach|ALT_INV_check_destination_bits~8_combout\,
	datae => \state_mach|ALT_INV_check_destination_bits~7_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~6_combout\,
	combout => \state_mach|i_direction~5_combout\);

-- Location: LABCELL_X18_Y4_N15
\state_mach|check_destination_bits~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~13_combout\ = ( \state_mach|check_destination_bits~6_combout\ & ( (\state_mach|check_destination_bits~8_combout\ & (\state_mach|check_destination_bits~7_combout\ & !\state_mach|check_destination_bits~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_check_destination_bits~8_combout\,
	datab => \state_mach|ALT_INV_check_destination_bits~7_combout\,
	datad => \state_mach|ALT_INV_check_destination_bits~9_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~6_combout\,
	combout => \state_mach|check_destination_bits~13_combout\);

-- Location: LABCELL_X16_Y6_N33
\state_mach|i_direction~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~46_combout\ = ( \state_mach|i_direction~7_combout\ & ( \state_mach|check_destination_bits~19_combout\ & ( (!\state_mach|check_destination_bits~20_combout\ & ((\state_mach|LessThan30~0_combout\))) # 
-- (\state_mach|check_destination_bits~20_combout\ & (\state_mach|LessThan31~0_combout\)) ) ) ) # ( !\state_mach|i_direction~7_combout\ & ( \state_mach|check_destination_bits~19_combout\ & ( (!\state_mach|check_destination_bits~20_combout\ & 
-- ((\state_mach|LessThan30~0_combout\))) # (\state_mach|check_destination_bits~20_combout\ & (\state_mach|LessThan31~0_combout\)) ) ) ) # ( \state_mach|i_direction~7_combout\ & ( !\state_mach|check_destination_bits~19_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_LessThan31~0_combout\,
	datac => \state_mach|ALT_INV_check_destination_bits~20_combout\,
	datad => \state_mach|ALT_INV_LessThan30~0_combout\,
	datae => \state_mach|ALT_INV_i_direction~7_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~19_combout\,
	combout => \state_mach|i_direction~46_combout\);

-- Location: MLABCELL_X21_Y6_N0
\state_mach|i_direction~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~47_combout\ = ( \state_mach|i_current_floor[1]~DUPLICATE_q\ & ( \state_mach|check_destination_bits~10_combout\ & ( (\state_mach|i_current_floor\(3) & ((\state_mach|i_current_floor\(0)) # (\state_mach|i_current_floor\(2)))) ) ) ) # 
-- ( !\state_mach|i_current_floor[1]~DUPLICATE_q\ & ( \state_mach|check_destination_bits~10_combout\ & ( (\state_mach|i_current_floor\(2) & \state_mach|i_current_floor\(3)) ) ) ) # ( \state_mach|i_current_floor[1]~DUPLICATE_q\ & ( 
-- !\state_mach|check_destination_bits~10_combout\ & ( (\state_mach|i_current_floor\(2) & \state_mach|i_current_floor\(3)) ) ) ) # ( !\state_mach|i_current_floor[1]~DUPLICATE_q\ & ( !\state_mach|check_destination_bits~10_combout\ & ( 
-- (\state_mach|i_current_floor\(2) & \state_mach|i_current_floor\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \state_mach|ALT_INV_i_current_floor\(2),
	datac => \state_mach|ALT_INV_i_current_floor\(3),
	datad => \state_mach|ALT_INV_i_current_floor\(0),
	datae => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	dataf => \state_mach|ALT_INV_check_destination_bits~10_combout\,
	combout => \state_mach|i_direction~47_combout\);

-- Location: LABCELL_X19_Y7_N45
\state_mach|check_destination_bits~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~17_combout\ = ( !\f_control|i_floor_call_array_up\(0) & ( !\f_control|i_floor_call_array_down\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \f_control|ALT_INV_i_floor_call_array_down\(0),
	dataf => \f_control|ALT_INV_i_floor_call_array_up\(0),
	combout => \state_mach|check_destination_bits~17_combout\);

-- Location: LABCELL_X19_Y7_N18
\state_mach|check_destination_bits~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~18_combout\ = ( !\f_control|i_floor_call_array_up\(0) & ( (!\f_control|i_floor_call_array_down\(1) & (!\f_control|i_floor_call_array_up\(1) & !\f_control|i_floor_call_array_down\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_floor_call_array_down\(1),
	datac => \f_control|ALT_INV_i_floor_call_array_up\(1),
	datad => \f_control|ALT_INV_i_floor_call_array_down\(0),
	dataf => \f_control|ALT_INV_i_floor_call_array_up\(0),
	combout => \state_mach|check_destination_bits~18_combout\);

-- Location: LABCELL_X19_Y6_N45
\state_mach|i_direction~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~43_combout\ = ( !\state_mach|check_destination_bits~18_combout\ & ( (!\state_mach|check_destination_bits~17_combout\) # (\state_mach|i_current_floor\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \state_mach|ALT_INV_check_destination_bits~17_combout\,
	datad => \state_mach|ALT_INV_i_current_floor\(0),
	dataf => \state_mach|ALT_INV_check_destination_bits~18_combout\,
	combout => \state_mach|i_direction~43_combout\);

-- Location: LABCELL_X19_Y6_N54
\state_mach|i_direction~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~44_combout\ = ( \state_mach|check_destination_bits~0_combout\ & ( ((!\state_mach|i_current_floor\(0)) # (!\state_mach|i_current_floor[1]~DUPLICATE_q\)) # (\state_mach|check_destination_bits~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111101011111111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_check_destination_bits~1_combout\,
	datac => \state_mach|ALT_INV_i_current_floor\(0),
	datad => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	dataf => \state_mach|ALT_INV_check_destination_bits~0_combout\,
	combout => \state_mach|i_direction~44_combout\);

-- Location: LABCELL_X18_Y4_N18
\state_mach|check_destination_bits~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~16_combout\ = ( \state_mach|check_destination_bits~0_combout\ & ( \state_mach|check_destination_bits~2_combout\ & ( \state_mach|check_destination_bits~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \state_mach|ALT_INV_check_destination_bits~1_combout\,
	datae => \state_mach|ALT_INV_check_destination_bits~0_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~2_combout\,
	combout => \state_mach|check_destination_bits~16_combout\);

-- Location: LABCELL_X19_Y6_N0
\state_mach|i_direction~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~0_combout\ = ( \state_mach|i_direction~44_combout\ & ( !\state_mach|check_destination_bits~16_combout\ & ( (\state_mach|i_current_floor[3]~DUPLICATE_q\) # (\state_mach|i_current_floor\(2)) ) ) ) # ( 
-- !\state_mach|i_direction~44_combout\ & ( !\state_mach|check_destination_bits~16_combout\ & ( (((\state_mach|i_current_floor\(1)) # (\state_mach|i_current_floor[3]~DUPLICATE_q\)) # (\state_mach|i_direction~43_combout\)) # (\state_mach|i_current_floor\(2)) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111010111110101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor\(2),
	datab => \state_mach|ALT_INV_i_direction~43_combout\,
	datac => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	datad => \state_mach|ALT_INV_i_current_floor\(1),
	datae => \state_mach|ALT_INV_i_direction~44_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~16_combout\,
	combout => \state_mach|i_direction~0_combout\);

-- Location: LABCELL_X19_Y6_N42
\state_mach|check_destination_bits~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~14_combout\ = ( \state_mach|check_destination_bits~4_combout\ & ( (\state_mach|check_destination_bits~3_combout\ & (\state_mach|check_destination_bits~2_combout\ & (\state_mach|check_destination_bits~1_combout\ & 
-- \state_mach|check_destination_bits~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_check_destination_bits~3_combout\,
	datab => \state_mach|ALT_INV_check_destination_bits~2_combout\,
	datac => \state_mach|ALT_INV_check_destination_bits~1_combout\,
	datad => \state_mach|ALT_INV_check_destination_bits~0_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~4_combout\,
	combout => \state_mach|check_destination_bits~14_combout\);

-- Location: LABCELL_X19_Y6_N27
\state_mach|i_direction~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~2_combout\ = ( \state_mach|check_destination_bits~6_combout\ & ( \state_mach|i_current_floor[3]~DUPLICATE_q\ ) ) # ( !\state_mach|check_destination_bits~6_combout\ & ( (!\state_mach|check_destination_bits~3_combout\ & 
-- (\state_mach|check_destination_bits~16_combout\ & \state_mach|i_current_floor[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_check_destination_bits~3_combout\,
	datac => \state_mach|ALT_INV_check_destination_bits~16_combout\,
	datad => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	dataf => \state_mach|ALT_INV_check_destination_bits~6_combout\,
	combout => \state_mach|i_direction~2_combout\);

-- Location: LABCELL_X19_Y6_N51
\state_mach|i_direction~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~1_combout\ = ( \state_mach|i_current_floor\(2) & ( \state_mach|check_destination_bits~16_combout\ & ( ((!\state_mach|check_destination_bits~3_combout\ & ((\state_mach|i_current_floor\(0)))) # 
-- (\state_mach|check_destination_bits~3_combout\ & (\state_mach|i_current_floor[3]~DUPLICATE_q\))) # (\state_mach|i_current_floor\(1)) ) ) ) # ( !\state_mach|i_current_floor\(2) & ( \state_mach|check_destination_bits~16_combout\ & ( 
-- (\state_mach|i_current_floor[3]~DUPLICATE_q\ & \state_mach|check_destination_bits~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	datab => \state_mach|ALT_INV_i_current_floor\(0),
	datac => \state_mach|ALT_INV_i_current_floor\(1),
	datad => \state_mach|ALT_INV_check_destination_bits~3_combout\,
	datae => \state_mach|ALT_INV_i_current_floor\(2),
	dataf => \state_mach|ALT_INV_check_destination_bits~16_combout\,
	combout => \state_mach|i_direction~1_combout\);

-- Location: LABCELL_X19_Y6_N57
\state_mach|check_destination_bits~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~15_combout\ = ( \state_mach|check_destination_bits~6_combout\ & ( \state_mach|check_destination_bits~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \state_mach|ALT_INV_check_destination_bits~7_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~6_combout\,
	combout => \state_mach|check_destination_bits~15_combout\);

-- Location: MLABCELL_X21_Y6_N42
\state_mach|i_direction~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~3_combout\ = ( \state_mach|i_current_floor[1]~DUPLICATE_q\ & ( \state_mach|check_destination_bits~14_combout\ & ( (!\state_mach|check_destination_bits~5_combout\ & (((\state_mach|i_current_floor\(0) & 
-- \state_mach|i_current_floor\(2))) # (\state_mach|i_current_floor\(3)))) ) ) ) # ( !\state_mach|i_current_floor[1]~DUPLICATE_q\ & ( \state_mach|check_destination_bits~14_combout\ & ( (\state_mach|i_current_floor\(3) & 
-- !\state_mach|check_destination_bits~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor\(3),
	datab => \state_mach|ALT_INV_check_destination_bits~5_combout\,
	datac => \state_mach|ALT_INV_i_current_floor\(0),
	datad => \state_mach|ALT_INV_i_current_floor\(2),
	datae => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	dataf => \state_mach|ALT_INV_check_destination_bits~14_combout\,
	combout => \state_mach|i_direction~3_combout\);

-- Location: LABCELL_X19_Y6_N12
\state_mach|i_direction~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~4_combout\ = ( !\state_mach|check_destination_bits~15_combout\ & ( \state_mach|i_direction~3_combout\ ) ) # ( !\state_mach|check_destination_bits~15_combout\ & ( !\state_mach|i_direction~3_combout\ & ( 
-- ((!\state_mach|check_destination_bits~14_combout\ & ((\state_mach|i_direction~1_combout\) # (\state_mach|i_direction~0_combout\)))) # (\state_mach|i_direction~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111111001111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_direction~0_combout\,
	datab => \state_mach|ALT_INV_check_destination_bits~14_combout\,
	datac => \state_mach|ALT_INV_i_direction~2_combout\,
	datad => \state_mach|ALT_INV_i_direction~1_combout\,
	datae => \state_mach|ALT_INV_check_destination_bits~15_combout\,
	dataf => \state_mach|ALT_INV_i_direction~3_combout\,
	combout => \state_mach|i_direction~4_combout\);

-- Location: LABCELL_X19_Y6_N30
\state_mach|i_direction~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~9_combout\ = ( \state_mach|check_destination_bits~12_combout\ & ( \state_mach|i_direction~4_combout\ & ( !\state_mach|i_direction~46_combout\ ) ) ) # ( !\state_mach|check_destination_bits~12_combout\ & ( 
-- \state_mach|i_direction~4_combout\ & ( (\state_mach|check_destination_bits~13_combout\ & !\state_mach|i_direction~47_combout\) ) ) ) # ( \state_mach|check_destination_bits~12_combout\ & ( !\state_mach|i_direction~4_combout\ & ( 
-- !\state_mach|i_direction~46_combout\ ) ) ) # ( !\state_mach|check_destination_bits~12_combout\ & ( !\state_mach|i_direction~4_combout\ & ( (!\state_mach|check_destination_bits~13_combout\ & (!\state_mach|i_direction~5_combout\)) # 
-- (\state_mach|check_destination_bits~13_combout\ & ((!\state_mach|i_direction~47_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110001000111100001111000000110011000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_direction~5_combout\,
	datab => \state_mach|ALT_INV_check_destination_bits~13_combout\,
	datac => \state_mach|ALT_INV_i_direction~46_combout\,
	datad => \state_mach|ALT_INV_i_direction~47_combout\,
	datae => \state_mach|ALT_INV_check_destination_bits~12_combout\,
	dataf => \state_mach|ALT_INV_i_direction~4_combout\,
	combout => \state_mach|i_direction~9_combout\);

-- Location: LABCELL_X18_Y6_N3
\state_mach|check_destination_bits~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~23_combout\ = ( \state_mach|i_direction~9_combout\ & ( (!\state_mach|destination~q\ & \state_mach|check_destination_bits~22_combout\) ) ) # ( !\state_mach|i_direction~9_combout\ & ( 
-- (!\state_mach|check_destination_bits~21_combout\ & \state_mach|check_destination_bits~22_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_check_destination_bits~21_combout\,
	datac => \state_mach|ALT_INV_destination~q\,
	datad => \state_mach|ALT_INV_check_destination_bits~22_combout\,
	dataf => \state_mach|ALT_INV_i_direction~9_combout\,
	combout => \state_mach|check_destination_bits~23_combout\);

-- Location: LABCELL_X17_Y7_N45
\state_mach|i_direction~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~16_combout\ = ( \state_mach|i_current_floor\(1) & ( \f_control|i_destination_array\(14) & ( (\state_mach|i_current_floor[3]~DUPLICATE_q\ & \state_mach|i_current_floor\(2)) ) ) ) # ( \state_mach|i_current_floor\(1) & ( 
-- !\f_control|i_destination_array\(14) & ( (!\f_control|i_destination_array\(15)) # ((\state_mach|i_current_floor[3]~DUPLICATE_q\ & (\state_mach|i_current_floor\(0) & \state_mach|i_current_floor\(2)))) ) ) ) # ( !\state_mach|i_current_floor\(1) & ( 
-- !\f_control|i_destination_array\(14) & ( !\f_control|i_destination_array\(15) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101100000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_destination_array\(15),
	datab => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	datac => \state_mach|ALT_INV_i_current_floor\(0),
	datad => \state_mach|ALT_INV_i_current_floor\(2),
	datae => \state_mach|ALT_INV_i_current_floor\(1),
	dataf => \f_control|ALT_INV_i_destination_array\(14),
	combout => \state_mach|i_direction~16_combout\);

-- Location: LABCELL_X17_Y7_N30
\state_mach|i_direction~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~17_combout\ = ( \state_mach|i_current_floor\(0) & ( (\state_mach|i_current_floor\(2) & \state_mach|i_current_floor[3]~DUPLICATE_q\) ) ) # ( !\state_mach|i_current_floor\(0) & ( (\state_mach|i_current_floor\(2) & 
-- (\state_mach|i_current_floor[3]~DUPLICATE_q\ & ((\f_control|i_destination_array\(12)) # (\state_mach|i_current_floor\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor\(1),
	datab => \state_mach|ALT_INV_i_current_floor\(2),
	datac => \f_control|ALT_INV_i_destination_array\(12),
	datad => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	dataf => \state_mach|ALT_INV_i_current_floor\(0),
	combout => \state_mach|i_direction~17_combout\);

-- Location: LABCELL_X16_Y7_N42
\state_mach|i_direction~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~18_combout\ = ( !\f_control|i_destination_array\(11) & ( !\state_mach|check_destination_bits~30_combout\ & ( (!\f_control|i_destination_array\(13) & ((!\f_control|i_destination_array\(12) & (!\state_mach|i_direction~16_combout\)) # 
-- (\f_control|i_destination_array\(12) & ((!\state_mach|i_direction~17_combout\))))) # (\f_control|i_destination_array\(13) & (((!\state_mach|i_direction~17_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011100011110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_direction~16_combout\,
	datab => \f_control|ALT_INV_i_destination_array\(13),
	datac => \state_mach|ALT_INV_i_direction~17_combout\,
	datad => \f_control|ALT_INV_i_destination_array\(12),
	datae => \f_control|ALT_INV_i_destination_array\(11),
	dataf => \state_mach|ALT_INV_check_destination_bits~30_combout\,
	combout => \state_mach|i_direction~18_combout\);

-- Location: LABCELL_X17_Y4_N57
\state_mach|check_destination_bits~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~82_combout\ = ( \state_mach|check_destination_bits~12_combout\ & ( (\state_mach|check_destination_bits~19_combout\ & ((!\state_mach|LessThan31~0_combout\) # (\state_mach|destination~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100110011000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \state_mach|ALT_INV_check_destination_bits~19_combout\,
	datac => \state_mach|ALT_INV_LessThan31~0_combout\,
	datad => \state_mach|ALT_INV_destination~q\,
	dataf => \state_mach|ALT_INV_check_destination_bits~12_combout\,
	combout => \state_mach|check_destination_bits~82_combout\);

-- Location: LABCELL_X16_Y4_N24
\state_mach|i_direction~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~11_combout\ = ( \state_mach|i_direction~10_combout\ & ( (!\state_mach|i_direction~q\ & !\f_control|i_destination_array\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \state_mach|ALT_INV_i_direction~q\,
	datac => \f_control|ALT_INV_i_destination_array\(0),
	dataf => \state_mach|ALT_INV_i_direction~10_combout\,
	combout => \state_mach|i_direction~11_combout\);

-- Location: LABCELL_X17_Y6_N0
\f_control|Decoder1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f_control|Decoder1~0_combout\ = ( !\state_mach|i_current_floor[3]~DUPLICATE_q\ & ( !\state_mach|i_current_floor\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \state_mach|ALT_INV_i_current_floor\(2),
	dataf => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	combout => \f_control|Decoder1~0_combout\);

-- Location: LABCELL_X16_Y6_N57
\state_mach|i_direction~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~19_combout\ = ( !\f_control|i_destination_array\(0) & ( (!\f_control|i_destination_array\(1) & ((\f_control|i_destination_array\(2)))) # (\f_control|i_destination_array\(1) & (!\state_mach|i_current_floor\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011111010000010101111101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor\(0),
	datac => \f_control|ALT_INV_i_destination_array\(1),
	datad => \f_control|ALT_INV_i_destination_array\(2),
	dataf => \f_control|ALT_INV_i_destination_array\(0),
	combout => \state_mach|i_direction~19_combout\);

-- Location: LABCELL_X17_Y6_N6
\state_mach|i_direction~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~20_combout\ = ( \state_mach|i_direction~19_combout\ & ( \state_mach|check_destination_bits~28_combout\ & ( (!\state_mach|i_current_floor[1]~DUPLICATE_q\ & (\f_control|Decoder1~0_combout\ & 
-- ((!\state_mach|check_destination_bits~29_combout\) # (\f_control|i_destination_array\(8))))) ) ) ) # ( \state_mach|i_direction~19_combout\ & ( !\state_mach|check_destination_bits~28_combout\ & ( (!\state_mach|i_current_floor[1]~DUPLICATE_q\ & 
-- \f_control|Decoder1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000000000110000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_destination_array\(8),
	datab => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	datac => \f_control|ALT_INV_Decoder1~0_combout\,
	datad => \state_mach|ALT_INV_check_destination_bits~29_combout\,
	datae => \state_mach|ALT_INV_i_direction~19_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~28_combout\,
	combout => \state_mach|i_direction~20_combout\);

-- Location: LABCELL_X17_Y6_N12
\state_mach|i_direction~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~14_combout\ = ( \state_mach|i_current_floor[3]~DUPLICATE_q\ & ( (!\state_mach|i_current_floor\(2) & (!\state_mach|i_current_floor[1]~DUPLICATE_q\ & ((!\f_control|i_destination_array\(9)) # (!\state_mach|i_current_floor\(0))))) ) ) 
-- # ( !\state_mach|i_current_floor[3]~DUPLICATE_q\ & ( (!\f_control|i_destination_array\(9)) # ((!\state_mach|i_current_floor\(2) & (!\state_mach|i_current_floor[1]~DUPLICATE_q\ & !\state_mach|i_current_floor\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100011110000111110001111000010001000100000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor\(2),
	datab => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	datac => \f_control|ALT_INV_i_destination_array\(9),
	datad => \state_mach|ALT_INV_i_current_floor\(0),
	dataf => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	combout => \state_mach|i_direction~14_combout\);

-- Location: LABCELL_X17_Y6_N42
\state_mach|i_direction~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~15_combout\ = ( \f_control|i_destination_array\(10) & ( \state_mach|check_destination_bits~28_combout\ & ( (\state_mach|check_destination_bits~29_combout\ & (!\f_control|i_destination_array\(8) & 
-- \state_mach|i_direction~14_combout\)) ) ) ) # ( !\f_control|i_destination_array\(10) & ( \state_mach|check_destination_bits~28_combout\ & ( (\f_control|i_destination_array\(9) & (\state_mach|check_destination_bits~29_combout\ & 
-- (!\f_control|i_destination_array\(8) & \state_mach|i_direction~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_destination_array\(9),
	datab => \state_mach|ALT_INV_check_destination_bits~29_combout\,
	datac => \f_control|ALT_INV_i_destination_array\(8),
	datad => \state_mach|ALT_INV_i_direction~14_combout\,
	datae => \f_control|ALT_INV_i_destination_array\(10),
	dataf => \state_mach|ALT_INV_check_destination_bits~28_combout\,
	combout => \state_mach|i_direction~15_combout\);

-- Location: LABCELL_X16_Y8_N45
\state_mach|i_direction~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~42_combout\ = ( !\state_mach|i_current_floor\(0) & ( (!\f_control|i_destination_array\(4) & !\state_mach|i_current_floor\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \f_control|ALT_INV_i_destination_array\(4),
	datad => \state_mach|ALT_INV_i_current_floor\(1),
	dataf => \state_mach|ALT_INV_i_current_floor\(0),
	combout => \state_mach|i_direction~42_combout\);

-- Location: LABCELL_X16_Y8_N57
\state_mach|i_direction~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~21_combout\ = ( !\f_control|i_destination_array\(1) & ( !\state_mach|i_current_floor\(3) & ( (!\f_control|i_destination_array\(3) & (!\f_control|i_destination_array\(0) & !\f_control|i_destination_array\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \f_control|ALT_INV_i_destination_array\(3),
	datac => \f_control|ALT_INV_i_destination_array\(0),
	datad => \f_control|ALT_INV_i_destination_array\(2),
	datae => \f_control|ALT_INV_i_destination_array\(1),
	dataf => \state_mach|ALT_INV_i_current_floor\(3),
	combout => \state_mach|i_direction~21_combout\);

-- Location: LABCELL_X16_Y7_N30
\state_mach|i_direction~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~48_combout\ = ( \state_mach|check_destination_bits~29_combout\ & ( (\f_control|i_destination_array\(8)) # (\f_control|i_destination_array\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \f_control|ALT_INV_i_destination_array\(9),
	datad => \f_control|ALT_INV_i_destination_array\(8),
	dataf => \state_mach|ALT_INV_check_destination_bits~29_combout\,
	combout => \state_mach|i_direction~48_combout\);

-- Location: LABCELL_X17_Y7_N3
\state_mach|i_direction~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~49_combout\ = ( \state_mach|i_current_floor\(2) & ( !\state_mach|i_direction~48_combout\ & ( (!\f_control|i_destination_array\(6) & ((!\f_control|i_destination_array\(7)) # ((\state_mach|i_current_floor\(1) & 
-- \state_mach|i_current_floor\(0))))) # (\f_control|i_destination_array\(6) & (\state_mach|i_current_floor\(1))) ) ) ) # ( !\state_mach|i_current_floor\(2) & ( !\state_mach|i_direction~48_combout\ & ( (!\f_control|i_destination_array\(6) & 
-- !\f_control|i_destination_array\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111101010001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor\(1),
	datab => \state_mach|ALT_INV_i_current_floor\(0),
	datac => \f_control|ALT_INV_i_destination_array\(6),
	datad => \f_control|ALT_INV_i_destination_array\(7),
	datae => \state_mach|ALT_INV_i_current_floor\(2),
	dataf => \state_mach|ALT_INV_i_direction~48_combout\,
	combout => \state_mach|i_direction~49_combout\);

-- Location: LABCELL_X16_Y8_N18
\state_mach|i_direction~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~22_combout\ = ( !\state_mach|check_destination_bits~28_combout\ & ( \state_mach|i_direction~49_combout\ & ( (\state_mach|i_direction~21_combout\ & ((!\state_mach|i_current_floor\(2)) # (\state_mach|i_direction~42_combout\))) ) ) ) 
-- # ( \state_mach|check_destination_bits~28_combout\ & ( !\state_mach|i_direction~49_combout\ & ( !\state_mach|i_current_floor\(3) ) ) ) # ( !\state_mach|check_destination_bits~28_combout\ & ( !\state_mach|i_direction~49_combout\ & ( 
-- (\state_mach|i_direction~21_combout\ & ((!\state_mach|i_current_floor\(2)) # (\state_mach|i_direction~42_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110011101010101010101000000000111100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor\(3),
	datab => \state_mach|ALT_INV_i_direction~42_combout\,
	datac => \state_mach|ALT_INV_i_current_floor\(2),
	datad => \state_mach|ALT_INV_i_direction~21_combout\,
	datae => \state_mach|ALT_INV_check_destination_bits~28_combout\,
	dataf => \state_mach|ALT_INV_i_direction~49_combout\,
	combout => \state_mach|i_direction~22_combout\);

-- Location: LABCELL_X17_Y4_N42
\state_mach|check_destination_bits~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~83_combout\ = ( \state_mach|i_direction~22_combout\ & ( (!\state_mach|i_direction~q\ & !\state_mach|i_direction~11_combout\) ) ) # ( !\state_mach|i_direction~22_combout\ & ( (!\state_mach|i_direction~11_combout\ & 
-- ((!\state_mach|i_direction~q\) # ((!\state_mach|i_direction~20_combout\ & !\state_mach|i_direction~15_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100010001000110010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_direction~q\,
	datab => \state_mach|ALT_INV_i_direction~11_combout\,
	datac => \state_mach|ALT_INV_i_direction~20_combout\,
	datad => \state_mach|ALT_INV_i_direction~15_combout\,
	dataf => \state_mach|ALT_INV_i_direction~22_combout\,
	combout => \state_mach|check_destination_bits~83_combout\);

-- Location: LABCELL_X17_Y6_N51
\state_mach|LessThan19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|LessThan19~0_combout\ = ( !\state_mach|i_current_floor[3]~DUPLICATE_q\ & ( (!\state_mach|i_current_floor\(2) & ((!\state_mach|i_current_floor\(0)) # (!\state_mach|i_current_floor[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101000000000111110100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor\(0),
	datac => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	datad => \state_mach|ALT_INV_i_current_floor\(2),
	dataf => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	combout => \state_mach|LessThan19~0_combout\);

-- Location: LABCELL_X16_Y6_N18
\state_mach|i_direction~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~12_combout\ = ( !\f_control|i_destination_array\(0) & ( (!\f_control|i_destination_array\(1) & (\f_control|i_destination_array\(3) & !\f_control|i_destination_array\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \f_control|ALT_INV_i_destination_array\(1),
	datac => \f_control|ALT_INV_i_destination_array\(3),
	datad => \f_control|ALT_INV_i_destination_array\(2),
	dataf => \f_control|ALT_INV_i_destination_array\(0),
	combout => \state_mach|i_direction~12_combout\);

-- Location: LABCELL_X18_Y8_N24
\state_mach|LessThan27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|LessThan27~0_combout\ = ( \state_mach|i_current_floor\(0) & ( \state_mach|i_current_floor\(2) & ( \state_mach|i_current_floor\(3) ) ) ) # ( !\state_mach|i_current_floor\(0) & ( \state_mach|i_current_floor\(2) & ( 
-- \state_mach|i_current_floor\(3) ) ) ) # ( \state_mach|i_current_floor\(0) & ( !\state_mach|i_current_floor\(2) & ( (\state_mach|i_current_floor\(3) & \state_mach|i_current_floor\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \state_mach|ALT_INV_i_current_floor\(3),
	datad => \state_mach|ALT_INV_i_current_floor\(1),
	datae => \state_mach|ALT_INV_i_current_floor\(0),
	dataf => \state_mach|ALT_INV_i_current_floor\(2),
	combout => \state_mach|LessThan27~0_combout\);

-- Location: LABCELL_X17_Y6_N3
\state_mach|i_direction~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~13_combout\ = ( \state_mach|LessThan27~0_combout\ & ( (\state_mach|LessThan19~0_combout\ & (\state_mach|i_direction~12_combout\ & ((\state_mach|check_destination_bits~30_combout\) # (\f_control|i_destination_array\(11))))) ) ) # ( 
-- !\state_mach|LessThan27~0_combout\ & ( (!\state_mach|check_destination_bits~30_combout\ & (((\f_control|i_destination_array\(11))))) # (\state_mach|check_destination_bits~30_combout\ & (\state_mach|LessThan19~0_combout\ & 
-- ((\state_mach|i_direction~12_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000101001100110000010100000001000001010000000100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_LessThan19~0_combout\,
	datab => \f_control|ALT_INV_i_destination_array\(11),
	datac => \state_mach|ALT_INV_i_direction~12_combout\,
	datad => \state_mach|ALT_INV_check_destination_bits~30_combout\,
	dataf => \state_mach|ALT_INV_LessThan27~0_combout\,
	combout => \state_mach|i_direction~13_combout\);

-- Location: LABCELL_X16_Y4_N6
\state_mach|i_direction~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~33_combout\ = ( !\state_mach|i_current_floor[3]~DUPLICATE_q\ & ( \state_mach|i_direction~10_combout\ & ( (!\state_mach|i_current_floor\(0) & (!\state_mach|i_direction~q\ & (!\state_mach|i_current_floor\(1) & 
-- !\state_mach|i_current_floor\(2)))) ) ) ) # ( \state_mach|i_current_floor[3]~DUPLICATE_q\ & ( !\state_mach|i_direction~10_combout\ & ( !\state_mach|i_direction~q\ ) ) ) # ( !\state_mach|i_current_floor[3]~DUPLICATE_q\ & ( 
-- !\state_mach|i_direction~10_combout\ & ( !\state_mach|i_direction~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor\(0),
	datab => \state_mach|ALT_INV_i_direction~q\,
	datac => \state_mach|ALT_INV_i_current_floor\(1),
	datad => \state_mach|ALT_INV_i_current_floor\(2),
	datae => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	dataf => \state_mach|ALT_INV_i_direction~10_combout\,
	combout => \state_mach|i_direction~33_combout\);

-- Location: LABCELL_X16_Y4_N3
\state_mach|check_destination_bits~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~32_combout\ = ( !\state_mach|check_destination_bits~25_combout\ & ( (!\state_mach|check_destination_bits~24_combout\ & !\state_mach|check_destination_bits~26_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_check_destination_bits~24_combout\,
	datad => \state_mach|ALT_INV_check_destination_bits~26_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~25_combout\,
	combout => \state_mach|check_destination_bits~32_combout\);

-- Location: LABCELL_X16_Y6_N21
\state_mach|i_direction~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~41_combout\ = ( \f_control|i_destination_array\(13) & ( (\state_mach|i_current_floor\(2) & \state_mach|i_current_floor[1]~DUPLICATE_q\) ) ) # ( !\f_control|i_destination_array\(13) & ( ((\state_mach|i_current_floor[1]~DUPLICATE_q\ 
-- & !\f_control|i_destination_array\(11))) # (\state_mach|i_current_floor\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101010101010111110101010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor\(2),
	datac => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	datad => \f_control|ALT_INV_i_destination_array\(11),
	dataf => \f_control|ALT_INV_i_destination_array\(13),
	combout => \state_mach|i_direction~41_combout\);

-- Location: LABCELL_X16_Y6_N36
\state_mach|i_direction~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~24_combout\ = ( \f_control|i_destination_array\(12) & ( \state_mach|i_direction~41_combout\ & ( (!\state_mach|i_current_floor[1]~DUPLICATE_q\ & (((!\f_control|i_destination_array\(14) & \state_mach|i_current_floor\(0))))) # 
-- (\state_mach|i_current_floor[1]~DUPLICATE_q\ & (\state_mach|i_current_floor\(2) & ((!\f_control|i_destination_array\(14)) # (\state_mach|i_current_floor\(0))))) ) ) ) # ( !\f_control|i_destination_array\(12) & ( \state_mach|i_direction~41_combout\ & ( 
-- (!\state_mach|i_current_floor\(2) & (!\f_control|i_destination_array\(14) & ((!\state_mach|i_current_floor[1]~DUPLICATE_q\) # (\state_mach|i_current_floor\(0))))) # (\state_mach|i_current_floor\(2) & ((!\f_control|i_destination_array\(14)) # 
-- ((\state_mach|i_current_floor\(0) & \state_mach|i_current_floor[1]~DUPLICATE_q\)))) ) ) ) # ( \f_control|i_destination_array\(12) & ( !\state_mach|i_direction~41_combout\ & ( (\state_mach|i_current_floor\(2) & (\state_mach|i_current_floor[1]~DUPLICATE_q\ 
-- & ((!\f_control|i_destination_array\(14)) # (\state_mach|i_current_floor\(0))))) ) ) ) # ( !\f_control|i_destination_array\(12) & ( !\state_mach|i_direction~41_combout\ & ( (\state_mach|i_current_floor\(2) & (\state_mach|i_current_floor[1]~DUPLICATE_q\ & 
-- ((!\f_control|i_destination_array\(14)) # (\state_mach|i_current_floor\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000101000000000100010111001100010011010000110001000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor\(2),
	datab => \f_control|ALT_INV_i_destination_array\(14),
	datac => \state_mach|ALT_INV_i_current_floor\(0),
	datad => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	datae => \f_control|ALT_INV_i_destination_array\(12),
	dataf => \state_mach|ALT_INV_i_direction~41_combout\,
	combout => \state_mach|i_direction~24_combout\);

-- Location: LABCELL_X17_Y4_N45
\state_mach|i_direction~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~25_combout\ = ( \state_mach|check_destination_bits~24_combout\ & ( (!\f_control|i_destination_array\(15) & \state_mach|i_current_floor[3]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \f_control|ALT_INV_i_destination_array\(15),
	datad => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	dataf => \state_mach|ALT_INV_check_destination_bits~24_combout\,
	combout => \state_mach|i_direction~25_combout\);

-- Location: LABCELL_X17_Y7_N6
\state_mach|LessThan23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|LessThan23~0_combout\ = ( \state_mach|i_current_floor\(0) & ( (!\state_mach|i_current_floor[3]~DUPLICATE_q\ & ((!\state_mach|i_current_floor\(2)) # (!\state_mach|i_current_floor\(1)))) ) ) # ( !\state_mach|i_current_floor\(0) & ( 
-- !\state_mach|i_current_floor[3]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111010000000001111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor\(2),
	datac => \state_mach|ALT_INV_i_current_floor\(1),
	datad => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	dataf => \state_mach|ALT_INV_i_current_floor\(0),
	combout => \state_mach|LessThan23~0_combout\);

-- Location: LABCELL_X18_Y8_N6
\state_mach|LessThan22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|LessThan22~0_combout\ = ( !\state_mach|i_current_floor\(2) & ( \state_mach|i_current_floor[1]~DUPLICATE_q\ & ( !\state_mach|i_current_floor\(3) ) ) ) # ( \state_mach|i_current_floor\(2) & ( !\state_mach|i_current_floor[1]~DUPLICATE_q\ & ( 
-- !\state_mach|i_current_floor\(3) ) ) ) # ( !\state_mach|i_current_floor\(2) & ( !\state_mach|i_current_floor[1]~DUPLICATE_q\ & ( !\state_mach|i_current_floor\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \state_mach|ALT_INV_i_current_floor\(3),
	datae => \state_mach|ALT_INV_i_current_floor\(2),
	dataf => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	combout => \state_mach|LessThan22~0_combout\);

-- Location: LABCELL_X17_Y8_N12
\state_mach|i_direction~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~26_combout\ = ( \state_mach|i_current_floor[1]~DUPLICATE_q\ & ( \state_mach|i_current_floor\(3) ) ) # ( !\state_mach|i_current_floor[1]~DUPLICATE_q\ & ( \state_mach|i_current_floor\(3) & ( ((!\f_control|i_destination_array\(9) & 
-- ((!\f_control|i_destination_array\(8)) # (\state_mach|i_current_floor\(0))))) # (\state_mach|i_current_floor\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010110000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_destination_array\(8),
	datab => \state_mach|ALT_INV_i_current_floor\(0),
	datac => \f_control|ALT_INV_i_destination_array\(9),
	datad => \state_mach|ALT_INV_i_current_floor\(2),
	datae => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	dataf => \state_mach|ALT_INV_i_current_floor\(3),
	combout => \state_mach|i_direction~26_combout\);

-- Location: LABCELL_X17_Y6_N18
\state_mach|i_direction~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~27_combout\ = ( \state_mach|LessThan22~0_combout\ & ( \state_mach|i_direction~26_combout\ & ( (!\state_mach|check_destination_bits~24_combout\ & (((\f_control|i_destination_array\(6) & !\state_mach|LessThan23~0_combout\)) # 
-- (\state_mach|check_destination_bits~25_combout\))) ) ) ) # ( !\state_mach|LessThan22~0_combout\ & ( \state_mach|i_direction~26_combout\ & ( (!\state_mach|check_destination_bits~24_combout\ & ((!\f_control|i_destination_array\(6)) # 
-- ((!\state_mach|LessThan23~0_combout\) # (\state_mach|check_destination_bits~25_combout\)))) ) ) ) # ( \state_mach|LessThan22~0_combout\ & ( !\state_mach|i_direction~26_combout\ & ( (\f_control|i_destination_array\(6) & 
-- (!\state_mach|check_destination_bits~24_combout\ & (!\state_mach|check_destination_bits~25_combout\ & !\state_mach|LessThan23~0_combout\))) ) ) ) # ( !\state_mach|LessThan22~0_combout\ & ( !\state_mach|i_direction~26_combout\ & ( 
-- (!\state_mach|check_destination_bits~24_combout\ & (!\state_mach|check_destination_bits~25_combout\ & ((!\f_control|i_destination_array\(6)) # (!\state_mach|LessThan23~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000010000000010000000000000011001100100011000100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_destination_array\(6),
	datab => \state_mach|ALT_INV_check_destination_bits~24_combout\,
	datac => \state_mach|ALT_INV_check_destination_bits~25_combout\,
	datad => \state_mach|ALT_INV_LessThan23~0_combout\,
	datae => \state_mach|ALT_INV_LessThan22~0_combout\,
	dataf => \state_mach|ALT_INV_i_direction~26_combout\,
	combout => \state_mach|i_direction~27_combout\);

-- Location: LABCELL_X17_Y4_N24
\state_mach|i_direction~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~28_combout\ = ( \state_mach|i_direction~27_combout\ & ( !\state_mach|check_destination_bits~32_combout\ ) ) # ( !\state_mach|i_direction~27_combout\ & ( (!\state_mach|check_destination_bits~32_combout\ & 
-- (\state_mach|i_direction~24_combout\ & \state_mach|i_direction~25_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \state_mach|ALT_INV_check_destination_bits~32_combout\,
	datac => \state_mach|ALT_INV_i_direction~24_combout\,
	datad => \state_mach|ALT_INV_i_direction~25_combout\,
	dataf => \state_mach|ALT_INV_i_direction~27_combout\,
	combout => \state_mach|i_direction~28_combout\);

-- Location: LABCELL_X16_Y6_N24
\state_mach|check_destination_bits~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~31_combout\ = ( !\state_mach|check_destination_bits~24_combout\ & ( (!\f_control|i_destination_array\(2) & (!\state_mach|check_destination_bits~25_combout\ & (\state_mach|check_destination_bits~27_combout\ & 
-- !\state_mach|check_destination_bits~26_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_destination_array\(2),
	datab => \state_mach|ALT_INV_check_destination_bits~25_combout\,
	datac => \state_mach|ALT_INV_check_destination_bits~27_combout\,
	datad => \state_mach|ALT_INV_check_destination_bits~26_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~24_combout\,
	combout => \state_mach|check_destination_bits~31_combout\);

-- Location: MLABCELL_X15_Y6_N6
\state_mach|i_direction~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~29_combout\ = ( \f_control|i_destination_array\(4) & ( (!\f_control|i_destination_array\(13) & (!\f_control|i_destination_array\(14) & (!\f_control|i_destination_array\(15) & \f_control|i_destination_array\(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \f_control|ALT_INV_i_destination_array\(13),
	datab => \f_control|ALT_INV_i_destination_array\(14),
	datac => \f_control|ALT_INV_i_destination_array\(15),
	datad => \f_control|ALT_INV_i_destination_array\(12),
	dataf => \f_control|ALT_INV_i_destination_array\(4),
	combout => \state_mach|i_direction~29_combout\);

-- Location: LABCELL_X16_Y6_N12
\state_mach|i_direction~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~30_combout\ = ( \state_mach|i_direction~29_combout\ & ( \state_mach|check_destination_bits~31_combout\ & ( \state_mach|i_current_floor[3]~DUPLICATE_q\ ) ) ) # ( !\state_mach|i_direction~29_combout\ & ( 
-- \state_mach|check_destination_bits~31_combout\ & ( \state_mach|i_current_floor[3]~DUPLICATE_q\ ) ) ) # ( \state_mach|i_direction~29_combout\ & ( !\state_mach|check_destination_bits~31_combout\ & ( (\state_mach|i_current_floor[3]~DUPLICATE_q\ & 
-- (\state_mach|i_current_floor\(2) & ((\state_mach|i_current_floor[1]~DUPLICATE_q\) # (\state_mach|i_current_floor\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor\(0),
	datab => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	datac => \state_mach|ALT_INV_i_current_floor\(2),
	datad => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	datae => \state_mach|ALT_INV_i_direction~29_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~31_combout\,
	combout => \state_mach|i_direction~30_combout\);

-- Location: LABCELL_X17_Y6_N48
\state_mach|i_direction~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~31_combout\ = ( !\state_mach|i_current_floor[3]~DUPLICATE_q\ & ( (!\state_mach|i_current_floor\(2)) # ((!\state_mach|i_current_floor\(0) & (!\state_mach|i_current_floor[1]~DUPLICATE_q\ & \f_control|i_destination_array\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001000111111110000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor\(0),
	datab => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	datac => \f_control|ALT_INV_i_destination_array\(4),
	datad => \state_mach|ALT_INV_i_current_floor\(2),
	dataf => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	combout => \state_mach|i_direction~31_combout\);

-- Location: LABCELL_X17_Y6_N30
\state_mach|i_direction~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~32_combout\ = ( \state_mach|check_destination_bits~27_combout\ & ( \state_mach|check_destination_bits~32_combout\ & ( (!\f_control|i_destination_array\(2) & ((!\state_mach|LessThan14~0_combout\))) # 
-- (\f_control|i_destination_array\(2) & (!\state_mach|LessThan19~0_combout\)) ) ) ) # ( !\state_mach|check_destination_bits~27_combout\ & ( \state_mach|check_destination_bits~32_combout\ & ( !\state_mach|i_direction~31_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101111110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_direction~31_combout\,
	datab => \f_control|ALT_INV_i_destination_array\(2),
	datac => \state_mach|ALT_INV_LessThan19~0_combout\,
	datad => \state_mach|ALT_INV_LessThan14~0_combout\,
	datae => \state_mach|ALT_INV_check_destination_bits~27_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~32_combout\,
	combout => \state_mach|i_direction~32_combout\);

-- Location: LABCELL_X17_Y4_N30
\state_mach|i_direction~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~34_combout\ = ( \state_mach|i_direction~30_combout\ & ( \state_mach|i_direction~32_combout\ & ( (\state_mach|i_direction~33_combout\ & (!\f_control|i_destination_array\(1) & \state_mach|check_destination_bits~31_combout\)) ) ) ) # 
-- ( !\state_mach|i_direction~30_combout\ & ( \state_mach|i_direction~32_combout\ & ( (\state_mach|i_direction~33_combout\ & (!\f_control|i_destination_array\(1) & \state_mach|check_destination_bits~31_combout\)) ) ) ) # ( \state_mach|i_direction~30_combout\ 
-- & ( !\state_mach|i_direction~32_combout\ & ( (\state_mach|i_direction~33_combout\ & (!\f_control|i_destination_array\(1) & \state_mach|check_destination_bits~31_combout\)) ) ) ) # ( !\state_mach|i_direction~30_combout\ & ( 
-- !\state_mach|i_direction~32_combout\ & ( (\state_mach|i_direction~33_combout\ & ((!\state_mach|i_direction~28_combout\) # ((!\f_control|i_destination_array\(1) & \state_mach|check_destination_bits~31_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010100000000000100010000000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_direction~33_combout\,
	datab => \f_control|ALT_INV_i_destination_array\(1),
	datac => \state_mach|ALT_INV_i_direction~28_combout\,
	datad => \state_mach|ALT_INV_check_destination_bits~31_combout\,
	datae => \state_mach|ALT_INV_i_direction~30_combout\,
	dataf => \state_mach|ALT_INV_i_direction~32_combout\,
	combout => \state_mach|i_direction~34_combout\);

-- Location: LABCELL_X17_Y4_N0
\state_mach|check_destination_bits~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~47_combout\ = ( \state_mach|i_direction~13_combout\ & ( \state_mach|i_direction~34_combout\ & ( \state_mach|check_destination_bits~82_combout\ ) ) ) # ( !\state_mach|i_direction~13_combout\ & ( 
-- \state_mach|i_direction~34_combout\ & ( \state_mach|check_destination_bits~82_combout\ ) ) ) # ( \state_mach|i_direction~13_combout\ & ( !\state_mach|i_direction~34_combout\ & ( (\state_mach|check_destination_bits~82_combout\ & 
-- ((!\state_mach|check_destination_bits~83_combout\) # (\state_mach|i_direction~q\))) ) ) ) # ( !\state_mach|i_direction~13_combout\ & ( !\state_mach|i_direction~34_combout\ & ( (\state_mach|check_destination_bits~82_combout\ & 
-- ((!\state_mach|check_destination_bits~83_combout\) # ((\state_mach|i_direction~q\ & \state_mach|i_direction~18_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000001000011110000010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_direction~q\,
	datab => \state_mach|ALT_INV_i_direction~18_combout\,
	datac => \state_mach|ALT_INV_check_destination_bits~82_combout\,
	datad => \state_mach|ALT_INV_check_destination_bits~83_combout\,
	datae => \state_mach|ALT_INV_i_direction~13_combout\,
	dataf => \state_mach|ALT_INV_i_direction~34_combout\,
	combout => \state_mach|check_destination_bits~47_combout\);

-- Location: LABCELL_X18_Y4_N48
\state_mach|i_direction~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~6_combout\ = ( \state_mach|check_destination_bits~10_combout\ & ( \state_mach|check_destination_bits~13_combout\ & ( (\state_mach|i_current_floor[3]~DUPLICATE_q\ & (((\state_mach|i_current_floor[1]~DUPLICATE_q\ & 
-- \state_mach|i_current_floor\(0))) # (\state_mach|i_current_floor\(2)))) ) ) ) # ( !\state_mach|check_destination_bits~10_combout\ & ( \state_mach|check_destination_bits~13_combout\ & ( (\state_mach|i_current_floor\(2) & 
-- \state_mach|i_current_floor[3]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	datab => \state_mach|ALT_INV_i_current_floor\(0),
	datac => \state_mach|ALT_INV_i_current_floor\(2),
	datad => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	datae => \state_mach|ALT_INV_check_destination_bits~10_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~13_combout\,
	combout => \state_mach|i_direction~6_combout\);

-- Location: LABCELL_X17_Y4_N6
\state_mach|i_direction~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~8_combout\ = ( \state_mach|LessThan30~0_combout\ & ( \state_mach|check_destination_bits~12_combout\ & ( (!\state_mach|check_destination_bits~19_combout\ & (((\state_mach|i_direction~7_combout\)))) # 
-- (\state_mach|check_destination_bits~19_combout\ & ((!\state_mach|check_destination_bits~20_combout\) # ((\state_mach|LessThan31~0_combout\)))) ) ) ) # ( !\state_mach|LessThan30~0_combout\ & ( \state_mach|check_destination_bits~12_combout\ & ( 
-- (!\state_mach|check_destination_bits~19_combout\ & (((\state_mach|i_direction~7_combout\)))) # (\state_mach|check_destination_bits~19_combout\ & (\state_mach|check_destination_bits~20_combout\ & (\state_mach|LessThan31~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001110011010010001111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_check_destination_bits~20_combout\,
	datab => \state_mach|ALT_INV_check_destination_bits~19_combout\,
	datac => \state_mach|ALT_INV_LessThan31~0_combout\,
	datad => \state_mach|ALT_INV_i_direction~7_combout\,
	datae => \state_mach|ALT_INV_LessThan30~0_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~12_combout\,
	combout => \state_mach|i_direction~8_combout\);

-- Location: LABCELL_X18_Y4_N45
\state_mach|i_direction~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~45_combout\ = ( \state_mach|check_destination_bits~17_combout\ & ( \state_mach|i_current_floor[1]~DUPLICATE_q\ & ( (!\state_mach|check_destination_bits~0_combout\) # ((!\state_mach|check_destination_bits~1_combout\ & 
-- \state_mach|i_current_floor\(0))) ) ) ) # ( !\state_mach|check_destination_bits~17_combout\ & ( \state_mach|i_current_floor[1]~DUPLICATE_q\ & ( (!\state_mach|check_destination_bits~0_combout\) # ((!\state_mach|check_destination_bits~1_combout\ & 
-- \state_mach|i_current_floor\(0))) ) ) ) # ( \state_mach|check_destination_bits~17_combout\ & ( !\state_mach|i_current_floor[1]~DUPLICATE_q\ & ( (!\state_mach|check_destination_bits~0_combout\ & (\state_mach|i_current_floor\(0) & 
-- !\state_mach|check_destination_bits~18_combout\)) ) ) ) # ( !\state_mach|check_destination_bits~17_combout\ & ( !\state_mach|i_current_floor[1]~DUPLICATE_q\ & ( (!\state_mach|check_destination_bits~0_combout\ & 
-- !\state_mach|check_destination_bits~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000000010100000000010101110101011101010111010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_check_destination_bits~0_combout\,
	datab => \state_mach|ALT_INV_check_destination_bits~1_combout\,
	datac => \state_mach|ALT_INV_i_current_floor\(0),
	datad => \state_mach|ALT_INV_check_destination_bits~18_combout\,
	datae => \state_mach|ALT_INV_check_destination_bits~17_combout\,
	dataf => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	combout => \state_mach|i_direction~45_combout\);

-- Location: LABCELL_X19_Y6_N6
\state_mach|i_direction~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~36_combout\ = ( \state_mach|i_direction~45_combout\ & ( \state_mach|i_direction~1_combout\ & ( !\state_mach|check_destination_bits~14_combout\ ) ) ) # ( !\state_mach|i_direction~45_combout\ & ( \state_mach|i_direction~1_combout\ & 
-- ( !\state_mach|check_destination_bits~14_combout\ ) ) ) # ( \state_mach|i_direction~45_combout\ & ( !\state_mach|i_direction~1_combout\ & ( (!\state_mach|check_destination_bits~16_combout\ & !\state_mach|check_destination_bits~14_combout\) ) ) ) # ( 
-- !\state_mach|i_direction~45_combout\ & ( !\state_mach|i_direction~1_combout\ & ( (!\state_mach|check_destination_bits~16_combout\ & (!\state_mach|check_destination_bits~14_combout\ & ((\state_mach|i_current_floor\(2)) # 
-- (\state_mach|i_current_floor[3]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110000000000110011000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	datab => \state_mach|ALT_INV_check_destination_bits~16_combout\,
	datac => \state_mach|ALT_INV_i_current_floor\(2),
	datad => \state_mach|ALT_INV_check_destination_bits~14_combout\,
	datae => \state_mach|ALT_INV_i_direction~45_combout\,
	dataf => \state_mach|ALT_INV_i_direction~1_combout\,
	combout => \state_mach|i_direction~36_combout\);

-- Location: LABCELL_X19_Y6_N18
\state_mach|i_direction~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~37_combout\ = ( \state_mach|i_direction~3_combout\ & ( \state_mach|i_direction~36_combout\ & ( (!\state_mach|check_destination_bits~13_combout\ & ((!\state_mach|check_destination_bits~15_combout\) # 
-- (\state_mach|i_direction~5_combout\))) ) ) ) # ( !\state_mach|i_direction~3_combout\ & ( \state_mach|i_direction~36_combout\ & ( (!\state_mach|check_destination_bits~13_combout\ & ((!\state_mach|check_destination_bits~15_combout\) # 
-- (\state_mach|i_direction~5_combout\))) ) ) ) # ( \state_mach|i_direction~3_combout\ & ( !\state_mach|i_direction~36_combout\ & ( (!\state_mach|check_destination_bits~13_combout\ & ((!\state_mach|check_destination_bits~15_combout\) # 
-- (\state_mach|i_direction~5_combout\))) ) ) ) # ( !\state_mach|i_direction~3_combout\ & ( !\state_mach|i_direction~36_combout\ & ( (!\state_mach|check_destination_bits~13_combout\ & (((\state_mach|i_direction~2_combout\ & 
-- !\state_mach|check_destination_bits~15_combout\)) # (\state_mach|i_direction~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111100000000110011110000000011001111000000001100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_direction~2_combout\,
	datab => \state_mach|ALT_INV_check_destination_bits~15_combout\,
	datac => \state_mach|ALT_INV_i_direction~5_combout\,
	datad => \state_mach|ALT_INV_check_destination_bits~13_combout\,
	datae => \state_mach|ALT_INV_i_direction~3_combout\,
	dataf => \state_mach|ALT_INV_i_direction~36_combout\,
	combout => \state_mach|i_direction~37_combout\);

-- Location: LABCELL_X18_Y6_N48
\state_mach|check_destination_bits~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~48_combout\ = ( \state_mach|i_direction~8_combout\ & ( \state_mach|i_direction~37_combout\ & ( !\state_mach|check_destination_bits~21_combout\ ) ) ) # ( !\state_mach|i_direction~8_combout\ & ( 
-- \state_mach|i_direction~37_combout\ & ( (!\state_mach|check_destination_bits~12_combout\ & (!\state_mach|check_destination_bits~21_combout\)) # (\state_mach|check_destination_bits~12_combout\ & ((!\state_mach|destination~q\))) ) ) ) # ( 
-- \state_mach|i_direction~8_combout\ & ( !\state_mach|i_direction~37_combout\ & ( !\state_mach|check_destination_bits~21_combout\ ) ) ) # ( !\state_mach|i_direction~8_combout\ & ( !\state_mach|i_direction~37_combout\ & ( (!\state_mach|i_direction~6_combout\ 
-- & (((!\state_mach|destination~q\)))) # (\state_mach|i_direction~6_combout\ & ((!\state_mach|check_destination_bits~12_combout\ & (!\state_mach|check_destination_bits~21_combout\)) # (\state_mach|check_destination_bits~12_combout\ & 
-- ((!\state_mach|destination~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100101011001100101010101010101010101010110011001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_check_destination_bits~21_combout\,
	datab => \state_mach|ALT_INV_destination~q\,
	datac => \state_mach|ALT_INV_i_direction~6_combout\,
	datad => \state_mach|ALT_INV_check_destination_bits~12_combout\,
	datae => \state_mach|ALT_INV_i_direction~8_combout\,
	dataf => \state_mach|ALT_INV_i_direction~37_combout\,
	combout => \state_mach|check_destination_bits~48_combout\);

-- Location: LABCELL_X18_Y6_N6
\state_mach|i_direction~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~35_combout\ = ( !\state_mach|check_destination_bits~19_combout\ & ( \state_mach|check_destination_bits~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \state_mach|ALT_INV_check_destination_bits~12_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~19_combout\,
	combout => \state_mach|i_direction~35_combout\);

-- Location: LABCELL_X17_Y6_N36
\state_mach|i_direction~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~23_combout\ = ( \state_mach|i_direction~13_combout\ & ( \state_mach|i_direction~18_combout\ & ( \state_mach|i_direction~q\ ) ) ) # ( !\state_mach|i_direction~13_combout\ & ( \state_mach|i_direction~18_combout\ & ( 
-- \state_mach|i_direction~q\ ) ) ) # ( \state_mach|i_direction~13_combout\ & ( !\state_mach|i_direction~18_combout\ & ( \state_mach|i_direction~q\ ) ) ) # ( !\state_mach|i_direction~13_combout\ & ( !\state_mach|i_direction~18_combout\ & ( 
-- (\state_mach|i_direction~q\ & (((\state_mach|i_direction~22_combout\) # (\state_mach|i_direction~20_combout\)) # (\state_mach|i_direction~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_direction~q\,
	datab => \state_mach|ALT_INV_i_direction~15_combout\,
	datac => \state_mach|ALT_INV_i_direction~20_combout\,
	datad => \state_mach|ALT_INV_i_direction~22_combout\,
	datae => \state_mach|ALT_INV_i_direction~13_combout\,
	dataf => \state_mach|ALT_INV_i_direction~18_combout\,
	combout => \state_mach|i_direction~23_combout\);

-- Location: LABCELL_X17_Y6_N24
\state_mach|i_direction~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~38_combout\ = ( !\state_mach|i_direction~30_combout\ & ( !\state_mach|i_direction~32_combout\ & ( ((!\state_mach|i_direction~27_combout\ & ((!\state_mach|i_direction~25_combout\) # (!\state_mach|i_direction~24_combout\)))) # 
-- (\state_mach|check_destination_bits~32_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_direction~25_combout\,
	datab => \state_mach|ALT_INV_i_direction~27_combout\,
	datac => \state_mach|ALT_INV_i_direction~24_combout\,
	datad => \state_mach|ALT_INV_check_destination_bits~32_combout\,
	datae => \state_mach|ALT_INV_i_direction~30_combout\,
	dataf => \state_mach|ALT_INV_i_direction~32_combout\,
	combout => \state_mach|i_direction~38_combout\);

-- Location: LABCELL_X17_Y6_N54
\state_mach|i_direction~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|i_direction~39_combout\ = ( !\state_mach|i_direction~23_combout\ & ( \state_mach|i_direction~38_combout\ & ( (!\state_mach|i_direction~11_combout\ & !\state_mach|i_direction~33_combout\) ) ) ) # ( !\state_mach|i_direction~23_combout\ & ( 
-- !\state_mach|i_direction~38_combout\ & ( (!\state_mach|i_direction~11_combout\ & (((!\state_mach|i_direction~33_combout\) # (!\state_mach|check_destination_bits~31_combout\)) # (\f_control|i_destination_array\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010100010000000000000000010100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_direction~11_combout\,
	datab => \f_control|ALT_INV_i_destination_array\(1),
	datac => \state_mach|ALT_INV_i_direction~33_combout\,
	datad => \state_mach|ALT_INV_check_destination_bits~31_combout\,
	datae => \state_mach|ALT_INV_i_direction~23_combout\,
	dataf => \state_mach|ALT_INV_i_direction~38_combout\,
	combout => \state_mach|i_direction~39_combout\);

-- Location: LABCELL_X18_Y6_N54
\state_mach|check_destination_bits~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~49_combout\ = ( \state_mach|check_destination_bits~22_combout\ & ( !\state_mach|i_direction~39_combout\ & ( (!\state_mach|check_destination_bits~48_combout\) # ((\state_mach|i_direction~35_combout\ & 
-- ((!\state_mach|LessThan30~0_combout\) # (\state_mach|destination~q\)))) ) ) ) # ( !\state_mach|check_destination_bits~22_combout\ & ( !\state_mach|i_direction~39_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111100001111110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_destination~q\,
	datab => \state_mach|ALT_INV_LessThan30~0_combout\,
	datac => \state_mach|ALT_INV_check_destination_bits~48_combout\,
	datad => \state_mach|ALT_INV_i_direction~35_combout\,
	datae => \state_mach|ALT_INV_check_destination_bits~22_combout\,
	dataf => \state_mach|ALT_INV_i_direction~39_combout\,
	combout => \state_mach|check_destination_bits~49_combout\);

-- Location: LABCELL_X18_Y8_N42
\state_mach|check_destination_bits~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~40_combout\ = ( \state_mach|check_destination_bits~0_combout\ & ( \state_mach|LessThan23~0_combout\ & ( (\state_mach|check_destination_bits~1_combout\ & (\state_mach|check_destination_bits~2_combout\ & 
-- ((\state_mach|check_destination_bits~3_combout\) # (\state_mach|LessThan22~0_combout\)))) ) ) ) # ( \state_mach|check_destination_bits~0_combout\ & ( !\state_mach|LessThan23~0_combout\ & ( (\state_mach|check_destination_bits~1_combout\ & 
-- (\state_mach|LessThan22~0_combout\ & (!\state_mach|check_destination_bits~3_combout\ & \state_mach|check_destination_bits~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_check_destination_bits~1_combout\,
	datab => \state_mach|ALT_INV_LessThan22~0_combout\,
	datac => \state_mach|ALT_INV_check_destination_bits~3_combout\,
	datad => \state_mach|ALT_INV_check_destination_bits~2_combout\,
	datae => \state_mach|ALT_INV_check_destination_bits~0_combout\,
	dataf => \state_mach|ALT_INV_LessThan23~0_combout\,
	combout => \state_mach|check_destination_bits~40_combout\);

-- Location: LABCELL_X18_Y6_N36
\state_mach|check_destination_bits~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~41_combout\ = ( \state_mach|check_destination_bits~40_combout\ & ( (\state_mach|check_destination_bits~14_combout\ & (\state_mach|i_current_floor\(3) & ((!\state_mach|Add1~0_combout\) # 
-- (!\state_mach|check_destination_bits~5_combout\)))) ) ) # ( !\state_mach|check_destination_bits~40_combout\ & ( (!\state_mach|check_destination_bits~14_combout\) # ((\state_mach|i_current_floor\(3) & ((!\state_mach|Add1~0_combout\) # 
-- (!\state_mach|check_destination_bits~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111110110011001111111000000000001100100000000000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_Add1~0_combout\,
	datab => \state_mach|ALT_INV_check_destination_bits~14_combout\,
	datac => \state_mach|ALT_INV_check_destination_bits~5_combout\,
	datad => \state_mach|ALT_INV_i_current_floor\(3),
	dataf => \state_mach|ALT_INV_check_destination_bits~40_combout\,
	combout => \state_mach|check_destination_bits~41_combout\);

-- Location: LABCELL_X18_Y8_N18
\state_mach|check_destination_bits~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~38_combout\ = ( \state_mach|check_destination_bits~0_combout\ & ( \state_mach|LessThan23~0_combout\ & ( (\state_mach|check_destination_bits~1_combout\ & (!\state_mach|LessThan22~0_combout\ & 
-- (!\state_mach|check_destination_bits~3_combout\ & \state_mach|check_destination_bits~2_combout\))) ) ) ) # ( \state_mach|check_destination_bits~0_combout\ & ( !\state_mach|LessThan23~0_combout\ & ( (\state_mach|check_destination_bits~1_combout\ & 
-- (\state_mach|check_destination_bits~2_combout\ & ((!\state_mach|LessThan22~0_combout\) # (\state_mach|check_destination_bits~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100010100000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_check_destination_bits~1_combout\,
	datab => \state_mach|ALT_INV_LessThan22~0_combout\,
	datac => \state_mach|ALT_INV_check_destination_bits~3_combout\,
	datad => \state_mach|ALT_INV_check_destination_bits~2_combout\,
	datae => \state_mach|ALT_INV_check_destination_bits~0_combout\,
	dataf => \state_mach|ALT_INV_LessThan23~0_combout\,
	combout => \state_mach|check_destination_bits~38_combout\);

-- Location: LABCELL_X18_Y6_N18
\state_mach|check_destination_bits~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~39_combout\ = ( \state_mach|check_destination_bits~38_combout\ & ( (!\state_mach|check_destination_bits~14_combout\) # ((\state_mach|i_current_floor\(3) & ((!\state_mach|Add1~0_combout\) # 
-- (!\state_mach|check_destination_bits~5_combout\)))) ) ) # ( !\state_mach|check_destination_bits~38_combout\ & ( (\state_mach|check_destination_bits~14_combout\ & (\state_mach|i_current_floor\(3) & ((!\state_mach|Add1~0_combout\) # 
-- (!\state_mach|check_destination_bits~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110010000000000011001011001100111111101100110011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_Add1~0_combout\,
	datab => \state_mach|ALT_INV_check_destination_bits~14_combout\,
	datac => \state_mach|ALT_INV_check_destination_bits~5_combout\,
	datad => \state_mach|ALT_INV_i_current_floor\(3),
	dataf => \state_mach|ALT_INV_check_destination_bits~38_combout\,
	combout => \state_mach|check_destination_bits~39_combout\);

-- Location: LABCELL_X18_Y6_N15
\state_mach|check_destination_bits~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~81_combout\ = ( \state_mach|check_destination_bits~39_combout\ & ( (!\state_mach|check_destination_bits~15_combout\ & ((!\state_mach|check_destination_bits~41_combout\) # (\state_mach|destination~q\))) ) ) # ( 
-- !\state_mach|check_destination_bits~39_combout\ & ( (!\state_mach|check_destination_bits~15_combout\ & !\state_mach|check_destination_bits~41_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000001100001111000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \state_mach|ALT_INV_destination~q\,
	datac => \state_mach|ALT_INV_check_destination_bits~15_combout\,
	datad => \state_mach|ALT_INV_check_destination_bits~41_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~39_combout\,
	combout => \state_mach|check_destination_bits~81_combout\);

-- Location: LABCELL_X18_Y4_N54
\state_mach|check_destination_bits~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~44_combout\ = ( \state_mach|i_current_floor\(2) & ( \state_mach|check_destination_bits~6_combout\ & ( (\state_mach|check_destination_bits~7_combout\ & (!\state_mach|check_destination_bits~8_combout\ & 
-- !\state_mach|i_current_floor[3]~DUPLICATE_q\)) ) ) ) # ( !\state_mach|i_current_floor\(2) & ( \state_mach|check_destination_bits~6_combout\ & ( (\state_mach|check_destination_bits~7_combout\ & (!\state_mach|check_destination_bits~8_combout\ & 
-- ((!\state_mach|i_current_floor[1]~DUPLICATE_q\) # (!\state_mach|i_current_floor[3]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	datab => \state_mach|ALT_INV_check_destination_bits~7_combout\,
	datac => \state_mach|ALT_INV_check_destination_bits~8_combout\,
	datad => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	datae => \state_mach|ALT_INV_i_current_floor\(2),
	dataf => \state_mach|ALT_INV_check_destination_bits~6_combout\,
	combout => \state_mach|check_destination_bits~44_combout\);

-- Location: LABCELL_X18_Y4_N12
\state_mach|check_destination_bits~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~43_combout\ = ( \state_mach|check_destination_bits~6_combout\ & ( (!\state_mach|check_destination_bits~7_combout\) # (!\state_mach|check_destination_bits~8_combout\) ) ) # ( !\state_mach|check_destination_bits~6_combout\ 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111100111111001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \state_mach|ALT_INV_check_destination_bits~7_combout\,
	datac => \state_mach|ALT_INV_check_destination_bits~8_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~6_combout\,
	combout => \state_mach|check_destination_bits~43_combout\);

-- Location: LABCELL_X18_Y4_N39
\state_mach|check_destination_bits~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~45_combout\ = ( \state_mach|check_destination_bits~44_combout\ & ( \state_mach|check_destination_bits~43_combout\ ) ) # ( \state_mach|check_destination_bits~44_combout\ & ( !\state_mach|check_destination_bits~43_combout\ 
-- & ( ((!\state_mach|LessThan28~0_combout\ & \state_mach|check_destination_bits~10_combout\)) # (\state_mach|check_destination_bits~9_combout\) ) ) ) # ( !\state_mach|check_destination_bits~44_combout\ & ( !\state_mach|check_destination_bits~43_combout\ & ( 
-- (!\state_mach|check_destination_bits~9_combout\ & (!\state_mach|LessThan28~0_combout\ & ((\state_mach|check_destination_bits~10_combout\)))) # (\state_mach|check_destination_bits~9_combout\ & (((!\state_mach|LessThan27~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011011000010101011101110100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_check_destination_bits~9_combout\,
	datab => \state_mach|ALT_INV_LessThan28~0_combout\,
	datac => \state_mach|ALT_INV_LessThan27~0_combout\,
	datad => \state_mach|ALT_INV_check_destination_bits~10_combout\,
	datae => \state_mach|ALT_INV_check_destination_bits~44_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~43_combout\,
	combout => \state_mach|check_destination_bits~45_combout\);

-- Location: LABCELL_X17_Y8_N57
\state_mach|check_destination_bits~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~33_combout\ = ( !\state_mach|i_current_floor\(3) & ( (!\state_mach|i_current_floor\(2)) # ((!\state_mach|i_current_floor\(0) & !\state_mach|i_current_floor[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011110000111111001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \state_mach|ALT_INV_i_current_floor\(0),
	datac => \state_mach|ALT_INV_i_current_floor\(2),
	datad => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	dataf => \state_mach|ALT_INV_i_current_floor\(3),
	combout => \state_mach|check_destination_bits~33_combout\);

-- Location: LABCELL_X17_Y8_N36
\state_mach|check_destination_bits~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~34_combout\ = ( \state_mach|check_destination_bits~33_combout\ & ( \state_mach|check_destination_bits~0_combout\ & ( (!\state_mach|check_destination_bits~1_combout\ & !\f_control|Decoder1~0_combout\) ) ) ) # ( 
-- !\state_mach|check_destination_bits~33_combout\ & ( \state_mach|check_destination_bits~0_combout\ & ( (!\f_control|Decoder1~0_combout\) # (\state_mach|check_destination_bits~1_combout\) ) ) ) # ( \state_mach|check_destination_bits~33_combout\ & ( 
-- !\state_mach|check_destination_bits~0_combout\ & ( (\state_mach|check_destination_bits~18_combout\ & !\state_mach|LessThan19~0_combout\) ) ) ) # ( !\state_mach|check_destination_bits~33_combout\ & ( !\state_mach|check_destination_bits~0_combout\ & ( 
-- (\state_mach|check_destination_bits~18_combout\ & !\state_mach|LessThan19~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011011101110111011000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_check_destination_bits~1_combout\,
	datab => \f_control|ALT_INV_Decoder1~0_combout\,
	datac => \state_mach|ALT_INV_check_destination_bits~18_combout\,
	datad => \state_mach|ALT_INV_LessThan19~0_combout\,
	datae => \state_mach|ALT_INV_check_destination_bits~33_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~0_combout\,
	combout => \state_mach|check_destination_bits~34_combout\);

-- Location: LABCELL_X18_Y8_N48
\state_mach|check_destination_bits~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~35_combout\ = ( \f_control|i_floor_call_array_down\(0) & ( \state_mach|i_current_floor\(0) ) ) # ( !\f_control|i_floor_call_array_down\(0) & ( \state_mach|i_current_floor\(0) & ( \f_control|i_floor_call_array_up\(0) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \f_control|ALT_INV_i_floor_call_array_up\(0),
	datae => \f_control|ALT_INV_i_floor_call_array_down\(0),
	dataf => \state_mach|ALT_INV_i_current_floor\(0),
	combout => \state_mach|check_destination_bits~35_combout\);

-- Location: LABCELL_X17_Y8_N18
\state_mach|check_destination_bits~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~36_combout\ = ( \state_mach|destination~q\ & ( \f_control|Decoder1~0_combout\ & ( (!\state_mach|LessThan19~0_combout\ & \state_mach|check_destination_bits~18_combout\) ) ) ) # ( !\state_mach|destination~q\ & ( 
-- \f_control|Decoder1~0_combout\ & ( (!\state_mach|check_destination_bits~18_combout\ & (((\state_mach|check_destination_bits~35_combout\)) # (\state_mach|i_current_floor[1]~DUPLICATE_q\))) # (\state_mach|check_destination_bits~18_combout\ & 
-- (((!\state_mach|LessThan19~0_combout\)))) ) ) ) # ( \state_mach|destination~q\ & ( !\f_control|Decoder1~0_combout\ & ( (!\state_mach|LessThan19~0_combout\ & \state_mach|check_destination_bits~18_combout\) ) ) ) # ( !\state_mach|destination~q\ & ( 
-- !\f_control|Decoder1~0_combout\ & ( (!\state_mach|LessThan19~0_combout\) # (!\state_mach|check_destination_bits~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100000011000000110001011100111111000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	datab => \state_mach|ALT_INV_LessThan19~0_combout\,
	datac => \state_mach|ALT_INV_check_destination_bits~18_combout\,
	datad => \state_mach|ALT_INV_check_destination_bits~35_combout\,
	datae => \state_mach|ALT_INV_destination~q\,
	dataf => \f_control|ALT_INV_Decoder1~0_combout\,
	combout => \state_mach|check_destination_bits~36_combout\);

-- Location: LABCELL_X17_Y8_N51
\state_mach|check_destination_bits~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~37_combout\ = ( \state_mach|check_destination_bits~33_combout\ & ( \state_mach|check_destination_bits~36_combout\ & ( (\state_mach|check_destination_bits~0_combout\ & ((\state_mach|check_destination_bits~1_combout\) # 
-- (\f_control|Decoder1~0_combout\))) ) ) ) # ( !\state_mach|check_destination_bits~33_combout\ & ( \state_mach|check_destination_bits~36_combout\ & ( (\f_control|Decoder1~0_combout\ & (!\state_mach|check_destination_bits~1_combout\ & 
-- \state_mach|check_destination_bits~0_combout\)) ) ) ) # ( \state_mach|check_destination_bits~33_combout\ & ( !\state_mach|check_destination_bits~36_combout\ & ( ((!\state_mach|check_destination_bits~0_combout\) # 
-- (\state_mach|check_destination_bits~1_combout\)) # (\f_control|Decoder1~0_combout\) ) ) ) # ( !\state_mach|check_destination_bits~33_combout\ & ( !\state_mach|check_destination_bits~36_combout\ & ( (!\state_mach|check_destination_bits~0_combout\) # 
-- ((\f_control|Decoder1~0_combout\ & !\state_mach|check_destination_bits~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110000111111110011111100000000001100000000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \f_control|ALT_INV_Decoder1~0_combout\,
	datac => \state_mach|ALT_INV_check_destination_bits~1_combout\,
	datad => \state_mach|ALT_INV_check_destination_bits~0_combout\,
	datae => \state_mach|ALT_INV_check_destination_bits~33_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~36_combout\,
	combout => \state_mach|check_destination_bits~37_combout\);

-- Location: LABCELL_X18_Y4_N9
\state_mach|check_destination_bits~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~42_combout\ = ( \state_mach|check_destination_bits~6_combout\ & ( (\state_mach|check_destination_bits~8_combout\ & (\state_mach|check_destination_bits~7_combout\ & (!\state_mach|check_destination_bits~10_combout\ & 
-- !\state_mach|check_destination_bits~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_check_destination_bits~8_combout\,
	datab => \state_mach|ALT_INV_check_destination_bits~7_combout\,
	datac => \state_mach|ALT_INV_check_destination_bits~10_combout\,
	datad => \state_mach|ALT_INV_check_destination_bits~9_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~6_combout\,
	combout => \state_mach|check_destination_bits~42_combout\);

-- Location: LABCELL_X18_Y4_N24
\state_mach|check_destination_bits~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~84_combout\ = ( \state_mach|i_current_floor\(2) & ( \state_mach|check_destination_bits~6_combout\ & ( (!\state_mach|check_destination_bits~8_combout\ & \state_mach|check_destination_bits~7_combout\) ) ) ) # ( 
-- !\state_mach|i_current_floor\(2) & ( \state_mach|check_destination_bits~6_combout\ & ( (\state_mach|i_current_floor[1]~DUPLICATE_q\ & (!\state_mach|check_destination_bits~8_combout\ & \state_mach|check_destination_bits~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	datac => \state_mach|ALT_INV_check_destination_bits~8_combout\,
	datad => \state_mach|ALT_INV_check_destination_bits~7_combout\,
	datae => \state_mach|ALT_INV_i_current_floor\(2),
	dataf => \state_mach|ALT_INV_check_destination_bits~6_combout\,
	combout => \state_mach|check_destination_bits~84_combout\);

-- Location: LABCELL_X17_Y4_N39
\state_mach|check_destination_bits~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~85_combout\ = ( !\state_mach|check_destination_bits~9_combout\ & ( (\state_mach|i_current_floor[3]~DUPLICATE_q\ & ((!\state_mach|check_destination_bits~43_combout\ & (\state_mach|check_destination_bits~10_combout\ & 
-- (\state_mach|i_current_floor\(2)))) # (\state_mach|check_destination_bits~43_combout\ & (((\state_mach|check_destination_bits~84_combout\)))))) ) ) # ( \state_mach|check_destination_bits~9_combout\ & ( ((!\state_mach|check_destination_bits~43_combout\ & 
-- (((\state_mach|i_current_floor[3]~DUPLICATE_q\ & \state_mach|check_destination_bits~84_combout\)) # (\state_mach|LessThan27~0_combout\))) # (\state_mach|check_destination_bits~43_combout\ & (((\state_mach|i_current_floor[3]~DUPLICATE_q\ & 
-- \state_mach|check_destination_bits~84_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000100000011000000110000000000001101110000110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_check_destination_bits~10_combout\,
	datab => \state_mach|ALT_INV_check_destination_bits~43_combout\,
	datac => \state_mach|ALT_INV_LessThan27~0_combout\,
	datad => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	datae => \state_mach|ALT_INV_check_destination_bits~9_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~84_combout\,
	datag => \state_mach|ALT_INV_i_current_floor\(2),
	combout => \state_mach|check_destination_bits~85_combout\);

-- Location: LABCELL_X18_Y6_N9
\state_mach|check_destination_bits~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~79_combout\ = ( \state_mach|check_destination_bits~85_combout\ & ( ((!\state_mach|i_direction~7_combout\ & \state_mach|check_destination_bits~42_combout\)) # (\state_mach|destination~q\) ) ) # ( 
-- !\state_mach|check_destination_bits~85_combout\ & ( (\state_mach|check_destination_bits~42_combout\ & ((!\state_mach|i_direction~7_combout\) # (\state_mach|destination~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110011000000001111001100110011111100110011001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \state_mach|ALT_INV_destination~q\,
	datac => \state_mach|ALT_INV_i_direction~7_combout\,
	datad => \state_mach|ALT_INV_check_destination_bits~42_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~85_combout\,
	combout => \state_mach|check_destination_bits~79_combout\);

-- Location: LABCELL_X18_Y6_N42
\state_mach|check_destination_bits~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~80_combout\ = ( \state_mach|check_destination_bits~37_combout\ & ( !\state_mach|check_destination_bits~79_combout\ & ( (\state_mach|check_destination_bits~16_combout\) # (\state_mach|check_destination_bits~15_combout\) ) 
-- ) ) # ( !\state_mach|check_destination_bits~37_combout\ & ( !\state_mach|check_destination_bits~79_combout\ & ( (!\state_mach|destination~q\) # (((!\state_mach|check_destination_bits~34_combout\) # (\state_mach|check_destination_bits~16_combout\)) # 
-- (\state_mach|check_destination_bits~15_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111111111001100111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_destination~q\,
	datab => \state_mach|ALT_INV_check_destination_bits~15_combout\,
	datac => \state_mach|ALT_INV_check_destination_bits~34_combout\,
	datad => \state_mach|ALT_INV_check_destination_bits~16_combout\,
	datae => \state_mach|ALT_INV_check_destination_bits~37_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~79_combout\,
	combout => \state_mach|check_destination_bits~80_combout\);

-- Location: LABCELL_X18_Y6_N24
\state_mach|check_destination_bits~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~46_combout\ = ( \state_mach|i_direction~34_combout\ & ( \state_mach|check_destination_bits~80_combout\ & ( (!\state_mach|check_destination_bits~81_combout\ & !\state_mach|check_destination_bits~45_combout\) ) ) ) # ( 
-- !\state_mach|i_direction~34_combout\ & ( \state_mach|check_destination_bits~80_combout\ & ( (!\state_mach|i_direction~11_combout\ & ((!\state_mach|i_direction~23_combout\) # ((!\state_mach|check_destination_bits~81_combout\ & 
-- !\state_mach|check_destination_bits~45_combout\)))) # (\state_mach|i_direction~11_combout\ & (!\state_mach|check_destination_bits~81_combout\ & ((!\state_mach|check_destination_bits~45_combout\)))) ) ) ) # ( !\state_mach|i_direction~34_combout\ & ( 
-- !\state_mach|check_destination_bits~80_combout\ & ( (!\state_mach|i_direction~11_combout\ & !\state_mach|i_direction~23_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000000000000000011101100101000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_direction~11_combout\,
	datab => \state_mach|ALT_INV_check_destination_bits~81_combout\,
	datac => \state_mach|ALT_INV_i_direction~23_combout\,
	datad => \state_mach|ALT_INV_check_destination_bits~45_combout\,
	datae => \state_mach|ALT_INV_i_direction~34_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~80_combout\,
	combout => \state_mach|check_destination_bits~46_combout\);

-- Location: LABCELL_X18_Y6_N30
\state_mach|check_destination_bits~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|check_destination_bits~50_combout\ = ( !\state_mach|check_destination_bits~49_combout\ & ( \state_mach|check_destination_bits~46_combout\ & ( (!\state_mach|check_destination_bits~23_combout\) # ((!\state_mach|i_direction~9_combout\ & 
-- !\state_mach|check_destination_bits~47_combout\)) ) ) ) # ( !\state_mach|check_destination_bits~49_combout\ & ( !\state_mach|check_destination_bits~46_combout\ & ( (!\state_mach|check_destination_bits~23_combout\) # 
-- ((\state_mach|check_destination_bits~12_combout\ & (!\state_mach|i_direction~9_combout\ & !\state_mach|check_destination_bits~47_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101010101010000000000000000011111010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_check_destination_bits~23_combout\,
	datab => \state_mach|ALT_INV_check_destination_bits~12_combout\,
	datac => \state_mach|ALT_INV_i_direction~9_combout\,
	datad => \state_mach|ALT_INV_check_destination_bits~47_combout\,
	datae => \state_mach|ALT_INV_check_destination_bits~49_combout\,
	dataf => \state_mach|ALT_INV_check_destination_bits~46_combout\,
	combout => \state_mach|check_destination_bits~50_combout\);

-- Location: FF_X18_Y6_N32
\state_mach|i_direction\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \state_mach|check_destination_bits~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_mach|i_direction~q\);

-- Location: LABCELL_X18_Y3_N0
\state_mach|floor_stop~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|floor_stop~0_combout\ = ( \state_mach|Mux0~4_combout\ & ( \state_mach|Mux1~4_combout\ ) ) # ( !\state_mach|Mux0~4_combout\ & ( \state_mach|Mux1~4_combout\ & ( (!\state_mach|i_direction~q\) # ((!\state_mach|current_state.idle~q\) # 
-- ((!\state_mach|destination~q\) # (\state_mach|Mux2~4_combout\))) ) ) ) # ( \state_mach|Mux0~4_combout\ & ( !\state_mach|Mux1~4_combout\ ) ) # ( !\state_mach|Mux0~4_combout\ & ( !\state_mach|Mux1~4_combout\ & ( (\state_mach|Mux2~4_combout\ & 
-- (((!\state_mach|current_state.idle~q\) # (!\state_mach|destination~q\)) # (\state_mach|i_direction~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001101111111111111111111111111111011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_direction~q\,
	datab => \state_mach|ALT_INV_current_state.idle~q\,
	datac => \state_mach|ALT_INV_Mux2~4_combout\,
	datad => \state_mach|ALT_INV_destination~q\,
	datae => \state_mach|ALT_INV_Mux0~4_combout\,
	dataf => \state_mach|ALT_INV_Mux1~4_combout\,
	combout => \state_mach|floor_stop~0_combout\);

-- Location: FF_X18_Y3_N2
\state_mach|floor_stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \state_mach|floor_stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_mach|floor_stop~q\);

-- Location: FF_X18_Y3_N26
\state_mach|floor_call\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	asdata => \state_mach|check_destination_bits~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_mach|floor_call~q\);

-- Location: LABCELL_X18_Y3_N24
\state_mach|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|Selector2~0_combout\ = ( \state_mach|destination~q\ & ( (!\state_mach|current_state.idle~q\ & !\state_mach|floor_stop~q\) ) ) # ( !\state_mach|destination~q\ & ( (!\state_mach|current_state.idle~q\ & (!\state_mach|floor_stop~q\ & 
-- \state_mach|floor_call~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \state_mach|ALT_INV_current_state.idle~q\,
	datac => \state_mach|ALT_INV_floor_stop~q\,
	datad => \state_mach|ALT_INV_floor_call~q\,
	dataf => \state_mach|ALT_INV_destination~q\,
	combout => \state_mach|Selector2~0_combout\);

-- Location: LABCELL_X18_Y3_N48
\state_mach|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|Selector1~1_combout\ = ( \state_mach|Selector1~0_combout\ ) # ( !\state_mach|Selector1~0_combout\ & ( (\state_mach|Selector2~0_combout\ & !\state_mach|i_direction~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \state_mach|ALT_INV_Selector2~0_combout\,
	datad => \state_mach|ALT_INV_i_direction~q\,
	dataf => \state_mach|ALT_INV_Selector1~0_combout\,
	combout => \state_mach|Selector1~1_combout\);

-- Location: FF_X19_Y4_N13
\state_mach|current_state.up\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	asdata => \state_mach|Selector1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_mach|current_state.up~q\);

-- Location: LABCELL_X18_Y3_N54
\state_mach|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|Selector3~0_combout\ = ( \state_mach|current_state.down~q\ & ( \state_mach|floor_stop~q\ ) ) # ( !\state_mach|current_state.down~q\ & ( \state_mach|floor_stop~q\ & ( ((!\state_mach|current_state.idle~q\ & (\state_mach|floor_call~q\ & 
-- !\state_mach|destination~q\))) # (\state_mach|current_state.up~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.up~q\,
	datab => \state_mach|ALT_INV_current_state.idle~q\,
	datac => \state_mach|ALT_INV_floor_call~q\,
	datad => \state_mach|ALT_INV_destination~q\,
	datae => \state_mach|ALT_INV_current_state.down~q\,
	dataf => \state_mach|ALT_INV_floor_stop~q\,
	combout => \state_mach|Selector3~0_combout\);

-- Location: FF_X18_Y3_N56
\state_mach|current_state.loading\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \state_mach|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_mach|current_state.loading~q\);

-- Location: LABCELL_X18_Y3_N36
\state_mach|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state_mach|Selector0~0_combout\ = ( \state_mach|floor_call~q\ & ( (!\state_mach|destination~q\ & (!\state_mach|current_state.loading~q\)) # (\state_mach|destination~q\ & ((!\state_mach|floor_stop~q\) # ((!\state_mach|current_state.loading~q\ & 
-- \state_mach|current_state.idle~q\)))) ) ) # ( !\state_mach|floor_call~q\ & ( (!\state_mach|current_state.loading~q\ & (((!\state_mach|floor_stop~q\ & \state_mach|destination~q\)) # (\state_mach|current_state.idle~q\))) # 
-- (\state_mach|current_state.loading~q\ & (((!\state_mach|floor_stop~q\ & \state_mach|destination~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001011110010001000101111001010101010111100101010101011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.loading~q\,
	datab => \state_mach|ALT_INV_current_state.idle~q\,
	datac => \state_mach|ALT_INV_floor_stop~q\,
	datad => \state_mach|ALT_INV_destination~q\,
	dataf => \state_mach|ALT_INV_floor_call~q\,
	combout => \state_mach|Selector0~0_combout\);

-- Location: FF_X17_Y5_N1
\state_mach|current_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	asdata => \state_mach|Selector0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_mach|current_state.idle~q\);

-- Location: MLABCELL_X15_Y5_N15
\hexF|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexF|Mux6~0_combout\ = ( !\state_mach|i_current_floor[1]~DUPLICATE_q\ & ( \state_mach|i_current_floor[2]~DUPLICATE_q\ & ( (!\state_mach|i_current_floor\(0)) # (\state_mach|i_current_floor[3]~DUPLICATE_q\) ) ) ) # ( 
-- \state_mach|i_current_floor[1]~DUPLICATE_q\ & ( !\state_mach|i_current_floor[2]~DUPLICATE_q\ & ( (\state_mach|i_current_floor[3]~DUPLICATE_q\ & \state_mach|i_current_floor\(0)) ) ) ) # ( !\state_mach|i_current_floor[1]~DUPLICATE_q\ & ( 
-- !\state_mach|i_current_floor[2]~DUPLICATE_q\ & ( (!\state_mach|i_current_floor[3]~DUPLICATE_q\ & \state_mach|i_current_floor\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000000101010111111111010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	datad => \state_mach|ALT_INV_i_current_floor\(0),
	datae => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	dataf => \state_mach|ALT_INV_i_current_floor[2]~DUPLICATE_q\,
	combout => \hexF|Mux6~0_combout\);

-- Location: MLABCELL_X21_Y5_N24
\hexF|segs[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexF|segs[0]~0_combout\ = ( \hexF|Mux6~0_combout\ ) # ( !\hexF|Mux6~0_combout\ & ( (!\state_mach|current_state.idle~q\) # (!\state_mach|current_state.up~q\ $ (\state_mach|current_state.down~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011001111111111111111111111111100110011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \state_mach|ALT_INV_current_state.idle~q\,
	datac => \state_mach|ALT_INV_current_state.up~q\,
	datad => \state_mach|ALT_INV_current_state.down~q\,
	datae => \hexF|ALT_INV_Mux6~0_combout\,
	combout => \hexF|segs[0]~0_combout\);

-- Location: MLABCELL_X21_Y5_N6
\hexF|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexF|Mux5~0_combout\ = ( \state_mach|i_current_floor\(0) & ( \state_mach|i_current_floor\(2) & ( !\state_mach|i_current_floor\(3) $ (\state_mach|i_current_floor[1]~DUPLICATE_q\) ) ) ) # ( !\state_mach|i_current_floor\(0) & ( 
-- \state_mach|i_current_floor\(2) & ( (\state_mach|i_current_floor[1]~DUPLICATE_q\) # (\state_mach|i_current_floor\(3)) ) ) ) # ( \state_mach|i_current_floor\(0) & ( !\state_mach|i_current_floor\(2) & ( (\state_mach|i_current_floor\(3) & 
-- \state_mach|i_current_floor[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010101011111010111111010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor\(3),
	datac => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	datae => \state_mach|ALT_INV_i_current_floor\(0),
	dataf => \state_mach|ALT_INV_i_current_floor\(2),
	combout => \hexF|Mux5~0_combout\);

-- Location: MLABCELL_X21_Y5_N12
\hexF|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexF|Mux5~1_combout\ = ( \state_mach|current_state.up~q\ & ( \hexF|Mux5~0_combout\ ) ) # ( !\state_mach|current_state.up~q\ & ( \hexF|Mux5~0_combout\ ) ) # ( \state_mach|current_state.up~q\ & ( !\hexF|Mux5~0_combout\ & ( 
-- (!\state_mach|current_state.idle~q\) # (\state_mach|current_state.down~q\) ) ) ) # ( !\state_mach|current_state.up~q\ & ( !\hexF|Mux5~0_combout\ & ( (!\state_mach|current_state.idle~q\) # (!\state_mach|current_state.down~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100110011001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \state_mach|ALT_INV_current_state.idle~q\,
	datad => \state_mach|ALT_INV_current_state.down~q\,
	datae => \state_mach|ALT_INV_current_state.up~q\,
	dataf => \hexF|ALT_INV_Mux5~0_combout\,
	combout => \hexF|Mux5~1_combout\);

-- Location: MLABCELL_X21_Y4_N24
\hexF|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexF|Mux4~0_combout\ = ( \state_mach|i_current_floor[1]~DUPLICATE_q\ & ( (!\state_mach|i_current_floor\(2) & (!\state_mach|i_current_floor\(0) & !\state_mach|i_current_floor[3]~DUPLICATE_q\)) # (\state_mach|i_current_floor\(2) & 
-- ((\state_mach|i_current_floor[3]~DUPLICATE_q\))) ) ) # ( !\state_mach|i_current_floor[1]~DUPLICATE_q\ & ( (!\state_mach|i_current_floor\(0) & (\state_mach|i_current_floor\(2) & \state_mach|i_current_floor[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011000000000011111100000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \state_mach|ALT_INV_i_current_floor\(0),
	datac => \state_mach|ALT_INV_i_current_floor\(2),
	datad => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	dataf => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	combout => \hexF|Mux4~0_combout\);

-- Location: MLABCELL_X21_Y4_N27
\hexF|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexF|Mux4~1_combout\ = ( \hexF|Mux4~0_combout\ ) # ( !\hexF|Mux4~0_combout\ & ( (!\state_mach|current_state.idle~q\) # (!\state_mach|current_state.down~q\ $ (\state_mach|current_state.up~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010101111111110101010111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.idle~q\,
	datac => \state_mach|ALT_INV_current_state.down~q\,
	datad => \state_mach|ALT_INV_current_state.up~q\,
	dataf => \hexF|ALT_INV_Mux4~0_combout\,
	combout => \hexF|Mux4~1_combout\);

-- Location: MLABCELL_X21_Y4_N9
\hexF|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexF|Mux3~0_combout\ = ( \state_mach|i_current_floor\(2) & ( (!\state_mach|i_current_floor\(0) & (!\state_mach|i_current_floor[1]~DUPLICATE_q\ & !\state_mach|i_current_floor[3]~DUPLICATE_q\)) # (\state_mach|i_current_floor\(0) & 
-- (\state_mach|i_current_floor[1]~DUPLICATE_q\)) ) ) # ( !\state_mach|i_current_floor\(2) & ( (!\state_mach|i_current_floor\(0) & (\state_mach|i_current_floor[1]~DUPLICATE_q\ & \state_mach|i_current_floor[3]~DUPLICATE_q\)) # (\state_mach|i_current_floor\(0) 
-- & (!\state_mach|i_current_floor[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111100001100000011110011000011000000111100001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \state_mach|ALT_INV_i_current_floor\(0),
	datac => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	datad => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	dataf => \state_mach|ALT_INV_i_current_floor\(2),
	combout => \hexF|Mux3~0_combout\);

-- Location: MLABCELL_X21_Y4_N6
\hexF|segs[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexF|segs[3]~1_combout\ = ( \hexF|Mux3~0_combout\ & ( (!\state_mach|current_state.idle~q\) # ((\state_mach|current_state.up~q\) # (\state_mach|current_state.down~q\)) ) ) # ( !\hexF|Mux3~0_combout\ & ( (!\state_mach|current_state.idle~q\) # 
-- ((\state_mach|current_state.down~q\ & \state_mach|current_state.up~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101111101010101010111110101111111111111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.idle~q\,
	datac => \state_mach|ALT_INV_current_state.down~q\,
	datad => \state_mach|ALT_INV_current_state.up~q\,
	dataf => \hexF|ALT_INV_Mux3~0_combout\,
	combout => \hexF|segs[3]~1_combout\);

-- Location: MLABCELL_X21_Y4_N51
\hexF|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexF|Mux2~0_combout\ = ( \state_mach|i_current_floor\(2) & ( (!\state_mach|i_current_floor[3]~DUPLICATE_q\ & ((!\state_mach|i_current_floor[1]~DUPLICATE_q\) # (\state_mach|i_current_floor\(0)))) ) ) # ( !\state_mach|i_current_floor\(2) & ( 
-- (\state_mach|i_current_floor\(0) & ((!\state_mach|i_current_floor[1]~DUPLICATE_q\) # (!\state_mach|i_current_floor[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110011001111000000001100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	datac => \state_mach|ALT_INV_i_current_floor\(0),
	datad => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	dataf => \state_mach|ALT_INV_i_current_floor\(2),
	combout => \hexF|Mux2~0_combout\);

-- Location: MLABCELL_X21_Y4_N48
\hexF|segs[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexF|segs[4]~2_combout\ = ( \hexF|Mux2~0_combout\ & ( (!\state_mach|current_state.idle~q\) # ((\state_mach|current_state.up~q\) # (\state_mach|current_state.down~q\)) ) ) # ( !\hexF|Mux2~0_combout\ & ( (!\state_mach|current_state.idle~q\) # 
-- ((\state_mach|current_state.down~q\ & \state_mach|current_state.up~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101111101010101010111110101111111111111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.idle~q\,
	datac => \state_mach|ALT_INV_current_state.down~q\,
	datad => \state_mach|ALT_INV_current_state.up~q\,
	dataf => \hexF|ALT_INV_Mux2~0_combout\,
	combout => \hexF|segs[4]~2_combout\);

-- Location: MLABCELL_X21_Y4_N33
\hexF|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexF|Mux1~0_combout\ = ( \state_mach|i_current_floor\(2) & ( (!\state_mach|i_current_floor[1]~DUPLICATE_q\ & ((\state_mach|i_current_floor[3]~DUPLICATE_q\))) # (\state_mach|i_current_floor[1]~DUPLICATE_q\ & (\state_mach|i_current_floor\(0) & 
-- !\state_mach|i_current_floor[3]~DUPLICATE_q\)) ) ) # ( !\state_mach|i_current_floor\(2) & ( (!\state_mach|i_current_floor[3]~DUPLICATE_q\ & ((\state_mach|i_current_floor\(0)) # (\state_mach|i_current_floor[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100000000001111110000000000000011110011000000001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	datac => \state_mach|ALT_INV_i_current_floor\(0),
	datad => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	dataf => \state_mach|ALT_INV_i_current_floor\(2),
	combout => \hexF|Mux1~0_combout\);

-- Location: MLABCELL_X21_Y4_N30
\hexF|segs[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexF|segs[5]~3_combout\ = ( \hexF|Mux1~0_combout\ & ( (!\state_mach|current_state.idle~q\) # ((\state_mach|current_state.up~q\) # (\state_mach|current_state.down~q\)) ) ) # ( !\hexF|Mux1~0_combout\ & ( (!\state_mach|current_state.idle~q\) # 
-- ((\state_mach|current_state.down~q\ & \state_mach|current_state.up~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101111101010101010111110101111111111111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.idle~q\,
	datac => \state_mach|ALT_INV_current_state.down~q\,
	datad => \state_mach|ALT_INV_current_state.up~q\,
	dataf => \hexF|ALT_INV_Mux1~0_combout\,
	combout => \hexF|segs[5]~3_combout\);

-- Location: MLABCELL_X21_Y4_N3
\hexF|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexF|Mux0~0_combout\ = ( \state_mach|i_current_floor\(0) & ( (!\state_mach|i_current_floor[3]~DUPLICATE_q\ & (!\state_mach|i_current_floor[1]~DUPLICATE_q\ $ (\state_mach|i_current_floor\(2)))) ) ) # ( !\state_mach|i_current_floor\(0) & ( 
-- (!\state_mach|i_current_floor[3]~DUPLICATE_q\ & (!\state_mach|i_current_floor[1]~DUPLICATE_q\ & !\state_mach|i_current_floor\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000010100000101000001010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_i_current_floor[3]~DUPLICATE_q\,
	datab => \state_mach|ALT_INV_i_current_floor[1]~DUPLICATE_q\,
	datac => \state_mach|ALT_INV_i_current_floor\(2),
	dataf => \state_mach|ALT_INV_i_current_floor\(0),
	combout => \hexF|Mux0~0_combout\);

-- Location: MLABCELL_X21_Y4_N54
\hexF|segs[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \hexF|segs[6]~4_combout\ = ( !\state_mach|current_state.up~q\ & ( \state_mach|current_state.down~q\ & ( (\state_mach|current_state.idle~q\ & \hexF|Mux0~0_combout\) ) ) ) # ( \state_mach|current_state.up~q\ & ( !\state_mach|current_state.down~q\ & ( 
-- (\state_mach|current_state.idle~q\ & \hexF|Mux0~0_combout\) ) ) ) # ( !\state_mach|current_state.up~q\ & ( !\state_mach|current_state.down~q\ & ( \state_mach|current_state.idle~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000001010000010100000101000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_mach|ALT_INV_current_state.idle~q\,
	datac => \hexF|ALT_INV_Mux0~0_combout\,
	datae => \state_mach|ALT_INV_current_state.up~q\,
	dataf => \state_mach|ALT_INV_current_state.down~q\,
	combout => \hexF|segs[6]~4_combout\);

-- Location: LABCELL_X1_Y7_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


