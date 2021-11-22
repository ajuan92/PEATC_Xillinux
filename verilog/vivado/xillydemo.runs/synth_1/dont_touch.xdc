# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# XDC: E:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/vivado-essentials/xillydemo.xdc

# Block Designs: E:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/vivado-essentials/vivado_system/vivado_system.bd
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==vivado_system || ORIG_REF_NAME==vivado_system} -quiet] -quiet

# IP: E:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/vivado-essentials/vivado_system/ip/vivado_system_xillybus_lite_0_0/vivado_system_xillybus_lite_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==vivado_system_xillybus_lite_0_0 || ORIG_REF_NAME==vivado_system_xillybus_lite_0_0} -quiet] -quiet

# IP: E:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/vivado-essentials/vivado_system/ip/vivado_system_xillybus_ip_0_0/vivado_system_xillybus_ip_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==vivado_system_xillybus_ip_0_0 || ORIG_REF_NAME==vivado_system_xillybus_ip_0_0} -quiet] -quiet

# IP: E:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/vivado-essentials/vivado_system/ip/vivado_system_xillyvga_0_0/vivado_system_xillyvga_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==vivado_system_xillyvga_0_0 || ORIG_REF_NAME==vivado_system_xillyvga_0_0} -quiet] -quiet

# IP: E:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/vivado-essentials/vivado_system/ip/vivado_system_processing_system7_0_0/vivado_system_processing_system7_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==vivado_system_processing_system7_0_0 || ORIG_REF_NAME==vivado_system_processing_system7_0_0} -quiet] -quiet

# IP: E:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/vivado-essentials/vivado_system/ip/vivado_system_rst_processing_system7_0_100M_0/vivado_system_rst_processing_system7_0_100M_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==vivado_system_rst_processing_system7_0_100M_0 || ORIG_REF_NAME==vivado_system_rst_processing_system7_0_100M_0} -quiet] -quiet

# IP: E:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/vivado-essentials/vivado_system/ip/vivado_system_xlconcat_0_0/vivado_system_xlconcat_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==vivado_system_xlconcat_0_0 || ORIG_REF_NAME==vivado_system_xlconcat_0_0} -quiet] -quiet

# IP: E:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/vivado-essentials/vivado_system/ip/vivado_system_xbar_0/vivado_system_xbar_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==vivado_system_xbar_0 || ORIG_REF_NAME==vivado_system_xbar_0} -quiet] -quiet

# IP: E:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/vivado-essentials/vivado_system/ip/vivado_system_ps7_0_axi_periph_0/vivado_system_ps7_0_axi_periph_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==vivado_system_ps7_0_axi_periph_0 || ORIG_REF_NAME==vivado_system_ps7_0_axi_periph_0} -quiet] -quiet

# IP: E:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/vivado-essentials/vivado_system/ip/vivado_system_auto_pc_0/vivado_system_auto_pc_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==vivado_system_auto_pc_0 || ORIG_REF_NAME==vivado_system_auto_pc_0} -quiet] -quiet

# IP: ip/fifo_GS_Host_FPGA/fifo_GS_Host_FPGA.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==fifo_GS_Host_FPGA || ORIG_REF_NAME==fifo_GS_Host_FPGA} -quiet] -quiet

# IP: ip/fifo_GS_FPGA_Host/fifo_GS_FPGA_Host.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==fifo_GS_FPGA_Host || ORIG_REF_NAME==fifo_GS_FPGA_Host} -quiet] -quiet

# XDC: e:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/vivado-essentials/vivado_system/ip/vivado_system_processing_system7_0_0/vivado_system_processing_system7_0_0.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==vivado_system_processing_system7_0_0 || ORIG_REF_NAME==vivado_system_processing_system7_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: e:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/vivado-essentials/vivado_system/ip/vivado_system_rst_processing_system7_0_100M_0/vivado_system_rst_processing_system7_0_100M_0_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==vivado_system_rst_processing_system7_0_100M_0 || ORIG_REF_NAME==vivado_system_rst_processing_system7_0_100M_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: e:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/vivado-essentials/vivado_system/ip/vivado_system_rst_processing_system7_0_100M_0/vivado_system_rst_processing_system7_0_100M_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==vivado_system_rst_processing_system7_0_100M_0 || ORIG_REF_NAME==vivado_system_rst_processing_system7_0_100M_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: e:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/vivado-essentials/vivado_system/ip/vivado_system_rst_processing_system7_0_100M_0/vivado_system_rst_processing_system7_0_100M_0_ooc.xdc

# XDC: e:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/vivado-essentials/vivado_system/ip/vivado_system_xbar_0/vivado_system_xbar_0_ooc.xdc

# XDC: e:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/vivado-essentials/vivado_system/ip/vivado_system_auto_pc_0/vivado_system_auto_pc_0_ooc.xdc

# XDC: E:/ARCHIVOS_Y_DOCUMENTOS/01_Tesis_Local/PEATC_Xillinux/PEATC_Xillinux/vivado-essentials/vivado_system/vivado_system_ooc.xdc