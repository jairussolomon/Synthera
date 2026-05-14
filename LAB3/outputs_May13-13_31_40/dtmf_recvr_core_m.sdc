# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.14-s082_1 on Wed May 13 13:33:06 IST 2026

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design dtmf_recvr_core

set_case_analysis 0 [get_ports scan_en]
set_case_analysis 0 [get_ports test_mode]
create_clock -name "refclk" -period 16.0 -waveform {0.0 8.0} [get_ports refclk]
create_clock -name "m_clk" -period 16.0 -waveform {0.0 8.0} [get_pins TEST_CONTROL_INST/m_clk]
create_clock -name "m_rcc_clk" -period 32.0 -waveform {0.0 16.0} [get_pins TEST_CONTROL_INST/m_rcc_clk]
create_clock -name "m_spi_clk" -period 32.0 -waveform {0.0 16.0} [get_pins TEST_CONTROL_INST/m_spi_clk]
create_clock -name "m_dsram_clk" -period 32.0 -waveform {0.0 16.0} [get_pins TEST_CONTROL_INST/m_dsram_clk]
create_clock -name "m_ram_clk" -period 32.0 -waveform {0.0 16.0} [get_pins TEST_CONTROL_INST/m_ram_clk]
create_clock -name "m_digit_clk" -period 32.0 -waveform {0.0 16.0} [get_pins TEST_CONTROL_INST/m_digit_clk]
set_false_path -from [list \
  [get_ports reset]  \
  [get_ports test_mode] ]
set_false_path -through [get_pins PM_INST/clk_enable] -hold
group_path -weight 1.000000 -name C2C -from [list \
  [get_cells ROM_512x16_0_INST]  \
  [get_cells RAM_128x16_TEST_INST_RAM_128x16_INST]  \
  [get_cells RAM_256x16_TEST_INST_RAM_256x16_INST]  \
  [get_cells RESULTS_CONV_INST_gt_reg]  \
  [get_cells RESULTS_CONV_INST_ok_reg]  \
  [get_cells {RESULTS_CONV_INST_lower770_dout_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_lower770_dout_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_lower770_dout_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_lower770_dout_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_lower770_dout_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_lower770_dout_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_lower770_dout_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_lower770_dout_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_lower1336_dout_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_lower1336_dout_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_lower1336_dout_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_lower1336_dout_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_lower1336_dout_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_lower1336_dout_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_lower1336_dout_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_lower1336_dout_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[8]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[9]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[10]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[11]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[12]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[13]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[14]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[15]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[8]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[9]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[10]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[11]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[12]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[13]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[14]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[15]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[8]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[9]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[10]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[11]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[12]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[13]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[14]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[15]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[8]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[9]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[10]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[11]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[12]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[13]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[14]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[15]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[8]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[9]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[10]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[11]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[12]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[13]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[14]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[15]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[8]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[9]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[10]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[11]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[12]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[13]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[14]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[15]}]  \
  [get_cells {RESULTS_CONV_INST_upper770_dout_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_upper770_dout_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_upper770_dout_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_upper770_dout_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_upper770_dout_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_upper770_dout_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_upper770_dout_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_upper770_dout_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_upper1336_dout_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_upper1336_dout_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_upper1336_dout_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_upper1336_dout_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_upper1336_dout_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_upper1336_dout_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_upper1336_dout_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_upper1336_dout_reg[7]}]  \
  [get_cells TDSP_CORE_INST_TDSP_CORE_MACH_INST_samp_bio_reg]  \
  [get_cells {SPI_INST_dout_reg[0]}]  \
  [get_cells {SPI_INST_dout_reg[1]}]  \
  [get_cells {SPI_INST_dout_reg[2]}]  \
  [get_cells {SPI_INST_dout_reg[3]}]  \
  [get_cells {SPI_INST_dout_reg[7]}]  \
  [get_cells {SPI_INST_spi_sr_reg[0]}]  \
  [get_cells {SPI_INST_spi_sr_reg[1]}]  \
  [get_cells {SPI_INST_spi_sr_reg[2]}]  \
  [get_cells {SPI_INST_spi_sr_reg[3]}]  \
  [get_cells {SPI_INST_spi_sr_reg[4]}]  \
  [get_cells {SPI_INST_spi_sr_reg[5]}]  \
  [get_cells {SPI_INST_spi_sr_reg[6]}]  \
  [get_cells {SPI_INST_spi_sr_reg[7]}]  \
  [get_cells ARB_INST_dma_grant_reg]  \
  [get_cells {ARB_INST_present_state_reg[0]}]  \
  [get_cells {ARB_INST_present_state_reg[1]}]  \
  [get_cells {ARB_INST_present_state_reg[2]}]  \
  [get_cells {DMA_INST_a_reg[0]}]  \
  [get_cells {DMA_INST_a_reg[1]}]  \
  [get_cells {DMA_INST_a_reg[2]}]  \
  [get_cells {DMA_INST_a_reg[3]}]  \
  [get_cells {DMA_INST_a_reg[4]}]  \
  [get_cells {DMA_INST_a_reg[5]}]  \
  [get_cells {DMA_INST_a_reg[6]}]  \
  [get_cells {DMA_INST_a_reg[7]}]  \
  [get_cells {DMA_INST_present_state_reg[1]}]  \
  [get_cells {DMA_INST_present_state_reg[2]}]  \
  [get_cells {DMA_INST_present_state_reg[3]}]  \
  [get_cells RESULTS_CONV_INST_clear_flag_reg]  \
  [get_cells RESULTS_CONV_INST_digit_clk_reg]  \
  [get_cells RESULTS_CONV_INST_dout_flag_reg]  \
  [get_cells {RESULTS_CONV_INST_high_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_high_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_low_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_out_p1_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_out_p2_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_state_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_state_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_state_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_state_reg[3]}]  \
  [get_cells {SPI_INST_bit_cnt_reg[0]}]  \
  [get_cells {SPI_INST_bit_cnt_reg[1]}]  \
  [get_cells {SPI_INST_bit_cnt_reg[2]}]  \
  [get_cells {SPI_INST_bit_cnt_reg[3]}]  \
  [get_cells {SPI_INST_present_state_reg[0]}]  \
  [get_cells {SPI_INST_present_state_reg[1]}]  \
  [get_cells {SPI_INST_present_state_reg[2]}]  \
  [get_cells TDSP_CORE_INST_DATA_BUS_MACH_INST_as_reg]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[8]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[9]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[10]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[11]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[12]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[13]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[14]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[15]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_present_state_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_present_state_reg[2]}]  \
  [get_cells TDSP_CORE_INST_DECODE_INST_decode_skip_one_reg]  \
  [get_cells TDSP_CORE_INST_DECODE_INST_go_data_reg]  \
  [get_cells TDSP_CORE_INST_DECODE_INST_go_port_reg]  \
  [get_cells TDSP_CORE_INST_DECODE_INST_go_prog_reg]  \
  [get_cells TDSP_CORE_INST_DECODE_INST_read_data_reg]  \
  [get_cells TDSP_CORE_INST_DECODE_INST_read_prog_reg]  \
  [get_cells TDSP_CORE_INST_DECODE_INST_two_cycle_reg]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[8]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[9]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[10]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[11]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[12]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[13]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[14]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[15]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[16]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[17]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[18]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[19]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[20]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[21]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[22]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[23]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[24]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[25]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[26]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[27]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[28]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[29]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[30]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[31]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[8]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[9]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[10]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[11]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[12]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[13]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[14]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[15]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[8]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[9]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[10]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[11]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[12]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[13]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[14]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[15]}]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_branch_stall_delay_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_branch_stall_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_dmov_inc_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_dp_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_go_data_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_go_port_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_go_prog_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_ov_flag_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_ovm_reg]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[8]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[9]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[10]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[11]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[12]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[13]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[14]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[15]}]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_pc_acc_reg]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_pc_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_pc_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_pc_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_pc_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_pc_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_pc_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_pc_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_pc_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_pc_reg[8]}]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_read_prog_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_skip_one_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_three_cycle_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_two_cycle_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_update_it_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_update_stall_reg]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_present_state_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_present_state_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_present_state_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_present_state_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_present_state_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_present_state_reg[2]}]  \
  [get_cells TDSP_CORE_INST_TDSP_CORE_MACH_INST_phi_5_reg]  \
  [get_cells {TDSP_CORE_INST_TDSP_CORE_MACH_INST_tdsp_state_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_TDSP_CORE_MACH_INST_tdsp_state_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_TDSP_CORE_MACH_INST_tdsp_state_reg[2]}]  \
  [get_cells {DIGIT_REG_INST_digit_out_reg[0]}]  \
  [get_cells {DIGIT_REG_INST_digit_out_reg[1]}]  \
  [get_cells {DIGIT_REG_INST_digit_out_reg[2]}]  \
  [get_cells {DIGIT_REG_INST_digit_out_reg[3]}]  \
  [get_cells {DIGIT_REG_INST_digit_out_reg[4]}]  \
  [get_cells {DIGIT_REG_INST_digit_out_reg[5]}]  \
  [get_cells {DIGIT_REG_INST_digit_out_reg[6]}]  \
  [get_cells {DIGIT_REG_INST_digit_out_reg[7]}]  \
  [get_cells DIGIT_REG_INST_flag_out_reg]  \
  [get_cells DMA_INST_read_spi_reg]  \
  [get_cells DMA_INST_top_buf_flag_reg]  \
  [get_cells {RESULTS_CONV_INST_dout_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_dout_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_dout_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_dout_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_dout_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_dout_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_dout_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_dout_reg[7]}]  \
  [get_cells RESULTS_CONV_INST_go_reg]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[8]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[9]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[10]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[11]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[12]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[13]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[14]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[15]}]  \
  [get_cells {RESULTS_CONV_INST_high_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[8]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[9]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[10]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[11]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[12]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[13]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[14]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[15]}]  \
  [get_cells {RESULTS_CONV_INST_low_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_low_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_out_p1_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_out_p1_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_out_p1_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_out_p1_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_out_p1_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_out_p1_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_out_p2_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_out_p2_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_out_p2_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_out_p2_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_out_p2_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_out_p2_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_out_p2_reg[7]}]  \
  [get_cells SPI_INST_dflag_reg]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_alu_cmd_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_alu_cmd_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_alu_cmd_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[16]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[17]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[18]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[19]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[20]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[21]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[22]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[23]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[24]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[25]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[26]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[27]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[28]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[29]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[30]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[31]}]  \
  [get_cells TDSP_CORE_INST_PORT_BUS_MACH_INST_as_reg]  \
  [get_cells TDSP_CORE_INST_TDSP_CORE_MACH_INST_phi_1_reg]  \
  [get_cells TDSP_CORE_INST_TDSP_CORE_MACH_INST_phi_4_reg]  \
  [get_cells TDSP_CORE_INST_TDSP_CORE_MACH_INST_phi_6_reg]  \
  [get_cells TDSP_DS_CS_INST_t_bit_7_reg]  \
  [get_cells TDSP_DS_CS_INST_t_sel_7_reg]  \
  [get_cells {SPI_INST_dout_reg[4]}]  \
  [get_cells {SPI_INST_dout_reg[5]}]  \
  [get_cells {SPI_INST_dout_reg[6]}]  \
  [get_cells TDSP_CORE_INST_DATA_BUS_MACH_INST_read_reg]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[8]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[9]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[10]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[11]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[12]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[13]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[14]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[15]}]  \
  [get_cells ARB_INST_tdsp_grant_reg]  \
  [get_cells DMA_INST_breq_reg]  \
  [get_cells TDSP_CORE_INST_DATA_BUS_MACH_INST_write_reg]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[12]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[13]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[14]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[15]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[12]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[13]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[14]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[15]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_sel_op_a_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_sel_op_a_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_sel_op_a_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_sel_op_b_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_sel_op_b_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_sel_op_b_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[8]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[9]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[10]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[11]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[12]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[13]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[14]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[15]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[12]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[13]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[14]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[15]}]  \
  [get_cells TDSP_CORE_INST_TDSP_CORE_MACH_INST_phi_3_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_arp_reg]  \
  [get_cells {DMA_INST_present_state_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[11]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[10]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[9]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[8]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[11]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[10]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[9]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[8]}]  \
  [get_cells DMA_INST_write_reg]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_present_state_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[9]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[10]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[8]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[11]}]  \
  [get_cells {PM_INST/counter_reg[0]}]  \
  [get_cells {PM_INST/counter_reg[1]}]  \
  [get_cells {PM_INST/power_state_reg[2]}]  \
  [get_cells {PM_INST/power_state_reg[1]}]  \
  [get_cells {PM_INST/power_state_reg[0]}]  \
  [get_cells PM_INST/clk_enable_reg_reg] ] -to [list \
  [get_cells ROM_512x16_0_INST]  \
  [get_cells RAM_128x16_TEST_INST_RAM_128x16_INST]  \
  [get_cells RAM_256x16_TEST_INST_RAM_256x16_INST]  \
  [get_cells RC_CG_HIER_INST0/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST1/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST2/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST3/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST4/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST5/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST6/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST7/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST8/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST9/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST10/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST11/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST12/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST13/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST14/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST15/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST16/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST17/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST18/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST19/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST20/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST21/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST22/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST23/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST24/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST25/RC_CGIC_INST]  \
  [get_cells ARB_INST_RC_CG_HIER_INST26/RC_CGIC_INST]  \
  [get_cells DMA_INST_RC_CG_HIER_INST27/RC_CGIC_INST]  \
  [get_cells PM_INST/RC_CG_HIER_INST28/RC_CGIC_INST]  \
  [get_cells SPI_INST_RC_CG_HIER_INST29/RC_CGIC_INST]  \
  [get_cells SPI_INST_RC_CG_HIER_INST30/RC_CGIC_INST]  \
  [get_cells SPI_INST_RC_CG_HIER_INST31/RC_CGIC_INST]  \
  [get_cells TDSP_CORE_INST_DATA_BUS_MACH_INST_RC_CG_HIER_INST32/RC_CGIC_INST]  \
  [get_cells TDSP_CORE_INST_DATA_BUS_MACH_INST_RC_CG_HIER_INST33/RC_CGIC_INST]  \
  [get_cells TDSP_CORE_INST_DECODE_INST_RC_CG_HIER_INST34/RC_CGIC_INST]  \
  [get_cells TDSP_CORE_INST_DECODE_INST_RC_CG_HIER_INST35/RC_CGIC_INST]  \
  [get_cells TDSP_CORE_INST_DECODE_INST_RC_CG_HIER_INST36/RC_CGIC_INST]  \
  [get_cells TDSP_CORE_INST_PORT_BUS_MACH_INST_RC_CG_HIER_INST37/RC_CGIC_INST]  \
  [get_cells TDSP_CORE_INST_PORT_BUS_MACH_INST_RC_CG_HIER_INST38/RC_CGIC_INST]  \
  [get_cells TDSP_CORE_INST_PROG_BUS_MACH_INST_RC_CG_HIER_INST39/RC_CGIC_INST]  \
  [get_cells TDSP_CORE_INST_TDSP_CORE_MACH_INST_RC_CG_HIER_INST40/RC_CGIC_INST]  \
  [get_cells RESULTS_CONV_INST_gt_reg]  \
  [get_cells RESULTS_CONV_INST_ok_reg]  \
  [get_cells {RESULTS_CONV_INST_lower770_dout_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_lower770_dout_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_lower770_dout_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_lower770_dout_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_lower770_dout_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_lower770_dout_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_lower770_dout_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_lower770_dout_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_lower1336_dout_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_lower1336_dout_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_lower1336_dout_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_lower1336_dout_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_lower1336_dout_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_lower1336_dout_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_lower1336_dout_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_lower1336_dout_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[8]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[9]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[10]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[11]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[12]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[13]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[14]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[15]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[8]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[9]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[10]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[11]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[12]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[13]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[14]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[15]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[8]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[9]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[10]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[11]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[12]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[13]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[14]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[15]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[8]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[9]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[10]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[11]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[12]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[13]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[14]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[15]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[8]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[9]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[10]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[11]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[12]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[13]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[14]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[15]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[8]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[9]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[10]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[11]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[12]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[13]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[14]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[15]}]  \
  [get_cells {RESULTS_CONV_INST_upper770_dout_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_upper770_dout_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_upper770_dout_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_upper770_dout_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_upper770_dout_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_upper770_dout_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_upper770_dout_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_upper770_dout_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_upper1336_dout_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_upper1336_dout_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_upper1336_dout_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_upper1336_dout_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_upper1336_dout_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_upper1336_dout_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_upper1336_dout_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_upper1336_dout_reg[7]}]  \
  [get_cells TDSP_CORE_INST_TDSP_CORE_MACH_INST_samp_bio_reg]  \
  [get_cells {SPI_INST_dout_reg[0]}]  \
  [get_cells {SPI_INST_dout_reg[1]}]  \
  [get_cells {SPI_INST_dout_reg[2]}]  \
  [get_cells {SPI_INST_dout_reg[3]}]  \
  [get_cells {SPI_INST_dout_reg[7]}]  \
  [get_cells {SPI_INST_spi_sr_reg[0]}]  \
  [get_cells {SPI_INST_spi_sr_reg[1]}]  \
  [get_cells {SPI_INST_spi_sr_reg[2]}]  \
  [get_cells {SPI_INST_spi_sr_reg[3]}]  \
  [get_cells {SPI_INST_spi_sr_reg[4]}]  \
  [get_cells {SPI_INST_spi_sr_reg[5]}]  \
  [get_cells {SPI_INST_spi_sr_reg[6]}]  \
  [get_cells {SPI_INST_spi_sr_reg[7]}]  \
  [get_cells ARB_INST_dma_grant_reg]  \
  [get_cells {ARB_INST_present_state_reg[0]}]  \
  [get_cells {ARB_INST_present_state_reg[1]}]  \
  [get_cells {ARB_INST_present_state_reg[2]}]  \
  [get_cells {DMA_INST_a_reg[0]}]  \
  [get_cells {DMA_INST_a_reg[1]}]  \
  [get_cells {DMA_INST_a_reg[2]}]  \
  [get_cells {DMA_INST_a_reg[3]}]  \
  [get_cells {DMA_INST_a_reg[4]}]  \
  [get_cells {DMA_INST_a_reg[5]}]  \
  [get_cells {DMA_INST_a_reg[6]}]  \
  [get_cells {DMA_INST_a_reg[7]}]  \
  [get_cells {DMA_INST_present_state_reg[1]}]  \
  [get_cells {DMA_INST_present_state_reg[2]}]  \
  [get_cells {DMA_INST_present_state_reg[3]}]  \
  [get_cells RESULTS_CONV_INST_clear_flag_reg]  \
  [get_cells RESULTS_CONV_INST_digit_clk_reg]  \
  [get_cells RESULTS_CONV_INST_dout_flag_reg]  \
  [get_cells {RESULTS_CONV_INST_high_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_high_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_low_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_out_p1_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_out_p2_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_state_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_state_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_state_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_state_reg[3]}]  \
  [get_cells {SPI_INST_bit_cnt_reg[0]}]  \
  [get_cells {SPI_INST_bit_cnt_reg[1]}]  \
  [get_cells {SPI_INST_bit_cnt_reg[2]}]  \
  [get_cells {SPI_INST_bit_cnt_reg[3]}]  \
  [get_cells {SPI_INST_present_state_reg[0]}]  \
  [get_cells {SPI_INST_present_state_reg[1]}]  \
  [get_cells {SPI_INST_present_state_reg[2]}]  \
  [get_cells TDSP_CORE_INST_DATA_BUS_MACH_INST_as_reg]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[8]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[9]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[10]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[11]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[12]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[13]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[14]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[15]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_present_state_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_present_state_reg[2]}]  \
  [get_cells TDSP_CORE_INST_DECODE_INST_decode_skip_one_reg]  \
  [get_cells TDSP_CORE_INST_DECODE_INST_go_data_reg]  \
  [get_cells TDSP_CORE_INST_DECODE_INST_go_port_reg]  \
  [get_cells TDSP_CORE_INST_DECODE_INST_go_prog_reg]  \
  [get_cells TDSP_CORE_INST_DECODE_INST_read_data_reg]  \
  [get_cells TDSP_CORE_INST_DECODE_INST_read_prog_reg]  \
  [get_cells TDSP_CORE_INST_DECODE_INST_two_cycle_reg]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[8]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[9]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[10]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[11]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[12]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[13]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[14]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[15]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[16]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[17]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[18]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[19]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[20]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[21]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[22]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[23]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[24]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[25]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[26]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[27]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[28]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[29]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[30]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[31]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[8]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[9]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[10]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[11]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[12]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[13]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[14]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[15]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[8]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[9]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[10]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[11]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[12]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[13]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[14]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[15]}]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_branch_stall_delay_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_branch_stall_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_dmov_inc_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_dp_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_go_data_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_go_port_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_go_prog_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_ov_flag_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_ovm_reg]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[8]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[9]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[10]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[11]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[12]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[13]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[14]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[15]}]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_pc_acc_reg]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_pc_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_pc_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_pc_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_pc_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_pc_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_pc_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_pc_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_pc_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_pc_reg[8]}]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_read_prog_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_skip_one_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_three_cycle_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_two_cycle_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_update_it_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_update_stall_reg]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_present_state_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_present_state_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_present_state_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_present_state_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_present_state_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_present_state_reg[2]}]  \
  [get_cells TDSP_CORE_INST_TDSP_CORE_MACH_INST_phi_5_reg]  \
  [get_cells {TDSP_CORE_INST_TDSP_CORE_MACH_INST_tdsp_state_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_TDSP_CORE_MACH_INST_tdsp_state_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_TDSP_CORE_MACH_INST_tdsp_state_reg[2]}]  \
  [get_cells {DIGIT_REG_INST_digit_out_reg[0]}]  \
  [get_cells {DIGIT_REG_INST_digit_out_reg[1]}]  \
  [get_cells {DIGIT_REG_INST_digit_out_reg[2]}]  \
  [get_cells {DIGIT_REG_INST_digit_out_reg[3]}]  \
  [get_cells {DIGIT_REG_INST_digit_out_reg[4]}]  \
  [get_cells {DIGIT_REG_INST_digit_out_reg[5]}]  \
  [get_cells {DIGIT_REG_INST_digit_out_reg[6]}]  \
  [get_cells {DIGIT_REG_INST_digit_out_reg[7]}]  \
  [get_cells DIGIT_REG_INST_flag_out_reg]  \
  [get_cells DMA_INST_read_spi_reg]  \
  [get_cells DMA_INST_top_buf_flag_reg]  \
  [get_cells {RESULTS_CONV_INST_dout_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_dout_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_dout_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_dout_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_dout_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_dout_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_dout_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_dout_reg[7]}]  \
  [get_cells RESULTS_CONV_INST_go_reg]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[8]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[9]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[10]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[11]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[12]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[13]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[14]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[15]}]  \
  [get_cells {RESULTS_CONV_INST_high_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[8]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[9]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[10]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[11]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[12]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[13]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[14]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[15]}]  \
  [get_cells {RESULTS_CONV_INST_low_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_low_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_out_p1_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_out_p1_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_out_p1_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_out_p1_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_out_p1_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_out_p1_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_out_p2_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_out_p2_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_out_p2_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_out_p2_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_out_p2_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_out_p2_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_out_p2_reg[7]}]  \
  [get_cells SPI_INST_dflag_reg]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_alu_cmd_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_alu_cmd_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_alu_cmd_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[16]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[17]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[18]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[19]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[20]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[21]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[22]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[23]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[24]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[25]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[26]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[27]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[28]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[29]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[30]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[31]}]  \
  [get_cells TDSP_CORE_INST_PORT_BUS_MACH_INST_as_reg]  \
  [get_cells TDSP_CORE_INST_TDSP_CORE_MACH_INST_phi_1_reg]  \
  [get_cells TDSP_CORE_INST_TDSP_CORE_MACH_INST_phi_4_reg]  \
  [get_cells TDSP_CORE_INST_TDSP_CORE_MACH_INST_phi_6_reg]  \
  [get_cells TDSP_DS_CS_INST_t_bit_7_reg]  \
  [get_cells TDSP_DS_CS_INST_t_sel_7_reg]  \
  [get_cells {SPI_INST_dout_reg[4]}]  \
  [get_cells {SPI_INST_dout_reg[5]}]  \
  [get_cells {SPI_INST_dout_reg[6]}]  \
  [get_cells TDSP_CORE_INST_DATA_BUS_MACH_INST_read_reg]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[8]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[9]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[10]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[11]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[12]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[13]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[14]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[15]}]  \
  [get_cells ARB_INST_tdsp_grant_reg]  \
  [get_cells DMA_INST_breq_reg]  \
  [get_cells TDSP_CORE_INST_DATA_BUS_MACH_INST_write_reg]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[12]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[13]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[14]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[15]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[12]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[13]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[14]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[15]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_sel_op_a_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_sel_op_a_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_sel_op_a_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_sel_op_b_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_sel_op_b_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_sel_op_b_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[8]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[9]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[10]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[11]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[12]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[13]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[14]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[15]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[12]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[13]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[14]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[15]}]  \
  [get_cells TDSP_CORE_INST_TDSP_CORE_MACH_INST_phi_3_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_arp_reg]  \
  [get_cells {DMA_INST_present_state_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[11]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[10]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[9]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[8]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[11]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[10]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[9]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[8]}]  \
  [get_cells DMA_INST_write_reg]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_present_state_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[9]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[10]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[8]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[11]}]  \
  [get_cells {PM_INST/counter_reg[0]}]  \
  [get_cells {PM_INST/counter_reg[1]}]  \
  [get_cells {PM_INST/power_state_reg[2]}]  \
  [get_cells {PM_INST/power_state_reg[1]}]  \
  [get_cells {PM_INST/power_state_reg[0]}]  \
  [get_cells PM_INST/clk_enable_reg_reg] ]
group_path -weight 1.000000 -name C2O -from [list \
  [get_cells ROM_512x16_0_INST]  \
  [get_cells RAM_128x16_TEST_INST_RAM_128x16_INST]  \
  [get_cells RAM_256x16_TEST_INST_RAM_256x16_INST]  \
  [get_cells RESULTS_CONV_INST_gt_reg]  \
  [get_cells RESULTS_CONV_INST_ok_reg]  \
  [get_cells {RESULTS_CONV_INST_lower770_dout_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_lower770_dout_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_lower770_dout_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_lower770_dout_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_lower770_dout_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_lower770_dout_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_lower770_dout_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_lower770_dout_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_lower1336_dout_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_lower1336_dout_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_lower1336_dout_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_lower1336_dout_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_lower1336_dout_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_lower1336_dout_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_lower1336_dout_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_lower1336_dout_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[8]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[9]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[10]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[11]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[12]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[13]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[14]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[15]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[8]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[9]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[10]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[11]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[12]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[13]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[14]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[15]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[8]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[9]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[10]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[11]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[12]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[13]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[14]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[15]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[8]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[9]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[10]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[11]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[12]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[13]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[14]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[15]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[8]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[9]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[10]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[11]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[12]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[13]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[14]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[15]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[8]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[9]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[10]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[11]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[12]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[13]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[14]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[15]}]  \
  [get_cells {RESULTS_CONV_INST_upper770_dout_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_upper770_dout_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_upper770_dout_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_upper770_dout_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_upper770_dout_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_upper770_dout_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_upper770_dout_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_upper770_dout_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_upper1336_dout_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_upper1336_dout_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_upper1336_dout_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_upper1336_dout_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_upper1336_dout_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_upper1336_dout_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_upper1336_dout_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_upper1336_dout_reg[7]}]  \
  [get_cells TDSP_CORE_INST_TDSP_CORE_MACH_INST_samp_bio_reg]  \
  [get_cells {SPI_INST_dout_reg[0]}]  \
  [get_cells {SPI_INST_dout_reg[1]}]  \
  [get_cells {SPI_INST_dout_reg[2]}]  \
  [get_cells {SPI_INST_dout_reg[3]}]  \
  [get_cells {SPI_INST_dout_reg[7]}]  \
  [get_cells {SPI_INST_spi_sr_reg[0]}]  \
  [get_cells {SPI_INST_spi_sr_reg[1]}]  \
  [get_cells {SPI_INST_spi_sr_reg[2]}]  \
  [get_cells {SPI_INST_spi_sr_reg[3]}]  \
  [get_cells {SPI_INST_spi_sr_reg[4]}]  \
  [get_cells {SPI_INST_spi_sr_reg[5]}]  \
  [get_cells {SPI_INST_spi_sr_reg[6]}]  \
  [get_cells {SPI_INST_spi_sr_reg[7]}]  \
  [get_cells ARB_INST_dma_grant_reg]  \
  [get_cells {ARB_INST_present_state_reg[0]}]  \
  [get_cells {ARB_INST_present_state_reg[1]}]  \
  [get_cells {ARB_INST_present_state_reg[2]}]  \
  [get_cells {DMA_INST_a_reg[0]}]  \
  [get_cells {DMA_INST_a_reg[1]}]  \
  [get_cells {DMA_INST_a_reg[2]}]  \
  [get_cells {DMA_INST_a_reg[3]}]  \
  [get_cells {DMA_INST_a_reg[4]}]  \
  [get_cells {DMA_INST_a_reg[5]}]  \
  [get_cells {DMA_INST_a_reg[6]}]  \
  [get_cells {DMA_INST_a_reg[7]}]  \
  [get_cells {DMA_INST_present_state_reg[1]}]  \
  [get_cells {DMA_INST_present_state_reg[2]}]  \
  [get_cells {DMA_INST_present_state_reg[3]}]  \
  [get_cells RESULTS_CONV_INST_clear_flag_reg]  \
  [get_cells RESULTS_CONV_INST_digit_clk_reg]  \
  [get_cells RESULTS_CONV_INST_dout_flag_reg]  \
  [get_cells {RESULTS_CONV_INST_high_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_high_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_low_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_out_p1_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_out_p2_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_state_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_state_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_state_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_state_reg[3]}]  \
  [get_cells {SPI_INST_bit_cnt_reg[0]}]  \
  [get_cells {SPI_INST_bit_cnt_reg[1]}]  \
  [get_cells {SPI_INST_bit_cnt_reg[2]}]  \
  [get_cells {SPI_INST_bit_cnt_reg[3]}]  \
  [get_cells {SPI_INST_present_state_reg[0]}]  \
  [get_cells {SPI_INST_present_state_reg[1]}]  \
  [get_cells {SPI_INST_present_state_reg[2]}]  \
  [get_cells TDSP_CORE_INST_DATA_BUS_MACH_INST_as_reg]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[8]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[9]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[10]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[11]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[12]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[13]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[14]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[15]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_present_state_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_present_state_reg[2]}]  \
  [get_cells TDSP_CORE_INST_DECODE_INST_decode_skip_one_reg]  \
  [get_cells TDSP_CORE_INST_DECODE_INST_go_data_reg]  \
  [get_cells TDSP_CORE_INST_DECODE_INST_go_port_reg]  \
  [get_cells TDSP_CORE_INST_DECODE_INST_go_prog_reg]  \
  [get_cells TDSP_CORE_INST_DECODE_INST_read_data_reg]  \
  [get_cells TDSP_CORE_INST_DECODE_INST_read_prog_reg]  \
  [get_cells TDSP_CORE_INST_DECODE_INST_two_cycle_reg]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[8]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[9]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[10]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[11]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[12]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[13]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[14]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[15]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[16]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[17]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[18]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[19]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[20]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[21]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[22]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[23]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[24]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[25]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[26]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[27]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[28]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[29]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[30]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[31]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[8]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[9]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[10]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[11]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[12]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[13]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[14]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[15]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[8]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[9]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[10]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[11]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[12]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[13]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[14]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[15]}]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_branch_stall_delay_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_branch_stall_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_dmov_inc_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_dp_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_go_data_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_go_port_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_go_prog_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_ov_flag_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_ovm_reg]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[8]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[9]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[10]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[11]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[12]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[13]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[14]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[15]}]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_pc_acc_reg]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_pc_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_pc_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_pc_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_pc_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_pc_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_pc_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_pc_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_pc_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_pc_reg[8]}]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_read_prog_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_skip_one_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_three_cycle_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_two_cycle_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_update_it_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_update_stall_reg]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_present_state_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_present_state_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_present_state_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_present_state_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_present_state_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_present_state_reg[2]}]  \
  [get_cells TDSP_CORE_INST_TDSP_CORE_MACH_INST_phi_5_reg]  \
  [get_cells {TDSP_CORE_INST_TDSP_CORE_MACH_INST_tdsp_state_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_TDSP_CORE_MACH_INST_tdsp_state_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_TDSP_CORE_MACH_INST_tdsp_state_reg[2]}]  \
  [get_cells {DIGIT_REG_INST_digit_out_reg[0]}]  \
  [get_cells {DIGIT_REG_INST_digit_out_reg[1]}]  \
  [get_cells {DIGIT_REG_INST_digit_out_reg[2]}]  \
  [get_cells {DIGIT_REG_INST_digit_out_reg[3]}]  \
  [get_cells {DIGIT_REG_INST_digit_out_reg[4]}]  \
  [get_cells {DIGIT_REG_INST_digit_out_reg[5]}]  \
  [get_cells {DIGIT_REG_INST_digit_out_reg[6]}]  \
  [get_cells {DIGIT_REG_INST_digit_out_reg[7]}]  \
  [get_cells DIGIT_REG_INST_flag_out_reg]  \
  [get_cells DMA_INST_read_spi_reg]  \
  [get_cells DMA_INST_top_buf_flag_reg]  \
  [get_cells {RESULTS_CONV_INST_dout_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_dout_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_dout_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_dout_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_dout_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_dout_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_dout_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_dout_reg[7]}]  \
  [get_cells RESULTS_CONV_INST_go_reg]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[8]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[9]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[10]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[11]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[12]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[13]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[14]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[15]}]  \
  [get_cells {RESULTS_CONV_INST_high_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[8]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[9]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[10]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[11]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[12]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[13]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[14]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[15]}]  \
  [get_cells {RESULTS_CONV_INST_low_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_low_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_out_p1_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_out_p1_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_out_p1_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_out_p1_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_out_p1_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_out_p1_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_out_p2_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_out_p2_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_out_p2_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_out_p2_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_out_p2_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_out_p2_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_out_p2_reg[7]}]  \
  [get_cells SPI_INST_dflag_reg]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_alu_cmd_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_alu_cmd_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_alu_cmd_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[16]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[17]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[18]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[19]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[20]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[21]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[22]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[23]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[24]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[25]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[26]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[27]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[28]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[29]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[30]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[31]}]  \
  [get_cells TDSP_CORE_INST_PORT_BUS_MACH_INST_as_reg]  \
  [get_cells TDSP_CORE_INST_TDSP_CORE_MACH_INST_phi_1_reg]  \
  [get_cells TDSP_CORE_INST_TDSP_CORE_MACH_INST_phi_4_reg]  \
  [get_cells TDSP_CORE_INST_TDSP_CORE_MACH_INST_phi_6_reg]  \
  [get_cells TDSP_DS_CS_INST_t_bit_7_reg]  \
  [get_cells TDSP_DS_CS_INST_t_sel_7_reg]  \
  [get_cells {SPI_INST_dout_reg[4]}]  \
  [get_cells {SPI_INST_dout_reg[5]}]  \
  [get_cells {SPI_INST_dout_reg[6]}]  \
  [get_cells TDSP_CORE_INST_DATA_BUS_MACH_INST_read_reg]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[8]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[9]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[10]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[11]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[12]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[13]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[14]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[15]}]  \
  [get_cells ARB_INST_tdsp_grant_reg]  \
  [get_cells DMA_INST_breq_reg]  \
  [get_cells TDSP_CORE_INST_DATA_BUS_MACH_INST_write_reg]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[12]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[13]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[14]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[15]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[12]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[13]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[14]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[15]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_sel_op_a_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_sel_op_a_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_sel_op_a_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_sel_op_b_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_sel_op_b_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_sel_op_b_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[8]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[9]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[10]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[11]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[12]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[13]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[14]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[15]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[12]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[13]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[14]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[15]}]  \
  [get_cells TDSP_CORE_INST_TDSP_CORE_MACH_INST_phi_3_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_arp_reg]  \
  [get_cells {DMA_INST_present_state_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[11]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[10]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[9]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[8]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[11]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[10]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[9]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[8]}]  \
  [get_cells DMA_INST_write_reg]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_present_state_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[9]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[10]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[8]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[11]}]  \
  [get_cells {PM_INST/counter_reg[0]}]  \
  [get_cells {PM_INST/counter_reg[1]}]  \
  [get_cells {PM_INST/power_state_reg[2]}]  \
  [get_cells {PM_INST/power_state_reg[1]}]  \
  [get_cells {PM_INST/power_state_reg[0]}]  \
  [get_cells PM_INST/clk_enable_reg_reg] ] -to [list \
  [get_ports {tdigit[7]}]  \
  [get_ports {tdigit[6]}]  \
  [get_ports {tdigit[5]}]  \
  [get_ports {tdigit[4]}]  \
  [get_ports {tdigit[3]}]  \
  [get_ports {tdigit[2]}]  \
  [get_ports {tdigit[1]}]  \
  [get_ports {tdigit[0]}]  \
  [get_ports tdigit_flag]  \
  [get_ports {port_pad_data_out[15]}]  \
  [get_ports {port_pad_data_out[14]}]  \
  [get_ports {port_pad_data_out[13]}]  \
  [get_ports {port_pad_data_out[12]}]  \
  [get_ports {port_pad_data_out[11]}]  \
  [get_ports {port_pad_data_out[10]}]  \
  [get_ports {port_pad_data_out[9]}]  \
  [get_ports {port_pad_data_out[8]}]  \
  [get_ports {port_pad_data_out[7]}]  \
  [get_ports {port_pad_data_out[6]}]  \
  [get_ports {port_pad_data_out[5]}]  \
  [get_ports {port_pad_data_out[4]}]  \
  [get_ports {port_pad_data_out[3]}]  \
  [get_ports {port_pad_data_out[2]}]  \
  [get_ports {port_pad_data_out[1]}]  \
  [get_ports {port_pad_data_out[0]}]  \
  [get_ports {scan_out[2]}]  \
  [get_ports {scan_out[1]}]  \
  [get_ports {scan_out[0]}]  \
  [get_ports vcop]  \
  [get_ports vcom]  \
  [get_ports switch_en_out]  \
  [get_ports Avdd]  \
  [get_ports Avss]  \
  [get_ports VSS]  \
  [get_ports VDD_TDSPCore_R]  \
  [get_ports VDD_AO] ]
group_path -weight 1.000000 -name I2C -from [list \
  [get_ports reset]  \
  [get_ports int]  \
  [get_ports {port_pad_data_in[15]}]  \
  [get_ports {port_pad_data_in[14]}]  \
  [get_ports {port_pad_data_in[13]}]  \
  [get_ports {port_pad_data_in[12]}]  \
  [get_ports {port_pad_data_in[11]}]  \
  [get_ports {port_pad_data_in[10]}]  \
  [get_ports {port_pad_data_in[9]}]  \
  [get_ports {port_pad_data_in[8]}]  \
  [get_ports {port_pad_data_in[7]}]  \
  [get_ports {port_pad_data_in[6]}]  \
  [get_ports {port_pad_data_in[5]}]  \
  [get_ports {port_pad_data_in[4]}]  \
  [get_ports {port_pad_data_in[3]}]  \
  [get_ports {port_pad_data_in[2]}]  \
  [get_ports {port_pad_data_in[1]}]  \
  [get_ports {port_pad_data_in[0]}]  \
  [get_ports scan_clk]  \
  [get_ports test_mode]  \
  [get_ports scan_en]  \
  [get_ports {scan_in[2]}]  \
  [get_ports {scan_in[1]}]  \
  [get_ports {scan_in[0]}]  \
  [get_ports spi_data]  \
  [get_ports spi_fs]  \
  [get_ports refclk]  \
  [get_ports pllrst]  \
  [get_ports ibias]  \
  [get_ports tdsp_pso]  \
  [get_ports Avdd]  \
  [get_ports Avss]  \
  [get_ports VSS]  \
  [get_ports VDD_TDSPCore_R]  \
  [get_ports VDD_AO] ] -to [list \
  [get_cells ROM_512x16_0_INST]  \
  [get_cells RAM_128x16_TEST_INST_RAM_128x16_INST]  \
  [get_cells RAM_256x16_TEST_INST_RAM_256x16_INST]  \
  [get_cells RC_CG_HIER_INST0/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST1/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST2/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST3/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST4/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST5/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST6/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST7/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST8/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST9/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST10/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST11/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST12/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST13/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST14/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST15/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST16/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST17/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST18/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST19/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST20/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST21/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST22/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST23/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST24/RC_CGIC_INST]  \
  [get_cells RC_CG_HIER_INST25/RC_CGIC_INST]  \
  [get_cells ARB_INST_RC_CG_HIER_INST26/RC_CGIC_INST]  \
  [get_cells DMA_INST_RC_CG_HIER_INST27/RC_CGIC_INST]  \
  [get_cells PM_INST/RC_CG_HIER_INST28/RC_CGIC_INST]  \
  [get_cells SPI_INST_RC_CG_HIER_INST29/RC_CGIC_INST]  \
  [get_cells SPI_INST_RC_CG_HIER_INST30/RC_CGIC_INST]  \
  [get_cells SPI_INST_RC_CG_HIER_INST31/RC_CGIC_INST]  \
  [get_cells TDSP_CORE_INST_DATA_BUS_MACH_INST_RC_CG_HIER_INST32/RC_CGIC_INST]  \
  [get_cells TDSP_CORE_INST_DATA_BUS_MACH_INST_RC_CG_HIER_INST33/RC_CGIC_INST]  \
  [get_cells TDSP_CORE_INST_DECODE_INST_RC_CG_HIER_INST34/RC_CGIC_INST]  \
  [get_cells TDSP_CORE_INST_DECODE_INST_RC_CG_HIER_INST35/RC_CGIC_INST]  \
  [get_cells TDSP_CORE_INST_DECODE_INST_RC_CG_HIER_INST36/RC_CGIC_INST]  \
  [get_cells TDSP_CORE_INST_PORT_BUS_MACH_INST_RC_CG_HIER_INST37/RC_CGIC_INST]  \
  [get_cells TDSP_CORE_INST_PORT_BUS_MACH_INST_RC_CG_HIER_INST38/RC_CGIC_INST]  \
  [get_cells TDSP_CORE_INST_PROG_BUS_MACH_INST_RC_CG_HIER_INST39/RC_CGIC_INST]  \
  [get_cells TDSP_CORE_INST_TDSP_CORE_MACH_INST_RC_CG_HIER_INST40/RC_CGIC_INST]  \
  [get_cells RESULTS_CONV_INST_gt_reg]  \
  [get_cells RESULTS_CONV_INST_ok_reg]  \
  [get_cells {RESULTS_CONV_INST_lower770_dout_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_lower770_dout_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_lower770_dout_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_lower770_dout_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_lower770_dout_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_lower770_dout_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_lower770_dout_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_lower770_dout_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_lower1336_dout_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_lower1336_dout_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_lower1336_dout_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_lower1336_dout_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_lower1336_dout_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_lower1336_dout_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_lower1336_dout_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_lower1336_dout_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[8]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[9]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[10]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[11]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[12]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[13]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[14]}]  \
  [get_cells {RESULTS_CONV_INST_r697_reg[15]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[8]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[9]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[10]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[11]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[12]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[13]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[14]}]  \
  [get_cells {RESULTS_CONV_INST_r852_reg[15]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[8]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[9]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[10]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[11]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[12]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[13]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[14]}]  \
  [get_cells {RESULTS_CONV_INST_r941_reg[15]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[8]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[9]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[10]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[11]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[12]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[13]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[14]}]  \
  [get_cells {RESULTS_CONV_INST_r1200_reg[15]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[8]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[9]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[10]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[11]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[12]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[13]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[14]}]  \
  [get_cells {RESULTS_CONV_INST_r1477_reg[15]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[8]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[9]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[10]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[11]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[12]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[13]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[14]}]  \
  [get_cells {RESULTS_CONV_INST_r1633_reg[15]}]  \
  [get_cells {RESULTS_CONV_INST_upper770_dout_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_upper770_dout_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_upper770_dout_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_upper770_dout_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_upper770_dout_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_upper770_dout_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_upper770_dout_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_upper770_dout_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_upper1336_dout_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_upper1336_dout_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_upper1336_dout_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_upper1336_dout_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_upper1336_dout_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_upper1336_dout_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_upper1336_dout_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_upper1336_dout_reg[7]}]  \
  [get_cells TDSP_CORE_INST_TDSP_CORE_MACH_INST_samp_bio_reg]  \
  [get_cells {SPI_INST_dout_reg[0]}]  \
  [get_cells {SPI_INST_dout_reg[1]}]  \
  [get_cells {SPI_INST_dout_reg[2]}]  \
  [get_cells {SPI_INST_dout_reg[3]}]  \
  [get_cells {SPI_INST_dout_reg[7]}]  \
  [get_cells {SPI_INST_spi_sr_reg[0]}]  \
  [get_cells {SPI_INST_spi_sr_reg[1]}]  \
  [get_cells {SPI_INST_spi_sr_reg[2]}]  \
  [get_cells {SPI_INST_spi_sr_reg[3]}]  \
  [get_cells {SPI_INST_spi_sr_reg[4]}]  \
  [get_cells {SPI_INST_spi_sr_reg[5]}]  \
  [get_cells {SPI_INST_spi_sr_reg[6]}]  \
  [get_cells {SPI_INST_spi_sr_reg[7]}]  \
  [get_cells ARB_INST_dma_grant_reg]  \
  [get_cells {ARB_INST_present_state_reg[0]}]  \
  [get_cells {ARB_INST_present_state_reg[1]}]  \
  [get_cells {ARB_INST_present_state_reg[2]}]  \
  [get_cells {DMA_INST_a_reg[0]}]  \
  [get_cells {DMA_INST_a_reg[1]}]  \
  [get_cells {DMA_INST_a_reg[2]}]  \
  [get_cells {DMA_INST_a_reg[3]}]  \
  [get_cells {DMA_INST_a_reg[4]}]  \
  [get_cells {DMA_INST_a_reg[5]}]  \
  [get_cells {DMA_INST_a_reg[6]}]  \
  [get_cells {DMA_INST_a_reg[7]}]  \
  [get_cells {DMA_INST_present_state_reg[1]}]  \
  [get_cells {DMA_INST_present_state_reg[2]}]  \
  [get_cells {DMA_INST_present_state_reg[3]}]  \
  [get_cells RESULTS_CONV_INST_clear_flag_reg]  \
  [get_cells RESULTS_CONV_INST_digit_clk_reg]  \
  [get_cells RESULTS_CONV_INST_dout_flag_reg]  \
  [get_cells {RESULTS_CONV_INST_high_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_high_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_low_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_out_p1_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_out_p2_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_state_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_state_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_state_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_state_reg[3]}]  \
  [get_cells {SPI_INST_bit_cnt_reg[0]}]  \
  [get_cells {SPI_INST_bit_cnt_reg[1]}]  \
  [get_cells {SPI_INST_bit_cnt_reg[2]}]  \
  [get_cells {SPI_INST_bit_cnt_reg[3]}]  \
  [get_cells {SPI_INST_present_state_reg[0]}]  \
  [get_cells {SPI_INST_present_state_reg[1]}]  \
  [get_cells {SPI_INST_present_state_reg[2]}]  \
  [get_cells TDSP_CORE_INST_DATA_BUS_MACH_INST_as_reg]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[8]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[9]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[10]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[11]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[12]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[13]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[14]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_data_out_reg[15]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_present_state_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_present_state_reg[2]}]  \
  [get_cells TDSP_CORE_INST_DECODE_INST_decode_skip_one_reg]  \
  [get_cells TDSP_CORE_INST_DECODE_INST_go_data_reg]  \
  [get_cells TDSP_CORE_INST_DECODE_INST_go_port_reg]  \
  [get_cells TDSP_CORE_INST_DECODE_INST_go_prog_reg]  \
  [get_cells TDSP_CORE_INST_DECODE_INST_read_data_reg]  \
  [get_cells TDSP_CORE_INST_DECODE_INST_read_prog_reg]  \
  [get_cells TDSP_CORE_INST_DECODE_INST_two_cycle_reg]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[8]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[9]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[10]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[11]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[12]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[13]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[14]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[15]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[16]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[17]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[18]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[19]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[20]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[21]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[22]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[23]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[24]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[25]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[26]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[27]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[28]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[29]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[30]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_acc_reg[31]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[8]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[9]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[10]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[11]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[12]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[13]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[14]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar0_reg[15]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[8]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[9]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[10]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[11]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[12]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[13]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[14]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_ar1_reg[15]}]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_branch_stall_delay_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_branch_stall_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_dmov_inc_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_dp_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_go_data_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_go_port_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_go_prog_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_ov_flag_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_ovm_reg]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[8]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[9]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[10]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[11]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[12]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[13]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[14]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[15]}]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_pc_acc_reg]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_pc_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_pc_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_pc_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_pc_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_pc_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_pc_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_pc_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_pc_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_pc_reg[8]}]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_read_prog_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_skip_one_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_three_cycle_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_two_cycle_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_update_it_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_update_stall_reg]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_present_state_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_present_state_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_present_state_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_present_state_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_present_state_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_present_state_reg[2]}]  \
  [get_cells TDSP_CORE_INST_TDSP_CORE_MACH_INST_phi_5_reg]  \
  [get_cells {TDSP_CORE_INST_TDSP_CORE_MACH_INST_tdsp_state_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_TDSP_CORE_MACH_INST_tdsp_state_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_TDSP_CORE_MACH_INST_tdsp_state_reg[2]}]  \
  [get_cells {DIGIT_REG_INST_digit_out_reg[0]}]  \
  [get_cells {DIGIT_REG_INST_digit_out_reg[1]}]  \
  [get_cells {DIGIT_REG_INST_digit_out_reg[2]}]  \
  [get_cells {DIGIT_REG_INST_digit_out_reg[3]}]  \
  [get_cells {DIGIT_REG_INST_digit_out_reg[4]}]  \
  [get_cells {DIGIT_REG_INST_digit_out_reg[5]}]  \
  [get_cells {DIGIT_REG_INST_digit_out_reg[6]}]  \
  [get_cells {DIGIT_REG_INST_digit_out_reg[7]}]  \
  [get_cells DIGIT_REG_INST_flag_out_reg]  \
  [get_cells DMA_INST_read_spi_reg]  \
  [get_cells DMA_INST_top_buf_flag_reg]  \
  [get_cells {RESULTS_CONV_INST_dout_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_dout_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_dout_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_dout_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_dout_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_dout_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_dout_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_dout_reg[7]}]  \
  [get_cells RESULTS_CONV_INST_go_reg]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[8]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[9]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[10]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[11]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[12]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[13]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[14]}]  \
  [get_cells {RESULTS_CONV_INST_high_mag_reg[15]}]  \
  [get_cells {RESULTS_CONV_INST_high_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[7]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[8]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[9]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[10]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[11]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[12]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[13]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[14]}]  \
  [get_cells {RESULTS_CONV_INST_low_mag_reg[15]}]  \
  [get_cells {RESULTS_CONV_INST_low_reg[0]}]  \
  [get_cells {RESULTS_CONV_INST_low_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_out_p1_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_out_p1_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_out_p1_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_out_p1_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_out_p1_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_out_p1_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_out_p2_reg[1]}]  \
  [get_cells {RESULTS_CONV_INST_out_p2_reg[2]}]  \
  [get_cells {RESULTS_CONV_INST_out_p2_reg[3]}]  \
  [get_cells {RESULTS_CONV_INST_out_p2_reg[4]}]  \
  [get_cells {RESULTS_CONV_INST_out_p2_reg[5]}]  \
  [get_cells {RESULTS_CONV_INST_out_p2_reg[6]}]  \
  [get_cells {RESULTS_CONV_INST_out_p2_reg[7]}]  \
  [get_cells SPI_INST_dflag_reg]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_alu_cmd_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_alu_cmd_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_alu_cmd_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[16]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[17]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[18]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[19]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[20]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[21]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[22]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[23]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[24]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[25]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[26]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[27]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[28]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[29]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[30]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_p_reg[31]}]  \
  [get_cells TDSP_CORE_INST_PORT_BUS_MACH_INST_as_reg]  \
  [get_cells TDSP_CORE_INST_TDSP_CORE_MACH_INST_phi_1_reg]  \
  [get_cells TDSP_CORE_INST_TDSP_CORE_MACH_INST_phi_4_reg]  \
  [get_cells TDSP_CORE_INST_TDSP_CORE_MACH_INST_phi_6_reg]  \
  [get_cells TDSP_DS_CS_INST_t_bit_7_reg]  \
  [get_cells TDSP_DS_CS_INST_t_sel_7_reg]  \
  [get_cells {SPI_INST_dout_reg[4]}]  \
  [get_cells {SPI_INST_dout_reg[5]}]  \
  [get_cells {SPI_INST_dout_reg[6]}]  \
  [get_cells TDSP_CORE_INST_DATA_BUS_MACH_INST_read_reg]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[8]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[9]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[10]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[11]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[12]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[13]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[14]}]  \
  [get_cells {TDSP_CORE_INST_PORT_BUS_MACH_INST_data_out_reg[15]}]  \
  [get_cells ARB_INST_tdsp_grant_reg]  \
  [get_cells DMA_INST_breq_reg]  \
  [get_cells TDSP_CORE_INST_DATA_BUS_MACH_INST_write_reg]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[12]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[13]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[14]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[15]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[12]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[13]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[14]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[15]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_sel_op_a_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_sel_op_a_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_sel_op_a_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_sel_op_b_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_sel_op_b_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_sel_op_b_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[8]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[9]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[10]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[11]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[12]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[13]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[14]}]  \
  [get_cells {TDSP_CORE_INST_EXECUTE_INST_top_reg[15]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[1]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[2]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[3]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[4]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[5]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[6]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[7]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[12]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[13]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[14]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[15]}]  \
  [get_cells TDSP_CORE_INST_TDSP_CORE_MACH_INST_phi_3_reg]  \
  [get_cells TDSP_CORE_INST_EXECUTE_INST_arp_reg]  \
  [get_cells {DMA_INST_present_state_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[11]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[10]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[9]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_ir_reg[8]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[11]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[10]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[9]}]  \
  [get_cells {TDSP_CORE_INST_PROG_BUS_MACH_INST_data_out_reg[8]}]  \
  [get_cells DMA_INST_write_reg]  \
  [get_cells {TDSP_CORE_INST_DATA_BUS_MACH_INST_present_state_reg[0]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[9]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[10]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[8]}]  \
  [get_cells {TDSP_CORE_INST_DECODE_INST_decode_reg[11]}]  \
  [get_cells {PM_INST/counter_reg[0]}]  \
  [get_cells {PM_INST/counter_reg[1]}]  \
  [get_cells {PM_INST/power_state_reg[2]}]  \
  [get_cells {PM_INST/power_state_reg[1]}]  \
  [get_cells {PM_INST/power_state_reg[0]}]  \
  [get_cells PM_INST/clk_enable_reg_reg] ]
group_path -weight 1.000000 -name I2O -from [list \
  [get_ports reset]  \
  [get_ports int]  \
  [get_ports {port_pad_data_in[15]}]  \
  [get_ports {port_pad_data_in[14]}]  \
  [get_ports {port_pad_data_in[13]}]  \
  [get_ports {port_pad_data_in[12]}]  \
  [get_ports {port_pad_data_in[11]}]  \
  [get_ports {port_pad_data_in[10]}]  \
  [get_ports {port_pad_data_in[9]}]  \
  [get_ports {port_pad_data_in[8]}]  \
  [get_ports {port_pad_data_in[7]}]  \
  [get_ports {port_pad_data_in[6]}]  \
  [get_ports {port_pad_data_in[5]}]  \
  [get_ports {port_pad_data_in[4]}]  \
  [get_ports {port_pad_data_in[3]}]  \
  [get_ports {port_pad_data_in[2]}]  \
  [get_ports {port_pad_data_in[1]}]  \
  [get_ports {port_pad_data_in[0]}]  \
  [get_ports scan_clk]  \
  [get_ports test_mode]  \
  [get_ports scan_en]  \
  [get_ports {scan_in[2]}]  \
  [get_ports {scan_in[1]}]  \
  [get_ports {scan_in[0]}]  \
  [get_ports spi_data]  \
  [get_ports spi_fs]  \
  [get_ports refclk]  \
  [get_ports pllrst]  \
  [get_ports ibias]  \
  [get_ports tdsp_pso]  \
  [get_ports Avdd]  \
  [get_ports Avss]  \
  [get_ports VSS]  \
  [get_ports VDD_TDSPCore_R]  \
  [get_ports VDD_AO] ] -to [list \
  [get_ports {tdigit[7]}]  \
  [get_ports {tdigit[6]}]  \
  [get_ports {tdigit[5]}]  \
  [get_ports {tdigit[4]}]  \
  [get_ports {tdigit[3]}]  \
  [get_ports {tdigit[2]}]  \
  [get_ports {tdigit[1]}]  \
  [get_ports {tdigit[0]}]  \
  [get_ports tdigit_flag]  \
  [get_ports {port_pad_data_out[15]}]  \
  [get_ports {port_pad_data_out[14]}]  \
  [get_ports {port_pad_data_out[13]}]  \
  [get_ports {port_pad_data_out[12]}]  \
  [get_ports {port_pad_data_out[11]}]  \
  [get_ports {port_pad_data_out[10]}]  \
  [get_ports {port_pad_data_out[9]}]  \
  [get_ports {port_pad_data_out[8]}]  \
  [get_ports {port_pad_data_out[7]}]  \
  [get_ports {port_pad_data_out[6]}]  \
  [get_ports {port_pad_data_out[5]}]  \
  [get_ports {port_pad_data_out[4]}]  \
  [get_ports {port_pad_data_out[3]}]  \
  [get_ports {port_pad_data_out[2]}]  \
  [get_ports {port_pad_data_out[1]}]  \
  [get_ports {port_pad_data_out[0]}]  \
  [get_ports {scan_out[2]}]  \
  [get_ports {scan_out[1]}]  \
  [get_ports {scan_out[0]}]  \
  [get_ports vcop]  \
  [get_ports vcom]  \
  [get_ports switch_en_out]  \
  [get_ports Avdd]  \
  [get_ports Avss]  \
  [get_ports VSS]  \
  [get_ports VDD_TDSPCore_R]  \
  [get_ports VDD_AO] ]
group_path -weight 1.000000 -name cg_enable_group_m_clk -through [list \
  [get_pins ARB_INST_RC_CG_HIER_INST26/enable]  \
  [get_pins ARB_INST_RC_CG_HIER_INST26/RC_CGIC_INST/E]  \
  [get_pins DMA_INST_RC_CG_HIER_INST27/enable]  \
  [get_pins DMA_INST_RC_CG_HIER_INST27/RC_CGIC_INST/E]  \
  [get_pins PM_INST/RC_CG_HIER_INST28/enable]  \
  [get_pins PM_INST/RC_CG_HIER_INST28/RC_CGIC_INST/E]  \
  [get_pins SPI_INST_RC_CG_HIER_INST30/enable]  \
  [get_pins SPI_INST_RC_CG_HIER_INST30/RC_CGIC_INST/E]  \
  [get_pins SPI_INST_RC_CG_HIER_INST31/enable]  \
  [get_pins SPI_INST_RC_CG_HIER_INST31/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST0/enable]  \
  [get_pins RC_CG_HIER_INST0/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST1/enable]  \
  [get_pins RC_CG_HIER_INST1/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST2/enable]  \
  [get_pins RC_CG_HIER_INST2/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST3/enable]  \
  [get_pins RC_CG_HIER_INST3/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST4/enable]  \
  [get_pins RC_CG_HIER_INST4/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST5/enable]  \
  [get_pins RC_CG_HIER_INST5/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST6/enable]  \
  [get_pins RC_CG_HIER_INST6/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST7/enable]  \
  [get_pins RC_CG_HIER_INST7/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST8/enable]  \
  [get_pins RC_CG_HIER_INST8/RC_CGIC_INST/E]  \
  [get_pins ARB_INST_RC_CG_HIER_INST26/enable]  \
  [get_pins ARB_INST_RC_CG_HIER_INST26/RC_CGIC_INST/E]  \
  [get_pins DMA_INST_RC_CG_HIER_INST27/enable]  \
  [get_pins DMA_INST_RC_CG_HIER_INST27/RC_CGIC_INST/E]  \
  [get_pins PM_INST/RC_CG_HIER_INST28/enable]  \
  [get_pins PM_INST/RC_CG_HIER_INST28/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST0/enable]  \
  [get_pins RC_CG_HIER_INST0/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST1/enable]  \
  [get_pins RC_CG_HIER_INST1/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST2/enable]  \
  [get_pins RC_CG_HIER_INST2/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST3/enable]  \
  [get_pins RC_CG_HIER_INST3/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST4/enable]  \
  [get_pins RC_CG_HIER_INST4/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST5/enable]  \
  [get_pins RC_CG_HIER_INST5/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST6/enable]  \
  [get_pins RC_CG_HIER_INST6/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST7/enable]  \
  [get_pins RC_CG_HIER_INST7/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST8/enable]  \
  [get_pins RC_CG_HIER_INST8/RC_CGIC_INST/E]  \
  [get_pins SPI_INST_RC_CG_HIER_INST30/enable]  \
  [get_pins SPI_INST_RC_CG_HIER_INST30/RC_CGIC_INST/E]  \
  [get_pins SPI_INST_RC_CG_HIER_INST31/enable]  \
  [get_pins SPI_INST_RC_CG_HIER_INST31/RC_CGIC_INST/E]  \
  [get_pins ARB_INST_RC_CG_HIER_INST26/enable]  \
  [get_pins ARB_INST_RC_CG_HIER_INST26/RC_CGIC_INST/E]  \
  [get_pins DMA_INST_RC_CG_HIER_INST27/enable]  \
  [get_pins DMA_INST_RC_CG_HIER_INST27/RC_CGIC_INST/E]  \
  [get_pins PM_INST/RC_CG_HIER_INST28/enable]  \
  [get_pins PM_INST/RC_CG_HIER_INST28/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST0/enable]  \
  [get_pins RC_CG_HIER_INST0/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST1/enable]  \
  [get_pins RC_CG_HIER_INST1/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST2/enable]  \
  [get_pins RC_CG_HIER_INST2/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST3/enable]  \
  [get_pins RC_CG_HIER_INST3/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST4/enable]  \
  [get_pins RC_CG_HIER_INST4/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST5/enable]  \
  [get_pins RC_CG_HIER_INST5/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST6/enable]  \
  [get_pins RC_CG_HIER_INST6/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST7/enable]  \
  [get_pins RC_CG_HIER_INST7/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST8/enable]  \
  [get_pins RC_CG_HIER_INST8/RC_CGIC_INST/E]  \
  [get_pins SPI_INST_RC_CG_HIER_INST30/enable]  \
  [get_pins SPI_INST_RC_CG_HIER_INST30/RC_CGIC_INST/E]  \
  [get_pins SPI_INST_RC_CG_HIER_INST31/enable]  \
  [get_pins SPI_INST_RC_CG_HIER_INST31/RC_CGIC_INST/E] ]
group_path -weight 1.000000 -name cg_enable_group_m_spi_clk -through [list \
  [get_pins SPI_INST_RC_CG_HIER_INST29/enable]  \
  [get_pins SPI_INST_RC_CG_HIER_INST29/RC_CGIC_INST/E]  \
  [get_pins SPI_INST_RC_CG_HIER_INST29/enable]  \
  [get_pins SPI_INST_RC_CG_HIER_INST29/RC_CGIC_INST/E]  \
  [get_pins SPI_INST_RC_CG_HIER_INST29/enable]  \
  [get_pins SPI_INST_RC_CG_HIER_INST29/RC_CGIC_INST/E] ]
group_path -weight 1.000000 -name cg_enable_group_refclk -through [list \
  [get_pins TDSP_CORE_INST_DATA_BUS_MACH_INST_RC_CG_HIER_INST32/enable]  \
  [get_pins TDSP_CORE_INST_DATA_BUS_MACH_INST_RC_CG_HIER_INST32/RC_CGIC_INST/E]  \
  [get_pins TDSP_CORE_INST_DATA_BUS_MACH_INST_RC_CG_HIER_INST33/enable]  \
  [get_pins TDSP_CORE_INST_DATA_BUS_MACH_INST_RC_CG_HIER_INST33/RC_CGIC_INST/E]  \
  [get_pins TDSP_CORE_INST_DECODE_INST_RC_CG_HIER_INST34/enable]  \
  [get_pins TDSP_CORE_INST_DECODE_INST_RC_CG_HIER_INST34/RC_CGIC_INST/E]  \
  [get_pins TDSP_CORE_INST_DECODE_INST_RC_CG_HIER_INST35/enable]  \
  [get_pins TDSP_CORE_INST_DECODE_INST_RC_CG_HIER_INST35/RC_CGIC_INST/E]  \
  [get_pins TDSP_CORE_INST_DECODE_INST_RC_CG_HIER_INST36/enable]  \
  [get_pins TDSP_CORE_INST_DECODE_INST_RC_CG_HIER_INST36/RC_CGIC_INST/E]  \
  [get_pins TDSP_CORE_INST_PORT_BUS_MACH_INST_RC_CG_HIER_INST37/enable]  \
  [get_pins TDSP_CORE_INST_PORT_BUS_MACH_INST_RC_CG_HIER_INST37/RC_CGIC_INST/E]  \
  [get_pins TDSP_CORE_INST_PORT_BUS_MACH_INST_RC_CG_HIER_INST38/enable]  \
  [get_pins TDSP_CORE_INST_PORT_BUS_MACH_INST_RC_CG_HIER_INST38/RC_CGIC_INST/E]  \
  [get_pins TDSP_CORE_INST_PROG_BUS_MACH_INST_RC_CG_HIER_INST39/enable]  \
  [get_pins TDSP_CORE_INST_PROG_BUS_MACH_INST_RC_CG_HIER_INST39/RC_CGIC_INST/E]  \
  [get_pins TDSP_CORE_INST_TDSP_CORE_MACH_INST_RC_CG_HIER_INST40/enable]  \
  [get_pins TDSP_CORE_INST_TDSP_CORE_MACH_INST_RC_CG_HIER_INST40/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST17/enable]  \
  [get_pins RC_CG_HIER_INST17/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST18/enable]  \
  [get_pins RC_CG_HIER_INST18/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST19/enable]  \
  [get_pins RC_CG_HIER_INST19/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST20/enable]  \
  [get_pins RC_CG_HIER_INST20/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST21/enable]  \
  [get_pins RC_CG_HIER_INST21/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST22/enable]  \
  [get_pins RC_CG_HIER_INST22/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST23/enable]  \
  [get_pins RC_CG_HIER_INST23/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST24/enable]  \
  [get_pins RC_CG_HIER_INST24/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST25/enable]  \
  [get_pins RC_CG_HIER_INST25/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST17/enable]  \
  [get_pins RC_CG_HIER_INST17/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST18/enable]  \
  [get_pins RC_CG_HIER_INST18/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST19/enable]  \
  [get_pins RC_CG_HIER_INST19/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST20/enable]  \
  [get_pins RC_CG_HIER_INST20/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST21/enable]  \
  [get_pins RC_CG_HIER_INST21/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST22/enable]  \
  [get_pins RC_CG_HIER_INST22/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST23/enable]  \
  [get_pins RC_CG_HIER_INST23/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST24/enable]  \
  [get_pins RC_CG_HIER_INST24/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST25/enable]  \
  [get_pins RC_CG_HIER_INST25/RC_CGIC_INST/E]  \
  [get_pins TDSP_CORE_INST_DATA_BUS_MACH_INST_RC_CG_HIER_INST32/enable]  \
  [get_pins TDSP_CORE_INST_DATA_BUS_MACH_INST_RC_CG_HIER_INST32/RC_CGIC_INST/E]  \
  [get_pins TDSP_CORE_INST_DATA_BUS_MACH_INST_RC_CG_HIER_INST33/enable]  \
  [get_pins TDSP_CORE_INST_DATA_BUS_MACH_INST_RC_CG_HIER_INST33/RC_CGIC_INST/E]  \
  [get_pins TDSP_CORE_INST_DECODE_INST_RC_CG_HIER_INST34/enable]  \
  [get_pins TDSP_CORE_INST_DECODE_INST_RC_CG_HIER_INST34/RC_CGIC_INST/E]  \
  [get_pins TDSP_CORE_INST_DECODE_INST_RC_CG_HIER_INST35/enable]  \
  [get_pins TDSP_CORE_INST_DECODE_INST_RC_CG_HIER_INST35/RC_CGIC_INST/E]  \
  [get_pins TDSP_CORE_INST_DECODE_INST_RC_CG_HIER_INST36/enable]  \
  [get_pins TDSP_CORE_INST_DECODE_INST_RC_CG_HIER_INST36/RC_CGIC_INST/E]  \
  [get_pins TDSP_CORE_INST_PORT_BUS_MACH_INST_RC_CG_HIER_INST37/enable]  \
  [get_pins TDSP_CORE_INST_PORT_BUS_MACH_INST_RC_CG_HIER_INST37/RC_CGIC_INST/E]  \
  [get_pins TDSP_CORE_INST_PORT_BUS_MACH_INST_RC_CG_HIER_INST38/enable]  \
  [get_pins TDSP_CORE_INST_PORT_BUS_MACH_INST_RC_CG_HIER_INST38/RC_CGIC_INST/E]  \
  [get_pins TDSP_CORE_INST_PROG_BUS_MACH_INST_RC_CG_HIER_INST39/enable]  \
  [get_pins TDSP_CORE_INST_PROG_BUS_MACH_INST_RC_CG_HIER_INST39/RC_CGIC_INST/E]  \
  [get_pins TDSP_CORE_INST_TDSP_CORE_MACH_INST_RC_CG_HIER_INST40/enable]  \
  [get_pins TDSP_CORE_INST_TDSP_CORE_MACH_INST_RC_CG_HIER_INST40/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST17/enable]  \
  [get_pins RC_CG_HIER_INST17/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST18/enable]  \
  [get_pins RC_CG_HIER_INST18/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST19/enable]  \
  [get_pins RC_CG_HIER_INST19/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST20/enable]  \
  [get_pins RC_CG_HIER_INST20/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST21/enable]  \
  [get_pins RC_CG_HIER_INST21/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST22/enable]  \
  [get_pins RC_CG_HIER_INST22/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST23/enable]  \
  [get_pins RC_CG_HIER_INST23/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST24/enable]  \
  [get_pins RC_CG_HIER_INST24/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST25/enable]  \
  [get_pins RC_CG_HIER_INST25/RC_CGIC_INST/E]  \
  [get_pins TDSP_CORE_INST_DATA_BUS_MACH_INST_RC_CG_HIER_INST32/enable]  \
  [get_pins TDSP_CORE_INST_DATA_BUS_MACH_INST_RC_CG_HIER_INST32/RC_CGIC_INST/E]  \
  [get_pins TDSP_CORE_INST_DATA_BUS_MACH_INST_RC_CG_HIER_INST33/enable]  \
  [get_pins TDSP_CORE_INST_DATA_BUS_MACH_INST_RC_CG_HIER_INST33/RC_CGIC_INST/E]  \
  [get_pins TDSP_CORE_INST_DECODE_INST_RC_CG_HIER_INST34/enable]  \
  [get_pins TDSP_CORE_INST_DECODE_INST_RC_CG_HIER_INST34/RC_CGIC_INST/E]  \
  [get_pins TDSP_CORE_INST_DECODE_INST_RC_CG_HIER_INST35/enable]  \
  [get_pins TDSP_CORE_INST_DECODE_INST_RC_CG_HIER_INST35/RC_CGIC_INST/E]  \
  [get_pins TDSP_CORE_INST_DECODE_INST_RC_CG_HIER_INST36/enable]  \
  [get_pins TDSP_CORE_INST_DECODE_INST_RC_CG_HIER_INST36/RC_CGIC_INST/E]  \
  [get_pins TDSP_CORE_INST_PORT_BUS_MACH_INST_RC_CG_HIER_INST37/enable]  \
  [get_pins TDSP_CORE_INST_PORT_BUS_MACH_INST_RC_CG_HIER_INST37/RC_CGIC_INST/E]  \
  [get_pins TDSP_CORE_INST_PORT_BUS_MACH_INST_RC_CG_HIER_INST38/enable]  \
  [get_pins TDSP_CORE_INST_PORT_BUS_MACH_INST_RC_CG_HIER_INST38/RC_CGIC_INST/E]  \
  [get_pins TDSP_CORE_INST_PROG_BUS_MACH_INST_RC_CG_HIER_INST39/enable]  \
  [get_pins TDSP_CORE_INST_PROG_BUS_MACH_INST_RC_CG_HIER_INST39/RC_CGIC_INST/E]  \
  [get_pins TDSP_CORE_INST_TDSP_CORE_MACH_INST_RC_CG_HIER_INST40/enable]  \
  [get_pins TDSP_CORE_INST_TDSP_CORE_MACH_INST_RC_CG_HIER_INST40/RC_CGIC_INST/E] ]
group_path -weight 1.000000 -name cg_enable_group_m_rcc_clk -through [list \
  [get_pins RC_CG_HIER_INST9/enable]  \
  [get_pins RC_CG_HIER_INST9/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST10/enable]  \
  [get_pins RC_CG_HIER_INST10/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST11/enable]  \
  [get_pins RC_CG_HIER_INST11/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST12/enable]  \
  [get_pins RC_CG_HIER_INST12/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST13/enable]  \
  [get_pins RC_CG_HIER_INST13/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST14/enable]  \
  [get_pins RC_CG_HIER_INST14/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST15/enable]  \
  [get_pins RC_CG_HIER_INST15/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST16/enable]  \
  [get_pins RC_CG_HIER_INST16/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST9/enable]  \
  [get_pins RC_CG_HIER_INST9/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST10/enable]  \
  [get_pins RC_CG_HIER_INST10/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST11/enable]  \
  [get_pins RC_CG_HIER_INST11/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST12/enable]  \
  [get_pins RC_CG_HIER_INST12/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST13/enable]  \
  [get_pins RC_CG_HIER_INST13/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST14/enable]  \
  [get_pins RC_CG_HIER_INST14/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST15/enable]  \
  [get_pins RC_CG_HIER_INST15/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST16/enable]  \
  [get_pins RC_CG_HIER_INST16/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST9/enable]  \
  [get_pins RC_CG_HIER_INST9/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST10/enable]  \
  [get_pins RC_CG_HIER_INST10/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST11/enable]  \
  [get_pins RC_CG_HIER_INST11/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST12/enable]  \
  [get_pins RC_CG_HIER_INST12/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST13/enable]  \
  [get_pins RC_CG_HIER_INST13/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST14/enable]  \
  [get_pins RC_CG_HIER_INST14/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST15/enable]  \
  [get_pins RC_CG_HIER_INST15/RC_CGIC_INST/E]  \
  [get_pins RC_CG_HIER_INST16/enable]  \
  [get_pins RC_CG_HIER_INST16/RC_CGIC_INST/E] ]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports ibias]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports pllrst]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports spi_fs]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports spi_data]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports test_mode]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports scan_clk]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports scan_en]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_in[0]}]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_in[1]}]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_in[2]}]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_in[3]}]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_in[4]}]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_in[5]}]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_in[6]}]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_in[7]}]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_in[8]}]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_in[9]}]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_in[10]}]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_in[11]}]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_in[12]}]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_in[13]}]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_in[14]}]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_in[15]}]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports int]
set_input_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports reset]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports vcom]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports vcop]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_out[0]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_out[1]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_out[2]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_out[3]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_out[4]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_out[5]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_out[6]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_out[7]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_out[8]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_out[9]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_out[10]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_out[11]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_out[12]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_out[13]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_out[14]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {port_pad_data_out[15]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports tdigit_flag]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {tdigit[0]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {tdigit[1]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {tdigit[2]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {tdigit[3]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {tdigit[4]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {tdigit[5]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {tdigit[6]}]
set_output_delay -clock [get_clocks refclk] -add_delay 0.3 [get_ports {tdigit[7]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports ibias]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports pllrst]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports spi_fs]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports spi_data]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports test_mode]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports scan_clk]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports scan_en]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_in[0]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_in[1]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_in[2]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_in[3]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_in[4]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_in[5]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_in[6]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_in[7]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_in[8]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_in[9]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_in[10]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_in[11]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_in[12]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_in[13]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_in[14]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_in[15]}]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports int]
set_input_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports reset]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports vcom]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports vcop]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_out[0]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_out[1]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_out[2]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_out[3]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_out[4]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_out[5]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_out[6]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_out[7]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_out[8]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_out[9]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_out[10]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_out[11]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_out[12]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_out[13]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_out[14]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {port_pad_data_out[15]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports tdigit_flag]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {tdigit[0]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {tdigit[1]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {tdigit[2]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {tdigit[3]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {tdigit[4]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {tdigit[5]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {tdigit[6]}]
set_output_delay -clock [get_clocks m_clk] -add_delay 0.3 [get_ports {tdigit[7]}]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports ibias]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports pllrst]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports spi_fs]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports spi_data]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports test_mode]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports scan_clk]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports scan_en]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_in[0]}]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_in[1]}]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_in[2]}]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_in[3]}]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_in[4]}]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_in[5]}]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_in[6]}]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_in[7]}]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_in[8]}]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_in[9]}]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_in[10]}]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_in[11]}]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_in[12]}]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_in[13]}]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_in[14]}]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_in[15]}]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports int]
set_input_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports reset]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports vcom]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports vcop]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_out[0]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_out[1]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_out[2]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_out[3]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_out[4]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_out[5]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_out[6]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_out[7]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_out[8]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_out[9]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_out[10]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_out[11]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_out[12]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_out[13]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_out[14]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {port_pad_data_out[15]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports tdigit_flag]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {tdigit[0]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {tdigit[1]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {tdigit[2]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {tdigit[3]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {tdigit[4]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {tdigit[5]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {tdigit[6]}]
set_output_delay -clock [get_clocks m_rcc_clk] -add_delay 0.3 [get_ports {tdigit[7]}]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports ibias]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports pllrst]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports spi_fs]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports spi_data]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports test_mode]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports scan_clk]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports scan_en]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_in[0]}]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_in[1]}]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_in[2]}]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_in[3]}]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_in[4]}]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_in[5]}]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_in[6]}]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_in[7]}]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_in[8]}]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_in[9]}]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_in[10]}]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_in[11]}]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_in[12]}]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_in[13]}]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_in[14]}]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_in[15]}]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports int]
set_input_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports reset]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports vcom]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports vcop]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_out[0]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_out[1]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_out[2]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_out[3]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_out[4]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_out[5]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_out[6]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_out[7]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_out[8]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_out[9]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_out[10]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_out[11]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_out[12]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_out[13]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_out[14]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {port_pad_data_out[15]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports tdigit_flag]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {tdigit[0]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {tdigit[1]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {tdigit[2]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {tdigit[3]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {tdigit[4]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {tdigit[5]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {tdigit[6]}]
set_output_delay -clock [get_clocks m_spi_clk] -add_delay 0.3 [get_ports {tdigit[7]}]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports ibias]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports pllrst]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports spi_fs]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports spi_data]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports test_mode]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports scan_clk]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports scan_en]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[0]}]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[1]}]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[2]}]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[3]}]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[4]}]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[5]}]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[6]}]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[7]}]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[8]}]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[9]}]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[10]}]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[11]}]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[12]}]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[13]}]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[14]}]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[15]}]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports int]
set_input_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports reset]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports vcom]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports vcop]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[0]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[1]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[2]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[3]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[4]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[5]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[6]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[7]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[8]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[9]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[10]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[11]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[12]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[13]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[14]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[15]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports tdigit_flag]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {tdigit[0]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {tdigit[1]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {tdigit[2]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {tdigit[3]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {tdigit[4]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {tdigit[5]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {tdigit[6]}]
set_output_delay -clock [get_clocks m_dsram_clk] -add_delay 0.3 [get_ports {tdigit[7]}]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports ibias]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports pllrst]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports spi_fs]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports spi_data]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports test_mode]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports scan_clk]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports scan_en]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[0]}]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[1]}]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[2]}]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[3]}]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[4]}]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[5]}]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[6]}]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[7]}]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[8]}]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[9]}]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[10]}]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[11]}]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[12]}]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[13]}]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[14]}]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_in[15]}]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports int]
set_input_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports reset]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports vcom]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports vcop]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[0]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[1]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[2]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[3]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[4]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[5]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[6]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[7]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[8]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[9]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[10]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[11]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[12]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[13]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[14]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {port_pad_data_out[15]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports tdigit_flag]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {tdigit[0]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {tdigit[1]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {tdigit[2]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {tdigit[3]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {tdigit[4]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {tdigit[5]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {tdigit[6]}]
set_output_delay -clock [get_clocks m_ram_clk] -add_delay 0.3 [get_ports {tdigit[7]}]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports ibias]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports pllrst]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports spi_fs]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports spi_data]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports test_mode]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports scan_clk]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports scan_en]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_in[0]}]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_in[1]}]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_in[2]}]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_in[3]}]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_in[4]}]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_in[5]}]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_in[6]}]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_in[7]}]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_in[8]}]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_in[9]}]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_in[10]}]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_in[11]}]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_in[12]}]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_in[13]}]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_in[14]}]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_in[15]}]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports int]
set_input_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports reset]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports vcom]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports vcop]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_out[0]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_out[1]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_out[2]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_out[3]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_out[4]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_out[5]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_out[6]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_out[7]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_out[8]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_out[9]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_out[10]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_out[11]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_out[12]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_out[13]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_out[14]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {port_pad_data_out[15]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports tdigit_flag]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {tdigit[0]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {tdigit[1]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {tdigit[2]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {tdigit[3]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {tdigit[4]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {tdigit[5]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {tdigit[6]}]
set_output_delay -clock [get_clocks m_digit_clk] -add_delay 0.3 [get_ports {tdigit[7]}]
set_max_fanout 15.000 [current_design]
set_max_transition 1.2 [current_design]
