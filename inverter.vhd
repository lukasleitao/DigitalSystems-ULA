----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:05:21 09/22/2018 
-- Design Name: 
-- Module Name:    inverter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
entity Inverter is
    Port ( X : in  STD_LOGIC_VECTOR (3 downto 0);
           Xbar : out  STD_LOGIC_VECTOR (3 downto 0));
end Inverter;

architecture Behavioral of Inverter is

begin	 
			Xbar(0) <=  not X(0);
			Xbar(1) <=  not X(1);
			Xbar(2) <=  not X(2);
			Xbar(3) <=  not X(3);	
			
end Behavioral;

