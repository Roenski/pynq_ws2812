----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.09.2020 19:11:47
-- Design Name: 
-- Module Name: ws2812_tb - Behavioral
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

entity ws2812_tb is
--  Port ( );
end ws2812_tb;

architecture Behavioral of ws2812_tb is
    component ws2812
        port (  clk : in std_logic;
                doutb : in std_logic_vector (31 downto 0);
                dout, rstb, enb : out std_logic;
                web : out std_logic_vector (3 downto 0);
                addrb, dinb : out std_logic_vector (31 downto 0)
                );
        end component;
begin


end Behavioral;
