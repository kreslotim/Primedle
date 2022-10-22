architecture rtl of game_ctrl is

TYPE state is (IDLE, CHECK, UPDATE, FIN);
SIGNAL s_current_state, s_next_state : state;
signal s_trial_count : std_logic_vector(29 downto 0); 
signal s_guess_count : unsigned(2 downto 0);
signal s_finished    : std_logic; 


begin
    
    
    trials_count <= s_trial_count;
    finished <= s_finished;
    s_current_state <= s_next_state;


process (clk, reset, is_prime) 

begin 
     if (reset = '1') then
       s_finished <= '0';
       rejected <= not is_prime;
       LED_en <= '1';
       game_records <= (others => (others => (others => '0')));
       s_trial_count <= (others => '0');
       s_guess_count <= to_unsigned(0, 3);
       s_next_state <= IDLE;

     elsif (rising_edge(clk)) then 

          case s_current_state is 
          
               when IDLE   => 
                              LED_en <= '1';
                              if ready = '1' then s_next_state <= IDLE;
                              else s_next_state <= CHECK;
                              end if;

               when CHECK  => 
                              
                              if ready = '1' then
                                   s_trial_count <= '1' & s_trial_count(29 downto 1);
                                   LED_en <= '0';
                                   s_next_state <= UPDATE;   
                              else s_next_state <= CHECK;
                              end if;

               when UPDATE => 

                              
                              -- During updating, LED_en should be turned off, such that the unstable
                              -- outputs will not be observed
                              if ((s_trial_count = "11"&X"FFFFFFF") or (guess = golden)) then 
                                   s_finished <= '1';
                                   s_next_state <= FIN;
                              else 
                                   s_finished <= '0';
                                   s_next_state <= IDLE;
                     
                              end if;

                     
                              
                              if (is_prime = '0') then
                                   rejected <= '1';
                              else 
                                   rejected <= '0';

                                   s_guess_count <= s_guess_count + 1;

                                   if (to_integer(s_guess_count) >= 4) then 
                                          s_finished <= '1';
                                          s_next_state <= FIN;
                                   end if;

                                   

                                        -- add one row of hint in game records
                                        -- build 4 hints
                                        if    (guess(1 downto 0) = golden(1 downto 0)) then
                                               game_records(to_integer(s_guess_count))(0) <= "11";
                                        elsif (guess(1 downto 0) = golden(3 downto 2) or 
                                               guess(1 downto 0) = golden(5 downto 4) or
                                               guess(1 downto 0) = golden(7 downto 6)) then
                                               game_records(to_integer(s_guess_count))(0) <= "10";
                                        else 
                                               game_records(to_integer(s_guess_count))(0) <= "01";
                                        end if;


                                        if    (guess(3 downto 2) = golden(3 downto 2)) then
                                               game_records(to_integer(s_guess_count))(1) <= "11";   
                                        elsif (guess(3 downto 2) = golden(1 downto 0) or 
                                               guess(3 downto 2) = golden(5 downto 4) or
                                               guess(3 downto 2) = golden(7 downto 6)) then
                                               game_records(to_integer(s_guess_count))(1) <= "10";
                                        else 
                                               game_records(to_integer(s_guess_count))(1) <= "01";
                                        end if;


                                        if    (guess(5 downto 4) = golden(5 downto 4)) then
                                               game_records(to_integer(s_guess_count))(2) <= "11";
                                        elsif (guess(5 downto 4) = golden(1 downto 0) or 
                                               guess(5 downto 4) = golden(3 downto 2) or
                                               guess(5 downto 4) = golden(7 downto 6)) then
                                               game_records(to_integer(s_guess_count))(2) <= "10";
                                        else 
                                               game_records(to_integer(s_guess_count))(2) <= "01";
                                        end if;


                                        if    (guess(7 downto 6) = golden(7 downto 6)) then
                                               game_records(to_integer(s_guess_count))(3) <= "11";
                                        elsif (guess(7 downto 6) = golden(1 downto 0) or 
                                               guess(7 downto 6) = golden(3 downto 2) or
                                               guess(7 downto 6) = golden(5 downto 4)) then
                                               game_records(to_integer(s_guess_count))(3) <= "10";
                                        else 
                                               game_records(to_integer(s_guess_count))(3) <= "01";
                                        end if;
                                   end if;                         
                              

               
                              

               when FIN    => 
                              LED_en <= '1';
                              if reset = '1' then s_next_state <= IDLE;
                              else s_next_state <= FIN;
                              end if;
          end case;
     end if;
end process;

end architecture rtl;