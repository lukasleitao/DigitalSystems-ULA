----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:25:13 09/21/2018 
-- Design Name: 
-- Module Name:    incrementador - incrementadorArch 
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

entity incrementador is

    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           S : out  STD_LOGIC_VECTOR (3 downto 0));
			  
end incrementador;

architecture incrementadorArch of incrementador is

	component fourBitsAdder

		Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
             B : in  STD_LOGIC_VECTOR (3 downto 0);
             Cin : in  STD_LOGIC;
             S : out  STD_LOGIC_VECTOR (3 downto 0);
             Cout : out  std_logic;
			    OV : out std_logic   );
	end component;
	
begin

	incrementa1: fourBitsAdder port map (A, "0000", '1', S); 

end incrementadorArch;

