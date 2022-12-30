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

-- DATE "12/30/2022 16:18:52"

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
-- sec[0]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec[1]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec[2]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec[3]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec[4]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec[5]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min[0]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min[1]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min[2]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min[3]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min[4]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min[5]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hrs[0]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hrs[1]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hrs[2]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hrs[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hrs[4]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inSec[0]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inSec[1]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inSec[2]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inSec[3]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inSec[4]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inSec[5]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inMin[0]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inMin[1]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inMin[2]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inMin[3]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inMin[4]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inMin[5]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inHrs[0]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inHrs[1]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inHrs[2]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inHrs[3]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inHrs[4]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- set	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \counterSec[0]~6_combout\ : std_logic;
SIGNAL \counterSec[0]~7\ : std_logic;
SIGNAL \counterSec[1]~8_combout\ : std_logic;
SIGNAL \counterSec[1]~9\ : std_logic;
SIGNAL \counterSec[2]~10_combout\ : std_logic;
SIGNAL \counterSec[2]~11\ : std_logic;
SIGNAL \counterSec[3]~12_combout\ : std_logic;
SIGNAL \counterSec[3]~13\ : std_logic;
SIGNAL \counterSec[4]~14_combout\ : std_logic;
SIGNAL \counterSec[4]~15\ : std_logic;
SIGNAL \counterSec[5]~16_combout\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \LessThan3~3_combout\ : std_logic;
SIGNAL \counterMin[0]~6_combout\ : std_logic;
SIGNAL \counterMin[0]~7\ : std_logic;
SIGNAL \counterMin[1]~8_combout\ : std_logic;
SIGNAL \counterMin[1]~9\ : std_logic;
SIGNAL \counterMin[2]~10_combout\ : std_logic;
SIGNAL \counterMin[2]~11\ : std_logic;
SIGNAL \counterMin[3]~12_combout\ : std_logic;
SIGNAL \LessThan4~2_combout\ : std_logic;
SIGNAL \counterMin[3]~13\ : std_logic;
SIGNAL \counterMin[4]~14_combout\ : std_logic;
SIGNAL \counterMin[4]~15\ : std_logic;
SIGNAL \counterMin[5]~16_combout\ : std_logic;
SIGNAL \LessThan4~3_combout\ : std_logic;
SIGNAL \counterHrs[0]~5_combout\ : std_logic;
SIGNAL \counterHrs[0]~6\ : std_logic;
SIGNAL \counterHrs[1]~7_combout\ : std_logic;
SIGNAL \counterHrs[0]~15_combout\ : std_logic;
SIGNAL \counterHrs[0]~16_combout\ : std_logic;
SIGNAL \counterHrs[1]~8\ : std_logic;
SIGNAL \counterHrs[2]~9_combout\ : std_logic;
SIGNAL \counterHrs[2]~10\ : std_logic;
SIGNAL \counterHrs[3]~11_combout\ : std_logic;
SIGNAL \counterHrs[3]~12\ : std_logic;
SIGNAL \counterHrs[4]~13_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL counterSec : std_logic_vector(5 DOWNTO 0);
SIGNAL counterMin : std_logic_vector(5 DOWNTO 0);
SIGNAL counterHrs : std_logic_vector(4 DOWNTO 0);

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

-- Location: IOOBUF_X28_Y24_N9
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

-- Location: IOOBUF_X28_Y24_N2
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

-- Location: IOOBUF_X28_Y24_N23
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

-- Location: IOOBUF_X28_Y24_N16
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

-- Location: IOOBUF_X34_Y20_N9
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

-- Location: IOOBUF_X34_Y19_N16
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

-- Location: IOOBUF_X23_Y24_N2
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

-- Location: IOOBUF_X30_Y24_N2
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

-- Location: IOOBUF_X23_Y24_N16
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

-- Location: IOOBUF_X23_Y24_N9
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

-- Location: IOOBUF_X16_Y24_N9
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

-- Location: IOOBUF_X16_Y24_N2
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

-- Location: IOOBUF_X18_Y24_N23
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

-- Location: IOOBUF_X18_Y24_N16
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

-- Location: IOOBUF_X30_Y24_N23
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

-- Location: IOOBUF_X16_Y24_N23
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

-- Location: IOOBUF_X16_Y24_N16
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

-- Location: IOOBUF_X34_Y4_N16
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

-- Location: LCCOMB_X25_Y20_N12
\counterSec[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[0]~6_combout\ = counterSec(0) $ (VCC)
-- \counterSec[0]~7\ = CARRY(counterSec(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counterSec(0),
	datad => VCC,
	combout => \counterSec[0]~6_combout\,
	cout => \counterSec[0]~7\);

-- Location: LCCOMB_X25_Y20_N14
\counterSec[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[1]~8_combout\ = (counterSec(1) & (!\counterSec[0]~7\)) # (!counterSec(1) & ((\counterSec[0]~7\) # (GND)))
-- \counterSec[1]~9\ = CARRY((!\counterSec[0]~7\) # (!counterSec(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(1),
	datad => VCC,
	cin => \counterSec[0]~7\,
	combout => \counterSec[1]~8_combout\,
	cout => \counterSec[1]~9\);

-- Location: FF_X25_Y20_N15
\counterSec[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[1]~8_combout\,
	sclr => \LessThan3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(1));

-- Location: LCCOMB_X25_Y20_N16
\counterSec[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[2]~10_combout\ = (counterSec(2) & (\counterSec[1]~9\ $ (GND))) # (!counterSec(2) & (!\counterSec[1]~9\ & VCC))
-- \counterSec[2]~11\ = CARRY((counterSec(2) & !\counterSec[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(2),
	datad => VCC,
	cin => \counterSec[1]~9\,
	combout => \counterSec[2]~10_combout\,
	cout => \counterSec[2]~11\);

-- Location: FF_X25_Y20_N17
\counterSec[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[2]~10_combout\,
	sclr => \LessThan3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(2));

-- Location: LCCOMB_X25_Y20_N18
\counterSec[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[3]~12_combout\ = (counterSec(3) & (!\counterSec[2]~11\)) # (!counterSec(3) & ((\counterSec[2]~11\) # (GND)))
-- \counterSec[3]~13\ = CARRY((!\counterSec[2]~11\) # (!counterSec(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(3),
	datad => VCC,
	cin => \counterSec[2]~11\,
	combout => \counterSec[3]~12_combout\,
	cout => \counterSec[3]~13\);

-- Location: FF_X25_Y20_N19
\counterSec[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[3]~12_combout\,
	sclr => \LessThan3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(3));

-- Location: LCCOMB_X25_Y20_N20
\counterSec[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[4]~14_combout\ = (counterSec(4) & (\counterSec[3]~13\ $ (GND))) # (!counterSec(4) & (!\counterSec[3]~13\ & VCC))
-- \counterSec[4]~15\ = CARRY((counterSec(4) & !\counterSec[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterSec(4),
	datad => VCC,
	cin => \counterSec[3]~13\,
	combout => \counterSec[4]~14_combout\,
	cout => \counterSec[4]~15\);

-- Location: FF_X25_Y20_N21
\counterSec[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[4]~14_combout\,
	sclr => \LessThan3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(4));

-- Location: LCCOMB_X25_Y20_N22
\counterSec[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterSec[5]~16_combout\ = \counterSec[4]~15\ $ (counterSec(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counterSec(5),
	cin => \counterSec[4]~15\,
	combout => \counterSec[5]~16_combout\);

-- Location: FF_X25_Y20_N23
\counterSec[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[5]~16_combout\,
	sclr => \LessThan3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(5));

-- Location: LCCOMB_X25_Y20_N24
\LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = ((!counterSec(2) & ((!counterSec(1)) # (!counterSec(0))))) # (!counterSec(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(0),
	datab => counterSec(2),
	datac => counterSec(1),
	datad => counterSec(3),
	combout => \LessThan3~2_combout\);

-- Location: LCCOMB_X24_Y20_N26
\LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~3_combout\ = (counterSec(5) & (counterSec(4) & !\LessThan3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counterSec(5),
	datac => counterSec(4),
	datad => \LessThan3~2_combout\,
	combout => \LessThan3~3_combout\);

-- Location: FF_X25_Y20_N13
\counterSec[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterSec[0]~6_combout\,
	sclr => \LessThan3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterSec(0));

-- Location: LCCOMB_X24_Y20_N6
\counterMin[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[0]~6_combout\ = counterMin(0) $ (VCC)
-- \counterMin[0]~7\ = CARRY(counterMin(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(0),
	datad => VCC,
	combout => \counterMin[0]~6_combout\,
	cout => \counterMin[0]~7\);

-- Location: LCCOMB_X24_Y20_N8
\counterMin[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[1]~8_combout\ = (counterMin(1) & (!\counterMin[0]~7\)) # (!counterMin(1) & ((\counterMin[0]~7\) # (GND)))
-- \counterMin[1]~9\ = CARRY((!\counterMin[0]~7\) # (!counterMin(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterMin(1),
	datad => VCC,
	cin => \counterMin[0]~7\,
	combout => \counterMin[1]~8_combout\,
	cout => \counterMin[1]~9\);

-- Location: FF_X24_Y20_N9
\counterMin[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[1]~8_combout\,
	sclr => \LessThan4~3_combout\,
	ena => \LessThan3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(1));

-- Location: LCCOMB_X24_Y20_N10
\counterMin[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[2]~10_combout\ = (counterMin(2) & (\counterMin[1]~9\ $ (GND))) # (!counterMin(2) & (!\counterMin[1]~9\ & VCC))
-- \counterMin[2]~11\ = CARRY((counterMin(2) & !\counterMin[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(2),
	datad => VCC,
	cin => \counterMin[1]~9\,
	combout => \counterMin[2]~10_combout\,
	cout => \counterMin[2]~11\);

-- Location: FF_X24_Y20_N11
\counterMin[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[2]~10_combout\,
	sclr => \LessThan4~3_combout\,
	ena => \LessThan3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(2));

-- Location: LCCOMB_X24_Y20_N12
\counterMin[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[3]~12_combout\ = (counterMin(3) & (!\counterMin[2]~11\)) # (!counterMin(3) & ((\counterMin[2]~11\) # (GND)))
-- \counterMin[3]~13\ = CARRY((!\counterMin[2]~11\) # (!counterMin(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(3),
	datad => VCC,
	cin => \counterMin[2]~11\,
	combout => \counterMin[3]~12_combout\,
	cout => \counterMin[3]~13\);

-- Location: FF_X24_Y20_N13
\counterMin[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[3]~12_combout\,
	sclr => \LessThan4~3_combout\,
	ena => \LessThan3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(3));

-- Location: LCCOMB_X24_Y20_N4
\LessThan4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~2_combout\ = ((!counterMin(2) & ((!counterMin(1)) # (!counterMin(0))))) # (!counterMin(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(0),
	datab => counterMin(1),
	datac => counterMin(2),
	datad => counterMin(3),
	combout => \LessThan4~2_combout\);

-- Location: LCCOMB_X24_Y20_N14
\counterMin[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[4]~14_combout\ = (counterMin(4) & (\counterMin[3]~13\ $ (GND))) # (!counterMin(4) & (!\counterMin[3]~13\ & VCC))
-- \counterMin[4]~15\ = CARRY((counterMin(4) & !\counterMin[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterMin(4),
	datad => VCC,
	cin => \counterMin[3]~13\,
	combout => \counterMin[4]~14_combout\,
	cout => \counterMin[4]~15\);

-- Location: FF_X24_Y20_N15
\counterMin[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[4]~14_combout\,
	sclr => \LessThan4~3_combout\,
	ena => \LessThan3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(4));

-- Location: LCCOMB_X24_Y20_N16
\counterMin[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterMin[5]~16_combout\ = \counterMin[4]~15\ $ (counterMin(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counterMin(5),
	cin => \counterMin[4]~15\,
	combout => \counterMin[5]~16_combout\);

-- Location: FF_X24_Y20_N17
\counterMin[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[5]~16_combout\,
	sclr => \LessThan4~3_combout\,
	ena => \LessThan3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(5));

-- Location: LCCOMB_X24_Y20_N28
\LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~3_combout\ = (!\LessThan4~2_combout\ & (counterMin(4) & counterMin(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan4~2_combout\,
	datac => counterMin(4),
	datad => counterMin(5),
	combout => \LessThan4~3_combout\);

-- Location: FF_X24_Y20_N7
\counterMin[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterMin[0]~6_combout\,
	sclr => \LessThan4~3_combout\,
	ena => \LessThan3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterMin(0));

-- Location: LCCOMB_X23_Y20_N16
\counterHrs[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[0]~5_combout\ = counterHrs(0) $ (VCC)
-- \counterHrs[0]~6\ = CARRY(counterHrs(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counterHrs(0),
	datad => VCC,
	combout => \counterHrs[0]~5_combout\,
	cout => \counterHrs[0]~6\);

-- Location: LCCOMB_X23_Y20_N18
\counterHrs[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[1]~7_combout\ = (counterHrs(1) & (!\counterHrs[0]~6\)) # (!counterHrs(1) & ((\counterHrs[0]~6\) # (GND)))
-- \counterHrs[1]~8\ = CARRY((!\counterHrs[0]~6\) # (!counterHrs(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterHrs(1),
	datad => VCC,
	cin => \counterHrs[0]~6\,
	combout => \counterHrs[1]~7_combout\,
	cout => \counterHrs[1]~8\);

-- Location: LCCOMB_X24_Y20_N18
\counterHrs[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[0]~15_combout\ = (((\LessThan4~2_combout\) # (\LessThan3~2_combout\)) # (!counterMin(5))) # (!counterSec(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterSec(4),
	datab => counterMin(5),
	datac => \LessThan4~2_combout\,
	datad => \LessThan3~2_combout\,
	combout => \counterHrs[0]~15_combout\);

-- Location: LCCOMB_X24_Y20_N24
\counterHrs[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[0]~16_combout\ = (!\counterHrs[0]~15_combout\ & (((counterSec(5) & counterMin(4))) # (!counterMin(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterMin(5),
	datab => counterSec(5),
	datac => counterMin(4),
	datad => \counterHrs[0]~15_combout\,
	combout => \counterHrs[0]~16_combout\);

-- Location: FF_X23_Y20_N19
\counterHrs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[1]~7_combout\,
	sclr => \LessThan5~1_combout\,
	ena => \counterHrs[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(1));

-- Location: LCCOMB_X23_Y20_N20
\counterHrs[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[2]~9_combout\ = (counterHrs(2) & (\counterHrs[1]~8\ $ (GND))) # (!counterHrs(2) & (!\counterHrs[1]~8\ & VCC))
-- \counterHrs[2]~10\ = CARRY((counterHrs(2) & !\counterHrs[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counterHrs(2),
	datad => VCC,
	cin => \counterHrs[1]~8\,
	combout => \counterHrs[2]~9_combout\,
	cout => \counterHrs[2]~10\);

-- Location: FF_X23_Y20_N21
\counterHrs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[2]~9_combout\,
	sclr => \LessThan5~1_combout\,
	ena => \counterHrs[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(2));

-- Location: LCCOMB_X23_Y20_N22
\counterHrs[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[3]~11_combout\ = (counterHrs(3) & (!\counterHrs[2]~10\)) # (!counterHrs(3) & ((\counterHrs[2]~10\) # (GND)))
-- \counterHrs[3]~12\ = CARRY((!\counterHrs[2]~10\) # (!counterHrs(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(3),
	datad => VCC,
	cin => \counterHrs[2]~10\,
	combout => \counterHrs[3]~11_combout\,
	cout => \counterHrs[3]~12\);

-- Location: FF_X23_Y20_N23
\counterHrs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[3]~11_combout\,
	sclr => \LessThan5~1_combout\,
	ena => \counterHrs[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(3));

-- Location: LCCOMB_X23_Y20_N24
\counterHrs[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \counterHrs[4]~13_combout\ = \counterHrs[3]~12\ $ (!counterHrs(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counterHrs(4),
	cin => \counterHrs[3]~12\,
	combout => \counterHrs[4]~13_combout\);

-- Location: FF_X23_Y20_N25
\counterHrs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[4]~13_combout\,
	sclr => \LessThan5~1_combout\,
	ena => \counterHrs[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(4));

-- Location: LCCOMB_X23_Y20_N28
\LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (!counterHrs(3) & (((!counterHrs(0)) # (!counterHrs(1))) # (!counterHrs(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counterHrs(2),
	datab => counterHrs(1),
	datac => counterHrs(3),
	datad => counterHrs(0),
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X23_Y20_N30
\LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~1_combout\ = (counterHrs(4) & !\LessThan5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counterHrs(4),
	datad => \LessThan5~0_combout\,
	combout => \LessThan5~1_combout\);

-- Location: FF_X23_Y20_N17
\counterHrs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counterHrs[0]~5_combout\,
	sclr => \LessThan5~1_combout\,
	ena => \counterHrs[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterHrs(0));

-- Location: IOIBUF_X1_Y0_N22
\inSec[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inSec(0),
	o => \inSec[0]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\inSec[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inSec(1),
	o => \inSec[1]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
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

-- Location: IOIBUF_X25_Y0_N1
\inSec[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inSec(5),
	o => \inSec[5]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\inMin[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inMin(0),
	o => \inMin[0]~input_o\);

-- Location: IOIBUF_X34_Y4_N22
\inMin[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inMin(1),
	o => \inMin[1]~input_o\);

-- Location: IOIBUF_X32_Y0_N15
\inMin[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inMin(2),
	o => \inMin[2]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\inMin[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inMin(3),
	o => \inMin[3]~input_o\);

-- Location: IOIBUF_X34_Y10_N8
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

-- Location: IOIBUF_X5_Y24_N8
\inHrs[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inHrs(1),
	o => \inHrs[1]~input_o\);

-- Location: IOIBUF_X11_Y24_N15
\inHrs[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inHrs(2),
	o => \inHrs[2]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
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


