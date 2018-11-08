----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:42:09 09/30/2018 
-- Design Name: 
-- Module Name:    contador - hardware 
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

entity contador is
	port ( load : in bit;
			 clk	: in bit;
			 rst	: in bit;
			 data : in integer range 300000000 downto 0; 
			 saida: out integer range 300000000 downto 0);
			 -- frequência de clock é 50Mhz
			 -- 5.10⁷ então acaba sendo 1s (coloquei 6s (300000000))
end contador;

architecture hardware of contador is

begin
	contagem: process ( clk, rst ) -- sensível ao clock e ao reset
		variable contando : integer range 300000000 downto 0;
		begin
			if (rst = '1') then
				contando := 0;
			elsif (clk'event and clk = '1') then
				if (load = '1') then
					contando := data;
				else
					if (contando >= 300000000) then -- 0 a 1199..9 (6s) e volta a 0
						contando := 0;
					else
						contando := contando + 1;
					end if;
				end if;
			end if;
			saida <= contando;
		end process;

end hardware;

