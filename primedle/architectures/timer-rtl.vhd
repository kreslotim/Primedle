architecture rtl of timer is

signal s_current_state : unsigned(24 downto 0);
signal s_next_state    : unsigned(24 downto 0);

begin
    s_next_state <= (others => '0') when s_current_state = 0 else s_current_state - 1;

    dff : process(clk) is
    begin
        
        if(rising_edge(clk)) then 

            if (clear = '1') then 
                s_current_state <= to_unsigned(FCLK, 25);
            else
                s_current_state <= s_next_state; 
            end if;

        end if;
    end process;

    done <= '1' when s_current_state <= 0 else '0';
end architecture rtl;
