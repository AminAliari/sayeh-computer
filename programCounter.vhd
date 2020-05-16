-- Amin Aliari - 9431066

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

ENTITY ProgramCounter IS
	PORT (
		EnablePC : IN std_logic;
		input: IN std_logic_vector (15 DOWNTO 0);
		clk : IN std_logic;
	output: OUT std_logic_vector (15 DOWNTO 0)
	);
END ProgramCounter;

ARCHITECTURE dataflow OF ProgramCounter IS BEGIN
	PROCESS (clk) BEGIN
		IF (clk = '1') THEN
			IF (EnablePC = '1') THEN
				output <= input;
		END IF;
		END IF;
	END PROCESS;
END dataflow;
