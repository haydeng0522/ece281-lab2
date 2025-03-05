----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2025 10:17:08 AM
-- Design Name: 
-- Module Name: sevenseg_decoder - Behavioral
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

architecture Behavioral of sevenseg_decoder is
-- Excerpt from expected sevenseg_decoder port map inside top_basys3
begin

-- Behavioral model for one-hot decoder
with i_Hex select
o_seg_n <=  not("0111111") when "0000",
        not("0000110") when "0001",
        not("1011011") when "0010",
        not("1001111") when "0011",
        not("1100110") when "0100",
        not("1101101") when "0101",
        not("1111101") when "0110",
        not("0000111") when "0111",
        not("1111111") when "1000",
        not("1100111") when "1001",
        not("1110111") when "1010",
        not("1111100") when "1011",
        not("1011000") when "1100",
        not("1011110") when "1101",
        not("1111001") when "1110",
        not("1110001") when "1111",
        "0000000" when others;
end Behavioral;
