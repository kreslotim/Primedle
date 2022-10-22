architecture rtl of seg_decoder is
begin
    process(digit)
    begin 
        case digit is
            when "00" => seg <= "11111100";
            when "01" => seg <= "01100000";
            when "10" => seg <= "11011010";
            when "11" => seg <= "11110010";

            when others => seg <= "00000000";
        end case;
    end process;
end architecture rtl;

