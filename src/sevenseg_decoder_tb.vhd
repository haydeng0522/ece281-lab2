----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2025 09:22:47 PM
-- Design Name: 
-- Module Name: sevenseg_decoder_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevenseg_decoder is
    Port ( i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
           o_seg_n : out STD_LOGIC_VECTOR (6 downto 0));
end sevenseg_decoder;

architecture Behavioral of sevenseg_decoder_tb is
  component sevenseg_decoder is
        port ( 
            i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
            o_seg_n : out STD_LOGIC_VECTOR (6 downto 0));
        end component sevenseg_decoder;
    
    signal w_inBit : std_logic_vector (3 downto 0) := x"0";
    signal w_outBit : std_logic_vector (7 downto 0):= x"00";
      
begin

	sevenseg_decoder_uut : sevenseg_decoder port map (
	   i_Hex   => w_inBit,
	   o_seg_n => w_outBit(6 downto 0)
	);    
    
    test_process : process
    begin
    
	   w_inBit <= x"0"; wait for 10 ns;
	       assert (w_outBit = x"40") report "bad at zero" severity failure;
	   w_inBit <= x"1"; wait for 10 ns;
	       assert (w_outBit = x"79") report "bad at one" severity failure;
	   w_inBit <= x"2"; wait for 10 ns;
	       assert (w_outBit = x"24") report "bad at two" severity failure;
	   w_inBit <= x"3"; wait for 10 ns;
	       assert (w_outBit = x"30") report "bad at three" severity failure;
	   w_inBit <= x"4"; wait for 10 ns;
	       assert (w_outBit = x"19") report "bad at four" severity failure;
	   w_inBit <= x"5"; wait for 10 ns;
	       assert (w_outBit = x"12") report "bad at five" severity failure;
	   w_inBit <= x"6"; wait for 10 ns;
	       assert (w_outBit = x"02") report "bad at six" severity failure;
	   w_inBit <= x"7"; wait for 10 ns;
	       assert (w_outBit = x"78") report "bad at seven" severity failure;
	   w_inBit <= x"8"; wait for 10 ns;
	       assert (w_outBit = x"00") report "bad at eight" severity failure;
	   w_inBit <= x"9"; wait for 10 ns;
	       assert (w_outBit = x"18") report "bad at nine" severity failure;
	   w_inBit <= x"A"; wait for 10 ns;
	       assert (w_outBit = x"08") report "bad at A" severity failure;
	   w_inBit <= x"B"; wait for 10 ns;
	       assert (w_outBit = x"03") report "bad at B" severity failure;
	   w_inBit <= x"C"; wait for 10 ns;
	       assert (w_outBit = x"27") report "bad at C" severity failure;
	   w_inBit <= x"D"; wait for 10 ns;
	       assert (w_outBit = x"21") report "bad at D" severity failure;
	   w_inBit <= x"E"; wait for 10 ns;
	       assert (w_outBit = x"06") report "bad at E" severity failure;
	   w_inBit <= x"F"; wait for 10 ns;
	       assert (w_outBit = x"0E") report "bad at F" severity failure;
        wait;
    end process;
    
end Behavioral;
