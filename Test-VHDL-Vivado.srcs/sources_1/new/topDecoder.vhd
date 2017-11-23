library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity topDecoder is
    PORT (
        code : IN  std_logic_vector(3 DOWNTO 0);
        digsel  : IN  std_logic_vector(3 DOWNTO 0);
        digctrl : OUT std_logic_vector(3 DOWNTO 0);
        segment : OUT std_logic_vector(6 DOWNTO 0)
    );
end topDecoder;

architecture Behavioral of topDecoder is
    COMPONENT decoder
        PORT (
            code : IN std_logic_vector(3 DOWNTO 0);
            led : OUT std_logic_vector(6 DOWNTO 0)
        );
    END COMPONENT;

    begin
        Inst_decoder: decoder PORT MAP (
            code => code,
            led => segment
        );
        
    digctrl <= digsel;
    
end Behavioral;
