module xillydemo
  (
  input  clk_100,
  input  otg_oc,   
  inout [55:0] PS_GPIO,
  output [3:0] GPIO_LED,
  output [3:0] vga4_blue,
  output [3:0] vga4_green,
  output [3:0] vga4_red,
  output  vga_hsync,
  output  vga_vsync,

  output  audio_mclk,
  output  audio_dac,
  input   audio_adc,
  input   audio_bclk,
  input   audio_lrclk,

  output smb_sclk,
  inout  smb_sdata,
  output [1:0] smbus_addr

  ); 

// Clock and quiesce
  wire  bus_clk;
  wire  quiesce;


  // Wires related to /dev/xillybus_gs_raw_signal
  wire  user_r_gs_raw_signal_rden;
  wire  user_r_gs_raw_signal_empty;
  wire [15:0] user_r_gs_raw_signal_data;
  wire  user_r_gs_raw_signal_eof;
  wire  user_r_gs_raw_signal_open;

  // Wires related to /dev/xillybus_gs_start_test
  wire  user_w_gs_start_test_wren;
  wire  user_w_gs_start_test_full;
  wire [31:0] user_w_gs_start_test_data;
  wire  user_w_gs_start_test_open;

  // Wires related to /dev/xillybus_rn_diag_param
  wire  user_w_rn_diag_param_wren;
  wire  user_w_rn_diag_param_full;
  wire [15:0] user_w_rn_diag_param_data;
  wire  user_w_rn_diag_param_open;

  // Wires related to /dev/xillybus_rn_diag_result
  wire  user_r_rn_diag_result_rden;
  wire  user_r_rn_diag_result_empty;
  wire [31:0] user_r_rn_diag_result_data;
  wire  user_r_rn_diag_result_eof;
  wire  user_r_rn_diag_result_open;

  // Wires related to Xillybus Lite
  wire  user_clk;
  wire  user_wren;
  wire  user_rden;
  wire [3:0] user_wstrb;
  wire [31:0] user_addr;
  wire [31:0] user_rd_data;
  wire [31:0] user_wr_data;
  wire  user_irq;


  xillybus xillybus_ins (
  
      // General signals
    .PS_CLK(PS_CLK),
    .PS_PORB(PS_PORB),
    .PS_SRSTB(PS_SRSTB),
    .clk_100(clk_100),
    .otg_oc(otg_oc),
    .DDR_Addr(DDR_Addr),
    .DDR_BankAddr(DDR_BankAddr),
    .DDR_CAS_n(DDR_CAS_n),
    .DDR_CKE(DDR_CKE),
    .DDR_CS_n(DDR_CS_n),
    .DDR_Clk(DDR_Clk),
    .DDR_Clk_n(DDR_Clk_n),
    .DDR_DM(DDR_DM),
    .DDR_DQ(DDR_DQ),
    .DDR_DQS(DDR_DQS),
    .DDR_DQS_n(DDR_DQS_n),
    .DDR_DRSTB(DDR_DRSTB),
    .DDR_ODT(DDR_ODT),
    .DDR_RAS_n(DDR_RAS_n),
    .DDR_VRN(DDR_VRN),
    .DDR_VRP(DDR_VRP),
    .MIO(MIO),
    .PS_GPIO(PS_GPIO),
    .DDR_WEB(DDR_WEB),
    .GPIO_LED(GPIO_LED),
    .bus_clk(bus_clk),
    .quiesce(quiesce),
    .vga4_blue(vga4_blue),
    .vga4_green(vga4_green),
    .vga4_red(vga4_red),
    .vga_hsync(vga_hsync),
    .vga_vsync(vga_vsync),

    // Ports related to /dev/xillybus_gs_raw_signal
    // FPGA to CPU signals:
    .user_r_gs_raw_signal_rden(user_r_gs_raw_signal_rden),
    .user_r_gs_raw_signal_empty(user_r_gs_raw_signal_empty),
    .user_r_gs_raw_signal_data(user_r_gs_raw_signal_data),
    .user_r_gs_raw_signal_eof(user_r_gs_raw_signal_eof),
    .user_r_gs_raw_signal_open(user_r_gs_raw_signal_open),

    // Ports related to /dev/xillybus_gs_start_test
    // CPU to FPGA signals:
    .user_w_gs_start_test_wren(user_w_gs_start_test_wren),
    .user_w_gs_start_test_full(user_w_gs_start_test_full),
    .user_w_gs_start_test_data(user_w_gs_start_test_data),
    .user_w_gs_start_test_open(user_w_gs_start_test_open),

    // Ports related to /dev/xillybus_rn_diag_param
    // CPU to FPGA signals:
    .user_w_rn_diag_param_wren(user_w_rn_diag_param_wren),
    .user_w_rn_diag_param_full(user_w_rn_diag_param_full),
    .user_w_rn_diag_param_data(user_w_rn_diag_param_data),
    .user_w_rn_diag_param_open(user_w_rn_diag_param_open),

    // Ports related to /dev/xillybus_rn_diag_result
    // FPGA to CPU signals:
    .user_r_rn_diag_result_rden(user_r_rn_diag_result_rden),
    .user_r_rn_diag_result_empty(user_r_rn_diag_result_empty),
    .user_r_rn_diag_result_data(user_r_rn_diag_result_data),
    .user_r_rn_diag_result_eof(user_r_rn_diag_result_eof),
    .user_r_rn_diag_result_open(user_r_rn_diag_result_open),

    // Ports related to Xillybus Lite
    .user_clk(user_clk),
    .user_wren(user_wren),
    .user_rden(user_rden),
    .user_wstrb(user_wstrb),
    .user_addr(user_addr),
    .user_rd_data(user_rd_data),
    .user_wr_data(user_wr_data),
    .user_irq(user_irq)

  );
  
//  fifo_GS_Host_FPGA
//     (
//      .clk(bus_clk),
//      .srst(!user_r_gs_raw_signal_open),
//      .din(user_w_gs_start_test_data),
//      .wr_en(wcapture_en),
//      .rd_en(user_r_gs_raw_signal_rden),
//      .dout(wvcapture_data),
//      .full(wcapture_full),
//      .empty(user_r_gs_raw_signal_empty)
//      );  
      
  

endmodule