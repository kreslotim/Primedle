architecture rtl of debouncer is

signal s_q1, s_q2, s_q3, s_q4 : std_logic;

begin

dff1 : PROCESS (clk) IS
BEGIN 
    IF (rising_edge(clk)) THEN 
      s_q1 <= button AND (NOT (clear)); 
    END IF;
END PROCESS dff1;


dff2 : PROCESS (clk) IS
BEGIN 
    IF (rising_edge(clk)) THEN 
      s_q2 <= s_q1 AND (NOT (clear)); 
    END IF;
END PROCESS dff2;


dff3 : PROCESS (clk) IS
BEGIN 
    IF (rising_edge(clk)) THEN 
      s_q3 <= s_q2 AND (NOT (clear)); 
    END IF;
END PROCESS dff3;


dff4 : PROCESS (clk) IS
BEGIN 
    IF (rising_edge(clk)) THEN 
      s_q4 <= ((((NOT s_q3) AND s_q2) OR s_q4)) AND (NOT clear);  
    END IF;
END PROCESS dff4;

button_o <= s_q4;

end architecture rtl; 

