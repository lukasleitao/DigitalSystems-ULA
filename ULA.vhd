----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:44:41 09/21/2018 
-- Design Name: 
-- Module Name:    ULA - Behavioral 
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

entity ULA is
    Port ( entradaX : in  STD_LOGIC_VECTOR (3 downto 0);
           entradaY : in  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out  STD_LOGIC;
           OV : out  STD_LOGIC;
           SAIDA : out  STD_LOGIC_VECTOR (3 downto 0);
           MUX_CONTROLADOR : in  STD_LOGIC_VECTOR (2 downto 0));
end ULA;

architecture Behavioral of ULA is

	component Porta_Xor
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           S : out  STD_LOGIC_VECTOR (3 downto 0));
	end component;
	
	component Porta_Or 
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           S : out  STD_LOGIC_VECTOR (3 downto 0));
	end component;

	component Porta_And 
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           S : out  STD_LOGIC_VECTOR (3 downto 0));
	end component;

	component Inverter 
    Port ( X : in  STD_LOGIC_VECTOR (3 downto 0);
           Xbar : out  STD_LOGIC_VECTOR (3 downto 0));
	end component;

	component incrementador 
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           S : out  STD_LOGIC_VECTOR (3 downto 0));			  
	end component;
	
	component multiplicaFourBits is
		 Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
				  B : in  STD_LOGIC_VECTOR (3 downto 0);
				  S : out  STD_LOGIC_VECTOR (3 downto 0));
	end component;

	component fourBitsSubtractor 
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           Borrow : out  STD_LOGIC;
			  OV : out  STD_LOGIC);
	end component;
	
	component fourBitsAdder 
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out  std_logic;
			  OV : out std_logic   );
	end component;

	signal saidaSubtrator: STD_LOGIC_VECTOR (3 downto 0);
	signal saidaSomador: STD_LOGIC_VECTOR (3 downto 0);
	signal saidaMultiplicador: STD_LOGIC_VECTOR (3 downto 0);
	signal saidaIncrementa_1: STD_LOGIC_VECTOR (3 downto 0);
	signal saidaXor: STD_LOGIC_VECTOR (3 downto 0);
	signal saidaOor: STD_LOGIC_VECTOR (3 downto 0);
	signal saidaAand: STD_LOGIC_VECTOR (3 downto 0); 
	signal SaidaInverteer: STD_LOGIC_VECTOR (3 downto 0);
   signal CoutSomador: STD_LOGIC;
	signal CoutSubtrator: STD_LOGIC;
	signal OVSomador: STD_LOGIC;
	signal OVSubtractor: STD_LOGIC;
	
begin
		
	-- Lógicas
	Xoor: 			Porta_Xor port map ( entradaX, entradaY, saidaXor);
	Oor:				Porta_Or port map ( entradaX, entradaY, saidaOor);
	Aand: 			Porta_And port map ( entradaX, entradaY, saidaAand);
	Inverteer:		Inverter port map ( entradaX, SaidaInverteer);
		
	-- Aritméticas
	incrementa_1: 	incrementador port map ( entradaX, saidaIncrementa_1);
	multiplicador:	multiplicaFourBits port map ( entradaX, entradaY, saidaMultiplicador);
	subtrator:		fourBitsSubtractor port map ( entradaX, entradaY, saidaSubtrator, CoutSubtrator, OVSubtractor);
	somador:			fourBitsAdder port map ( entradaX, entradaY, '0', saidaSomador, CoutSomador, OVSomador);

	WITH MUX_CONTROLADOR select
		SAIDA <= saidaSomador when "000",
			saidaSubtrator when "001",
         saidaMultiplicador when "010",
         saidaIncrementa_1 when "011",
			saidaXor when "100",
			saidaOor when "101",
			SaidaAand when "110",
			SaidaInverteer when "111",
			"0000" WHEN OTHERS;
		
	with MUX_CONTROLADOR select
		Cout <= CoutSomador when "000",
			CoutSubtrator when "001",
			'0' WHEN OTHERS;
			
	with MUX_CONTROLADOR select	
		OV <= OVSomador when "000",
			OvSubtractor when "001",
			'0' when others;
			
	
end Behavioral;

