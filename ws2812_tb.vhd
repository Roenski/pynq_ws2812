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
    signal clk : std_logic;
    signal doutb : std_logic_vector (31 downto 0);
    signal dout, rstb, enb : std_logic;
    signal web : std_logic_vector (3 downto 0);
    signal addrb, dinb : std_logic_vector (31 downto 0);
    
begin

    DUT : ws2812 port map (clk=>clk, doutb=>doutb,
                        dout=>dout, rstb=>rstb, enb=>enb,
                        web=>web, addrb=>addrb, dinb=>dinb);
                        
    process
    begin
        clk <= '0';
        doutb <= (OTHERS => '0');
        wait for 25 ns;
        doutb(31) <= '1';
        doutb(15) <= '1';
        doutb(1) <= '1';
        wait for 25 ns;
        for I in 0 to 10000 loop
            clk <= '1';
            wait for 25 ns;
            clk <= '0';
            wait for 25 ns;
        end loop;
        wait;
    end process;


end Behavioral;
