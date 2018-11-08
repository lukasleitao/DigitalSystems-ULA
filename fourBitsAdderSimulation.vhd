--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:43:36 09/16/2018
-- Design Name:   
-- Module Name:   C:/Users/nando/Desktop/UFRJ/6 periodo/SD/LAB/PrimeiroTrabalho/full_Adder/fourBitsAdderSimulation.vhd
-- Project Name:  full_Adder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fourBitsAdder
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
 
ENTITY fourBitsAdderSimulation IS
END fourBitsAdderSimulation;
 
ARCHITECTURE behavior OF fourBitsAdderSimulation IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fourBitsAdder
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Cin : IN  std_logic;
         S : OUT  std_logic_vector(3 downto 0);
         Cout : OUT  std_logic;
         OV : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal Cin : std_logic := '0';
	signal vectorBinarioA: std_logic_vector(3 downto 0):= "0000";
	signal vectorBinarioB: std_logic_vector(3 downto 0):= "0000";

 	--Outputs
   signal S : std_logic_vector(3 downto 0);
   signal Cout : std_logic;
   signal OV : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 10 ns;
	signal clock: std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fourBitsAdder PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          S => S,
          Cout => Cout,
          OV => OV
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
		

      -- insert stimulus here 
		   for J in 1 to 15 loop
				vectorBinarioB <= std_logic_vector(to_unsigned(J, vectorBinarioB'length));
				B(3) <= vectorBinarioB(3);
				B(2) <= vectorBinarioB(2);
				B(1) <= vectorBinarioB(1);
				B(0)<=vectorBinarioB(0);
			

				wait for clock_period;
			
				for I in 1 to 15 loop
					vectorBinarioA <= std_logic_vector(to_unsigned(I, vectorBinarioA'length));
					wait for clock_period;
					A(3) <= vectorBinarioA(3);
					A(2) <= vectorBinarioA(2);
					A(1) <= vectorBinarioA(1);
					A(0)<=vectorBinarioA(0);
			
	
		 
					wait for clock_period;
				end loop;
			
			wait for clock_period;
			
			end loop;
			
			
		
		
		
		
		
		 
			--	for J in 0 to 15 loop
			
				--	vectorBinarioB <= std_logic_vector(to_unsigned( J,vectorBinarioB'length));
				--	B(3) <= vectorBinarioB(3);
					--B(2) <= vectorBinarioB(2);
				--	B(1) <= vectorBinarioB(1);
				--	B(0) <= vectorBinarioB(0);
				 --	wait for clock_period;
				--end loop;	
			--wait for clock_period;
			
		
		
		

      wait;
   end process;

END;
