----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/29/2018 04:50:40 AM
-- Design Name: 
-- Module Name: ssd_VHDL - Behavioral
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

entity ssd_VHDL is
    Port (
    i_BTN: in std_ulogic_vector(3 downto 0);
    o_CATHODE: out std_ulogic_vector(6 downto 0);
    o_ANODE: out std_ulogic_vector(3 downto 0)
     );
end ssd_VHDL;

architecture Behavioral of ssd_VHDL is
begin
o_CATHODE <= (others => '0');
process(i_BTN)
    begin
    case i_BTN is
        when "0001" => o_ANODE <= "1110";
        when "0010" => o_ANODE <= "1101";
        when "0100" => o_ANODE <= "1011";
        when "1000" => o_ANODE <= "0111";
        when others => o_ANODE <= "1111";
    end case;
end process;
end Behavioral;
