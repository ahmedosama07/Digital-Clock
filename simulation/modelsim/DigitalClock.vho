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

-- DATE "12/28/2022 21:13:54"

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
-- sec[0]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec[2]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec[3]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec[4]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec[5]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min[0]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min[1]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min[2]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min[3]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min[4]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min[5]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hrs[0]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hrs[1]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hrs[2]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hrs[3]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hrs[4]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inSec[0]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inSec[1]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inSec[2]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inSec[3]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inSec[4]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inSec[5]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inMin[0]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inMin[1]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inMin[2]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inMin[3]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inMin[4]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inMin[5]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inHrs[0]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inHrs[1]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inHrs[2]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inHrs[3]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inHrs[4]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- set	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \counterSec[0]~32_combout\ : std_logic;
SIGNAL \counterSec[0]~33\ : std_logic;
SIGNAL \counterSec[1]~34_combout\ : std_logic;
SIGNAL \counterSec[1]~35\ : std_logic;
SIGNAL \counterSec[2]~36_combout\ : std_logic;
SIGNAL \counterSec[2]~37\ : std_logic;
SIGNAL \counterSec[3]~38_combout\ : std_logic;
SIGNAL \counterSec[3]~39\ : std_logic;
SIGNAL \counterSec[4]~40_combout\ : std_logic;
SIGNAL \counterSec[4]~41\ : std_logic;
SIGNAL \counterSec[5]~42_combout\ : std_logic;
SIGNAL \counterSec[5]~43\ : std_logic;
SIGNAL \counterSec[6]~44_combout\ : std_logic;
SIGNAL \counterSec[6]~45\ : std_logic;
SIGNAL \counterSec[7]~46_combout\ : std_logic;
SIGNAL \counterSec[7]~47\ : std_logic;
SIGNAL \counterSec[8]~48_combout\ : std_logic;
SIGNAL \counterSec[8]~49\ : std_logic;
SIGNAL \counterSec[9]~50_combout\ : std_logic;
SIGNAL \counterSec[9]~51\ : std_logic;
SIGNAL \counterSec[10]~52_combout\ : std_logic;
SIGNAL \counterSec[10]~53\ : std_logic;
SIGNAL \counterSec[11]~54_combout\ : std_logic;
SIGNAL \counterSec[11]~55\ : std_logic;
SIGNAL \counterSec[12]~56_combout\ : std_logic;
SIGNAL \counterSec[12]~57\ : std_logic;
SIGNAL \counterSec[13]~58_combout\ : std_logic;
SIGNAL \counterSec[13]~59\ : std_logic;
SIGNAL \counterSec[14]~60_combout\ : std_logic;
SIGNAL \counterSec[14]~61\ : std_logic;
SIGNAL \counterSec[15]~62_combout\ : std_logic;
SIGNAL \counterSec[15]~63\ : std_logic;
SIGNAL \counterSec[16]~64_combout\ : std_logic;
SIGNAL \counterSec[16]~65\ : std_logic;
SIGNAL \counterSec[17]~66_combout\ : std_logic;
SIGNAL \counterSec[17]~67\ : std_logic;
SIGNAL \counterSec[18]~68_combout\ : std_logic;
SIGNAL \counterSec[18]~69\ : std_logic;
SIGNAL \counterSec[19]~70_combout\ : std_logic;
SIGNAL \counterSec[19]~71\ : std_logic;
SIGNAL \counterSec[20]~72_combout\ : std_logic;
SIGNAL \counterSec[20]~73\ : std_logic;
SIGNAL \counterSec[21]~74_combout\ : std_logic;
SIGNAL \counterSec[21]~75\ : std_logic;
SIGNAL \counterSec[22]~76_combout\ : std_logic;
SIGNAL \counterSec[22]~77\ : std_logic;
SIGNAL \counterSec[23]~78_combout\ : std_logic;
SIGNAL \counterSec[23]~79\ : std_logic;
SIGNAL \counterSec[24]~80_combout\ : std_logic;
SIGNAL \counterSec[24]~81\ : std_logic;
SIGNAL \counterSec[25]~82_combout\ : std_logic;
SIGNAL \counterSec[25]~83\ : std_logic;
SIGNAL \counterSec[26]~84_combout\ : std_logic;
SIGNAL \counterSec[26]~85\ : std_logic;
SIGNAL \counterSec[27]~86_combout\ : std_logic;
SIGNAL \counterSec[27]~87\ : std_logic;
SIGNAL \counterSec[28]~88_combout\ : std_logic;
SIGNAL \counterSec[28]~89\ : std_logic;
SIGNAL \counterSec[29]~90_combout\ : std_logic;
SIGNAL \counterSec[29]~91\ : std_logic;
SIGNAL \counterSec[30]~92_combout\ : std_logic;
SIGNAL \counterSec[30]~93\ : std_logic;
SIGNAL \counterSec[31]~94_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \counterMin[0]~32_combout\ : std_logic;
SIGNAL \counterMin[0]~33\ : std_logic;
SIGNAL \counterMin[1]~34_combout\ : std_logic;
SIGNAL \counterMin[1]~35\ : std_logic;
SIGNAL \counterMin[2]~36_combout\ : std_logic;
SIGNAL \counterMin[2]~37\ : std_logic;
SIGNAL \counterMin[3]~38_combout\ : std_logic;
SIGNAL \counterMin[3]~39\ : std_logic;
SIGNAL \counterMin[4]~40_combout\ : std_logic;
SIGNAL \counterMin[4]~41\ : std_logic;
SIGNAL \counterMin[5]~42_combout\ : std_logic;
SIGNAL \counterMin[5]~43\ : std_logic;
SIGNAL \counterMin[6]~44_combout\ : std_logic;
SIGNAL \counterMin[6]~45\ : std_logic;
SIGNAL \counterMin[7]~46_combout\ : std_logic;
SIGNAL \counterMin[7]~47\ : std_logic;
SIGNAL \counterMin[8]~48_combout\ : std_logic;
SIGNAL \counterMin[8]~49\ : std_logic;
SIGNAL \counterMin[9]~50_combout\ : std_logic;
SIGNAL \counterMin[9]~51\ : std_logic;
SIGNAL \counterMin[10]~52_combout\ : std_logic;
SIGNAL \counterMin[10]~53\ : std_logic;
SIGNAL \counterMin[11]~54_combout\ : std_logic;
SIGNAL \counterMin[11]~55\ : std_logic;
SIGNAL \counterMin[12]~56_combout\ : std_logic;
SIGNAL \counterMin[12]~57\ : std_logic;
SIGNAL \counterMin[13]~58_combout\ : std_logic;
SIGNAL \counterMin[13]~59\ : std_logic;
SIGNAL \counterMin[14]~60_combout\ : std_logic;
SIGNAL \counterMin[14]~61\ : std_logic;
SIGNAL \counterMin[15]~62_combout\ : std_logic;
SIGNAL \counterMin[15]~63\ : std_logic;
SIGNAL \counterMin[16]~64_combout\ : std_logic;
SIGNAL \counterMin[16]~65\ : std_logic;
SIGNAL \counterMin[17]~66_combout\ : std_logic;
SIGNAL \counterMin[17]~67\ : std_logic;
SIGNAL \counterMin[18]~68_combout\ : std_logic;
SIGNAL \counterMin[18]~69\ : std_logic;
SIGNAL \counterMin[19]~70_combout\ : std_logic;
SIGNAL \counterMin[19]~71\ : std_logic;
SIGNAL \counterMin[20]~72_combout\ : std_logic;
SIGNAL \counterMin[20]~73\ : std_logic;
SIGNAL \counterMin[21]~74_combout\ : std_logic;
SIGNAL \counterMin[21]~75\ : std_logic;
SIGNAL \counterMin[22]~76_combout\ : std_logic;
SIGNAL \counterMin[22]~77\ : std_logic;
SIGNAL \counterMin[23]~78_combout\ : std_logic;
SIGNAL \counterMin[23]~79\ : std_logic;
SIGNAL \counterMin[24]~80_combout\ : std_logic;
SIGNAL \counterMin[24]~81\ : std_logic;
SIGNAL \counterMin[25]~82_combout\ : std_logic;
SIGNAL \counterMin[25]~83\ : std_logic;
SIGNAL \counterMin[26]~84_combout\ : std_logic;
SIGNAL \counterMin[26]~85\ : std_logic;
SIGNAL \counterMin[27]~86_combout\ : std_logic;
SIGNAL \counterMin[27]~87\ : std_logic;
SIGNAL \counterMin[28]~88_combout\ : std_logic;
SIGNAL \counterMin[28]~89\ : std_logic;
SIGNAL \counterMin[29]~90_combout\ : std_logic;
SIGNAL \counterMin[29]~91\ : std_logic;
SIGNAL \counterMin[30]~92_combout\ : std_logic;
SIGNAL \counterMin[30]~93\ : std_logic;
SIGNAL \counterMin[31]~94_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \LessThan1~8_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan1~9_combout\ : std_logic;
SIGNAL \LessThan1~10_combout\ : std_logic;
SIGNAL \counterHrs[0]~32_combout\ : std_logic;
SIGNAL \counterHrs[0]~33\ : std_logic;
SIGNAL \counterHrs[1]~35_combout\ : std_logic;
SIGNAL \counterHrs[0]~34_combout\ : std_logic;
SIGNAL \counterHrs[1]~36\ : std_logic;
SIGNAL \counterHrs[2]~37_combout\ : std_logic;
SIGNAL \counterHrs[2]~38\ : std_logic;
SIGNAL \counterHrs[3]~39_combout\ : std_logic;
SIGNAL \counterHrs[3]~40\ : std_logic;
SIGNAL \counterHrs[4]~41_combout\ : std_logic;
SIGNAL \counterHrs[4]~42\ : std_logic;
SIGNAL \counterHrs[5]~43_combout\ : std_logic;
SIGNAL \counterHrs[5]~44\ : std_logic;
SIGNAL \counterHrs[6]~45_combout\ : std_logic;
SIGNAL \counterHrs[6]~46\ : std_logic;
SIGNAL \counterHrs[7]~47_combout\ : std_logic;
SIGNAL \counterHrs[7]~48\ : std_logic;
SIGNAL \counterHrs[8]~49_combout\ : std_logic;
SIGNAL \counterHrs[8]~50\ : std_logic;
SIGNAL \counterHrs[9]~51_combout\ : std_logic;
SIGNAL \counterHrs[9]~52\ : std_logic;
SIGNAL \counterHrs[10]~53_combout\ : std_logic;
SIGNAL \counterHrs[10]~54\ : std_logic;
SIGNAL \counterHrs[11]~55_combout\ : std_logic;
SIGNAL \counterHrs[11]~56\ : std_logic;
SIGNAL \counterHrs[12]~57_combout\ : std_logic;
SIGNAL \counterHrs[12]~58\ : std_logic;
SIGNAL \counterHrs[13]~59_combout\ : std_logic;
SIGNAL \counterHrs[13]~60\ : std_logic;
SIGNAL \counterHrs[14]~61_combout\ : std_logic;
SIGNAL \counterHrs[14]~62\ : std_logic;
SIGNAL \counterHrs[15]~63_combout\ : std_logic;
SIGNAL \counterHrs[15]~64\ : std_logic;
SIGNAL \counterHrs[16]~65_combout\ : std_logic;
SIGNAL \counterHrs[16]~66\ : std_logic;
SIGNAL \counterHrs[17]~67_combout\ : std_logic;
SIGNAL \counterHrs[17]~68\ : std_logic;
SIGNAL \counterHrs[18]~69_combout\ : std_logic;
SIGNAL \counterHrs[18]~70\ : std_logic;
SIGNAL \counterHrs[19]~71_combout\ : std_logic;
SIGNAL \counterHrs[19]~72\ : std_logic;
SIGNAL \counterHrs[20]~73_combout\ : std_logic;
SIGNAL \counterHrs[20]~74\ : std_logic;
SIGNAL \counterHrs[21]~75_combout\ : std_logic;
SIGNAL \counterHrs[21]~76\ : std_logic;
SIGNAL \counterHrs[22]~77_combout\ : std_logic;
SIGNAL \counterHrs[22]~78\ : std_logic;
SIGNAL \counterHrs[23]~79_combout\ : std_logic;
SIGNAL \counterHrs[23]~80\ : std_logic;
SIGNAL \counterHrs[24]~81_combout\ : std_logic;
SIGNAL \counterHrs[24]~82\ : std_logic;
SIGNAL \counterHrs[25]~83_combout\ : std_logic;
SIGNAL \counterHrs[25]~84\ : std_logic;
SIGNAL \counterHrs[26]~85_combout\ : std_logic;
SIGNAL \counterHrs[26]~86\ : std_logic;
SIGNAL \counterHrs[27]~87_combout\ : std_logic;
SIGNAL \counterHrs[27]~88\ : std_logic;
SIGNAL \counterHrs[28]~89_combout\ : std_logic;
SIGNAL \counterHrs[28]~90\ : std_logic;
SIGNAL \counterHrs[29]~91_combout\ : std_logic;
SIGNAL \counterHrs[29]~92\ : std_logic;
SIGNAL \counterHrs[30]~93_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \LessThan2~8_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \LessThan2~7_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \LessThan2~9_combout\ : std_logic;
SIGNAL \counterHrs[30]~94\ : std_logic;
SIGNAL \counterHrs[31]~95_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~10_combout\ : std_logic;
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

-- Location: IOOBUF_X23_Y24_N9
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

-- Location: IOOBUF_X23_Y24_N16
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

-- Location: IOOBUF_X34_Y18_N16
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

-- Location: IOOBUF_X34_Y18_N2
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

-- Location: IOOBUF_X34_Y19_N16
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

-- Location: IOOBUF_X23_Y24_N2
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

-- Location: IOOBUF_X28_Y24_N9
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

-- Location: IOOBUF_X34_Y20_N9
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

-- Location: IOOBUF_X28_Y24_N23
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

-- Location: IOOBUF_X16_Y24_N2
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

-- Location: IOOBUF_X28_Y24_N2
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

-- Location: IOOBUF_X28_Y24_N16
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

-- Location: IOOBUF_X16_Y24_N23
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

-- Location: IOOBUF_X16_Y24_N16
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

-- Location: IOOBUF_X18_Y24_N23
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

-- Location: IOOBUF_X18_Y24_N16
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

-- Location: IOOBUF_X16_Y24_N9
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

-- Location: IOOBUF_X13_Y24_N23
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

-- Location: LCCOMB_X24_Y18_N0
\counterSec[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[0]~32_combout\ = counterSec(0) $ (VCC)
-- \counterSec[0]~33\ = CARRY(counterSec(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counterSec(0),
	datad => VCC,
	combout => \counterSec[0]~32_combout\,
	cout => \counterSec[0]~33\);

-- Location: LCCOMB_X24_Y18_N2
\counterSec[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[1]~34_combout\ = (counterSec(1) & (!\counterSec[0]~33\)) # (!counterSec(1) & ((\counterSec[0]~33\) # (GND)))
-- \counterSec[1]~35\ = CARRY((!\counterSec[0]~33\) # (!counterSec(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterSec(1),
	datad => VCC,
	cin => \counterSec[0]~33\,
	combout => \counterSec[1]~34_combout\,
	cout => \counterSec[1]~35\);

-- Location: FF_X24_Y18_N3
\counterSec[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[1]~34_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(1));

-- Location: LCCOMB_X24_Y18_N4
\counterSec[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[2]~36_combout\ = (counterSec(2) & (\counterSec[1]~35\ $ (GND))) # (!counterSec(2) & (!\counterSec[1]~35\ & VCC))
-- \counterSec[2]~37\ = CARRY((counterSec(2) & !\counterSec[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterSec(2),
	datad => VCC,
	cin => \counterSec[1]~35\,
	combout => \counterSec[2]~36_combout\,
	cout => \counterSec[2]~37\);

-- Location: FF_X24_Y18_N5
\counterSec[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[2]~36_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(2));

-- Location: LCCOMB_X24_Y18_N6
\counterSec[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[3]~38_combout\ = (counterSec(3) & (!\counterSec[2]~37\)) # (!counterSec(3) & ((\counterSec[2]~37\) # (GND)))
-- \counterSec[3]~39\ = CARRY((!\counterSec[2]~37\) # (!counterSec(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(3),
	datad => VCC,
	cin => \counterSec[2]~37\,
	combout => \counterSec[3]~38_combout\,
	cout => \counterSec[3]~39\);

-- Location: FF_X24_Y18_N7
\counterSec[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[3]~38_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(3));

-- Location: LCCOMB_X24_Y18_N8
\counterSec[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[4]~40_combout\ = (counterSec(4) & (\counterSec[3]~39\ $ (GND))) # (!counterSec(4) & (!\counterSec[3]~39\ & VCC))
-- \counterSec[4]~41\ = CARRY((counterSec(4) & !\counterSec[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterSec(4),
	datad => VCC,
	cin => \counterSec[3]~39\,
	combout => \counterSec[4]~40_combout\,
	cout => \counterSec[4]~41\);

-- Location: FF_X24_Y18_N9
\counterSec[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[4]~40_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(4));

-- Location: LCCOMB_X24_Y18_N10
\counterSec[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[5]~42_combout\ = (counterSec(5) & (!\counterSec[4]~41\)) # (!counterSec(5) & ((\counterSec[4]~41\) # (GND)))
-- \counterSec[5]~43\ = CARRY((!\counterSec[4]~41\) # (!counterSec(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(5),
	datad => VCC,
	cin => \counterSec[4]~41\,
	combout => \counterSec[5]~42_combout\,
	cout => \counterSec[5]~43\);

-- Location: FF_X24_Y18_N11
\counterSec[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[5]~42_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(5));

-- Location: LCCOMB_X24_Y18_N12
\counterSec[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[6]~44_combout\ = (counterSec(6) & (\counterSec[5]~43\ $ (GND))) # (!counterSec(6) & (!\counterSec[5]~43\ & VCC))
-- \counterSec[6]~45\ = CARRY((counterSec(6) & !\counterSec[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(6),
	datad => VCC,
	cin => \counterSec[5]~43\,
	combout => \counterSec[6]~44_combout\,
	cout => \counterSec[6]~45\);

-- Location: FF_X24_Y18_N13
\counterSec[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[6]~44_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(6));

-- Location: LCCOMB_X24_Y18_N14
\counterSec[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[7]~46_combout\ = (counterSec(7) & (!\counterSec[6]~45\)) # (!counterSec(7) & ((\counterSec[6]~45\) # (GND)))
-- \counterSec[7]~47\ = CARRY((!\counterSec[6]~45\) # (!counterSec(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterSec(7),
	datad => VCC,
	cin => \counterSec[6]~45\,
	combout => \counterSec[7]~46_combout\,
	cout => \counterSec[7]~47\);

-- Location: FF_X24_Y18_N15
\counterSec[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[7]~46_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(7));

-- Location: LCCOMB_X24_Y18_N16
\counterSec[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[8]~48_combout\ = (counterSec(8) & (\counterSec[7]~47\ $ (GND))) # (!counterSec(8) & (!\counterSec[7]~47\ & VCC))
-- \counterSec[8]~49\ = CARRY((counterSec(8) & !\counterSec[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterSec(8),
	datad => VCC,
	cin => \counterSec[7]~47\,
	combout => \counterSec[8]~48_combout\,
	cout => \counterSec[8]~49\);

-- Location: FF_X24_Y18_N17
\counterSec[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[8]~48_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(8));

-- Location: LCCOMB_X24_Y18_N18
\counterSec[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[9]~50_combout\ = (counterSec(9) & (!\counterSec[8]~49\)) # (!counterSec(9) & ((\counterSec[8]~49\) # (GND)))
-- \counterSec[9]~51\ = CARRY((!\counterSec[8]~49\) # (!counterSec(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterSec(9),
	datad => VCC,
	cin => \counterSec[8]~49\,
	combout => \counterSec[9]~50_combout\,
	cout => \counterSec[9]~51\);

-- Location: FF_X24_Y18_N19
\counterSec[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[9]~50_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(9));

-- Location: LCCOMB_X24_Y18_N20
\counterSec[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[10]~52_combout\ = (counterSec(10) & (\counterSec[9]~51\ $ (GND))) # (!counterSec(10) & (!\counterSec[9]~51\ & VCC))
-- \counterSec[10]~53\ = CARRY((counterSec(10) & !\counterSec[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterSec(10),
	datad => VCC,
	cin => \counterSec[9]~51\,
	combout => \counterSec[10]~52_combout\,
	cout => \counterSec[10]~53\);

-- Location: FF_X24_Y18_N21
\counterSec[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[10]~52_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(10));

-- Location: LCCOMB_X24_Y18_N22
\counterSec[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[11]~54_combout\ = (counterSec(11) & (!\counterSec[10]~53\)) # (!counterSec(11) & ((\counterSec[10]~53\) # (GND)))
-- \counterSec[11]~55\ = CARRY((!\counterSec[10]~53\) # (!counterSec(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(11),
	datad => VCC,
	cin => \counterSec[10]~53\,
	combout => \counterSec[11]~54_combout\,
	cout => \counterSec[11]~55\);

-- Location: FF_X24_Y18_N23
\counterSec[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[11]~54_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(11));

-- Location: LCCOMB_X24_Y18_N24
\counterSec[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[12]~56_combout\ = (counterSec(12) & (\counterSec[11]~55\ $ (GND))) # (!counterSec(12) & (!\counterSec[11]~55\ & VCC))
-- \counterSec[12]~57\ = CARRY((counterSec(12) & !\counterSec[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterSec(12),
	datad => VCC,
	cin => \counterSec[11]~55\,
	combout => \counterSec[12]~56_combout\,
	cout => \counterSec[12]~57\);

-- Location: FF_X24_Y18_N25
\counterSec[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[12]~56_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(12));

-- Location: LCCOMB_X24_Y18_N26
\counterSec[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[13]~58_combout\ = (counterSec(13) & (!\counterSec[12]~57\)) # (!counterSec(13) & ((\counterSec[12]~57\) # (GND)))
-- \counterSec[13]~59\ = CARRY((!\counterSec[12]~57\) # (!counterSec(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(13),
	datad => VCC,
	cin => \counterSec[12]~57\,
	combout => \counterSec[13]~58_combout\,
	cout => \counterSec[13]~59\);

-- Location: FF_X24_Y18_N27
\counterSec[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[13]~58_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(13));

-- Location: LCCOMB_X24_Y18_N28
\counterSec[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[14]~60_combout\ = (counterSec(14) & (\counterSec[13]~59\ $ (GND))) # (!counterSec(14) & (!\counterSec[13]~59\ & VCC))
-- \counterSec[14]~61\ = CARRY((counterSec(14) & !\counterSec[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterSec(14),
	datad => VCC,
	cin => \counterSec[13]~59\,
	combout => \counterSec[14]~60_combout\,
	cout => \counterSec[14]~61\);

-- Location: FF_X24_Y18_N29
\counterSec[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[14]~60_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(14));

-- Location: LCCOMB_X24_Y18_N30
\counterSec[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[15]~62_combout\ = (counterSec(15) & (!\counterSec[14]~61\)) # (!counterSec(15) & ((\counterSec[14]~61\) # (GND)))
-- \counterSec[15]~63\ = CARRY((!\counterSec[14]~61\) # (!counterSec(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(15),
	datad => VCC,
	cin => \counterSec[14]~61\,
	combout => \counterSec[15]~62_combout\,
	cout => \counterSec[15]~63\);

-- Location: FF_X24_Y18_N31
\counterSec[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[15]~62_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(15));

-- Location: LCCOMB_X24_Y17_N0
\counterSec[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[16]~64_combout\ = (counterSec(16) & (\counterSec[15]~63\ $ (GND))) # (!counterSec(16) & (!\counterSec[15]~63\ & VCC))
-- \counterSec[16]~65\ = CARRY((counterSec(16) & !\counterSec[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterSec(16),
	datad => VCC,
	cin => \counterSec[15]~63\,
	combout => \counterSec[16]~64_combout\,
	cout => \counterSec[16]~65\);

-- Location: FF_X24_Y17_N1
\counterSec[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[16]~64_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(16));

-- Location: LCCOMB_X24_Y17_N2
\counterSec[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[17]~66_combout\ = (counterSec(17) & (!\counterSec[16]~65\)) # (!counterSec(17) & ((\counterSec[16]~65\) # (GND)))
-- \counterSec[17]~67\ = CARRY((!\counterSec[16]~65\) # (!counterSec(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterSec(17),
	datad => VCC,
	cin => \counterSec[16]~65\,
	combout => \counterSec[17]~66_combout\,
	cout => \counterSec[17]~67\);

-- Location: FF_X24_Y17_N3
\counterSec[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[17]~66_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(17));

-- Location: LCCOMB_X24_Y17_N4
\counterSec[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[18]~68_combout\ = (counterSec(18) & (\counterSec[17]~67\ $ (GND))) # (!counterSec(18) & (!\counterSec[17]~67\ & VCC))
-- \counterSec[18]~69\ = CARRY((counterSec(18) & !\counterSec[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterSec(18),
	datad => VCC,
	cin => \counterSec[17]~67\,
	combout => \counterSec[18]~68_combout\,
	cout => \counterSec[18]~69\);

-- Location: FF_X24_Y17_N5
\counterSec[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[18]~68_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(18));

-- Location: LCCOMB_X24_Y17_N6
\counterSec[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[19]~70_combout\ = (counterSec(19) & (!\counterSec[18]~69\)) # (!counterSec(19) & ((\counterSec[18]~69\) # (GND)))
-- \counterSec[19]~71\ = CARRY((!\counterSec[18]~69\) # (!counterSec(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(19),
	datad => VCC,
	cin => \counterSec[18]~69\,
	combout => \counterSec[19]~70_combout\,
	cout => \counterSec[19]~71\);

-- Location: FF_X24_Y17_N7
\counterSec[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[19]~70_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(19));

-- Location: LCCOMB_X24_Y17_N8
\counterSec[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[20]~72_combout\ = (counterSec(20) & (\counterSec[19]~71\ $ (GND))) # (!counterSec(20) & (!\counterSec[19]~71\ & VCC))
-- \counterSec[20]~73\ = CARRY((counterSec(20) & !\counterSec[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterSec(20),
	datad => VCC,
	cin => \counterSec[19]~71\,
	combout => \counterSec[20]~72_combout\,
	cout => \counterSec[20]~73\);

-- Location: FF_X24_Y17_N9
\counterSec[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[20]~72_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(20));

-- Location: LCCOMB_X24_Y17_N10
\counterSec[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[21]~74_combout\ = (counterSec(21) & (!\counterSec[20]~73\)) # (!counterSec(21) & ((\counterSec[20]~73\) # (GND)))
-- \counterSec[21]~75\ = CARRY((!\counterSec[20]~73\) # (!counterSec(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(21),
	datad => VCC,
	cin => \counterSec[20]~73\,
	combout => \counterSec[21]~74_combout\,
	cout => \counterSec[21]~75\);

-- Location: FF_X24_Y17_N11
\counterSec[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[21]~74_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(21));

-- Location: LCCOMB_X24_Y17_N12
\counterSec[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[22]~76_combout\ = (counterSec(22) & (\counterSec[21]~75\ $ (GND))) # (!counterSec(22) & (!\counterSec[21]~75\ & VCC))
-- \counterSec[22]~77\ = CARRY((counterSec(22) & !\counterSec[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(22),
	datad => VCC,
	cin => \counterSec[21]~75\,
	combout => \counterSec[22]~76_combout\,
	cout => \counterSec[22]~77\);

-- Location: FF_X24_Y17_N13
\counterSec[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[22]~76_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(22));

-- Location: LCCOMB_X24_Y17_N14
\counterSec[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[23]~78_combout\ = (counterSec(23) & (!\counterSec[22]~77\)) # (!counterSec(23) & ((\counterSec[22]~77\) # (GND)))
-- \counterSec[23]~79\ = CARRY((!\counterSec[22]~77\) # (!counterSec(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterSec(23),
	datad => VCC,
	cin => \counterSec[22]~77\,
	combout => \counterSec[23]~78_combout\,
	cout => \counterSec[23]~79\);

-- Location: FF_X24_Y17_N15
\counterSec[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[23]~78_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(23));

-- Location: LCCOMB_X24_Y17_N16
\counterSec[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[24]~80_combout\ = (counterSec(24) & (\counterSec[23]~79\ $ (GND))) # (!counterSec(24) & (!\counterSec[23]~79\ & VCC))
-- \counterSec[24]~81\ = CARRY((counterSec(24) & !\counterSec[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterSec(24),
	datad => VCC,
	cin => \counterSec[23]~79\,
	combout => \counterSec[24]~80_combout\,
	cout => \counterSec[24]~81\);

-- Location: FF_X24_Y17_N17
\counterSec[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[24]~80_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(24));

-- Location: LCCOMB_X24_Y17_N18
\counterSec[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[25]~82_combout\ = (counterSec(25) & (!\counterSec[24]~81\)) # (!counterSec(25) & ((\counterSec[24]~81\) # (GND)))
-- \counterSec[25]~83\ = CARRY((!\counterSec[24]~81\) # (!counterSec(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterSec(25),
	datad => VCC,
	cin => \counterSec[24]~81\,
	combout => \counterSec[25]~82_combout\,
	cout => \counterSec[25]~83\);

-- Location: FF_X24_Y17_N19
\counterSec[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[25]~82_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(25));

-- Location: LCCOMB_X24_Y17_N20
\counterSec[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[26]~84_combout\ = (counterSec(26) & (\counterSec[25]~83\ $ (GND))) # (!counterSec(26) & (!\counterSec[25]~83\ & VCC))
-- \counterSec[26]~85\ = CARRY((counterSec(26) & !\counterSec[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterSec(26),
	datad => VCC,
	cin => \counterSec[25]~83\,
	combout => \counterSec[26]~84_combout\,
	cout => \counterSec[26]~85\);

-- Location: FF_X24_Y17_N21
\counterSec[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[26]~84_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(26));

-- Location: LCCOMB_X24_Y17_N22
\counterSec[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[27]~86_combout\ = (counterSec(27) & (!\counterSec[26]~85\)) # (!counterSec(27) & ((\counterSec[26]~85\) # (GND)))
-- \counterSec[27]~87\ = CARRY((!\counterSec[26]~85\) # (!counterSec(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(27),
	datad => VCC,
	cin => \counterSec[26]~85\,
	combout => \counterSec[27]~86_combout\,
	cout => \counterSec[27]~87\);

-- Location: FF_X24_Y17_N23
\counterSec[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[27]~86_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(27));

-- Location: LCCOMB_X24_Y17_N24
\counterSec[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[28]~88_combout\ = (counterSec(28) & (\counterSec[27]~87\ $ (GND))) # (!counterSec(28) & (!\counterSec[27]~87\ & VCC))
-- \counterSec[28]~89\ = CARRY((counterSec(28) & !\counterSec[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterSec(28),
	datad => VCC,
	cin => \counterSec[27]~87\,
	combout => \counterSec[28]~88_combout\,
	cout => \counterSec[28]~89\);

-- Location: FF_X24_Y17_N25
\counterSec[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[28]~88_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(28));

-- Location: LCCOMB_X24_Y17_N26
\counterSec[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[29]~90_combout\ = (counterSec(29) & (!\counterSec[28]~89\)) # (!counterSec(29) & ((\counterSec[28]~89\) # (GND)))
-- \counterSec[29]~91\ = CARRY((!\counterSec[28]~89\) # (!counterSec(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(29),
	datad => VCC,
	cin => \counterSec[28]~89\,
	combout => \counterSec[29]~90_combout\,
	cout => \counterSec[29]~91\);

-- Location: FF_X24_Y17_N27
\counterSec[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[29]~90_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(29));

-- Location: LCCOMB_X24_Y17_N28
\counterSec[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[30]~92_combout\ = (counterSec(30) & (\counterSec[29]~91\ $ (GND))) # (!counterSec(30) & (!\counterSec[29]~91\ & VCC))
-- \counterSec[30]~93\ = CARRY((counterSec(30) & !\counterSec[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterSec(30),
	datad => VCC,
	cin => \counterSec[29]~91\,
	combout => \counterSec[30]~92_combout\,
	cout => \counterSec[30]~93\);

-- Location: FF_X24_Y17_N29
\counterSec[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[30]~92_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(30));

-- Location: LCCOMB_X24_Y17_N30
\counterSec[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[31]~94_combout\ = counterSec(31) $ (\counterSec[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(31),
	cin => \counterSec[30]~93\,
	combout => \counterSec[31]~94_combout\);

-- Location: FF_X24_Y17_N31
\counterSec[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[31]~94_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(31));

-- Location: LCCOMB_X25_Y18_N0
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!counterSec(7) & (!counterSec(9) & (!counterSec(8) & !counterSec(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(7),
	datab => counterSec(9),
	datac => counterSec(8),
	datad => counterSec(6),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y19_N28
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ((!counterSec(2) & ((!counterSec(0)) # (!counterSec(1))))) # (!counterSec(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(3),
	datab => counterSec(1),
	datac => counterSec(2),
	datad => counterSec(0),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X24_Y19_N26
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!counterSec(4)) # (!counterSec(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counterSec(5),
	datac => counterSec(4),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X25_Y18_N2
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!counterSec(11) & (!counterSec(10) & (!counterSec(13) & !counterSec(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(11),
	datab => counterSec(10),
	datac => counterSec(13),
	datad => counterSec(12),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X24_Y19_N4
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~0_combout\ & (\LessThan0~1_combout\ & ((\LessThan0~2_combout\) # (\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \LessThan0~2_combout\,
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X24_Y19_N22
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!counterSec(17) & (!counterSec(15) & (!counterSec(14) & !counterSec(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(17),
	datab => counterSec(15),
	datac => counterSec(14),
	datad => counterSec(16),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X24_Y19_N0
\LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (!counterSec(28) & (!counterSec(26) & (!counterSec(29) & !counterSec(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(28),
	datab => counterSec(26),
	datac => counterSec(29),
	datad => counterSec(27),
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X23_Y17_N8
\LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (!counterSec(18) & (!counterSec(20) & (!counterSec(21) & !counterSec(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(18),
	datab => counterSec(20),
	datac => counterSec(21),
	datad => counterSec(19),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X23_Y17_N10
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (!counterSec(24) & (!counterSec(22) & (!counterSec(23) & !counterSec(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(24),
	datab => counterSec(22),
	datac => counterSec(23),
	datad => counterSec(25),
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X24_Y19_N18
\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (\LessThan0~5_combout\ & (\LessThan0~8_combout\ & (\LessThan0~6_combout\ & \LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~5_combout\,
	datab => \LessThan0~8_combout\,
	datac => \LessThan0~6_combout\,
	datad => \LessThan0~7_combout\,
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X24_Y19_N8
\LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = (!counterSec(31) & ((counterSec(30)) # ((!\LessThan0~9_combout\) # (!\LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(30),
	datab => counterSec(31),
	datac => \LessThan0~4_combout\,
	datad => \LessThan0~9_combout\,
	combout => \LessThan0~10_combout\);

-- Location: FF_X24_Y18_N1
\counterSec[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[0]~32_combout\,
	sclr => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(0));

-- Location: LCCOMB_X25_Y20_N0
\counterMin[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[0]~32_combout\ = counterMin(0) $ (VCC)
-- \counterMin[0]~33\ = CARRY(counterMin(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counterMin(0),
	datad => VCC,
	combout => \counterMin[0]~32_combout\,
	cout => \counterMin[0]~33\);

-- Location: LCCOMB_X25_Y20_N2
\counterMin[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[1]~34_combout\ = (counterMin(1) & (!\counterMin[0]~33\)) # (!counterMin(1) & ((\counterMin[0]~33\) # (GND)))
-- \counterMin[1]~35\ = CARRY((!\counterMin[0]~33\) # (!counterMin(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterMin(1),
	datad => VCC,
	cin => \counterMin[0]~33\,
	combout => \counterMin[1]~34_combout\,
	cout => \counterMin[1]~35\);

-- Location: FF_X25_Y20_N3
\counterMin[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[1]~34_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(1));

-- Location: LCCOMB_X25_Y20_N4
\counterMin[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[2]~36_combout\ = (counterMin(2) & (\counterMin[1]~35\ $ (GND))) # (!counterMin(2) & (!\counterMin[1]~35\ & VCC))
-- \counterMin[2]~37\ = CARRY((counterMin(2) & !\counterMin[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterMin(2),
	datad => VCC,
	cin => \counterMin[1]~35\,
	combout => \counterMin[2]~36_combout\,
	cout => \counterMin[2]~37\);

-- Location: FF_X25_Y20_N5
\counterMin[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[2]~36_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(2));

-- Location: LCCOMB_X25_Y20_N6
\counterMin[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[3]~38_combout\ = (counterMin(3) & (!\counterMin[2]~37\)) # (!counterMin(3) & ((\counterMin[2]~37\) # (GND)))
-- \counterMin[3]~39\ = CARRY((!\counterMin[2]~37\) # (!counterMin(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(3),
	datad => VCC,
	cin => \counterMin[2]~37\,
	combout => \counterMin[3]~38_combout\,
	cout => \counterMin[3]~39\);

-- Location: FF_X25_Y20_N7
\counterMin[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[3]~38_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(3));

-- Location: LCCOMB_X25_Y20_N8
\counterMin[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[4]~40_combout\ = (counterMin(4) & (\counterMin[3]~39\ $ (GND))) # (!counterMin(4) & (!\counterMin[3]~39\ & VCC))
-- \counterMin[4]~41\ = CARRY((counterMin(4) & !\counterMin[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterMin(4),
	datad => VCC,
	cin => \counterMin[3]~39\,
	combout => \counterMin[4]~40_combout\,
	cout => \counterMin[4]~41\);

-- Location: FF_X25_Y20_N9
\counterMin[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[4]~40_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(4));

-- Location: LCCOMB_X25_Y20_N10
\counterMin[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[5]~42_combout\ = (counterMin(5) & (!\counterMin[4]~41\)) # (!counterMin(5) & ((\counterMin[4]~41\) # (GND)))
-- \counterMin[5]~43\ = CARRY((!\counterMin[4]~41\) # (!counterMin(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(5),
	datad => VCC,
	cin => \counterMin[4]~41\,
	combout => \counterMin[5]~42_combout\,
	cout => \counterMin[5]~43\);

-- Location: FF_X25_Y20_N11
\counterMin[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[5]~42_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(5));

-- Location: LCCOMB_X25_Y20_N12
\counterMin[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[6]~44_combout\ = (counterMin(6) & (\counterMin[5]~43\ $ (GND))) # (!counterMin(6) & (!\counterMin[5]~43\ & VCC))
-- \counterMin[6]~45\ = CARRY((counterMin(6) & !\counterMin[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(6),
	datad => VCC,
	cin => \counterMin[5]~43\,
	combout => \counterMin[6]~44_combout\,
	cout => \counterMin[6]~45\);

-- Location: FF_X25_Y20_N13
\counterMin[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[6]~44_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(6));

-- Location: LCCOMB_X25_Y20_N14
\counterMin[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[7]~46_combout\ = (counterMin(7) & (!\counterMin[6]~45\)) # (!counterMin(7) & ((\counterMin[6]~45\) # (GND)))
-- \counterMin[7]~47\ = CARRY((!\counterMin[6]~45\) # (!counterMin(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterMin(7),
	datad => VCC,
	cin => \counterMin[6]~45\,
	combout => \counterMin[7]~46_combout\,
	cout => \counterMin[7]~47\);

-- Location: FF_X25_Y20_N15
\counterMin[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[7]~46_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(7));

-- Location: LCCOMB_X25_Y20_N16
\counterMin[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[8]~48_combout\ = (counterMin(8) & (\counterMin[7]~47\ $ (GND))) # (!counterMin(8) & (!\counterMin[7]~47\ & VCC))
-- \counterMin[8]~49\ = CARRY((counterMin(8) & !\counterMin[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterMin(8),
	datad => VCC,
	cin => \counterMin[7]~47\,
	combout => \counterMin[8]~48_combout\,
	cout => \counterMin[8]~49\);

-- Location: FF_X25_Y20_N17
\counterMin[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[8]~48_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(8));

-- Location: LCCOMB_X25_Y20_N18
\counterMin[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[9]~50_combout\ = (counterMin(9) & (!\counterMin[8]~49\)) # (!counterMin(9) & ((\counterMin[8]~49\) # (GND)))
-- \counterMin[9]~51\ = CARRY((!\counterMin[8]~49\) # (!counterMin(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterMin(9),
	datad => VCC,
	cin => \counterMin[8]~49\,
	combout => \counterMin[9]~50_combout\,
	cout => \counterMin[9]~51\);

-- Location: FF_X25_Y20_N19
\counterMin[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[9]~50_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(9));

-- Location: LCCOMB_X25_Y20_N20
\counterMin[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[10]~52_combout\ = (counterMin(10) & (\counterMin[9]~51\ $ (GND))) # (!counterMin(10) & (!\counterMin[9]~51\ & VCC))
-- \counterMin[10]~53\ = CARRY((counterMin(10) & !\counterMin[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterMin(10),
	datad => VCC,
	cin => \counterMin[9]~51\,
	combout => \counterMin[10]~52_combout\,
	cout => \counterMin[10]~53\);

-- Location: FF_X25_Y20_N21
\counterMin[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[10]~52_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(10));

-- Location: LCCOMB_X25_Y20_N22
\counterMin[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[11]~54_combout\ = (counterMin(11) & (!\counterMin[10]~53\)) # (!counterMin(11) & ((\counterMin[10]~53\) # (GND)))
-- \counterMin[11]~55\ = CARRY((!\counterMin[10]~53\) # (!counterMin(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(11),
	datad => VCC,
	cin => \counterMin[10]~53\,
	combout => \counterMin[11]~54_combout\,
	cout => \counterMin[11]~55\);

-- Location: FF_X25_Y20_N23
\counterMin[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[11]~54_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(11));

-- Location: LCCOMB_X25_Y20_N24
\counterMin[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[12]~56_combout\ = (counterMin(12) & (\counterMin[11]~55\ $ (GND))) # (!counterMin(12) & (!\counterMin[11]~55\ & VCC))
-- \counterMin[12]~57\ = CARRY((counterMin(12) & !\counterMin[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterMin(12),
	datad => VCC,
	cin => \counterMin[11]~55\,
	combout => \counterMin[12]~56_combout\,
	cout => \counterMin[12]~57\);

-- Location: FF_X25_Y20_N25
\counterMin[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[12]~56_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(12));

-- Location: LCCOMB_X25_Y20_N26
\counterMin[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[13]~58_combout\ = (counterMin(13) & (!\counterMin[12]~57\)) # (!counterMin(13) & ((\counterMin[12]~57\) # (GND)))
-- \counterMin[13]~59\ = CARRY((!\counterMin[12]~57\) # (!counterMin(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(13),
	datad => VCC,
	cin => \counterMin[12]~57\,
	combout => \counterMin[13]~58_combout\,
	cout => \counterMin[13]~59\);

-- Location: FF_X25_Y20_N27
\counterMin[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[13]~58_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(13));

-- Location: LCCOMB_X25_Y20_N28
\counterMin[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[14]~60_combout\ = (counterMin(14) & (\counterMin[13]~59\ $ (GND))) # (!counterMin(14) & (!\counterMin[13]~59\ & VCC))
-- \counterMin[14]~61\ = CARRY((counterMin(14) & !\counterMin[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterMin(14),
	datad => VCC,
	cin => \counterMin[13]~59\,
	combout => \counterMin[14]~60_combout\,
	cout => \counterMin[14]~61\);

-- Location: FF_X26_Y19_N1
\counterMin[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counterMin[14]~60_combout\,
	sclr => \LessThan1~10_combout\,
	sload => VCC,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(14));

-- Location: LCCOMB_X25_Y20_N30
\counterMin[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[15]~62_combout\ = (counterMin(15) & (!\counterMin[14]~61\)) # (!counterMin(15) & ((\counterMin[14]~61\) # (GND)))
-- \counterMin[15]~63\ = CARRY((!\counterMin[14]~61\) # (!counterMin(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(15),
	datad => VCC,
	cin => \counterMin[14]~61\,
	combout => \counterMin[15]~62_combout\,
	cout => \counterMin[15]~63\);

-- Location: FF_X25_Y20_N31
\counterMin[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[15]~62_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(15));

-- Location: LCCOMB_X25_Y19_N0
\counterMin[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[16]~64_combout\ = (counterMin(16) & (\counterMin[15]~63\ $ (GND))) # (!counterMin(16) & (!\counterMin[15]~63\ & VCC))
-- \counterMin[16]~65\ = CARRY((counterMin(16) & !\counterMin[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterMin(16),
	datad => VCC,
	cin => \counterMin[15]~63\,
	combout => \counterMin[16]~64_combout\,
	cout => \counterMin[16]~65\);

-- Location: FF_X25_Y19_N1
\counterMin[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[16]~64_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(16));

-- Location: LCCOMB_X25_Y19_N2
\counterMin[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[17]~66_combout\ = (counterMin(17) & (!\counterMin[16]~65\)) # (!counterMin(17) & ((\counterMin[16]~65\) # (GND)))
-- \counterMin[17]~67\ = CARRY((!\counterMin[16]~65\) # (!counterMin(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterMin(17),
	datad => VCC,
	cin => \counterMin[16]~65\,
	combout => \counterMin[17]~66_combout\,
	cout => \counterMin[17]~67\);

-- Location: FF_X25_Y19_N3
\counterMin[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[17]~66_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(17));

-- Location: LCCOMB_X25_Y19_N4
\counterMin[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[18]~68_combout\ = (counterMin(18) & (\counterMin[17]~67\ $ (GND))) # (!counterMin(18) & (!\counterMin[17]~67\ & VCC))
-- \counterMin[18]~69\ = CARRY((counterMin(18) & !\counterMin[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterMin(18),
	datad => VCC,
	cin => \counterMin[17]~67\,
	combout => \counterMin[18]~68_combout\,
	cout => \counterMin[18]~69\);

-- Location: FF_X25_Y19_N5
\counterMin[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[18]~68_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(18));

-- Location: LCCOMB_X25_Y19_N6
\counterMin[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[19]~70_combout\ = (counterMin(19) & (!\counterMin[18]~69\)) # (!counterMin(19) & ((\counterMin[18]~69\) # (GND)))
-- \counterMin[19]~71\ = CARRY((!\counterMin[18]~69\) # (!counterMin(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(19),
	datad => VCC,
	cin => \counterMin[18]~69\,
	combout => \counterMin[19]~70_combout\,
	cout => \counterMin[19]~71\);

-- Location: FF_X25_Y19_N7
\counterMin[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[19]~70_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(19));

-- Location: LCCOMB_X25_Y19_N8
\counterMin[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[20]~72_combout\ = (counterMin(20) & (\counterMin[19]~71\ $ (GND))) # (!counterMin(20) & (!\counterMin[19]~71\ & VCC))
-- \counterMin[20]~73\ = CARRY((counterMin(20) & !\counterMin[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterMin(20),
	datad => VCC,
	cin => \counterMin[19]~71\,
	combout => \counterMin[20]~72_combout\,
	cout => \counterMin[20]~73\);

-- Location: FF_X25_Y19_N9
\counterMin[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[20]~72_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(20));

-- Location: LCCOMB_X25_Y19_N10
\counterMin[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[21]~74_combout\ = (counterMin(21) & (!\counterMin[20]~73\)) # (!counterMin(21) & ((\counterMin[20]~73\) # (GND)))
-- \counterMin[21]~75\ = CARRY((!\counterMin[20]~73\) # (!counterMin(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(21),
	datad => VCC,
	cin => \counterMin[20]~73\,
	combout => \counterMin[21]~74_combout\,
	cout => \counterMin[21]~75\);

-- Location: FF_X25_Y19_N11
\counterMin[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[21]~74_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(21));

-- Location: LCCOMB_X25_Y19_N12
\counterMin[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[22]~76_combout\ = (counterMin(22) & (\counterMin[21]~75\ $ (GND))) # (!counterMin(22) & (!\counterMin[21]~75\ & VCC))
-- \counterMin[22]~77\ = CARRY((counterMin(22) & !\counterMin[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(22),
	datad => VCC,
	cin => \counterMin[21]~75\,
	combout => \counterMin[22]~76_combout\,
	cout => \counterMin[22]~77\);

-- Location: FF_X25_Y19_N13
\counterMin[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[22]~76_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(22));

-- Location: LCCOMB_X25_Y19_N14
\counterMin[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[23]~78_combout\ = (counterMin(23) & (!\counterMin[22]~77\)) # (!counterMin(23) & ((\counterMin[22]~77\) # (GND)))
-- \counterMin[23]~79\ = CARRY((!\counterMin[22]~77\) # (!counterMin(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterMin(23),
	datad => VCC,
	cin => \counterMin[22]~77\,
	combout => \counterMin[23]~78_combout\,
	cout => \counterMin[23]~79\);

-- Location: FF_X25_Y19_N15
\counterMin[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[23]~78_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(23));

-- Location: LCCOMB_X25_Y19_N16
\counterMin[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[24]~80_combout\ = (counterMin(24) & (\counterMin[23]~79\ $ (GND))) # (!counterMin(24) & (!\counterMin[23]~79\ & VCC))
-- \counterMin[24]~81\ = CARRY((counterMin(24) & !\counterMin[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterMin(24),
	datad => VCC,
	cin => \counterMin[23]~79\,
	combout => \counterMin[24]~80_combout\,
	cout => \counterMin[24]~81\);

-- Location: FF_X25_Y19_N17
\counterMin[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[24]~80_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(24));

-- Location: LCCOMB_X25_Y19_N18
\counterMin[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[25]~82_combout\ = (counterMin(25) & (!\counterMin[24]~81\)) # (!counterMin(25) & ((\counterMin[24]~81\) # (GND)))
-- \counterMin[25]~83\ = CARRY((!\counterMin[24]~81\) # (!counterMin(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterMin(25),
	datad => VCC,
	cin => \counterMin[24]~81\,
	combout => \counterMin[25]~82_combout\,
	cout => \counterMin[25]~83\);

-- Location: FF_X25_Y19_N19
\counterMin[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[25]~82_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(25));

-- Location: LCCOMB_X25_Y19_N20
\counterMin[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[26]~84_combout\ = (counterMin(26) & (\counterMin[25]~83\ $ (GND))) # (!counterMin(26) & (!\counterMin[25]~83\ & VCC))
-- \counterMin[26]~85\ = CARRY((counterMin(26) & !\counterMin[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterMin(26),
	datad => VCC,
	cin => \counterMin[25]~83\,
	combout => \counterMin[26]~84_combout\,
	cout => \counterMin[26]~85\);

-- Location: FF_X25_Y19_N21
\counterMin[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[26]~84_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(26));

-- Location: LCCOMB_X25_Y19_N22
\counterMin[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[27]~86_combout\ = (counterMin(27) & (!\counterMin[26]~85\)) # (!counterMin(27) & ((\counterMin[26]~85\) # (GND)))
-- \counterMin[27]~87\ = CARRY((!\counterMin[26]~85\) # (!counterMin(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(27),
	datad => VCC,
	cin => \counterMin[26]~85\,
	combout => \counterMin[27]~86_combout\,
	cout => \counterMin[27]~87\);

-- Location: FF_X25_Y19_N23
\counterMin[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[27]~86_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(27));

-- Location: LCCOMB_X25_Y19_N24
\counterMin[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[28]~88_combout\ = (counterMin(28) & (\counterMin[27]~87\ $ (GND))) # (!counterMin(28) & (!\counterMin[27]~87\ & VCC))
-- \counterMin[28]~89\ = CARRY((counterMin(28) & !\counterMin[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterMin(28),
	datad => VCC,
	cin => \counterMin[27]~87\,
	combout => \counterMin[28]~88_combout\,
	cout => \counterMin[28]~89\);

-- Location: FF_X25_Y19_N25
\counterMin[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[28]~88_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(28));

-- Location: LCCOMB_X25_Y19_N26
\counterMin[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[29]~90_combout\ = (counterMin(29) & (!\counterMin[28]~89\)) # (!counterMin(29) & ((\counterMin[28]~89\) # (GND)))
-- \counterMin[29]~91\ = CARRY((!\counterMin[28]~89\) # (!counterMin(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(29),
	datad => VCC,
	cin => \counterMin[28]~89\,
	combout => \counterMin[29]~90_combout\,
	cout => \counterMin[29]~91\);

-- Location: FF_X25_Y19_N27
\counterMin[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[29]~90_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(29));

-- Location: LCCOMB_X25_Y19_N28
\counterMin[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[30]~92_combout\ = (counterMin(30) & (\counterMin[29]~91\ $ (GND))) # (!counterMin(30) & (!\counterMin[29]~91\ & VCC))
-- \counterMin[30]~93\ = CARRY((counterMin(30) & !\counterMin[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterMin(30),
	datad => VCC,
	cin => \counterMin[29]~91\,
	combout => \counterMin[30]~92_combout\,
	cout => \counterMin[30]~93\);

-- Location: FF_X25_Y19_N29
\counterMin[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[30]~92_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(30));

-- Location: LCCOMB_X25_Y19_N30
\counterMin[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[31]~94_combout\ = counterMin(31) $ (\counterMin[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(31),
	cin => \counterMin[30]~93\,
	combout => \counterMin[31]~94_combout\);

-- Location: FF_X25_Y19_N31
\counterMin[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[31]~94_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(31));

-- Location: LCCOMB_X24_Y20_N30
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (!counterMin(5)) # (!counterMin(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counterMin(4),
	datad => counterMin(5),
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X24_Y20_N28
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = ((!counterMin(2) & ((!counterMin(0)) # (!counterMin(1))))) # (!counterMin(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(1),
	datab => counterMin(0),
	datac => counterMin(2),
	datad => counterMin(3),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X24_Y20_N6
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (!counterMin(10) & (!counterMin(11) & (!counterMin(13) & !counterMin(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(10),
	datab => counterMin(11),
	datac => counterMin(13),
	datad => counterMin(12),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X24_Y20_N16
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!counterMin(9) & (!counterMin(6) & (!counterMin(7) & !counterMin(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(9),
	datab => counterMin(6),
	datac => counterMin(7),
	datad => counterMin(8),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X24_Y19_N30
\LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (\LessThan1~1_combout\ & (\LessThan1~0_combout\ & ((\LessThan1~3_combout\) # (\LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~3_combout\,
	datab => \LessThan1~2_combout\,
	datac => \LessThan1~1_combout\,
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X24_Y19_N12
\LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = (!counterMin(22) & (!counterMin(25) & (!counterMin(23) & !counterMin(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(22),
	datab => counterMin(25),
	datac => counterMin(23),
	datad => counterMin(24),
	combout => \LessThan1~7_combout\);

-- Location: LCCOMB_X24_Y19_N14
\LessThan1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~8_combout\ = (!counterMin(26) & (!counterMin(29) & (!counterMin(28) & !counterMin(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(26),
	datab => counterMin(29),
	datac => counterMin(28),
	datad => counterMin(27),
	combout => \LessThan1~8_combout\);

-- Location: LCCOMB_X26_Y19_N24
\LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = (!counterMin(20) & (!counterMin(19) & (!counterMin(18) & !counterMin(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(20),
	datab => counterMin(19),
	datac => counterMin(18),
	datad => counterMin(21),
	combout => \LessThan1~6_combout\);

-- Location: LCCOMB_X26_Y19_N30
\LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (!counterMin(16) & (!counterMin(14) & (!counterMin(15) & !counterMin(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(16),
	datab => counterMin(14),
	datac => counterMin(15),
	datad => counterMin(17),
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X24_Y19_N24
\LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~9_combout\ = (\LessThan1~7_combout\ & (\LessThan1~8_combout\ & (\LessThan1~6_combout\ & \LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~7_combout\,
	datab => \LessThan1~8_combout\,
	datac => \LessThan1~6_combout\,
	datad => \LessThan1~5_combout\,
	combout => \LessThan1~9_combout\);

-- Location: LCCOMB_X24_Y19_N6
\LessThan1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~10_combout\ = (!counterMin(31) & ((counterMin(30)) # ((!\LessThan1~9_combout\) # (!\LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(31),
	datab => counterMin(30),
	datac => \LessThan1~4_combout\,
	datad => \LessThan1~9_combout\,
	combout => \LessThan1~10_combout\);

-- Location: FF_X25_Y20_N1
\counterMin[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[0]~32_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(0));

-- Location: LCCOMB_X23_Y19_N0
\counterHrs[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[0]~32_combout\ = counterHrs(0) $ (VCC)
-- \counterHrs[0]~33\ = CARRY(counterHrs(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counterHrs(0),
	datad => VCC,
	combout => \counterHrs[0]~32_combout\,
	cout => \counterHrs[0]~33\);

-- Location: LCCOMB_X23_Y19_N2
\counterHrs[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[1]~35_combout\ = (counterHrs(1) & (!\counterHrs[0]~33\)) # (!counterHrs(1) & ((\counterHrs[0]~33\) # (GND)))
-- \counterHrs[1]~36\ = CARRY((!\counterHrs[0]~33\) # (!counterHrs(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterHrs(1),
	datad => VCC,
	cin => \counterHrs[0]~33\,
	combout => \counterHrs[1]~35_combout\,
	cout => \counterHrs[1]~36\);

-- Location: LCCOMB_X24_Y19_N20
\counterHrs[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[0]~34_combout\ = (\LessThan0~10_combout\ & \LessThan1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~10_combout\,
	datad => \LessThan1~10_combout\,
	combout => \counterHrs[0]~34_combout\);

-- Location: FF_X23_Y19_N3
\counterHrs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[1]~35_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \counterHrs[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(1));

-- Location: LCCOMB_X23_Y19_N4
\counterHrs[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[2]~37_combout\ = (counterHrs(2) & (\counterHrs[1]~36\ $ (GND))) # (!counterHrs(2) & (!\counterHrs[1]~36\ & VCC))
-- \counterHrs[2]~38\ = CARRY((counterHrs(2) & !\counterHrs[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterHrs(2),
	datad => VCC,
	cin => \counterHrs[1]~36\,
	combout => \counterHrs[2]~37_combout\,
	cout => \counterHrs[2]~38\);

-- Location: FF_X23_Y19_N5
\counterHrs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[2]~37_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \counterHrs[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(2));

-- Location: LCCOMB_X23_Y19_N6
\counterHrs[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[3]~39_combout\ = (counterHrs(3) & (!\counterHrs[2]~38\)) # (!counterHrs(3) & ((\counterHrs[2]~38\) # (GND)))
-- \counterHrs[3]~40\ = CARRY((!\counterHrs[2]~38\) # (!counterHrs(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(3),
	datad => VCC,
	cin => \counterHrs[2]~38\,
	combout => \counterHrs[3]~39_combout\,
	cout => \counterHrs[3]~40\);

-- Location: FF_X23_Y19_N7
\counterHrs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[3]~39_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \counterHrs[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(3));

-- Location: LCCOMB_X23_Y19_N8
\counterHrs[4]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[4]~41_combout\ = (counterHrs(4) & (\counterHrs[3]~40\ $ (GND))) # (!counterHrs(4) & (!\counterHrs[3]~40\ & VCC))
-- \counterHrs[4]~42\ = CARRY((counterHrs(4) & !\counterHrs[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterHrs(4),
	datad => VCC,
	cin => \counterHrs[3]~40\,
	combout => \counterHrs[4]~41_combout\,
	cout => \counterHrs[4]~42\);

-- Location: FF_X23_Y19_N9
\counterHrs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[4]~41_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \counterHrs[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(4));

-- Location: LCCOMB_X23_Y19_N10
\counterHrs[5]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[5]~43_combout\ = (counterHrs(5) & (!\counterHrs[4]~42\)) # (!counterHrs(5) & ((\counterHrs[4]~42\) # (GND)))
-- \counterHrs[5]~44\ = CARRY((!\counterHrs[4]~42\) # (!counterHrs(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(5),
	datad => VCC,
	cin => \counterHrs[4]~42\,
	combout => \counterHrs[5]~43_combout\,
	cout => \counterHrs[5]~44\);

-- Location: FF_X23_Y19_N11
\counterHrs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[5]~43_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \counterHrs[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(5));

-- Location: LCCOMB_X23_Y19_N12
\counterHrs[6]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[6]~45_combout\ = (counterHrs(6) & (\counterHrs[5]~44\ $ (GND))) # (!counterHrs(6) & (!\counterHrs[5]~44\ & VCC))
-- \counterHrs[6]~46\ = CARRY((counterHrs(6) & !\counterHrs[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(6),
	datad => VCC,
	cin => \counterHrs[5]~44\,
	combout => \counterHrs[6]~45_combout\,
	cout => \counterHrs[6]~46\);

-- Location: FF_X23_Y19_N13
\counterHrs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[6]~45_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \counterHrs[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(6));

-- Location: LCCOMB_X23_Y19_N14
\counterHrs[7]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[7]~47_combout\ = (counterHrs(7) & (!\counterHrs[6]~46\)) # (!counterHrs(7) & ((\counterHrs[6]~46\) # (GND)))
-- \counterHrs[7]~48\ = CARRY((!\counterHrs[6]~46\) # (!counterHrs(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterHrs(7),
	datad => VCC,
	cin => \counterHrs[6]~46\,
	combout => \counterHrs[7]~47_combout\,
	cout => \counterHrs[7]~48\);

-- Location: FF_X23_Y19_N15
\counterHrs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[7]~47_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \counterHrs[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(7));

-- Location: LCCOMB_X23_Y19_N16
\counterHrs[8]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[8]~49_combout\ = (counterHrs(8) & (\counterHrs[7]~48\ $ (GND))) # (!counterHrs(8) & (!\counterHrs[7]~48\ & VCC))
-- \counterHrs[8]~50\ = CARRY((counterHrs(8) & !\counterHrs[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterHrs(8),
	datad => VCC,
	cin => \counterHrs[7]~48\,
	combout => \counterHrs[8]~49_combout\,
	cout => \counterHrs[8]~50\);

-- Location: FF_X23_Y19_N17
\counterHrs[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[8]~49_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \counterHrs[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(8));

-- Location: LCCOMB_X23_Y19_N18
\counterHrs[9]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[9]~51_combout\ = (counterHrs(9) & (!\counterHrs[8]~50\)) # (!counterHrs(9) & ((\counterHrs[8]~50\) # (GND)))
-- \counterHrs[9]~52\ = CARRY((!\counterHrs[8]~50\) # (!counterHrs(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterHrs(9),
	datad => VCC,
	cin => \counterHrs[8]~50\,
	combout => \counterHrs[9]~51_combout\,
	cout => \counterHrs[9]~52\);

-- Location: FF_X23_Y19_N19
\counterHrs[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[9]~51_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \counterHrs[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(9));

-- Location: LCCOMB_X23_Y19_N20
\counterHrs[10]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[10]~53_combout\ = (counterHrs(10) & (\counterHrs[9]~52\ $ (GND))) # (!counterHrs(10) & (!\counterHrs[9]~52\ & VCC))
-- \counterHrs[10]~54\ = CARRY((counterHrs(10) & !\counterHrs[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterHrs(10),
	datad => VCC,
	cin => \counterHrs[9]~52\,
	combout => \counterHrs[10]~53_combout\,
	cout => \counterHrs[10]~54\);

-- Location: FF_X23_Y19_N21
\counterHrs[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[10]~53_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \counterHrs[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(10));

-- Location: LCCOMB_X23_Y19_N22
\counterHrs[11]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[11]~55_combout\ = (counterHrs(11) & (!\counterHrs[10]~54\)) # (!counterHrs(11) & ((\counterHrs[10]~54\) # (GND)))
-- \counterHrs[11]~56\ = CARRY((!\counterHrs[10]~54\) # (!counterHrs(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(11),
	datad => VCC,
	cin => \counterHrs[10]~54\,
	combout => \counterHrs[11]~55_combout\,
	cout => \counterHrs[11]~56\);

-- Location: FF_X23_Y19_N23
\counterHrs[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[11]~55_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \counterHrs[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(11));

-- Location: LCCOMB_X23_Y19_N24
\counterHrs[12]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[12]~57_combout\ = (counterHrs(12) & (\counterHrs[11]~56\ $ (GND))) # (!counterHrs(12) & (!\counterHrs[11]~56\ & VCC))
-- \counterHrs[12]~58\ = CARRY((counterHrs(12) & !\counterHrs[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterHrs(12),
	datad => VCC,
	cin => \counterHrs[11]~56\,
	combout => \counterHrs[12]~57_combout\,
	cout => \counterHrs[12]~58\);

-- Location: FF_X23_Y19_N25
\counterHrs[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[12]~57_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \counterHrs[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(12));

-- Location: LCCOMB_X23_Y19_N26
\counterHrs[13]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[13]~59_combout\ = (counterHrs(13) & (!\counterHrs[12]~58\)) # (!counterHrs(13) & ((\counterHrs[12]~58\) # (GND)))
-- \counterHrs[13]~60\ = CARRY((!\counterHrs[12]~58\) # (!counterHrs(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(13),
	datad => VCC,
	cin => \counterHrs[12]~58\,
	combout => \counterHrs[13]~59_combout\,
	cout => \counterHrs[13]~60\);

-- Location: FF_X23_Y19_N27
\counterHrs[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[13]~59_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \counterHrs[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(13));

-- Location: LCCOMB_X23_Y19_N28
\counterHrs[14]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[14]~61_combout\ = (counterHrs(14) & (\counterHrs[13]~60\ $ (GND))) # (!counterHrs(14) & (!\counterHrs[13]~60\ & VCC))
-- \counterHrs[14]~62\ = CARRY((counterHrs(14) & !\counterHrs[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterHrs(14),
	datad => VCC,
	cin => \counterHrs[13]~60\,
	combout => \counterHrs[14]~61_combout\,
	cout => \counterHrs[14]~62\);

-- Location: FF_X23_Y19_N29
\counterHrs[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[14]~61_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \counterHrs[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(14));

-- Location: LCCOMB_X23_Y19_N30
\counterHrs[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[15]~63_combout\ = (counterHrs(15) & (!\counterHrs[14]~62\)) # (!counterHrs(15) & ((\counterHrs[14]~62\) # (GND)))
-- \counterHrs[15]~64\ = CARRY((!\counterHrs[14]~62\) # (!counterHrs(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(15),
	datad => VCC,
	cin => \counterHrs[14]~62\,
	combout => \counterHrs[15]~63_combout\,
	cout => \counterHrs[15]~64\);

-- Location: FF_X23_Y19_N31
\counterHrs[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[15]~63_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \counterHrs[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(15));

-- Location: LCCOMB_X23_Y18_N0
\counterHrs[16]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[16]~65_combout\ = (counterHrs(16) & (\counterHrs[15]~64\ $ (GND))) # (!counterHrs(16) & (!\counterHrs[15]~64\ & VCC))
-- \counterHrs[16]~66\ = CARRY((counterHrs(16) & !\counterHrs[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterHrs(16),
	datad => VCC,
	cin => \counterHrs[15]~64\,
	combout => \counterHrs[16]~65_combout\,
	cout => \counterHrs[16]~66\);

-- Location: FF_X23_Y18_N1
\counterHrs[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[16]~65_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \counterHrs[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(16));

-- Location: LCCOMB_X23_Y18_N2
\counterHrs[17]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[17]~67_combout\ = (counterHrs(17) & (!\counterHrs[16]~66\)) # (!counterHrs(17) & ((\counterHrs[16]~66\) # (GND)))
-- \counterHrs[17]~68\ = CARRY((!\counterHrs[16]~66\) # (!counterHrs(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterHrs(17),
	datad => VCC,
	cin => \counterHrs[16]~66\,
	combout => \counterHrs[17]~67_combout\,
	cout => \counterHrs[17]~68\);

-- Location: FF_X23_Y18_N3
\counterHrs[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[17]~67_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \counterHrs[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(17));

-- Location: LCCOMB_X23_Y18_N4
\counterHrs[18]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[18]~69_combout\ = (counterHrs(18) & (\counterHrs[17]~68\ $ (GND))) # (!counterHrs(18) & (!\counterHrs[17]~68\ & VCC))
-- \counterHrs[18]~70\ = CARRY((counterHrs(18) & !\counterHrs[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterHrs(18),
	datad => VCC,
	cin => \counterHrs[17]~68\,
	combout => \counterHrs[18]~69_combout\,
	cout => \counterHrs[18]~70\);

-- Location: FF_X23_Y18_N5
\counterHrs[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[18]~69_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \counterHrs[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(18));

-- Location: LCCOMB_X23_Y18_N6
\counterHrs[19]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[19]~71_combout\ = (counterHrs(19) & (!\counterHrs[18]~70\)) # (!counterHrs(19) & ((\counterHrs[18]~70\) # (GND)))
-- \counterHrs[19]~72\ = CARRY((!\counterHrs[18]~70\) # (!counterHrs(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(19),
	datad => VCC,
	cin => \counterHrs[18]~70\,
	combout => \counterHrs[19]~71_combout\,
	cout => \counterHrs[19]~72\);

-- Location: FF_X23_Y18_N7
\counterHrs[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[19]~71_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \counterHrs[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(19));

-- Location: LCCOMB_X23_Y18_N8
\counterHrs[20]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[20]~73_combout\ = (counterHrs(20) & (\counterHrs[19]~72\ $ (GND))) # (!counterHrs(20) & (!\counterHrs[19]~72\ & VCC))
-- \counterHrs[20]~74\ = CARRY((counterHrs(20) & !\counterHrs[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterHrs(20),
	datad => VCC,
	cin => \counterHrs[19]~72\,
	combout => \counterHrs[20]~73_combout\,
	cout => \counterHrs[20]~74\);

-- Location: FF_X23_Y18_N9
\counterHrs[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[20]~73_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \counterHrs[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(20));

-- Location: LCCOMB_X23_Y18_N10
\counterHrs[21]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[21]~75_combout\ = (counterHrs(21) & (!\counterHrs[20]~74\)) # (!counterHrs(21) & ((\counterHrs[20]~74\) # (GND)))
-- \counterHrs[21]~76\ = CARRY((!\counterHrs[20]~74\) # (!counterHrs(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(21),
	datad => VCC,
	cin => \counterHrs[20]~74\,
	combout => \counterHrs[21]~75_combout\,
	cout => \counterHrs[21]~76\);

-- Location: FF_X23_Y18_N11
\counterHrs[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[21]~75_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \counterHrs[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(21));

-- Location: LCCOMB_X23_Y18_N12
\counterHrs[22]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[22]~77_combout\ = (counterHrs(22) & (\counterHrs[21]~76\ $ (GND))) # (!counterHrs(22) & (!\counterHrs[21]~76\ & VCC))
-- \counterHrs[22]~78\ = CARRY((counterHrs(22) & !\counterHrs[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(22),
	datad => VCC,
	cin => \counterHrs[21]~76\,
	combout => \counterHrs[22]~77_combout\,
	cout => \counterHrs[22]~78\);

-- Location: FF_X23_Y18_N13
\counterHrs[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[22]~77_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \counterHrs[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(22));

-- Location: LCCOMB_X23_Y18_N14
\counterHrs[23]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[23]~79_combout\ = (counterHrs(23) & (!\counterHrs[22]~78\)) # (!counterHrs(23) & ((\counterHrs[22]~78\) # (GND)))
-- \counterHrs[23]~80\ = CARRY((!\counterHrs[22]~78\) # (!counterHrs(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterHrs(23),
	datad => VCC,
	cin => \counterHrs[22]~78\,
	combout => \counterHrs[23]~79_combout\,
	cout => \counterHrs[23]~80\);

-- Location: FF_X23_Y18_N15
\counterHrs[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[23]~79_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \counterHrs[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(23));

-- Location: LCCOMB_X23_Y18_N16
\counterHrs[24]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[24]~81_combout\ = (counterHrs(24) & (\counterHrs[23]~80\ $ (GND))) # (!counterHrs(24) & (!\counterHrs[23]~80\ & VCC))
-- \counterHrs[24]~82\ = CARRY((counterHrs(24) & !\counterHrs[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterHrs(24),
	datad => VCC,
	cin => \counterHrs[23]~80\,
	combout => \counterHrs[24]~81_combout\,
	cout => \counterHrs[24]~82\);

-- Location: FF_X23_Y18_N17
\counterHrs[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[24]~81_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \counterHrs[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(24));

-- Location: LCCOMB_X23_Y18_N18
\counterHrs[25]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[25]~83_combout\ = (counterHrs(25) & (!\counterHrs[24]~82\)) # (!counterHrs(25) & ((\counterHrs[24]~82\) # (GND)))
-- \counterHrs[25]~84\ = CARRY((!\counterHrs[24]~82\) # (!counterHrs(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterHrs(25),
	datad => VCC,
	cin => \counterHrs[24]~82\,
	combout => \counterHrs[25]~83_combout\,
	cout => \counterHrs[25]~84\);

-- Location: FF_X23_Y18_N19
\counterHrs[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[25]~83_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \counterHrs[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(25));

-- Location: LCCOMB_X23_Y18_N20
\counterHrs[26]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[26]~85_combout\ = (counterHrs(26) & (\counterHrs[25]~84\ $ (GND))) # (!counterHrs(26) & (!\counterHrs[25]~84\ & VCC))
-- \counterHrs[26]~86\ = CARRY((counterHrs(26) & !\counterHrs[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterHrs(26),
	datad => VCC,
	cin => \counterHrs[25]~84\,
	combout => \counterHrs[26]~85_combout\,
	cout => \counterHrs[26]~86\);

-- Location: FF_X23_Y18_N21
\counterHrs[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[26]~85_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \counterHrs[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(26));

-- Location: LCCOMB_X23_Y18_N22
\counterHrs[27]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[27]~87_combout\ = (counterHrs(27) & (!\counterHrs[26]~86\)) # (!counterHrs(27) & ((\counterHrs[26]~86\) # (GND)))
-- \counterHrs[27]~88\ = CARRY((!\counterHrs[26]~86\) # (!counterHrs(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(27),
	datad => VCC,
	cin => \counterHrs[26]~86\,
	combout => \counterHrs[27]~87_combout\,
	cout => \counterHrs[27]~88\);

-- Location: FF_X23_Y18_N23
\counterHrs[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[27]~87_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \counterHrs[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(27));

-- Location: LCCOMB_X23_Y18_N24
\counterHrs[28]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[28]~89_combout\ = (counterHrs(28) & (\counterHrs[27]~88\ $ (GND))) # (!counterHrs(28) & (!\counterHrs[27]~88\ & VCC))
-- \counterHrs[28]~90\ = CARRY((counterHrs(28) & !\counterHrs[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterHrs(28),
	datad => VCC,
	cin => \counterHrs[27]~88\,
	combout => \counterHrs[28]~89_combout\,
	cout => \counterHrs[28]~90\);

-- Location: FF_X23_Y18_N25
\counterHrs[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[28]~89_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \counterHrs[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(28));

-- Location: LCCOMB_X23_Y18_N26
\counterHrs[29]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[29]~91_combout\ = (counterHrs(29) & (!\counterHrs[28]~90\)) # (!counterHrs(29) & ((\counterHrs[28]~90\) # (GND)))
-- \counterHrs[29]~92\ = CARRY((!\counterHrs[28]~90\) # (!counterHrs(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(29),
	datad => VCC,
	cin => \counterHrs[28]~90\,
	combout => \counterHrs[29]~91_combout\,
	cout => \counterHrs[29]~92\);

-- Location: FF_X23_Y18_N27
\counterHrs[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[29]~91_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \counterHrs[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(29));

-- Location: LCCOMB_X23_Y18_N28
\counterHrs[30]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[30]~93_combout\ = (counterHrs(30) & (\counterHrs[29]~92\ $ (GND))) # (!counterHrs(30) & (!\counterHrs[29]~92\ & VCC))
-- \counterHrs[30]~94\ = CARRY((counterHrs(30) & !\counterHrs[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterHrs(30),
	datad => VCC,
	cin => \counterHrs[29]~92\,
	combout => \counterHrs[30]~93_combout\,
	cout => \counterHrs[30]~94\);

-- Location: FF_X23_Y18_N29
\counterHrs[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[30]~93_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \counterHrs[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(30));

-- Location: LCCOMB_X22_Y18_N22
\LessThan2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = (!counterHrs(29) & !counterHrs(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counterHrs(29),
	datad => counterHrs(30),
	combout => \LessThan2~4_combout\);

-- Location: LCCOMB_X22_Y18_N30
\LessThan2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~8_combout\ = (!counterHrs(26) & (!counterHrs(28) & (!counterHrs(25) & !counterHrs(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(26),
	datab => counterHrs(28),
	datac => counterHrs(25),
	datad => counterHrs(27),
	combout => \LessThan2~8_combout\);

-- Location: LCCOMB_X22_Y18_N18
\LessThan2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = (!counterHrs(18) & (!counterHrs(17) & (!counterHrs(19) & !counterHrs(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(18),
	datab => counterHrs(17),
	datac => counterHrs(19),
	datad => counterHrs(20),
	combout => \LessThan2~6_combout\);

-- Location: LCCOMB_X22_Y18_N8
\LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~7_combout\ = (!counterHrs(23) & (!counterHrs(22) & (!counterHrs(21) & !counterHrs(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(23),
	datab => counterHrs(22),
	datac => counterHrs(21),
	datad => counterHrs(24),
	combout => \LessThan2~7_combout\);

-- Location: LCCOMB_X22_Y18_N28
\LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = (!counterHrs(15) & (!counterHrs(14) & (!counterHrs(16) & !counterHrs(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(15),
	datab => counterHrs(14),
	datac => counterHrs(16),
	datad => counterHrs(13),
	combout => \LessThan2~5_combout\);

-- Location: LCCOMB_X22_Y18_N24
\LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~9_combout\ = (\LessThan2~8_combout\ & (\LessThan2~6_combout\ & (\LessThan2~7_combout\ & \LessThan2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~8_combout\,
	datab => \LessThan2~6_combout\,
	datac => \LessThan2~7_combout\,
	datad => \LessThan2~5_combout\,
	combout => \LessThan2~9_combout\);

-- Location: LCCOMB_X23_Y18_N30
\counterHrs[31]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[31]~95_combout\ = counterHrs(31) $ (\counterHrs[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(31),
	cin => \counterHrs[30]~94\,
	combout => \counterHrs[31]~95_combout\);

-- Location: FF_X23_Y18_N31
\counterHrs[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[31]~95_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \counterHrs[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(31));

-- Location: LCCOMB_X22_Y19_N30
\LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (!counterHrs(10) & (!counterHrs(11) & (!counterHrs(12) & !counterHrs(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(10),
	datab => counterHrs(11),
	datac => counterHrs(12),
	datad => counterHrs(9),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X22_Y19_N0
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (!counterHrs(5) & (!counterHrs(6) & (!counterHrs(7) & !counterHrs(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(5),
	datab => counterHrs(6),
	datac => counterHrs(7),
	datad => counterHrs(8),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X22_Y19_N24
\LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (!counterHrs(3) & (((!counterHrs(1)) # (!counterHrs(0))) # (!counterHrs(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(2),
	datab => counterHrs(0),
	datac => counterHrs(1),
	datad => counterHrs(3),
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X22_Y18_N20
\LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = (\LessThan2~1_combout\ & (\LessThan2~0_combout\ & ((\LessThan2~2_combout\) # (!counterHrs(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~1_combout\,
	datab => counterHrs(4),
	datac => \LessThan2~0_combout\,
	datad => \LessThan2~2_combout\,
	combout => \LessThan2~3_combout\);

-- Location: LCCOMB_X22_Y18_N26
\LessThan2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~10_combout\ = (!counterHrs(31) & (((!\LessThan2~3_combout\) # (!\LessThan2~9_combout\)) # (!\LessThan2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~4_combout\,
	datab => \LessThan2~9_combout\,
	datac => counterHrs(31),
	datad => \LessThan2~3_combout\,
	combout => \LessThan2~10_combout\);

-- Location: FF_X23_Y19_N1
\counterHrs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[0]~32_combout\,
	sclr => \LessThan2~10_combout\,
	ena => \counterHrs[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(0));

-- Location: IOIBUF_X0_Y18_N15
\inSec[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inSec(0),
	o => \inSec[0]~input_o\);

-- Location: IOIBUF_X13_Y24_N15
\inSec[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inSec(1),
	o => \inSec[1]~input_o\);

-- Location: IOIBUF_X34_Y4_N15
\inSec[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inSec(2),
	o => \inSec[2]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\inSec[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inSec(3),
	o => \inSec[3]~input_o\);

-- Location: IOIBUF_X34_Y2_N15
\inSec[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inSec(4),
	o => \inSec[4]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\inSec[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inSec(5),
	o => \inSec[5]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\inMin[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inMin(0),
	o => \inMin[0]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\inMin[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inMin(1),
	o => \inMin[1]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\inMin[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inMin(2),
	o => \inMin[2]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\inMin[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inMin(3),
	o => \inMin[3]~input_o\);

-- Location: IOIBUF_X3_Y24_N22
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

-- Location: IOIBUF_X1_Y24_N1
\inHrs[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inHrs(2),
	o => \inHrs[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\inHrs[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inHrs(3),
	o => \inHrs[3]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
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


