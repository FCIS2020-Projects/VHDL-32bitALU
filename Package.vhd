--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package MyPackage is

COMPONENT REG is
Generic(n:NATURAL :=4);
PORT(
I:IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
CLK,LD,INC,CLR :IN STD_LOGIC;
O:OUT STD_LOGIC_VECTOR(n-1 downto 0) );
END COMPONENT;

COMPONENT mux4x1 is
  port(
    sw : in std_logic_vector(1 downto 0);
    x : in std_logic_vector(3 downto 0);
    y : out std_logic
  );
end COMPONENT;

COMPONENT mux2x1 is
  port(
    sw : in std_logic;
    x : in std_logic_vector(1 downto 0);
    y : out std_logic
  );
end COMPONENT;

COMPONENT fadder is
  port(
    a, b ,cin: in std_logic;
    s, cout : out std_logic
  );
end COMPONENT;

COMPONENT bit1ALU is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           oper : in  STD_LOGIC_VECTOR (3 downto 0);
           res : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end COMPONENT;
 
end Package;
