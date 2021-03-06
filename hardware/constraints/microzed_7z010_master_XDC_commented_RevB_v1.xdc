
###################################
## Differential Signals (Bank 34) #
###################################

#NET JX1_LVDS_3_N    LOC = W13 | IOSTANDARD = LVCMOS18;  # "JX1_LVDS_3_N"
set_property IOSTANDARD LVDS_25 [get_ports {in1a_n[0]}]
#NET JX1_LVDS_3_P    LOC = V12 | IOSTANDARD = LVCMOS18;  # "JX1_LVDS_3_P"
set_property PACKAGE_PIN W13 [get_ports {in1a_n[0]}]
set_property PACKAGE_PIN V12 [get_ports {in1a_p[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {in1a_p[0]}]
set_property DIFF_TERM TRUE [get_ports {in1a_p[0]}]
set_property DIFF_TERM TRUE [get_ports {in1a_n[0]}]

#NET JX1_LVDS_7_N    LOC = Y14 | IOSTANDARD = LVCMOS18;  # "JX1_LVDS_7_N"
set_property IOSTANDARD LVDS_25 [get_ports {in1b_n[0]}]
#NET JX1_LVDS_7_P    LOC = W14 | IOSTANDARD = LVCMOS18;  # "JX1_LVDS_7_P"
set_property PACKAGE_PIN Y14 [get_ports {in1b_n[0]}]
set_property PACKAGE_PIN W14 [get_ports {in1b_p[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {in1b_p[0]}]
set_property DIFF_TERM TRUE [get_ports {in1b_p[0]}]
set_property DIFF_TERM TRUE [get_ports {in1b_n[0]}]

#NET JX1_LVDS_11_N   LOC = U19 | IOSTANDARD = LVCMOS18;  # "JX1_LVDS_11_N"
set_property IOSTANDARD LVDS_25 [get_ports {in2a_n[0]}]
#NET JX1_LVDS_11_P   LOC = U18 | IOSTANDARD = LVCMOS18;  # "JX1_LVDS_11_P"
set_property PACKAGE_PIN U19 [get_ports {in2a_n[0]}]
set_property PACKAGE_PIN U18 [get_ports {in2a_p[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {in2a_p[0]}]
set_property DIFF_TERM TRUE [get_ports {in2a_p[0]}]
set_property DIFF_TERM TRUE [get_ports {in2a_n[0]}]

#NET JX1_LVDS_15_N   LOC = W20 | IOSTANDARD = LVCMOS18;  # "JX1_LVDS_15_N"
set_property IOSTANDARD LVDS_25 [get_ports {in2b_n[0]}]
#NET JX1_LVDS_15_P   LOC = V20 | IOSTANDARD = LVCMOS18;  # "JX1_LVDS_15_P"
set_property PACKAGE_PIN V20 [get_ports {in2b_p[0]}]
set_property PACKAGE_PIN W20 [get_ports {in2b_n[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {in2b_p[0]}]
set_property DIFF_TERM TRUE [get_ports {in2b_p[0]}]
set_property DIFF_TERM TRUE [get_ports {in2b_n[0]}]

#NET JX1_LVDS_17_N   LOC = W16 | IOSTANDARD = LVCMOS18;  # "JX1_LVDS_17_N"
set_property IOSTANDARD LVDS_25 [get_ports {data_clk_n[0]}]
#NET JX1_LVDS_17_P   LOC = V16 | IOSTANDARD = LVCMOS18;  # "JX1_LVDS_17_P"
set_property PACKAGE_PIN W16 [get_ports {data_clk_n[0]}]
set_property PACKAGE_PIN V16 [get_ports {data_clk_p[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {data_clk_p[0]}]
set_property DIFF_TERM TRUE [get_ports {data_clk_p[0]}]
set_property DIFF_TERM TRUE [get_ports {data_clk_n[0]}]

##########################
## SPI Signals (Bank 34) #
##########################

#NET JX1_LVDS_5_N    LOC = R14 | IOSTANDARD = LVCMOS18;  # "JX1_LVDS_5_N"
set_property PACKAGE_PIN R14 [get_ports sck]
set_property IOSTANDARD LVCMOS25 [get_ports sck]
#NET JX1_LVDS_5_P    LOC = P14 | IOSTANDARD = LVCMOS18;  # "JX1_LVDS_5_P"
set_property PACKAGE_PIN P14 [get_ports {cs[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {cs[0]}]

#NET JX1_LVDS_9_N    LOC = W15 | IOSTANDARD = LVCMOS18;  # "JX1_LVDS_9_N"
set_property PACKAGE_PIN W15 [get_ports mosi]
set_property IOSTANDARD LVCMOS25 [get_ports mosi]
#NET JX1_LVDS_9_P    LOC = V15 | IOSTANDARD = LVCMOS18;  # "JX1_LVDS_9_P"
set_property PACKAGE_PIN V15 [get_ports miso]
set_property IOSTANDARD LVCMOS25 [get_ports miso]


###################################
## Differential Signals (Bank 35) #
###################################

#NET JX2_LVDS_0_N    LOC = B20 | IOSTANDARD = LVCMOS18;  # "JX2_LVDS_0_N"
set_property IOSTANDARD LVDS_25 [get_ports {enc_n[0]}]

#NET JX2_LVDS_0_P    LOC = C20 | IOSTANDARD = LVCMOS18;  # "JX2_LVDS_0_P"
set_property PACKAGE_PIN B20 [get_ports {enc_n[0]}]
set_property PACKAGE_PIN C20 [get_ports {enc_p[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {enc_p[0]}]

#NET JX2_LVDS_16_N   LOC = G20 | IOSTANDARD = LVCMOS18;  # "JX2_LVDS_16_N"
set_property IOSTANDARD LVDS_25 [get_ports {fr_clk_n[0]}]
#NET JX2_LVDS_16_P   LOC = G19 | IOSTANDARD = LVCMOS18;  # "JX2_LVDS_16_P"
set_property PACKAGE_PIN G19 [get_ports {fr_clk_p[0]}]
set_property PACKAGE_PIN G20 [get_ports {fr_clk_n[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {fr_clk_p[0]}]
set_property DIFF_TERM TRUE [get_ports {fr_clk_p[0]}]

#NET JX2_LVDS_8_N    LOC = M18 | IOSTANDARD = LVCMOS18;  # "JX2_LVDS_8_N"
set_property IOSTANDARD LVDS_25 [get_ports {in4a_n[0]}]
#NET JX2_LVDS_8_P    LOC = M17 | IOSTANDARD = LVCMOS18;  # "JX2_LVDS_8_P"
set_property PACKAGE_PIN M18 [get_ports {in4a_n[0]}]
set_property PACKAGE_PIN M17 [get_ports {in4a_p[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {in4a_p[0]}]
set_property DIFF_TERM TRUE [get_ports {in4a_p[0]}]

#NET JX2_LVDS_4_N    LOC = E19 | IOSTANDARD = LVCMOS18;  # "JX2_LVDS_4_N"
set_property IOSTANDARD LVDS_25 [get_ports {in4b_n[0]}]
#NET JX2_LVDS_4_P    LOC = E18 | IOSTANDARD = LVCMOS18;  # "JX2_LVDS_4_P"
set_property PACKAGE_PIN E18 [get_ports {in4b_p[0]}]
set_property PACKAGE_PIN E19 [get_ports {in4b_n[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {in4b_p[0]}]
set_property DIFF_TERM TRUE [get_ports {in4b_p[0]}]

#NET JX2_LVDS_12_N   LOC = H17 | IOSTANDARD = LVCMOS18;  # "JX2_LVDS_12_N"
set_property IOSTANDARD LVDS_25 [get_ports {in3b_n[0]}]
#NET JX2_LVDS_12_P   LOC = H16 | IOSTANDARD = LVCMOS18;  # "JX2_LVDS_12_P"
set_property PACKAGE_PIN H16 [get_ports {in3b_p[0]}]
set_property PACKAGE_PIN H17 [get_ports {in3b_n[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {in3b_p[0]}]
set_property DIFF_TERM TRUE [get_ports {in3b_p[0]}]

#NET JX2_LVDS_14_N   LOC = G18 | IOSTANDARD = LVCMOS18;  # "JX2_LVDS_14_N"
set_property IOSTANDARD LVDS_25 [get_ports {in3a_n[0]}]
#NET JX2_LVDS_14_P   LOC = G17 | IOSTANDARD = LVCMOS18;  # "JX2_LVDS_14_P"
set_property PACKAGE_PIN G17 [get_ports {in3a_p[0]}]
set_property PACKAGE_PIN G18 [get_ports {in3a_n[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {in3a_p[0]}]
set_property DIFF_TERM TRUE [get_ports {in3a_p[0]}]


################################
# Clock and Timing Constraints #
################################

create_clock -period 50.000 -name DATA_CLK -waveform {12.500 37.500} [get_ports data_clk_p]
create_clock -period 200.000 -name FRAME_CLK -waveform {0.000 100.000} [get_ports fr_clk_p]

set_clock_groups -name adc_clocks -asynchronous -group {DATA_CLK FRAME_CLK}

set_input_delay -clock [get_clocks DATA_CLK] -clock_fall -min -add_delay 4.000 [get_ports {in**_p[0]}]
set_input_delay -clock [get_clocks DATA_CLK] -clock_fall -max -add_delay 21.000 [get_ports {in**_p[0]}]
set_input_delay -clock [get_clocks DATA_CLK] -min -add_delay 4.000 [get_ports {in**_p[0]}]
set_input_delay -clock [get_clocks DATA_CLK] -max -add_delay 21.000 [get_ports {in**_p[0]}]


