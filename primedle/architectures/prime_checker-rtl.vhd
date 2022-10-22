architecture rtl of prime_checker is
begin 

--ready <= '1';
--is_prime <= '1';

dff : process (clk) is
begin
    if (rising_edge(clk)) then 

        if (reset = '1') then
                    ready <= '1';
                    is_prime <= '1';
        else 
            if (check = '1') then 
                ready <= '0';
                
                FOR i in 0 to 53 LOOP

                        if (guess = primes_logic_vector(i)) then 
                            is_prime <= '1';
                            exit;
                        else 
                            is_prime <= '0';
                        end if;
                end loop;
            else 
                ready <= '1';
            end if;
        end if;
    end if;
end process;


end architecture rtl;