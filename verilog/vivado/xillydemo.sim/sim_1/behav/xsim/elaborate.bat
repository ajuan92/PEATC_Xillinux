@echo off
REM ****************************************************************************
REM Vivado (TM) v2021.2 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Sun Jan 23 00:44:51 -0600 2022
REM SW Build 3367213 on Tue Oct 19 02:48:09 MDT 2021
REM
REM IP Build 3369179 on Thu Oct 21 08:25:16 MDT 2021
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
REM elaborate design
echo "xelab --incr --debug typical --relax --mt 2 -L xil_defaultlib -L fifo_generator_v13_2_6 -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_11 -L processing_system7_vip_v1_0_13 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L generic_baseblocks_v2_1_0 -L axi_register_slice_v2_1_25 -L axi_data_fifo_v2_1_24 -L axi_crossbar_v2_1_26 -L axi_protocol_converter_v2_1_25 -L xlconcat_v2_1_4 -L uvm -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot RN_TestBench_behav xil_defaultlib.RN_TestBench xil_defaultlib.glbl -log elaborate.log"
call xelab  --incr --debug typical --relax --mt 2 -L xil_defaultlib -L fifo_generator_v13_2_6 -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_11 -L processing_system7_vip_v1_0_13 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L generic_baseblocks_v2_1_0 -L axi_register_slice_v2_1_25 -L axi_data_fifo_v2_1_24 -L axi_crossbar_v2_1_26 -L axi_protocol_converter_v2_1_25 -L xlconcat_v2_1_4 -L uvm -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot RN_TestBench_behav xil_defaultlib.RN_TestBench xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
