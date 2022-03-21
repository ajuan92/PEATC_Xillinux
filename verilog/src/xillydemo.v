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
wire [31:0] wi32NewCmdData;
wire [31:0] w32Cmd_AcceptTest;
wire wRegCmdTest;

wire [31:0]wo32Cmd;
wire wiRawDataReady;
wire wNwCmd_available;
wire [15:0] wo16RawSignal;
wire wRawSignalEna;
wire [15:0] wi16Reg;
wire [7:0] wo8Addr;
wire [7:0] w8Addr_New;
wire [7:0] woSignSelec;

wire woReadTigger; 
wire wEmty_flag;
wire [15:0] wi16FifoData;
wire [15:0] w16DataRam;
wire [7:0] wi8Addr;
wire wiRead_en;
wire wFifoTxWriteEna;
wire [15:0]w16FifoTxWriteData;
wire wEnaTestFifo;
wire [31:0]w16FifoRxData;
wire wEmtyTx_flag;

wire [7:0] wFifoDataCount;


//Se�ales usadas para pruebas de Hw, no son necesarias para la aplicaci�n
//Se pueden comentar o eliminar en caso de necesitar dichos GPIO
assign PS_GPIO[24] = bus_clk;
assign PS_GPIO[25] = user_w_fpga_reset_open;
assign PS_GPIO[26] = !wNwCmd_available;
assign PS_GPIO[27] = woReadTigger;

assign PS_GPIO[31:28] = 3'd0;

assign PS_GPIO[32] = wEnaTestFifo;
assign PS_GPIO[33] = wiRead_en;
assign PS_GPIO[34] = wFifoTxWriteEna;

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
    .PS_GPIO({32'd0,PS_GPIO[23:0]}), //Se pueden comentar o eliminar en caso de necesitar dichos GPIO
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
  .dout(wi32NewCmdData),
  .empty(wNwCmd_available),
  .full(user_w_gs_start_test_full)
);

Gs_StateMachin GS_StateMachin(
    .iClk (bus_clk),
    .iReset (user_w_fpga_reset_open),
    // Comando de 32 bits con los par�metros para la prueba de PEATC
    .iGS_32NewCmdData ({wi32NewCmdData[31:24],wi32NewCmdData[23:16],wi32NewCmdData[15:8],wi32NewCmdData[7:0]}),
    //Se�al que indica que hay comando disponible en la fifo
    .iGS_NwCmd (wNwCmd_available),
    //Se�al para indicar que se leer� el comando de la fifo RX, activa el ReadEnable de la Fifo
    .oGS_FifoReadEn (wNwCmd_Read),
    // Comando Capturado de la fifo
    .oGS_32Cmd (w32Cmd_AcceptTest),
    //Se�al que indica que la se�al cruda de PEATC est� lista para ser le�da
    .iGS_RawDataReady (wiRawDataReady),
    //Valor de la muestra de la se�al cruda de PEATC
    .iGS_16Reg (wi16Reg),
    //Direcci�n en memoria de una muestra de la se�al cruda de PEATC
    .oGS_8Addr (wo8Addr),
    //Enable para la memoria donde se almacena la se�al cruda de PEATC
    .oGS_SignSelec (woSignSelec),
    //Se�al para escribir en la fifo TX
    .oGS_WriteRawSignal (wRawSignalEna),
    //Valor de la muestra de la se�al cruda de PEATC a escribirse en la fifo Tx
    .oGS_16RawSignal (wo16RawSignal),
    //Salida de check point para pruebas
    .oGS_RegAcCmd (wRegCmdTest)
    );

fifo_GS_FPGA_Host fifo_GS_TX(
  .clk(bus_clk),
  .srst(user_w_fpga_reset_open),
  .din({wo16RawSignal[7:0],wo16RawSignal[15:8]}),
  .wr_en(wRawSignalEna),
  .rd_en(user_r_gs_raw_signal_rden),
  .dout(user_r_gs_raw_signal_data),
  .empty(user_r_gs_raw_signal_eof && user_r_gs_raw_signal_empty),
  .full(1'd0)
);

fifo_RN_Host_FPGA fifo_RN_RX(
  .clk(bus_clk),
  .srst(user_w_fpga_reset_open),
  .din(user_w_rn_diag_param_data),
  .wr_en(user_w_rn_diag_param_wren),
  .rd_en(!user_w_rn_diag_param_wren),
  .dout(wi16FifoData),
  .empty(wEmty_flag),
  .data_count(wFifoDataCount),
  .full(user_w_rn_diag_param_full)
);

Rn_StateMachin RN_StateMachin(
    .iClk(bus_clk),
    .iReset(user_w_fpga_reset_open),
    // Entrada de datos almacenados en la fifo transmitidos por el host
    .i16FifoData(wi16FifoData),
    // Se�al que indica que hay datos disponibles para ser almacenados
    .iStartReadFifo(!user_w_rn_diag_param_wren),
    // Salida de la lectura de la ram del m�dulo Rn
    .o16ReadData(w16DataRam),
    // Se�al que indica que hay datos disponibles en la ram del m�dulo para ser le�dos
    .oReadTigger(woReadTigger),
    //Se�al de habilitaci�n para la lectura de la ram del modulo
    .iRead_en(wiRead_en),
    //Direcci�n de acceso para la lectura de la ram del modulo
    .i8Addr(wi8Addr),
    //Conteo de datos contenidos en la fifo en la entrada del m�dulo Rn
    .i8FifoDataCount(wFifoDataCount)
    );

fifo_RN_FPGA_Host fifo_RN_TX(
  .clk(bus_clk),
  .srst(user_w_fpga_reset_open),
  .din({w16FifoTxWriteData[15:8],w16FifoTxWriteData[7:0],16'd0}),
  .wr_en(wFifoTxWriteEna),
  .rd_en(user_r_rn_diag_result_rden),
  .dout(user_r_rn_diag_result_data),
  .empty(user_r_rn_diag_result_empty)
);

//----------------------------IMPLEMENTACI�N DE SIMULACION PARA PRUEBAS---------------------------------

fifo_GS_Host_FPGA fifo_GS_RX_TEST(
  .clk(bus_clk),
  .srst(user_w_fpga_reset_open),
  .din({wi32NewCmdData[31:24],wi32NewCmdData[15:8],wo8Addr,wi16Reg[7:0]}),
  .wr_en(wRawSignalEna),
  .rd_en(user_r_gs_test_rden),
  .dout(user_r_gs_test_data),
  .empty(user_r_gs_test_eof && user_r_gs_test_empty),
  .full(1'd0)
);

GS_SimSignal SimSignal(
    .iClk(bus_clk),
    .iReset(user_w_fpga_reset_open | wNwCmd_Read),
    .iGS_32Cmd(w32Cmd_AcceptTest),
    
    .oGS_8Addr(w8Addr_New),
    .i8Addr(wo8Addr),
    
    .oGS_RawDataReady(wiRawDataReady)
    );
    
GS_RawSignal  RawSignal(
    .iClk (bus_clk),
    .o16Reg (wi16Reg),
    .i8Addr (w8Addr_New),
    .iSignSelec (woSignSelec)
    );

fifo_RN_Host_FPGA fifo_RN_RX_TEST(
  .clk(bus_clk),
  .srst(user_w_fpga_reset_open),
  .din({w16FifoTxWriteData[15:8],w16FifoTxWriteData[7:0]}),
  .wr_en(wEnaTestFifo),
  .rd_en(user_r_rn_test_rden),
  .dout(user_r_rn_test_data),
  .empty(user_r_rn_test_empty)
);    

 RN_SimResult SimResult(
    .iClk(bus_clk),
    .iReset(user_w_fpga_reset_open),    
    .i16RamData(w16DataRam),
    .o8RamAddr(wi8Addr),
    .oReadEnaRam(wiRead_en),
    .oReadTigger(woReadTigger),
    .oWriteEnaFifo(wFifoTxWriteEna),
    .o16ReadData(w16FifoTxWriteData),
    .oWriteEnaTestFifo(wEnaTestFifo)
    );  

endmodule