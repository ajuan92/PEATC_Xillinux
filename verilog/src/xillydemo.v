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


  // Wires related to /dev/xillybus_fpga_reset
  wire  user_w_fpga_reset_wren;
  wire  user_w_fpga_reset_full;
  wire [7:0] user_w_fpga_reset_data;
  wire  user_w_fpga_reset_open;

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

  // Wires related to /dev/xillybus_gs_test
  wire  user_r_gs_test_rden;
  wire  user_r_gs_test_empty;
  wire [31:0] user_r_gs_test_data;
  wire  user_r_gs_test_eof;
  wire  user_r_gs_test_open;

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

  // Wires related to /dev/xillybus_rn_test
  wire  user_r_rn_test_rden;
  wire  user_r_rn_test_empty;
  wire [15:0] user_r_rn_test_data;
  wire  user_r_rn_test_eof;
  wire  user_r_rn_test_open;

  // Wires related to Xillybus Lite
  wire  user_clk;
  wire  user_wren;
  wire  user_rden;
  wire [3:0] user_wstrb;
  wire [31:0] user_addr;
  wire [31:0] user_rd_data;
  wire [31:0] user_wr_data;
  wire  user_irq;
  
wire wNwCmd_Read;
wire [31:0] w32Cmd_Data;
wire [31:0] w32Cmd_AcceptTest;
wire wRegCmdTest;

wire [31:0]w32CmdForRaw;
wire wRawDataReady;
wire wNwCmd_available;
wire [15:0] w16RawSignal;
wire wRawSignalEna;
wire [15:0] w16Reg;
wire [7:0] w8Addr_GS;
wire [7:0] w8Addr_New;
wire [7:0] wSignSelec;

assign PS_GPIO[24] = bus_clk;
assign PS_GPIO[25] = user_w_fpga_reset_open;
assign PS_GPIO[26] = !wNwCmd_available;
assign PS_GPIO[27] = wNwCmd_Read;

assign PS_GPIO[31:28] = 3'd0;

assign PS_GPIO[32] = wRawSignalEna;
assign PS_GPIO[33] = user_w_gs_start_test_wren;
assign PS_GPIO[34] = wRegCmdTest;

assign PS_GPIO[55:35] = 20'd0;


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
    .PS_GPIO({32'd0,PS_GPIO[23:0]}),
    .DDR_WEB(DDR_WEB),
    .GPIO_LED(GPIO_LED),
    .bus_clk(bus_clk),
    .quiesce(quiesce),
    .vga4_blue(vga4_blue),
    .vga4_green(vga4_green),
    .vga4_red(vga4_red),
    .vga_hsync(vga_hsync),
    .vga_vsync(vga_vsync),
    
    // Ports related to /dev/xillybus_fpga_reset
    // CPU to FPGA signals:
    .user_w_fpga_reset_wren(user_w_fpga_reset_wren),
    .user_w_fpga_reset_full(user_w_fpga_reset_full),
    .user_w_fpga_reset_data(user_w_fpga_reset_data),
    .user_w_fpga_reset_open(user_w_fpga_reset_open),
    
    

    // Ports related to /dev/xillybus_gs_test
    // FPGA to CPU signals:
    .user_r_gs_test_rden(user_r_gs_test_rden),
    .user_r_gs_test_empty(user_r_gs_test_empty),
    .user_r_gs_test_data(user_r_gs_test_data),
    .user_r_gs_test_eof(user_r_gs_test_eof),
    .user_r_gs_test_open(user_r_gs_test_open),

    // Ports related to /dev/xillybus_rn_test
    // FPGA to CPU signals:
    .user_r_rn_test_rden(user_r_rn_test_rden),
    .user_r_rn_test_empty(user_r_rn_test_empty),
    .user_r_rn_test_data(user_r_rn_test_data),
    .user_r_rn_test_eof(user_r_rn_test_eof),
    .user_r_rn_test_open(user_r_rn_test_open),
    
    
    

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


fifo_GS_Host_FPGA fifo_GS_RX(
  .clk(bus_clk),
  .srst(user_w_fpga_reset_open),
  .din(user_w_gs_start_test_data),
  .wr_en(user_w_gs_start_test_wren),
  .rd_en(wNwCmd_Read),
  .dout(w32Cmd_Data),
  .empty(wNwCmd_available),
  .full(user_w_gs_start_test_full)
);

Gs_StateMachin GS_StateMachin(
    .iClk (bus_clk),
    .iReset (user_w_fpga_reset_open),
    // Comando de 32 bits con los parámetros para la prueba de PEATC
    .iGS_32NewCmdData ({w32Cmd_Data[31:24],w32Cmd_Data[23:16],w32Cmd_Data[15:8],w32Cmd_Data[7:0]}),
    //Señal que indica que hay comando disponible en la fifo
    .iGS_NwCmd (wNwCmd_available),
    //Señal para indicar que se leerá el comando de la fifo RX, activa el ReadEnable de la Fifo
    .oGS_FifoReadEn (wNwCmd_Read),
    // Comando Capturado de la fifo
    .oGS_32Cmd (w32Cmd_AcceptTest),
    //Señal que indica que la señal cruda de PEATC está lista para ser leída
    .iGS_RawDataReady (wRawDataReady),
    //Valor de la muestra de la señal cruda de PEATC
    .iGS_16Reg (w16Reg),
    //Dirección en memoria de una muestra de la señal cruda de PEATC
    .oGS_8Addr (w8Addr_GS),
    //Enable para la memoria donde se almacena la señal cruda de PEATC
    .oGS_SignSelec (wSignSelec),
    //Señal para escribir en la fifo TX
    .oGS_WriteRawSignal (wRawSignalEna),
    //Valor de la muestra de la señal cruda de PEATC a escribirse en la fifo Tx
    .oGS_16RawSignal (w16RawSignal),
    //Salida de check point para pruebas
    .oGS_RegAcCmd (wRegCmdTest)
    );

fifo_GS_Host_FPGA fifo_GS_RX_TEST(
  .clk(bus_clk),
  .srst(user_w_fpga_reset_open),
  .din({w32Cmd_Data[31:24],w32Cmd_Data[15:8],w8Addr_GS,w16Reg[7:0]}),
  .wr_en(wRawSignalEna),
  .rd_en(user_r_gs_test_rden),
  .dout(user_r_gs_test_data),
  .empty(user_r_gs_test_eof && user_r_gs_test_empty),
  .full(1'd0)
);

fifo_GS_FPGA_Host fifo_GS_TX(
  .clk(bus_clk),
  .srst(user_w_fpga_reset_open),
  .din({w16RawSignal[7:0],w16RawSignal[15:8]}),
  .wr_en(wRawSignalEna),
  .rd_en(user_r_gs_raw_signal_rden),
  .dout(user_r_gs_raw_signal_data),
  .empty(user_r_gs_raw_signal_eof && user_r_gs_raw_signal_empty),
  .full(1'd0)
);

//----------------------------IMPLEMENTACIÓN DE SIMULACION PARA PRUEBAS---------------------------------
GS_SimSignal SimSignal(
    .iClk(bus_clk),
    .iReset(user_w_fpga_reset_open | wNwCmd_Read),
    .iGS_32Cmd(w32Cmd_AcceptTest),
    
    .oGS_8Addr(w8Addr_New),
    .i8Addr(w8Addr_GS),
    
    .oGS_RawDataReady(wRawDataReady)
    );

     
GS_RawSignal  RawSignal(
    .iClk (bus_clk),
    .o16Reg (w16Reg),
    .i8Addr (w8Addr_New),
    .iSignSelec (wSignSelec)
    );

   
//fifo_GS_Host_FPGA fifo_GS_RX(
//  .clk(bus_clk),
//  .srst(!user_w_gs_start_test_open),
//  .din({user_w_gs_start_test_data,24'd0}),
//  .wr_en(user_w_gs_start_test_wren),
//  .rd_en(wNwCmd_Read),
//  .dout(w32Cmd_Data),
//  .empty(wNwCmd_available),
//  .full(user_w_gs_start_test_full)
//);


//fifo_GS_FPGA_Host fifo_GS_TX(
//  .clk(bus_clk),
//  .srst(!user_r_gs_raw_signal_open),
//  .din(w16RawSignal),
//  .wr_en(wRawSignalEna),
//  .rd_en(user_r_gs_raw_signal_rden),
//  .dout(user_r_gs_raw_signal_data),
//  .empty(user_r_gs_raw_signal_eof && user_r_rn_diag_result_empty),
//  .full(1'd0)
//);

//Gs_StateMachin GS_StateMachin(
//    .iClk (bus_clk),
//    .iReset (!user_w_gs_start_test_open),
//    .iGS_32NewCmdData (w32Cmd_Data),  // Comando
//    .iGS_NwCmd (wNwCmd_available),  //Señal que indica que hay cmd disponible
//    .oGS_FifoReadEn (wNwCmd_Read), //Señal para indicar que se leera la fifo
//    // Conexión lectura de señales crudas
//    .iGS_16Reg (w16Reg),
//    .oGS_8Addr (w8Addr),
//    .o8SignSelec (wSignSelec),
//    // Salida datos crudos obtenidos
//    .oGS_WriteRawSignal (wRawSignalEna),
//    .oGS_16RawSignal (w16RawSignal)
//    );
     
//GS_RawSignal GS_RawSignal(
//    .o16Reg (w16Reg),
//    .i8Addr (w8Addr),
//    .i8SignSelec (wSignSelec)
//    );

endmodule