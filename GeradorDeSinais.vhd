----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:23:17 09/28/2018 
-- Design Name: 
-- Module Name:    GeradorDeSinais - Behavioral 
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


entity GeradorDeSinais is
	port (clk, rst: in bit; -- rst será um botão
			botaoEntradaDoNumeroX, botaoEntradaDoNumeroY: in std_logic; -- botões
			entradaUla: in std_logic_vector (3 downto 0); -- switches
			ledA, ledB, led_result : out std_logic;	-- leds do lado direito. Sinalizar o que ta mostrando
			ledsToShowInAndOut : out std_logic_vector (3 downto 0)); -- leds dos númerosx,y e result
         
end GeradorDeSinais;

architecture hardware of GeradorDeSinais is

	component contador 
	port ( load : in bit;
			 clk	: in bit;
			 rst	: in bit;
			 data : in integer range 300000000 downto 0; 
			 saida: out integer range 300000000 downto 0);

	end component;

	component ULA 
    Port ( entradaX : in  STD_LOGIC_VECTOR (3 downto 0);
           entradaY : in  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out  STD_LOGIC;
           OV : out  STD_LOGIC;
           SAIDA : out  STD_LOGIC_VECTOR (3 downto 0);
           MUX_CONTROLADOR : in  STD_LOGIC_VECTOR (2 downto 0));
	end component;

	type state is (state_record,state_show);
	signal estado: state;
	signal flag: std_logic_vector (1 downto 0);
	signal entradaXTempUla: STD_LOGIC_VECTOR (3 downto 0);
	signal entradaYTempUla: STD_LOGIC_VECTOR (3 downto 0);   
   signal Cout: STD_LOGIC;
	signal OV: STD_LOGIC;
	signal saidaContador: integer range 300000000 downto 0;	
	signal saidaULA: std_logic_vector (3 downto 0);
	
begin	
	ProcessamentoUla: ULA port map (EntradaXTempUla, EntradaYTempUla, Cout, OV, saidaULA, entradaUla(2 downto 0));
	contador1: contador port map ( '0', clk, rst, 0, saidaContador);
	
	maquinaDeEstado: process(clk, rst) 
	begin
		if rst = '1' then			
			EntradaXTempUla <= "0000";
			EntradaYTempUla <= "0000";
			ledsToShowInAndOut <= "0000";
			led_result <= '0';	   
			ledA <= '0';             
		   ledB <='0'; 			        		
			estado <= state_record;
			flag <= "00";
			
		elsif (clk'event and clk = '1') then					
			case estado is
				when state_record =>
					ledsToShowInAndOut <= entradaUla;
					if botaoEntradaDoNumeroX = '1'   then
						EntradaXTempUla <= entradaUla; 
						ledA <= '1';
						flag(0) <= '1';
				
				   elsif botaoEntradaDoNumeroY = '1' then
						EntradaYTempUla <= entradaUla;
						ledB <= '1';
						flag(1) <= '1';
					
					elsif (flag = "11") then  -- parâmetro que muda o estado ( And entre A e B)
						ledA <='0'; 
						ledB <='0'; 
						estado <= state_show;
					else   
						estado <= state_record;						
					end if;	
				
				when state_show =>
					 
					 if saidaContador  < 100000000 then					-- 2 segundos	
							ledsToShowInAndOut <= EntradaXTempUla;		-- Aqui mostramos a entradaX	
							ledA <= '1';							
							ledB <= '0';
							led_result <= '0';
					 elsif ((saidaContador >= 100000000) and (saidaContador < 200000000))  then-- entre 2 e 4 segundos
							ledsToShowInAndOut <= EntradaYTempUla;    -- mostramos Y
							ledA <= '0';							
							ledB <= '1';
							led_result <= '0';      
					 elsif saidaContador >= 200000000  then			-- maior q 4 segundos
							ledsToShowInAndOut <= saidaULA;    			-- mostramos Y
							ledA <= '0';							
							ledB <= '0';
							led_result <= '1';
				     estado <= state_show; 			      
						
					end if;
			end case;
		end if;
	end process maquinaDeEstado;
end hardware;
	

