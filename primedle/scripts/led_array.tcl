#Please do not remove the below two lines as they are required to use one of the 120/108 LED's
set_global_assignment -name RESERVE_NCEO_AFTER_CONFIGURATION "USE AS REGULAR IO"
set_global_assignment -name CYCLONEII_RESERVE_NCEO_AFTER_CONFIGURATION "USE AS REGULAR IO"
# You have to replace <ENTITY_PORT_NAME_xxx> with the name of the Output port
# of your top entity

set_location_assignment PIN_D6  -to led_array[0]
set_location_assignment PIN_F19 -to led_array[1]
set_location_assignment PIN_F10 -to led_array[2]
set_location_assignment PIN_K18 -to led_array[3]
set_location_assignment PIN_E10 -to led_array[4]
set_location_assignment PIN_G14 -to led_array[5]
set_location_assignment PIN_G15 -to led_array[6]
set_location_assignment PIN_G16 -to led_array[7]
set_location_assignment PIN_F14 -to led_array[8]
set_location_assignment PIN_J22 -to led_array[9]
set_location_assignment PIN_K21 -to led_array[10]
set_location_assignment PIN_D19 -to led_array[11]
set_location_assignment PIN_E5  -to led_array[12]
set_location_assignment PIN_F8  -to led_array[13]
set_location_assignment PIN_G10 -to led_array[14]
set_location_assignment PIN_F11 -to led_array[15]
set_location_assignment PIN_E9  -to led_array[16]
set_location_assignment PIN_J18 -to led_array[17]
set_location_assignment PIN_H14 -to led_array[18]
set_location_assignment PIN_H15 -to led_array[19]
set_location_assignment PIN_G17 -to led_array[20]
set_location_assignment PIN_J21 -to led_array[21]
set_location_assignment PIN_F15 -to led_array[22]
set_location_assignment PIN_F17 -to led_array[23]
set_location_assignment PIN_B5  -to led_array[24]
set_location_assignment PIN_G8  -to led_array[25]
set_location_assignment PIN_H10 -to led_array[26]
set_location_assignment PIN_E11 -to led_array[27]
set_location_assignment PIN_G7  -to led_array[28]
set_location_assignment PIN_G13 -to led_array[29]
set_location_assignment PIN_D10 -to led_array[30]
set_location_assignment PIN_J17 -to led_array[31]
set_location_assignment PIN_H16 -to led_array[32]
set_location_assignment PIN_H19 -to led_array[33]
set_location_assignment PIN_E15 -to led_array[34]
set_location_assignment PIN_D17 -to led_array[35]
set_location_assignment PIN_C4  -to led_array[36]
set_location_assignment PIN_E7  -to led_array[37]
set_location_assignment PIN_G9  -to led_array[38]
set_location_assignment PIN_H11 -to led_array[39]
set_location_assignment PIN_F7  -to led_array[40]
set_location_assignment PIN_K17 -to led_array[41]
set_location_assignment PIN_F9  -to led_array[42]
set_location_assignment PIN_E12 -to led_array[43]
set_location_assignment PIN_E13 -to led_array[44]
set_location_assignment PIN_H17 -to led_array[45]
set_location_assignment PIN_D15 -to led_array[46]
set_location_assignment PIN_K22 -to led_array[47]
set_location_assignment PIN_A4  -to led_array[48]
set_location_assignment PIN_C7  -to led_array[49]
set_location_assignment PIN_A8  -to led_array[50]
set_location_assignment PIN_A10 -to led_array[51]
set_location_assignment PIN_A14 -to led_array[52]
set_location_assignment PIN_A16 -to led_array[53]
set_location_assignment PIN_A18 -to led_array[54]
set_location_assignment PIN_B20 -to led_array[55]
set_location_assignment PIN_B22 -to led_array[56]
set_location_assignment PIN_E22 -to led_array[57]
set_location_assignment PIN_H21 -to led_array[58]
set_location_assignment PIN_L21 -to led_array[59]
set_location_assignment PIN_C3  -to led_array[60]
set_location_assignment PIN_A5  -to led_array[61]
set_location_assignment PIN_B7  -to led_array[62]
set_location_assignment PIN_B9  -to led_array[63]
set_location_assignment PIN_C13 -to led_array[64]
set_location_assignment PIN_C15 -to led_array[65]
set_location_assignment PIN_C17 -to led_array[66]
set_location_assignment PIN_C19 -to led_array[67]
set_location_assignment PIN_A20 -to led_array[68]
set_location_assignment PIN_D20 -to led_array[69]
set_location_assignment PIN_F20 -to led_array[70]
set_location_assignment PIN_F16 -to led_array[71]
set_location_assignment PIN_B3  -to led_array[72]
set_location_assignment PIN_C6  -to led_array[73]
set_location_assignment PIN_A7  -to led_array[74]
set_location_assignment PIN_A9  -to led_array[75]
set_location_assignment PIN_B13 -to led_array[76]
set_location_assignment PIN_B15 -to led_array[77]
set_location_assignment PIN_B17 -to led_array[78]
set_location_assignment PIN_B19 -to led_array[79]
set_location_assignment PIN_C21 -to led_array[80]
set_location_assignment PIN_D21 -to led_array[81]
set_location_assignment PIN_F22 -to led_array[82]
set_location_assignment PIN_E16 -to led_array[83]
set_location_assignment PIN_A3  -to led_array[84]
set_location_assignment PIN_B6  -to led_array[85]
set_location_assignment PIN_C8  -to led_array[86]
set_location_assignment PIN_C10 -to led_array[87]
set_location_assignment PIN_A13 -to led_array[88]
set_location_assignment PIN_A15 -to led_array[89]
set_location_assignment PIN_A17 -to led_array[90]
set_location_assignment PIN_A19 -to led_array[91]
set_location_assignment PIN_B21 -to led_array[92]
set_location_assignment PIN_D22 -to led_array[93]
set_location_assignment PIN_F21 -to led_array[94]
set_location_assignment PIN_L22 -to led_array[95]
set_location_assignment PIN_B4  -to led_array[96]
set_location_assignment PIN_A6  -to led_array[97]
set_location_assignment PIN_B8  -to led_array[98]
set_location_assignment PIN_B10 -to led_array[99]
set_location_assignment PIN_B14 -to led_array[100]
set_location_assignment PIN_B16 -to led_array[101]
set_location_assignment PIN_B18 -to led_array[102]
set_location_assignment PIN_C20 -to led_array[103]
set_location_assignment PIN_C22 -to led_array[104]
set_location_assignment PIN_E21 -to led_array[105]
set_location_assignment PIN_H22 -to led_array[106]
set_location_assignment PIN_H20 -to led_array[107]

