----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:04:01 09/22/2018 
-- Design Name: 
-- Module Name:    fourBitsSubstractor - Behavioral 
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
--use UNISIM.VComponents.all;entity fourBitsSubtractor is

entity fourBitsSubtractor is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           Borrow : out  STD_LOGIC;
			  OV : out std_logic);
end fourBitsSubtractor;

architecture Behavioral of fourBitsSubtractor is
	signal Binvertido: std_logic_vector(3 downto 0);	
	signal Coutt: std_logic;
	
	component inverter
		port (X: in STD_LOGIC_VECTOR (3 downto 0);
				 Xbar: out STD_LOGIC_VECTOR (3 downto 0) );
	end component;
	
	component fourBitsAdder
		port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out  std_logic;
			  OV : out std_logic   );

	end component;


begin

	Inversor: inverter port map (B,Binvertido);
	SUB: fourBitsAdder port map (A,Binvertido,'1',S, Coutt, OV);
	Borrow <= not Coutt;

end Behavioral;