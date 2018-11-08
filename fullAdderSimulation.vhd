--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:52:36 09/15/2018
-- Design Name:   
-- Module Name:   C:/Users/nando/Desktop/UFRJ/6 periodo/SD/LAB/PrimeiroTrabalho/full_Adder/fullAdderSimulation.vhd
-- Project Name:  full_Adder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fullAdder
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY fullAdderSimulation IS
END fullAdderSimulation;
 
ARCHITECTURE behavior OF fullAdderSimulation IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fullAdder
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Cin : IN  std_logic;
         S : OUT  std_logic;
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal Cin : std_logic := '0';
	signal vector: std_logic_vector(2 downto 0):= "000";

 	--Outputs
   signal S : std_logic;
   signal Cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 10 ns;
	signal clock: std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fullAdder PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          S => S,
          Cout => Cout
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_period*10;
		
		
	   for I in 0 to 7 loop
			
			vector <= std_logic_vector(to_unsigned( I,vector'length));
			
			A<=vector(2);
			B<=vector(1);
			Cin<=vector(0);
			
			wait for clock_period;

			
		end loop;
		
			A<=vector(2);
			B<=vector(1);
			Cin<=vector(0);
			
				
			
			

    --  insert stimulus here 
	--	 A<='0';
		-- B<='0';
		-- Cin<='0';
		 --wait for clock_period;
		 

		 
		 
		 

      wait;
   end process;

END;
