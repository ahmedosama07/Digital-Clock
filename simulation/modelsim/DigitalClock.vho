-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "12/29/2022 00:17:42"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
LIBRARY STD;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	DigitalClock IS
    PORT (
	sec : OUT STD.STANDARD.integer range 0 TO 60;
	min : OUT STD.STANDARD.integer range 0 TO 60;
	hrs : OUT STD.STANDARD.integer range 0 TO 24;
	inSec : IN STD.STANDARD.integer range 0 TO 60;
	inMin : IN STD.STANDARD.integer range 0 TO 60;
	inHrs : IN STD.STANDARD.integer range 0 TO 24;
	clk : IN std_logic;
	set : BUFFER std_logic
	);
END DigitalClock;

-- Design Ports Information
-- sec[0]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec[1]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec[2]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec[3]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec[4]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec[5]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min[0]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min[1]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min[2]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min[3]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min[4]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min[5]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hrs[0]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hrs[1]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hrs[2]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hrs[3]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hrs[4]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inSec[0]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inSec[1]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inSec[2]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inSec[3]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inSec[4]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inSec[5]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inMin[0]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inMin[1]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inMin[2]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inMin[3]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inMin[4]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inMin[5]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inHrs[0]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inHrs[1]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inHrs[2]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inHrs[3]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inHrs[4]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- set	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DigitalClock IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sec : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_min : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_hrs : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_inSec : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_inMin : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_inHrs : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_set : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inSec[0]~input_o\ : std_logic;
SIGNAL \inSec[1]~input_o\ : std_logic;
SIGNAL \inSec[2]~input_o\ : std_logic;
SIGNAL \inSec[3]~input_o\ : std_logic;
SIGNAL \inSec[4]~input_o\ : std_logic;
SIGNAL \inSec[5]~input_o\ : std_logic;
SIGNAL \inMin[0]~input_o\ : std_logic;
SIGNAL \inMin[1]~input_o\ : std_logic;
SIGNAL \inMin[2]~input_o\ : std_logic;
SIGNAL \inMin[3]~input_o\ : std_logic;
SIGNAL \inMin[4]~input_o\ : std_logic;
SIGNAL \inMin[5]~input_o\ : std_logic;
SIGNAL \inHrs[0]~input_o\ : std_logic;
SIGNAL \inHrs[1]~input_o\ : std_logic;
SIGNAL \inHrs[2]~input_o\ : std_logic;
SIGNAL \inHrs[3]~input_o\ : std_logic;
SIGNAL \inHrs[4]~input_o\ : std_logic;
SIGNAL \sec[0]~output_o\ : std_logic;
SIGNAL \sec[1]~output_o\ : std_logic;
SIGNAL \sec[2]~output_o\ : std_logic;
SIGNAL \sec[3]~output_o\ : std_logic;
SIGNAL \sec[4]~output_o\ : std_logic;
SIGNAL \sec[5]~output_o\ : std_logic;
SIGNAL \min[0]~output_o\ : std_logic;
SIGNAL \min[1]~output_o\ : std_logic;
SIGNAL \min[2]~output_o\ : std_logic;
SIGNAL \min[3]~output_o\ : std_logic;
SIGNAL \min[4]~output_o\ : std_logic;
SIGNAL \min[5]~output_o\ : std_logic;
SIGNAL \hrs[0]~output_o\ : std_logic;
SIGNAL \hrs[1]~output_o\ : std_logic;
SIGNAL \hrs[2]~output_o\ : std_logic;
SIGNAL \hrs[3]~output_o\ : std_logic;
SIGNAL \hrs[4]~output_o\ : std_logic;
SIGNAL \set~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \counterSec[0]~34_combout\ : std_logic;
SIGNAL \counterSec[0]~35\ : std_logic;
SIGNAL \counterSec[1]~36_combout\ : std_logic;
SIGNAL \counterSec[1]~37\ : std_logic;
SIGNAL \counterSec[2]~38_combout\ : std_logic;
SIGNAL \counterSec[2]~39\ : std_logic;
SIGNAL \counterSec[3]~40_combout\ : std_logic;
SIGNAL \counterSec[3]~41\ : std_logic;
SIGNAL \counterSec[4]~42_combout\ : std_logic;
SIGNAL \counterSec[4]~43\ : std_logic;
SIGNAL \counterSec[5]~44_combout\ : std_logic;
SIGNAL \counterSec[5]~45\ : std_logic;
SIGNAL \counterSec[6]~46_combout\ : std_logic;
SIGNAL \counterSec[6]~47\ : std_logic;
SIGNAL \counterSec[7]~48_combout\ : std_logic;
SIGNAL \counterSec[7]~49\ : std_logic;
SIGNAL \counterSec[8]~50_combout\ : std_logic;
SIGNAL \counterSec[8]~51\ : std_logic;
SIGNAL \counterSec[9]~52_combout\ : std_logic;
SIGNAL \counterSec[9]~53\ : std_logic;
SIGNAL \counterSec[10]~54_combout\ : std_logic;
SIGNAL \counterSec[10]~55\ : std_logic;
SIGNAL \counterSec[11]~56_combout\ : std_logic;
SIGNAL \counterSec[11]~57\ : std_logic;
SIGNAL \counterSec[12]~58_combout\ : std_logic;
SIGNAL \counterSec[12]~59\ : std_logic;
SIGNAL \counterSec[13]~60_combout\ : std_logic;
SIGNAL \counterSec[13]~61\ : std_logic;
SIGNAL \counterSec[14]~62_combout\ : std_logic;
SIGNAL \counterSec[14]~63\ : std_logic;
SIGNAL \counterSec[15]~64_combout\ : std_logic;
SIGNAL \counterSec[15]~65\ : std_logic;
SIGNAL \counterSec[16]~66_combout\ : std_logic;
SIGNAL \counterSec[16]~67\ : std_logic;
SIGNAL \counterSec[17]~68_combout\ : std_logic;
SIGNAL \counterSec[17]~69\ : std_logic;
SIGNAL \counterSec[18]~70_combout\ : std_logic;
SIGNAL \counterSec[18]~71\ : std_logic;
SIGNAL \counterSec[19]~72_combout\ : std_logic;
SIGNAL \counterSec[19]~73\ : std_logic;
SIGNAL \counterSec[20]~74_combout\ : std_logic;
SIGNAL \counterSec[20]~75\ : std_logic;
SIGNAL \counterSec[21]~76_combout\ : std_logic;
SIGNAL \counterSec[21]~77\ : std_logic;
SIGNAL \counterSec[22]~78_combout\ : std_logic;
SIGNAL \counterSec[22]~79\ : std_logic;
SIGNAL \counterSec[23]~80_combout\ : std_logic;
SIGNAL \counterSec[23]~81\ : std_logic;
SIGNAL \counterSec[24]~82_combout\ : std_logic;
SIGNAL \counterSec[24]~83\ : std_logic;
SIGNAL \counterSec[25]~84_combout\ : std_logic;
SIGNAL \counterSec[25]~85\ : std_logic;
SIGNAL \counterSec[26]~86_combout\ : std_logic;
SIGNAL \counterSec[26]~87\ : std_logic;
SIGNAL \counterSec[27]~88_combout\ : std_logic;
SIGNAL \counterSec[27]~89\ : std_logic;
SIGNAL \counterSec[28]~90_combout\ : std_logic;
SIGNAL \counterSec[28]~91\ : std_logic;
SIGNAL \counterSec[29]~92_combout\ : std_logic;
SIGNAL \counterSec[29]~93\ : std_logic;
SIGNAL \counterSec[30]~94_combout\ : std_logic;
SIGNAL \counterSec[30]~95\ : std_logic;
SIGNAL \counterSec[31]~96_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \counterHrs~0_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \counterHrs~1_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \counterHrs~2_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \counterHrs[3]~3_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \counterHrs[5]~30_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \counterHrs[6]~29_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \counterHrs[7]~28_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \counterHrs[8]~27_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \counterHrs[9]~26_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \counterHrs[10]~25_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \counterHrs[11]~24_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \counterHrs[12]~23_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \counterHrs[13]~22_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \counterHrs[14]~21_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \counterHrs[15]~20_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \counterHrs[16]~19_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \LessThan2~7_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \LessThan2~8_combout\ : std_logic;
SIGNAL \LessThan2~9_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \counterHrs[17]~18_combout\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \counterHrs[18]~17_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \counterHrs[19]~16_combout\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \counterHrs[20]~15_combout\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \counterHrs[21]~14_combout\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \counterHrs[22]~13_combout\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \counterHrs[23]~12_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \counterHrs[24]~11_combout\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \counterHrs[25]~10_combout\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \counterHrs[26]~9_combout\ : std_logic;
SIGNAL \Add2~53\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \counterHrs[27]~8_combout\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \counterHrs[28]~7_combout\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \counterHrs[29]~6_combout\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \counterHrs[30]~5_combout\ : std_logic;
SIGNAL \Add2~61\ : std_logic;
SIGNAL \Add2~62_combout\ : std_logic;
SIGNAL \counterHrs[31]~31_combout\ : std_logic;
SIGNAL \counterMin[2]~8_combout\ : std_logic;
SIGNAL \counterMin[2]~2_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \counterMin~1_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \counterMin~3_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \counterMin~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \counterMin~5_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \counterMin~6_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \counterMin~7_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \counterMin[6]~29_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \counterMin[7]~33_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \counterMin[8]~32_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \counterMin[9]~31_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \counterMin[10]~30_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \counterMin[11]~28_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \counterMin[12]~27_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \counterMin[13]~26_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \counterMin[14]~25_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \counterMin[15]~24_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \counterMin[16]~23_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \counterMin[17]~22_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \counterMin[18]~21_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \counterMin[19]~20_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \counterMin[20]~19_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \counterMin[21]~18_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \counterMin[22]~17_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \counterMin[23]~16_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \counterMin[24]~15_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \counterMin[25]~14_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \counterMin[26]~13_combout\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \counterMin[27]~12_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \counterMin[28]~11_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \counterMin[29]~10_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \counterMin[30]~9_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \counterMin[31]~34_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \LessThan1~8_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \counterMin[2]~0_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \counterHrs[4]~4_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \counterSec[22]~98_combout\ : std_logic;
SIGNAL counterSec : std_logic_vector(31 DOWNTO 0);
SIGNAL counterMin : std_logic_vector(31 DOWNTO 0);
SIGNAL counterHrs : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

sec <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_sec));
min <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_min));
hrs <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_hrs));
ww_inSec <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(inSec, 6);
ww_inMin <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(inMin, 6);
ww_inHrs <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(inHrs, 5);
ww_clk <= clk;
set <= ww_set;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X23_Y24_N16
\sec[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counterSec(0),
	devoe => ww_devoe,
	o => \sec[0]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\sec[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counterSec(1),
	devoe => ww_devoe,
	o => \sec[1]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\sec[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counterSec(2),
	devoe => ww_devoe,
	o => \sec[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\sec[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counterSec(3),
	devoe => ww_devoe,
	o => \sec[3]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\sec[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counterSec(4),
	devoe => ww_devoe,
	o => \sec[4]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\sec[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counterSec(5),
	devoe => ww_devoe,
	o => \sec[5]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\min[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counterMin(0),
	devoe => ww_devoe,
	o => \min[0]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\min[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counterMin(1),
	devoe => ww_devoe,
	o => \min[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\min[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counterMin(2),
	devoe => ww_devoe,
	o => \min[2]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\min[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counterMin(3),
	devoe => ww_devoe,
	o => \min[3]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\min[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counterMin(4),
	devoe => ww_devoe,
	o => \min[4]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\min[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counterMin(5),
	devoe => ww_devoe,
	o => \min[5]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\hrs[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counterHrs(0),
	devoe => ww_devoe,
	o => \hrs[0]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\hrs[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counterHrs(1),
	devoe => ww_devoe,
	o => \hrs[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\hrs[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counterHrs(2),
	devoe => ww_devoe,
	o => \hrs[2]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\hrs[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counterHrs(3),
	devoe => ww_devoe,
	o => \hrs[3]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\hrs[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counterHrs(4),
	devoe => ww_devoe,
	o => \hrs[4]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\set~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \set~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X19_Y17_N0
\counterSec[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[0]~34_combout\ = counterSec(0) $ (VCC)
-- \counterSec[0]~35\ = CARRY(counterSec(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counterSec(0),
	datad => VCC,
	combout => \counterSec[0]~34_combout\,
	cout => \counterSec[0]~35\);

-- Location: LCCOMB_X19_Y17_N2
\counterSec[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[1]~36_combout\ = (counterSec(1) & (!\counterSec[0]~35\)) # (!counterSec(1) & ((\counterSec[0]~35\) # (GND)))
-- \counterSec[1]~37\ = CARRY((!\counterSec[0]~35\) # (!counterSec(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterSec(1),
	datad => VCC,
	cin => \counterSec[0]~35\,
	combout => \counterSec[1]~36_combout\,
	cout => \counterSec[1]~37\);

-- Location: FF_X19_Y17_N3
\counterSec[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[1]~36_combout\,
	sclr => \counterSec[22]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(1));

-- Location: LCCOMB_X19_Y17_N4
\counterSec[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[2]~38_combout\ = (counterSec(2) & (\counterSec[1]~37\ $ (GND))) # (!counterSec(2) & (!\counterSec[1]~37\ & VCC))
-- \counterSec[2]~39\ = CARRY((counterSec(2) & !\counterSec[1]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterSec(2),
	datad => VCC,
	cin => \counterSec[1]~37\,
	combout => \counterSec[2]~38_combout\,
	cout => \counterSec[2]~39\);

-- Location: FF_X19_Y17_N5
\counterSec[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[2]~38_combout\,
	sclr => \counterSec[22]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(2));

-- Location: LCCOMB_X19_Y17_N6
\counterSec[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[3]~40_combout\ = (counterSec(3) & (!\counterSec[2]~39\)) # (!counterSec(3) & ((\counterSec[2]~39\) # (GND)))
-- \counterSec[3]~41\ = CARRY((!\counterSec[2]~39\) # (!counterSec(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(3),
	datad => VCC,
	cin => \counterSec[2]~39\,
	combout => \counterSec[3]~40_combout\,
	cout => \counterSec[3]~41\);

-- Location: FF_X19_Y17_N7
\counterSec[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[3]~40_combout\,
	sclr => \counterSec[22]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(3));

-- Location: LCCOMB_X19_Y17_N8
\counterSec[4]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[4]~42_combout\ = (counterSec(4) & (\counterSec[3]~41\ $ (GND))) # (!counterSec(4) & (!\counterSec[3]~41\ & VCC))
-- \counterSec[4]~43\ = CARRY((counterSec(4) & !\counterSec[3]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterSec(4),
	datad => VCC,
	cin => \counterSec[3]~41\,
	combout => \counterSec[4]~42_combout\,
	cout => \counterSec[4]~43\);

-- Location: FF_X19_Y17_N9
\counterSec[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[4]~42_combout\,
	sclr => \counterSec[22]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(4));

-- Location: LCCOMB_X19_Y17_N10
\counterSec[5]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[5]~44_combout\ = (counterSec(5) & (!\counterSec[4]~43\)) # (!counterSec(5) & ((\counterSec[4]~43\) # (GND)))
-- \counterSec[5]~45\ = CARRY((!\counterSec[4]~43\) # (!counterSec(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(5),
	datad => VCC,
	cin => \counterSec[4]~43\,
	combout => \counterSec[5]~44_combout\,
	cout => \counterSec[5]~45\);

-- Location: FF_X19_Y17_N11
\counterSec[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[5]~44_combout\,
	sclr => \counterSec[22]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(5));

-- Location: LCCOMB_X19_Y17_N12
\counterSec[6]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[6]~46_combout\ = (counterSec(6) & (\counterSec[5]~45\ $ (GND))) # (!counterSec(6) & (!\counterSec[5]~45\ & VCC))
-- \counterSec[6]~47\ = CARRY((counterSec(6) & !\counterSec[5]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(6),
	datad => VCC,
	cin => \counterSec[5]~45\,
	combout => \counterSec[6]~46_combout\,
	cout => \counterSec[6]~47\);

-- Location: FF_X19_Y17_N13
\counterSec[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[6]~46_combout\,
	sclr => \counterSec[22]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(6));

-- Location: LCCOMB_X19_Y17_N14
\counterSec[7]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[7]~48_combout\ = (counterSec(7) & (!\counterSec[6]~47\)) # (!counterSec(7) & ((\counterSec[6]~47\) # (GND)))
-- \counterSec[7]~49\ = CARRY((!\counterSec[6]~47\) # (!counterSec(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterSec(7),
	datad => VCC,
	cin => \counterSec[6]~47\,
	combout => \counterSec[7]~48_combout\,
	cout => \counterSec[7]~49\);

-- Location: FF_X19_Y17_N15
\counterSec[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[7]~48_combout\,
	sclr => \counterSec[22]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(7));

-- Location: LCCOMB_X19_Y17_N16
\counterSec[8]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[8]~50_combout\ = (counterSec(8) & (\counterSec[7]~49\ $ (GND))) # (!counterSec(8) & (!\counterSec[7]~49\ & VCC))
-- \counterSec[8]~51\ = CARRY((counterSec(8) & !\counterSec[7]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterSec(8),
	datad => VCC,
	cin => \counterSec[7]~49\,
	combout => \counterSec[8]~50_combout\,
	cout => \counterSec[8]~51\);

-- Location: FF_X19_Y17_N17
\counterSec[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[8]~50_combout\,
	sclr => \counterSec[22]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(8));

-- Location: LCCOMB_X19_Y17_N18
\counterSec[9]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[9]~52_combout\ = (counterSec(9) & (!\counterSec[8]~51\)) # (!counterSec(9) & ((\counterSec[8]~51\) # (GND)))
-- \counterSec[9]~53\ = CARRY((!\counterSec[8]~51\) # (!counterSec(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterSec(9),
	datad => VCC,
	cin => \counterSec[8]~51\,
	combout => \counterSec[9]~52_combout\,
	cout => \counterSec[9]~53\);

-- Location: FF_X19_Y17_N19
\counterSec[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[9]~52_combout\,
	sclr => \counterSec[22]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(9));

-- Location: LCCOMB_X19_Y17_N20
\counterSec[10]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[10]~54_combout\ = (counterSec(10) & (\counterSec[9]~53\ $ (GND))) # (!counterSec(10) & (!\counterSec[9]~53\ & VCC))
-- \counterSec[10]~55\ = CARRY((counterSec(10) & !\counterSec[9]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterSec(10),
	datad => VCC,
	cin => \counterSec[9]~53\,
	combout => \counterSec[10]~54_combout\,
	cout => \counterSec[10]~55\);

-- Location: FF_X19_Y17_N21
\counterSec[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[10]~54_combout\,
	sclr => \counterSec[22]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(10));

-- Location: LCCOMB_X19_Y17_N22
\counterSec[11]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[11]~56_combout\ = (counterSec(11) & (!\counterSec[10]~55\)) # (!counterSec(11) & ((\counterSec[10]~55\) # (GND)))
-- \counterSec[11]~57\ = CARRY((!\counterSec[10]~55\) # (!counterSec(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(11),
	datad => VCC,
	cin => \counterSec[10]~55\,
	combout => \counterSec[11]~56_combout\,
	cout => \counterSec[11]~57\);

-- Location: FF_X19_Y17_N23
\counterSec[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[11]~56_combout\,
	sclr => \counterSec[22]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(11));

-- Location: LCCOMB_X19_Y17_N24
\counterSec[12]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[12]~58_combout\ = (counterSec(12) & (\counterSec[11]~57\ $ (GND))) # (!counterSec(12) & (!\counterSec[11]~57\ & VCC))
-- \counterSec[12]~59\ = CARRY((counterSec(12) & !\counterSec[11]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterSec(12),
	datad => VCC,
	cin => \counterSec[11]~57\,
	combout => \counterSec[12]~58_combout\,
	cout => \counterSec[12]~59\);

-- Location: FF_X19_Y17_N25
\counterSec[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[12]~58_combout\,
	sclr => \counterSec[22]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(12));

-- Location: LCCOMB_X19_Y17_N26
\counterSec[13]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[13]~60_combout\ = (counterSec(13) & (!\counterSec[12]~59\)) # (!counterSec(13) & ((\counterSec[12]~59\) # (GND)))
-- \counterSec[13]~61\ = CARRY((!\counterSec[12]~59\) # (!counterSec(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(13),
	datad => VCC,
	cin => \counterSec[12]~59\,
	combout => \counterSec[13]~60_combout\,
	cout => \counterSec[13]~61\);

-- Location: FF_X19_Y17_N27
\counterSec[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[13]~60_combout\,
	sclr => \counterSec[22]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(13));

-- Location: LCCOMB_X19_Y17_N28
\counterSec[14]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[14]~62_combout\ = (counterSec(14) & (\counterSec[13]~61\ $ (GND))) # (!counterSec(14) & (!\counterSec[13]~61\ & VCC))
-- \counterSec[14]~63\ = CARRY((counterSec(14) & !\counterSec[13]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterSec(14),
	datad => VCC,
	cin => \counterSec[13]~61\,
	combout => \counterSec[14]~62_combout\,
	cout => \counterSec[14]~63\);

-- Location: FF_X19_Y17_N29
\counterSec[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[14]~62_combout\,
	sclr => \counterSec[22]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(14));

-- Location: LCCOMB_X19_Y17_N30
\counterSec[15]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[15]~64_combout\ = (counterSec(15) & (!\counterSec[14]~63\)) # (!counterSec(15) & ((\counterSec[14]~63\) # (GND)))
-- \counterSec[15]~65\ = CARRY((!\counterSec[14]~63\) # (!counterSec(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(15),
	datad => VCC,
	cin => \counterSec[14]~63\,
	combout => \counterSec[15]~64_combout\,
	cout => \counterSec[15]~65\);

-- Location: FF_X19_Y17_N31
\counterSec[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[15]~64_combout\,
	sclr => \counterSec[22]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(15));

-- Location: LCCOMB_X19_Y16_N0
\counterSec[16]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[16]~66_combout\ = (counterSec(16) & (\counterSec[15]~65\ $ (GND))) # (!counterSec(16) & (!\counterSec[15]~65\ & VCC))
-- \counterSec[16]~67\ = CARRY((counterSec(16) & !\counterSec[15]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterSec(16),
	datad => VCC,
	cin => \counterSec[15]~65\,
	combout => \counterSec[16]~66_combout\,
	cout => \counterSec[16]~67\);

-- Location: FF_X19_Y16_N1
\counterSec[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[16]~66_combout\,
	sclr => \counterSec[22]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(16));

-- Location: LCCOMB_X19_Y16_N2
\counterSec[17]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[17]~68_combout\ = (counterSec(17) & (!\counterSec[16]~67\)) # (!counterSec(17) & ((\counterSec[16]~67\) # (GND)))
-- \counterSec[17]~69\ = CARRY((!\counterSec[16]~67\) # (!counterSec(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterSec(17),
	datad => VCC,
	cin => \counterSec[16]~67\,
	combout => \counterSec[17]~68_combout\,
	cout => \counterSec[17]~69\);

-- Location: FF_X19_Y16_N3
\counterSec[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[17]~68_combout\,
	sclr => \counterSec[22]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(17));

-- Location: LCCOMB_X19_Y16_N4
\counterSec[18]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[18]~70_combout\ = (counterSec(18) & (\counterSec[17]~69\ $ (GND))) # (!counterSec(18) & (!\counterSec[17]~69\ & VCC))
-- \counterSec[18]~71\ = CARRY((counterSec(18) & !\counterSec[17]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterSec(18),
	datad => VCC,
	cin => \counterSec[17]~69\,
	combout => \counterSec[18]~70_combout\,
	cout => \counterSec[18]~71\);

-- Location: FF_X19_Y16_N5
\counterSec[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[18]~70_combout\,
	sclr => \counterSec[22]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(18));

-- Location: LCCOMB_X19_Y16_N6
\counterSec[19]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[19]~72_combout\ = (counterSec(19) & (!\counterSec[18]~71\)) # (!counterSec(19) & ((\counterSec[18]~71\) # (GND)))
-- \counterSec[19]~73\ = CARRY((!\counterSec[18]~71\) # (!counterSec(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(19),
	datad => VCC,
	cin => \counterSec[18]~71\,
	combout => \counterSec[19]~72_combout\,
	cout => \counterSec[19]~73\);

-- Location: FF_X19_Y16_N7
\counterSec[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[19]~72_combout\,
	sclr => \counterSec[22]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(19));

-- Location: LCCOMB_X19_Y16_N8
\counterSec[20]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[20]~74_combout\ = (counterSec(20) & (\counterSec[19]~73\ $ (GND))) # (!counterSec(20) & (!\counterSec[19]~73\ & VCC))
-- \counterSec[20]~75\ = CARRY((counterSec(20) & !\counterSec[19]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterSec(20),
	datad => VCC,
	cin => \counterSec[19]~73\,
	combout => \counterSec[20]~74_combout\,
	cout => \counterSec[20]~75\);

-- Location: FF_X19_Y16_N9
\counterSec[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[20]~74_combout\,
	sclr => \counterSec[22]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(20));

-- Location: LCCOMB_X19_Y16_N10
\counterSec[21]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[21]~76_combout\ = (counterSec(21) & (!\counterSec[20]~75\)) # (!counterSec(21) & ((\counterSec[20]~75\) # (GND)))
-- \counterSec[21]~77\ = CARRY((!\counterSec[20]~75\) # (!counterSec(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(21),
	datad => VCC,
	cin => \counterSec[20]~75\,
	combout => \counterSec[21]~76_combout\,
	cout => \counterSec[21]~77\);

-- Location: FF_X19_Y16_N11
\counterSec[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[21]~76_combout\,
	sclr => \counterSec[22]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(21));

-- Location: LCCOMB_X19_Y16_N12
\counterSec[22]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[22]~78_combout\ = (counterSec(22) & (\counterSec[21]~77\ $ (GND))) # (!counterSec(22) & (!\counterSec[21]~77\ & VCC))
-- \counterSec[22]~79\ = CARRY((counterSec(22) & !\counterSec[21]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(22),
	datad => VCC,
	cin => \counterSec[21]~77\,
	combout => \counterSec[22]~78_combout\,
	cout => \counterSec[22]~79\);

-- Location: FF_X19_Y16_N13
\counterSec[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[22]~78_combout\,
	sclr => \counterSec[22]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(22));

-- Location: LCCOMB_X19_Y16_N14
\counterSec[23]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[23]~80_combout\ = (counterSec(23) & (!\counterSec[22]~79\)) # (!counterSec(23) & ((\counterSec[22]~79\) # (GND)))
-- \counterSec[23]~81\ = CARRY((!\counterSec[22]~79\) # (!counterSec(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterSec(23),
	datad => VCC,
	cin => \counterSec[22]~79\,
	combout => \counterSec[23]~80_combout\,
	cout => \counterSec[23]~81\);

-- Location: FF_X19_Y16_N15
\counterSec[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[23]~80_combout\,
	sclr => \counterSec[22]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(23));

-- Location: LCCOMB_X19_Y16_N16
\counterSec[24]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[24]~82_combout\ = (counterSec(24) & (\counterSec[23]~81\ $ (GND))) # (!counterSec(24) & (!\counterSec[23]~81\ & VCC))
-- \counterSec[24]~83\ = CARRY((counterSec(24) & !\counterSec[23]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterSec(24),
	datad => VCC,
	cin => \counterSec[23]~81\,
	combout => \counterSec[24]~82_combout\,
	cout => \counterSec[24]~83\);

-- Location: FF_X19_Y16_N17
\counterSec[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[24]~82_combout\,
	sclr => \counterSec[22]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(24));

-- Location: LCCOMB_X19_Y16_N18
\counterSec[25]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[25]~84_combout\ = (counterSec(25) & (!\counterSec[24]~83\)) # (!counterSec(25) & ((\counterSec[24]~83\) # (GND)))
-- \counterSec[25]~85\ = CARRY((!\counterSec[24]~83\) # (!counterSec(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterSec(25),
	datad => VCC,
	cin => \counterSec[24]~83\,
	combout => \counterSec[25]~84_combout\,
	cout => \counterSec[25]~85\);

-- Location: FF_X19_Y16_N19
\counterSec[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[25]~84_combout\,
	sclr => \counterSec[22]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(25));

-- Location: LCCOMB_X19_Y16_N20
\counterSec[26]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[26]~86_combout\ = (counterSec(26) & (\counterSec[25]~85\ $ (GND))) # (!counterSec(26) & (!\counterSec[25]~85\ & VCC))
-- \counterSec[26]~87\ = CARRY((counterSec(26) & !\counterSec[25]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterSec(26),
	datad => VCC,
	cin => \counterSec[25]~85\,
	combout => \counterSec[26]~86_combout\,
	cout => \counterSec[26]~87\);

-- Location: FF_X19_Y16_N21
\counterSec[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[26]~86_combout\,
	sclr => \counterSec[22]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(26));

-- Location: LCCOMB_X19_Y16_N22
\counterSec[27]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[27]~88_combout\ = (counterSec(27) & (!\counterSec[26]~87\)) # (!counterSec(27) & ((\counterSec[26]~87\) # (GND)))
-- \counterSec[27]~89\ = CARRY((!\counterSec[26]~87\) # (!counterSec(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(27),
	datad => VCC,
	cin => \counterSec[26]~87\,
	combout => \counterSec[27]~88_combout\,
	cout => \counterSec[27]~89\);

-- Location: FF_X19_Y16_N23
\counterSec[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[27]~88_combout\,
	sclr => \counterSec[22]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(27));

-- Location: LCCOMB_X19_Y16_N24
\counterSec[28]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[28]~90_combout\ = (counterSec(28) & (\counterSec[27]~89\ $ (GND))) # (!counterSec(28) & (!\counterSec[27]~89\ & VCC))
-- \counterSec[28]~91\ = CARRY((counterSec(28) & !\counterSec[27]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterSec(28),
	datad => VCC,
	cin => \counterSec[27]~89\,
	combout => \counterSec[28]~90_combout\,
	cout => \counterSec[28]~91\);

-- Location: FF_X19_Y16_N25
\counterSec[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[28]~90_combout\,
	sclr => \counterSec[22]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(28));

-- Location: LCCOMB_X19_Y16_N26
\counterSec[29]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[29]~92_combout\ = (counterSec(29) & (!\counterSec[28]~91\)) # (!counterSec(29) & ((\counterSec[28]~91\) # (GND)))
-- \counterSec[29]~93\ = CARRY((!\counterSec[28]~91\) # (!counterSec(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(29),
	datad => VCC,
	cin => \counterSec[28]~91\,
	combout => \counterSec[29]~92_combout\,
	cout => \counterSec[29]~93\);

-- Location: FF_X19_Y16_N27
\counterSec[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[29]~92_combout\,
	sclr => \counterSec[22]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(29));

-- Location: LCCOMB_X19_Y16_N28
\counterSec[30]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[30]~94_combout\ = (counterSec(30) & (\counterSec[29]~93\ $ (GND))) # (!counterSec(30) & (!\counterSec[29]~93\ & VCC))
-- \counterSec[30]~95\ = CARRY((counterSec(30) & !\counterSec[29]~93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterSec(30),
	datad => VCC,
	cin => \counterSec[29]~93\,
	combout => \counterSec[30]~94_combout\,
	cout => \counterSec[30]~95\);

-- Location: FF_X19_Y16_N29
\counterSec[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[30]~94_combout\,
	sclr => \counterSec[22]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(30));

-- Location: LCCOMB_X19_Y16_N30
\counterSec[31]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[31]~96_combout\ = counterSec(31) $ (\counterSec[30]~95\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(31),
	cin => \counterSec[30]~95\,
	combout => \counterSec[31]~96_combout\);

-- Location: FF_X19_Y16_N31
\counterSec[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[31]~96_combout\,
	sclr => \counterSec[22]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(31));

-- Location: LCCOMB_X18_Y17_N30
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!counterSec(10) & (!counterSec(11) & (!counterSec(12) & !counterSec(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(10),
	datab => counterSec(11),
	datac => counterSec(12),
	datad => counterSec(13),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X18_Y16_N14
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!counterSec(4)) # (!counterSec(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counterSec(5),
	datad => counterSec(4),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X18_Y17_N4
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ((!counterSec(2) & ((!counterSec(0)) # (!counterSec(1))))) # (!counterSec(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(1),
	datab => counterSec(0),
	datac => counterSec(2),
	datad => counterSec(3),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X18_Y17_N20
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!counterSec(9) & (!counterSec(7) & (!counterSec(6) & !counterSec(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(9),
	datab => counterSec(7),
	datac => counterSec(6),
	datad => counterSec(8),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X18_Y16_N8
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~1_combout\ & (\LessThan0~0_combout\ & ((\LessThan0~3_combout\) # (\LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \LessThan0~3_combout\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X18_Y16_N22
\LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (!counterSec(29) & (!counterSec(28) & (!counterSec(26) & !counterSec(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(29),
	datab => counterSec(28),
	datac => counterSec(26),
	datad => counterSec(27),
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X18_Y16_N4
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (!counterSec(22) & (!counterSec(24) & (!counterSec(23) & !counterSec(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(22),
	datab => counterSec(24),
	datac => counterSec(23),
	datad => counterSec(25),
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X21_Y16_N20
\LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (!counterSec(20) & (!counterSec(21) & (!counterSec(19) & !counterSec(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(20),
	datab => counterSec(21),
	datac => counterSec(19),
	datad => counterSec(18),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X18_Y16_N2
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!counterSec(17) & (!counterSec(16) & (!counterSec(15) & !counterSec(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(17),
	datab => counterSec(16),
	datac => counterSec(15),
	datad => counterSec(14),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X18_Y16_N28
\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (\LessThan0~8_combout\ & (\LessThan0~7_combout\ & (\LessThan0~6_combout\ & \LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datab => \LessThan0~7_combout\,
	datac => \LessThan0~6_combout\,
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X18_Y16_N18
\LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = (counterSec(31)) # ((!counterSec(30) & (\LessThan0~4_combout\ & \LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(31),
	datab => counterSec(30),
	datac => \LessThan0~4_combout\,
	datad => \LessThan0~9_combout\,
	combout => \LessThan0~10_combout\);

-- Location: LCCOMB_X17_Y17_N0
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = counterHrs(0) $ (VCC)
-- \Add2~1\ = CARRY(counterHrs(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counterHrs(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X18_Y17_N16
\counterHrs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs~0_combout\ = (\Add2~0_combout\ & ((counterHrs(31)) # ((!\LessThan2~4_combout\ & !\LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \LessThan2~4_combout\,
	datac => counterHrs(31),
	datad => \LessThan2~8_combout\,
	combout => \counterHrs~0_combout\);

-- Location: FF_X18_Y17_N17
\counterHrs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs~0_combout\,
	ena => \counterMin[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(0));

-- Location: LCCOMB_X17_Y17_N2
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (counterHrs(1) & (!\Add2~1\)) # (!counterHrs(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!counterHrs(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X18_Y17_N2
\counterHrs~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs~1_combout\ = (\Add2~2_combout\ & ((counterHrs(31)) # ((!\LessThan2~8_combout\ & !\LessThan2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(31),
	datab => \LessThan2~8_combout\,
	datac => \LessThan2~4_combout\,
	datad => \Add2~2_combout\,
	combout => \counterHrs~1_combout\);

-- Location: FF_X18_Y17_N3
\counterHrs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs~1_combout\,
	ena => \counterMin[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(1));

-- Location: LCCOMB_X17_Y17_N4
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (counterHrs(2) & (\Add2~3\ $ (GND))) # (!counterHrs(2) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((counterHrs(2) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterHrs(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X18_Y16_N0
\counterHrs~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs~2_combout\ = (\Add2~4_combout\ & ((counterHrs(31)) # ((!\LessThan2~4_combout\ & !\LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~4_combout\,
	datab => counterHrs(31),
	datac => \LessThan2~8_combout\,
	datad => \Add2~4_combout\,
	combout => \counterHrs~2_combout\);

-- Location: FF_X18_Y16_N1
\counterHrs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs~2_combout\,
	ena => \counterMin[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(2));

-- Location: LCCOMB_X17_Y17_N6
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (counterHrs(3) & (!\Add2~5\)) # (!counterHrs(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!counterHrs(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X16_Y16_N4
\counterHrs[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[3]~3_combout\ = (!\LessThan2~9_combout\ & ((\counterMin[2]~0_combout\ & (\Add2~6_combout\)) # (!\counterMin[2]~0_combout\ & ((counterHrs(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \LessThan2~9_combout\,
	datac => counterHrs(3),
	datad => \counterMin[2]~0_combout\,
	combout => \counterHrs[3]~3_combout\);

-- Location: FF_X16_Y16_N5
\counterHrs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(3));

-- Location: LCCOMB_X17_Y17_N8
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (counterHrs(4) & (\Add2~7\ $ (GND))) # (!counterHrs(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((counterHrs(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterHrs(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X17_Y17_N10
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (counterHrs(5) & (!\Add2~9\)) # (!counterHrs(5) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!counterHrs(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X17_Y15_N22
\counterHrs[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[5]~30_combout\ = (!\LessThan2~9_combout\ & ((\counterMin[2]~0_combout\ & (\Add2~10_combout\)) # (!\counterMin[2]~0_combout\ & ((counterHrs(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~9_combout\,
	datab => \Add2~10_combout\,
	datac => counterHrs(5),
	datad => \counterMin[2]~0_combout\,
	combout => \counterHrs[5]~30_combout\);

-- Location: FF_X17_Y15_N23
\counterHrs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(5));

-- Location: LCCOMB_X17_Y17_N12
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (counterHrs(6) & (\Add2~11\ $ (GND))) # (!counterHrs(6) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((counterHrs(6) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X17_Y15_N20
\counterHrs[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[6]~29_combout\ = (!\LessThan2~9_combout\ & ((\counterMin[2]~0_combout\ & (\Add2~12_combout\)) # (!\counterMin[2]~0_combout\ & ((counterHrs(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datab => \counterMin[2]~0_combout\,
	datac => counterHrs(6),
	datad => \LessThan2~9_combout\,
	combout => \counterHrs[6]~29_combout\);

-- Location: FF_X17_Y15_N21
\counterHrs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[6]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(6));

-- Location: LCCOMB_X17_Y17_N14
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (counterHrs(7) & (!\Add2~13\)) # (!counterHrs(7) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!counterHrs(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterHrs(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X17_Y15_N10
\counterHrs[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[7]~28_combout\ = (!\LessThan2~9_combout\ & ((\counterMin[2]~0_combout\ & ((\Add2~14_combout\))) # (!\counterMin[2]~0_combout\ & (counterHrs(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~9_combout\,
	datab => \counterMin[2]~0_combout\,
	datac => counterHrs(7),
	datad => \Add2~14_combout\,
	combout => \counterHrs[7]~28_combout\);

-- Location: FF_X17_Y15_N11
\counterHrs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(7));

-- Location: LCCOMB_X17_Y17_N16
\Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (counterHrs(8) & (\Add2~15\ $ (GND))) # (!counterHrs(8) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((counterHrs(8) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterHrs(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X17_Y15_N28
\counterHrs[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[8]~27_combout\ = (!\LessThan2~9_combout\ & ((\counterMin[2]~0_combout\ & (\Add2~16_combout\)) # (!\counterMin[2]~0_combout\ & ((counterHrs(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~9_combout\,
	datab => \Add2~16_combout\,
	datac => counterHrs(8),
	datad => \counterMin[2]~0_combout\,
	combout => \counterHrs[8]~27_combout\);

-- Location: FF_X17_Y15_N29
\counterHrs[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[8]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(8));

-- Location: LCCOMB_X17_Y17_N18
\Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (counterHrs(9) & (!\Add2~17\)) # (!counterHrs(9) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!counterHrs(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(9),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X16_Y17_N10
\counterHrs[9]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[9]~26_combout\ = (!\LessThan2~9_combout\ & ((\counterMin[2]~0_combout\ & (\Add2~18_combout\)) # (!\counterMin[2]~0_combout\ & ((counterHrs(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~9_combout\,
	datab => \Add2~18_combout\,
	datac => counterHrs(9),
	datad => \counterMin[2]~0_combout\,
	combout => \counterHrs[9]~26_combout\);

-- Location: FF_X16_Y17_N11
\counterHrs[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[9]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(9));

-- Location: LCCOMB_X17_Y17_N20
\Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (counterHrs(10) & (\Add2~19\ $ (GND))) # (!counterHrs(10) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((counterHrs(10) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(10),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X16_Y17_N0
\counterHrs[10]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[10]~25_combout\ = (!\LessThan2~9_combout\ & ((\counterMin[2]~0_combout\ & (\Add2~20_combout\)) # (!\counterMin[2]~0_combout\ & ((counterHrs(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~9_combout\,
	datab => \Add2~20_combout\,
	datac => counterHrs(10),
	datad => \counterMin[2]~0_combout\,
	combout => \counterHrs[10]~25_combout\);

-- Location: FF_X16_Y17_N1
\counterHrs[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[10]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(10));

-- Location: LCCOMB_X17_Y17_N22
\Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (counterHrs(11) & (!\Add2~21\)) # (!counterHrs(11) & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!counterHrs(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(11),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X16_Y17_N14
\counterHrs[11]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[11]~24_combout\ = (!\LessThan2~9_combout\ & ((\counterMin[2]~0_combout\ & (\Add2~22_combout\)) # (!\counterMin[2]~0_combout\ & ((counterHrs(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~9_combout\,
	datab => \Add2~22_combout\,
	datac => counterHrs(11),
	datad => \counterMin[2]~0_combout\,
	combout => \counterHrs[11]~24_combout\);

-- Location: FF_X16_Y17_N15
\counterHrs[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[11]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(11));

-- Location: LCCOMB_X17_Y17_N24
\Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (counterHrs(12) & (\Add2~23\ $ (GND))) # (!counterHrs(12) & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((counterHrs(12) & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(12),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X16_Y17_N16
\counterHrs[12]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[12]~23_combout\ = (!\LessThan2~9_combout\ & ((\counterMin[2]~0_combout\ & (\Add2~24_combout\)) # (!\counterMin[2]~0_combout\ & ((counterHrs(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~24_combout\,
	datab => \counterMin[2]~0_combout\,
	datac => counterHrs(12),
	datad => \LessThan2~9_combout\,
	combout => \counterHrs[12]~23_combout\);

-- Location: FF_X16_Y17_N17
\counterHrs[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[12]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(12));

-- Location: LCCOMB_X17_Y17_N26
\Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (counterHrs(13) & (!\Add2~25\)) # (!counterHrs(13) & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!counterHrs(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterHrs(13),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X16_Y17_N24
\counterHrs[13]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[13]~22_combout\ = (!\LessThan2~9_combout\ & ((\counterMin[2]~0_combout\ & (\Add2~26_combout\)) # (!\counterMin[2]~0_combout\ & ((counterHrs(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~9_combout\,
	datab => \Add2~26_combout\,
	datac => counterHrs(13),
	datad => \counterMin[2]~0_combout\,
	combout => \counterHrs[13]~22_combout\);

-- Location: FF_X16_Y17_N25
\counterHrs[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[13]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(13));

-- Location: LCCOMB_X17_Y17_N28
\Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (counterHrs(14) & (\Add2~27\ $ (GND))) # (!counterHrs(14) & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((counterHrs(14) & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterHrs(14),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X16_Y17_N6
\counterHrs[14]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[14]~21_combout\ = (!\LessThan2~9_combout\ & ((\counterMin[2]~0_combout\ & ((\Add2~28_combout\))) # (!\counterMin[2]~0_combout\ & (counterHrs(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~9_combout\,
	datab => \counterMin[2]~0_combout\,
	datac => counterHrs(14),
	datad => \Add2~28_combout\,
	combout => \counterHrs[14]~21_combout\);

-- Location: FF_X16_Y17_N7
\counterHrs[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(14));

-- Location: LCCOMB_X17_Y17_N30
\Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (counterHrs(15) & (!\Add2~29\)) # (!counterHrs(15) & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!counterHrs(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(15),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X16_Y17_N12
\counterHrs[15]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[15]~20_combout\ = (!\LessThan2~9_combout\ & ((\counterMin[2]~0_combout\ & (\Add2~30_combout\)) # (!\counterMin[2]~0_combout\ & ((counterHrs(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~30_combout\,
	datab => \counterMin[2]~0_combout\,
	datac => counterHrs(15),
	datad => \LessThan2~9_combout\,
	combout => \counterHrs[15]~20_combout\);

-- Location: FF_X16_Y17_N13
\counterHrs[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[15]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(15));

-- Location: LCCOMB_X17_Y16_N0
\Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (counterHrs(16) & (\Add2~31\ $ (GND))) # (!counterHrs(16) & (!\Add2~31\ & VCC))
-- \Add2~33\ = CARRY((counterHrs(16) & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterHrs(16),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCCOMB_X16_Y17_N18
\counterHrs[16]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[16]~19_combout\ = (!\LessThan2~9_combout\ & ((\counterMin[2]~0_combout\ & (\Add2~32_combout\)) # (!\counterMin[2]~0_combout\ & ((counterHrs(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~32_combout\,
	datab => \counterMin[2]~0_combout\,
	datac => counterHrs(16),
	datad => \LessThan2~9_combout\,
	combout => \counterHrs[16]~19_combout\);

-- Location: FF_X16_Y17_N19
\counterHrs[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[16]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(16));

-- Location: LCCOMB_X16_Y17_N22
\LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = (counterHrs(15)) # ((counterHrs(13)) # ((counterHrs(14)) # (counterHrs(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(15),
	datab => counterHrs(13),
	datac => counterHrs(14),
	datad => counterHrs(16),
	combout => \LessThan2~5_combout\);

-- Location: LCCOMB_X17_Y15_N4
\LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~7_combout\ = (counterHrs(7)) # ((counterHrs(8)) # ((counterHrs(5)) # (counterHrs(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(7),
	datab => counterHrs(8),
	datac => counterHrs(5),
	datad => counterHrs(6),
	combout => \LessThan2~7_combout\);

-- Location: LCCOMB_X16_Y17_N28
\LessThan2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = (counterHrs(9)) # ((counterHrs(10)) # ((counterHrs(11)) # (counterHrs(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(9),
	datab => counterHrs(10),
	datac => counterHrs(11),
	datad => counterHrs(12),
	combout => \LessThan2~6_combout\);

-- Location: LCCOMB_X16_Y17_N30
\LessThan2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~8_combout\ = (\LessThan2~5_combout\) # ((\LessThan2~7_combout\) # (\LessThan2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~5_combout\,
	datac => \LessThan2~7_combout\,
	datad => \LessThan2~6_combout\,
	combout => \LessThan2~8_combout\);

-- Location: LCCOMB_X18_Y16_N26
\LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~9_combout\ = (!counterHrs(31) & ((\LessThan2~8_combout\) # (\LessThan2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counterHrs(31),
	datac => \LessThan2~8_combout\,
	datad => \LessThan2~4_combout\,
	combout => \LessThan2~9_combout\);

-- Location: LCCOMB_X17_Y16_N2
\Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (counterHrs(17) & (!\Add2~33\)) # (!counterHrs(17) & ((\Add2~33\) # (GND)))
-- \Add2~35\ = CARRY((!\Add2~33\) # (!counterHrs(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(17),
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: LCCOMB_X16_Y16_N26
\counterHrs[17]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[17]~18_combout\ = (!\LessThan2~9_combout\ & ((\counterMin[2]~0_combout\ & ((\Add2~34_combout\))) # (!\counterMin[2]~0_combout\ & (counterHrs(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterMin[2]~0_combout\,
	datab => \LessThan2~9_combout\,
	datac => counterHrs(17),
	datad => \Add2~34_combout\,
	combout => \counterHrs[17]~18_combout\);

-- Location: FF_X16_Y16_N27
\counterHrs[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[17]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(17));

-- Location: LCCOMB_X17_Y16_N4
\Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (counterHrs(18) & (\Add2~35\ $ (GND))) # (!counterHrs(18) & (!\Add2~35\ & VCC))
-- \Add2~37\ = CARRY((counterHrs(18) & !\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterHrs(18),
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: LCCOMB_X16_Y16_N24
\counterHrs[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[18]~17_combout\ = (!\LessThan2~9_combout\ & ((\counterMin[2]~0_combout\ & ((\Add2~36_combout\))) # (!\counterMin[2]~0_combout\ & (counterHrs(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterMin[2]~0_combout\,
	datab => \LessThan2~9_combout\,
	datac => counterHrs(18),
	datad => \Add2~36_combout\,
	combout => \counterHrs[18]~17_combout\);

-- Location: FF_X16_Y16_N25
\counterHrs[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[18]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(18));

-- Location: LCCOMB_X17_Y16_N6
\Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (counterHrs(19) & (!\Add2~37\)) # (!counterHrs(19) & ((\Add2~37\) # (GND)))
-- \Add2~39\ = CARRY((!\Add2~37\) # (!counterHrs(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterHrs(19),
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: LCCOMB_X16_Y16_N22
\counterHrs[19]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[19]~16_combout\ = (!\LessThan2~9_combout\ & ((\counterMin[2]~0_combout\ & ((\Add2~38_combout\))) # (!\counterMin[2]~0_combout\ & (counterHrs(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterMin[2]~0_combout\,
	datab => \LessThan2~9_combout\,
	datac => counterHrs(19),
	datad => \Add2~38_combout\,
	combout => \counterHrs[19]~16_combout\);

-- Location: FF_X16_Y16_N23
\counterHrs[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[19]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(19));

-- Location: LCCOMB_X17_Y16_N8
\Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (counterHrs(20) & (\Add2~39\ $ (GND))) # (!counterHrs(20) & (!\Add2~39\ & VCC))
-- \Add2~41\ = CARRY((counterHrs(20) & !\Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterHrs(20),
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: LCCOMB_X16_Y16_N28
\counterHrs[20]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[20]~15_combout\ = (!\LessThan2~9_combout\ & ((\counterMin[2]~0_combout\ & (\Add2~40_combout\)) # (!\counterMin[2]~0_combout\ & ((counterHrs(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterMin[2]~0_combout\,
	datab => \Add2~40_combout\,
	datac => counterHrs(20),
	datad => \LessThan2~9_combout\,
	combout => \counterHrs[20]~15_combout\);

-- Location: FF_X16_Y16_N29
\counterHrs[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[20]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(20));

-- Location: LCCOMB_X17_Y16_N10
\Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (counterHrs(21) & (!\Add2~41\)) # (!counterHrs(21) & ((\Add2~41\) # (GND)))
-- \Add2~43\ = CARRY((!\Add2~41\) # (!counterHrs(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterHrs(21),
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: LCCOMB_X16_Y16_N20
\counterHrs[21]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[21]~14_combout\ = (!\LessThan2~9_combout\ & ((\counterMin[2]~0_combout\ & (\Add2~42_combout\)) # (!\counterMin[2]~0_combout\ & ((counterHrs(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterMin[2]~0_combout\,
	datab => \Add2~42_combout\,
	datac => counterHrs(21),
	datad => \LessThan2~9_combout\,
	combout => \counterHrs[21]~14_combout\);

-- Location: FF_X16_Y16_N21
\counterHrs[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[21]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(21));

-- Location: LCCOMB_X17_Y16_N12
\Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (counterHrs(22) & (\Add2~43\ $ (GND))) # (!counterHrs(22) & (!\Add2~43\ & VCC))
-- \Add2~45\ = CARRY((counterHrs(22) & !\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(22),
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: LCCOMB_X16_Y16_N10
\counterHrs[22]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[22]~13_combout\ = (!\LessThan2~9_combout\ & ((\counterMin[2]~0_combout\ & (\Add2~44_combout\)) # (!\counterMin[2]~0_combout\ & ((counterHrs(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterMin[2]~0_combout\,
	datab => \Add2~44_combout\,
	datac => counterHrs(22),
	datad => \LessThan2~9_combout\,
	combout => \counterHrs[22]~13_combout\);

-- Location: FF_X16_Y16_N11
\counterHrs[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[22]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(22));

-- Location: LCCOMB_X17_Y16_N14
\Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (counterHrs(23) & (!\Add2~45\)) # (!counterHrs(23) & ((\Add2~45\) # (GND)))
-- \Add2~47\ = CARRY((!\Add2~45\) # (!counterHrs(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(23),
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: LCCOMB_X16_Y16_N0
\counterHrs[23]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[23]~12_combout\ = (!\LessThan2~9_combout\ & ((\counterMin[2]~0_combout\ & (\Add2~46_combout\)) # (!\counterMin[2]~0_combout\ & ((counterHrs(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterMin[2]~0_combout\,
	datab => \Add2~46_combout\,
	datac => counterHrs(23),
	datad => \LessThan2~9_combout\,
	combout => \counterHrs[23]~12_combout\);

-- Location: FF_X16_Y16_N1
\counterHrs[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[23]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(23));

-- Location: LCCOMB_X17_Y16_N16
\Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (counterHrs(24) & (\Add2~47\ $ (GND))) # (!counterHrs(24) & (!\Add2~47\ & VCC))
-- \Add2~49\ = CARRY((counterHrs(24) & !\Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterHrs(24),
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: LCCOMB_X16_Y16_N18
\counterHrs[24]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[24]~11_combout\ = (!\LessThan2~9_combout\ & ((\counterMin[2]~0_combout\ & ((\Add2~48_combout\))) # (!\counterMin[2]~0_combout\ & (counterHrs(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterMin[2]~0_combout\,
	datab => \LessThan2~9_combout\,
	datac => counterHrs(24),
	datad => \Add2~48_combout\,
	combout => \counterHrs[24]~11_combout\);

-- Location: FF_X16_Y16_N19
\counterHrs[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[24]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(24));

-- Location: LCCOMB_X17_Y16_N18
\Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = (counterHrs(25) & (!\Add2~49\)) # (!counterHrs(25) & ((\Add2~49\) # (GND)))
-- \Add2~51\ = CARRY((!\Add2~49\) # (!counterHrs(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(25),
	datad => VCC,
	cin => \Add2~49\,
	combout => \Add2~50_combout\,
	cout => \Add2~51\);

-- Location: LCCOMB_X16_Y17_N26
\counterHrs[25]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[25]~10_combout\ = (!\LessThan2~9_combout\ & ((\counterMin[2]~0_combout\ & ((\Add2~50_combout\))) # (!\counterMin[2]~0_combout\ & (counterHrs(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~9_combout\,
	datab => \counterMin[2]~0_combout\,
	datac => counterHrs(25),
	datad => \Add2~50_combout\,
	combout => \counterHrs[25]~10_combout\);

-- Location: FF_X16_Y17_N27
\counterHrs[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[25]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(25));

-- Location: LCCOMB_X17_Y16_N20
\Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = (counterHrs(26) & (\Add2~51\ $ (GND))) # (!counterHrs(26) & (!\Add2~51\ & VCC))
-- \Add2~53\ = CARRY((counterHrs(26) & !\Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterHrs(26),
	datad => VCC,
	cin => \Add2~51\,
	combout => \Add2~52_combout\,
	cout => \Add2~53\);

-- Location: LCCOMB_X16_Y17_N4
\counterHrs[26]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[26]~9_combout\ = (!\LessThan2~9_combout\ & ((\counterMin[2]~0_combout\ & ((\Add2~52_combout\))) # (!\counterMin[2]~0_combout\ & (counterHrs(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~9_combout\,
	datab => \counterMin[2]~0_combout\,
	datac => counterHrs(26),
	datad => \Add2~52_combout\,
	combout => \counterHrs[26]~9_combout\);

-- Location: FF_X16_Y17_N5
\counterHrs[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[26]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(26));

-- Location: LCCOMB_X17_Y16_N22
\Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~54_combout\ = (counterHrs(27) & (!\Add2~53\)) # (!counterHrs(27) & ((\Add2~53\) # (GND)))
-- \Add2~55\ = CARRY((!\Add2~53\) # (!counterHrs(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterHrs(27),
	datad => VCC,
	cin => \Add2~53\,
	combout => \Add2~54_combout\,
	cout => \Add2~55\);

-- Location: LCCOMB_X16_Y17_N2
\counterHrs[27]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[27]~8_combout\ = (!\LessThan2~9_combout\ & ((\counterMin[2]~0_combout\ & (\Add2~54_combout\)) # (!\counterMin[2]~0_combout\ & ((counterHrs(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~9_combout\,
	datab => \Add2~54_combout\,
	datac => counterHrs(27),
	datad => \counterMin[2]~0_combout\,
	combout => \counterHrs[27]~8_combout\);

-- Location: FF_X16_Y17_N3
\counterHrs[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[27]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(27));

-- Location: LCCOMB_X17_Y16_N24
\Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = (counterHrs(28) & (\Add2~55\ $ (GND))) # (!counterHrs(28) & (!\Add2~55\ & VCC))
-- \Add2~57\ = CARRY((counterHrs(28) & !\Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(28),
	datad => VCC,
	cin => \Add2~55\,
	combout => \Add2~56_combout\,
	cout => \Add2~57\);

-- Location: LCCOMB_X16_Y17_N8
\counterHrs[28]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[28]~7_combout\ = (!\LessThan2~9_combout\ & ((\counterMin[2]~0_combout\ & (\Add2~56_combout\)) # (!\counterMin[2]~0_combout\ & ((counterHrs(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~56_combout\,
	datab => \counterMin[2]~0_combout\,
	datac => counterHrs(28),
	datad => \LessThan2~9_combout\,
	combout => \counterHrs[28]~7_combout\);

-- Location: FF_X16_Y17_N9
\counterHrs[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[28]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(28));

-- Location: LCCOMB_X17_Y16_N26
\Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~58_combout\ = (counterHrs(29) & (!\Add2~57\)) # (!counterHrs(29) & ((\Add2~57\) # (GND)))
-- \Add2~59\ = CARRY((!\Add2~57\) # (!counterHrs(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(29),
	datad => VCC,
	cin => \Add2~57\,
	combout => \Add2~58_combout\,
	cout => \Add2~59\);

-- Location: LCCOMB_X16_Y16_N2
\counterHrs[29]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[29]~6_combout\ = (!\LessThan2~9_combout\ & ((\counterMin[2]~0_combout\ & ((\Add2~58_combout\))) # (!\counterMin[2]~0_combout\ & (counterHrs(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterMin[2]~0_combout\,
	datab => \LessThan2~9_combout\,
	datac => counterHrs(29),
	datad => \Add2~58_combout\,
	combout => \counterHrs[29]~6_combout\);

-- Location: FF_X16_Y16_N3
\counterHrs[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[29]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(29));

-- Location: LCCOMB_X17_Y16_N28
\Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~60_combout\ = (counterHrs(30) & (\Add2~59\ $ (GND))) # (!counterHrs(30) & (!\Add2~59\ & VCC))
-- \Add2~61\ = CARRY((counterHrs(30) & !\Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(30),
	datad => VCC,
	cin => \Add2~59\,
	combout => \Add2~60_combout\,
	cout => \Add2~61\);

-- Location: LCCOMB_X16_Y16_N8
\counterHrs[30]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[30]~5_combout\ = (!\LessThan2~9_combout\ & ((\counterMin[2]~0_combout\ & ((\Add2~60_combout\))) # (!\counterMin[2]~0_combout\ & (counterHrs(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterMin[2]~0_combout\,
	datab => \LessThan2~9_combout\,
	datac => counterHrs(30),
	datad => \Add2~60_combout\,
	combout => \counterHrs[30]~5_combout\);

-- Location: FF_X16_Y16_N9
\counterHrs[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(30));

-- Location: LCCOMB_X17_Y16_N30
\Add2~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~62_combout\ = \Add2~61\ $ (counterHrs(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counterHrs(31),
	cin => \Add2~61\,
	combout => \Add2~62_combout\);

-- Location: LCCOMB_X18_Y16_N16
\counterHrs[31]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[31]~31_combout\ = (!\LessThan2~9_combout\ & ((\counterMin[2]~0_combout\ & ((\Add2~62_combout\))) # (!\counterMin[2]~0_combout\ & (counterHrs(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~9_combout\,
	datab => \counterMin[2]~0_combout\,
	datac => counterHrs(31),
	datad => \Add2~62_combout\,
	combout => \counterHrs[31]~31_combout\);

-- Location: FF_X18_Y16_N17
\counterHrs[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(31));

-- Location: LCCOMB_X18_Y16_N24
\counterMin[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[2]~8_combout\ = (\counterMin[2]~0_combout\) # ((!counterHrs(31) & ((\LessThan2~4_combout\) # (\LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~4_combout\,
	datab => counterHrs(31),
	datac => \LessThan2~8_combout\,
	datad => \counterMin[2]~0_combout\,
	combout => \counterMin[2]~8_combout\);

-- Location: LCCOMB_X18_Y16_N30
\counterMin[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[2]~2_combout\ = ((\LessThan2~9_combout\) # (\counterMin[2]~0_combout\)) # (!\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~10_combout\,
	datac => \LessThan2~9_combout\,
	datad => \counterMin[2]~0_combout\,
	combout => \counterMin[2]~2_combout\);

-- Location: LCCOMB_X18_Y15_N0
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = counterMin(0) $ (VCC)
-- \Add1~1\ = CARRY(counterMin(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X17_Y15_N8
\counterMin~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin~1_combout\ = (!\LessThan2~9_combout\ & (\Add1~0_combout\ & !\counterMin[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~9_combout\,
	datab => \Add1~0_combout\,
	datad => \counterMin[2]~0_combout\,
	combout => \counterMin~1_combout\);

-- Location: FF_X17_Y15_N9
\counterMin[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin~1_combout\,
	ena => \counterMin[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(0));

-- Location: LCCOMB_X18_Y15_N2
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (counterMin(1) & (!\Add1~1\)) # (!counterMin(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!counterMin(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterMin(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X17_Y15_N30
\counterMin~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin~3_combout\ = (\Add1~2_combout\ & (!\counterMin[2]~0_combout\ & !\LessThan2~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \counterMin[2]~0_combout\,
	datad => \LessThan2~9_combout\,
	combout => \counterMin~3_combout\);

-- Location: FF_X17_Y15_N31
\counterMin[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin~3_combout\,
	ena => \counterMin[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(1));

-- Location: LCCOMB_X18_Y15_N4
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (counterMin(2) & (\Add1~3\ $ (GND))) # (!counterMin(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((counterMin(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X17_Y15_N12
\counterMin~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin~4_combout\ = (!\LessThan2~9_combout\ & (\Add1~4_combout\ & !\counterMin[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~9_combout\,
	datac => \Add1~4_combout\,
	datad => \counterMin[2]~0_combout\,
	combout => \counterMin~4_combout\);

-- Location: FF_X17_Y15_N13
\counterMin[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin~4_combout\,
	ena => \counterMin[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(2));

-- Location: LCCOMB_X18_Y15_N6
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (counterMin(3) & (!\Add1~5\)) # (!counterMin(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!counterMin(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X17_Y15_N26
\counterMin~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin~5_combout\ = (\Add1~6_combout\ & (!\LessThan2~9_combout\ & !\counterMin[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datac => \LessThan2~9_combout\,
	datad => \counterMin[2]~0_combout\,
	combout => \counterMin~5_combout\);

-- Location: FF_X17_Y15_N27
\counterMin[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin~5_combout\,
	ena => \counterMin[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(3));

-- Location: LCCOMB_X18_Y15_N8
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (counterMin(4) & (\Add1~7\ $ (GND))) # (!counterMin(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((counterMin(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X17_Y15_N16
\counterMin~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin~6_combout\ = (!\LessThan2~9_combout\ & (\Add1~8_combout\ & !\counterMin[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~9_combout\,
	datac => \Add1~8_combout\,
	datad => \counterMin[2]~0_combout\,
	combout => \counterMin~6_combout\);

-- Location: FF_X17_Y15_N17
\counterMin[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin~6_combout\,
	ena => \counterMin[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(4));

-- Location: LCCOMB_X18_Y15_N10
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (counterMin(5) & (!\Add1~9\)) # (!counterMin(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!counterMin(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterMin(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X17_Y15_N6
\counterMin~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin~7_combout\ = (!\LessThan2~9_combout\ & (\Add1~10_combout\ & !\counterMin[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~9_combout\,
	datac => \Add1~10_combout\,
	datad => \counterMin[2]~0_combout\,
	combout => \counterMin~7_combout\);

-- Location: FF_X17_Y15_N7
\counterMin[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin~7_combout\,
	ena => \counterMin[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(5));

-- Location: LCCOMB_X18_Y15_N12
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (counterMin(6) & (\Add1~11\ $ (GND))) # (!counterMin(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((counterMin(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterMin(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X19_Y15_N22
\counterMin[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[6]~29_combout\ = (\counterMin[2]~2_combout\ & (!\counterMin[2]~8_combout\ & ((\Add1~12_combout\)))) # (!\counterMin[2]~2_combout\ & (((counterMin(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterMin[2]~8_combout\,
	datab => \counterMin[2]~2_combout\,
	datac => counterMin(6),
	datad => \Add1~12_combout\,
	combout => \counterMin[6]~29_combout\);

-- Location: FF_X19_Y15_N23
\counterMin[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[6]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(6));

-- Location: LCCOMB_X18_Y15_N14
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (counterMin(7) & (!\Add1~13\)) # (!counterMin(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!counterMin(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterMin(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X19_Y15_N10
\counterMin[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[7]~33_combout\ = (\counterMin[2]~2_combout\ & (!\counterMin[2]~8_combout\ & ((\Add1~14_combout\)))) # (!\counterMin[2]~2_combout\ & (((counterMin(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterMin[2]~8_combout\,
	datab => \counterMin[2]~2_combout\,
	datac => counterMin(7),
	datad => \Add1~14_combout\,
	combout => \counterMin[7]~33_combout\);

-- Location: FF_X19_Y15_N11
\counterMin[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[7]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(7));

-- Location: LCCOMB_X18_Y15_N16
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (counterMin(8) & (\Add1~15\ $ (GND))) # (!counterMin(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((counterMin(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X19_Y15_N20
\counterMin[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[8]~32_combout\ = (\counterMin[2]~2_combout\ & (!\counterMin[2]~8_combout\ & ((\Add1~16_combout\)))) # (!\counterMin[2]~2_combout\ & (((counterMin(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterMin[2]~8_combout\,
	datab => \counterMin[2]~2_combout\,
	datac => counterMin(8),
	datad => \Add1~16_combout\,
	combout => \counterMin[8]~32_combout\);

-- Location: FF_X19_Y15_N21
\counterMin[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[8]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(8));

-- Location: LCCOMB_X18_Y15_N18
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (counterMin(9) & (!\Add1~17\)) # (!counterMin(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!counterMin(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterMin(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X19_Y15_N18
\counterMin[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[9]~31_combout\ = (\counterMin[2]~2_combout\ & (!\counterMin[2]~8_combout\ & ((\Add1~18_combout\)))) # (!\counterMin[2]~2_combout\ & (((counterMin(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterMin[2]~8_combout\,
	datab => \counterMin[2]~2_combout\,
	datac => counterMin(9),
	datad => \Add1~18_combout\,
	combout => \counterMin[9]~31_combout\);

-- Location: FF_X19_Y15_N19
\counterMin[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(9));

-- Location: LCCOMB_X18_Y15_N20
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (counterMin(10) & (\Add1~19\ $ (GND))) # (!counterMin(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((counterMin(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterMin(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X19_Y15_N0
\counterMin[10]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[10]~30_combout\ = (\counterMin[2]~2_combout\ & (!\counterMin[2]~8_combout\ & ((\Add1~20_combout\)))) # (!\counterMin[2]~2_combout\ & (((counterMin(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterMin[2]~8_combout\,
	datab => \counterMin[2]~2_combout\,
	datac => counterMin(10),
	datad => \Add1~20_combout\,
	combout => \counterMin[10]~30_combout\);

-- Location: FF_X19_Y15_N1
\counterMin[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[10]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(10));

-- Location: LCCOMB_X18_Y15_N22
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (counterMin(11) & (!\Add1~21\)) # (!counterMin(11) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!counterMin(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterMin(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X19_Y15_N14
\counterMin[11]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[11]~28_combout\ = (\counterMin[2]~2_combout\ & (!\counterMin[2]~8_combout\ & ((\Add1~22_combout\)))) # (!\counterMin[2]~2_combout\ & (((counterMin(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterMin[2]~8_combout\,
	datab => \counterMin[2]~2_combout\,
	datac => counterMin(11),
	datad => \Add1~22_combout\,
	combout => \counterMin[11]~28_combout\);

-- Location: FF_X19_Y15_N15
\counterMin[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(11));

-- Location: LCCOMB_X18_Y15_N24
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (counterMin(12) & (\Add1~23\ $ (GND))) # (!counterMin(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((counterMin(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X19_Y15_N4
\counterMin[12]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[12]~27_combout\ = (\counterMin[2]~2_combout\ & (!\counterMin[2]~8_combout\ & ((\Add1~24_combout\)))) # (!\counterMin[2]~2_combout\ & (((counterMin(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterMin[2]~8_combout\,
	datab => \counterMin[2]~2_combout\,
	datac => counterMin(12),
	datad => \Add1~24_combout\,
	combout => \counterMin[12]~27_combout\);

-- Location: FF_X19_Y15_N5
\counterMin[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[12]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(12));

-- Location: LCCOMB_X18_Y15_N26
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (counterMin(13) & (!\Add1~25\)) # (!counterMin(13) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!counterMin(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterMin(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X17_Y15_N24
\counterMin[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[13]~26_combout\ = (\counterMin[2]~2_combout\ & (\Add1~26_combout\ & ((!\counterMin[2]~8_combout\)))) # (!\counterMin[2]~2_combout\ & (((counterMin(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterMin[2]~2_combout\,
	datab => \Add1~26_combout\,
	datac => counterMin(13),
	datad => \counterMin[2]~8_combout\,
	combout => \counterMin[13]~26_combout\);

-- Location: FF_X17_Y15_N25
\counterMin[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[13]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(13));

-- Location: LCCOMB_X18_Y15_N28
\Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (counterMin(14) & (\Add1~27\ $ (GND))) # (!counterMin(14) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((counterMin(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X19_Y15_N30
\counterMin[14]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[14]~25_combout\ = (\counterMin[2]~2_combout\ & (!\counterMin[2]~8_combout\ & ((\Add1~28_combout\)))) # (!\counterMin[2]~2_combout\ & (((counterMin(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterMin[2]~8_combout\,
	datab => \counterMin[2]~2_combout\,
	datac => counterMin(14),
	datad => \Add1~28_combout\,
	combout => \counterMin[14]~25_combout\);

-- Location: FF_X19_Y15_N31
\counterMin[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[14]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(14));

-- Location: LCCOMB_X18_Y15_N30
\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (counterMin(15) & (!\Add1~29\)) # (!counterMin(15) & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!counterMin(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterMin(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X19_Y15_N26
\counterMin[15]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[15]~24_combout\ = (\counterMin[2]~2_combout\ & (!\counterMin[2]~8_combout\ & ((\Add1~30_combout\)))) # (!\counterMin[2]~2_combout\ & (((counterMin(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterMin[2]~8_combout\,
	datab => \counterMin[2]~2_combout\,
	datac => counterMin(15),
	datad => \Add1~30_combout\,
	combout => \counterMin[15]~24_combout\);

-- Location: FF_X19_Y15_N27
\counterMin[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[15]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(15));

-- Location: LCCOMB_X18_Y14_N0
\Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (counterMin(16) & (\Add1~31\ $ (GND))) # (!counterMin(16) & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((counterMin(16) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterMin(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X19_Y15_N24
\counterMin[16]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[16]~23_combout\ = (\counterMin[2]~2_combout\ & (!\counterMin[2]~8_combout\ & ((\Add1~32_combout\)))) # (!\counterMin[2]~2_combout\ & (((counterMin(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterMin[2]~8_combout\,
	datab => \counterMin[2]~2_combout\,
	datac => counterMin(16),
	datad => \Add1~32_combout\,
	combout => \counterMin[16]~23_combout\);

-- Location: FF_X19_Y15_N25
\counterMin[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[16]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(16));

-- Location: LCCOMB_X18_Y14_N2
\Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (counterMin(17) & (!\Add1~33\)) # (!counterMin(17) & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!counterMin(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X19_Y15_N6
\counterMin[17]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[17]~22_combout\ = (\counterMin[2]~2_combout\ & (!\counterMin[2]~8_combout\ & ((\Add1~34_combout\)))) # (!\counterMin[2]~2_combout\ & (((counterMin(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterMin[2]~8_combout\,
	datab => \counterMin[2]~2_combout\,
	datac => counterMin(17),
	datad => \Add1~34_combout\,
	combout => \counterMin[17]~22_combout\);

-- Location: FF_X19_Y15_N7
\counterMin[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[17]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(17));

-- Location: LCCOMB_X18_Y14_N4
\Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (counterMin(18) & (\Add1~35\ $ (GND))) # (!counterMin(18) & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((counterMin(18) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X19_Y15_N16
\counterMin[18]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[18]~21_combout\ = (\counterMin[2]~2_combout\ & (!\counterMin[2]~8_combout\ & ((\Add1~36_combout\)))) # (!\counterMin[2]~2_combout\ & (((counterMin(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterMin[2]~8_combout\,
	datab => \counterMin[2]~2_combout\,
	datac => counterMin(18),
	datad => \Add1~36_combout\,
	combout => \counterMin[18]~21_combout\);

-- Location: FF_X19_Y15_N17
\counterMin[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[18]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(18));

-- Location: LCCOMB_X18_Y14_N6
\Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (counterMin(19) & (!\Add1~37\)) # (!counterMin(19) & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!counterMin(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterMin(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X19_Y14_N26
\counterMin[19]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[19]~20_combout\ = (\counterMin[2]~2_combout\ & (\Add1~38_combout\ & ((!\counterMin[2]~8_combout\)))) # (!\counterMin[2]~2_combout\ & (((counterMin(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterMin[2]~2_combout\,
	datab => \Add1~38_combout\,
	datac => counterMin(19),
	datad => \counterMin[2]~8_combout\,
	combout => \counterMin[19]~20_combout\);

-- Location: FF_X19_Y14_N27
\counterMin[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(19));

-- Location: LCCOMB_X18_Y14_N8
\Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (counterMin(20) & (\Add1~39\ $ (GND))) # (!counterMin(20) & (!\Add1~39\ & VCC))
-- \Add1~41\ = CARRY((counterMin(20) & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterMin(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X19_Y14_N4
\counterMin[20]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[20]~19_combout\ = (\counterMin[2]~2_combout\ & (!\counterMin[2]~8_combout\ & ((\Add1~40_combout\)))) # (!\counterMin[2]~2_combout\ & (((counterMin(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterMin[2]~2_combout\,
	datab => \counterMin[2]~8_combout\,
	datac => counterMin(20),
	datad => \Add1~40_combout\,
	combout => \counterMin[20]~19_combout\);

-- Location: FF_X19_Y14_N5
\counterMin[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[20]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(20));

-- Location: LCCOMB_X18_Y14_N10
\Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (counterMin(21) & (!\Add1~41\)) # (!counterMin(21) & ((\Add1~41\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~41\) # (!counterMin(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X19_Y14_N6
\counterMin[21]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[21]~18_combout\ = (\counterMin[2]~2_combout\ & (!\counterMin[2]~8_combout\ & ((\Add1~42_combout\)))) # (!\counterMin[2]~2_combout\ & (((counterMin(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterMin[2]~2_combout\,
	datab => \counterMin[2]~8_combout\,
	datac => counterMin(21),
	datad => \Add1~42_combout\,
	combout => \counterMin[21]~18_combout\);

-- Location: FF_X19_Y14_N7
\counterMin[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[21]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(21));

-- Location: LCCOMB_X18_Y14_N12
\Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (counterMin(22) & (\Add1~43\ $ (GND))) # (!counterMin(22) & (!\Add1~43\ & VCC))
-- \Add1~45\ = CARRY((counterMin(22) & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterMin(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X19_Y14_N8
\counterMin[22]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[22]~17_combout\ = (\counterMin[2]~2_combout\ & (!\counterMin[2]~8_combout\ & ((\Add1~44_combout\)))) # (!\counterMin[2]~2_combout\ & (((counterMin(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterMin[2]~2_combout\,
	datab => \counterMin[2]~8_combout\,
	datac => counterMin(22),
	datad => \Add1~44_combout\,
	combout => \counterMin[22]~17_combout\);

-- Location: FF_X19_Y14_N9
\counterMin[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[22]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(22));

-- Location: LCCOMB_X18_Y14_N14
\Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (counterMin(23) & (!\Add1~45\)) # (!counterMin(23) & ((\Add1~45\) # (GND)))
-- \Add1~47\ = CARRY((!\Add1~45\) # (!counterMin(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterMin(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X19_Y14_N16
\counterMin[23]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[23]~16_combout\ = (\counterMin[2]~2_combout\ & (!\counterMin[2]~8_combout\ & ((\Add1~46_combout\)))) # (!\counterMin[2]~2_combout\ & (((counterMin(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterMin[2]~2_combout\,
	datab => \counterMin[2]~8_combout\,
	datac => counterMin(23),
	datad => \Add1~46_combout\,
	combout => \counterMin[23]~16_combout\);

-- Location: FF_X19_Y14_N17
\counterMin[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[23]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(23));

-- Location: LCCOMB_X18_Y14_N16
\Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (counterMin(24) & (\Add1~47\ $ (GND))) # (!counterMin(24) & (!\Add1~47\ & VCC))
-- \Add1~49\ = CARRY((counterMin(24) & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterMin(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X19_Y14_N10
\counterMin[24]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[24]~15_combout\ = (\counterMin[2]~2_combout\ & (\Add1~48_combout\ & ((!\counterMin[2]~8_combout\)))) # (!\counterMin[2]~2_combout\ & (((counterMin(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterMin[2]~2_combout\,
	datab => \Add1~48_combout\,
	datac => counterMin(24),
	datad => \counterMin[2]~8_combout\,
	combout => \counterMin[24]~15_combout\);

-- Location: FF_X19_Y14_N11
\counterMin[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[24]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(24));

-- Location: LCCOMB_X18_Y14_N18
\Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (counterMin(25) & (!\Add1~49\)) # (!counterMin(25) & ((\Add1~49\) # (GND)))
-- \Add1~51\ = CARRY((!\Add1~49\) # (!counterMin(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterMin(25),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X19_Y14_N28
\counterMin[25]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[25]~14_combout\ = (\counterMin[2]~2_combout\ & (!\counterMin[2]~8_combout\ & ((\Add1~50_combout\)))) # (!\counterMin[2]~2_combout\ & (((counterMin(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterMin[2]~2_combout\,
	datab => \counterMin[2]~8_combout\,
	datac => counterMin(25),
	datad => \Add1~50_combout\,
	combout => \counterMin[25]~14_combout\);

-- Location: FF_X19_Y14_N29
\counterMin[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[25]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(25));

-- Location: LCCOMB_X18_Y14_N20
\Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (counterMin(26) & (\Add1~51\ $ (GND))) # (!counterMin(26) & (!\Add1~51\ & VCC))
-- \Add1~53\ = CARRY((counterMin(26) & !\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(26),
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: LCCOMB_X19_Y14_N30
\counterMin[26]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[26]~13_combout\ = (\counterMin[2]~2_combout\ & (!\counterMin[2]~8_combout\ & ((\Add1~52_combout\)))) # (!\counterMin[2]~2_combout\ & (((counterMin(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterMin[2]~2_combout\,
	datab => \counterMin[2]~8_combout\,
	datac => counterMin(26),
	datad => \Add1~52_combout\,
	combout => \counterMin[26]~13_combout\);

-- Location: FF_X19_Y14_N31
\counterMin[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[26]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(26));

-- Location: LCCOMB_X18_Y14_N22
\Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (counterMin(27) & (!\Add1~53\)) # (!counterMin(27) & ((\Add1~53\) # (GND)))
-- \Add1~55\ = CARRY((!\Add1~53\) # (!counterMin(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(27),
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCCOMB_X19_Y14_N14
\counterMin[27]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[27]~12_combout\ = (\counterMin[2]~2_combout\ & (\Add1~54_combout\ & ((!\counterMin[2]~8_combout\)))) # (!\counterMin[2]~2_combout\ & (((counterMin(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterMin[2]~2_combout\,
	datab => \Add1~54_combout\,
	datac => counterMin(27),
	datad => \counterMin[2]~8_combout\,
	combout => \counterMin[27]~12_combout\);

-- Location: FF_X19_Y14_N15
\counterMin[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[27]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(27));

-- Location: LCCOMB_X18_Y14_N24
\Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (counterMin(28) & (\Add1~55\ $ (GND))) # (!counterMin(28) & (!\Add1~55\ & VCC))
-- \Add1~57\ = CARRY((counterMin(28) & !\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterMin(28),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: LCCOMB_X19_Y14_N20
\counterMin[28]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[28]~11_combout\ = (\counterMin[2]~2_combout\ & (!\counterMin[2]~8_combout\ & ((\Add1~56_combout\)))) # (!\counterMin[2]~2_combout\ & (((counterMin(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterMin[2]~2_combout\,
	datab => \counterMin[2]~8_combout\,
	datac => counterMin(28),
	datad => \Add1~56_combout\,
	combout => \counterMin[28]~11_combout\);

-- Location: FF_X19_Y14_N21
\counterMin[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[28]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(28));

-- Location: LCCOMB_X18_Y14_N26
\Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (counterMin(29) & (!\Add1~57\)) # (!counterMin(29) & ((\Add1~57\) # (GND)))
-- \Add1~59\ = CARRY((!\Add1~57\) # (!counterMin(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterMin(29),
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: LCCOMB_X19_Y14_N22
\counterMin[29]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[29]~10_combout\ = (!\counterMin[2]~8_combout\ & ((\LessThan0~10_combout\ & ((counterMin(29)))) # (!\LessThan0~10_combout\ & (\Add1~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~58_combout\,
	datab => \LessThan0~10_combout\,
	datac => counterMin(29),
	datad => \counterMin[2]~8_combout\,
	combout => \counterMin[29]~10_combout\);

-- Location: FF_X19_Y14_N23
\counterMin[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[29]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(29));

-- Location: LCCOMB_X18_Y14_N28
\Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (counterMin(30) & (\Add1~59\ $ (GND))) # (!counterMin(30) & (!\Add1~59\ & VCC))
-- \Add1~61\ = CARRY((counterMin(30) & !\Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterMin(30),
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCCOMB_X19_Y14_N0
\counterMin[30]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[30]~9_combout\ = (!\counterMin[2]~8_combout\ & ((\LessThan0~10_combout\ & (counterMin(30))) # (!\LessThan0~10_combout\ & ((\Add1~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterMin[2]~8_combout\,
	datab => \LessThan0~10_combout\,
	datac => counterMin(30),
	datad => \Add1~60_combout\,
	combout => \counterMin[30]~9_combout\);

-- Location: FF_X19_Y14_N1
\counterMin[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[30]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(30));

-- Location: LCCOMB_X18_Y14_N30
\Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = counterMin(31) $ (\Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(31),
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: LCCOMB_X18_Y16_N10
\counterMin[31]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[31]~34_combout\ = (!\counterMin[2]~8_combout\ & ((\LessThan0~10_combout\ & (counterMin(31))) # (!\LessThan0~10_combout\ & ((\Add1~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => \counterMin[2]~8_combout\,
	datac => counterMin(31),
	datad => \Add1~62_combout\,
	combout => \counterMin[31]~34_combout\);

-- Location: FF_X18_Y16_N11
\counterMin[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(31));

-- Location: LCCOMB_X19_Y15_N28
\LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (counterMin(15)) # ((counterMin(16)) # ((counterMin(17)) # (counterMin(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(15),
	datab => counterMin(16),
	datac => counterMin(17),
	datad => counterMin(18),
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X19_Y15_N8
\LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = (counterMin(14)) # ((counterMin(11)) # ((counterMin(12)) # (counterMin(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(14),
	datab => counterMin(11),
	datac => counterMin(12),
	datad => counterMin(13),
	combout => \LessThan1~6_combout\);

-- Location: LCCOMB_X19_Y15_N12
\LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = (counterMin(7)) # ((counterMin(9)) # ((counterMin(8)) # (counterMin(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(7),
	datab => counterMin(9),
	datac => counterMin(8),
	datad => counterMin(10),
	combout => \LessThan1~7_combout\);

-- Location: LCCOMB_X19_Y15_N2
\LessThan1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~8_combout\ = (counterMin(6)) # ((\LessThan1~5_combout\) # ((\LessThan1~6_combout\) # (\LessThan1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(6),
	datab => \LessThan1~5_combout\,
	datac => \LessThan1~6_combout\,
	datad => \LessThan1~7_combout\,
	combout => \LessThan1~8_combout\);

-- Location: LCCOMB_X17_Y15_N14
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (counterMin(2) & (counterMin(4) & (counterMin(3) & counterMin(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(2),
	datab => counterMin(4),
	datac => counterMin(3),
	datad => counterMin(5),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X19_Y14_N12
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (counterMin(29)) # ((counterMin(30)) # ((counterMin(27)) # (counterMin(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(29),
	datab => counterMin(30),
	datac => counterMin(27),
	datad => counterMin(28),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X19_Y14_N18
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (counterMin(24)) # ((counterMin(25)) # ((counterMin(26)) # (counterMin(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(24),
	datab => counterMin(25),
	datac => counterMin(26),
	datad => counterMin(23),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X19_Y14_N24
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (counterMin(21)) # ((counterMin(20)) # ((counterMin(22)) # (counterMin(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(21),
	datab => counterMin(20),
	datac => counterMin(22),
	datad => counterMin(19),
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X18_Y16_N12
\LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (\LessThan1~0_combout\) # ((\LessThan1~1_combout\) # ((\LessThan1~2_combout\) # (\LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => \LessThan1~1_combout\,
	datac => \LessThan1~2_combout\,
	datad => \LessThan1~3_combout\,
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X18_Y16_N20
\counterMin[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[2]~0_combout\ = (!counterMin(31) & ((\LessThan1~8_combout\) # (\LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(31),
	datac => \LessThan1~8_combout\,
	datad => \LessThan1~4_combout\,
	combout => \counterMin[2]~0_combout\);

-- Location: LCCOMB_X16_Y16_N30
\counterHrs[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[4]~4_combout\ = (!\LessThan2~9_combout\ & ((\counterMin[2]~0_combout\ & ((\Add2~8_combout\))) # (!\counterMin[2]~0_combout\ & (counterHrs(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterMin[2]~0_combout\,
	datab => \LessThan2~9_combout\,
	datac => counterHrs(4),
	datad => \Add2~8_combout\,
	combout => \counterHrs[4]~4_combout\);

-- Location: FF_X16_Y16_N31
\counterHrs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(4));

-- Location: LCCOMB_X16_Y16_N12
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (counterHrs(30)) # ((counterHrs(29)) # ((counterHrs(4) & counterHrs(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(4),
	datab => counterHrs(30),
	datac => counterHrs(3),
	datad => counterHrs(29),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X16_Y16_N14
\LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (counterHrs(22)) # ((counterHrs(24)) # ((counterHrs(23)) # (counterHrs(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(22),
	datab => counterHrs(24),
	datac => counterHrs(23),
	datad => counterHrs(21),
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X16_Y17_N20
\LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (counterHrs(25)) # ((counterHrs(28)) # ((counterHrs(26)) # (counterHrs(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(25),
	datab => counterHrs(28),
	datac => counterHrs(26),
	datad => counterHrs(27),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X16_Y16_N16
\LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = (counterHrs(19)) # ((counterHrs(18)) # ((counterHrs(17)) # (counterHrs(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(19),
	datab => counterHrs(18),
	datac => counterHrs(17),
	datad => counterHrs(20),
	combout => \LessThan2~3_combout\);

-- Location: LCCOMB_X16_Y16_N6
\LessThan2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = (\LessThan2~0_combout\) # ((\LessThan2~2_combout\) # ((\LessThan2~1_combout\) # (\LessThan2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => \LessThan2~2_combout\,
	datac => \LessThan2~1_combout\,
	datad => \LessThan2~3_combout\,
	combout => \LessThan2~4_combout\);

-- Location: LCCOMB_X18_Y16_N6
\counterSec[22]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[22]~98_combout\ = ((!counterHrs(31) & ((\LessThan2~4_combout\) # (\LessThan2~8_combout\)))) # (!\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~4_combout\,
	datab => counterHrs(31),
	datac => \LessThan2~8_combout\,
	datad => \LessThan0~10_combout\,
	combout => \counterSec[22]~98_combout\);

-- Location: FF_X19_Y17_N1
\counterSec[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[0]~34_combout\,
	sclr => \counterSec[22]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(0));

-- Location: IOIBUF_X34_Y7_N8
\inSec[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inSec(0),
	o => \inSec[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\inSec[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inSec(1),
	o => \inSec[1]~input_o\);

-- Location: IOIBUF_X5_Y24_N8
\inSec[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inSec(2),
	o => \inSec[2]~input_o\);

-- Location: IOIBUF_X3_Y24_N22
\inSec[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inSec(3),
	o => \inSec[3]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\inSec[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inSec(4),
	o => \inSec[4]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\inSec[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inSec(5),
	o => \inSec[5]~input_o\);

-- Location: IOIBUF_X30_Y24_N22
\inMin[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inMin(0),
	o => \inMin[0]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\inMin[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inMin(1),
	o => \inMin[1]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\inMin[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inMin(2),
	o => \inMin[2]~input_o\);

-- Location: IOIBUF_X34_Y4_N15
\inMin[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inMin(3),
	o => \inMin[3]~input_o\);

-- Location: IOIBUF_X30_Y24_N1
\inMin[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inMin(4),
	o => \inMin[4]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\inMin[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inMin(5),
	o => \inMin[5]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\inHrs[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inHrs(0),
	o => \inHrs[0]~input_o\);

-- Location: IOIBUF_X32_Y0_N15
\inHrs[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inHrs(1),
	o => \inHrs[1]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\inHrs[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inHrs(2),
	o => \inHrs[2]~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\inHrs[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inHrs(3),
	o => \inHrs[3]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\inHrs[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inHrs(4),
	o => \inHrs[4]~input_o\);

ww_sec(0) <= \sec[0]~output_o\;

ww_sec(1) <= \sec[1]~output_o\;

ww_sec(2) <= \sec[2]~output_o\;

ww_sec(3) <= \sec[3]~output_o\;

ww_sec(4) <= \sec[4]~output_o\;

ww_sec(5) <= \sec[5]~output_o\;

ww_min(0) <= \min[0]~output_o\;

ww_min(1) <= \min[1]~output_o\;

ww_min(2) <= \min[2]~output_o\;

ww_min(3) <= \min[3]~output_o\;

ww_min(4) <= \min[4]~output_o\;

ww_min(5) <= \min[5]~output_o\;

ww_hrs(0) <= \hrs[0]~output_o\;

ww_hrs(1) <= \hrs[1]~output_o\;

ww_hrs(2) <= \hrs[2]~output_o\;

ww_hrs(3) <= \hrs[3]~output_o\;

ww_hrs(4) <= \hrs[4]~output_o\;

ww_set <= \set~output_o\;
END structure;


