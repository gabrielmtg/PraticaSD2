-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/04/2024 04:21:38"

-- 
-- Device: Altera EP3C5E144C7 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SAD_V3 IS
    PORT (
	clk : IN std_logic;
	enable : IN std_logic;
	reset : IN std_logic;
	sample_ori : IN std_logic_vector(31 DOWNTO 0);
	sample_can : IN std_logic_vector(31 DOWNTO 0);
	read_mem : OUT std_logic;
	address : OUT std_logic_vector(3 DOWNTO 0);
	sad_value : OUT std_logic_vector(13 DOWNTO 0);
	done : OUT std_logic
	);
END SAD_V3;

-- Design Ports Information
-- read_mem	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[3]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sad_value[0]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sad_value[1]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sad_value[2]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sad_value[3]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sad_value[4]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sad_value[5]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sad_value[6]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sad_value[7]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sad_value[8]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sad_value[9]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sad_value[10]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sad_value[11]	=>  Location: PIN_79,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sad_value[12]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sad_value[13]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- done	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[16]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[16]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[23]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[23]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[22]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[22]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[21]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[21]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[20]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[20]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[19]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[19]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[18]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[18]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[17]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[17]	=>  Location: PIN_4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[24]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[24]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[31]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[31]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[30]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[30]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[29]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[29]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[28]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[28]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[27]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[27]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[26]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[26]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[25]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[25]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[0]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[0]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[7]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[7]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[6]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[6]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[5]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[5]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[4]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[4]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[3]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[3]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[2]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[2]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[1]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[1]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[8]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[8]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[15]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[15]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[14]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[14]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[13]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[13]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[12]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[12]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[11]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[11]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[10]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[10]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_can[9]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_ori[9]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SAD_V3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_sample_ori : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_sample_can : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_read_mem : std_logic;
SIGNAL ww_address : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sad_value : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_done : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Bloco_de_Operacao|Subtrator2|s[0]~0_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator2|s[4]~8_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator2|s[5]~10_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator2|s[6]~12_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator2|s[7]~14_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute2|Add0~1_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator3|s[0]~0_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator3|s[3]~6_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator3|s[7]~14_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder1|Add0~0_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator0|s[0]~0_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator0|s[1]~2_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator0|s[2]~4_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator0|s[3]~6_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator0|s[4]~8_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator0|s[5]~10_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator0|s[6]~12_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator0|s[7]~14_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute1|Add0~1_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder2|s[0]~0_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute2|Add0~3_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder1|Add0~2_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute1|Add0~3_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder2|s[1]~2_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute2|Add0~5_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute1|Add0~5_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder0|s[2]~4_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute2|Add0~8\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute3|Add0~7_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute0|Add0~7_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder0|s[3]~6_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute2|Add0~9_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute2|Add0~10\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute1|Add0~9_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder0|s[4]~8_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder2|s[4]~8_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute2|Add0~11_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute2|Add0~12\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute1|Add0~11_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder0|s[5]~10_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder2|s[5]~10_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute2|Add0~13_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute2|Add0~14\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute3|Add0~14\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder1|Add0~13\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute0|Add0~14\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute1|Add0~13_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder0|s[6]~12_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder2|s[6]~12_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute2|Add0~15_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute3|Add0~15_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder1|Add0~14_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder1|Add0~15\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute0|Add0~15_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder2|s[7]~14_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder1|Add0~16_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder2|s[8]~16_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute3|Add0~0_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute0|Add0~0_combout\ : std_logic;
SIGNAL \sample_ori[16]~input_o\ : std_logic;
SIGNAL \sample_can[23]~input_o\ : std_logic;
SIGNAL \sample_can[22]~input_o\ : std_logic;
SIGNAL \sample_ori[21]~input_o\ : std_logic;
SIGNAL \sample_ori[20]~input_o\ : std_logic;
SIGNAL \sample_ori[19]~input_o\ : std_logic;
SIGNAL \sample_ori[18]~input_o\ : std_logic;
SIGNAL \sample_can[17]~input_o\ : std_logic;
SIGNAL \sample_ori[24]~input_o\ : std_logic;
SIGNAL \sample_can[31]~input_o\ : std_logic;
SIGNAL \sample_ori[30]~input_o\ : std_logic;
SIGNAL \sample_ori[29]~input_o\ : std_logic;
SIGNAL \sample_ori[28]~input_o\ : std_logic;
SIGNAL \sample_ori[27]~input_o\ : std_logic;
SIGNAL \sample_ori[26]~input_o\ : std_logic;
SIGNAL \sample_can[25]~input_o\ : std_logic;
SIGNAL \sample_can[0]~input_o\ : std_logic;
SIGNAL \sample_can[7]~input_o\ : std_logic;
SIGNAL \sample_can[6]~input_o\ : std_logic;
SIGNAL \sample_can[5]~input_o\ : std_logic;
SIGNAL \sample_ori[4]~input_o\ : std_logic;
SIGNAL \sample_can[3]~input_o\ : std_logic;
SIGNAL \sample_ori[2]~input_o\ : std_logic;
SIGNAL \sample_ori[1]~input_o\ : std_logic;
SIGNAL \sample_can[8]~input_o\ : std_logic;
SIGNAL \sample_can[15]~input_o\ : std_logic;
SIGNAL \sample_can[14]~input_o\ : std_logic;
SIGNAL \sample_can[13]~input_o\ : std_logic;
SIGNAL \sample_ori[12]~input_o\ : std_logic;
SIGNAL \sample_can[11]~input_o\ : std_logic;
SIGNAL \sample_ori[10]~input_o\ : std_logic;
SIGNAL \sample_ori[9]~input_o\ : std_logic;
SIGNAL \Bloco_de_Operacao|RegPA2|Q_reg[0]~feeder_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|RegPB2|Q_reg[7]~feeder_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|RegPA2|Q_reg[2]~feeder_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|RegPB2|Q_reg[1]~feeder_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|RegPA3|Q_reg[0]~feeder_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|RegPB3|Q_reg[7]~feeder_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|RegPA3|Q_reg[6]~feeder_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|RegPA3|Q_reg[2]~feeder_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|RegPB0|Q_reg[3]~feeder_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|RegPA0|Q_reg[2]~feeder_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|RegPB1|Q_reg[7]~feeder_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|RegPB1|Q_reg[3]~feeder_combout\ : std_logic;
SIGNAL \read_mem~output_o\ : std_logic;
SIGNAL \address[0]~output_o\ : std_logic;
SIGNAL \address[1]~output_o\ : std_logic;
SIGNAL \address[2]~output_o\ : std_logic;
SIGNAL \address[3]~output_o\ : std_logic;
SIGNAL \sad_value[0]~output_o\ : std_logic;
SIGNAL \sad_value[1]~output_o\ : std_logic;
SIGNAL \sad_value[2]~output_o\ : std_logic;
SIGNAL \sad_value[3]~output_o\ : std_logic;
SIGNAL \sad_value[4]~output_o\ : std_logic;
SIGNAL \sad_value[5]~output_o\ : std_logic;
SIGNAL \sad_value[6]~output_o\ : std_logic;
SIGNAL \sad_value[7]~output_o\ : std_logic;
SIGNAL \sad_value[8]~output_o\ : std_logic;
SIGNAL \sad_value[9]~output_o\ : std_logic;
SIGNAL \sad_value[10]~output_o\ : std_logic;
SIGNAL \sad_value[11]~output_o\ : std_logic;
SIGNAL \sad_value[12]~output_o\ : std_logic;
SIGNAL \sad_value[13]~output_o\ : std_logic;
SIGNAL \done~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \Bloco_de_Controle|Selector4~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \Bloco_de_Controle|estadoAtual.S1~q\ : std_logic;
SIGNAL \Bloco_de_Operacao|Muxi|y[0]~0_combout\ : std_logic;
SIGNAL \Bloco_de_Controle|estadoAtual.S4~feeder_combout\ : std_logic;
SIGNAL \Bloco_de_Controle|estadoAtual.S4~q\ : std_logic;
SIGNAL \Bloco_de_Controle|csoma~combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Somadori|Add0~0_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Somadori|Add0~1_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Muxi|y[4]~1_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Somadori|Add0~2_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Muxi|y[4]~2_combout\ : std_logic;
SIGNAL \Bloco_de_Controle|estadoAtual.S2~feeder_combout\ : std_logic;
SIGNAL \Bloco_de_Controle|estadoAtual.S2~q\ : std_logic;
SIGNAL \Bloco_de_Controle|proximoEstado.S3~0_combout\ : std_logic;
SIGNAL \Bloco_de_Controle|estadoAtual.S3~q\ : std_logic;
SIGNAL \Bloco_de_Operacao|regsoma|Q_reg[0]~14_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|SAD_reg|Q_reg[0]~feeder_combout\ : std_logic;
SIGNAL \Bloco_de_Controle|proximoEstado.S5~0_combout\ : std_logic;
SIGNAL \Bloco_de_Controle|estadoAtual.S5~q\ : std_logic;
SIGNAL \Bloco_de_Operacao|regsoma|Q_reg[0]~15\ : std_logic;
SIGNAL \Bloco_de_Operacao|regsoma|Q_reg[1]~16_combout\ : std_logic;
SIGNAL \sample_can[26]~input_o\ : std_logic;
SIGNAL \sample_ori[25]~input_o\ : std_logic;
SIGNAL \sample_can[24]~input_o\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator3|s[0]~1\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator3|s[1]~3\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator3|s[2]~4_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator3|s[1]~2_combout\ : std_logic;
SIGNAL \sample_ori[31]~input_o\ : std_logic;
SIGNAL \sample_can[30]~input_o\ : std_logic;
SIGNAL \sample_can[29]~input_o\ : std_logic;
SIGNAL \sample_can[28]~input_o\ : std_logic;
SIGNAL \sample_can[27]~input_o\ : std_logic;
SIGNAL \Bloco_de_Operacao|RegPB3|Q_reg[3]~feeder_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator3|s[2]~5\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator3|s[3]~7\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator3|s[4]~9\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator3|s[5]~11\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator3|s[6]~13\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator3|s[7]~15\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator3|Add0~0_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute3|Add0~2\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute3|Add0~4\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute3|Add0~5_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute3|Add0~3_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute3|Add0~1_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder1|Add0~1\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder1|Add0~3\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder1|Add0~4_combout\ : std_logic;
SIGNAL \sample_ori[7]~input_o\ : std_logic;
SIGNAL \sample_ori[6]~input_o\ : std_logic;
SIGNAL \Bloco_de_Operacao|RegPA0|Q_reg[6]~feeder_combout\ : std_logic;
SIGNAL \sample_ori[5]~input_o\ : std_logic;
SIGNAL \sample_can[4]~input_o\ : std_logic;
SIGNAL \sample_ori[3]~input_o\ : std_logic;
SIGNAL \sample_can[2]~input_o\ : std_logic;
SIGNAL \sample_can[1]~input_o\ : std_logic;
SIGNAL \Bloco_de_Operacao|RegPB0|Q_reg[1]~feeder_combout\ : std_logic;
SIGNAL \sample_ori[0]~input_o\ : std_logic;
SIGNAL \Bloco_de_Operacao|RegPA0|Q_reg[0]~feeder_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator0|s[0]~1\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator0|s[1]~3\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator0|s[2]~5\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator0|s[3]~7\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator0|s[4]~9\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator0|s[5]~11\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator0|s[6]~13\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator0|s[7]~15\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator0|Add0~0_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute0|Add0~2\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute0|Add0~3_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute0|Add0~1_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder0|s[0]~1\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder0|s[1]~2_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder0|s[0]~0_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder2|s[0]~1\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder2|s[1]~3\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder2|s[2]~4_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|regsoma|Q_reg[1]~17\ : std_logic;
SIGNAL \Bloco_de_Operacao|regsoma|Q_reg[2]~18_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|SAD_reg|Q_reg[2]~feeder_combout\ : std_logic;
SIGNAL \sample_can[19]~input_o\ : std_logic;
SIGNAL \sample_can[18]~input_o\ : std_logic;
SIGNAL \sample_ori[17]~input_o\ : std_logic;
SIGNAL \sample_can[16]~input_o\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator2|s[0]~1\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator2|s[1]~3\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator2|s[2]~5\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator2|s[3]~6_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator2|s[2]~4_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator2|s[1]~2_combout\ : std_logic;
SIGNAL \sample_ori[23]~input_o\ : std_logic;
SIGNAL \sample_ori[22]~input_o\ : std_logic;
SIGNAL \Bloco_de_Operacao|RegPA2|Q_reg[6]~feeder_combout\ : std_logic;
SIGNAL \sample_can[21]~input_o\ : std_logic;
SIGNAL \sample_can[20]~input_o\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator2|s[3]~7\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator2|s[4]~9\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator2|s[5]~11\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator2|s[6]~13\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator2|s[7]~15\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator2|Add0~0_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute2|Add0~0_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute2|Add0~2\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute2|Add0~4\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute2|Add0~6\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute2|Add0~7_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder1|Add0~5\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder1|Add0~6_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder2|s[2]~5\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder2|s[3]~6_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|regsoma|Q_reg[2]~19\ : std_logic;
SIGNAL \Bloco_de_Operacao|regsoma|Q_reg[3]~20_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|SAD_reg|Q_reg[3]~feeder_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|regsoma|Q_reg[3]~21\ : std_logic;
SIGNAL \Bloco_de_Operacao|regsoma|Q_reg[4]~22_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|SAD_reg|Q_reg[4]~feeder_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|regsoma|Q_reg[4]~23\ : std_logic;
SIGNAL \Bloco_de_Operacao|regsoma|Q_reg[5]~24_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|SAD_reg|Q_reg[5]~feeder_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|regsoma|Q_reg[5]~25\ : std_logic;
SIGNAL \Bloco_de_Operacao|regsoma|Q_reg[6]~26_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|SAD_reg|Q_reg[6]~feeder_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|regsoma|Q_reg[6]~27\ : std_logic;
SIGNAL \Bloco_de_Operacao|regsoma|Q_reg[7]~28_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|SAD_reg|Q_reg[7]~feeder_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|regsoma|Q_reg[7]~29\ : std_logic;
SIGNAL \Bloco_de_Operacao|regsoma|Q_reg[8]~30_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|SAD_reg|Q_reg[8]~feeder_combout\ : std_logic;
SIGNAL \sample_ori[15]~input_o\ : std_logic;
SIGNAL \sample_ori[14]~input_o\ : std_logic;
SIGNAL \Bloco_de_Operacao|RegPA1|Q_reg[6]~feeder_combout\ : std_logic;
SIGNAL \sample_ori[13]~input_o\ : std_logic;
SIGNAL \sample_can[12]~input_o\ : std_logic;
SIGNAL \sample_ori[11]~input_o\ : std_logic;
SIGNAL \sample_can[10]~input_o\ : std_logic;
SIGNAL \sample_can[9]~input_o\ : std_logic;
SIGNAL \Bloco_de_Operacao|RegPB1|Q_reg[1]~feeder_combout\ : std_logic;
SIGNAL \sample_ori[8]~input_o\ : std_logic;
SIGNAL \Bloco_de_Operacao|RegPA1|Q_reg[0]~feeder_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator1|s[0]~1\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator1|s[1]~3\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator1|s[2]~5\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator1|s[3]~7\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator1|s[4]~9\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator1|s[5]~11\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator1|s[6]~13\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator1|s[7]~14_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator1|s[6]~12_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator1|s[5]~10_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator1|s[4]~8_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator1|s[3]~6_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator1|s[2]~4_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator1|s[1]~2_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator1|s[0]~0_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator1|s[7]~15\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator1|Add0~0_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute1|Add0~0_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute1|Add0~2\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute1|Add0~4\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute1|Add0~6\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute1|Add0~8\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute1|Add0~10\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute1|Add0~12\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute1|Add0~14\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute1|Add0~15_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute0|Add0~4\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute0|Add0~6\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute0|Add0~8\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute0|Add0~10\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute0|Add0~12\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute0|Add0~13_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute0|Add0~11_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute0|Add0~9_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute1|Add0~7_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute0|Add0~5_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder0|s[1]~3\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder0|s[2]~5\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder0|s[3]~7\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder0|s[4]~9\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder0|s[5]~11\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder0|s[6]~13\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder0|s[7]~15\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder0|cout~0_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder0|s[7]~14_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator3|s[6]~12_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator3|s[5]~10_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Subtrator3|s[4]~8_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute3|Add0~6\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute3|Add0~8\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute3|Add0~10\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute3|Add0~12\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute3|Add0~13_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute3|Add0~11_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Absolute3|Add0~9_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder1|Add0~7\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder1|Add0~9\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder1|Add0~11\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder1|Add0~12_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder1|Add0~10_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder1|Add0~8_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder2|s[3]~7\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder2|s[4]~9\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder2|s[5]~11\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder2|s[6]~13\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder2|s[7]~15\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder2|s[8]~17\ : std_logic;
SIGNAL \Bloco_de_Operacao|Adder2|cout~0_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|regsoma|Q_reg[8]~31\ : std_logic;
SIGNAL \Bloco_de_Operacao|regsoma|Q_reg[9]~32_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|SAD_reg|Q_reg[9]~feeder_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|regsoma|Q_reg[9]~33\ : std_logic;
SIGNAL \Bloco_de_Operacao|regsoma|Q_reg[10]~34_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|SAD_reg|Q_reg[10]~feeder_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|regsoma|Q_reg[10]~35\ : std_logic;
SIGNAL \Bloco_de_Operacao|regsoma|Q_reg[11]~36_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|SAD_reg|Q_reg[11]~feeder_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|regsoma|Q_reg[11]~37\ : std_logic;
SIGNAL \Bloco_de_Operacao|regsoma|Q_reg[12]~38_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|SAD_reg|Q_reg[12]~feeder_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|regsoma|Q_reg[12]~39\ : std_logic;
SIGNAL \Bloco_de_Operacao|regsoma|Q_reg[13]~40_combout\ : std_logic;
SIGNAL \Bloco_de_Operacao|SAD_reg|Q_reg[13]~feeder_combout\ : std_logic;
SIGNAL \Bloco_de_Controle|Selector6~0_combout\ : std_logic;
SIGNAL \Bloco_de_Controle|estadoAtual.S0~q\ : std_logic;
SIGNAL \Bloco_de_Operacao|RegPA1|Q_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Bloco_de_Operacao|RegPA2|Q_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Bloco_de_Operacao|RegPA3|Q_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Bloco_de_Operacao|RegPB0|Q_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Bloco_de_Operacao|RegPB1|Q_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Bloco_de_Operacao|RegPB2|Q_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Bloco_de_Operacao|RegPB3|Q_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Bloco_de_Operacao|SAD_reg|Q_reg\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \Bloco_de_Operacao|Regi|Q_reg\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Bloco_de_Operacao|RegPA0|Q_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Bloco_de_Operacao|regsoma|Q_reg\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \Bloco_de_Controle|ALT_INV_estadoAtual.S0~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_enable <= enable;
ww_reset <= reset;
ww_sample_ori <= sample_ori;
ww_sample_can <= sample_can;
read_mem <= ww_read_mem;
address <= ww_address;
sad_value <= ww_sad_value;
done <= ww_done;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\Bloco_de_Controle|ALT_INV_estadoAtual.S0~q\ <= NOT \Bloco_de_Controle|estadoAtual.S0~q\;

-- Location: LCCOMB_X21_Y22_N0
\Bloco_de_Operacao|Subtrator2|s[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Subtrator2|s[0]~0_combout\ = (\Bloco_de_Operacao|RegPA2|Q_reg\(0) & ((GND) # (!\Bloco_de_Operacao|RegPB2|Q_reg\(0)))) # (!\Bloco_de_Operacao|RegPA2|Q_reg\(0) & (\Bloco_de_Operacao|RegPB2|Q_reg\(0) $ (GND)))
-- \Bloco_de_Operacao|Subtrator2|s[0]~1\ = CARRY((\Bloco_de_Operacao|RegPA2|Q_reg\(0)) # (!\Bloco_de_Operacao|RegPB2|Q_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|RegPA2|Q_reg\(0),
	datab => \Bloco_de_Operacao|RegPB2|Q_reg\(0),
	datad => VCC,
	combout => \Bloco_de_Operacao|Subtrator2|s[0]~0_combout\,
	cout => \Bloco_de_Operacao|Subtrator2|s[0]~1\);

-- Location: LCCOMB_X21_Y22_N8
\Bloco_de_Operacao|Subtrator2|s[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Subtrator2|s[4]~8_combout\ = ((\Bloco_de_Operacao|RegPA2|Q_reg\(4) $ (\Bloco_de_Operacao|RegPB2|Q_reg\(4) $ (\Bloco_de_Operacao|Subtrator2|s[3]~7\)))) # (GND)
-- \Bloco_de_Operacao|Subtrator2|s[4]~9\ = CARRY((\Bloco_de_Operacao|RegPA2|Q_reg\(4) & ((!\Bloco_de_Operacao|Subtrator2|s[3]~7\) # (!\Bloco_de_Operacao|RegPB2|Q_reg\(4)))) # (!\Bloco_de_Operacao|RegPA2|Q_reg\(4) & (!\Bloco_de_Operacao|RegPB2|Q_reg\(4) & 
-- !\Bloco_de_Operacao|Subtrator2|s[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|RegPA2|Q_reg\(4),
	datab => \Bloco_de_Operacao|RegPB2|Q_reg\(4),
	datad => VCC,
	cin => \Bloco_de_Operacao|Subtrator2|s[3]~7\,
	combout => \Bloco_de_Operacao|Subtrator2|s[4]~8_combout\,
	cout => \Bloco_de_Operacao|Subtrator2|s[4]~9\);

-- Location: LCCOMB_X21_Y22_N10
\Bloco_de_Operacao|Subtrator2|s[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Subtrator2|s[5]~10_combout\ = (\Bloco_de_Operacao|RegPA2|Q_reg\(5) & ((\Bloco_de_Operacao|RegPB2|Q_reg\(5) & (!\Bloco_de_Operacao|Subtrator2|s[4]~9\)) # (!\Bloco_de_Operacao|RegPB2|Q_reg\(5) & (\Bloco_de_Operacao|Subtrator2|s[4]~9\ & 
-- VCC)))) # (!\Bloco_de_Operacao|RegPA2|Q_reg\(5) & ((\Bloco_de_Operacao|RegPB2|Q_reg\(5) & ((\Bloco_de_Operacao|Subtrator2|s[4]~9\) # (GND))) # (!\Bloco_de_Operacao|RegPB2|Q_reg\(5) & (!\Bloco_de_Operacao|Subtrator2|s[4]~9\))))
-- \Bloco_de_Operacao|Subtrator2|s[5]~11\ = CARRY((\Bloco_de_Operacao|RegPA2|Q_reg\(5) & (\Bloco_de_Operacao|RegPB2|Q_reg\(5) & !\Bloco_de_Operacao|Subtrator2|s[4]~9\)) # (!\Bloco_de_Operacao|RegPA2|Q_reg\(5) & ((\Bloco_de_Operacao|RegPB2|Q_reg\(5)) # 
-- (!\Bloco_de_Operacao|Subtrator2|s[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|RegPA2|Q_reg\(5),
	datab => \Bloco_de_Operacao|RegPB2|Q_reg\(5),
	datad => VCC,
	cin => \Bloco_de_Operacao|Subtrator2|s[4]~9\,
	combout => \Bloco_de_Operacao|Subtrator2|s[5]~10_combout\,
	cout => \Bloco_de_Operacao|Subtrator2|s[5]~11\);

-- Location: LCCOMB_X21_Y22_N12
\Bloco_de_Operacao|Subtrator2|s[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Subtrator2|s[6]~12_combout\ = ((\Bloco_de_Operacao|RegPB2|Q_reg\(6) $ (\Bloco_de_Operacao|RegPA2|Q_reg\(6) $ (\Bloco_de_Operacao|Subtrator2|s[5]~11\)))) # (GND)
-- \Bloco_de_Operacao|Subtrator2|s[6]~13\ = CARRY((\Bloco_de_Operacao|RegPB2|Q_reg\(6) & (\Bloco_de_Operacao|RegPA2|Q_reg\(6) & !\Bloco_de_Operacao|Subtrator2|s[5]~11\)) # (!\Bloco_de_Operacao|RegPB2|Q_reg\(6) & ((\Bloco_de_Operacao|RegPA2|Q_reg\(6)) # 
-- (!\Bloco_de_Operacao|Subtrator2|s[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|RegPB2|Q_reg\(6),
	datab => \Bloco_de_Operacao|RegPA2|Q_reg\(6),
	datad => VCC,
	cin => \Bloco_de_Operacao|Subtrator2|s[5]~11\,
	combout => \Bloco_de_Operacao|Subtrator2|s[6]~12_combout\,
	cout => \Bloco_de_Operacao|Subtrator2|s[6]~13\);

-- Location: LCCOMB_X21_Y22_N14
\Bloco_de_Operacao|Subtrator2|s[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Subtrator2|s[7]~14_combout\ = (\Bloco_de_Operacao|RegPB2|Q_reg\(7) & ((\Bloco_de_Operacao|RegPA2|Q_reg\(7) & (!\Bloco_de_Operacao|Subtrator2|s[6]~13\)) # (!\Bloco_de_Operacao|RegPA2|Q_reg\(7) & ((\Bloco_de_Operacao|Subtrator2|s[6]~13\) 
-- # (GND))))) # (!\Bloco_de_Operacao|RegPB2|Q_reg\(7) & ((\Bloco_de_Operacao|RegPA2|Q_reg\(7) & (\Bloco_de_Operacao|Subtrator2|s[6]~13\ & VCC)) # (!\Bloco_de_Operacao|RegPA2|Q_reg\(7) & (!\Bloco_de_Operacao|Subtrator2|s[6]~13\))))
-- \Bloco_de_Operacao|Subtrator2|s[7]~15\ = CARRY((\Bloco_de_Operacao|RegPB2|Q_reg\(7) & ((!\Bloco_de_Operacao|Subtrator2|s[6]~13\) # (!\Bloco_de_Operacao|RegPA2|Q_reg\(7)))) # (!\Bloco_de_Operacao|RegPB2|Q_reg\(7) & (!\Bloco_de_Operacao|RegPA2|Q_reg\(7) & 
-- !\Bloco_de_Operacao|Subtrator2|s[6]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|RegPB2|Q_reg\(7),
	datab => \Bloco_de_Operacao|RegPA2|Q_reg\(7),
	datad => VCC,
	cin => \Bloco_de_Operacao|Subtrator2|s[6]~13\,
	combout => \Bloco_de_Operacao|Subtrator2|s[7]~14_combout\,
	cout => \Bloco_de_Operacao|Subtrator2|s[7]~15\);

-- Location: LCCOMB_X22_Y22_N0
\Bloco_de_Operacao|Absolute2|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Absolute2|Add0~1_combout\ = (\Bloco_de_Operacao|Subtrator2|Add0~0_combout\ & (!\Bloco_de_Operacao|Absolute2|Add0~0_combout\ & VCC)) # (!\Bloco_de_Operacao|Subtrator2|Add0~0_combout\ & (\Bloco_de_Operacao|Absolute2|Add0~0_combout\ $ 
-- (GND)))
-- \Bloco_de_Operacao|Absolute2|Add0~2\ = CARRY((!\Bloco_de_Operacao|Subtrator2|Add0~0_combout\ & !\Bloco_de_Operacao|Absolute2|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Subtrator2|Add0~0_combout\,
	datab => \Bloco_de_Operacao|Absolute2|Add0~0_combout\,
	datad => VCC,
	combout => \Bloco_de_Operacao|Absolute2|Add0~1_combout\,
	cout => \Bloco_de_Operacao|Absolute2|Add0~2\);

-- Location: LCCOMB_X25_Y22_N0
\Bloco_de_Operacao|Subtrator3|s[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Subtrator3|s[0]~0_combout\ = (\Bloco_de_Operacao|RegPA3|Q_reg\(0) & ((GND) # (!\Bloco_de_Operacao|RegPB3|Q_reg\(0)))) # (!\Bloco_de_Operacao|RegPA3|Q_reg\(0) & (\Bloco_de_Operacao|RegPB3|Q_reg\(0) $ (GND)))
-- \Bloco_de_Operacao|Subtrator3|s[0]~1\ = CARRY((\Bloco_de_Operacao|RegPA3|Q_reg\(0)) # (!\Bloco_de_Operacao|RegPB3|Q_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|RegPA3|Q_reg\(0),
	datab => \Bloco_de_Operacao|RegPB3|Q_reg\(0),
	datad => VCC,
	combout => \Bloco_de_Operacao|Subtrator3|s[0]~0_combout\,
	cout => \Bloco_de_Operacao|Subtrator3|s[0]~1\);

-- Location: LCCOMB_X25_Y22_N6
\Bloco_de_Operacao|Subtrator3|s[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Subtrator3|s[3]~6_combout\ = (\Bloco_de_Operacao|RegPA3|Q_reg\(3) & ((\Bloco_de_Operacao|RegPB3|Q_reg\(3) & (!\Bloco_de_Operacao|Subtrator3|s[2]~5\)) # (!\Bloco_de_Operacao|RegPB3|Q_reg\(3) & (\Bloco_de_Operacao|Subtrator3|s[2]~5\ & 
-- VCC)))) # (!\Bloco_de_Operacao|RegPA3|Q_reg\(3) & ((\Bloco_de_Operacao|RegPB3|Q_reg\(3) & ((\Bloco_de_Operacao|Subtrator3|s[2]~5\) # (GND))) # (!\Bloco_de_Operacao|RegPB3|Q_reg\(3) & (!\Bloco_de_Operacao|Subtrator3|s[2]~5\))))
-- \Bloco_de_Operacao|Subtrator3|s[3]~7\ = CARRY((\Bloco_de_Operacao|RegPA3|Q_reg\(3) & (\Bloco_de_Operacao|RegPB3|Q_reg\(3) & !\Bloco_de_Operacao|Subtrator3|s[2]~5\)) # (!\Bloco_de_Operacao|RegPA3|Q_reg\(3) & ((\Bloco_de_Operacao|RegPB3|Q_reg\(3)) # 
-- (!\Bloco_de_Operacao|Subtrator3|s[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|RegPA3|Q_reg\(3),
	datab => \Bloco_de_Operacao|RegPB3|Q_reg\(3),
	datad => VCC,
	cin => \Bloco_de_Operacao|Subtrator3|s[2]~5\,
	combout => \Bloco_de_Operacao|Subtrator3|s[3]~6_combout\,
	cout => \Bloco_de_Operacao|Subtrator3|s[3]~7\);

-- Location: LCCOMB_X25_Y22_N14
\Bloco_de_Operacao|Subtrator3|s[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Subtrator3|s[7]~14_combout\ = (\Bloco_de_Operacao|RegPB3|Q_reg\(7) & ((\Bloco_de_Operacao|RegPA3|Q_reg\(7) & (!\Bloco_de_Operacao|Subtrator3|s[6]~13\)) # (!\Bloco_de_Operacao|RegPA3|Q_reg\(7) & ((\Bloco_de_Operacao|Subtrator3|s[6]~13\) 
-- # (GND))))) # (!\Bloco_de_Operacao|RegPB3|Q_reg\(7) & ((\Bloco_de_Operacao|RegPA3|Q_reg\(7) & (\Bloco_de_Operacao|Subtrator3|s[6]~13\ & VCC)) # (!\Bloco_de_Operacao|RegPA3|Q_reg\(7) & (!\Bloco_de_Operacao|Subtrator3|s[6]~13\))))
-- \Bloco_de_Operacao|Subtrator3|s[7]~15\ = CARRY((\Bloco_de_Operacao|RegPB3|Q_reg\(7) & ((!\Bloco_de_Operacao|Subtrator3|s[6]~13\) # (!\Bloco_de_Operacao|RegPA3|Q_reg\(7)))) # (!\Bloco_de_Operacao|RegPB3|Q_reg\(7) & (!\Bloco_de_Operacao|RegPA3|Q_reg\(7) & 
-- !\Bloco_de_Operacao|Subtrator3|s[6]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|RegPB3|Q_reg\(7),
	datab => \Bloco_de_Operacao|RegPA3|Q_reg\(7),
	datad => VCC,
	cin => \Bloco_de_Operacao|Subtrator3|s[6]~13\,
	combout => \Bloco_de_Operacao|Subtrator3|s[7]~14_combout\,
	cout => \Bloco_de_Operacao|Subtrator3|s[7]~15\);

-- Location: LCCOMB_X23_Y22_N0
\Bloco_de_Operacao|Adder1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Adder1|Add0~0_combout\ = (\Bloco_de_Operacao|Absolute2|Add0~1_combout\ & (\Bloco_de_Operacao|Absolute3|Add0~1_combout\ $ (VCC))) # (!\Bloco_de_Operacao|Absolute2|Add0~1_combout\ & (\Bloco_de_Operacao|Absolute3|Add0~1_combout\ & VCC))
-- \Bloco_de_Operacao|Adder1|Add0~1\ = CARRY((\Bloco_de_Operacao|Absolute2|Add0~1_combout\ & \Bloco_de_Operacao|Absolute3|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Absolute2|Add0~1_combout\,
	datab => \Bloco_de_Operacao|Absolute3|Add0~1_combout\,
	datad => VCC,
	combout => \Bloco_de_Operacao|Adder1|Add0~0_combout\,
	cout => \Bloco_de_Operacao|Adder1|Add0~1\);

-- Location: LCCOMB_X22_Y20_N10
\Bloco_de_Operacao|Subtrator0|s[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Subtrator0|s[0]~0_combout\ = (\Bloco_de_Operacao|RegPB0|Q_reg\(0) & (\Bloco_de_Operacao|RegPA0|Q_reg\(0) $ (VCC))) # (!\Bloco_de_Operacao|RegPB0|Q_reg\(0) & ((\Bloco_de_Operacao|RegPA0|Q_reg\(0)) # (GND)))
-- \Bloco_de_Operacao|Subtrator0|s[0]~1\ = CARRY((\Bloco_de_Operacao|RegPA0|Q_reg\(0)) # (!\Bloco_de_Operacao|RegPB0|Q_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|RegPB0|Q_reg\(0),
	datab => \Bloco_de_Operacao|RegPA0|Q_reg\(0),
	datad => VCC,
	combout => \Bloco_de_Operacao|Subtrator0|s[0]~0_combout\,
	cout => \Bloco_de_Operacao|Subtrator0|s[0]~1\);

-- Location: LCCOMB_X22_Y20_N12
\Bloco_de_Operacao|Subtrator0|s[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Subtrator0|s[1]~2_combout\ = (\Bloco_de_Operacao|RegPA0|Q_reg\(1) & ((\Bloco_de_Operacao|RegPB0|Q_reg\(1) & (!\Bloco_de_Operacao|Subtrator0|s[0]~1\)) # (!\Bloco_de_Operacao|RegPB0|Q_reg\(1) & (\Bloco_de_Operacao|Subtrator0|s[0]~1\ & 
-- VCC)))) # (!\Bloco_de_Operacao|RegPA0|Q_reg\(1) & ((\Bloco_de_Operacao|RegPB0|Q_reg\(1) & ((\Bloco_de_Operacao|Subtrator0|s[0]~1\) # (GND))) # (!\Bloco_de_Operacao|RegPB0|Q_reg\(1) & (!\Bloco_de_Operacao|Subtrator0|s[0]~1\))))
-- \Bloco_de_Operacao|Subtrator0|s[1]~3\ = CARRY((\Bloco_de_Operacao|RegPA0|Q_reg\(1) & (\Bloco_de_Operacao|RegPB0|Q_reg\(1) & !\Bloco_de_Operacao|Subtrator0|s[0]~1\)) # (!\Bloco_de_Operacao|RegPA0|Q_reg\(1) & ((\Bloco_de_Operacao|RegPB0|Q_reg\(1)) # 
-- (!\Bloco_de_Operacao|Subtrator0|s[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|RegPA0|Q_reg\(1),
	datab => \Bloco_de_Operacao|RegPB0|Q_reg\(1),
	datad => VCC,
	cin => \Bloco_de_Operacao|Subtrator0|s[0]~1\,
	combout => \Bloco_de_Operacao|Subtrator0|s[1]~2_combout\,
	cout => \Bloco_de_Operacao|Subtrator0|s[1]~3\);

-- Location: LCCOMB_X22_Y20_N14
\Bloco_de_Operacao|Subtrator0|s[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Subtrator0|s[2]~4_combout\ = ((\Bloco_de_Operacao|RegPA0|Q_reg\(2) $ (\Bloco_de_Operacao|RegPB0|Q_reg\(2) $ (\Bloco_de_Operacao|Subtrator0|s[1]~3\)))) # (GND)
-- \Bloco_de_Operacao|Subtrator0|s[2]~5\ = CARRY((\Bloco_de_Operacao|RegPA0|Q_reg\(2) & ((!\Bloco_de_Operacao|Subtrator0|s[1]~3\) # (!\Bloco_de_Operacao|RegPB0|Q_reg\(2)))) # (!\Bloco_de_Operacao|RegPA0|Q_reg\(2) & (!\Bloco_de_Operacao|RegPB0|Q_reg\(2) & 
-- !\Bloco_de_Operacao|Subtrator0|s[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|RegPA0|Q_reg\(2),
	datab => \Bloco_de_Operacao|RegPB0|Q_reg\(2),
	datad => VCC,
	cin => \Bloco_de_Operacao|Subtrator0|s[1]~3\,
	combout => \Bloco_de_Operacao|Subtrator0|s[2]~4_combout\,
	cout => \Bloco_de_Operacao|Subtrator0|s[2]~5\);

-- Location: LCCOMB_X22_Y20_N16
\Bloco_de_Operacao|Subtrator0|s[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Subtrator0|s[3]~6_combout\ = (\Bloco_de_Operacao|RegPB0|Q_reg\(3) & ((\Bloco_de_Operacao|RegPA0|Q_reg\(3) & (!\Bloco_de_Operacao|Subtrator0|s[2]~5\)) # (!\Bloco_de_Operacao|RegPA0|Q_reg\(3) & ((\Bloco_de_Operacao|Subtrator0|s[2]~5\) # 
-- (GND))))) # (!\Bloco_de_Operacao|RegPB0|Q_reg\(3) & ((\Bloco_de_Operacao|RegPA0|Q_reg\(3) & (\Bloco_de_Operacao|Subtrator0|s[2]~5\ & VCC)) # (!\Bloco_de_Operacao|RegPA0|Q_reg\(3) & (!\Bloco_de_Operacao|Subtrator0|s[2]~5\))))
-- \Bloco_de_Operacao|Subtrator0|s[3]~7\ = CARRY((\Bloco_de_Operacao|RegPB0|Q_reg\(3) & ((!\Bloco_de_Operacao|Subtrator0|s[2]~5\) # (!\Bloco_de_Operacao|RegPA0|Q_reg\(3)))) # (!\Bloco_de_Operacao|RegPB0|Q_reg\(3) & (!\Bloco_de_Operacao|RegPA0|Q_reg\(3) & 
-- !\Bloco_de_Operacao|Subtrator0|s[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|RegPB0|Q_reg\(3),
	datab => \Bloco_de_Operacao|RegPA0|Q_reg\(3),
	datad => VCC,
	cin => \Bloco_de_Operacao|Subtrator0|s[2]~5\,
	combout => \Bloco_de_Operacao|Subtrator0|s[3]~6_combout\,
	cout => \Bloco_de_Operacao|Subtrator0|s[3]~7\);

-- Location: LCCOMB_X22_Y20_N18
\Bloco_de_Operacao|Subtrator0|s[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Subtrator0|s[4]~8_combout\ = ((\Bloco_de_Operacao|RegPA0|Q_reg\(4) $ (\Bloco_de_Operacao|RegPB0|Q_reg\(4) $ (\Bloco_de_Operacao|Subtrator0|s[3]~7\)))) # (GND)
-- \Bloco_de_Operacao|Subtrator0|s[4]~9\ = CARRY((\Bloco_de_Operacao|RegPA0|Q_reg\(4) & ((!\Bloco_de_Operacao|Subtrator0|s[3]~7\) # (!\Bloco_de_Operacao|RegPB0|Q_reg\(4)))) # (!\Bloco_de_Operacao|RegPA0|Q_reg\(4) & (!\Bloco_de_Operacao|RegPB0|Q_reg\(4) & 
-- !\Bloco_de_Operacao|Subtrator0|s[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|RegPA0|Q_reg\(4),
	datab => \Bloco_de_Operacao|RegPB0|Q_reg\(4),
	datad => VCC,
	cin => \Bloco_de_Operacao|Subtrator0|s[3]~7\,
	combout => \Bloco_de_Operacao|Subtrator0|s[4]~8_combout\,
	cout => \Bloco_de_Operacao|Subtrator0|s[4]~9\);

-- Location: LCCOMB_X22_Y20_N20
\Bloco_de_Operacao|Subtrator0|s[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Subtrator0|s[5]~10_combout\ = (\Bloco_de_Operacao|RegPB0|Q_reg\(5) & ((\Bloco_de_Operacao|RegPA0|Q_reg\(5) & (!\Bloco_de_Operacao|Subtrator0|s[4]~9\)) # (!\Bloco_de_Operacao|RegPA0|Q_reg\(5) & ((\Bloco_de_Operacao|Subtrator0|s[4]~9\) # 
-- (GND))))) # (!\Bloco_de_Operacao|RegPB0|Q_reg\(5) & ((\Bloco_de_Operacao|RegPA0|Q_reg\(5) & (\Bloco_de_Operacao|Subtrator0|s[4]~9\ & VCC)) # (!\Bloco_de_Operacao|RegPA0|Q_reg\(5) & (!\Bloco_de_Operacao|Subtrator0|s[4]~9\))))
-- \Bloco_de_Operacao|Subtrator0|s[5]~11\ = CARRY((\Bloco_de_Operacao|RegPB0|Q_reg\(5) & ((!\Bloco_de_Operacao|Subtrator0|s[4]~9\) # (!\Bloco_de_Operacao|RegPA0|Q_reg\(5)))) # (!\Bloco_de_Operacao|RegPB0|Q_reg\(5) & (!\Bloco_de_Operacao|RegPA0|Q_reg\(5) & 
-- !\Bloco_de_Operacao|Subtrator0|s[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|RegPB0|Q_reg\(5),
	datab => \Bloco_de_Operacao|RegPA0|Q_reg\(5),
	datad => VCC,
	cin => \Bloco_de_Operacao|Subtrator0|s[4]~9\,
	combout => \Bloco_de_Operacao|Subtrator0|s[5]~10_combout\,
	cout => \Bloco_de_Operacao|Subtrator0|s[5]~11\);

-- Location: LCCOMB_X22_Y20_N22
\Bloco_de_Operacao|Subtrator0|s[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Subtrator0|s[6]~12_combout\ = ((\Bloco_de_Operacao|RegPB0|Q_reg\(6) $ (\Bloco_de_Operacao|RegPA0|Q_reg\(6) $ (\Bloco_de_Operacao|Subtrator0|s[5]~11\)))) # (GND)
-- \Bloco_de_Operacao|Subtrator0|s[6]~13\ = CARRY((\Bloco_de_Operacao|RegPB0|Q_reg\(6) & (\Bloco_de_Operacao|RegPA0|Q_reg\(6) & !\Bloco_de_Operacao|Subtrator0|s[5]~11\)) # (!\Bloco_de_Operacao|RegPB0|Q_reg\(6) & ((\Bloco_de_Operacao|RegPA0|Q_reg\(6)) # 
-- (!\Bloco_de_Operacao|Subtrator0|s[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|RegPB0|Q_reg\(6),
	datab => \Bloco_de_Operacao|RegPA0|Q_reg\(6),
	datad => VCC,
	cin => \Bloco_de_Operacao|Subtrator0|s[5]~11\,
	combout => \Bloco_de_Operacao|Subtrator0|s[6]~12_combout\,
	cout => \Bloco_de_Operacao|Subtrator0|s[6]~13\);

-- Location: LCCOMB_X22_Y20_N24
\Bloco_de_Operacao|Subtrator0|s[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Subtrator0|s[7]~14_combout\ = (\Bloco_de_Operacao|RegPB0|Q_reg\(7) & ((\Bloco_de_Operacao|RegPA0|Q_reg\(7) & (!\Bloco_de_Operacao|Subtrator0|s[6]~13\)) # (!\Bloco_de_Operacao|RegPA0|Q_reg\(7) & ((\Bloco_de_Operacao|Subtrator0|s[6]~13\) 
-- # (GND))))) # (!\Bloco_de_Operacao|RegPB0|Q_reg\(7) & ((\Bloco_de_Operacao|RegPA0|Q_reg\(7) & (\Bloco_de_Operacao|Subtrator0|s[6]~13\ & VCC)) # (!\Bloco_de_Operacao|RegPA0|Q_reg\(7) & (!\Bloco_de_Operacao|Subtrator0|s[6]~13\))))
-- \Bloco_de_Operacao|Subtrator0|s[7]~15\ = CARRY((\Bloco_de_Operacao|RegPB0|Q_reg\(7) & ((!\Bloco_de_Operacao|Subtrator0|s[6]~13\) # (!\Bloco_de_Operacao|RegPA0|Q_reg\(7)))) # (!\Bloco_de_Operacao|RegPB0|Q_reg\(7) & (!\Bloco_de_Operacao|RegPA0|Q_reg\(7) & 
-- !\Bloco_de_Operacao|Subtrator0|s[6]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|RegPB0|Q_reg\(7),
	datab => \Bloco_de_Operacao|RegPA0|Q_reg\(7),
	datad => VCC,
	cin => \Bloco_de_Operacao|Subtrator0|s[6]~13\,
	combout => \Bloco_de_Operacao|Subtrator0|s[7]~14_combout\,
	cout => \Bloco_de_Operacao|Subtrator0|s[7]~15\);

-- Location: LCCOMB_X19_Y21_N8
\Bloco_de_Operacao|Absolute1|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Absolute1|Add0~1_combout\ = (\Bloco_de_Operacao|Subtrator1|Add0~0_combout\ & (!\Bloco_de_Operacao|Absolute1|Add0~0_combout\ & VCC)) # (!\Bloco_de_Operacao|Subtrator1|Add0~0_combout\ & (\Bloco_de_Operacao|Absolute1|Add0~0_combout\ $ 
-- (GND)))
-- \Bloco_de_Operacao|Absolute1|Add0~2\ = CARRY((!\Bloco_de_Operacao|Subtrator1|Add0~0_combout\ & !\Bloco_de_Operacao|Absolute1|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Subtrator1|Add0~0_combout\,
	datab => \Bloco_de_Operacao|Absolute1|Add0~0_combout\,
	datad => VCC,
	combout => \Bloco_de_Operacao|Absolute1|Add0~1_combout\,
	cout => \Bloco_de_Operacao|Absolute1|Add0~2\);

-- Location: LCCOMB_X22_Y21_N0
\Bloco_de_Operacao|Adder2|s[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Adder2|s[0]~0_combout\ = (\Bloco_de_Operacao|Adder1|Add0~0_combout\ & (\Bloco_de_Operacao|Adder0|s[0]~0_combout\ $ (VCC))) # (!\Bloco_de_Operacao|Adder1|Add0~0_combout\ & (\Bloco_de_Operacao|Adder0|s[0]~0_combout\ & VCC))
-- \Bloco_de_Operacao|Adder2|s[0]~1\ = CARRY((\Bloco_de_Operacao|Adder1|Add0~0_combout\ & \Bloco_de_Operacao|Adder0|s[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Adder1|Add0~0_combout\,
	datab => \Bloco_de_Operacao|Adder0|s[0]~0_combout\,
	datad => VCC,
	combout => \Bloco_de_Operacao|Adder2|s[0]~0_combout\,
	cout => \Bloco_de_Operacao|Adder2|s[0]~1\);

-- Location: LCCOMB_X22_Y22_N2
\Bloco_de_Operacao|Absolute2|Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Absolute2|Add0~3_combout\ = (\Bloco_de_Operacao|Absolute2|Add0~2\ & (\Bloco_de_Operacao|Subtrator2|Add0~0_combout\ $ ((\Bloco_de_Operacao|Subtrator2|s[1]~2_combout\)))) # (!\Bloco_de_Operacao|Absolute2|Add0~2\ & 
-- ((\Bloco_de_Operacao|Subtrator2|Add0~0_combout\ $ (!\Bloco_de_Operacao|Subtrator2|s[1]~2_combout\)) # (GND)))
-- \Bloco_de_Operacao|Absolute2|Add0~4\ = CARRY((\Bloco_de_Operacao|Subtrator2|Add0~0_combout\ $ (\Bloco_de_Operacao|Subtrator2|s[1]~2_combout\)) # (!\Bloco_de_Operacao|Absolute2|Add0~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Subtrator2|Add0~0_combout\,
	datab => \Bloco_de_Operacao|Subtrator2|s[1]~2_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Absolute2|Add0~2\,
	combout => \Bloco_de_Operacao|Absolute2|Add0~3_combout\,
	cout => \Bloco_de_Operacao|Absolute2|Add0~4\);

-- Location: LCCOMB_X23_Y22_N2
\Bloco_de_Operacao|Adder1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Adder1|Add0~2_combout\ = (\Bloco_de_Operacao|Absolute2|Add0~3_combout\ & ((\Bloco_de_Operacao|Absolute3|Add0~3_combout\ & (\Bloco_de_Operacao|Adder1|Add0~1\ & VCC)) # (!\Bloco_de_Operacao|Absolute3|Add0~3_combout\ & 
-- (!\Bloco_de_Operacao|Adder1|Add0~1\)))) # (!\Bloco_de_Operacao|Absolute2|Add0~3_combout\ & ((\Bloco_de_Operacao|Absolute3|Add0~3_combout\ & (!\Bloco_de_Operacao|Adder1|Add0~1\)) # (!\Bloco_de_Operacao|Absolute3|Add0~3_combout\ & 
-- ((\Bloco_de_Operacao|Adder1|Add0~1\) # (GND)))))
-- \Bloco_de_Operacao|Adder1|Add0~3\ = CARRY((\Bloco_de_Operacao|Absolute2|Add0~3_combout\ & (!\Bloco_de_Operacao|Absolute3|Add0~3_combout\ & !\Bloco_de_Operacao|Adder1|Add0~1\)) # (!\Bloco_de_Operacao|Absolute2|Add0~3_combout\ & 
-- ((!\Bloco_de_Operacao|Adder1|Add0~1\) # (!\Bloco_de_Operacao|Absolute3|Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Absolute2|Add0~3_combout\,
	datab => \Bloco_de_Operacao|Absolute3|Add0~3_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Adder1|Add0~1\,
	combout => \Bloco_de_Operacao|Adder1|Add0~2_combout\,
	cout => \Bloco_de_Operacao|Adder1|Add0~3\);

-- Location: LCCOMB_X19_Y21_N10
\Bloco_de_Operacao|Absolute1|Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Absolute1|Add0~3_combout\ = (\Bloco_de_Operacao|Absolute1|Add0~2\ & (\Bloco_de_Operacao|Subtrator1|Add0~0_combout\ $ ((\Bloco_de_Operacao|Subtrator1|s[1]~2_combout\)))) # (!\Bloco_de_Operacao|Absolute1|Add0~2\ & 
-- ((\Bloco_de_Operacao|Subtrator1|Add0~0_combout\ $ (!\Bloco_de_Operacao|Subtrator1|s[1]~2_combout\)) # (GND)))
-- \Bloco_de_Operacao|Absolute1|Add0~4\ = CARRY((\Bloco_de_Operacao|Subtrator1|Add0~0_combout\ $ (\Bloco_de_Operacao|Subtrator1|s[1]~2_combout\)) # (!\Bloco_de_Operacao|Absolute1|Add0~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Subtrator1|Add0~0_combout\,
	datab => \Bloco_de_Operacao|Subtrator1|s[1]~2_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Absolute1|Add0~2\,
	combout => \Bloco_de_Operacao|Absolute1|Add0~3_combout\,
	cout => \Bloco_de_Operacao|Absolute1|Add0~4\);

-- Location: LCCOMB_X22_Y21_N2
\Bloco_de_Operacao|Adder2|s[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Adder2|s[1]~2_combout\ = (\Bloco_de_Operacao|Adder1|Add0~2_combout\ & ((\Bloco_de_Operacao|Adder0|s[1]~2_combout\ & (\Bloco_de_Operacao|Adder2|s[0]~1\ & VCC)) # (!\Bloco_de_Operacao|Adder0|s[1]~2_combout\ & 
-- (!\Bloco_de_Operacao|Adder2|s[0]~1\)))) # (!\Bloco_de_Operacao|Adder1|Add0~2_combout\ & ((\Bloco_de_Operacao|Adder0|s[1]~2_combout\ & (!\Bloco_de_Operacao|Adder2|s[0]~1\)) # (!\Bloco_de_Operacao|Adder0|s[1]~2_combout\ & 
-- ((\Bloco_de_Operacao|Adder2|s[0]~1\) # (GND)))))
-- \Bloco_de_Operacao|Adder2|s[1]~3\ = CARRY((\Bloco_de_Operacao|Adder1|Add0~2_combout\ & (!\Bloco_de_Operacao|Adder0|s[1]~2_combout\ & !\Bloco_de_Operacao|Adder2|s[0]~1\)) # (!\Bloco_de_Operacao|Adder1|Add0~2_combout\ & ((!\Bloco_de_Operacao|Adder2|s[0]~1\) 
-- # (!\Bloco_de_Operacao|Adder0|s[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Adder1|Add0~2_combout\,
	datab => \Bloco_de_Operacao|Adder0|s[1]~2_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Adder2|s[0]~1\,
	combout => \Bloco_de_Operacao|Adder2|s[1]~2_combout\,
	cout => \Bloco_de_Operacao|Adder2|s[1]~3\);

-- Location: LCCOMB_X22_Y22_N4
\Bloco_de_Operacao|Absolute2|Add0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Absolute2|Add0~5_combout\ = (\Bloco_de_Operacao|Absolute2|Add0~4\ & ((\Bloco_de_Operacao|Subtrator2|Add0~0_combout\ $ (!\Bloco_de_Operacao|Subtrator2|s[2]~4_combout\)))) # (!\Bloco_de_Operacao|Absolute2|Add0~4\ & 
-- (\Bloco_de_Operacao|Subtrator2|Add0~0_combout\ $ (\Bloco_de_Operacao|Subtrator2|s[2]~4_combout\ $ (GND))))
-- \Bloco_de_Operacao|Absolute2|Add0~6\ = CARRY((!\Bloco_de_Operacao|Absolute2|Add0~4\ & (\Bloco_de_Operacao|Subtrator2|Add0~0_combout\ $ (!\Bloco_de_Operacao|Subtrator2|s[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Subtrator2|Add0~0_combout\,
	datab => \Bloco_de_Operacao|Subtrator2|s[2]~4_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Absolute2|Add0~4\,
	combout => \Bloco_de_Operacao|Absolute2|Add0~5_combout\,
	cout => \Bloco_de_Operacao|Absolute2|Add0~6\);

-- Location: LCCOMB_X19_Y21_N12
\Bloco_de_Operacao|Absolute1|Add0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Absolute1|Add0~5_combout\ = (\Bloco_de_Operacao|Absolute1|Add0~4\ & ((\Bloco_de_Operacao|Subtrator1|Add0~0_combout\ $ (!\Bloco_de_Operacao|Subtrator1|s[2]~4_combout\)))) # (!\Bloco_de_Operacao|Absolute1|Add0~4\ & 
-- (\Bloco_de_Operacao|Subtrator1|Add0~0_combout\ $ (\Bloco_de_Operacao|Subtrator1|s[2]~4_combout\ $ (GND))))
-- \Bloco_de_Operacao|Absolute1|Add0~6\ = CARRY((!\Bloco_de_Operacao|Absolute1|Add0~4\ & (\Bloco_de_Operacao|Subtrator1|Add0~0_combout\ $ (!\Bloco_de_Operacao|Subtrator1|s[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Subtrator1|Add0~0_combout\,
	datab => \Bloco_de_Operacao|Subtrator1|s[2]~4_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Absolute1|Add0~4\,
	combout => \Bloco_de_Operacao|Absolute1|Add0~5_combout\,
	cout => \Bloco_de_Operacao|Absolute1|Add0~6\);

-- Location: LCCOMB_X21_Y21_N8
\Bloco_de_Operacao|Adder0|s[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Adder0|s[2]~4_combout\ = ((\Bloco_de_Operacao|Absolute1|Add0~5_combout\ $ (\Bloco_de_Operacao|Absolute0|Add0~5_combout\ $ (!\Bloco_de_Operacao|Adder0|s[1]~3\)))) # (GND)
-- \Bloco_de_Operacao|Adder0|s[2]~5\ = CARRY((\Bloco_de_Operacao|Absolute1|Add0~5_combout\ & ((\Bloco_de_Operacao|Absolute0|Add0~5_combout\) # (!\Bloco_de_Operacao|Adder0|s[1]~3\))) # (!\Bloco_de_Operacao|Absolute1|Add0~5_combout\ & 
-- (\Bloco_de_Operacao|Absolute0|Add0~5_combout\ & !\Bloco_de_Operacao|Adder0|s[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Absolute1|Add0~5_combout\,
	datab => \Bloco_de_Operacao|Absolute0|Add0~5_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Adder0|s[1]~3\,
	combout => \Bloco_de_Operacao|Adder0|s[2]~4_combout\,
	cout => \Bloco_de_Operacao|Adder0|s[2]~5\);

-- Location: LCCOMB_X22_Y22_N6
\Bloco_de_Operacao|Absolute2|Add0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Absolute2|Add0~7_combout\ = (\Bloco_de_Operacao|Absolute2|Add0~6\ & (\Bloco_de_Operacao|Subtrator2|Add0~0_combout\ $ ((\Bloco_de_Operacao|Subtrator2|s[3]~6_combout\)))) # (!\Bloco_de_Operacao|Absolute2|Add0~6\ & 
-- ((\Bloco_de_Operacao|Subtrator2|Add0~0_combout\ $ (!\Bloco_de_Operacao|Subtrator2|s[3]~6_combout\)) # (GND)))
-- \Bloco_de_Operacao|Absolute2|Add0~8\ = CARRY((\Bloco_de_Operacao|Subtrator2|Add0~0_combout\ $ (\Bloco_de_Operacao|Subtrator2|s[3]~6_combout\)) # (!\Bloco_de_Operacao|Absolute2|Add0~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Subtrator2|Add0~0_combout\,
	datab => \Bloco_de_Operacao|Subtrator2|s[3]~6_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Absolute2|Add0~6\,
	combout => \Bloco_de_Operacao|Absolute2|Add0~7_combout\,
	cout => \Bloco_de_Operacao|Absolute2|Add0~8\);

-- Location: LCCOMB_X24_Y22_N20
\Bloco_de_Operacao|Absolute3|Add0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Absolute3|Add0~7_combout\ = (\Bloco_de_Operacao|Absolute3|Add0~6\ & (\Bloco_de_Operacao|Subtrator3|s[3]~6_combout\ $ ((\Bloco_de_Operacao|Subtrator3|Add0~0_combout\)))) # (!\Bloco_de_Operacao|Absolute3|Add0~6\ & 
-- ((\Bloco_de_Operacao|Subtrator3|s[3]~6_combout\ $ (!\Bloco_de_Operacao|Subtrator3|Add0~0_combout\)) # (GND)))
-- \Bloco_de_Operacao|Absolute3|Add0~8\ = CARRY((\Bloco_de_Operacao|Subtrator3|s[3]~6_combout\ $ (\Bloco_de_Operacao|Subtrator3|Add0~0_combout\)) # (!\Bloco_de_Operacao|Absolute3|Add0~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Subtrator3|s[3]~6_combout\,
	datab => \Bloco_de_Operacao|Subtrator3|Add0~0_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Absolute3|Add0~6\,
	combout => \Bloco_de_Operacao|Absolute3|Add0~7_combout\,
	cout => \Bloco_de_Operacao|Absolute3|Add0~8\);

-- Location: LCCOMB_X21_Y20_N12
\Bloco_de_Operacao|Absolute0|Add0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Absolute0|Add0~7_combout\ = (\Bloco_de_Operacao|Absolute0|Add0~6\ & (\Bloco_de_Operacao|Subtrator0|s[3]~6_combout\ $ ((\Bloco_de_Operacao|Subtrator0|Add0~0_combout\)))) # (!\Bloco_de_Operacao|Absolute0|Add0~6\ & 
-- ((\Bloco_de_Operacao|Subtrator0|s[3]~6_combout\ $ (!\Bloco_de_Operacao|Subtrator0|Add0~0_combout\)) # (GND)))
-- \Bloco_de_Operacao|Absolute0|Add0~8\ = CARRY((\Bloco_de_Operacao|Subtrator0|s[3]~6_combout\ $ (\Bloco_de_Operacao|Subtrator0|Add0~0_combout\)) # (!\Bloco_de_Operacao|Absolute0|Add0~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Subtrator0|s[3]~6_combout\,
	datab => \Bloco_de_Operacao|Subtrator0|Add0~0_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Absolute0|Add0~6\,
	combout => \Bloco_de_Operacao|Absolute0|Add0~7_combout\,
	cout => \Bloco_de_Operacao|Absolute0|Add0~8\);

-- Location: LCCOMB_X21_Y21_N10
\Bloco_de_Operacao|Adder0|s[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Adder0|s[3]~6_combout\ = (\Bloco_de_Operacao|Absolute0|Add0~7_combout\ & ((\Bloco_de_Operacao|Absolute1|Add0~7_combout\ & (\Bloco_de_Operacao|Adder0|s[2]~5\ & VCC)) # (!\Bloco_de_Operacao|Absolute1|Add0~7_combout\ & 
-- (!\Bloco_de_Operacao|Adder0|s[2]~5\)))) # (!\Bloco_de_Operacao|Absolute0|Add0~7_combout\ & ((\Bloco_de_Operacao|Absolute1|Add0~7_combout\ & (!\Bloco_de_Operacao|Adder0|s[2]~5\)) # (!\Bloco_de_Operacao|Absolute1|Add0~7_combout\ & 
-- ((\Bloco_de_Operacao|Adder0|s[2]~5\) # (GND)))))
-- \Bloco_de_Operacao|Adder0|s[3]~7\ = CARRY((\Bloco_de_Operacao|Absolute0|Add0~7_combout\ & (!\Bloco_de_Operacao|Absolute1|Add0~7_combout\ & !\Bloco_de_Operacao|Adder0|s[2]~5\)) # (!\Bloco_de_Operacao|Absolute0|Add0~7_combout\ & 
-- ((!\Bloco_de_Operacao|Adder0|s[2]~5\) # (!\Bloco_de_Operacao|Absolute1|Add0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Absolute0|Add0~7_combout\,
	datab => \Bloco_de_Operacao|Absolute1|Add0~7_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Adder0|s[2]~5\,
	combout => \Bloco_de_Operacao|Adder0|s[3]~6_combout\,
	cout => \Bloco_de_Operacao|Adder0|s[3]~7\);

-- Location: LCCOMB_X22_Y22_N8
\Bloco_de_Operacao|Absolute2|Add0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Absolute2|Add0~9_combout\ = (\Bloco_de_Operacao|Absolute2|Add0~8\ & ((\Bloco_de_Operacao|Subtrator2|Add0~0_combout\ $ (!\Bloco_de_Operacao|Subtrator2|s[4]~8_combout\)))) # (!\Bloco_de_Operacao|Absolute2|Add0~8\ & 
-- (\Bloco_de_Operacao|Subtrator2|Add0~0_combout\ $ (\Bloco_de_Operacao|Subtrator2|s[4]~8_combout\ $ (GND))))
-- \Bloco_de_Operacao|Absolute2|Add0~10\ = CARRY((!\Bloco_de_Operacao|Absolute2|Add0~8\ & (\Bloco_de_Operacao|Subtrator2|Add0~0_combout\ $ (!\Bloco_de_Operacao|Subtrator2|s[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Subtrator2|Add0~0_combout\,
	datab => \Bloco_de_Operacao|Subtrator2|s[4]~8_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Absolute2|Add0~8\,
	combout => \Bloco_de_Operacao|Absolute2|Add0~9_combout\,
	cout => \Bloco_de_Operacao|Absolute2|Add0~10\);

-- Location: LCCOMB_X19_Y21_N16
\Bloco_de_Operacao|Absolute1|Add0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Absolute1|Add0~9_combout\ = (\Bloco_de_Operacao|Absolute1|Add0~8\ & ((\Bloco_de_Operacao|Subtrator1|Add0~0_combout\ $ (!\Bloco_de_Operacao|Subtrator1|s[4]~8_combout\)))) # (!\Bloco_de_Operacao|Absolute1|Add0~8\ & 
-- (\Bloco_de_Operacao|Subtrator1|Add0~0_combout\ $ (\Bloco_de_Operacao|Subtrator1|s[4]~8_combout\ $ (GND))))
-- \Bloco_de_Operacao|Absolute1|Add0~10\ = CARRY((!\Bloco_de_Operacao|Absolute1|Add0~8\ & (\Bloco_de_Operacao|Subtrator1|Add0~0_combout\ $ (!\Bloco_de_Operacao|Subtrator1|s[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Subtrator1|Add0~0_combout\,
	datab => \Bloco_de_Operacao|Subtrator1|s[4]~8_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Absolute1|Add0~8\,
	combout => \Bloco_de_Operacao|Absolute1|Add0~9_combout\,
	cout => \Bloco_de_Operacao|Absolute1|Add0~10\);

-- Location: LCCOMB_X21_Y21_N12
\Bloco_de_Operacao|Adder0|s[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Adder0|s[4]~8_combout\ = ((\Bloco_de_Operacao|Absolute1|Add0~9_combout\ $ (\Bloco_de_Operacao|Absolute0|Add0~9_combout\ $ (!\Bloco_de_Operacao|Adder0|s[3]~7\)))) # (GND)
-- \Bloco_de_Operacao|Adder0|s[4]~9\ = CARRY((\Bloco_de_Operacao|Absolute1|Add0~9_combout\ & ((\Bloco_de_Operacao|Absolute0|Add0~9_combout\) # (!\Bloco_de_Operacao|Adder0|s[3]~7\))) # (!\Bloco_de_Operacao|Absolute1|Add0~9_combout\ & 
-- (\Bloco_de_Operacao|Absolute0|Add0~9_combout\ & !\Bloco_de_Operacao|Adder0|s[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Absolute1|Add0~9_combout\,
	datab => \Bloco_de_Operacao|Absolute0|Add0~9_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Adder0|s[3]~7\,
	combout => \Bloco_de_Operacao|Adder0|s[4]~8_combout\,
	cout => \Bloco_de_Operacao|Adder0|s[4]~9\);

-- Location: LCCOMB_X22_Y21_N8
\Bloco_de_Operacao|Adder2|s[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Adder2|s[4]~8_combout\ = ((\Bloco_de_Operacao|Adder0|s[4]~8_combout\ $ (\Bloco_de_Operacao|Adder1|Add0~8_combout\ $ (!\Bloco_de_Operacao|Adder2|s[3]~7\)))) # (GND)
-- \Bloco_de_Operacao|Adder2|s[4]~9\ = CARRY((\Bloco_de_Operacao|Adder0|s[4]~8_combout\ & ((\Bloco_de_Operacao|Adder1|Add0~8_combout\) # (!\Bloco_de_Operacao|Adder2|s[3]~7\))) # (!\Bloco_de_Operacao|Adder0|s[4]~8_combout\ & 
-- (\Bloco_de_Operacao|Adder1|Add0~8_combout\ & !\Bloco_de_Operacao|Adder2|s[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Adder0|s[4]~8_combout\,
	datab => \Bloco_de_Operacao|Adder1|Add0~8_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Adder2|s[3]~7\,
	combout => \Bloco_de_Operacao|Adder2|s[4]~8_combout\,
	cout => \Bloco_de_Operacao|Adder2|s[4]~9\);

-- Location: LCCOMB_X22_Y22_N10
\Bloco_de_Operacao|Absolute2|Add0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Absolute2|Add0~11_combout\ = (\Bloco_de_Operacao|Absolute2|Add0~10\ & (\Bloco_de_Operacao|Subtrator2|Add0~0_combout\ $ ((\Bloco_de_Operacao|Subtrator2|s[5]~10_combout\)))) # (!\Bloco_de_Operacao|Absolute2|Add0~10\ & 
-- ((\Bloco_de_Operacao|Subtrator2|Add0~0_combout\ $ (!\Bloco_de_Operacao|Subtrator2|s[5]~10_combout\)) # (GND)))
-- \Bloco_de_Operacao|Absolute2|Add0~12\ = CARRY((\Bloco_de_Operacao|Subtrator2|Add0~0_combout\ $ (\Bloco_de_Operacao|Subtrator2|s[5]~10_combout\)) # (!\Bloco_de_Operacao|Absolute2|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Subtrator2|Add0~0_combout\,
	datab => \Bloco_de_Operacao|Subtrator2|s[5]~10_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Absolute2|Add0~10\,
	combout => \Bloco_de_Operacao|Absolute2|Add0~11_combout\,
	cout => \Bloco_de_Operacao|Absolute2|Add0~12\);

-- Location: LCCOMB_X19_Y21_N18
\Bloco_de_Operacao|Absolute1|Add0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Absolute1|Add0~11_combout\ = (\Bloco_de_Operacao|Absolute1|Add0~10\ & (\Bloco_de_Operacao|Subtrator1|Add0~0_combout\ $ ((\Bloco_de_Operacao|Subtrator1|s[5]~10_combout\)))) # (!\Bloco_de_Operacao|Absolute1|Add0~10\ & 
-- ((\Bloco_de_Operacao|Subtrator1|Add0~0_combout\ $ (!\Bloco_de_Operacao|Subtrator1|s[5]~10_combout\)) # (GND)))
-- \Bloco_de_Operacao|Absolute1|Add0~12\ = CARRY((\Bloco_de_Operacao|Subtrator1|Add0~0_combout\ $ (\Bloco_de_Operacao|Subtrator1|s[5]~10_combout\)) # (!\Bloco_de_Operacao|Absolute1|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Subtrator1|Add0~0_combout\,
	datab => \Bloco_de_Operacao|Subtrator1|s[5]~10_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Absolute1|Add0~10\,
	combout => \Bloco_de_Operacao|Absolute1|Add0~11_combout\,
	cout => \Bloco_de_Operacao|Absolute1|Add0~12\);

-- Location: LCCOMB_X21_Y21_N14
\Bloco_de_Operacao|Adder0|s[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Adder0|s[5]~10_combout\ = (\Bloco_de_Operacao|Absolute1|Add0~11_combout\ & ((\Bloco_de_Operacao|Absolute0|Add0~11_combout\ & (\Bloco_de_Operacao|Adder0|s[4]~9\ & VCC)) # (!\Bloco_de_Operacao|Absolute0|Add0~11_combout\ & 
-- (!\Bloco_de_Operacao|Adder0|s[4]~9\)))) # (!\Bloco_de_Operacao|Absolute1|Add0~11_combout\ & ((\Bloco_de_Operacao|Absolute0|Add0~11_combout\ & (!\Bloco_de_Operacao|Adder0|s[4]~9\)) # (!\Bloco_de_Operacao|Absolute0|Add0~11_combout\ & 
-- ((\Bloco_de_Operacao|Adder0|s[4]~9\) # (GND)))))
-- \Bloco_de_Operacao|Adder0|s[5]~11\ = CARRY((\Bloco_de_Operacao|Absolute1|Add0~11_combout\ & (!\Bloco_de_Operacao|Absolute0|Add0~11_combout\ & !\Bloco_de_Operacao|Adder0|s[4]~9\)) # (!\Bloco_de_Operacao|Absolute1|Add0~11_combout\ & 
-- ((!\Bloco_de_Operacao|Adder0|s[4]~9\) # (!\Bloco_de_Operacao|Absolute0|Add0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Absolute1|Add0~11_combout\,
	datab => \Bloco_de_Operacao|Absolute0|Add0~11_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Adder0|s[4]~9\,
	combout => \Bloco_de_Operacao|Adder0|s[5]~10_combout\,
	cout => \Bloco_de_Operacao|Adder0|s[5]~11\);

-- Location: LCCOMB_X22_Y21_N10
\Bloco_de_Operacao|Adder2|s[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Adder2|s[5]~10_combout\ = (\Bloco_de_Operacao|Adder0|s[5]~10_combout\ & ((\Bloco_de_Operacao|Adder1|Add0~10_combout\ & (\Bloco_de_Operacao|Adder2|s[4]~9\ & VCC)) # (!\Bloco_de_Operacao|Adder1|Add0~10_combout\ & 
-- (!\Bloco_de_Operacao|Adder2|s[4]~9\)))) # (!\Bloco_de_Operacao|Adder0|s[5]~10_combout\ & ((\Bloco_de_Operacao|Adder1|Add0~10_combout\ & (!\Bloco_de_Operacao|Adder2|s[4]~9\)) # (!\Bloco_de_Operacao|Adder1|Add0~10_combout\ & 
-- ((\Bloco_de_Operacao|Adder2|s[4]~9\) # (GND)))))
-- \Bloco_de_Operacao|Adder2|s[5]~11\ = CARRY((\Bloco_de_Operacao|Adder0|s[5]~10_combout\ & (!\Bloco_de_Operacao|Adder1|Add0~10_combout\ & !\Bloco_de_Operacao|Adder2|s[4]~9\)) # (!\Bloco_de_Operacao|Adder0|s[5]~10_combout\ & 
-- ((!\Bloco_de_Operacao|Adder2|s[4]~9\) # (!\Bloco_de_Operacao|Adder1|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Adder0|s[5]~10_combout\,
	datab => \Bloco_de_Operacao|Adder1|Add0~10_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Adder2|s[4]~9\,
	combout => \Bloco_de_Operacao|Adder2|s[5]~10_combout\,
	cout => \Bloco_de_Operacao|Adder2|s[5]~11\);

-- Location: LCCOMB_X22_Y22_N12
\Bloco_de_Operacao|Absolute2|Add0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Absolute2|Add0~13_combout\ = (\Bloco_de_Operacao|Absolute2|Add0~12\ & ((\Bloco_de_Operacao|Subtrator2|Add0~0_combout\ $ (!\Bloco_de_Operacao|Subtrator2|s[6]~12_combout\)))) # (!\Bloco_de_Operacao|Absolute2|Add0~12\ & 
-- (\Bloco_de_Operacao|Subtrator2|Add0~0_combout\ $ (\Bloco_de_Operacao|Subtrator2|s[6]~12_combout\ $ (GND))))
-- \Bloco_de_Operacao|Absolute2|Add0~14\ = CARRY((!\Bloco_de_Operacao|Absolute2|Add0~12\ & (\Bloco_de_Operacao|Subtrator2|Add0~0_combout\ $ (!\Bloco_de_Operacao|Subtrator2|s[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Subtrator2|Add0~0_combout\,
	datab => \Bloco_de_Operacao|Subtrator2|s[6]~12_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Absolute2|Add0~12\,
	combout => \Bloco_de_Operacao|Absolute2|Add0~13_combout\,
	cout => \Bloco_de_Operacao|Absolute2|Add0~14\);

-- Location: LCCOMB_X24_Y22_N26
\Bloco_de_Operacao|Absolute3|Add0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Absolute3|Add0~13_combout\ = (\Bloco_de_Operacao|Absolute3|Add0~12\ & ((\Bloco_de_Operacao|Subtrator3|Add0~0_combout\ $ (!\Bloco_de_Operacao|Subtrator3|s[6]~12_combout\)))) # (!\Bloco_de_Operacao|Absolute3|Add0~12\ & 
-- (\Bloco_de_Operacao|Subtrator3|Add0~0_combout\ $ (\Bloco_de_Operacao|Subtrator3|s[6]~12_combout\ $ (GND))))
-- \Bloco_de_Operacao|Absolute3|Add0~14\ = CARRY((!\Bloco_de_Operacao|Absolute3|Add0~12\ & (\Bloco_de_Operacao|Subtrator3|Add0~0_combout\ $ (!\Bloco_de_Operacao|Subtrator3|s[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Subtrator3|Add0~0_combout\,
	datab => \Bloco_de_Operacao|Subtrator3|s[6]~12_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Absolute3|Add0~12\,
	combout => \Bloco_de_Operacao|Absolute3|Add0~13_combout\,
	cout => \Bloco_de_Operacao|Absolute3|Add0~14\);

-- Location: LCCOMB_X23_Y22_N12
\Bloco_de_Operacao|Adder1|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Adder1|Add0~12_combout\ = ((\Bloco_de_Operacao|Absolute2|Add0~13_combout\ $ (\Bloco_de_Operacao|Absolute3|Add0~13_combout\ $ (!\Bloco_de_Operacao|Adder1|Add0~11\)))) # (GND)
-- \Bloco_de_Operacao|Adder1|Add0~13\ = CARRY((\Bloco_de_Operacao|Absolute2|Add0~13_combout\ & ((\Bloco_de_Operacao|Absolute3|Add0~13_combout\) # (!\Bloco_de_Operacao|Adder1|Add0~11\))) # (!\Bloco_de_Operacao|Absolute2|Add0~13_combout\ & 
-- (\Bloco_de_Operacao|Absolute3|Add0~13_combout\ & !\Bloco_de_Operacao|Adder1|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Absolute2|Add0~13_combout\,
	datab => \Bloco_de_Operacao|Absolute3|Add0~13_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Adder1|Add0~11\,
	combout => \Bloco_de_Operacao|Adder1|Add0~12_combout\,
	cout => \Bloco_de_Operacao|Adder1|Add0~13\);

-- Location: LCCOMB_X21_Y20_N18
\Bloco_de_Operacao|Absolute0|Add0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Absolute0|Add0~13_combout\ = (\Bloco_de_Operacao|Absolute0|Add0~12\ & ((\Bloco_de_Operacao|Subtrator0|s[6]~12_combout\ $ (!\Bloco_de_Operacao|Subtrator0|Add0~0_combout\)))) # (!\Bloco_de_Operacao|Absolute0|Add0~12\ & 
-- (\Bloco_de_Operacao|Subtrator0|s[6]~12_combout\ $ (\Bloco_de_Operacao|Subtrator0|Add0~0_combout\ $ (GND))))
-- \Bloco_de_Operacao|Absolute0|Add0~14\ = CARRY((!\Bloco_de_Operacao|Absolute0|Add0~12\ & (\Bloco_de_Operacao|Subtrator0|s[6]~12_combout\ $ (!\Bloco_de_Operacao|Subtrator0|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Subtrator0|s[6]~12_combout\,
	datab => \Bloco_de_Operacao|Subtrator0|Add0~0_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Absolute0|Add0~12\,
	combout => \Bloco_de_Operacao|Absolute0|Add0~13_combout\,
	cout => \Bloco_de_Operacao|Absolute0|Add0~14\);

-- Location: LCCOMB_X19_Y21_N20
\Bloco_de_Operacao|Absolute1|Add0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Absolute1|Add0~13_combout\ = (\Bloco_de_Operacao|Absolute1|Add0~12\ & ((\Bloco_de_Operacao|Subtrator1|Add0~0_combout\ $ (!\Bloco_de_Operacao|Subtrator1|s[6]~12_combout\)))) # (!\Bloco_de_Operacao|Absolute1|Add0~12\ & 
-- (\Bloco_de_Operacao|Subtrator1|Add0~0_combout\ $ (\Bloco_de_Operacao|Subtrator1|s[6]~12_combout\ $ (GND))))
-- \Bloco_de_Operacao|Absolute1|Add0~14\ = CARRY((!\Bloco_de_Operacao|Absolute1|Add0~12\ & (\Bloco_de_Operacao|Subtrator1|Add0~0_combout\ $ (!\Bloco_de_Operacao|Subtrator1|s[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Subtrator1|Add0~0_combout\,
	datab => \Bloco_de_Operacao|Subtrator1|s[6]~12_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Absolute1|Add0~12\,
	combout => \Bloco_de_Operacao|Absolute1|Add0~13_combout\,
	cout => \Bloco_de_Operacao|Absolute1|Add0~14\);

-- Location: LCCOMB_X21_Y21_N16
\Bloco_de_Operacao|Adder0|s[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Adder0|s[6]~12_combout\ = ((\Bloco_de_Operacao|Absolute1|Add0~13_combout\ $ (\Bloco_de_Operacao|Absolute0|Add0~13_combout\ $ (!\Bloco_de_Operacao|Adder0|s[5]~11\)))) # (GND)
-- \Bloco_de_Operacao|Adder0|s[6]~13\ = CARRY((\Bloco_de_Operacao|Absolute1|Add0~13_combout\ & ((\Bloco_de_Operacao|Absolute0|Add0~13_combout\) # (!\Bloco_de_Operacao|Adder0|s[5]~11\))) # (!\Bloco_de_Operacao|Absolute1|Add0~13_combout\ & 
-- (\Bloco_de_Operacao|Absolute0|Add0~13_combout\ & !\Bloco_de_Operacao|Adder0|s[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Absolute1|Add0~13_combout\,
	datab => \Bloco_de_Operacao|Absolute0|Add0~13_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Adder0|s[5]~11\,
	combout => \Bloco_de_Operacao|Adder0|s[6]~12_combout\,
	cout => \Bloco_de_Operacao|Adder0|s[6]~13\);

-- Location: LCCOMB_X22_Y21_N12
\Bloco_de_Operacao|Adder2|s[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Adder2|s[6]~12_combout\ = ((\Bloco_de_Operacao|Adder0|s[6]~12_combout\ $ (\Bloco_de_Operacao|Adder1|Add0~12_combout\ $ (!\Bloco_de_Operacao|Adder2|s[5]~11\)))) # (GND)
-- \Bloco_de_Operacao|Adder2|s[6]~13\ = CARRY((\Bloco_de_Operacao|Adder0|s[6]~12_combout\ & ((\Bloco_de_Operacao|Adder1|Add0~12_combout\) # (!\Bloco_de_Operacao|Adder2|s[5]~11\))) # (!\Bloco_de_Operacao|Adder0|s[6]~12_combout\ & 
-- (\Bloco_de_Operacao|Adder1|Add0~12_combout\ & !\Bloco_de_Operacao|Adder2|s[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Adder0|s[6]~12_combout\,
	datab => \Bloco_de_Operacao|Adder1|Add0~12_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Adder2|s[5]~11\,
	combout => \Bloco_de_Operacao|Adder2|s[6]~12_combout\,
	cout => \Bloco_de_Operacao|Adder2|s[6]~13\);

-- Location: LCCOMB_X22_Y22_N14
\Bloco_de_Operacao|Absolute2|Add0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Absolute2|Add0~15_combout\ = \Bloco_de_Operacao|Subtrator2|Add0~0_combout\ $ (\Bloco_de_Operacao|Absolute2|Add0~14\ $ (!\Bloco_de_Operacao|Subtrator2|s[7]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Subtrator2|Add0~0_combout\,
	datad => \Bloco_de_Operacao|Subtrator2|s[7]~14_combout\,
	cin => \Bloco_de_Operacao|Absolute2|Add0~14\,
	combout => \Bloco_de_Operacao|Absolute2|Add0~15_combout\);

-- Location: LCCOMB_X24_Y22_N28
\Bloco_de_Operacao|Absolute3|Add0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Absolute3|Add0~15_combout\ = \Bloco_de_Operacao|Subtrator3|Add0~0_combout\ $ (\Bloco_de_Operacao|Subtrator3|s[7]~14_combout\ $ (!\Bloco_de_Operacao|Absolute3|Add0~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Subtrator3|Add0~0_combout\,
	datab => \Bloco_de_Operacao|Subtrator3|s[7]~14_combout\,
	cin => \Bloco_de_Operacao|Absolute3|Add0~14\,
	combout => \Bloco_de_Operacao|Absolute3|Add0~15_combout\);

-- Location: LCCOMB_X23_Y22_N14
\Bloco_de_Operacao|Adder1|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Adder1|Add0~14_combout\ = (\Bloco_de_Operacao|Absolute2|Add0~15_combout\ & ((\Bloco_de_Operacao|Absolute3|Add0~15_combout\ & (\Bloco_de_Operacao|Adder1|Add0~13\ & VCC)) # (!\Bloco_de_Operacao|Absolute3|Add0~15_combout\ & 
-- (!\Bloco_de_Operacao|Adder1|Add0~13\)))) # (!\Bloco_de_Operacao|Absolute2|Add0~15_combout\ & ((\Bloco_de_Operacao|Absolute3|Add0~15_combout\ & (!\Bloco_de_Operacao|Adder1|Add0~13\)) # (!\Bloco_de_Operacao|Absolute3|Add0~15_combout\ & 
-- ((\Bloco_de_Operacao|Adder1|Add0~13\) # (GND)))))
-- \Bloco_de_Operacao|Adder1|Add0~15\ = CARRY((\Bloco_de_Operacao|Absolute2|Add0~15_combout\ & (!\Bloco_de_Operacao|Absolute3|Add0~15_combout\ & !\Bloco_de_Operacao|Adder1|Add0~13\)) # (!\Bloco_de_Operacao|Absolute2|Add0~15_combout\ & 
-- ((!\Bloco_de_Operacao|Adder1|Add0~13\) # (!\Bloco_de_Operacao|Absolute3|Add0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Absolute2|Add0~15_combout\,
	datab => \Bloco_de_Operacao|Absolute3|Add0~15_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Adder1|Add0~13\,
	combout => \Bloco_de_Operacao|Adder1|Add0~14_combout\,
	cout => \Bloco_de_Operacao|Adder1|Add0~15\);

-- Location: LCCOMB_X21_Y20_N20
\Bloco_de_Operacao|Absolute0|Add0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Absolute0|Add0~15_combout\ = \Bloco_de_Operacao|Subtrator0|s[7]~14_combout\ $ (\Bloco_de_Operacao|Absolute0|Add0~14\ $ (!\Bloco_de_Operacao|Subtrator0|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Subtrator0|s[7]~14_combout\,
	datad => \Bloco_de_Operacao|Subtrator0|Add0~0_combout\,
	cin => \Bloco_de_Operacao|Absolute0|Add0~14\,
	combout => \Bloco_de_Operacao|Absolute0|Add0~15_combout\);

-- Location: LCCOMB_X22_Y21_N14
\Bloco_de_Operacao|Adder2|s[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Adder2|s[7]~14_combout\ = (\Bloco_de_Operacao|Adder1|Add0~14_combout\ & ((\Bloco_de_Operacao|Adder0|s[7]~14_combout\ & (\Bloco_de_Operacao|Adder2|s[6]~13\ & VCC)) # (!\Bloco_de_Operacao|Adder0|s[7]~14_combout\ & 
-- (!\Bloco_de_Operacao|Adder2|s[6]~13\)))) # (!\Bloco_de_Operacao|Adder1|Add0~14_combout\ & ((\Bloco_de_Operacao|Adder0|s[7]~14_combout\ & (!\Bloco_de_Operacao|Adder2|s[6]~13\)) # (!\Bloco_de_Operacao|Adder0|s[7]~14_combout\ & 
-- ((\Bloco_de_Operacao|Adder2|s[6]~13\) # (GND)))))
-- \Bloco_de_Operacao|Adder2|s[7]~15\ = CARRY((\Bloco_de_Operacao|Adder1|Add0~14_combout\ & (!\Bloco_de_Operacao|Adder0|s[7]~14_combout\ & !\Bloco_de_Operacao|Adder2|s[6]~13\)) # (!\Bloco_de_Operacao|Adder1|Add0~14_combout\ & 
-- ((!\Bloco_de_Operacao|Adder2|s[6]~13\) # (!\Bloco_de_Operacao|Adder0|s[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Adder1|Add0~14_combout\,
	datab => \Bloco_de_Operacao|Adder0|s[7]~14_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Adder2|s[6]~13\,
	combout => \Bloco_de_Operacao|Adder2|s[7]~14_combout\,
	cout => \Bloco_de_Operacao|Adder2|s[7]~15\);

-- Location: LCCOMB_X23_Y22_N16
\Bloco_de_Operacao|Adder1|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Adder1|Add0~16_combout\ = !\Bloco_de_Operacao|Adder1|Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Bloco_de_Operacao|Adder1|Add0~15\,
	combout => \Bloco_de_Operacao|Adder1|Add0~16_combout\);

-- Location: LCCOMB_X22_Y21_N16
\Bloco_de_Operacao|Adder2|s[8]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Adder2|s[8]~16_combout\ = ((\Bloco_de_Operacao|Adder1|Add0~16_combout\ $ (\Bloco_de_Operacao|Adder0|cout~0_combout\ $ (!\Bloco_de_Operacao|Adder2|s[7]~15\)))) # (GND)
-- \Bloco_de_Operacao|Adder2|s[8]~17\ = CARRY((\Bloco_de_Operacao|Adder1|Add0~16_combout\ & ((\Bloco_de_Operacao|Adder0|cout~0_combout\) # (!\Bloco_de_Operacao|Adder2|s[7]~15\))) # (!\Bloco_de_Operacao|Adder1|Add0~16_combout\ & 
-- (\Bloco_de_Operacao|Adder0|cout~0_combout\ & !\Bloco_de_Operacao|Adder2|s[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Adder1|Add0~16_combout\,
	datab => \Bloco_de_Operacao|Adder0|cout~0_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Adder2|s[7]~15\,
	combout => \Bloco_de_Operacao|Adder2|s[8]~16_combout\,
	cout => \Bloco_de_Operacao|Adder2|s[8]~17\);

-- Location: FF_X21_Y22_N23
\Bloco_de_Operacao|RegPA2|Q_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|RegPA2|Q_reg[0]~feeder_combout\,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPA2|Q_reg\(0));

-- Location: FF_X21_Y22_N21
\Bloco_de_Operacao|RegPB2|Q_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|RegPB2|Q_reg[7]~feeder_combout\,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPB2|Q_reg\(7));

-- Location: FF_X21_Y22_N13
\Bloco_de_Operacao|RegPB2|Q_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_can[22]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPB2|Q_reg\(6));

-- Location: FF_X21_Y22_N11
\Bloco_de_Operacao|RegPA2|Q_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_ori[21]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPA2|Q_reg\(5));

-- Location: FF_X21_Y22_N17
\Bloco_de_Operacao|RegPA2|Q_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_ori[20]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPA2|Q_reg\(4));

-- Location: FF_X21_Y22_N7
\Bloco_de_Operacao|RegPA2|Q_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_ori[19]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPA2|Q_reg\(3));

-- Location: FF_X21_Y22_N29
\Bloco_de_Operacao|RegPA2|Q_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|RegPA2|Q_reg[2]~feeder_combout\,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPA2|Q_reg\(2));

-- Location: FF_X21_Y22_N27
\Bloco_de_Operacao|RegPB2|Q_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|RegPB2|Q_reg[1]~feeder_combout\,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPB2|Q_reg\(1));

-- Location: FF_X25_Y22_N23
\Bloco_de_Operacao|RegPA3|Q_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|RegPA3|Q_reg[0]~feeder_combout\,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPA3|Q_reg\(0));

-- Location: FF_X25_Y22_N25
\Bloco_de_Operacao|RegPB3|Q_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|RegPB3|Q_reg[7]~feeder_combout\,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPB3|Q_reg\(7));

-- Location: FF_X25_Y22_N31
\Bloco_de_Operacao|RegPA3|Q_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|RegPA3|Q_reg[6]~feeder_combout\,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPA3|Q_reg\(6));

-- Location: FF_X25_Y22_N11
\Bloco_de_Operacao|RegPA3|Q_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_ori[29]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPA3|Q_reg\(5));

-- Location: FF_X25_Y22_N17
\Bloco_de_Operacao|RegPA3|Q_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_ori[28]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPA3|Q_reg\(4));

-- Location: FF_X25_Y22_N7
\Bloco_de_Operacao|RegPA3|Q_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_ori[27]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPA3|Q_reg\(3));

-- Location: FF_X25_Y22_N29
\Bloco_de_Operacao|RegPA3|Q_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|RegPA3|Q_reg[2]~feeder_combout\,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPA3|Q_reg\(2));

-- Location: FF_X25_Y22_N27
\Bloco_de_Operacao|RegPB3|Q_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_can[25]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPB3|Q_reg\(1));

-- Location: LCCOMB_X25_Y22_N20
\Bloco_de_Operacao|Absolute3|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Absolute3|Add0~0_combout\ = \Bloco_de_Operacao|Subtrator3|s[0]~0_combout\ $ (\Bloco_de_Operacao|Subtrator3|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Subtrator3|s[0]~0_combout\,
	datad => \Bloco_de_Operacao|Subtrator3|Add0~0_combout\,
	combout => \Bloco_de_Operacao|Absolute3|Add0~0_combout\);

-- Location: FF_X22_Y20_N11
\Bloco_de_Operacao|RegPB0|Q_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_can[0]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPB0|Q_reg\(0));

-- Location: FF_X22_Y20_N31
\Bloco_de_Operacao|RegPB0|Q_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_can[7]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPB0|Q_reg\(7));

-- Location: FF_X22_Y20_N23
\Bloco_de_Operacao|RegPB0|Q_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_can[6]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPB0|Q_reg\(6));

-- Location: FF_X22_Y20_N7
\Bloco_de_Operacao|RegPB0|Q_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_can[5]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPB0|Q_reg\(5));

-- Location: FF_X22_Y20_N27
\Bloco_de_Operacao|RegPA0|Q_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_ori[4]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPA0|Q_reg\(4));

-- Location: FF_X22_Y20_N9
\Bloco_de_Operacao|RegPB0|Q_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|RegPB0|Q_reg[3]~feeder_combout\,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPB0|Q_reg\(3));

-- Location: FF_X22_Y20_N29
\Bloco_de_Operacao|RegPA0|Q_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|RegPA0|Q_reg[2]~feeder_combout\,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPA0|Q_reg\(2));

-- Location: FF_X22_Y20_N13
\Bloco_de_Operacao|RegPA0|Q_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_ori[1]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPA0|Q_reg\(1));

-- Location: LCCOMB_X22_Y20_N6
\Bloco_de_Operacao|Absolute0|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Absolute0|Add0~0_combout\ = \Bloco_de_Operacao|Subtrator0|s[0]~0_combout\ $ (\Bloco_de_Operacao|Subtrator0|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Bloco_de_Operacao|Subtrator0|s[0]~0_combout\,
	datad => \Bloco_de_Operacao|Subtrator0|Add0~0_combout\,
	combout => \Bloco_de_Operacao|Absolute0|Add0~0_combout\);

-- Location: FF_X18_Y21_N11
\Bloco_de_Operacao|RegPB1|Q_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_can[8]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPB1|Q_reg\(0));

-- Location: FF_X18_Y21_N31
\Bloco_de_Operacao|RegPB1|Q_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|RegPB1|Q_reg[7]~feeder_combout\,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPB1|Q_reg\(7));

-- Location: FF_X18_Y21_N23
\Bloco_de_Operacao|RegPB1|Q_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_can[14]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPB1|Q_reg\(6));

-- Location: FF_X18_Y21_N7
\Bloco_de_Operacao|RegPB1|Q_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_can[13]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPB1|Q_reg\(5));

-- Location: FF_X18_Y21_N27
\Bloco_de_Operacao|RegPA1|Q_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_ori[12]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPA1|Q_reg\(4));

-- Location: FF_X18_Y21_N9
\Bloco_de_Operacao|RegPB1|Q_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|RegPB1|Q_reg[3]~feeder_combout\,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPB1|Q_reg\(3));

-- Location: FF_X18_Y21_N5
\Bloco_de_Operacao|RegPA1|Q_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_ori[10]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPA1|Q_reg\(2));

-- Location: FF_X18_Y21_N13
\Bloco_de_Operacao|RegPA1|Q_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_ori[9]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPA1|Q_reg\(1));

-- Location: IOIBUF_X1_Y24_N1
\sample_ori[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(16),
	o => \sample_ori[16]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\sample_can[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(23),
	o => \sample_can[23]~input_o\);

-- Location: IOIBUF_X23_Y24_N8
\sample_can[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(22),
	o => \sample_can[22]~input_o\);

-- Location: IOIBUF_X1_Y24_N8
\sample_ori[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(21),
	o => \sample_ori[21]~input_o\);

-- Location: IOIBUF_X18_Y24_N15
\sample_ori[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(20),
	o => \sample_ori[20]~input_o\);

-- Location: IOIBUF_X34_Y3_N22
\sample_ori[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(19),
	o => \sample_ori[19]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\sample_ori[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(18),
	o => \sample_ori[18]~input_o\);

-- Location: IOIBUF_X34_Y2_N22
\sample_can[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(17),
	o => \sample_can[17]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\sample_ori[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(24),
	o => \sample_ori[24]~input_o\);

-- Location: IOIBUF_X34_Y2_N15
\sample_can[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(31),
	o => \sample_can[31]~input_o\);

-- Location: IOIBUF_X28_Y24_N8
\sample_ori[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(30),
	o => \sample_ori[30]~input_o\);

-- Location: IOIBUF_X34_Y7_N8
\sample_ori[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(29),
	o => \sample_ori[29]~input_o\);

-- Location: IOIBUF_X34_Y12_N15
\sample_ori[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(28),
	o => \sample_ori[28]~input_o\);

-- Location: IOIBUF_X34_Y9_N1
\sample_ori[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(27),
	o => \sample_ori[27]~input_o\);

-- Location: IOIBUF_X34_Y4_N15
\sample_ori[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(26),
	o => \sample_ori[26]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\sample_can[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(25),
	o => \sample_can[25]~input_o\);

-- Location: IOIBUF_X3_Y24_N22
\sample_can[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(0),
	o => \sample_can[0]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\sample_can[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(7),
	o => \sample_can[7]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\sample_can[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(6),
	o => \sample_can[6]~input_o\);

-- Location: IOIBUF_X30_Y24_N22
\sample_can[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(5),
	o => \sample_can[5]~input_o\);

-- Location: IOIBUF_X16_Y24_N1
\sample_ori[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(4),
	o => \sample_ori[4]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\sample_can[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(3),
	o => \sample_can[3]~input_o\);

-- Location: IOIBUF_X16_Y24_N22
\sample_ori[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(2),
	o => \sample_ori[2]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\sample_ori[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(1),
	o => \sample_ori[1]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\sample_can[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(8),
	o => \sample_can[8]~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\sample_can[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(15),
	o => \sample_can[15]~input_o\);

-- Location: IOIBUF_X7_Y24_N8
\sample_can[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(14),
	o => \sample_can[14]~input_o\);

-- Location: IOIBUF_X18_Y24_N22
\sample_can[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(13),
	o => \sample_can[13]~input_o\);

-- Location: IOIBUF_X13_Y24_N15
\sample_ori[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(12),
	o => \sample_ori[12]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\sample_can[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(11),
	o => \sample_can[11]~input_o\);

-- Location: IOIBUF_X7_Y24_N1
\sample_ori[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(10),
	o => \sample_ori[10]~input_o\);

-- Location: IOIBUF_X34_Y12_N8
\sample_ori[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(9),
	o => \sample_ori[9]~input_o\);

-- Location: LCCOMB_X21_Y22_N22
\Bloco_de_Operacao|RegPA2|Q_reg[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|RegPA2|Q_reg[0]~feeder_combout\ = \sample_ori[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sample_ori[16]~input_o\,
	combout => \Bloco_de_Operacao|RegPA2|Q_reg[0]~feeder_combout\);

-- Location: LCCOMB_X21_Y22_N20
\Bloco_de_Operacao|RegPB2|Q_reg[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|RegPB2|Q_reg[7]~feeder_combout\ = \sample_can[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sample_can[23]~input_o\,
	combout => \Bloco_de_Operacao|RegPB2|Q_reg[7]~feeder_combout\);

-- Location: LCCOMB_X21_Y22_N28
\Bloco_de_Operacao|RegPA2|Q_reg[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|RegPA2|Q_reg[2]~feeder_combout\ = \sample_ori[18]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sample_ori[18]~input_o\,
	combout => \Bloco_de_Operacao|RegPA2|Q_reg[2]~feeder_combout\);

-- Location: LCCOMB_X21_Y22_N26
\Bloco_de_Operacao|RegPB2|Q_reg[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|RegPB2|Q_reg[1]~feeder_combout\ = \sample_can[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sample_can[17]~input_o\,
	combout => \Bloco_de_Operacao|RegPB2|Q_reg[1]~feeder_combout\);

-- Location: LCCOMB_X25_Y22_N22
\Bloco_de_Operacao|RegPA3|Q_reg[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|RegPA3|Q_reg[0]~feeder_combout\ = \sample_ori[24]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sample_ori[24]~input_o\,
	combout => \Bloco_de_Operacao|RegPA3|Q_reg[0]~feeder_combout\);

-- Location: LCCOMB_X25_Y22_N24
\Bloco_de_Operacao|RegPB3|Q_reg[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|RegPB3|Q_reg[7]~feeder_combout\ = \sample_can[31]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sample_can[31]~input_o\,
	combout => \Bloco_de_Operacao|RegPB3|Q_reg[7]~feeder_combout\);

-- Location: LCCOMB_X25_Y22_N30
\Bloco_de_Operacao|RegPA3|Q_reg[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|RegPA3|Q_reg[6]~feeder_combout\ = \sample_ori[30]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sample_ori[30]~input_o\,
	combout => \Bloco_de_Operacao|RegPA3|Q_reg[6]~feeder_combout\);

-- Location: LCCOMB_X25_Y22_N28
\Bloco_de_Operacao|RegPA3|Q_reg[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|RegPA3|Q_reg[2]~feeder_combout\ = \sample_ori[26]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sample_ori[26]~input_o\,
	combout => \Bloco_de_Operacao|RegPA3|Q_reg[2]~feeder_combout\);

-- Location: LCCOMB_X22_Y20_N8
\Bloco_de_Operacao|RegPB0|Q_reg[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|RegPB0|Q_reg[3]~feeder_combout\ = \sample_can[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sample_can[3]~input_o\,
	combout => \Bloco_de_Operacao|RegPB0|Q_reg[3]~feeder_combout\);

-- Location: LCCOMB_X22_Y20_N28
\Bloco_de_Operacao|RegPA0|Q_reg[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|RegPA0|Q_reg[2]~feeder_combout\ = \sample_ori[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sample_ori[2]~input_o\,
	combout => \Bloco_de_Operacao|RegPA0|Q_reg[2]~feeder_combout\);

-- Location: LCCOMB_X18_Y21_N30
\Bloco_de_Operacao|RegPB1|Q_reg[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|RegPB1|Q_reg[7]~feeder_combout\ = \sample_can[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sample_can[15]~input_o\,
	combout => \Bloco_de_Operacao|RegPB1|Q_reg[7]~feeder_combout\);

-- Location: LCCOMB_X18_Y21_N8
\Bloco_de_Operacao|RegPB1|Q_reg[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|RegPB1|Q_reg[3]~feeder_combout\ = \sample_can[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sample_can[11]~input_o\,
	combout => \Bloco_de_Operacao|RegPB1|Q_reg[3]~feeder_combout\);

-- Location: IOOBUF_X34_Y19_N16
\read_mem~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bloco_de_Controle|estadoAtual.S3~q\,
	devoe => ww_devoe,
	o => \read_mem~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\address[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bloco_de_Operacao|Regi|Q_reg\(0),
	devoe => ww_devoe,
	o => \address[0]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\address[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bloco_de_Operacao|Regi|Q_reg\(1),
	devoe => ww_devoe,
	o => \address[1]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\address[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bloco_de_Operacao|Regi|Q_reg\(2),
	devoe => ww_devoe,
	o => \address[2]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\address[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bloco_de_Operacao|Regi|Q_reg\(3),
	devoe => ww_devoe,
	o => \address[3]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\sad_value[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bloco_de_Operacao|SAD_reg|Q_reg\(0),
	devoe => ww_devoe,
	o => \sad_value[0]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\sad_value[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bloco_de_Operacao|SAD_reg|Q_reg\(1),
	devoe => ww_devoe,
	o => \sad_value[1]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\sad_value[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bloco_de_Operacao|SAD_reg|Q_reg\(2),
	devoe => ww_devoe,
	o => \sad_value[2]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\sad_value[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bloco_de_Operacao|SAD_reg|Q_reg\(3),
	devoe => ww_devoe,
	o => \sad_value[3]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\sad_value[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bloco_de_Operacao|SAD_reg|Q_reg\(4),
	devoe => ww_devoe,
	o => \sad_value[4]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\sad_value[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bloco_de_Operacao|SAD_reg|Q_reg\(5),
	devoe => ww_devoe,
	o => \sad_value[5]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\sad_value[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bloco_de_Operacao|SAD_reg|Q_reg\(6),
	devoe => ww_devoe,
	o => \sad_value[6]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\sad_value[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bloco_de_Operacao|SAD_reg|Q_reg\(7),
	devoe => ww_devoe,
	o => \sad_value[7]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\sad_value[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bloco_de_Operacao|SAD_reg|Q_reg\(8),
	devoe => ww_devoe,
	o => \sad_value[8]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\sad_value[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bloco_de_Operacao|SAD_reg|Q_reg\(9),
	devoe => ww_devoe,
	o => \sad_value[9]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\sad_value[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bloco_de_Operacao|SAD_reg|Q_reg\(10),
	devoe => ww_devoe,
	o => \sad_value[10]~output_o\);

-- Location: IOOBUF_X34_Y7_N23
\sad_value[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bloco_de_Operacao|SAD_reg|Q_reg\(11),
	devoe => ww_devoe,
	o => \sad_value[11]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\sad_value[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bloco_de_Operacao|SAD_reg|Q_reg\(12),
	devoe => ww_devoe,
	o => \sad_value[12]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\sad_value[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bloco_de_Operacao|SAD_reg|Q_reg\(13),
	devoe => ww_devoe,
	o => \sad_value[13]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\done~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bloco_de_Controle|ALT_INV_estadoAtual.S0~q\,
	devoe => ww_devoe,
	o => \done~output_o\);

-- Location: IOIBUF_X0_Y11_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
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

-- Location: IOIBUF_X34_Y4_N22
\enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: LCCOMB_X24_Y20_N16
\Bloco_de_Controle|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Controle|Selector4~0_combout\ = (!\Bloco_de_Controle|estadoAtual.S0~q\ & \enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Controle|estadoAtual.S0~q\,
	datad => \enable~input_o\,
	combout => \Bloco_de_Controle|Selector4~0_combout\);

-- Location: IOIBUF_X0_Y11_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G2
\reset~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X24_Y20_N17
\Bloco_de_Controle|estadoAtual.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Controle|Selector4~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Controle|estadoAtual.S1~q\);

-- Location: LCCOMB_X24_Y20_N8
\Bloco_de_Operacao|Muxi|y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Muxi|y[0]~0_combout\ = (!\Bloco_de_Operacao|Regi|Q_reg\(0) & !\Bloco_de_Controle|estadoAtual.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Bloco_de_Operacao|Regi|Q_reg\(0),
	datad => \Bloco_de_Controle|estadoAtual.S1~q\,
	combout => \Bloco_de_Operacao|Muxi|y[0]~0_combout\);

-- Location: LCCOMB_X24_Y20_N14
\Bloco_de_Controle|estadoAtual.S4~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Controle|estadoAtual.S4~feeder_combout\ = \Bloco_de_Controle|estadoAtual.S3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Bloco_de_Controle|estadoAtual.S3~q\,
	combout => \Bloco_de_Controle|estadoAtual.S4~feeder_combout\);

-- Location: FF_X24_Y20_N15
\Bloco_de_Controle|estadoAtual.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Controle|estadoAtual.S4~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Controle|estadoAtual.S4~q\);

-- Location: LCCOMB_X24_Y20_N0
\Bloco_de_Controle|csoma\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Controle|csoma~combout\ = (\Bloco_de_Controle|estadoAtual.S4~q\) # (\Bloco_de_Controle|estadoAtual.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Bloco_de_Controle|estadoAtual.S4~q\,
	datad => \Bloco_de_Controle|estadoAtual.S1~q\,
	combout => \Bloco_de_Controle|csoma~combout\);

-- Location: FF_X24_Y20_N9
\Bloco_de_Operacao|Regi|Q_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|Muxi|y[0]~0_combout\,
	ena => \Bloco_de_Controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|Regi|Q_reg\(0));

-- Location: LCCOMB_X24_Y20_N24
\Bloco_de_Operacao|Somadori|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Somadori|Add0~0_combout\ = \Bloco_de_Operacao|Regi|Q_reg\(1) $ (\Bloco_de_Operacao|Regi|Q_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Bloco_de_Operacao|Regi|Q_reg\(1),
	datad => \Bloco_de_Operacao|Regi|Q_reg\(0),
	combout => \Bloco_de_Operacao|Somadori|Add0~0_combout\);

-- Location: FF_X24_Y20_N25
\Bloco_de_Operacao|Regi|Q_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|Somadori|Add0~0_combout\,
	sclr => \Bloco_de_Controle|estadoAtual.S1~q\,
	ena => \Bloco_de_Controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|Regi|Q_reg\(1));

-- Location: LCCOMB_X24_Y20_N18
\Bloco_de_Operacao|Somadori|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Somadori|Add0~1_combout\ = \Bloco_de_Operacao|Regi|Q_reg\(2) $ (((\Bloco_de_Operacao|Regi|Q_reg\(1) & \Bloco_de_Operacao|Regi|Q_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Regi|Q_reg\(1),
	datac => \Bloco_de_Operacao|Regi|Q_reg\(2),
	datad => \Bloco_de_Operacao|Regi|Q_reg\(0),
	combout => \Bloco_de_Operacao|Somadori|Add0~1_combout\);

-- Location: FF_X24_Y20_N19
\Bloco_de_Operacao|Regi|Q_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|Somadori|Add0~1_combout\,
	sclr => \Bloco_de_Controle|estadoAtual.S1~q\,
	ena => \Bloco_de_Controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|Regi|Q_reg\(2));

-- Location: LCCOMB_X24_Y20_N28
\Bloco_de_Operacao|Muxi|y[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Muxi|y[4]~1_combout\ = (\Bloco_de_Operacao|Regi|Q_reg\(0) & (!\Bloco_de_Controle|estadoAtual.S1~q\ & (\Bloco_de_Operacao|Regi|Q_reg\(1) & \Bloco_de_Operacao|Regi|Q_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Regi|Q_reg\(0),
	datab => \Bloco_de_Controle|estadoAtual.S1~q\,
	datac => \Bloco_de_Operacao|Regi|Q_reg\(1),
	datad => \Bloco_de_Operacao|Regi|Q_reg\(2),
	combout => \Bloco_de_Operacao|Muxi|y[4]~1_combout\);

-- Location: LCCOMB_X24_Y20_N4
\Bloco_de_Operacao|Somadori|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Somadori|Add0~2_combout\ = \Bloco_de_Operacao|Regi|Q_reg\(3) $ (((\Bloco_de_Operacao|Regi|Q_reg\(1) & (\Bloco_de_Operacao|Regi|Q_reg\(2) & \Bloco_de_Operacao|Regi|Q_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Regi|Q_reg\(1),
	datab => \Bloco_de_Operacao|Regi|Q_reg\(2),
	datac => \Bloco_de_Operacao|Regi|Q_reg\(3),
	datad => \Bloco_de_Operacao|Regi|Q_reg\(0),
	combout => \Bloco_de_Operacao|Somadori|Add0~2_combout\);

-- Location: FF_X24_Y20_N5
\Bloco_de_Operacao|Regi|Q_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|Somadori|Add0~2_combout\,
	sclr => \Bloco_de_Controle|estadoAtual.S1~q\,
	ena => \Bloco_de_Controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|Regi|Q_reg\(3));

-- Location: LCCOMB_X24_Y20_N20
\Bloco_de_Operacao|Muxi|y[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Muxi|y[4]~2_combout\ = (\Bloco_de_Operacao|Muxi|y[4]~1_combout\ & \Bloco_de_Operacao|Regi|Q_reg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Bloco_de_Operacao|Muxi|y[4]~1_combout\,
	datac => \Bloco_de_Operacao|Regi|Q_reg\(3),
	combout => \Bloco_de_Operacao|Muxi|y[4]~2_combout\);

-- Location: FF_X24_Y20_N21
\Bloco_de_Operacao|Regi|Q_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|Muxi|y[4]~2_combout\,
	ena => \Bloco_de_Controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|Regi|Q_reg\(4));

-- Location: LCCOMB_X24_Y20_N22
\Bloco_de_Controle|estadoAtual.S2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Controle|estadoAtual.S2~feeder_combout\ = \Bloco_de_Controle|csoma~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Bloco_de_Controle|csoma~combout\,
	combout => \Bloco_de_Controle|estadoAtual.S2~feeder_combout\);

-- Location: FF_X24_Y20_N23
\Bloco_de_Controle|estadoAtual.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Controle|estadoAtual.S2~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Controle|estadoAtual.S2~q\);

-- Location: LCCOMB_X24_Y20_N30
\Bloco_de_Controle|proximoEstado.S3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Controle|proximoEstado.S3~0_combout\ = (!\Bloco_de_Operacao|Regi|Q_reg\(4) & \Bloco_de_Controle|estadoAtual.S2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Bloco_de_Operacao|Regi|Q_reg\(4),
	datac => \Bloco_de_Controle|estadoAtual.S2~q\,
	combout => \Bloco_de_Controle|proximoEstado.S3~0_combout\);

-- Location: FF_X24_Y20_N31
\Bloco_de_Controle|estadoAtual.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Controle|proximoEstado.S3~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Controle|estadoAtual.S3~q\);

-- Location: LCCOMB_X23_Y21_N2
\Bloco_de_Operacao|regsoma|Q_reg[0]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|regsoma|Q_reg[0]~14_combout\ = (\Bloco_de_Operacao|Adder2|s[0]~0_combout\ & (\Bloco_de_Operacao|regsoma|Q_reg\(0) $ (VCC))) # (!\Bloco_de_Operacao|Adder2|s[0]~0_combout\ & (\Bloco_de_Operacao|regsoma|Q_reg\(0) & VCC))
-- \Bloco_de_Operacao|regsoma|Q_reg[0]~15\ = CARRY((\Bloco_de_Operacao|Adder2|s[0]~0_combout\ & \Bloco_de_Operacao|regsoma|Q_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Adder2|s[0]~0_combout\,
	datab => \Bloco_de_Operacao|regsoma|Q_reg\(0),
	datad => VCC,
	combout => \Bloco_de_Operacao|regsoma|Q_reg[0]~14_combout\,
	cout => \Bloco_de_Operacao|regsoma|Q_reg[0]~15\);

-- Location: FF_X23_Y21_N3
\Bloco_de_Operacao|regsoma|Q_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|regsoma|Q_reg[0]~14_combout\,
	sclr => \Bloco_de_Controle|estadoAtual.S1~q\,
	ena => \Bloco_de_Controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|regsoma|Q_reg\(0));

-- Location: LCCOMB_X24_Y21_N24
\Bloco_de_Operacao|SAD_reg|Q_reg[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|SAD_reg|Q_reg[0]~feeder_combout\ = \Bloco_de_Operacao|regsoma|Q_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Bloco_de_Operacao|regsoma|Q_reg\(0),
	combout => \Bloco_de_Operacao|SAD_reg|Q_reg[0]~feeder_combout\);

-- Location: LCCOMB_X24_Y20_N26
\Bloco_de_Controle|proximoEstado.S5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Controle|proximoEstado.S5~0_combout\ = (\Bloco_de_Operacao|Regi|Q_reg\(4) & \Bloco_de_Controle|estadoAtual.S2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Bloco_de_Operacao|Regi|Q_reg\(4),
	datac => \Bloco_de_Controle|estadoAtual.S2~q\,
	combout => \Bloco_de_Controle|proximoEstado.S5~0_combout\);

-- Location: FF_X24_Y20_N27
\Bloco_de_Controle|estadoAtual.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Controle|proximoEstado.S5~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Controle|estadoAtual.S5~q\);

-- Location: FF_X24_Y21_N25
\Bloco_de_Operacao|SAD_reg|Q_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|SAD_reg|Q_reg[0]~feeder_combout\,
	ena => \Bloco_de_Controle|estadoAtual.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|SAD_reg|Q_reg\(0));

-- Location: LCCOMB_X23_Y21_N4
\Bloco_de_Operacao|regsoma|Q_reg[1]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|regsoma|Q_reg[1]~16_combout\ = (\Bloco_de_Operacao|Adder2|s[1]~2_combout\ & ((\Bloco_de_Operacao|regsoma|Q_reg\(1) & (\Bloco_de_Operacao|regsoma|Q_reg[0]~15\ & VCC)) # (!\Bloco_de_Operacao|regsoma|Q_reg\(1) & 
-- (!\Bloco_de_Operacao|regsoma|Q_reg[0]~15\)))) # (!\Bloco_de_Operacao|Adder2|s[1]~2_combout\ & ((\Bloco_de_Operacao|regsoma|Q_reg\(1) & (!\Bloco_de_Operacao|regsoma|Q_reg[0]~15\)) # (!\Bloco_de_Operacao|regsoma|Q_reg\(1) & 
-- ((\Bloco_de_Operacao|regsoma|Q_reg[0]~15\) # (GND)))))
-- \Bloco_de_Operacao|regsoma|Q_reg[1]~17\ = CARRY((\Bloco_de_Operacao|Adder2|s[1]~2_combout\ & (!\Bloco_de_Operacao|regsoma|Q_reg\(1) & !\Bloco_de_Operacao|regsoma|Q_reg[0]~15\)) # (!\Bloco_de_Operacao|Adder2|s[1]~2_combout\ & 
-- ((!\Bloco_de_Operacao|regsoma|Q_reg[0]~15\) # (!\Bloco_de_Operacao|regsoma|Q_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Adder2|s[1]~2_combout\,
	datab => \Bloco_de_Operacao|regsoma|Q_reg\(1),
	datad => VCC,
	cin => \Bloco_de_Operacao|regsoma|Q_reg[0]~15\,
	combout => \Bloco_de_Operacao|regsoma|Q_reg[1]~16_combout\,
	cout => \Bloco_de_Operacao|regsoma|Q_reg[1]~17\);

-- Location: FF_X23_Y21_N5
\Bloco_de_Operacao|regsoma|Q_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|regsoma|Q_reg[1]~16_combout\,
	sclr => \Bloco_de_Controle|estadoAtual.S1~q\,
	ena => \Bloco_de_Controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|regsoma|Q_reg\(1));

-- Location: FF_X24_Y21_N19
\Bloco_de_Operacao|SAD_reg|Q_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Bloco_de_Operacao|regsoma|Q_reg\(1),
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|SAD_reg|Q_reg\(1));

-- Location: IOIBUF_X34_Y18_N1
\sample_can[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(26),
	o => \sample_can[26]~input_o\);

-- Location: FF_X25_Y22_N5
\Bloco_de_Operacao|RegPB3|Q_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_can[26]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPB3|Q_reg\(2));

-- Location: IOIBUF_X34_Y9_N15
\sample_ori[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(25),
	o => \sample_ori[25]~input_o\);

-- Location: FF_X25_Y22_N3
\Bloco_de_Operacao|RegPA3|Q_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_ori[25]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPA3|Q_reg\(1));

-- Location: IOIBUF_X30_Y24_N1
\sample_can[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(24),
	o => \sample_can[24]~input_o\);

-- Location: FF_X25_Y22_N1
\Bloco_de_Operacao|RegPB3|Q_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_can[24]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPB3|Q_reg\(0));

-- Location: LCCOMB_X25_Y22_N2
\Bloco_de_Operacao|Subtrator3|s[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Subtrator3|s[1]~2_combout\ = (\Bloco_de_Operacao|RegPB3|Q_reg\(1) & ((\Bloco_de_Operacao|RegPA3|Q_reg\(1) & (!\Bloco_de_Operacao|Subtrator3|s[0]~1\)) # (!\Bloco_de_Operacao|RegPA3|Q_reg\(1) & ((\Bloco_de_Operacao|Subtrator3|s[0]~1\) # 
-- (GND))))) # (!\Bloco_de_Operacao|RegPB3|Q_reg\(1) & ((\Bloco_de_Operacao|RegPA3|Q_reg\(1) & (\Bloco_de_Operacao|Subtrator3|s[0]~1\ & VCC)) # (!\Bloco_de_Operacao|RegPA3|Q_reg\(1) & (!\Bloco_de_Operacao|Subtrator3|s[0]~1\))))
-- \Bloco_de_Operacao|Subtrator3|s[1]~3\ = CARRY((\Bloco_de_Operacao|RegPB3|Q_reg\(1) & ((!\Bloco_de_Operacao|Subtrator3|s[0]~1\) # (!\Bloco_de_Operacao|RegPA3|Q_reg\(1)))) # (!\Bloco_de_Operacao|RegPB3|Q_reg\(1) & (!\Bloco_de_Operacao|RegPA3|Q_reg\(1) & 
-- !\Bloco_de_Operacao|Subtrator3|s[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|RegPB3|Q_reg\(1),
	datab => \Bloco_de_Operacao|RegPA3|Q_reg\(1),
	datad => VCC,
	cin => \Bloco_de_Operacao|Subtrator3|s[0]~1\,
	combout => \Bloco_de_Operacao|Subtrator3|s[1]~2_combout\,
	cout => \Bloco_de_Operacao|Subtrator3|s[1]~3\);

-- Location: LCCOMB_X25_Y22_N4
\Bloco_de_Operacao|Subtrator3|s[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Subtrator3|s[2]~4_combout\ = ((\Bloco_de_Operacao|RegPA3|Q_reg\(2) $ (\Bloco_de_Operacao|RegPB3|Q_reg\(2) $ (\Bloco_de_Operacao|Subtrator3|s[1]~3\)))) # (GND)
-- \Bloco_de_Operacao|Subtrator3|s[2]~5\ = CARRY((\Bloco_de_Operacao|RegPA3|Q_reg\(2) & ((!\Bloco_de_Operacao|Subtrator3|s[1]~3\) # (!\Bloco_de_Operacao|RegPB3|Q_reg\(2)))) # (!\Bloco_de_Operacao|RegPA3|Q_reg\(2) & (!\Bloco_de_Operacao|RegPB3|Q_reg\(2) & 
-- !\Bloco_de_Operacao|Subtrator3|s[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|RegPA3|Q_reg\(2),
	datab => \Bloco_de_Operacao|RegPB3|Q_reg\(2),
	datad => VCC,
	cin => \Bloco_de_Operacao|Subtrator3|s[1]~3\,
	combout => \Bloco_de_Operacao|Subtrator3|s[2]~4_combout\,
	cout => \Bloco_de_Operacao|Subtrator3|s[2]~5\);

-- Location: IOIBUF_X34_Y9_N22
\sample_ori[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(31),
	o => \sample_ori[31]~input_o\);

-- Location: FF_X25_Y22_N15
\Bloco_de_Operacao|RegPA3|Q_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_ori[31]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPA3|Q_reg\(7));

-- Location: IOIBUF_X34_Y18_N15
\sample_can[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(30),
	o => \sample_can[30]~input_o\);

-- Location: FF_X25_Y22_N13
\Bloco_de_Operacao|RegPB3|Q_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_can[30]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPB3|Q_reg\(6));

-- Location: IOIBUF_X32_Y0_N15
\sample_can[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(29),
	o => \sample_can[29]~input_o\);

-- Location: FF_X25_Y22_N21
\Bloco_de_Operacao|RegPB3|Q_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_can[29]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPB3|Q_reg\(5));

-- Location: IOIBUF_X34_Y12_N22
\sample_can[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(28),
	o => \sample_can[28]~input_o\);

-- Location: FF_X25_Y22_N9
\Bloco_de_Operacao|RegPB3|Q_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_can[28]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPB3|Q_reg\(4));

-- Location: IOIBUF_X34_Y10_N8
\sample_can[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(27),
	o => \sample_can[27]~input_o\);

-- Location: LCCOMB_X25_Y22_N18
\Bloco_de_Operacao|RegPB3|Q_reg[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|RegPB3|Q_reg[3]~feeder_combout\ = \sample_can[27]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sample_can[27]~input_o\,
	combout => \Bloco_de_Operacao|RegPB3|Q_reg[3]~feeder_combout\);

-- Location: FF_X25_Y22_N19
\Bloco_de_Operacao|RegPB3|Q_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|RegPB3|Q_reg[3]~feeder_combout\,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPB3|Q_reg\(3));

-- Location: LCCOMB_X25_Y22_N8
\Bloco_de_Operacao|Subtrator3|s[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Subtrator3|s[4]~8_combout\ = ((\Bloco_de_Operacao|RegPA3|Q_reg\(4) $ (\Bloco_de_Operacao|RegPB3|Q_reg\(4) $ (\Bloco_de_Operacao|Subtrator3|s[3]~7\)))) # (GND)
-- \Bloco_de_Operacao|Subtrator3|s[4]~9\ = CARRY((\Bloco_de_Operacao|RegPA3|Q_reg\(4) & ((!\Bloco_de_Operacao|Subtrator3|s[3]~7\) # (!\Bloco_de_Operacao|RegPB3|Q_reg\(4)))) # (!\Bloco_de_Operacao|RegPA3|Q_reg\(4) & (!\Bloco_de_Operacao|RegPB3|Q_reg\(4) & 
-- !\Bloco_de_Operacao|Subtrator3|s[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|RegPA3|Q_reg\(4),
	datab => \Bloco_de_Operacao|RegPB3|Q_reg\(4),
	datad => VCC,
	cin => \Bloco_de_Operacao|Subtrator3|s[3]~7\,
	combout => \Bloco_de_Operacao|Subtrator3|s[4]~8_combout\,
	cout => \Bloco_de_Operacao|Subtrator3|s[4]~9\);

-- Location: LCCOMB_X25_Y22_N10
\Bloco_de_Operacao|Subtrator3|s[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Subtrator3|s[5]~10_combout\ = (\Bloco_de_Operacao|RegPA3|Q_reg\(5) & ((\Bloco_de_Operacao|RegPB3|Q_reg\(5) & (!\Bloco_de_Operacao|Subtrator3|s[4]~9\)) # (!\Bloco_de_Operacao|RegPB3|Q_reg\(5) & (\Bloco_de_Operacao|Subtrator3|s[4]~9\ & 
-- VCC)))) # (!\Bloco_de_Operacao|RegPA3|Q_reg\(5) & ((\Bloco_de_Operacao|RegPB3|Q_reg\(5) & ((\Bloco_de_Operacao|Subtrator3|s[4]~9\) # (GND))) # (!\Bloco_de_Operacao|RegPB3|Q_reg\(5) & (!\Bloco_de_Operacao|Subtrator3|s[4]~9\))))
-- \Bloco_de_Operacao|Subtrator3|s[5]~11\ = CARRY((\Bloco_de_Operacao|RegPA3|Q_reg\(5) & (\Bloco_de_Operacao|RegPB3|Q_reg\(5) & !\Bloco_de_Operacao|Subtrator3|s[4]~9\)) # (!\Bloco_de_Operacao|RegPA3|Q_reg\(5) & ((\Bloco_de_Operacao|RegPB3|Q_reg\(5)) # 
-- (!\Bloco_de_Operacao|Subtrator3|s[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|RegPA3|Q_reg\(5),
	datab => \Bloco_de_Operacao|RegPB3|Q_reg\(5),
	datad => VCC,
	cin => \Bloco_de_Operacao|Subtrator3|s[4]~9\,
	combout => \Bloco_de_Operacao|Subtrator3|s[5]~10_combout\,
	cout => \Bloco_de_Operacao|Subtrator3|s[5]~11\);

-- Location: LCCOMB_X25_Y22_N12
\Bloco_de_Operacao|Subtrator3|s[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Subtrator3|s[6]~12_combout\ = ((\Bloco_de_Operacao|RegPA3|Q_reg\(6) $ (\Bloco_de_Operacao|RegPB3|Q_reg\(6) $ (\Bloco_de_Operacao|Subtrator3|s[5]~11\)))) # (GND)
-- \Bloco_de_Operacao|Subtrator3|s[6]~13\ = CARRY((\Bloco_de_Operacao|RegPA3|Q_reg\(6) & ((!\Bloco_de_Operacao|Subtrator3|s[5]~11\) # (!\Bloco_de_Operacao|RegPB3|Q_reg\(6)))) # (!\Bloco_de_Operacao|RegPA3|Q_reg\(6) & (!\Bloco_de_Operacao|RegPB3|Q_reg\(6) & 
-- !\Bloco_de_Operacao|Subtrator3|s[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|RegPA3|Q_reg\(6),
	datab => \Bloco_de_Operacao|RegPB3|Q_reg\(6),
	datad => VCC,
	cin => \Bloco_de_Operacao|Subtrator3|s[5]~11\,
	combout => \Bloco_de_Operacao|Subtrator3|s[6]~12_combout\,
	cout => \Bloco_de_Operacao|Subtrator3|s[6]~13\);

-- Location: LCCOMB_X25_Y22_N16
\Bloco_de_Operacao|Subtrator3|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Subtrator3|Add0~0_combout\ = !\Bloco_de_Operacao|Subtrator3|s[7]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Bloco_de_Operacao|Subtrator3|s[7]~15\,
	combout => \Bloco_de_Operacao|Subtrator3|Add0~0_combout\);

-- Location: LCCOMB_X24_Y22_N14
\Bloco_de_Operacao|Absolute3|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Absolute3|Add0~1_combout\ = (\Bloco_de_Operacao|Absolute3|Add0~0_combout\ & (!\Bloco_de_Operacao|Subtrator3|Add0~0_combout\ & VCC)) # (!\Bloco_de_Operacao|Absolute3|Add0~0_combout\ & (\Bloco_de_Operacao|Subtrator3|Add0~0_combout\ $ 
-- (GND)))
-- \Bloco_de_Operacao|Absolute3|Add0~2\ = CARRY((!\Bloco_de_Operacao|Absolute3|Add0~0_combout\ & !\Bloco_de_Operacao|Subtrator3|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Absolute3|Add0~0_combout\,
	datab => \Bloco_de_Operacao|Subtrator3|Add0~0_combout\,
	datad => VCC,
	combout => \Bloco_de_Operacao|Absolute3|Add0~1_combout\,
	cout => \Bloco_de_Operacao|Absolute3|Add0~2\);

-- Location: LCCOMB_X24_Y22_N16
\Bloco_de_Operacao|Absolute3|Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Absolute3|Add0~3_combout\ = (\Bloco_de_Operacao|Absolute3|Add0~2\ & (\Bloco_de_Operacao|Subtrator3|Add0~0_combout\ $ ((\Bloco_de_Operacao|Subtrator3|s[1]~2_combout\)))) # (!\Bloco_de_Operacao|Absolute3|Add0~2\ & 
-- ((\Bloco_de_Operacao|Subtrator3|Add0~0_combout\ $ (!\Bloco_de_Operacao|Subtrator3|s[1]~2_combout\)) # (GND)))
-- \Bloco_de_Operacao|Absolute3|Add0~4\ = CARRY((\Bloco_de_Operacao|Subtrator3|Add0~0_combout\ $ (\Bloco_de_Operacao|Subtrator3|s[1]~2_combout\)) # (!\Bloco_de_Operacao|Absolute3|Add0~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Subtrator3|Add0~0_combout\,
	datab => \Bloco_de_Operacao|Subtrator3|s[1]~2_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Absolute3|Add0~2\,
	combout => \Bloco_de_Operacao|Absolute3|Add0~3_combout\,
	cout => \Bloco_de_Operacao|Absolute3|Add0~4\);

-- Location: LCCOMB_X24_Y22_N18
\Bloco_de_Operacao|Absolute3|Add0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Absolute3|Add0~5_combout\ = (\Bloco_de_Operacao|Absolute3|Add0~4\ & ((\Bloco_de_Operacao|Subtrator3|Add0~0_combout\ $ (!\Bloco_de_Operacao|Subtrator3|s[2]~4_combout\)))) # (!\Bloco_de_Operacao|Absolute3|Add0~4\ & 
-- (\Bloco_de_Operacao|Subtrator3|Add0~0_combout\ $ (\Bloco_de_Operacao|Subtrator3|s[2]~4_combout\ $ (GND))))
-- \Bloco_de_Operacao|Absolute3|Add0~6\ = CARRY((!\Bloco_de_Operacao|Absolute3|Add0~4\ & (\Bloco_de_Operacao|Subtrator3|Add0~0_combout\ $ (!\Bloco_de_Operacao|Subtrator3|s[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Subtrator3|Add0~0_combout\,
	datab => \Bloco_de_Operacao|Subtrator3|s[2]~4_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Absolute3|Add0~4\,
	combout => \Bloco_de_Operacao|Absolute3|Add0~5_combout\,
	cout => \Bloco_de_Operacao|Absolute3|Add0~6\);

-- Location: LCCOMB_X23_Y22_N4
\Bloco_de_Operacao|Adder1|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Adder1|Add0~4_combout\ = ((\Bloco_de_Operacao|Absolute2|Add0~5_combout\ $ (\Bloco_de_Operacao|Absolute3|Add0~5_combout\ $ (!\Bloco_de_Operacao|Adder1|Add0~3\)))) # (GND)
-- \Bloco_de_Operacao|Adder1|Add0~5\ = CARRY((\Bloco_de_Operacao|Absolute2|Add0~5_combout\ & ((\Bloco_de_Operacao|Absolute3|Add0~5_combout\) # (!\Bloco_de_Operacao|Adder1|Add0~3\))) # (!\Bloco_de_Operacao|Absolute2|Add0~5_combout\ & 
-- (\Bloco_de_Operacao|Absolute3|Add0~5_combout\ & !\Bloco_de_Operacao|Adder1|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Absolute2|Add0~5_combout\,
	datab => \Bloco_de_Operacao|Absolute3|Add0~5_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Adder1|Add0~3\,
	combout => \Bloco_de_Operacao|Adder1|Add0~4_combout\,
	cout => \Bloco_de_Operacao|Adder1|Add0~5\);

-- Location: IOIBUF_X16_Y0_N8
\sample_ori[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(7),
	o => \sample_ori[7]~input_o\);

-- Location: FF_X22_Y20_N25
\Bloco_de_Operacao|RegPA0|Q_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_ori[7]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPA0|Q_reg\(7));

-- Location: IOIBUF_X21_Y0_N8
\sample_ori[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(6),
	o => \sample_ori[6]~input_o\);

-- Location: LCCOMB_X22_Y20_N0
\Bloco_de_Operacao|RegPA0|Q_reg[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|RegPA0|Q_reg[6]~feeder_combout\ = \sample_ori[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sample_ori[6]~input_o\,
	combout => \Bloco_de_Operacao|RegPA0|Q_reg[6]~feeder_combout\);

-- Location: FF_X22_Y20_N1
\Bloco_de_Operacao|RegPA0|Q_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|RegPA0|Q_reg[6]~feeder_combout\,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPA0|Q_reg\(6));

-- Location: IOIBUF_X18_Y0_N22
\sample_ori[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(5),
	o => \sample_ori[5]~input_o\);

-- Location: FF_X22_Y20_N21
\Bloco_de_Operacao|RegPA0|Q_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_ori[5]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPA0|Q_reg\(5));

-- Location: IOIBUF_X23_Y24_N1
\sample_can[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(4),
	o => \sample_can[4]~input_o\);

-- Location: FF_X22_Y20_N19
\Bloco_de_Operacao|RegPB0|Q_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_can[4]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPB0|Q_reg\(4));

-- Location: IOIBUF_X34_Y20_N8
\sample_ori[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(3),
	o => \sample_ori[3]~input_o\);

-- Location: FF_X22_Y20_N17
\Bloco_de_Operacao|RegPA0|Q_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_ori[3]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPA0|Q_reg\(3));

-- Location: IOIBUF_X30_Y0_N1
\sample_can[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(2),
	o => \sample_can[2]~input_o\);

-- Location: FF_X22_Y20_N15
\Bloco_de_Operacao|RegPB0|Q_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_can[2]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPB0|Q_reg\(2));

-- Location: IOIBUF_X16_Y0_N22
\sample_can[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(1),
	o => \sample_can[1]~input_o\);

-- Location: LCCOMB_X22_Y20_N2
\Bloco_de_Operacao|RegPB0|Q_reg[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|RegPB0|Q_reg[1]~feeder_combout\ = \sample_can[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sample_can[1]~input_o\,
	combout => \Bloco_de_Operacao|RegPB0|Q_reg[1]~feeder_combout\);

-- Location: FF_X22_Y20_N3
\Bloco_de_Operacao|RegPB0|Q_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|RegPB0|Q_reg[1]~feeder_combout\,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPB0|Q_reg\(1));

-- Location: IOIBUF_X16_Y0_N1
\sample_ori[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(0),
	o => \sample_ori[0]~input_o\);

-- Location: LCCOMB_X22_Y20_N4
\Bloco_de_Operacao|RegPA0|Q_reg[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|RegPA0|Q_reg[0]~feeder_combout\ = \sample_ori[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sample_ori[0]~input_o\,
	combout => \Bloco_de_Operacao|RegPA0|Q_reg[0]~feeder_combout\);

-- Location: FF_X22_Y20_N5
\Bloco_de_Operacao|RegPA0|Q_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|RegPA0|Q_reg[0]~feeder_combout\,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPA0|Q_reg\(0));

-- Location: LCCOMB_X22_Y20_N26
\Bloco_de_Operacao|Subtrator0|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Subtrator0|Add0~0_combout\ = !\Bloco_de_Operacao|Subtrator0|s[7]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Bloco_de_Operacao|Subtrator0|s[7]~15\,
	combout => \Bloco_de_Operacao|Subtrator0|Add0~0_combout\);

-- Location: LCCOMB_X21_Y20_N6
\Bloco_de_Operacao|Absolute0|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Absolute0|Add0~1_combout\ = (\Bloco_de_Operacao|Absolute0|Add0~0_combout\ & (!\Bloco_de_Operacao|Subtrator0|Add0~0_combout\ & VCC)) # (!\Bloco_de_Operacao|Absolute0|Add0~0_combout\ & (\Bloco_de_Operacao|Subtrator0|Add0~0_combout\ $ 
-- (GND)))
-- \Bloco_de_Operacao|Absolute0|Add0~2\ = CARRY((!\Bloco_de_Operacao|Absolute0|Add0~0_combout\ & !\Bloco_de_Operacao|Subtrator0|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Absolute0|Add0~0_combout\,
	datab => \Bloco_de_Operacao|Subtrator0|Add0~0_combout\,
	datad => VCC,
	combout => \Bloco_de_Operacao|Absolute0|Add0~1_combout\,
	cout => \Bloco_de_Operacao|Absolute0|Add0~2\);

-- Location: LCCOMB_X21_Y20_N8
\Bloco_de_Operacao|Absolute0|Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Absolute0|Add0~3_combout\ = (\Bloco_de_Operacao|Absolute0|Add0~2\ & (\Bloco_de_Operacao|Subtrator0|s[1]~2_combout\ $ ((\Bloco_de_Operacao|Subtrator0|Add0~0_combout\)))) # (!\Bloco_de_Operacao|Absolute0|Add0~2\ & 
-- ((\Bloco_de_Operacao|Subtrator0|s[1]~2_combout\ $ (!\Bloco_de_Operacao|Subtrator0|Add0~0_combout\)) # (GND)))
-- \Bloco_de_Operacao|Absolute0|Add0~4\ = CARRY((\Bloco_de_Operacao|Subtrator0|s[1]~2_combout\ $ (\Bloco_de_Operacao|Subtrator0|Add0~0_combout\)) # (!\Bloco_de_Operacao|Absolute0|Add0~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Subtrator0|s[1]~2_combout\,
	datab => \Bloco_de_Operacao|Subtrator0|Add0~0_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Absolute0|Add0~2\,
	combout => \Bloco_de_Operacao|Absolute0|Add0~3_combout\,
	cout => \Bloco_de_Operacao|Absolute0|Add0~4\);

-- Location: LCCOMB_X21_Y21_N4
\Bloco_de_Operacao|Adder0|s[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Adder0|s[0]~0_combout\ = (\Bloco_de_Operacao|Absolute1|Add0~1_combout\ & (\Bloco_de_Operacao|Absolute0|Add0~1_combout\ $ (VCC))) # (!\Bloco_de_Operacao|Absolute1|Add0~1_combout\ & (\Bloco_de_Operacao|Absolute0|Add0~1_combout\ & VCC))
-- \Bloco_de_Operacao|Adder0|s[0]~1\ = CARRY((\Bloco_de_Operacao|Absolute1|Add0~1_combout\ & \Bloco_de_Operacao|Absolute0|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Absolute1|Add0~1_combout\,
	datab => \Bloco_de_Operacao|Absolute0|Add0~1_combout\,
	datad => VCC,
	combout => \Bloco_de_Operacao|Adder0|s[0]~0_combout\,
	cout => \Bloco_de_Operacao|Adder0|s[0]~1\);

-- Location: LCCOMB_X21_Y21_N6
\Bloco_de_Operacao|Adder0|s[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Adder0|s[1]~2_combout\ = (\Bloco_de_Operacao|Absolute1|Add0~3_combout\ & ((\Bloco_de_Operacao|Absolute0|Add0~3_combout\ & (\Bloco_de_Operacao|Adder0|s[0]~1\ & VCC)) # (!\Bloco_de_Operacao|Absolute0|Add0~3_combout\ & 
-- (!\Bloco_de_Operacao|Adder0|s[0]~1\)))) # (!\Bloco_de_Operacao|Absolute1|Add0~3_combout\ & ((\Bloco_de_Operacao|Absolute0|Add0~3_combout\ & (!\Bloco_de_Operacao|Adder0|s[0]~1\)) # (!\Bloco_de_Operacao|Absolute0|Add0~3_combout\ & 
-- ((\Bloco_de_Operacao|Adder0|s[0]~1\) # (GND)))))
-- \Bloco_de_Operacao|Adder0|s[1]~3\ = CARRY((\Bloco_de_Operacao|Absolute1|Add0~3_combout\ & (!\Bloco_de_Operacao|Absolute0|Add0~3_combout\ & !\Bloco_de_Operacao|Adder0|s[0]~1\)) # (!\Bloco_de_Operacao|Absolute1|Add0~3_combout\ & 
-- ((!\Bloco_de_Operacao|Adder0|s[0]~1\) # (!\Bloco_de_Operacao|Absolute0|Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Absolute1|Add0~3_combout\,
	datab => \Bloco_de_Operacao|Absolute0|Add0~3_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Adder0|s[0]~1\,
	combout => \Bloco_de_Operacao|Adder0|s[1]~2_combout\,
	cout => \Bloco_de_Operacao|Adder0|s[1]~3\);

-- Location: LCCOMB_X22_Y21_N4
\Bloco_de_Operacao|Adder2|s[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Adder2|s[2]~4_combout\ = ((\Bloco_de_Operacao|Adder0|s[2]~4_combout\ $ (\Bloco_de_Operacao|Adder1|Add0~4_combout\ $ (!\Bloco_de_Operacao|Adder2|s[1]~3\)))) # (GND)
-- \Bloco_de_Operacao|Adder2|s[2]~5\ = CARRY((\Bloco_de_Operacao|Adder0|s[2]~4_combout\ & ((\Bloco_de_Operacao|Adder1|Add0~4_combout\) # (!\Bloco_de_Operacao|Adder2|s[1]~3\))) # (!\Bloco_de_Operacao|Adder0|s[2]~4_combout\ & 
-- (\Bloco_de_Operacao|Adder1|Add0~4_combout\ & !\Bloco_de_Operacao|Adder2|s[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Adder0|s[2]~4_combout\,
	datab => \Bloco_de_Operacao|Adder1|Add0~4_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Adder2|s[1]~3\,
	combout => \Bloco_de_Operacao|Adder2|s[2]~4_combout\,
	cout => \Bloco_de_Operacao|Adder2|s[2]~5\);

-- Location: LCCOMB_X23_Y21_N6
\Bloco_de_Operacao|regsoma|Q_reg[2]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|regsoma|Q_reg[2]~18_combout\ = ((\Bloco_de_Operacao|regsoma|Q_reg\(2) $ (\Bloco_de_Operacao|Adder2|s[2]~4_combout\ $ (!\Bloco_de_Operacao|regsoma|Q_reg[1]~17\)))) # (GND)
-- \Bloco_de_Operacao|regsoma|Q_reg[2]~19\ = CARRY((\Bloco_de_Operacao|regsoma|Q_reg\(2) & ((\Bloco_de_Operacao|Adder2|s[2]~4_combout\) # (!\Bloco_de_Operacao|regsoma|Q_reg[1]~17\))) # (!\Bloco_de_Operacao|regsoma|Q_reg\(2) & 
-- (\Bloco_de_Operacao|Adder2|s[2]~4_combout\ & !\Bloco_de_Operacao|regsoma|Q_reg[1]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|regsoma|Q_reg\(2),
	datab => \Bloco_de_Operacao|Adder2|s[2]~4_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|regsoma|Q_reg[1]~17\,
	combout => \Bloco_de_Operacao|regsoma|Q_reg[2]~18_combout\,
	cout => \Bloco_de_Operacao|regsoma|Q_reg[2]~19\);

-- Location: FF_X23_Y21_N7
\Bloco_de_Operacao|regsoma|Q_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|regsoma|Q_reg[2]~18_combout\,
	sclr => \Bloco_de_Controle|estadoAtual.S1~q\,
	ena => \Bloco_de_Controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|regsoma|Q_reg\(2));

-- Location: LCCOMB_X22_Y21_N28
\Bloco_de_Operacao|SAD_reg|Q_reg[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|SAD_reg|Q_reg[2]~feeder_combout\ = \Bloco_de_Operacao|regsoma|Q_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Bloco_de_Operacao|regsoma|Q_reg\(2),
	combout => \Bloco_de_Operacao|SAD_reg|Q_reg[2]~feeder_combout\);

-- Location: FF_X22_Y21_N29
\Bloco_de_Operacao|SAD_reg|Q_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|SAD_reg|Q_reg[2]~feeder_combout\,
	ena => \Bloco_de_Controle|estadoAtual.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|SAD_reg|Q_reg\(2));

-- Location: IOIBUF_X13_Y0_N15
\sample_can[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(19),
	o => \sample_can[19]~input_o\);

-- Location: FF_X21_Y22_N19
\Bloco_de_Operacao|RegPB2|Q_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_can[19]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPB2|Q_reg\(3));

-- Location: IOIBUF_X13_Y24_N22
\sample_can[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(18),
	o => \sample_can[18]~input_o\);

-- Location: FF_X21_Y22_N5
\Bloco_de_Operacao|RegPB2|Q_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_can[18]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPB2|Q_reg\(2));

-- Location: IOIBUF_X0_Y22_N1
\sample_ori[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(17),
	o => \sample_ori[17]~input_o\);

-- Location: FF_X21_Y22_N3
\Bloco_de_Operacao|RegPA2|Q_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_ori[17]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPA2|Q_reg\(1));

-- Location: IOIBUF_X23_Y24_N15
\sample_can[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(16),
	o => \sample_can[16]~input_o\);

-- Location: FF_X21_Y22_N1
\Bloco_de_Operacao|RegPB2|Q_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_can[16]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPB2|Q_reg\(0));

-- Location: LCCOMB_X21_Y22_N2
\Bloco_de_Operacao|Subtrator2|s[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Subtrator2|s[1]~2_combout\ = (\Bloco_de_Operacao|RegPB2|Q_reg\(1) & ((\Bloco_de_Operacao|RegPA2|Q_reg\(1) & (!\Bloco_de_Operacao|Subtrator2|s[0]~1\)) # (!\Bloco_de_Operacao|RegPA2|Q_reg\(1) & ((\Bloco_de_Operacao|Subtrator2|s[0]~1\) # 
-- (GND))))) # (!\Bloco_de_Operacao|RegPB2|Q_reg\(1) & ((\Bloco_de_Operacao|RegPA2|Q_reg\(1) & (\Bloco_de_Operacao|Subtrator2|s[0]~1\ & VCC)) # (!\Bloco_de_Operacao|RegPA2|Q_reg\(1) & (!\Bloco_de_Operacao|Subtrator2|s[0]~1\))))
-- \Bloco_de_Operacao|Subtrator2|s[1]~3\ = CARRY((\Bloco_de_Operacao|RegPB2|Q_reg\(1) & ((!\Bloco_de_Operacao|Subtrator2|s[0]~1\) # (!\Bloco_de_Operacao|RegPA2|Q_reg\(1)))) # (!\Bloco_de_Operacao|RegPB2|Q_reg\(1) & (!\Bloco_de_Operacao|RegPA2|Q_reg\(1) & 
-- !\Bloco_de_Operacao|Subtrator2|s[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|RegPB2|Q_reg\(1),
	datab => \Bloco_de_Operacao|RegPA2|Q_reg\(1),
	datad => VCC,
	cin => \Bloco_de_Operacao|Subtrator2|s[0]~1\,
	combout => \Bloco_de_Operacao|Subtrator2|s[1]~2_combout\,
	cout => \Bloco_de_Operacao|Subtrator2|s[1]~3\);

-- Location: LCCOMB_X21_Y22_N4
\Bloco_de_Operacao|Subtrator2|s[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Subtrator2|s[2]~4_combout\ = ((\Bloco_de_Operacao|RegPA2|Q_reg\(2) $ (\Bloco_de_Operacao|RegPB2|Q_reg\(2) $ (\Bloco_de_Operacao|Subtrator2|s[1]~3\)))) # (GND)
-- \Bloco_de_Operacao|Subtrator2|s[2]~5\ = CARRY((\Bloco_de_Operacao|RegPA2|Q_reg\(2) & ((!\Bloco_de_Operacao|Subtrator2|s[1]~3\) # (!\Bloco_de_Operacao|RegPB2|Q_reg\(2)))) # (!\Bloco_de_Operacao|RegPA2|Q_reg\(2) & (!\Bloco_de_Operacao|RegPB2|Q_reg\(2) & 
-- !\Bloco_de_Operacao|Subtrator2|s[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|RegPA2|Q_reg\(2),
	datab => \Bloco_de_Operacao|RegPB2|Q_reg\(2),
	datad => VCC,
	cin => \Bloco_de_Operacao|Subtrator2|s[1]~3\,
	combout => \Bloco_de_Operacao|Subtrator2|s[2]~4_combout\,
	cout => \Bloco_de_Operacao|Subtrator2|s[2]~5\);

-- Location: LCCOMB_X21_Y22_N6
\Bloco_de_Operacao|Subtrator2|s[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Subtrator2|s[3]~6_combout\ = (\Bloco_de_Operacao|RegPA2|Q_reg\(3) & ((\Bloco_de_Operacao|RegPB2|Q_reg\(3) & (!\Bloco_de_Operacao|Subtrator2|s[2]~5\)) # (!\Bloco_de_Operacao|RegPB2|Q_reg\(3) & (\Bloco_de_Operacao|Subtrator2|s[2]~5\ & 
-- VCC)))) # (!\Bloco_de_Operacao|RegPA2|Q_reg\(3) & ((\Bloco_de_Operacao|RegPB2|Q_reg\(3) & ((\Bloco_de_Operacao|Subtrator2|s[2]~5\) # (GND))) # (!\Bloco_de_Operacao|RegPB2|Q_reg\(3) & (!\Bloco_de_Operacao|Subtrator2|s[2]~5\))))
-- \Bloco_de_Operacao|Subtrator2|s[3]~7\ = CARRY((\Bloco_de_Operacao|RegPA2|Q_reg\(3) & (\Bloco_de_Operacao|RegPB2|Q_reg\(3) & !\Bloco_de_Operacao|Subtrator2|s[2]~5\)) # (!\Bloco_de_Operacao|RegPA2|Q_reg\(3) & ((\Bloco_de_Operacao|RegPB2|Q_reg\(3)) # 
-- (!\Bloco_de_Operacao|Subtrator2|s[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|RegPA2|Q_reg\(3),
	datab => \Bloco_de_Operacao|RegPB2|Q_reg\(3),
	datad => VCC,
	cin => \Bloco_de_Operacao|Subtrator2|s[2]~5\,
	combout => \Bloco_de_Operacao|Subtrator2|s[3]~6_combout\,
	cout => \Bloco_de_Operacao|Subtrator2|s[3]~7\);

-- Location: IOIBUF_X0_Y6_N22
\sample_ori[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(23),
	o => \sample_ori[23]~input_o\);

-- Location: FF_X21_Y22_N15
\Bloco_de_Operacao|RegPA2|Q_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_ori[23]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPA2|Q_reg\(7));

-- Location: IOIBUF_X25_Y0_N1
\sample_ori[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(22),
	o => \sample_ori[22]~input_o\);

-- Location: LCCOMB_X21_Y22_N30
\Bloco_de_Operacao|RegPA2|Q_reg[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|RegPA2|Q_reg[6]~feeder_combout\ = \sample_ori[22]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sample_ori[22]~input_o\,
	combout => \Bloco_de_Operacao|RegPA2|Q_reg[6]~feeder_combout\);

-- Location: FF_X21_Y22_N31
\Bloco_de_Operacao|RegPA2|Q_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|RegPA2|Q_reg[6]~feeder_combout\,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPA2|Q_reg\(6));

-- Location: IOIBUF_X16_Y24_N15
\sample_can[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(21),
	o => \sample_can[21]~input_o\);

-- Location: FF_X21_Y22_N25
\Bloco_de_Operacao|RegPB2|Q_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_can[21]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPB2|Q_reg\(5));

-- Location: IOIBUF_X1_Y0_N15
\sample_can[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(20),
	o => \sample_can[20]~input_o\);

-- Location: FF_X21_Y22_N9
\Bloco_de_Operacao|RegPB2|Q_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_can[20]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPB2|Q_reg\(4));

-- Location: LCCOMB_X21_Y22_N16
\Bloco_de_Operacao|Subtrator2|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Subtrator2|Add0~0_combout\ = !\Bloco_de_Operacao|Subtrator2|s[7]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Bloco_de_Operacao|Subtrator2|s[7]~15\,
	combout => \Bloco_de_Operacao|Subtrator2|Add0~0_combout\);

-- Location: LCCOMB_X21_Y22_N24
\Bloco_de_Operacao|Absolute2|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Absolute2|Add0~0_combout\ = \Bloco_de_Operacao|Subtrator2|s[0]~0_combout\ $ (\Bloco_de_Operacao|Subtrator2|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Subtrator2|s[0]~0_combout\,
	datad => \Bloco_de_Operacao|Subtrator2|Add0~0_combout\,
	combout => \Bloco_de_Operacao|Absolute2|Add0~0_combout\);

-- Location: LCCOMB_X23_Y22_N6
\Bloco_de_Operacao|Adder1|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Adder1|Add0~6_combout\ = (\Bloco_de_Operacao|Absolute3|Add0~7_combout\ & ((\Bloco_de_Operacao|Absolute2|Add0~7_combout\ & (\Bloco_de_Operacao|Adder1|Add0~5\ & VCC)) # (!\Bloco_de_Operacao|Absolute2|Add0~7_combout\ & 
-- (!\Bloco_de_Operacao|Adder1|Add0~5\)))) # (!\Bloco_de_Operacao|Absolute3|Add0~7_combout\ & ((\Bloco_de_Operacao|Absolute2|Add0~7_combout\ & (!\Bloco_de_Operacao|Adder1|Add0~5\)) # (!\Bloco_de_Operacao|Absolute2|Add0~7_combout\ & 
-- ((\Bloco_de_Operacao|Adder1|Add0~5\) # (GND)))))
-- \Bloco_de_Operacao|Adder1|Add0~7\ = CARRY((\Bloco_de_Operacao|Absolute3|Add0~7_combout\ & (!\Bloco_de_Operacao|Absolute2|Add0~7_combout\ & !\Bloco_de_Operacao|Adder1|Add0~5\)) # (!\Bloco_de_Operacao|Absolute3|Add0~7_combout\ & 
-- ((!\Bloco_de_Operacao|Adder1|Add0~5\) # (!\Bloco_de_Operacao|Absolute2|Add0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Absolute3|Add0~7_combout\,
	datab => \Bloco_de_Operacao|Absolute2|Add0~7_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Adder1|Add0~5\,
	combout => \Bloco_de_Operacao|Adder1|Add0~6_combout\,
	cout => \Bloco_de_Operacao|Adder1|Add0~7\);

-- Location: LCCOMB_X22_Y21_N6
\Bloco_de_Operacao|Adder2|s[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Adder2|s[3]~6_combout\ = (\Bloco_de_Operacao|Adder0|s[3]~6_combout\ & ((\Bloco_de_Operacao|Adder1|Add0~6_combout\ & (\Bloco_de_Operacao|Adder2|s[2]~5\ & VCC)) # (!\Bloco_de_Operacao|Adder1|Add0~6_combout\ & 
-- (!\Bloco_de_Operacao|Adder2|s[2]~5\)))) # (!\Bloco_de_Operacao|Adder0|s[3]~6_combout\ & ((\Bloco_de_Operacao|Adder1|Add0~6_combout\ & (!\Bloco_de_Operacao|Adder2|s[2]~5\)) # (!\Bloco_de_Operacao|Adder1|Add0~6_combout\ & 
-- ((\Bloco_de_Operacao|Adder2|s[2]~5\) # (GND)))))
-- \Bloco_de_Operacao|Adder2|s[3]~7\ = CARRY((\Bloco_de_Operacao|Adder0|s[3]~6_combout\ & (!\Bloco_de_Operacao|Adder1|Add0~6_combout\ & !\Bloco_de_Operacao|Adder2|s[2]~5\)) # (!\Bloco_de_Operacao|Adder0|s[3]~6_combout\ & ((!\Bloco_de_Operacao|Adder2|s[2]~5\) 
-- # (!\Bloco_de_Operacao|Adder1|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Adder0|s[3]~6_combout\,
	datab => \Bloco_de_Operacao|Adder1|Add0~6_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Adder2|s[2]~5\,
	combout => \Bloco_de_Operacao|Adder2|s[3]~6_combout\,
	cout => \Bloco_de_Operacao|Adder2|s[3]~7\);

-- Location: LCCOMB_X23_Y21_N8
\Bloco_de_Operacao|regsoma|Q_reg[3]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|regsoma|Q_reg[3]~20_combout\ = (\Bloco_de_Operacao|regsoma|Q_reg\(3) & ((\Bloco_de_Operacao|Adder2|s[3]~6_combout\ & (\Bloco_de_Operacao|regsoma|Q_reg[2]~19\ & VCC)) # (!\Bloco_de_Operacao|Adder2|s[3]~6_combout\ & 
-- (!\Bloco_de_Operacao|regsoma|Q_reg[2]~19\)))) # (!\Bloco_de_Operacao|regsoma|Q_reg\(3) & ((\Bloco_de_Operacao|Adder2|s[3]~6_combout\ & (!\Bloco_de_Operacao|regsoma|Q_reg[2]~19\)) # (!\Bloco_de_Operacao|Adder2|s[3]~6_combout\ & 
-- ((\Bloco_de_Operacao|regsoma|Q_reg[2]~19\) # (GND)))))
-- \Bloco_de_Operacao|regsoma|Q_reg[3]~21\ = CARRY((\Bloco_de_Operacao|regsoma|Q_reg\(3) & (!\Bloco_de_Operacao|Adder2|s[3]~6_combout\ & !\Bloco_de_Operacao|regsoma|Q_reg[2]~19\)) # (!\Bloco_de_Operacao|regsoma|Q_reg\(3) & 
-- ((!\Bloco_de_Operacao|regsoma|Q_reg[2]~19\) # (!\Bloco_de_Operacao|Adder2|s[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|regsoma|Q_reg\(3),
	datab => \Bloco_de_Operacao|Adder2|s[3]~6_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|regsoma|Q_reg[2]~19\,
	combout => \Bloco_de_Operacao|regsoma|Q_reg[3]~20_combout\,
	cout => \Bloco_de_Operacao|regsoma|Q_reg[3]~21\);

-- Location: FF_X23_Y21_N9
\Bloco_de_Operacao|regsoma|Q_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|regsoma|Q_reg[3]~20_combout\,
	sclr => \Bloco_de_Controle|estadoAtual.S1~q\,
	ena => \Bloco_de_Controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|regsoma|Q_reg\(3));

-- Location: LCCOMB_X23_Y21_N0
\Bloco_de_Operacao|SAD_reg|Q_reg[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|SAD_reg|Q_reg[3]~feeder_combout\ = \Bloco_de_Operacao|regsoma|Q_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Bloco_de_Operacao|regsoma|Q_reg\(3),
	combout => \Bloco_de_Operacao|SAD_reg|Q_reg[3]~feeder_combout\);

-- Location: FF_X23_Y21_N1
\Bloco_de_Operacao|SAD_reg|Q_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|SAD_reg|Q_reg[3]~feeder_combout\,
	ena => \Bloco_de_Controle|estadoAtual.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|SAD_reg|Q_reg\(3));

-- Location: LCCOMB_X23_Y21_N10
\Bloco_de_Operacao|regsoma|Q_reg[4]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|regsoma|Q_reg[4]~22_combout\ = ((\Bloco_de_Operacao|Adder2|s[4]~8_combout\ $ (\Bloco_de_Operacao|regsoma|Q_reg\(4) $ (!\Bloco_de_Operacao|regsoma|Q_reg[3]~21\)))) # (GND)
-- \Bloco_de_Operacao|regsoma|Q_reg[4]~23\ = CARRY((\Bloco_de_Operacao|Adder2|s[4]~8_combout\ & ((\Bloco_de_Operacao|regsoma|Q_reg\(4)) # (!\Bloco_de_Operacao|regsoma|Q_reg[3]~21\))) # (!\Bloco_de_Operacao|Adder2|s[4]~8_combout\ & 
-- (\Bloco_de_Operacao|regsoma|Q_reg\(4) & !\Bloco_de_Operacao|regsoma|Q_reg[3]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Adder2|s[4]~8_combout\,
	datab => \Bloco_de_Operacao|regsoma|Q_reg\(4),
	datad => VCC,
	cin => \Bloco_de_Operacao|regsoma|Q_reg[3]~21\,
	combout => \Bloco_de_Operacao|regsoma|Q_reg[4]~22_combout\,
	cout => \Bloco_de_Operacao|regsoma|Q_reg[4]~23\);

-- Location: FF_X23_Y21_N11
\Bloco_de_Operacao|regsoma|Q_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|regsoma|Q_reg[4]~22_combout\,
	sclr => \Bloco_de_Controle|estadoAtual.S1~q\,
	ena => \Bloco_de_Controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|regsoma|Q_reg\(4));

-- Location: LCCOMB_X24_Y21_N8
\Bloco_de_Operacao|SAD_reg|Q_reg[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|SAD_reg|Q_reg[4]~feeder_combout\ = \Bloco_de_Operacao|regsoma|Q_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Bloco_de_Operacao|regsoma|Q_reg\(4),
	combout => \Bloco_de_Operacao|SAD_reg|Q_reg[4]~feeder_combout\);

-- Location: FF_X24_Y21_N9
\Bloco_de_Operacao|SAD_reg|Q_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|SAD_reg|Q_reg[4]~feeder_combout\,
	ena => \Bloco_de_Controle|estadoAtual.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|SAD_reg|Q_reg\(4));

-- Location: LCCOMB_X23_Y21_N12
\Bloco_de_Operacao|regsoma|Q_reg[5]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|regsoma|Q_reg[5]~24_combout\ = (\Bloco_de_Operacao|Adder2|s[5]~10_combout\ & ((\Bloco_de_Operacao|regsoma|Q_reg\(5) & (\Bloco_de_Operacao|regsoma|Q_reg[4]~23\ & VCC)) # (!\Bloco_de_Operacao|regsoma|Q_reg\(5) & 
-- (!\Bloco_de_Operacao|regsoma|Q_reg[4]~23\)))) # (!\Bloco_de_Operacao|Adder2|s[5]~10_combout\ & ((\Bloco_de_Operacao|regsoma|Q_reg\(5) & (!\Bloco_de_Operacao|regsoma|Q_reg[4]~23\)) # (!\Bloco_de_Operacao|regsoma|Q_reg\(5) & 
-- ((\Bloco_de_Operacao|regsoma|Q_reg[4]~23\) # (GND)))))
-- \Bloco_de_Operacao|regsoma|Q_reg[5]~25\ = CARRY((\Bloco_de_Operacao|Adder2|s[5]~10_combout\ & (!\Bloco_de_Operacao|regsoma|Q_reg\(5) & !\Bloco_de_Operacao|regsoma|Q_reg[4]~23\)) # (!\Bloco_de_Operacao|Adder2|s[5]~10_combout\ & 
-- ((!\Bloco_de_Operacao|regsoma|Q_reg[4]~23\) # (!\Bloco_de_Operacao|regsoma|Q_reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Adder2|s[5]~10_combout\,
	datab => \Bloco_de_Operacao|regsoma|Q_reg\(5),
	datad => VCC,
	cin => \Bloco_de_Operacao|regsoma|Q_reg[4]~23\,
	combout => \Bloco_de_Operacao|regsoma|Q_reg[5]~24_combout\,
	cout => \Bloco_de_Operacao|regsoma|Q_reg[5]~25\);

-- Location: FF_X23_Y21_N13
\Bloco_de_Operacao|regsoma|Q_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|regsoma|Q_reg[5]~24_combout\,
	sclr => \Bloco_de_Controle|estadoAtual.S1~q\,
	ena => \Bloco_de_Controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|regsoma|Q_reg\(5));

-- Location: LCCOMB_X24_Y21_N2
\Bloco_de_Operacao|SAD_reg|Q_reg[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|SAD_reg|Q_reg[5]~feeder_combout\ = \Bloco_de_Operacao|regsoma|Q_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Bloco_de_Operacao|regsoma|Q_reg\(5),
	combout => \Bloco_de_Operacao|SAD_reg|Q_reg[5]~feeder_combout\);

-- Location: FF_X24_Y21_N3
\Bloco_de_Operacao|SAD_reg|Q_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|SAD_reg|Q_reg[5]~feeder_combout\,
	ena => \Bloco_de_Controle|estadoAtual.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|SAD_reg|Q_reg\(5));

-- Location: LCCOMB_X23_Y21_N14
\Bloco_de_Operacao|regsoma|Q_reg[6]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|regsoma|Q_reg[6]~26_combout\ = ((\Bloco_de_Operacao|Adder2|s[6]~12_combout\ $ (\Bloco_de_Operacao|regsoma|Q_reg\(6) $ (!\Bloco_de_Operacao|regsoma|Q_reg[5]~25\)))) # (GND)
-- \Bloco_de_Operacao|regsoma|Q_reg[6]~27\ = CARRY((\Bloco_de_Operacao|Adder2|s[6]~12_combout\ & ((\Bloco_de_Operacao|regsoma|Q_reg\(6)) # (!\Bloco_de_Operacao|regsoma|Q_reg[5]~25\))) # (!\Bloco_de_Operacao|Adder2|s[6]~12_combout\ & 
-- (\Bloco_de_Operacao|regsoma|Q_reg\(6) & !\Bloco_de_Operacao|regsoma|Q_reg[5]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Adder2|s[6]~12_combout\,
	datab => \Bloco_de_Operacao|regsoma|Q_reg\(6),
	datad => VCC,
	cin => \Bloco_de_Operacao|regsoma|Q_reg[5]~25\,
	combout => \Bloco_de_Operacao|regsoma|Q_reg[6]~26_combout\,
	cout => \Bloco_de_Operacao|regsoma|Q_reg[6]~27\);

-- Location: FF_X23_Y21_N15
\Bloco_de_Operacao|regsoma|Q_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|regsoma|Q_reg[6]~26_combout\,
	sclr => \Bloco_de_Controle|estadoAtual.S1~q\,
	ena => \Bloco_de_Controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|regsoma|Q_reg\(6));

-- Location: LCCOMB_X24_Y21_N12
\Bloco_de_Operacao|SAD_reg|Q_reg[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|SAD_reg|Q_reg[6]~feeder_combout\ = \Bloco_de_Operacao|regsoma|Q_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Bloco_de_Operacao|regsoma|Q_reg\(6),
	combout => \Bloco_de_Operacao|SAD_reg|Q_reg[6]~feeder_combout\);

-- Location: FF_X24_Y21_N13
\Bloco_de_Operacao|SAD_reg|Q_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|SAD_reg|Q_reg[6]~feeder_combout\,
	ena => \Bloco_de_Controle|estadoAtual.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|SAD_reg|Q_reg\(6));

-- Location: LCCOMB_X23_Y21_N16
\Bloco_de_Operacao|regsoma|Q_reg[7]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|regsoma|Q_reg[7]~28_combout\ = (\Bloco_de_Operacao|Adder2|s[7]~14_combout\ & ((\Bloco_de_Operacao|regsoma|Q_reg\(7) & (\Bloco_de_Operacao|regsoma|Q_reg[6]~27\ & VCC)) # (!\Bloco_de_Operacao|regsoma|Q_reg\(7) & 
-- (!\Bloco_de_Operacao|regsoma|Q_reg[6]~27\)))) # (!\Bloco_de_Operacao|Adder2|s[7]~14_combout\ & ((\Bloco_de_Operacao|regsoma|Q_reg\(7) & (!\Bloco_de_Operacao|regsoma|Q_reg[6]~27\)) # (!\Bloco_de_Operacao|regsoma|Q_reg\(7) & 
-- ((\Bloco_de_Operacao|regsoma|Q_reg[6]~27\) # (GND)))))
-- \Bloco_de_Operacao|regsoma|Q_reg[7]~29\ = CARRY((\Bloco_de_Operacao|Adder2|s[7]~14_combout\ & (!\Bloco_de_Operacao|regsoma|Q_reg\(7) & !\Bloco_de_Operacao|regsoma|Q_reg[6]~27\)) # (!\Bloco_de_Operacao|Adder2|s[7]~14_combout\ & 
-- ((!\Bloco_de_Operacao|regsoma|Q_reg[6]~27\) # (!\Bloco_de_Operacao|regsoma|Q_reg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Adder2|s[7]~14_combout\,
	datab => \Bloco_de_Operacao|regsoma|Q_reg\(7),
	datad => VCC,
	cin => \Bloco_de_Operacao|regsoma|Q_reg[6]~27\,
	combout => \Bloco_de_Operacao|regsoma|Q_reg[7]~28_combout\,
	cout => \Bloco_de_Operacao|regsoma|Q_reg[7]~29\);

-- Location: FF_X23_Y21_N17
\Bloco_de_Operacao|regsoma|Q_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|regsoma|Q_reg[7]~28_combout\,
	sclr => \Bloco_de_Controle|estadoAtual.S1~q\,
	ena => \Bloco_de_Controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|regsoma|Q_reg\(7));

-- Location: LCCOMB_X22_Y21_N30
\Bloco_de_Operacao|SAD_reg|Q_reg[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|SAD_reg|Q_reg[7]~feeder_combout\ = \Bloco_de_Operacao|regsoma|Q_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Bloco_de_Operacao|regsoma|Q_reg\(7),
	combout => \Bloco_de_Operacao|SAD_reg|Q_reg[7]~feeder_combout\);

-- Location: FF_X22_Y21_N31
\Bloco_de_Operacao|SAD_reg|Q_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|SAD_reg|Q_reg[7]~feeder_combout\,
	ena => \Bloco_de_Controle|estadoAtual.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|SAD_reg|Q_reg\(7));

-- Location: LCCOMB_X23_Y21_N18
\Bloco_de_Operacao|regsoma|Q_reg[8]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|regsoma|Q_reg[8]~30_combout\ = ((\Bloco_de_Operacao|Adder2|s[8]~16_combout\ $ (\Bloco_de_Operacao|regsoma|Q_reg\(8) $ (!\Bloco_de_Operacao|regsoma|Q_reg[7]~29\)))) # (GND)
-- \Bloco_de_Operacao|regsoma|Q_reg[8]~31\ = CARRY((\Bloco_de_Operacao|Adder2|s[8]~16_combout\ & ((\Bloco_de_Operacao|regsoma|Q_reg\(8)) # (!\Bloco_de_Operacao|regsoma|Q_reg[7]~29\))) # (!\Bloco_de_Operacao|Adder2|s[8]~16_combout\ & 
-- (\Bloco_de_Operacao|regsoma|Q_reg\(8) & !\Bloco_de_Operacao|regsoma|Q_reg[7]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Adder2|s[8]~16_combout\,
	datab => \Bloco_de_Operacao|regsoma|Q_reg\(8),
	datad => VCC,
	cin => \Bloco_de_Operacao|regsoma|Q_reg[7]~29\,
	combout => \Bloco_de_Operacao|regsoma|Q_reg[8]~30_combout\,
	cout => \Bloco_de_Operacao|regsoma|Q_reg[8]~31\);

-- Location: FF_X23_Y21_N19
\Bloco_de_Operacao|regsoma|Q_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|regsoma|Q_reg[8]~30_combout\,
	sclr => \Bloco_de_Controle|estadoAtual.S1~q\,
	ena => \Bloco_de_Controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|regsoma|Q_reg\(8));

-- Location: LCCOMB_X23_Y21_N30
\Bloco_de_Operacao|SAD_reg|Q_reg[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|SAD_reg|Q_reg[8]~feeder_combout\ = \Bloco_de_Operacao|regsoma|Q_reg\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Bloco_de_Operacao|regsoma|Q_reg\(8),
	combout => \Bloco_de_Operacao|SAD_reg|Q_reg[8]~feeder_combout\);

-- Location: FF_X23_Y21_N31
\Bloco_de_Operacao|SAD_reg|Q_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|SAD_reg|Q_reg[8]~feeder_combout\,
	ena => \Bloco_de_Controle|estadoAtual.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|SAD_reg|Q_reg\(8));

-- Location: IOIBUF_X18_Y0_N15
\sample_ori[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(15),
	o => \sample_ori[15]~input_o\);

-- Location: FF_X18_Y21_N25
\Bloco_de_Operacao|RegPA1|Q_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_ori[15]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPA1|Q_reg\(7));

-- Location: IOIBUF_X0_Y21_N8
\sample_ori[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(14),
	o => \sample_ori[14]~input_o\);

-- Location: LCCOMB_X18_Y21_N0
\Bloco_de_Operacao|RegPA1|Q_reg[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|RegPA1|Q_reg[6]~feeder_combout\ = \sample_ori[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sample_ori[14]~input_o\,
	combout => \Bloco_de_Operacao|RegPA1|Q_reg[6]~feeder_combout\);

-- Location: FF_X18_Y21_N1
\Bloco_de_Operacao|RegPA1|Q_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|RegPA1|Q_reg[6]~feeder_combout\,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPA1|Q_reg\(6));

-- Location: IOIBUF_X11_Y24_N15
\sample_ori[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(13),
	o => \sample_ori[13]~input_o\);

-- Location: FF_X18_Y21_N21
\Bloco_de_Operacao|RegPA1|Q_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_ori[13]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPA1|Q_reg\(5));

-- Location: IOIBUF_X0_Y18_N22
\sample_can[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(12),
	o => \sample_can[12]~input_o\);

-- Location: FF_X18_Y21_N19
\Bloco_de_Operacao|RegPB1|Q_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_can[12]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPB1|Q_reg\(4));

-- Location: IOIBUF_X9_Y24_N8
\sample_ori[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(11),
	o => \sample_ori[11]~input_o\);

-- Location: FF_X18_Y21_N17
\Bloco_de_Operacao|RegPA1|Q_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_ori[11]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPA1|Q_reg\(3));

-- Location: IOIBUF_X5_Y24_N8
\sample_can[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(10),
	o => \sample_can[10]~input_o\);

-- Location: FF_X18_Y21_N15
\Bloco_de_Operacao|RegPB1|Q_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sample_can[10]~input_o\,
	sload => VCC,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPB1|Q_reg\(2));

-- Location: IOIBUF_X7_Y0_N1
\sample_can[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_can(9),
	o => \sample_can[9]~input_o\);

-- Location: LCCOMB_X18_Y21_N2
\Bloco_de_Operacao|RegPB1|Q_reg[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|RegPB1|Q_reg[1]~feeder_combout\ = \sample_can[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sample_can[9]~input_o\,
	combout => \Bloco_de_Operacao|RegPB1|Q_reg[1]~feeder_combout\);

-- Location: FF_X18_Y21_N3
\Bloco_de_Operacao|RegPB1|Q_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|RegPB1|Q_reg[1]~feeder_combout\,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPB1|Q_reg\(1));

-- Location: IOIBUF_X0_Y5_N15
\sample_ori[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_ori(8),
	o => \sample_ori[8]~input_o\);

-- Location: LCCOMB_X18_Y21_N28
\Bloco_de_Operacao|RegPA1|Q_reg[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|RegPA1|Q_reg[0]~feeder_combout\ = \sample_ori[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sample_ori[8]~input_o\,
	combout => \Bloco_de_Operacao|RegPA1|Q_reg[0]~feeder_combout\);

-- Location: FF_X18_Y21_N29
\Bloco_de_Operacao|RegPA1|Q_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|RegPA1|Q_reg[0]~feeder_combout\,
	ena => \Bloco_de_Controle|estadoAtual.S3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|RegPA1|Q_reg\(0));

-- Location: LCCOMB_X18_Y21_N10
\Bloco_de_Operacao|Subtrator1|s[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Subtrator1|s[0]~0_combout\ = (\Bloco_de_Operacao|RegPB1|Q_reg\(0) & (\Bloco_de_Operacao|RegPA1|Q_reg\(0) $ (VCC))) # (!\Bloco_de_Operacao|RegPB1|Q_reg\(0) & ((\Bloco_de_Operacao|RegPA1|Q_reg\(0)) # (GND)))
-- \Bloco_de_Operacao|Subtrator1|s[0]~1\ = CARRY((\Bloco_de_Operacao|RegPA1|Q_reg\(0)) # (!\Bloco_de_Operacao|RegPB1|Q_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|RegPB1|Q_reg\(0),
	datab => \Bloco_de_Operacao|RegPA1|Q_reg\(0),
	datad => VCC,
	combout => \Bloco_de_Operacao|Subtrator1|s[0]~0_combout\,
	cout => \Bloco_de_Operacao|Subtrator1|s[0]~1\);

-- Location: LCCOMB_X18_Y21_N12
\Bloco_de_Operacao|Subtrator1|s[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Subtrator1|s[1]~2_combout\ = (\Bloco_de_Operacao|RegPA1|Q_reg\(1) & ((\Bloco_de_Operacao|RegPB1|Q_reg\(1) & (!\Bloco_de_Operacao|Subtrator1|s[0]~1\)) # (!\Bloco_de_Operacao|RegPB1|Q_reg\(1) & (\Bloco_de_Operacao|Subtrator1|s[0]~1\ & 
-- VCC)))) # (!\Bloco_de_Operacao|RegPA1|Q_reg\(1) & ((\Bloco_de_Operacao|RegPB1|Q_reg\(1) & ((\Bloco_de_Operacao|Subtrator1|s[0]~1\) # (GND))) # (!\Bloco_de_Operacao|RegPB1|Q_reg\(1) & (!\Bloco_de_Operacao|Subtrator1|s[0]~1\))))
-- \Bloco_de_Operacao|Subtrator1|s[1]~3\ = CARRY((\Bloco_de_Operacao|RegPA1|Q_reg\(1) & (\Bloco_de_Operacao|RegPB1|Q_reg\(1) & !\Bloco_de_Operacao|Subtrator1|s[0]~1\)) # (!\Bloco_de_Operacao|RegPA1|Q_reg\(1) & ((\Bloco_de_Operacao|RegPB1|Q_reg\(1)) # 
-- (!\Bloco_de_Operacao|Subtrator1|s[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|RegPA1|Q_reg\(1),
	datab => \Bloco_de_Operacao|RegPB1|Q_reg\(1),
	datad => VCC,
	cin => \Bloco_de_Operacao|Subtrator1|s[0]~1\,
	combout => \Bloco_de_Operacao|Subtrator1|s[1]~2_combout\,
	cout => \Bloco_de_Operacao|Subtrator1|s[1]~3\);

-- Location: LCCOMB_X18_Y21_N14
\Bloco_de_Operacao|Subtrator1|s[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Subtrator1|s[2]~4_combout\ = ((\Bloco_de_Operacao|RegPA1|Q_reg\(2) $ (\Bloco_de_Operacao|RegPB1|Q_reg\(2) $ (\Bloco_de_Operacao|Subtrator1|s[1]~3\)))) # (GND)
-- \Bloco_de_Operacao|Subtrator1|s[2]~5\ = CARRY((\Bloco_de_Operacao|RegPA1|Q_reg\(2) & ((!\Bloco_de_Operacao|Subtrator1|s[1]~3\) # (!\Bloco_de_Operacao|RegPB1|Q_reg\(2)))) # (!\Bloco_de_Operacao|RegPA1|Q_reg\(2) & (!\Bloco_de_Operacao|RegPB1|Q_reg\(2) & 
-- !\Bloco_de_Operacao|Subtrator1|s[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|RegPA1|Q_reg\(2),
	datab => \Bloco_de_Operacao|RegPB1|Q_reg\(2),
	datad => VCC,
	cin => \Bloco_de_Operacao|Subtrator1|s[1]~3\,
	combout => \Bloco_de_Operacao|Subtrator1|s[2]~4_combout\,
	cout => \Bloco_de_Operacao|Subtrator1|s[2]~5\);

-- Location: LCCOMB_X18_Y21_N16
\Bloco_de_Operacao|Subtrator1|s[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Subtrator1|s[3]~6_combout\ = (\Bloco_de_Operacao|RegPB1|Q_reg\(3) & ((\Bloco_de_Operacao|RegPA1|Q_reg\(3) & (!\Bloco_de_Operacao|Subtrator1|s[2]~5\)) # (!\Bloco_de_Operacao|RegPA1|Q_reg\(3) & ((\Bloco_de_Operacao|Subtrator1|s[2]~5\) # 
-- (GND))))) # (!\Bloco_de_Operacao|RegPB1|Q_reg\(3) & ((\Bloco_de_Operacao|RegPA1|Q_reg\(3) & (\Bloco_de_Operacao|Subtrator1|s[2]~5\ & VCC)) # (!\Bloco_de_Operacao|RegPA1|Q_reg\(3) & (!\Bloco_de_Operacao|Subtrator1|s[2]~5\))))
-- \Bloco_de_Operacao|Subtrator1|s[3]~7\ = CARRY((\Bloco_de_Operacao|RegPB1|Q_reg\(3) & ((!\Bloco_de_Operacao|Subtrator1|s[2]~5\) # (!\Bloco_de_Operacao|RegPA1|Q_reg\(3)))) # (!\Bloco_de_Operacao|RegPB1|Q_reg\(3) & (!\Bloco_de_Operacao|RegPA1|Q_reg\(3) & 
-- !\Bloco_de_Operacao|Subtrator1|s[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|RegPB1|Q_reg\(3),
	datab => \Bloco_de_Operacao|RegPA1|Q_reg\(3),
	datad => VCC,
	cin => \Bloco_de_Operacao|Subtrator1|s[2]~5\,
	combout => \Bloco_de_Operacao|Subtrator1|s[3]~6_combout\,
	cout => \Bloco_de_Operacao|Subtrator1|s[3]~7\);

-- Location: LCCOMB_X18_Y21_N18
\Bloco_de_Operacao|Subtrator1|s[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Subtrator1|s[4]~8_combout\ = ((\Bloco_de_Operacao|RegPA1|Q_reg\(4) $ (\Bloco_de_Operacao|RegPB1|Q_reg\(4) $ (\Bloco_de_Operacao|Subtrator1|s[3]~7\)))) # (GND)
-- \Bloco_de_Operacao|Subtrator1|s[4]~9\ = CARRY((\Bloco_de_Operacao|RegPA1|Q_reg\(4) & ((!\Bloco_de_Operacao|Subtrator1|s[3]~7\) # (!\Bloco_de_Operacao|RegPB1|Q_reg\(4)))) # (!\Bloco_de_Operacao|RegPA1|Q_reg\(4) & (!\Bloco_de_Operacao|RegPB1|Q_reg\(4) & 
-- !\Bloco_de_Operacao|Subtrator1|s[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|RegPA1|Q_reg\(4),
	datab => \Bloco_de_Operacao|RegPB1|Q_reg\(4),
	datad => VCC,
	cin => \Bloco_de_Operacao|Subtrator1|s[3]~7\,
	combout => \Bloco_de_Operacao|Subtrator1|s[4]~8_combout\,
	cout => \Bloco_de_Operacao|Subtrator1|s[4]~9\);

-- Location: LCCOMB_X18_Y21_N20
\Bloco_de_Operacao|Subtrator1|s[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Subtrator1|s[5]~10_combout\ = (\Bloco_de_Operacao|RegPB1|Q_reg\(5) & ((\Bloco_de_Operacao|RegPA1|Q_reg\(5) & (!\Bloco_de_Operacao|Subtrator1|s[4]~9\)) # (!\Bloco_de_Operacao|RegPA1|Q_reg\(5) & ((\Bloco_de_Operacao|Subtrator1|s[4]~9\) # 
-- (GND))))) # (!\Bloco_de_Operacao|RegPB1|Q_reg\(5) & ((\Bloco_de_Operacao|RegPA1|Q_reg\(5) & (\Bloco_de_Operacao|Subtrator1|s[4]~9\ & VCC)) # (!\Bloco_de_Operacao|RegPA1|Q_reg\(5) & (!\Bloco_de_Operacao|Subtrator1|s[4]~9\))))
-- \Bloco_de_Operacao|Subtrator1|s[5]~11\ = CARRY((\Bloco_de_Operacao|RegPB1|Q_reg\(5) & ((!\Bloco_de_Operacao|Subtrator1|s[4]~9\) # (!\Bloco_de_Operacao|RegPA1|Q_reg\(5)))) # (!\Bloco_de_Operacao|RegPB1|Q_reg\(5) & (!\Bloco_de_Operacao|RegPA1|Q_reg\(5) & 
-- !\Bloco_de_Operacao|Subtrator1|s[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|RegPB1|Q_reg\(5),
	datab => \Bloco_de_Operacao|RegPA1|Q_reg\(5),
	datad => VCC,
	cin => \Bloco_de_Operacao|Subtrator1|s[4]~9\,
	combout => \Bloco_de_Operacao|Subtrator1|s[5]~10_combout\,
	cout => \Bloco_de_Operacao|Subtrator1|s[5]~11\);

-- Location: LCCOMB_X18_Y21_N22
\Bloco_de_Operacao|Subtrator1|s[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Subtrator1|s[6]~12_combout\ = ((\Bloco_de_Operacao|RegPB1|Q_reg\(6) $ (\Bloco_de_Operacao|RegPA1|Q_reg\(6) $ (\Bloco_de_Operacao|Subtrator1|s[5]~11\)))) # (GND)
-- \Bloco_de_Operacao|Subtrator1|s[6]~13\ = CARRY((\Bloco_de_Operacao|RegPB1|Q_reg\(6) & (\Bloco_de_Operacao|RegPA1|Q_reg\(6) & !\Bloco_de_Operacao|Subtrator1|s[5]~11\)) # (!\Bloco_de_Operacao|RegPB1|Q_reg\(6) & ((\Bloco_de_Operacao|RegPA1|Q_reg\(6)) # 
-- (!\Bloco_de_Operacao|Subtrator1|s[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|RegPB1|Q_reg\(6),
	datab => \Bloco_de_Operacao|RegPA1|Q_reg\(6),
	datad => VCC,
	cin => \Bloco_de_Operacao|Subtrator1|s[5]~11\,
	combout => \Bloco_de_Operacao|Subtrator1|s[6]~12_combout\,
	cout => \Bloco_de_Operacao|Subtrator1|s[6]~13\);

-- Location: LCCOMB_X18_Y21_N24
\Bloco_de_Operacao|Subtrator1|s[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Subtrator1|s[7]~14_combout\ = (\Bloco_de_Operacao|RegPB1|Q_reg\(7) & ((\Bloco_de_Operacao|RegPA1|Q_reg\(7) & (!\Bloco_de_Operacao|Subtrator1|s[6]~13\)) # (!\Bloco_de_Operacao|RegPA1|Q_reg\(7) & ((\Bloco_de_Operacao|Subtrator1|s[6]~13\) 
-- # (GND))))) # (!\Bloco_de_Operacao|RegPB1|Q_reg\(7) & ((\Bloco_de_Operacao|RegPA1|Q_reg\(7) & (\Bloco_de_Operacao|Subtrator1|s[6]~13\ & VCC)) # (!\Bloco_de_Operacao|RegPA1|Q_reg\(7) & (!\Bloco_de_Operacao|Subtrator1|s[6]~13\))))
-- \Bloco_de_Operacao|Subtrator1|s[7]~15\ = CARRY((\Bloco_de_Operacao|RegPB1|Q_reg\(7) & ((!\Bloco_de_Operacao|Subtrator1|s[6]~13\) # (!\Bloco_de_Operacao|RegPA1|Q_reg\(7)))) # (!\Bloco_de_Operacao|RegPB1|Q_reg\(7) & (!\Bloco_de_Operacao|RegPA1|Q_reg\(7) & 
-- !\Bloco_de_Operacao|Subtrator1|s[6]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|RegPB1|Q_reg\(7),
	datab => \Bloco_de_Operacao|RegPA1|Q_reg\(7),
	datad => VCC,
	cin => \Bloco_de_Operacao|Subtrator1|s[6]~13\,
	combout => \Bloco_de_Operacao|Subtrator1|s[7]~14_combout\,
	cout => \Bloco_de_Operacao|Subtrator1|s[7]~15\);

-- Location: LCCOMB_X18_Y21_N26
\Bloco_de_Operacao|Subtrator1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Subtrator1|Add0~0_combout\ = !\Bloco_de_Operacao|Subtrator1|s[7]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Bloco_de_Operacao|Subtrator1|s[7]~15\,
	combout => \Bloco_de_Operacao|Subtrator1|Add0~0_combout\);

-- Location: LCCOMB_X18_Y21_N6
\Bloco_de_Operacao|Absolute1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Absolute1|Add0~0_combout\ = \Bloco_de_Operacao|Subtrator1|s[0]~0_combout\ $ (\Bloco_de_Operacao|Subtrator1|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Bloco_de_Operacao|Subtrator1|s[0]~0_combout\,
	datad => \Bloco_de_Operacao|Subtrator1|Add0~0_combout\,
	combout => \Bloco_de_Operacao|Absolute1|Add0~0_combout\);

-- Location: LCCOMB_X19_Y21_N14
\Bloco_de_Operacao|Absolute1|Add0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Absolute1|Add0~7_combout\ = (\Bloco_de_Operacao|Absolute1|Add0~6\ & (\Bloco_de_Operacao|Subtrator1|Add0~0_combout\ $ ((\Bloco_de_Operacao|Subtrator1|s[3]~6_combout\)))) # (!\Bloco_de_Operacao|Absolute1|Add0~6\ & 
-- ((\Bloco_de_Operacao|Subtrator1|Add0~0_combout\ $ (!\Bloco_de_Operacao|Subtrator1|s[3]~6_combout\)) # (GND)))
-- \Bloco_de_Operacao|Absolute1|Add0~8\ = CARRY((\Bloco_de_Operacao|Subtrator1|Add0~0_combout\ $ (\Bloco_de_Operacao|Subtrator1|s[3]~6_combout\)) # (!\Bloco_de_Operacao|Absolute1|Add0~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Subtrator1|Add0~0_combout\,
	datab => \Bloco_de_Operacao|Subtrator1|s[3]~6_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Absolute1|Add0~6\,
	combout => \Bloco_de_Operacao|Absolute1|Add0~7_combout\,
	cout => \Bloco_de_Operacao|Absolute1|Add0~8\);

-- Location: LCCOMB_X19_Y21_N22
\Bloco_de_Operacao|Absolute1|Add0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Absolute1|Add0~15_combout\ = \Bloco_de_Operacao|Subtrator1|Add0~0_combout\ $ (\Bloco_de_Operacao|Absolute1|Add0~14\ $ (!\Bloco_de_Operacao|Subtrator1|s[7]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Subtrator1|Add0~0_combout\,
	datad => \Bloco_de_Operacao|Subtrator1|s[7]~14_combout\,
	cin => \Bloco_de_Operacao|Absolute1|Add0~14\,
	combout => \Bloco_de_Operacao|Absolute1|Add0~15_combout\);

-- Location: LCCOMB_X21_Y20_N10
\Bloco_de_Operacao|Absolute0|Add0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Absolute0|Add0~5_combout\ = (\Bloco_de_Operacao|Absolute0|Add0~4\ & ((\Bloco_de_Operacao|Subtrator0|s[2]~4_combout\ $ (!\Bloco_de_Operacao|Subtrator0|Add0~0_combout\)))) # (!\Bloco_de_Operacao|Absolute0|Add0~4\ & 
-- (\Bloco_de_Operacao|Subtrator0|s[2]~4_combout\ $ (\Bloco_de_Operacao|Subtrator0|Add0~0_combout\ $ (GND))))
-- \Bloco_de_Operacao|Absolute0|Add0~6\ = CARRY((!\Bloco_de_Operacao|Absolute0|Add0~4\ & (\Bloco_de_Operacao|Subtrator0|s[2]~4_combout\ $ (!\Bloco_de_Operacao|Subtrator0|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Subtrator0|s[2]~4_combout\,
	datab => \Bloco_de_Operacao|Subtrator0|Add0~0_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Absolute0|Add0~4\,
	combout => \Bloco_de_Operacao|Absolute0|Add0~5_combout\,
	cout => \Bloco_de_Operacao|Absolute0|Add0~6\);

-- Location: LCCOMB_X21_Y20_N14
\Bloco_de_Operacao|Absolute0|Add0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Absolute0|Add0~9_combout\ = (\Bloco_de_Operacao|Absolute0|Add0~8\ & ((\Bloco_de_Operacao|Subtrator0|s[4]~8_combout\ $ (!\Bloco_de_Operacao|Subtrator0|Add0~0_combout\)))) # (!\Bloco_de_Operacao|Absolute0|Add0~8\ & 
-- (\Bloco_de_Operacao|Subtrator0|s[4]~8_combout\ $ (\Bloco_de_Operacao|Subtrator0|Add0~0_combout\ $ (GND))))
-- \Bloco_de_Operacao|Absolute0|Add0~10\ = CARRY((!\Bloco_de_Operacao|Absolute0|Add0~8\ & (\Bloco_de_Operacao|Subtrator0|s[4]~8_combout\ $ (!\Bloco_de_Operacao|Subtrator0|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Subtrator0|s[4]~8_combout\,
	datab => \Bloco_de_Operacao|Subtrator0|Add0~0_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Absolute0|Add0~8\,
	combout => \Bloco_de_Operacao|Absolute0|Add0~9_combout\,
	cout => \Bloco_de_Operacao|Absolute0|Add0~10\);

-- Location: LCCOMB_X21_Y20_N16
\Bloco_de_Operacao|Absolute0|Add0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Absolute0|Add0~11_combout\ = (\Bloco_de_Operacao|Absolute0|Add0~10\ & (\Bloco_de_Operacao|Subtrator0|s[5]~10_combout\ $ ((\Bloco_de_Operacao|Subtrator0|Add0~0_combout\)))) # (!\Bloco_de_Operacao|Absolute0|Add0~10\ & 
-- ((\Bloco_de_Operacao|Subtrator0|s[5]~10_combout\ $ (!\Bloco_de_Operacao|Subtrator0|Add0~0_combout\)) # (GND)))
-- \Bloco_de_Operacao|Absolute0|Add0~12\ = CARRY((\Bloco_de_Operacao|Subtrator0|s[5]~10_combout\ $ (\Bloco_de_Operacao|Subtrator0|Add0~0_combout\)) # (!\Bloco_de_Operacao|Absolute0|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Subtrator0|s[5]~10_combout\,
	datab => \Bloco_de_Operacao|Subtrator0|Add0~0_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Absolute0|Add0~10\,
	combout => \Bloco_de_Operacao|Absolute0|Add0~11_combout\,
	cout => \Bloco_de_Operacao|Absolute0|Add0~12\);

-- Location: LCCOMB_X21_Y21_N18
\Bloco_de_Operacao|Adder0|s[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Adder0|s[7]~14_combout\ = (\Bloco_de_Operacao|Absolute0|Add0~15_combout\ & ((\Bloco_de_Operacao|Absolute1|Add0~15_combout\ & (\Bloco_de_Operacao|Adder0|s[6]~13\ & VCC)) # (!\Bloco_de_Operacao|Absolute1|Add0~15_combout\ & 
-- (!\Bloco_de_Operacao|Adder0|s[6]~13\)))) # (!\Bloco_de_Operacao|Absolute0|Add0~15_combout\ & ((\Bloco_de_Operacao|Absolute1|Add0~15_combout\ & (!\Bloco_de_Operacao|Adder0|s[6]~13\)) # (!\Bloco_de_Operacao|Absolute1|Add0~15_combout\ & 
-- ((\Bloco_de_Operacao|Adder0|s[6]~13\) # (GND)))))
-- \Bloco_de_Operacao|Adder0|s[7]~15\ = CARRY((\Bloco_de_Operacao|Absolute0|Add0~15_combout\ & (!\Bloco_de_Operacao|Absolute1|Add0~15_combout\ & !\Bloco_de_Operacao|Adder0|s[6]~13\)) # (!\Bloco_de_Operacao|Absolute0|Add0~15_combout\ & 
-- ((!\Bloco_de_Operacao|Adder0|s[6]~13\) # (!\Bloco_de_Operacao|Absolute1|Add0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Absolute0|Add0~15_combout\,
	datab => \Bloco_de_Operacao|Absolute1|Add0~15_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Adder0|s[6]~13\,
	combout => \Bloco_de_Operacao|Adder0|s[7]~14_combout\,
	cout => \Bloco_de_Operacao|Adder0|s[7]~15\);

-- Location: LCCOMB_X21_Y21_N20
\Bloco_de_Operacao|Adder0|cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Adder0|cout~0_combout\ = !\Bloco_de_Operacao|Adder0|s[7]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Bloco_de_Operacao|Adder0|s[7]~15\,
	combout => \Bloco_de_Operacao|Adder0|cout~0_combout\);

-- Location: LCCOMB_X24_Y22_N22
\Bloco_de_Operacao|Absolute3|Add0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Absolute3|Add0~9_combout\ = (\Bloco_de_Operacao|Absolute3|Add0~8\ & ((\Bloco_de_Operacao|Subtrator3|Add0~0_combout\ $ (!\Bloco_de_Operacao|Subtrator3|s[4]~8_combout\)))) # (!\Bloco_de_Operacao|Absolute3|Add0~8\ & 
-- (\Bloco_de_Operacao|Subtrator3|Add0~0_combout\ $ (\Bloco_de_Operacao|Subtrator3|s[4]~8_combout\ $ (GND))))
-- \Bloco_de_Operacao|Absolute3|Add0~10\ = CARRY((!\Bloco_de_Operacao|Absolute3|Add0~8\ & (\Bloco_de_Operacao|Subtrator3|Add0~0_combout\ $ (!\Bloco_de_Operacao|Subtrator3|s[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Subtrator3|Add0~0_combout\,
	datab => \Bloco_de_Operacao|Subtrator3|s[4]~8_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Absolute3|Add0~8\,
	combout => \Bloco_de_Operacao|Absolute3|Add0~9_combout\,
	cout => \Bloco_de_Operacao|Absolute3|Add0~10\);

-- Location: LCCOMB_X24_Y22_N24
\Bloco_de_Operacao|Absolute3|Add0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Absolute3|Add0~11_combout\ = (\Bloco_de_Operacao|Absolute3|Add0~10\ & (\Bloco_de_Operacao|Subtrator3|Add0~0_combout\ $ ((\Bloco_de_Operacao|Subtrator3|s[5]~10_combout\)))) # (!\Bloco_de_Operacao|Absolute3|Add0~10\ & 
-- ((\Bloco_de_Operacao|Subtrator3|Add0~0_combout\ $ (!\Bloco_de_Operacao|Subtrator3|s[5]~10_combout\)) # (GND)))
-- \Bloco_de_Operacao|Absolute3|Add0~12\ = CARRY((\Bloco_de_Operacao|Subtrator3|Add0~0_combout\ $ (\Bloco_de_Operacao|Subtrator3|s[5]~10_combout\)) # (!\Bloco_de_Operacao|Absolute3|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Subtrator3|Add0~0_combout\,
	datab => \Bloco_de_Operacao|Subtrator3|s[5]~10_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Absolute3|Add0~10\,
	combout => \Bloco_de_Operacao|Absolute3|Add0~11_combout\,
	cout => \Bloco_de_Operacao|Absolute3|Add0~12\);

-- Location: LCCOMB_X23_Y22_N8
\Bloco_de_Operacao|Adder1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Adder1|Add0~8_combout\ = ((\Bloco_de_Operacao|Absolute2|Add0~9_combout\ $ (\Bloco_de_Operacao|Absolute3|Add0~9_combout\ $ (!\Bloco_de_Operacao|Adder1|Add0~7\)))) # (GND)
-- \Bloco_de_Operacao|Adder1|Add0~9\ = CARRY((\Bloco_de_Operacao|Absolute2|Add0~9_combout\ & ((\Bloco_de_Operacao|Absolute3|Add0~9_combout\) # (!\Bloco_de_Operacao|Adder1|Add0~7\))) # (!\Bloco_de_Operacao|Absolute2|Add0~9_combout\ & 
-- (\Bloco_de_Operacao|Absolute3|Add0~9_combout\ & !\Bloco_de_Operacao|Adder1|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Absolute2|Add0~9_combout\,
	datab => \Bloco_de_Operacao|Absolute3|Add0~9_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Adder1|Add0~7\,
	combout => \Bloco_de_Operacao|Adder1|Add0~8_combout\,
	cout => \Bloco_de_Operacao|Adder1|Add0~9\);

-- Location: LCCOMB_X23_Y22_N10
\Bloco_de_Operacao|Adder1|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Adder1|Add0~10_combout\ = (\Bloco_de_Operacao|Absolute2|Add0~11_combout\ & ((\Bloco_de_Operacao|Absolute3|Add0~11_combout\ & (\Bloco_de_Operacao|Adder1|Add0~9\ & VCC)) # (!\Bloco_de_Operacao|Absolute3|Add0~11_combout\ & 
-- (!\Bloco_de_Operacao|Adder1|Add0~9\)))) # (!\Bloco_de_Operacao|Absolute2|Add0~11_combout\ & ((\Bloco_de_Operacao|Absolute3|Add0~11_combout\ & (!\Bloco_de_Operacao|Adder1|Add0~9\)) # (!\Bloco_de_Operacao|Absolute3|Add0~11_combout\ & 
-- ((\Bloco_de_Operacao|Adder1|Add0~9\) # (GND)))))
-- \Bloco_de_Operacao|Adder1|Add0~11\ = CARRY((\Bloco_de_Operacao|Absolute2|Add0~11_combout\ & (!\Bloco_de_Operacao|Absolute3|Add0~11_combout\ & !\Bloco_de_Operacao|Adder1|Add0~9\)) # (!\Bloco_de_Operacao|Absolute2|Add0~11_combout\ & 
-- ((!\Bloco_de_Operacao|Adder1|Add0~9\) # (!\Bloco_de_Operacao|Absolute3|Add0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|Absolute2|Add0~11_combout\,
	datab => \Bloco_de_Operacao|Absolute3|Add0~11_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|Adder1|Add0~9\,
	combout => \Bloco_de_Operacao|Adder1|Add0~10_combout\,
	cout => \Bloco_de_Operacao|Adder1|Add0~11\);

-- Location: LCCOMB_X22_Y21_N18
\Bloco_de_Operacao|Adder2|cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|Adder2|cout~0_combout\ = \Bloco_de_Operacao|Adder2|s[8]~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Bloco_de_Operacao|Adder2|s[8]~17\,
	combout => \Bloco_de_Operacao|Adder2|cout~0_combout\);

-- Location: LCCOMB_X23_Y21_N20
\Bloco_de_Operacao|regsoma|Q_reg[9]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|regsoma|Q_reg[9]~32_combout\ = (\Bloco_de_Operacao|regsoma|Q_reg\(9) & ((\Bloco_de_Operacao|Adder2|cout~0_combout\ & (\Bloco_de_Operacao|regsoma|Q_reg[8]~31\ & VCC)) # (!\Bloco_de_Operacao|Adder2|cout~0_combout\ & 
-- (!\Bloco_de_Operacao|regsoma|Q_reg[8]~31\)))) # (!\Bloco_de_Operacao|regsoma|Q_reg\(9) & ((\Bloco_de_Operacao|Adder2|cout~0_combout\ & (!\Bloco_de_Operacao|regsoma|Q_reg[8]~31\)) # (!\Bloco_de_Operacao|Adder2|cout~0_combout\ & 
-- ((\Bloco_de_Operacao|regsoma|Q_reg[8]~31\) # (GND)))))
-- \Bloco_de_Operacao|regsoma|Q_reg[9]~33\ = CARRY((\Bloco_de_Operacao|regsoma|Q_reg\(9) & (!\Bloco_de_Operacao|Adder2|cout~0_combout\ & !\Bloco_de_Operacao|regsoma|Q_reg[8]~31\)) # (!\Bloco_de_Operacao|regsoma|Q_reg\(9) & 
-- ((!\Bloco_de_Operacao|regsoma|Q_reg[8]~31\) # (!\Bloco_de_Operacao|Adder2|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|regsoma|Q_reg\(9),
	datab => \Bloco_de_Operacao|Adder2|cout~0_combout\,
	datad => VCC,
	cin => \Bloco_de_Operacao|regsoma|Q_reg[8]~31\,
	combout => \Bloco_de_Operacao|regsoma|Q_reg[9]~32_combout\,
	cout => \Bloco_de_Operacao|regsoma|Q_reg[9]~33\);

-- Location: FF_X23_Y21_N21
\Bloco_de_Operacao|regsoma|Q_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|regsoma|Q_reg[9]~32_combout\,
	sclr => \Bloco_de_Controle|estadoAtual.S1~q\,
	ena => \Bloco_de_Controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|regsoma|Q_reg\(9));

-- Location: LCCOMB_X24_Y21_N22
\Bloco_de_Operacao|SAD_reg|Q_reg[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|SAD_reg|Q_reg[9]~feeder_combout\ = \Bloco_de_Operacao|regsoma|Q_reg\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Bloco_de_Operacao|regsoma|Q_reg\(9),
	combout => \Bloco_de_Operacao|SAD_reg|Q_reg[9]~feeder_combout\);

-- Location: FF_X24_Y21_N23
\Bloco_de_Operacao|SAD_reg|Q_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|SAD_reg|Q_reg[9]~feeder_combout\,
	ena => \Bloco_de_Controle|estadoAtual.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|SAD_reg|Q_reg\(9));

-- Location: LCCOMB_X23_Y21_N22
\Bloco_de_Operacao|regsoma|Q_reg[10]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|regsoma|Q_reg[10]~34_combout\ = (\Bloco_de_Operacao|regsoma|Q_reg\(10) & (\Bloco_de_Operacao|regsoma|Q_reg[9]~33\ $ (GND))) # (!\Bloco_de_Operacao|regsoma|Q_reg\(10) & (!\Bloco_de_Operacao|regsoma|Q_reg[9]~33\ & VCC))
-- \Bloco_de_Operacao|regsoma|Q_reg[10]~35\ = CARRY((\Bloco_de_Operacao|regsoma|Q_reg\(10) & !\Bloco_de_Operacao|regsoma|Q_reg[9]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|regsoma|Q_reg\(10),
	datad => VCC,
	cin => \Bloco_de_Operacao|regsoma|Q_reg[9]~33\,
	combout => \Bloco_de_Operacao|regsoma|Q_reg[10]~34_combout\,
	cout => \Bloco_de_Operacao|regsoma|Q_reg[10]~35\);

-- Location: FF_X23_Y21_N23
\Bloco_de_Operacao|regsoma|Q_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|regsoma|Q_reg[10]~34_combout\,
	sclr => \Bloco_de_Controle|estadoAtual.S1~q\,
	ena => \Bloco_de_Controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|regsoma|Q_reg\(10));

-- Location: LCCOMB_X24_Y21_N0
\Bloco_de_Operacao|SAD_reg|Q_reg[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|SAD_reg|Q_reg[10]~feeder_combout\ = \Bloco_de_Operacao|regsoma|Q_reg\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Bloco_de_Operacao|regsoma|Q_reg\(10),
	combout => \Bloco_de_Operacao|SAD_reg|Q_reg[10]~feeder_combout\);

-- Location: FF_X24_Y21_N1
\Bloco_de_Operacao|SAD_reg|Q_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|SAD_reg|Q_reg[10]~feeder_combout\,
	ena => \Bloco_de_Controle|estadoAtual.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|SAD_reg|Q_reg\(10));

-- Location: LCCOMB_X23_Y21_N24
\Bloco_de_Operacao|regsoma|Q_reg[11]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|regsoma|Q_reg[11]~36_combout\ = (\Bloco_de_Operacao|regsoma|Q_reg\(11) & (!\Bloco_de_Operacao|regsoma|Q_reg[10]~35\)) # (!\Bloco_de_Operacao|regsoma|Q_reg\(11) & ((\Bloco_de_Operacao|regsoma|Q_reg[10]~35\) # (GND)))
-- \Bloco_de_Operacao|regsoma|Q_reg[11]~37\ = CARRY((!\Bloco_de_Operacao|regsoma|Q_reg[10]~35\) # (!\Bloco_de_Operacao|regsoma|Q_reg\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Bloco_de_Operacao|regsoma|Q_reg\(11),
	datad => VCC,
	cin => \Bloco_de_Operacao|regsoma|Q_reg[10]~35\,
	combout => \Bloco_de_Operacao|regsoma|Q_reg[11]~36_combout\,
	cout => \Bloco_de_Operacao|regsoma|Q_reg[11]~37\);

-- Location: FF_X23_Y21_N25
\Bloco_de_Operacao|regsoma|Q_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|regsoma|Q_reg[11]~36_combout\,
	sclr => \Bloco_de_Controle|estadoAtual.S1~q\,
	ena => \Bloco_de_Controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|regsoma|Q_reg\(11));

-- Location: LCCOMB_X24_Y21_N6
\Bloco_de_Operacao|SAD_reg|Q_reg[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|SAD_reg|Q_reg[11]~feeder_combout\ = \Bloco_de_Operacao|regsoma|Q_reg\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Bloco_de_Operacao|regsoma|Q_reg\(11),
	combout => \Bloco_de_Operacao|SAD_reg|Q_reg[11]~feeder_combout\);

-- Location: FF_X24_Y21_N7
\Bloco_de_Operacao|SAD_reg|Q_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|SAD_reg|Q_reg[11]~feeder_combout\,
	ena => \Bloco_de_Controle|estadoAtual.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|SAD_reg|Q_reg\(11));

-- Location: LCCOMB_X23_Y21_N26
\Bloco_de_Operacao|regsoma|Q_reg[12]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|regsoma|Q_reg[12]~38_combout\ = (\Bloco_de_Operacao|regsoma|Q_reg\(12) & (\Bloco_de_Operacao|regsoma|Q_reg[11]~37\ $ (GND))) # (!\Bloco_de_Operacao|regsoma|Q_reg\(12) & (!\Bloco_de_Operacao|regsoma|Q_reg[11]~37\ & VCC))
-- \Bloco_de_Operacao|regsoma|Q_reg[12]~39\ = CARRY((\Bloco_de_Operacao|regsoma|Q_reg\(12) & !\Bloco_de_Operacao|regsoma|Q_reg[11]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bloco_de_Operacao|regsoma|Q_reg\(12),
	datad => VCC,
	cin => \Bloco_de_Operacao|regsoma|Q_reg[11]~37\,
	combout => \Bloco_de_Operacao|regsoma|Q_reg[12]~38_combout\,
	cout => \Bloco_de_Operacao|regsoma|Q_reg[12]~39\);

-- Location: FF_X23_Y21_N27
\Bloco_de_Operacao|regsoma|Q_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|regsoma|Q_reg[12]~38_combout\,
	sclr => \Bloco_de_Controle|estadoAtual.S1~q\,
	ena => \Bloco_de_Controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|regsoma|Q_reg\(12));

-- Location: LCCOMB_X22_Y21_N24
\Bloco_de_Operacao|SAD_reg|Q_reg[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|SAD_reg|Q_reg[12]~feeder_combout\ = \Bloco_de_Operacao|regsoma|Q_reg\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Bloco_de_Operacao|regsoma|Q_reg\(12),
	combout => \Bloco_de_Operacao|SAD_reg|Q_reg[12]~feeder_combout\);

-- Location: FF_X22_Y21_N25
\Bloco_de_Operacao|SAD_reg|Q_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|SAD_reg|Q_reg[12]~feeder_combout\,
	ena => \Bloco_de_Controle|estadoAtual.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|SAD_reg|Q_reg\(12));

-- Location: LCCOMB_X23_Y21_N28
\Bloco_de_Operacao|regsoma|Q_reg[13]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|regsoma|Q_reg[13]~40_combout\ = \Bloco_de_Operacao|regsoma|Q_reg[12]~39\ $ (\Bloco_de_Operacao|regsoma|Q_reg\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Bloco_de_Operacao|regsoma|Q_reg\(13),
	cin => \Bloco_de_Operacao|regsoma|Q_reg[12]~39\,
	combout => \Bloco_de_Operacao|regsoma|Q_reg[13]~40_combout\);

-- Location: FF_X23_Y21_N29
\Bloco_de_Operacao|regsoma|Q_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|regsoma|Q_reg[13]~40_combout\,
	sclr => \Bloco_de_Controle|estadoAtual.S1~q\,
	ena => \Bloco_de_Controle|csoma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|regsoma|Q_reg\(13));

-- Location: LCCOMB_X22_Y21_N26
\Bloco_de_Operacao|SAD_reg|Q_reg[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Operacao|SAD_reg|Q_reg[13]~feeder_combout\ = \Bloco_de_Operacao|regsoma|Q_reg\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Bloco_de_Operacao|regsoma|Q_reg\(13),
	combout => \Bloco_de_Operacao|SAD_reg|Q_reg[13]~feeder_combout\);

-- Location: FF_X22_Y21_N27
\Bloco_de_Operacao|SAD_reg|Q_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Operacao|SAD_reg|Q_reg[13]~feeder_combout\,
	ena => \Bloco_de_Controle|estadoAtual.S5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Operacao|SAD_reg|Q_reg\(13));

-- Location: LCCOMB_X24_Y20_N6
\Bloco_de_Controle|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bloco_de_Controle|Selector6~0_combout\ = (!\Bloco_de_Controle|estadoAtual.S5~q\ & ((\Bloco_de_Controle|estadoAtual.S0~q\) # (\enable~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Bloco_de_Controle|estadoAtual.S5~q\,
	datac => \Bloco_de_Controle|estadoAtual.S0~q\,
	datad => \enable~input_o\,
	combout => \Bloco_de_Controle|Selector6~0_combout\);

-- Location: FF_X24_Y20_N7
\Bloco_de_Controle|estadoAtual.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Bloco_de_Controle|Selector6~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bloco_de_Controle|estadoAtual.S0~q\);

ww_read_mem <= \read_mem~output_o\;

ww_address(0) <= \address[0]~output_o\;

ww_address(1) <= \address[1]~output_o\;

ww_address(2) <= \address[2]~output_o\;

ww_address(3) <= \address[3]~output_o\;

ww_sad_value(0) <= \sad_value[0]~output_o\;

ww_sad_value(1) <= \sad_value[1]~output_o\;

ww_sad_value(2) <= \sad_value[2]~output_o\;

ww_sad_value(3) <= \sad_value[3]~output_o\;

ww_sad_value(4) <= \sad_value[4]~output_o\;

ww_sad_value(5) <= \sad_value[5]~output_o\;

ww_sad_value(6) <= \sad_value[6]~output_o\;

ww_sad_value(7) <= \sad_value[7]~output_o\;

ww_sad_value(8) <= \sad_value[8]~output_o\;

ww_sad_value(9) <= \sad_value[9]~output_o\;

ww_sad_value(10) <= \sad_value[10]~output_o\;

ww_sad_value(11) <= \sad_value[11]~output_o\;

ww_sad_value(12) <= \sad_value[12]~output_o\;

ww_sad_value(13) <= \sad_value[13]~output_o\;

ww_done <= \done~output_o\;
END structure;


