----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:02:41 09/20/2018 
-- Design Name: 
-- Module Name:    eightBitsAdder - eightBitsArch 
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

entity eightBitsAdder is
	Port (	A : in std_logic_vector ( 7 downto 0);
				B : in std_logic_vector ( 7 downto 0);
				Cin: in std_logic;
            S : out  STD_LOGIC_VECTOR (7 downto 0);
            Cout : out  std_logic);
		--	   OV : out std_logic);
		
		-- Sem overflow porque essa funcionalidade não interessa no projeto
		-- Só foi criado essa source para ajudar na função de multiplicar
				
end eightBitsAdder;

architecture eightBitsArch of eightBitsAdder is
	signal cout_signal: std_logic_vector(2 downto 1);
	
	component fourBitsAdder 
		port (A,B: in std_logic_vector (3 downto 0);
				Cin: in std_logic;
				S	: out std_logic_vector (3 downto 0);
				Cout: out std_logic;
				OV : out std_logic );
				
		-- o OV será deixado aberto pois não precisará ser usado
		
	end component;

begin
	
	fourBitsAdder01: fourBitsAdder port map 
	(A(3 downto 0), B(3 downto 0), Cin, S(3 downto 0), cout_signal(1));
	
	fourBitsAdder02: fourBitsAdder port map 
	(A(7 downto 4), B(7 downto 4), cout_signal(1), S(7 downto 4), cout_signal(2));
	
	Cout <= cout_signal(2);

end eightBitsArch;

