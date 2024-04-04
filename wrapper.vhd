library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity wrapper is
    Port ( 
        input_operand : in  std_logic_vector(7 downto 0);
        B0, B1, B2, B3 : in  std_logic;
        segment0 : out std_logic_vector(6 downto 0);
        segment1 : out std_logic_vector(6 downto 0);
        segment2 : out std_logic_vector(6 downto 0)
    );
end wrapper;

architecture example of wrapper is
    signal in1, in2, adder_out : std_logic_vector(7 downto 0);
    signal code0, code1, code2 : std_logic_vector(3 downto 0);
    signal cond : std_logic_vector(1 downto 0);
    signal S, M, E : std_logic_vector(3 downto 0);

    component LED_decoder is
        port(
            code : in  std_logic_vector(3 downto 0);
            segments_out : out std_logic_vector(6 downto 0)
        );
    end component;

    component FP_Adder is
        Port ( 
            A, B : in  std_logic_vector(7 downto 0);
            Sum : out std_logic_vector(7 downto 0)
        );
    end component;

begin

    process (B0) is
    begin
        if (B0 = '0') then
            in1 <= input_operand;
        end if;
    end process;

    process (B1) is
    begin
        if (B1 = '0') then
            in2 <= input_operand;
        end if;
    end process;

    cond <= B2 & B3;

    WITH cond SELECT
        S <=
            "000"&in1(7) WHEN "01",
            "000"&in2(7) WHEN "10",
            "000"&adder_out(7) WHEN others;

    WITH cond SELECT
        E <=
            in1(6 downto 3) WHEN "01",
            in2(6 downto 3) WHEN "10",
            adder_out(6 downto 3) WHEN others;

    WITH cond SELECT
        M <=
            '0'&in1(2 downto 0) WHEN "01",
            '0'&in2(2 downto 0) WHEN "10",
            '0'&adder_out(2 downto 0) WHEN others;

    adder: FP_Adder port map(A => in1, B => in2, Sum => adder_out);

    s0: LED_decoder port map(code => S, segments_out => segment0);
    s1: LED_decoder port map(code => E, segments_out => segment1);
    s2: LED_decoder port map(code => M, segments_out => segment2);

end example;
