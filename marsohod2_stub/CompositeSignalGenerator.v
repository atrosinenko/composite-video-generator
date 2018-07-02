module SimpleButtonController( // @[:@3.2]
  input   clock, // @[:@4.4]
  input   reset, // @[:@5.4]
  input   io_buttonInput, // @[:@6.4]
  output  io_click, // @[:@6.4]
  output  io_longPress // @[:@6.4]
);
  reg [31:0] cycleCounter; // @[SimpleButtonController.scala 13:39:@8.4]
  reg [31:0] _RAND_0;
  reg [31:0] pressedCounter; // @[SimpleButtonController.scala 14:39:@9.4]
  reg [31:0] _RAND_1;
  wire  _T_18; // @[SimpleButtonController.scala 18:22:@12.4]
  wire  _T_20; // @[SimpleButtonController.scala 19:26:@14.6]
  wire  _T_23; // @[SimpleButtonController.scala 21:32:@19.8]
  wire  _GEN_2; // @[SimpleButtonController.scala 19:52:@15.6]
  wire [32:0] _T_28; // @[SimpleButtonController.scala 27:34:@27.6]
  wire [32:0] _T_29; // @[SimpleButtonController.scala 27:34:@28.6]
  wire [31:0] _T_30; // @[SimpleButtonController.scala 27:34:@29.6]
  wire  _T_32; // @[SimpleButtonController.scala 28:11:@31.6]
  wire [32:0] _T_34; // @[SimpleButtonController.scala 29:40:@33.8]
  wire [31:0] _T_35; // @[SimpleButtonController.scala 29:40:@34.8]
  wire [31:0] _GEN_3; // @[SimpleButtonController.scala 28:28:@32.6]
  wire  _GEN_4; // @[SimpleButtonController.scala 18:36:@13.4]
  wire  _GEN_5; // @[SimpleButtonController.scala 18:36:@13.4]
  wire [31:0] _GEN_6; // @[SimpleButtonController.scala 18:36:@13.4]
  wire [31:0] _GEN_7; // @[SimpleButtonController.scala 18:36:@13.4]
  assign _T_18 = cycleCounter == 32'h0; // @[SimpleButtonController.scala 18:22:@12.4]
  assign _T_20 = pressedCounter >= 32'h61a800; // @[SimpleButtonController.scala 19:26:@14.6]
  assign _T_23 = pressedCounter >= 32'h30d400; // @[SimpleButtonController.scala 21:32:@19.8]
  assign _GEN_2 = _T_20 ? 1'h0 : _T_23; // @[SimpleButtonController.scala 19:52:@15.6]
  assign _T_28 = cycleCounter - 32'h1; // @[SimpleButtonController.scala 27:34:@27.6]
  assign _T_29 = $unsigned(_T_28); // @[SimpleButtonController.scala 27:34:@28.6]
  assign _T_30 = _T_29[31:0]; // @[SimpleButtonController.scala 27:34:@29.6]
  assign _T_32 = io_buttonInput == 1'h0; // @[SimpleButtonController.scala 28:11:@31.6]
  assign _T_34 = pressedCounter + 32'h1; // @[SimpleButtonController.scala 29:40:@33.8]
  assign _T_35 = _T_34[31:0]; // @[SimpleButtonController.scala 29:40:@34.8]
  assign _GEN_3 = _T_32 ? _T_35 : pressedCounter; // @[SimpleButtonController.scala 28:28:@32.6]
  assign _GEN_4 = _T_18 ? _T_20 : 1'h0; // @[SimpleButtonController.scala 18:36:@13.4]
  assign _GEN_5 = _T_18 ? _GEN_2 : 1'h0; // @[SimpleButtonController.scala 18:36:@13.4]
  assign _GEN_6 = _T_18 ? 32'hb42d00 : _T_30; // @[SimpleButtonController.scala 18:36:@13.4]
  assign _GEN_7 = _T_18 ? 32'h0 : _GEN_3; // @[SimpleButtonController.scala 18:36:@13.4]
  assign io_click = _GEN_5;
  assign io_longPress = _GEN_4;
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  cycleCounter = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  pressedCounter = _RAND_1[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      cycleCounter <= 32'h0;
    end else begin
      if (_T_18) begin
        cycleCounter <= 32'hb42d00;
      end else begin
        cycleCounter <= _T_30;
      end
    end
    if (reset) begin
      pressedCounter <= 32'h0;
    end else begin
      if (_T_18) begin
        pressedCounter <= 32'h0;
      end else begin
        if (_T_32) begin
          pressedCounter <= _T_35;
        end
      end
    end
  end
endmodule
module OscilloscopeController( // @[:@75.2]
  input         clock, // @[:@76.4]
  input         reset, // @[:@77.4]
  input         io_button1, // @[:@78.4]
  input         io_button2, // @[:@78.4]
  output [15:0] io_visibleOffset, // @[:@78.4]
  output        io_start, // @[:@78.4]
  output [3:0]  io_leds // @[:@78.4]
);
  wire  controller1_clock; // @[OscilloscopeController.scala 17:27:@80.4]
  wire  controller1_reset; // @[OscilloscopeController.scala 17:27:@80.4]
  wire  controller1_io_buttonInput; // @[OscilloscopeController.scala 17:27:@80.4]
  wire  controller1_io_click; // @[OscilloscopeController.scala 17:27:@80.4]
  wire  controller1_io_longPress; // @[OscilloscopeController.scala 17:27:@80.4]
  wire  controller2_clock; // @[OscilloscopeController.scala 18:27:@83.4]
  wire  controller2_reset; // @[OscilloscopeController.scala 18:27:@83.4]
  wire  controller2_io_buttonInput; // @[OscilloscopeController.scala 18:27:@83.4]
  wire  controller2_io_click; // @[OscilloscopeController.scala 18:27:@83.4]
  wire  controller2_io_longPress; // @[OscilloscopeController.scala 18:27:@83.4]
  reg [15:0] offset; // @[OscilloscopeController.scala 23:31:@88.4]
  reg [31:0] _RAND_0;
  reg [3:0] leds; // @[OscilloscopeController.scala 24:29:@89.4]
  reg [31:0] _RAND_1;
  reg  init; // @[OscilloscopeController.scala 26:29:@90.4]
  reg [31:0] _RAND_2;
  wire  _T_22; // @[OscilloscopeController.scala 29:42:@92.4]
  wire  _T_23; // @[OscilloscopeController.scala 29:14:@93.4]
  wire [4:0] _T_28; // @[OscilloscopeController.scala 33:18:@98.6]
  wire [3:0] _T_29; // @[OscilloscopeController.scala 33:18:@99.6]
  wire [15:0] _GEN_0; // @[OscilloscopeController.scala 29:71:@94.4]
  wire  _GEN_2; // @[OscilloscopeController.scala 29:71:@94.4]
  wire [3:0] _GEN_3; // @[OscilloscopeController.scala 29:71:@94.4]
  wire [16:0] _T_31; // @[OscilloscopeController.scala 36:22:@103.6]
  wire [15:0] _T_32; // @[OscilloscopeController.scala 36:22:@104.6]
  wire [15:0] _GEN_4; // @[OscilloscopeController.scala 35:31:@102.4]
  wire [16:0] _T_34; // @[OscilloscopeController.scala 39:22:@108.6]
  wire [16:0] _T_35; // @[OscilloscopeController.scala 39:22:@109.6]
  wire [15:0] _T_36; // @[OscilloscopeController.scala 39:22:@110.6]
  wire [15:0] _GEN_5; // @[OscilloscopeController.scala 38:31:@107.4]
  wire [16:0] _T_38; // @[OscilloscopeController.scala 42:22:@114.6]
  wire [15:0] _T_39; // @[OscilloscopeController.scala 42:22:@115.6]
  wire [15:0] _GEN_6; // @[OscilloscopeController.scala 41:35:@113.4]
  wire [16:0] _T_41; // @[OscilloscopeController.scala 45:22:@119.6]
  wire [16:0] _T_42; // @[OscilloscopeController.scala 45:22:@120.6]
  wire [15:0] _T_43; // @[OscilloscopeController.scala 45:22:@121.6]
  wire [15:0] _GEN_7; // @[OscilloscopeController.scala 44:35:@118.4]
  SimpleButtonController controller1 ( // @[OscilloscopeController.scala 17:27:@80.4]
    .clock(controller1_clock),
    .reset(controller1_reset),
    .io_buttonInput(controller1_io_buttonInput),
    .io_click(controller1_io_click),
    .io_longPress(controller1_io_longPress)
  );
  SimpleButtonController controller2 ( // @[OscilloscopeController.scala 18:27:@83.4]
    .clock(controller2_clock),
    .reset(controller2_reset),
    .io_buttonInput(controller2_io_buttonInput),
    .io_click(controller2_io_click),
    .io_longPress(controller2_io_longPress)
  );
  assign _T_22 = controller1_io_longPress & controller2_io_longPress; // @[OscilloscopeController.scala 29:42:@92.4]
  assign _T_23 = init | _T_22; // @[OscilloscopeController.scala 29:14:@93.4]
  assign _T_28 = leds + 4'h1; // @[OscilloscopeController.scala 33:18:@98.6]
  assign _T_29 = _T_28[3:0]; // @[OscilloscopeController.scala 33:18:@99.6]
  assign _GEN_0 = _T_23 ? 16'h0 : offset; // @[OscilloscopeController.scala 29:71:@94.4]
  assign _GEN_2 = _T_23 ? 1'h0 : init; // @[OscilloscopeController.scala 29:71:@94.4]
  assign _GEN_3 = _T_23 ? _T_29 : leds; // @[OscilloscopeController.scala 29:71:@94.4]
  assign _T_31 = offset + 16'h33; // @[OscilloscopeController.scala 36:22:@103.6]
  assign _T_32 = _T_31[15:0]; // @[OscilloscopeController.scala 36:22:@104.6]
  assign _GEN_4 = controller1_io_click ? _T_32 : _GEN_0; // @[OscilloscopeController.scala 35:31:@102.4]
  assign _T_34 = offset - 16'h33; // @[OscilloscopeController.scala 39:22:@108.6]
  assign _T_35 = $unsigned(_T_34); // @[OscilloscopeController.scala 39:22:@109.6]
  assign _T_36 = _T_35[15:0]; // @[OscilloscopeController.scala 39:22:@110.6]
  assign _GEN_5 = controller2_io_click ? _T_36 : _GEN_4; // @[OscilloscopeController.scala 38:31:@107.4]
  assign _T_38 = offset + 16'h200; // @[OscilloscopeController.scala 42:22:@114.6]
  assign _T_39 = _T_38[15:0]; // @[OscilloscopeController.scala 42:22:@115.6]
  assign _GEN_6 = controller1_io_longPress ? _T_39 : _GEN_5; // @[OscilloscopeController.scala 41:35:@113.4]
  assign _T_41 = offset - 16'h200; // @[OscilloscopeController.scala 45:22:@119.6]
  assign _T_42 = $unsigned(_T_41); // @[OscilloscopeController.scala 45:22:@120.6]
  assign _T_43 = _T_42[15:0]; // @[OscilloscopeController.scala 45:22:@121.6]
  assign _GEN_7 = controller2_io_longPress ? _T_43 : _GEN_6; // @[OscilloscopeController.scala 44:35:@118.4]
  assign io_visibleOffset = offset;
  assign io_start = _T_23;
  assign io_leds = leds;
  assign controller1_clock = clock;
  assign controller1_reset = reset;
  assign controller1_io_buttonInput = io_button1;
  assign controller2_clock = clock;
  assign controller2_reset = reset;
  assign controller2_io_buttonInput = io_button2;
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  offset = _RAND_0[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  leds = _RAND_1[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  init = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      offset <= 16'h0;
    end else begin
      if (controller2_io_longPress) begin
        offset <= _T_43;
      end else begin
        if (controller1_io_longPress) begin
          offset <= _T_39;
        end else begin
          if (controller2_io_click) begin
            offset <= _T_36;
          end else begin
            if (controller1_io_click) begin
              offset <= _T_32;
            end else begin
              if (_T_23) begin
                offset <= 16'h0;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      leds <= 4'h0;
    end else begin
      if (_T_23) begin
        leds <= _T_29;
      end
    end
    if (reset) begin
      init <= 1'h1;
    end else begin
      if (_T_23) begin
        init <= 1'h0;
      end
    end
  end
endmodule
module Oscilloscope( // @[:@127.2]
  input         clock, // @[:@128.4]
  input         reset, // @[:@129.4]
  input  [7:0]  io_signal, // @[:@130.4]
  input  [15:0] io_visualOffset, // @[:@130.4]
  input         io_start, // @[:@130.4]
  input  [9:0]  io_x, // @[:@130.4]
  input  [9:0]  io_y, // @[:@130.4]
  output        io_output // @[:@130.4]
);
  reg [7:0] mem [0:32767]; // @[Oscilloscope.scala 18:32:@132.4]
  reg [31:0] _RAND_0;
  wire [7:0] mem__T_42_data; // @[Oscilloscope.scala 18:32:@132.4]
  wire [14:0] mem__T_42_addr; // @[Oscilloscope.scala 18:32:@132.4]
  wire [7:0] mem__T_28_data; // @[Oscilloscope.scala 18:32:@132.4]
  wire [14:0] mem__T_28_addr; // @[Oscilloscope.scala 18:32:@132.4]
  wire  mem__T_28_mask; // @[Oscilloscope.scala 18:32:@132.4]
  wire  mem__T_28_en; // @[Oscilloscope.scala 18:32:@132.4]
  wire  _GEN_7;
  reg [14:0] mem__T_42_addr_pipe_0;
  reg [31:0] _RAND_1;
  reg [31:0] physicalPixel; // @[Oscilloscope.scala 19:38:@133.4]
  reg [31:0] _RAND_2;
  reg [7:0] currentValue; // @[Oscilloscope.scala 33:37:@149.4]
  reg [31:0] _RAND_3;
  wire [31:0] _GEN_0; // @[Oscilloscope.scala 22:19:@135.4]
  wire  _T_26; // @[Oscilloscope.scala 25:23:@138.4]
  wire [14:0] _T_27; // @[:@140.6]
  wire [32:0] _T_30; // @[Oscilloscope.scala 27:36:@143.6]
  wire [31:0] _T_31; // @[Oscilloscope.scala 27:36:@144.6]
  wire [31:0] _GEN_5; // @[Oscilloscope.scala 25:44:@139.4]
  wire [15:0] _GEN_13; // @[Oscilloscope.scala 32:31:@147.4]
  wire [16:0] _T_32; // @[Oscilloscope.scala 32:31:@147.4]
  wire [15:0] _T_33; // @[Oscilloscope.scala 32:31:@148.4]
  wire  _T_38; // @[Oscilloscope.scala 34:74:@150.4]
  wire [15:0] _T_40; // @[Oscilloscope.scala 34:64:@151.4]
  wire [14:0] _T_41; // @[Oscilloscope.scala 34:60:@152.4]
  wire [8:0] _T_43; // @[Oscilloscope.scala 34:50:@154.4]
  wire [8:0] _T_44; // @[Oscilloscope.scala 34:50:@155.4]
  wire [7:0] _T_45; // @[Oscilloscope.scala 34:50:@156.4]
  wire  _T_47; // @[Oscilloscope.scala 35:14:@158.4]
  wire  _T_49; // @[Oscilloscope.scala 35:48:@159.4]
  wire  _T_50; // @[Oscilloscope.scala 35:40:@160.4]
  wire  _T_52; // @[Oscilloscope.scala 36:25:@162.6]
  wire  _T_54; // @[Oscilloscope.scala 36:67:@163.6]
  wire  _T_55; // @[Oscilloscope.scala 36:59:@164.6]
  wire [9:0] _T_57; // @[Oscilloscope.scala 36:110:@165.6]
  wire  _T_58; // @[Oscilloscope.scala 36:131:@166.6]
  wire  _T_59; // @[Oscilloscope.scala 36:101:@167.6]
  wire  _T_61; // @[Oscilloscope.scala 36:18:@168.6]
  wire [8:0] _GEN_14; // @[Oscilloscope.scala 38:32:@172.6]
  wire [16:0] _T_63; // @[Oscilloscope.scala 38:32:@172.6]
  wire [10:0] _T_65; // @[Oscilloscope.scala 38:68:@173.6]
  wire [10:0] _T_66; // @[Oscilloscope.scala 38:68:@174.6]
  wire [9:0] _T_67; // @[Oscilloscope.scala 38:68:@175.6]
  wire [18:0] _T_69; // @[Oscilloscope.scala 38:80:@176.6]
  wire [18:0] _GEN_15; // @[Oscilloscope.scala 38:59:@177.6]
  wire  _T_70; // @[Oscilloscope.scala 38:59:@177.6]
  wire [10:0] _T_74; // @[Oscilloscope.scala 39:57:@179.6]
  wire [9:0] _T_75; // @[Oscilloscope.scala 39:57:@180.6]
  wire [18:0] _T_77; // @[Oscilloscope.scala 39:69:@181.6]
  wire  _T_78; // @[Oscilloscope.scala 39:48:@182.6]
  wire  _T_79; // @[Oscilloscope.scala 38:108:@183.6]
  wire  _GEN_6; // @[Oscilloscope.scala 35:76:@161.4]
  assign mem__T_42_addr = mem__T_42_addr_pipe_0;
  assign mem__T_42_data = mem[mem__T_42_addr]; // @[Oscilloscope.scala 18:32:@132.4]
  assign mem__T_28_data = io_signal;
  assign mem__T_28_addr = _T_27;
  assign mem__T_28_mask = _T_26;
  assign mem__T_28_en = _T_26;
  assign _GEN_7 = 1'h1;
  assign _GEN_0 = io_start ? 32'h0 : physicalPixel; // @[Oscilloscope.scala 22:19:@135.4]
  assign _T_26 = physicalPixel < 32'h8000; // @[Oscilloscope.scala 25:23:@138.4]
  assign _T_27 = physicalPixel[14:0]; // @[:@140.6]
  assign _T_30 = physicalPixel + 32'h1; // @[Oscilloscope.scala 27:36:@143.6]
  assign _T_31 = _T_30[31:0]; // @[Oscilloscope.scala 27:36:@144.6]
  assign _GEN_5 = _T_26 ? _T_31 : _GEN_0; // @[Oscilloscope.scala 25:44:@139.4]
  assign _GEN_13 = {{6'd0}, io_x}; // @[Oscilloscope.scala 32:31:@147.4]
  assign _T_32 = _GEN_13 + io_visualOffset; // @[Oscilloscope.scala 32:31:@147.4]
  assign _T_33 = _T_32[15:0]; // @[Oscilloscope.scala 32:31:@148.4]
  assign _T_38 = _T_33 < 16'h8000; // @[Oscilloscope.scala 34:74:@150.4]
  assign _T_40 = _T_38 ? _T_33 : 16'h7fff; // @[Oscilloscope.scala 34:64:@151.4]
  assign _T_41 = _T_40[14:0]; // @[Oscilloscope.scala 34:60:@152.4]
  assign _T_43 = 8'hff - mem__T_42_data; // @[Oscilloscope.scala 34:50:@154.4]
  assign _T_44 = $unsigned(_T_43); // @[Oscilloscope.scala 34:50:@155.4]
  assign _T_45 = _T_44[7:0]; // @[Oscilloscope.scala 34:50:@156.4]
  assign _T_47 = io_x > 10'h200; // @[Oscilloscope.scala 35:14:@158.4]
  assign _T_49 = io_y > 10'h190; // @[Oscilloscope.scala 35:48:@159.4]
  assign _T_50 = _T_47 | _T_49; // @[Oscilloscope.scala 35:40:@160.4]
  assign _T_52 = io_y > 10'h19a; // @[Oscilloscope.scala 36:25:@162.6]
  assign _T_54 = io_y < 10'h1a4; // @[Oscilloscope.scala 36:67:@163.6]
  assign _T_55 = _T_52 & _T_54; // @[Oscilloscope.scala 36:59:@164.6]
  assign _T_57 = io_x / 10'h20; // @[Oscilloscope.scala 36:110:@165.6]
  assign _T_58 = _T_57[0]; // @[Oscilloscope.scala 36:131:@166.6]
  assign _T_59 = _T_55 & _T_58; // @[Oscilloscope.scala 36:101:@167.6]
  assign _T_61 = _T_59 == 1'h0; // @[Oscilloscope.scala 36:18:@168.6]
  assign _GEN_14 = {{1'd0}, currentValue}; // @[Oscilloscope.scala 38:32:@172.6]
  assign _T_63 = _GEN_14 * 9'h190; // @[Oscilloscope.scala 38:32:@172.6]
  assign _T_65 = io_y - 10'h5; // @[Oscilloscope.scala 38:68:@173.6]
  assign _T_66 = $unsigned(_T_65); // @[Oscilloscope.scala 38:68:@174.6]
  assign _T_67 = _T_66[9:0]; // @[Oscilloscope.scala 38:68:@175.6]
  assign _T_69 = _T_67 * 10'h100; // @[Oscilloscope.scala 38:80:@176.6]
  assign _GEN_15 = {{2'd0}, _T_63}; // @[Oscilloscope.scala 38:59:@177.6]
  assign _T_70 = _GEN_15 >= _T_69; // @[Oscilloscope.scala 38:59:@177.6]
  assign _T_74 = io_y + 10'h5; // @[Oscilloscope.scala 39:57:@179.6]
  assign _T_75 = _T_74[9:0]; // @[Oscilloscope.scala 39:57:@180.6]
  assign _T_77 = _T_75 * 10'h100; // @[Oscilloscope.scala 39:69:@181.6]
  assign _T_78 = _GEN_15 <= _T_77; // @[Oscilloscope.scala 39:48:@182.6]
  assign _T_79 = _T_70 & _T_78; // @[Oscilloscope.scala 38:108:@183.6]
  assign _GEN_6 = _T_50 ? _T_61 : _T_79; // @[Oscilloscope.scala 35:76:@161.4]
  assign io_output = _GEN_6;
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  _RAND_0 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 32768; initvar = initvar+1)
    mem[initvar] = _RAND_0[7:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  mem__T_42_addr_pipe_0 = _RAND_1[14:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  physicalPixel = _RAND_2[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  currentValue = _RAND_3[7:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if(mem__T_28_en & mem__T_28_mask) begin
      mem[mem__T_28_addr] <= mem__T_28_data; // @[Oscilloscope.scala 18:32:@132.4]
    end
    if (_GEN_7) begin
      mem__T_42_addr_pipe_0 <= _T_41;
    end
    if (reset) begin
      physicalPixel <= 32'h0;
    end else begin
      if (_T_26) begin
        physicalPixel <= _T_31;
      end else begin
        if (io_start) begin
          physicalPixel <= 32'h0;
        end
      end
    end
    if (reset) begin
      currentValue <= 8'h0;
    end else begin
      currentValue <= _T_45;
    end
  end
endmodule
module TestColorImageGenerator( // @[:@187.2]
  input        clock, // @[:@188.4]
  input        reset, // @[:@189.4]
  input  [7:0] io_signal1, // @[:@190.4]
  input  [7:0] io_signal2, // @[:@190.4]
  input        io_button1, // @[:@190.4]
  input        io_button2, // @[:@190.4]
  output [3:0] io_leds, // @[:@190.4]
  output [7:0] io_green, // @[:@190.4]
  input  [9:0] io_x, // @[:@190.4]
  input  [9:0] io_y // @[:@190.4]
);
  wire  OscilloscopeController_clock; // @[TestColorImageGenerator.scala 24:46:@192.4]
  wire  OscilloscopeController_reset; // @[TestColorImageGenerator.scala 24:46:@192.4]
  wire  OscilloscopeController_io_button1; // @[TestColorImageGenerator.scala 24:46:@192.4]
  wire  OscilloscopeController_io_button2; // @[TestColorImageGenerator.scala 24:46:@192.4]
  wire [15:0] OscilloscopeController_io_visibleOffset; // @[TestColorImageGenerator.scala 24:46:@192.4]
  wire  OscilloscopeController_io_start; // @[TestColorImageGenerator.scala 24:46:@192.4]
  wire [3:0] OscilloscopeController_io_leds; // @[TestColorImageGenerator.scala 24:46:@192.4]
  wire  Oscilloscope_clock; // @[TestColorImageGenerator.scala 30:37:@195.4]
  wire  Oscilloscope_reset; // @[TestColorImageGenerator.scala 30:37:@195.4]
  wire [7:0] Oscilloscope_io_signal; // @[TestColorImageGenerator.scala 30:37:@195.4]
  wire [15:0] Oscilloscope_io_visualOffset; // @[TestColorImageGenerator.scala 30:37:@195.4]
  wire  Oscilloscope_io_start; // @[TestColorImageGenerator.scala 30:37:@195.4]
  wire [9:0] Oscilloscope_io_x; // @[TestColorImageGenerator.scala 30:37:@195.4]
  wire [9:0] Oscilloscope_io_y; // @[TestColorImageGenerator.scala 30:37:@195.4]
  wire  Oscilloscope_io_output; // @[TestColorImageGenerator.scala 30:37:@195.4]
  wire  _T_547; // @[TestColorImageGenerator.scala 39:40:@462.4]
  wire [7:0] _T_548; // @[TestColorImageGenerator.scala 39:32:@463.4]
  wire [7:0] _T_554; // @[TestColorImageGenerator.scala 47:18:@471.4]
  OscilloscopeController OscilloscopeController ( // @[TestColorImageGenerator.scala 24:46:@192.4]
    .clock(OscilloscopeController_clock),
    .reset(OscilloscopeController_reset),
    .io_button1(OscilloscopeController_io_button1),
    .io_button2(OscilloscopeController_io_button2),
    .io_visibleOffset(OscilloscopeController_io_visibleOffset),
    .io_start(OscilloscopeController_io_start),
    .io_leds(OscilloscopeController_io_leds)
  );
  Oscilloscope Oscilloscope ( // @[TestColorImageGenerator.scala 30:37:@195.4]
    .clock(Oscilloscope_clock),
    .reset(Oscilloscope_reset),
    .io_signal(Oscilloscope_io_signal),
    .io_visualOffset(Oscilloscope_io_visualOffset),
    .io_start(Oscilloscope_io_start),
    .io_x(Oscilloscope_io_x),
    .io_y(Oscilloscope_io_y),
    .io_output(Oscilloscope_io_output)
  );
  assign _T_547 = io_leds[0]; // @[TestColorImageGenerator.scala 39:40:@462.4]
  assign _T_548 = _T_547 ? io_signal1 : io_signal2; // @[TestColorImageGenerator.scala 39:32:@463.4]
  assign _T_554 = Oscilloscope_io_output ? 8'h0 : 8'hc8; // @[TestColorImageGenerator.scala 47:18:@471.4]
  assign io_leds = OscilloscopeController_io_leds;
  assign io_green = _T_554;
  assign OscilloscopeController_clock = clock;
  assign OscilloscopeController_reset = reset;
  assign OscilloscopeController_io_button1 = io_button1;
  assign OscilloscopeController_io_button2 = io_button2;
  assign Oscilloscope_clock = clock;
  assign Oscilloscope_reset = reset;
  assign Oscilloscope_io_signal = _T_548;
  assign Oscilloscope_io_visualOffset = OscilloscopeController_io_visibleOffset;
  assign Oscilloscope_io_start = OscilloscopeController_io_start;
  assign Oscilloscope_io_x = io_x;
  assign Oscilloscope_io_y = io_y;
endmodule
module OneShotPulseGenerator( // @[:@476.2]
  input   clock, // @[:@477.4]
  input   reset, // @[:@478.4]
  output  io_signal // @[:@479.4]
);
  reg [5:0] nextIndex; // @[OneShotPulseGenerator.scala 15:34:@481.4]
  reg [31:0] _RAND_0;
  reg [9:0] countdown; // @[OneShotPulseGenerator.scala 16:34:@482.4]
  reg [31:0] _RAND_1;
  reg  output$; // @[OneShotPulseGenerator.scala 18:34:@483.4]
  reg [31:0] _RAND_2;
  wire  moveNext; // @[OneShotPulseGenerator.scala 21:36:@518.4]
  wire  finished; // @[OneShotPulseGenerator.scala 22:36:@519.4]
  wire  _T_86; // @[OneShotPulseGenerator.scala 24:9:@520.4]
  wire [9:0] _GEN_1; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  wire [9:0] _GEN_2; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  wire [9:0] _GEN_3; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  wire [9:0] _GEN_4; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  wire [9:0] _GEN_5; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  wire [9:0] _GEN_6; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  wire [9:0] _GEN_7; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  wire [9:0] _GEN_8; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  wire [9:0] _GEN_9; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  wire [9:0] _GEN_10; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  wire [9:0] _GEN_11; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  wire [9:0] _GEN_12; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  wire [9:0] _GEN_13; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  wire [9:0] _GEN_14; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  wire [9:0] _GEN_15; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  wire [9:0] _GEN_16; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  wire [9:0] _GEN_17; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  wire [9:0] _GEN_18; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  wire [9:0] _GEN_19; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  wire [9:0] _GEN_20; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  wire [9:0] _GEN_21; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  wire [9:0] _GEN_22; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  wire [9:0] _GEN_23; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  wire [9:0] _GEN_24; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  wire [9:0] _GEN_25; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  wire [9:0] _GEN_26; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  wire [9:0] _GEN_27; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  wire [9:0] _GEN_28; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  wire [9:0] _GEN_29; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  wire [9:0] _GEN_30; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  wire [9:0] _GEN_31; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  wire [9:0] _GEN_32; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  wire [6:0] _T_89; // @[OneShotPulseGenerator.scala 27:30:@524.8]
  wire [5:0] _T_90; // @[OneShotPulseGenerator.scala 27:30:@525.8]
  wire  _T_92; // @[OneShotPulseGenerator.scala 28:17:@527.8]
  wire [10:0] _T_94; // @[OneShotPulseGenerator.scala 30:30:@531.8]
  wire [10:0] _T_95; // @[OneShotPulseGenerator.scala 30:30:@532.8]
  wire [9:0] _T_96; // @[OneShotPulseGenerator.scala 30:30:@533.8]
  wire [9:0] _GEN_33; // @[OneShotPulseGenerator.scala 25:21:@522.6]
  wire [5:0] _GEN_34; // @[OneShotPulseGenerator.scala 25:21:@522.6]
  wire  _GEN_35; // @[OneShotPulseGenerator.scala 25:21:@522.6]
  wire [9:0] _GEN_36; // @[OneShotPulseGenerator.scala 24:20:@521.4]
  wire [5:0] _GEN_37; // @[OneShotPulseGenerator.scala 24:20:@521.4]
  wire  _GEN_38; // @[OneShotPulseGenerator.scala 24:20:@521.4]
  assign moveNext = countdown == 10'h0; // @[OneShotPulseGenerator.scala 21:36:@518.4]
  assign finished = nextIndex == 6'h21; // @[OneShotPulseGenerator.scala 22:36:@519.4]
  assign _T_86 = finished == 1'h0; // @[OneShotPulseGenerator.scala 24:9:@520.4]
  assign _GEN_1 = 6'h1 == nextIndex ? 10'h3bf : 10'h3f; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  assign _GEN_2 = 6'h2 == nextIndex ? 10'h3f : _GEN_1; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  assign _GEN_3 = 6'h3 == nextIndex ? 10'h3bf : _GEN_2; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  assign _GEN_4 = 6'h4 == nextIndex ? 10'h3f : _GEN_3; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  assign _GEN_5 = 6'h5 == nextIndex ? 10'h3bf : _GEN_4; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  assign _GEN_6 = 6'h6 == nextIndex ? 10'h3f : _GEN_5; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  assign _GEN_7 = 6'h7 == nextIndex ? 10'h3bf : _GEN_6; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  assign _GEN_8 = 6'h8 == nextIndex ? 10'h3f : _GEN_7; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  assign _GEN_9 = 6'h9 == nextIndex ? 10'h3bf : _GEN_8; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  assign _GEN_10 = 6'ha == nextIndex ? 10'h3f : _GEN_9; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  assign _GEN_11 = 6'hb == nextIndex ? 10'h3bf : _GEN_10; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  assign _GEN_12 = 6'hc == nextIndex ? 10'h3bf : _GEN_11; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  assign _GEN_13 = 6'hd == nextIndex ? 10'h3f : _GEN_12; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  assign _GEN_14 = 6'he == nextIndex ? 10'h3bf : _GEN_13; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  assign _GEN_15 = 6'hf == nextIndex ? 10'h3f : _GEN_14; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  assign _GEN_16 = 6'h10 == nextIndex ? 10'h3bf : _GEN_15; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  assign _GEN_17 = 6'h11 == nextIndex ? 10'h3f : _GEN_16; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  assign _GEN_18 = 6'h12 == nextIndex ? 10'h3bf : _GEN_17; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  assign _GEN_19 = 6'h13 == nextIndex ? 10'h3f : _GEN_18; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  assign _GEN_20 = 6'h14 == nextIndex ? 10'h3bf : _GEN_19; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  assign _GEN_21 = 6'h15 == nextIndex ? 10'h3f : _GEN_20; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  assign _GEN_22 = 6'h16 == nextIndex ? 10'h3bf : _GEN_21; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  assign _GEN_23 = 6'h17 == nextIndex ? 10'h3f : _GEN_22; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  assign _GEN_24 = 6'h18 == nextIndex ? 10'h3f : _GEN_23; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  assign _GEN_25 = 6'h19 == nextIndex ? 10'h3bf : _GEN_24; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  assign _GEN_26 = 6'h1a == nextIndex ? 10'h3f : _GEN_25; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  assign _GEN_27 = 6'h1b == nextIndex ? 10'h3bf : _GEN_26; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  assign _GEN_28 = 6'h1c == nextIndex ? 10'h3f : _GEN_27; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  assign _GEN_29 = 6'h1d == nextIndex ? 10'h3bf : _GEN_28; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  assign _GEN_30 = 6'h1e == nextIndex ? 10'h3f : _GEN_29; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  assign _GEN_31 = 6'h1f == nextIndex ? 10'h3bf : _GEN_30; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  assign _GEN_32 = 6'h20 == nextIndex ? 10'h0 : _GEN_31; // @[OneShotPulseGenerator.scala 26:17:@523.8]
  assign _T_89 = nextIndex + 6'h1; // @[OneShotPulseGenerator.scala 27:30:@524.8]
  assign _T_90 = _T_89[5:0]; // @[OneShotPulseGenerator.scala 27:30:@525.8]
  assign _T_92 = output$ == 1'h0; // @[OneShotPulseGenerator.scala 28:17:@527.8]
  assign _T_94 = countdown - 10'h1; // @[OneShotPulseGenerator.scala 30:30:@531.8]
  assign _T_95 = $unsigned(_T_94); // @[OneShotPulseGenerator.scala 30:30:@532.8]
  assign _T_96 = _T_95[9:0]; // @[OneShotPulseGenerator.scala 30:30:@533.8]
  assign _GEN_33 = moveNext ? _GEN_32 : _T_96; // @[OneShotPulseGenerator.scala 25:21:@522.6]
  assign _GEN_34 = moveNext ? _T_90 : nextIndex; // @[OneShotPulseGenerator.scala 25:21:@522.6]
  assign _GEN_35 = moveNext ? _T_92 : output$; // @[OneShotPulseGenerator.scala 25:21:@522.6]
  assign _GEN_36 = _T_86 ? _GEN_33 : countdown; // @[OneShotPulseGenerator.scala 24:20:@521.4]
  assign _GEN_37 = _T_86 ? _GEN_34 : nextIndex; // @[OneShotPulseGenerator.scala 24:20:@521.4]
  assign _GEN_38 = _T_86 ? _GEN_35 : output$; // @[OneShotPulseGenerator.scala 24:20:@521.4]
  assign io_signal = output$;
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  nextIndex = _RAND_0[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  countdown = _RAND_1[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  output$ = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      nextIndex <= 6'h1;
    end else begin
      if (_T_86) begin
        if (moveNext) begin
          nextIndex <= _T_90;
        end
      end
    end
    if (reset) begin
      countdown <= 10'h3f;
    end else begin
      if (_T_86) begin
        if (moveNext) begin
          if (6'h20 == nextIndex) begin
            countdown <= 10'h0;
          end else begin
            if (6'h1f == nextIndex) begin
              countdown <= 10'h3bf;
            end else begin
              if (6'h1e == nextIndex) begin
                countdown <= 10'h3f;
              end else begin
                if (6'h1d == nextIndex) begin
                  countdown <= 10'h3bf;
                end else begin
                  if (6'h1c == nextIndex) begin
                    countdown <= 10'h3f;
                  end else begin
                    if (6'h1b == nextIndex) begin
                      countdown <= 10'h3bf;
                    end else begin
                      if (6'h1a == nextIndex) begin
                        countdown <= 10'h3f;
                      end else begin
                        if (6'h19 == nextIndex) begin
                          countdown <= 10'h3bf;
                        end else begin
                          if (6'h18 == nextIndex) begin
                            countdown <= 10'h3f;
                          end else begin
                            if (6'h17 == nextIndex) begin
                              countdown <= 10'h3f;
                            end else begin
                              if (6'h16 == nextIndex) begin
                                countdown <= 10'h3bf;
                              end else begin
                                if (6'h15 == nextIndex) begin
                                  countdown <= 10'h3f;
                                end else begin
                                  if (6'h14 == nextIndex) begin
                                    countdown <= 10'h3bf;
                                  end else begin
                                    if (6'h13 == nextIndex) begin
                                      countdown <= 10'h3f;
                                    end else begin
                                      if (6'h12 == nextIndex) begin
                                        countdown <= 10'h3bf;
                                      end else begin
                                        if (6'h11 == nextIndex) begin
                                          countdown <= 10'h3f;
                                        end else begin
                                          if (6'h10 == nextIndex) begin
                                            countdown <= 10'h3bf;
                                          end else begin
                                            if (6'hf == nextIndex) begin
                                              countdown <= 10'h3f;
                                            end else begin
                                              if (6'he == nextIndex) begin
                                                countdown <= 10'h3bf;
                                              end else begin
                                                if (6'hd == nextIndex) begin
                                                  countdown <= 10'h3f;
                                                end else begin
                                                  if (6'hc == nextIndex) begin
                                                    countdown <= 10'h3bf;
                                                  end else begin
                                                    if (6'hb == nextIndex) begin
                                                      countdown <= 10'h3bf;
                                                    end else begin
                                                      if (6'ha == nextIndex) begin
                                                        countdown <= 10'h3f;
                                                      end else begin
                                                        if (6'h9 == nextIndex) begin
                                                          countdown <= 10'h3bf;
                                                        end else begin
                                                          if (6'h8 == nextIndex) begin
                                                            countdown <= 10'h3f;
                                                          end else begin
                                                            if (6'h7 == nextIndex) begin
                                                              countdown <= 10'h3bf;
                                                            end else begin
                                                              if (6'h6 == nextIndex) begin
                                                                countdown <= 10'h3f;
                                                              end else begin
                                                                if (6'h5 == nextIndex) begin
                                                                  countdown <= 10'h3bf;
                                                                end else begin
                                                                  if (6'h4 == nextIndex) begin
                                                                    countdown <= 10'h3f;
                                                                  end else begin
                                                                    if (6'h3 == nextIndex) begin
                                                                      countdown <= 10'h3bf;
                                                                    end else begin
                                                                      if (6'h2 == nextIndex) begin
                                                                        countdown <= 10'h3f;
                                                                      end else begin
                                                                        if (6'h1 == nextIndex) begin
                                                                          countdown <= 10'h3bf;
                                                                        end else begin
                                                                          countdown <= 10'h3f;
                                                                        end
                                                                      end
                                                                    end
                                                                  end
                                                                end
                                                              end
                                                            end
                                                          end
                                                        end
                                                      end
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end else begin
          countdown <= _T_96;
        end
      end
    end
    if (reset) begin
      output$ <= 1'h0;
    end else begin
      if (_T_86) begin
        if (moveNext) begin
          output$ <= _T_92;
        end
      end
    end
  end
endmodule
module OneShotPulseGenerator_1( // @[:@539.2]
  input   clock, // @[:@540.4]
  input   reset, // @[:@541.4]
  output  io_signal // @[:@542.4]
);
  reg [4:0] nextIndex; // @[OneShotPulseGenerator.scala 15:34:@544.4]
  reg [31:0] _RAND_0;
  reg [9:0] countdown; // @[OneShotPulseGenerator.scala 16:34:@545.4]
  reg [31:0] _RAND_1;
  reg  output$; // @[OneShotPulseGenerator.scala 18:34:@546.4]
  reg [31:0] _RAND_2;
  wire  moveNext; // @[OneShotPulseGenerator.scala 21:36:@577.4]
  wire  finished; // @[OneShotPulseGenerator.scala 22:36:@578.4]
  wire  _T_78; // @[OneShotPulseGenerator.scala 24:9:@579.4]
  wire [9:0] _GEN_1; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  wire [9:0] _GEN_2; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  wire [9:0] _GEN_3; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  wire [9:0] _GEN_4; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  wire [9:0] _GEN_5; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  wire [9:0] _GEN_6; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  wire [9:0] _GEN_7; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  wire [9:0] _GEN_8; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  wire [9:0] _GEN_9; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  wire [9:0] _GEN_10; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  wire [9:0] _GEN_11; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  wire [9:0] _GEN_12; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  wire [9:0] _GEN_13; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  wire [9:0] _GEN_14; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  wire [9:0] _GEN_15; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  wire [9:0] _GEN_16; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  wire [9:0] _GEN_17; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  wire [9:0] _GEN_18; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  wire [9:0] _GEN_19; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  wire [9:0] _GEN_20; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  wire [9:0] _GEN_21; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  wire [9:0] _GEN_22; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  wire [9:0] _GEN_23; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  wire [9:0] _GEN_24; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  wire [9:0] _GEN_25; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  wire [9:0] _GEN_26; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  wire [9:0] _GEN_27; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  wire [9:0] _GEN_28; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  wire [5:0] _T_81; // @[OneShotPulseGenerator.scala 27:30:@583.8]
  wire [4:0] _T_82; // @[OneShotPulseGenerator.scala 27:30:@584.8]
  wire  _T_84; // @[OneShotPulseGenerator.scala 28:17:@586.8]
  wire [10:0] _T_86; // @[OneShotPulseGenerator.scala 30:30:@590.8]
  wire [10:0] _T_87; // @[OneShotPulseGenerator.scala 30:30:@591.8]
  wire [9:0] _T_88; // @[OneShotPulseGenerator.scala 30:30:@592.8]
  wire [9:0] _GEN_29; // @[OneShotPulseGenerator.scala 25:21:@581.6]
  wire [4:0] _GEN_30; // @[OneShotPulseGenerator.scala 25:21:@581.6]
  wire  _GEN_31; // @[OneShotPulseGenerator.scala 25:21:@581.6]
  wire [9:0] _GEN_32; // @[OneShotPulseGenerator.scala 24:20:@580.4]
  wire [4:0] _GEN_33; // @[OneShotPulseGenerator.scala 24:20:@580.4]
  wire  _GEN_34; // @[OneShotPulseGenerator.scala 24:20:@580.4]
  assign moveNext = countdown == 10'h0; // @[OneShotPulseGenerator.scala 21:36:@577.4]
  assign finished = nextIndex == 5'h1d; // @[OneShotPulseGenerator.scala 22:36:@578.4]
  assign _T_78 = finished == 1'h0; // @[OneShotPulseGenerator.scala 24:9:@579.4]
  assign _GEN_1 = 5'h1 == nextIndex ? 10'h3bf : 10'h3f; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  assign _GEN_2 = 5'h2 == nextIndex ? 10'h3f : _GEN_1; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  assign _GEN_3 = 5'h3 == nextIndex ? 10'h3bf : _GEN_2; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  assign _GEN_4 = 5'h4 == nextIndex ? 10'h3f : _GEN_3; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  assign _GEN_5 = 5'h5 == nextIndex ? 10'h3bf : _GEN_4; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  assign _GEN_6 = 5'h6 == nextIndex ? 10'h3f : _GEN_5; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  assign _GEN_7 = 5'h7 == nextIndex ? 10'h3bf : _GEN_6; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  assign _GEN_8 = 5'h8 == nextIndex ? 10'h3f : _GEN_7; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  assign _GEN_9 = 5'h9 == nextIndex ? 10'h3bf : _GEN_8; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  assign _GEN_10 = 5'ha == nextIndex ? 10'h3bf : _GEN_9; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  assign _GEN_11 = 5'hb == nextIndex ? 10'h3f : _GEN_10; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  assign _GEN_12 = 5'hc == nextIndex ? 10'h3bf : _GEN_11; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  assign _GEN_13 = 5'hd == nextIndex ? 10'h3f : _GEN_12; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  assign _GEN_14 = 5'he == nextIndex ? 10'h3bf : _GEN_13; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  assign _GEN_15 = 5'hf == nextIndex ? 10'h3f : _GEN_14; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  assign _GEN_16 = 5'h10 == nextIndex ? 10'h3bf : _GEN_15; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  assign _GEN_17 = 5'h11 == nextIndex ? 10'h3f : _GEN_16; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  assign _GEN_18 = 5'h12 == nextIndex ? 10'h3bf : _GEN_17; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  assign _GEN_19 = 5'h13 == nextIndex ? 10'h3f : _GEN_18; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  assign _GEN_20 = 5'h14 == nextIndex ? 10'h3f : _GEN_19; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  assign _GEN_21 = 5'h15 == nextIndex ? 10'h3bf : _GEN_20; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  assign _GEN_22 = 5'h16 == nextIndex ? 10'h3f : _GEN_21; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  assign _GEN_23 = 5'h17 == nextIndex ? 10'h3bf : _GEN_22; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  assign _GEN_24 = 5'h18 == nextIndex ? 10'h3f : _GEN_23; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  assign _GEN_25 = 5'h19 == nextIndex ? 10'h3bf : _GEN_24; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  assign _GEN_26 = 5'h1a == nextIndex ? 10'h3f : _GEN_25; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  assign _GEN_27 = 5'h1b == nextIndex ? 10'h3bf : _GEN_26; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  assign _GEN_28 = 5'h1c == nextIndex ? 10'h0 : _GEN_27; // @[OneShotPulseGenerator.scala 26:17:@582.8]
  assign _T_81 = nextIndex + 5'h1; // @[OneShotPulseGenerator.scala 27:30:@583.8]
  assign _T_82 = _T_81[4:0]; // @[OneShotPulseGenerator.scala 27:30:@584.8]
  assign _T_84 = output$ == 1'h0; // @[OneShotPulseGenerator.scala 28:17:@586.8]
  assign _T_86 = countdown - 10'h1; // @[OneShotPulseGenerator.scala 30:30:@590.8]
  assign _T_87 = $unsigned(_T_86); // @[OneShotPulseGenerator.scala 30:30:@591.8]
  assign _T_88 = _T_87[9:0]; // @[OneShotPulseGenerator.scala 30:30:@592.8]
  assign _GEN_29 = moveNext ? _GEN_28 : _T_88; // @[OneShotPulseGenerator.scala 25:21:@581.6]
  assign _GEN_30 = moveNext ? _T_82 : nextIndex; // @[OneShotPulseGenerator.scala 25:21:@581.6]
  assign _GEN_31 = moveNext ? _T_84 : output$; // @[OneShotPulseGenerator.scala 25:21:@581.6]
  assign _GEN_32 = _T_78 ? _GEN_29 : countdown; // @[OneShotPulseGenerator.scala 24:20:@580.4]
  assign _GEN_33 = _T_78 ? _GEN_30 : nextIndex; // @[OneShotPulseGenerator.scala 24:20:@580.4]
  assign _GEN_34 = _T_78 ? _GEN_31 : output$; // @[OneShotPulseGenerator.scala 24:20:@580.4]
  assign io_signal = output$;
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  nextIndex = _RAND_0[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  countdown = _RAND_1[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  output$ = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      nextIndex <= 5'h1;
    end else begin
      if (_T_78) begin
        if (moveNext) begin
          nextIndex <= _T_82;
        end
      end
    end
    if (reset) begin
      countdown <= 10'h3f;
    end else begin
      if (_T_78) begin
        if (moveNext) begin
          if (5'h1c == nextIndex) begin
            countdown <= 10'h0;
          end else begin
            if (5'h1b == nextIndex) begin
              countdown <= 10'h3bf;
            end else begin
              if (5'h1a == nextIndex) begin
                countdown <= 10'h3f;
              end else begin
                if (5'h19 == nextIndex) begin
                  countdown <= 10'h3bf;
                end else begin
                  if (5'h18 == nextIndex) begin
                    countdown <= 10'h3f;
                  end else begin
                    if (5'h17 == nextIndex) begin
                      countdown <= 10'h3bf;
                    end else begin
                      if (5'h16 == nextIndex) begin
                        countdown <= 10'h3f;
                      end else begin
                        if (5'h15 == nextIndex) begin
                          countdown <= 10'h3bf;
                        end else begin
                          if (5'h14 == nextIndex) begin
                            countdown <= 10'h3f;
                          end else begin
                            if (5'h13 == nextIndex) begin
                              countdown <= 10'h3f;
                            end else begin
                              if (5'h12 == nextIndex) begin
                                countdown <= 10'h3bf;
                              end else begin
                                if (5'h11 == nextIndex) begin
                                  countdown <= 10'h3f;
                                end else begin
                                  if (5'h10 == nextIndex) begin
                                    countdown <= 10'h3bf;
                                  end else begin
                                    if (5'hf == nextIndex) begin
                                      countdown <= 10'h3f;
                                    end else begin
                                      if (5'he == nextIndex) begin
                                        countdown <= 10'h3bf;
                                      end else begin
                                        if (5'hd == nextIndex) begin
                                          countdown <= 10'h3f;
                                        end else begin
                                          if (5'hc == nextIndex) begin
                                            countdown <= 10'h3bf;
                                          end else begin
                                            if (5'hb == nextIndex) begin
                                              countdown <= 10'h3f;
                                            end else begin
                                              if (5'ha == nextIndex) begin
                                                countdown <= 10'h3bf;
                                              end else begin
                                                if (5'h9 == nextIndex) begin
                                                  countdown <= 10'h3bf;
                                                end else begin
                                                  if (5'h8 == nextIndex) begin
                                                    countdown <= 10'h3f;
                                                  end else begin
                                                    if (5'h7 == nextIndex) begin
                                                      countdown <= 10'h3bf;
                                                    end else begin
                                                      if (5'h6 == nextIndex) begin
                                                        countdown <= 10'h3f;
                                                      end else begin
                                                        if (5'h5 == nextIndex) begin
                                                          countdown <= 10'h3bf;
                                                        end else begin
                                                          if (5'h4 == nextIndex) begin
                                                            countdown <= 10'h3f;
                                                          end else begin
                                                            if (5'h3 == nextIndex) begin
                                                              countdown <= 10'h3bf;
                                                            end else begin
                                                              if (5'h2 == nextIndex) begin
                                                                countdown <= 10'h3f;
                                                              end else begin
                                                                if (5'h1 == nextIndex) begin
                                                                  countdown <= 10'h3bf;
                                                                end else begin
                                                                  countdown <= 10'h3f;
                                                                end
                                                              end
                                                            end
                                                          end
                                                        end
                                                      end
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end else begin
          countdown <= _T_88;
        end
      end
    end
    if (reset) begin
      output$ <= 1'h0;
    end else begin
      if (_T_78) begin
        if (moveNext) begin
          output$ <= _T_84;
        end
      end
    end
  end
endmodule
module BWGenerator( // @[:@598.2]
  input         clock, // @[:@599.4]
  input         reset, // @[:@600.4]
  input  [8:0]  io_L, // @[:@601.4]
  output [9:0]  io_x, // @[:@601.4]
  output [9:0]  io_y, // @[:@601.4]
  output        io_inScanLine, // @[:@601.4]
  output        io_inPorch, // @[:@601.4]
  output [15:0] io_millivolts // @[:@601.4]
);
  reg [9:0] scanLineNr; // @[BWGenerator.scala 57:35:@603.4]
  reg [31:0] _RAND_0;
  reg [15:0] inScanLineCounter; // @[BWGenerator.scala 58:42:@604.4]
  reg [31:0] _RAND_1;
  wire  fieldIGenerator_clock; // @[BWGenerator.scala 74:11:@627.4]
  wire  fieldIGenerator_reset; // @[BWGenerator.scala 74:11:@627.4]
  wire  fieldIGenerator_io_signal; // @[BWGenerator.scala 74:11:@627.4]
  wire  fieldIIGenerator_clock; // @[BWGenerator.scala 78:11:@634.4]
  wire  fieldIIGenerator_reset; // @[BWGenerator.scala 78:11:@634.4]
  wire  fieldIIGenerator_io_signal; // @[BWGenerator.scala 78:11:@634.4]
  reg [9:0] _T_64; // @[BWGenerator.scala 85:35:@647.4]
  reg [31:0] _RAND_2;
  reg [9:0] _T_67; // @[BWGenerator.scala 85:35:@648.4]
  reg [31:0] _RAND_3;
  wire  _T_25; // @[BWGenerator.scala 60:27:@605.4]
  wire  _T_28; // @[BWGenerator.scala 62:21:@608.6]
  wire [10:0] _T_31; // @[BWGenerator.scala 65:32:@613.8]
  wire [9:0] _T_32; // @[BWGenerator.scala 65:32:@614.8]
  wire [9:0] _GEN_0; // @[BWGenerator.scala 62:58:@609.6]
  wire [16:0] _T_34; // @[BWGenerator.scala 68:44:@619.6]
  wire [15:0] _T_35; // @[BWGenerator.scala 68:44:@620.6]
  wire [15:0] _GEN_1; // @[BWGenerator.scala 60:87:@606.4]
  wire [9:0] _GEN_2; // @[BWGenerator.scala 60:87:@606.4]
  wire  _T_37; // @[BWGenerator.scala 72:51:@623.4]
  wire  _T_39; // @[BWGenerator.scala 72:79:@624.4]
  wire  fieldIActive; // @[BWGenerator.scala 72:65:@625.4]
  wire  _T_41; // @[BWGenerator.scala 73:43:@626.4]
  wire  _T_43; // @[BWGenerator.scala 76:51:@630.4]
  wire  _T_45; // @[BWGenerator.scala 76:79:@631.4]
  wire  fieldIIActive; // @[BWGenerator.scala 76:65:@632.4]
  wire  _T_47; // @[BWGenerator.scala 77:44:@633.4]
  wire  _T_49; // @[BWGenerator.scala 82:51:@637.4]
  wire  _T_51; // @[BWGenerator.scala 82:79:@638.4]
  wire  _T_52; // @[BWGenerator.scala 82:65:@639.4]
  wire  _T_54; // @[BWGenerator.scala 83:51:@640.4]
  wire  _T_56; // @[BWGenerator.scala 83:79:@641.4]
  wire  _T_57; // @[BWGenerator.scala 83:65:@642.4]
  wire  _T_58; // @[BWGenerator.scala 84:33:@643.4]
  wire  _T_60; // @[BWGenerator.scala 84:102:@644.4]
  wire  _T_61; // @[BWGenerator.scala 84:50:@645.4]
  wire [16:0] _T_69; // @[BWGenerator.scala 88:23:@649.4]
  wire [16:0] _T_70; // @[BWGenerator.scala 88:23:@650.4]
  wire [15:0] _T_71; // @[BWGenerator.scala 88:23:@651.4]
  wire [15:0] _T_73; // @[BWGenerator.scala 86:14:@652.4]
  wire [15:0] _T_75; // @[BWGenerator.scala 90:5:@653.4]
  wire [10:0] _T_77; // @[BWGenerator.scala 95:20:@655.4]
  wire [10:0] _T_78; // @[BWGenerator.scala 95:20:@656.4]
  wire [9:0] _T_79; // @[BWGenerator.scala 95:20:@657.4]
  wire [10:0] _GEN_13; // @[BWGenerator.scala 95:44:@658.4]
  wire [10:0] _T_80; // @[BWGenerator.scala 95:44:@658.4]
  wire [10:0] _T_82; // @[BWGenerator.scala 96:20:@659.4]
  wire [10:0] _T_83; // @[BWGenerator.scala 96:20:@660.4]
  wire [9:0] _T_84; // @[BWGenerator.scala 96:20:@661.4]
  wire [10:0] _GEN_14; // @[BWGenerator.scala 96:44:@662.4]
  wire [10:0] _T_85; // @[BWGenerator.scala 96:44:@662.4]
  wire [11:0] _T_87; // @[BWGenerator.scala 96:57:@663.4]
  wire [10:0] _T_88; // @[BWGenerator.scala 96:57:@664.4]
  wire [10:0] _T_89; // @[BWGenerator.scala 93:8:@665.4]
  wire [10:0] _T_91; // @[BWGenerator.scala 91:14:@666.4]
  wire [11:0] _T_94; // @[BWGenerator.scala 106:25:@673.6]
  wire [11:0] _T_96; // @[BWGenerator.scala 108:25:@678.8]
  wire  _T_98; // @[BWGenerator.scala 110:28:@682.8]
  wire  _T_100; // @[BWGenerator.scala 112:35:@687.10]
  wire  _T_103; // @[BWGenerator.scala 114:35:@692.12]
  wire [11:0] _GEN_15; // @[BWGenerator.scala 118:33:@698.14]
  wire [12:0] _T_105; // @[BWGenerator.scala 118:33:@698.14]
  wire [11:0] _T_106; // @[BWGenerator.scala 118:33:@699.14]
  wire [11:0] _T_107; // @[BWGenerator.scala 118:33:@700.14]
  wire [12:0] _T_109; // @[BWGenerator.scala 118:49:@701.14]
  wire [11:0] _T_110; // @[BWGenerator.scala 118:49:@702.14]
  wire [11:0] _T_111; // @[BWGenerator.scala 118:49:@703.14]
  wire [11:0] _GEN_3; // @[BWGenerator.scala 114:86:@693.12]
  wire [11:0] _GEN_5; // @[BWGenerator.scala 112:88:@688.10]
  wire  _GEN_6; // @[BWGenerator.scala 112:88:@688.10]
  wire [11:0] _GEN_7; // @[BWGenerator.scala 110:73:@683.8]
  wire  _GEN_8; // @[BWGenerator.scala 110:73:@683.8]
  wire [11:0] _GEN_9; // @[BWGenerator.scala 107:30:@677.6]
  wire  _GEN_10; // @[BWGenerator.scala 107:30:@677.6]
  wire [11:0] _GEN_11; // @[BWGenerator.scala 105:23:@672.4]
  wire  _GEN_12; // @[BWGenerator.scala 105:23:@672.4]
  OneShotPulseGenerator fieldIGenerator ( // @[BWGenerator.scala 74:11:@627.4]
    .clock(fieldIGenerator_clock),
    .reset(fieldIGenerator_reset),
    .io_signal(fieldIGenerator_io_signal)
  );
  OneShotPulseGenerator_1 fieldIIGenerator ( // @[BWGenerator.scala 78:11:@634.4]
    .clock(fieldIIGenerator_clock),
    .reset(fieldIIGenerator_reset),
    .io_signal(fieldIIGenerator_io_signal)
  );
  assign _T_25 = inScanLineCounter == 16'h7ff; // @[BWGenerator.scala 60:27:@605.4]
  assign _T_28 = scanLineNr == 10'h270; // @[BWGenerator.scala 62:21:@608.6]
  assign _T_31 = scanLineNr + 10'h1; // @[BWGenerator.scala 65:32:@613.8]
  assign _T_32 = _T_31[9:0]; // @[BWGenerator.scala 65:32:@614.8]
  assign _GEN_0 = _T_28 ? 10'h0 : _T_32; // @[BWGenerator.scala 62:58:@609.6]
  assign _T_34 = inScanLineCounter + 16'h1; // @[BWGenerator.scala 68:44:@619.6]
  assign _T_35 = _T_34[15:0]; // @[BWGenerator.scala 68:44:@620.6]
  assign _GEN_1 = _T_25 ? 16'h0 : _T_35; // @[BWGenerator.scala 60:87:@606.4]
  assign _GEN_2 = _T_25 ? _GEN_0 : scanLineNr; // @[BWGenerator.scala 60:87:@606.4]
  assign _T_37 = 10'h26e <= scanLineNr; // @[BWGenerator.scala 72:51:@623.4]
  assign _T_39 = scanLineNr < 10'h5; // @[BWGenerator.scala 72:79:@624.4]
  assign fieldIActive = _T_37 | _T_39; // @[BWGenerator.scala 72:65:@625.4]
  assign _T_41 = fieldIActive == 1'h0; // @[BWGenerator.scala 73:43:@626.4]
  assign _T_43 = 10'h136 <= scanLineNr; // @[BWGenerator.scala 76:51:@630.4]
  assign _T_45 = scanLineNr < 10'h13d; // @[BWGenerator.scala 76:79:@631.4]
  assign fieldIIActive = _T_43 & _T_45; // @[BWGenerator.scala 76:65:@632.4]
  assign _T_47 = fieldIIActive == 1'h0; // @[BWGenerator.scala 77:44:@633.4]
  assign _T_49 = 10'h5 <= scanLineNr; // @[BWGenerator.scala 82:51:@637.4]
  assign _T_51 = scanLineNr < 10'h136; // @[BWGenerator.scala 82:79:@638.4]
  assign _T_52 = _T_49 & _T_51; // @[BWGenerator.scala 82:65:@639.4]
  assign _T_54 = 10'h13d <= scanLineNr; // @[BWGenerator.scala 83:51:@640.4]
  assign _T_56 = scanLineNr < 10'h26e; // @[BWGenerator.scala 83:79:@641.4]
  assign _T_57 = _T_54 & _T_56; // @[BWGenerator.scala 83:65:@642.4]
  assign _T_58 = _T_52 | _T_57; // @[BWGenerator.scala 84:33:@643.4]
  assign _T_60 = 16'h180 <= inScanLineCounter; // @[BWGenerator.scala 84:102:@644.4]
  assign _T_61 = _T_58 & _T_60; // @[BWGenerator.scala 84:50:@645.4]
  assign _T_69 = inScanLineCounter - 16'h180; // @[BWGenerator.scala 88:23:@649.4]
  assign _T_70 = $unsigned(_T_69); // @[BWGenerator.scala 88:23:@650.4]
  assign _T_71 = _T_70[15:0]; // @[BWGenerator.scala 88:23:@651.4]
  assign _T_73 = io_inScanLine ? _T_71 : 16'h0; // @[BWGenerator.scala 86:14:@652.4]
  assign _T_75 = _T_73 / 16'h4; // @[BWGenerator.scala 90:5:@653.4]
  assign _T_77 = scanLineNr - 10'h5; // @[BWGenerator.scala 95:20:@655.4]
  assign _T_78 = $unsigned(_T_77); // @[BWGenerator.scala 95:20:@656.4]
  assign _T_79 = _T_78[9:0]; // @[BWGenerator.scala 95:20:@657.4]
  assign _GEN_13 = {{1'd0}, _T_79}; // @[BWGenerator.scala 95:44:@658.4]
  assign _T_80 = _GEN_13 << 1; // @[BWGenerator.scala 95:44:@658.4]
  assign _T_82 = scanLineNr - 10'h13d; // @[BWGenerator.scala 96:20:@659.4]
  assign _T_83 = $unsigned(_T_82); // @[BWGenerator.scala 96:20:@660.4]
  assign _T_84 = _T_83[9:0]; // @[BWGenerator.scala 96:20:@661.4]
  assign _GEN_14 = {{1'd0}, _T_84}; // @[BWGenerator.scala 96:44:@662.4]
  assign _T_85 = _GEN_14 << 1; // @[BWGenerator.scala 96:44:@662.4]
  assign _T_87 = _T_85 + 11'h1; // @[BWGenerator.scala 96:57:@663.4]
  assign _T_88 = _T_87[10:0]; // @[BWGenerator.scala 96:57:@664.4]
  assign _T_89 = _T_52 ? _T_80 : _T_88; // @[BWGenerator.scala 93:8:@665.4]
  assign _T_91 = io_inScanLine ? _T_89 : 11'h0; // @[BWGenerator.scala 91:14:@666.4]
  assign _T_94 = fieldIGenerator_io_signal ? $signed(12'sh12c) : $signed(12'sh0); // @[BWGenerator.scala 106:25:@673.6]
  assign _T_96 = fieldIIGenerator_io_signal ? $signed(12'sh12c) : $signed(12'sh0); // @[BWGenerator.scala 108:25:@678.8]
  assign _T_98 = inScanLineCounter < 16'h34; // @[BWGenerator.scala 110:28:@682.8]
  assign _T_100 = inScanLineCounter < 16'hcb; // @[BWGenerator.scala 112:35:@687.10]
  assign _T_103 = inScanLineCounter < 16'h180; // @[BWGenerator.scala 114:35:@692.12]
  assign _GEN_15 = {{3{io_L[8]}},io_L}; // @[BWGenerator.scala 118:33:@698.14]
  assign _T_105 = $signed(12'sh12c) + $signed(_GEN_15); // @[BWGenerator.scala 118:33:@698.14]
  assign _T_106 = _T_105[11:0]; // @[BWGenerator.scala 118:33:@699.14]
  assign _T_107 = $signed(_T_106); // @[BWGenerator.scala 118:33:@700.14]
  assign _T_109 = $signed(_T_107) + $signed(12'sh1e); // @[BWGenerator.scala 118:49:@701.14]
  assign _T_110 = _T_109[11:0]; // @[BWGenerator.scala 118:49:@702.14]
  assign _T_111 = $signed(_T_110); // @[BWGenerator.scala 118:49:@703.14]
  assign _GEN_3 = _T_103 ? $signed(12'sh12c) : $signed(_T_111); // @[BWGenerator.scala 114:86:@693.12]
  assign _GEN_5 = _T_100 ? $signed(12'sh0) : $signed(_GEN_3); // @[BWGenerator.scala 112:88:@688.10]
  assign _GEN_6 = _T_100 ? 1'h0 : _T_103; // @[BWGenerator.scala 112:88:@688.10]
  assign _GEN_7 = _T_98 ? $signed(12'sh12c) : $signed(_GEN_5); // @[BWGenerator.scala 110:73:@683.8]
  assign _GEN_8 = _T_98 ? 1'h0 : _GEN_6; // @[BWGenerator.scala 110:73:@683.8]
  assign _GEN_9 = fieldIIActive ? $signed(_T_96) : $signed(_GEN_7); // @[BWGenerator.scala 107:30:@677.6]
  assign _GEN_10 = fieldIIActive ? 1'h0 : _GEN_8; // @[BWGenerator.scala 107:30:@677.6]
  assign _GEN_11 = fieldIActive ? $signed(_T_94) : $signed(_GEN_9); // @[BWGenerator.scala 105:23:@672.4]
  assign _GEN_12 = fieldIActive ? 1'h0 : _GEN_10; // @[BWGenerator.scala 105:23:@672.4]
  assign io_x = _T_64;
  assign io_y = _T_67;
  assign io_inScanLine = _T_61;
  assign io_inPorch = _GEN_12;
  assign io_millivolts = {{4{_GEN_11[11]}},_GEN_11};
  assign fieldIGenerator_clock = clock;
  assign fieldIGenerator_reset = _T_41;
  assign fieldIIGenerator_clock = clock;
  assign fieldIIGenerator_reset = _T_47;
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  scanLineNr = _RAND_0[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  inScanLineCounter = _RAND_1[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  _T_64 = _RAND_2[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  _T_67 = _RAND_3[9:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      scanLineNr <= 10'h26c;
    end else begin
      if (_T_25) begin
        if (_T_28) begin
          scanLineNr <= 10'h0;
        end else begin
          scanLineNr <= _T_32;
        end
      end
    end
    if (reset) begin
      inScanLineCounter <= 16'h0;
    end else begin
      if (_T_25) begin
        inScanLineCounter <= 16'h0;
      end else begin
        inScanLineCounter <= _T_35;
      end
    end
    if (reset) begin
      _T_64 <= 10'h0;
    end else begin
      _T_64 <= _T_75[9:0];
    end
    if (reset) begin
      _T_67 <= 10'h0;
    end else begin
      _T_67 <= _T_91[9:0];
    end
  end
endmodule
module PalColorCalculator( // @[:@708.2]
  input         clock, // @[:@709.4]
  input         reset, // @[:@710.4]
  input  [7:0]  io_green, // @[:@711.4]
  input         io_inPorch, // @[:@711.4]
  input         io_inScanLine, // @[:@711.4]
  input  [9:0]  io_y, // @[:@711.4]
  output [8:0]  io_S, // @[:@711.4]
  output [10:0] io_millivolts // @[:@711.4]
);
  reg [8:0] regS; // @[PalColorCalculator.scala 31:29:@713.4]
  reg [31:0] _RAND_0;
  reg [10:0] regMv; // @[PalColorCalculator.scala 38:30:@723.4]
  reg [31:0] _RAND_1;
  reg [9:0] preburstCounter; // @[PalColorCalculator.scala 46:40:@759.4]
  reg [31:0] _RAND_2;
  reg [9:0] burstCounter; // @[PalColorCalculator.scala 47:37:@760.4]
  reg [31:0] _RAND_3;
  reg [6:0] counter; // @[PalColorCalculator.scala 55:32:@1019.4]
  reg [31:0] _RAND_4;
  reg  phaseFlip; // @[PalColorCalculator.scala 58:34:@1023.4]
  reg [31:0] _RAND_5;
  wire [15:0] _T_40; // @[PalColorCalculator.scala 40:27:@724.4]
  wire [9:0] _GEN_785; // @[PalColorCalculator.scala 40:51:@725.4]
  wire [17:0] _T_42; // @[PalColorCalculator.scala 40:51:@725.4]
  wire [17:0] _GEN_786; // @[PalColorCalculator.scala 40:40:@726.4]
  wire [18:0] _T_43; // @[PalColorCalculator.scala 40:40:@726.4]
  wire [17:0] _T_44; // @[PalColorCalculator.scala 40:40:@727.4]
  wire [14:0] _T_46; // @[PalColorCalculator.scala 40:74:@728.4]
  wire [17:0] _GEN_787; // @[PalColorCalculator.scala 40:64:@729.4]
  wire [18:0] _T_47; // @[PalColorCalculator.scala 40:64:@729.4]
  wire [17:0] _T_48; // @[PalColorCalculator.scala 40:64:@730.4]
  wire [17:0] Y; // @[PalColorCalculator.scala 40:87:@731.4]
  wire [16:0] _T_52; // @[PalColorCalculator.scala 43:26:@734.4]
  wire [7:0] _T_53; // @[PalColorCalculator.scala 43:53:@735.4]
  wire [9:0] _GEN_788; // @[PalColorCalculator.scala 43:60:@736.4]
  wire [17:0] _T_55; // @[PalColorCalculator.scala 43:60:@736.4]
  wire [17:0] _GEN_789; // @[PalColorCalculator.scala 43:42:@737.4]
  wire [18:0] _T_56; // @[PalColorCalculator.scala 43:42:@737.4]
  wire [17:0] _T_57; // @[PalColorCalculator.scala 43:42:@738.4]
  wire [17:0] _T_58; // @[PalColorCalculator.scala 43:42:@739.4]
  wire [17:0] _T_61; // @[PalColorCalculator.scala 43:93:@741.4]
  wire [18:0] _T_62; // @[PalColorCalculator.scala 43:76:@742.4]
  wire [17:0] _T_63; // @[PalColorCalculator.scala 43:76:@743.4]
  wire [17:0] _T_64; // @[PalColorCalculator.scala 43:76:@744.4]
  wire [18:0] U; // @[PalColorCalculator.scala 43:110:@745.4]
  wire [18:0] _T_68; // @[PalColorCalculator.scala 44:26:@747.4]
  wire [10:0] _GEN_790; // @[PalColorCalculator.scala 44:60:@749.4]
  wire [18:0] _T_71; // @[PalColorCalculator.scala 44:60:@749.4]
  wire [19:0] _T_72; // @[PalColorCalculator.scala 44:42:@750.4]
  wire [18:0] _T_73; // @[PalColorCalculator.scala 44:42:@751.4]
  wire [18:0] _T_74; // @[PalColorCalculator.scala 44:42:@752.4]
  wire [15:0] _T_77; // @[PalColorCalculator.scala 44:93:@754.4]
  wire [18:0] _GEN_791; // @[PalColorCalculator.scala 44:76:@755.4]
  wire [19:0] _T_78; // @[PalColorCalculator.scala 44:76:@755.4]
  wire [18:0] _T_79; // @[PalColorCalculator.scala 44:76:@756.4]
  wire [18:0] _T_80; // @[PalColorCalculator.scala 44:76:@757.4]
  wire [19:0] V; // @[PalColorCalculator.scala 44:110:@758.4]
  wire [12:0] _GEN_792; // @[PalColorCalculator.scala 56:76:@1020.4]
  wire [19:0] _T_609; // @[PalColorCalculator.scala 56:76:@1020.4]
  wire [19:0] _T_611; // @[PalColorCalculator.scala 56:86:@1021.4]
  wire [19:0] _GEN_4; // @[PalColorCalculator.scala 56:129:@1022.4]
  wire [7:0] tableIndex; // @[PalColorCalculator.scala 56:129:@1022.4]
  wire  _T_617; // @[PalColorCalculator.scala 61:14:@1025.4]
  wire  _T_618; // @[PalColorCalculator.scala 61:27:@1026.4]
  wire [7:0] _T_622; // @[PalColorCalculator.scala 65:24:@1032.6]
  wire [6:0] _T_623; // @[PalColorCalculator.scala 65:24:@1033.6]
  wire  _GEN_0; // @[PalColorCalculator.scala 61:45:@1027.4]
  wire [6:0] _GEN_1; // @[PalColorCalculator.scala 61:45:@1027.4]
  wire  _T_625; // @[PalColorCalculator.scala 68:27:@1037.6]
  wire  _T_627; // @[PalColorCalculator.scala 69:20:@1039.8]
  wire  _GEN_2; // @[PalColorCalculator.scala 68:41:@1038.6]
  wire [6:0] _GEN_3; // @[PalColorCalculator.scala 68:41:@1038.6]
  wire  _T_630; // @[PalColorCalculator.scala 72:27:@1043.6]
  wire [10:0] _T_632; // @[PalColorCalculator.scala 73:42:@1045.8]
  wire [9:0] _T_633; // @[PalColorCalculator.scala 73:42:@1046.8]
  wire  _T_636; // @[PalColorCalculator.scala 76:26:@1051.8]
  wire [8:0] _T_638; // @[PalColorCalculator.scala 78:88:@1053.10]
  wire [7:0] _T_639; // @[PalColorCalculator.scala 78:88:@1054.10]
  wire [7:0] _GEN_132; // @[PalColorCalculator.scala 78:118:@1055.10]
  wire [7:0] _T_641; // @[PalColorCalculator.scala 78:118:@1055.10]
  wire [6:0] _T_643; // @[:@1056.10]
  wire [8:0] _T_645; // @[PalColorCalculator.scala 79:89:@1057.10]
  wire [8:0] _T_646; // @[PalColorCalculator.scala 79:89:@1058.10]
  wire [7:0] _T_647; // @[PalColorCalculator.scala 79:89:@1059.10]
  wire [7:0] _GEN_265; // @[PalColorCalculator.scala 79:119:@1060.10]
  wire [7:0] _T_649; // @[PalColorCalculator.scala 79:119:@1060.10]
  wire [6:0] _T_651; // @[:@1061.10]
  wire [9:0] _GEN_5; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_6; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_7; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_8; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_9; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_10; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_11; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_12; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_13; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_14; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_15; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_16; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_17; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_18; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_19; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_20; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_21; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_22; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_23; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_24; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_25; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_26; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_27; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_28; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_29; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_30; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_31; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_32; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_33; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_34; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_35; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_36; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_37; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_38; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_39; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_40; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_41; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_42; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_43; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_44; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_45; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_46; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_47; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_48; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_49; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_50; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_51; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_52; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_53; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_54; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_55; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_56; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_57; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_58; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_59; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_60; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_61; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_62; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_63; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_64; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_65; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_66; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_67; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_68; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_69; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_70; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_71; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_72; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_73; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_74; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_75; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_76; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_77; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_78; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_79; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_80; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_81; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_82; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_83; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_84; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_85; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_86; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_87; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_88; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_89; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_90; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_91; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_92; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_93; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_94; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_95; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_96; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_97; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_98; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_99; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_100; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_101; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_102; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_103; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_104; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_105; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_106; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_107; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_108; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_109; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_110; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_111; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_112; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_113; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_114; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_115; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_116; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_117; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_118; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_119; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_120; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_121; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_122; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_123; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_124; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_125; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_126; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_127; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_128; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_129; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_130; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _GEN_131; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [10:0] _T_653; // @[PalColorCalculator.scala 79:66:@1062.10]
  wire [9:0] _T_654; // @[PalColorCalculator.scala 79:66:@1063.10]
  wire [9:0] _T_655; // @[PalColorCalculator.scala 79:66:@1064.10]
  wire [9:0] _GEN_133; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_134; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_135; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_136; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_137; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_138; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_139; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_140; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_141; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_142; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_143; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_144; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_145; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_146; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_147; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_148; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_149; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_150; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_151; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_152; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_153; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_154; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_155; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_156; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_157; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_158; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_159; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_160; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_161; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_162; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_163; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_164; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_165; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_166; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_167; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_168; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_169; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_170; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_171; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_172; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_173; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_174; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_175; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_176; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_177; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_178; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_179; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_180; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_181; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_182; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_183; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_184; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_185; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_186; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_187; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_188; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_189; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_190; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_191; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_192; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_193; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_194; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_195; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_196; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_197; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_198; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_199; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_200; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_201; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_202; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_203; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_204; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_205; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_206; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_207; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_208; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_209; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_210; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_211; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_212; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_213; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_214; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_215; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_216; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_217; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_218; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_219; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_220; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_221; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_222; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_223; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_224; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_225; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_226; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_227; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_228; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_229; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_230; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_231; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_232; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_233; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_234; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_235; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_236; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_237; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_238; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_239; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_240; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_241; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_242; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_243; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_244; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_245; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_246; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_247; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_248; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_249; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_250; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_251; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_252; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_253; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_254; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_255; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_256; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_257; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_258; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _GEN_259; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [9:0] _T_656; // @[PalColorCalculator.scala 77:21:@1065.10]
  wire [10:0] _T_658; // @[PalColorCalculator.scala 80:11:@1066.10]
  wire [10:0] _T_660; // @[PalColorCalculator.scala 81:38:@1068.10]
  wire [9:0] _T_661; // @[PalColorCalculator.scala 81:38:@1069.10]
  wire [10:0] _GEN_260; // @[PalColorCalculator.scala 76:97:@1052.8]
  wire [9:0] _GEN_261; // @[PalColorCalculator.scala 76:97:@1052.8]
  wire [9:0] _GEN_262; // @[PalColorCalculator.scala 72:70:@1044.6]
  wire [9:0] _GEN_263; // @[PalColorCalculator.scala 72:70:@1044.6]
  wire [10:0] _GEN_264; // @[PalColorCalculator.scala 72:70:@1044.6]
  wire [17:0] _T_664; // @[PalColorCalculator.scala 92:11:@1080.8]
  wire [6:0] _T_666; // @[:@1081.8]
  wire [9:0] _GEN_266; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_267; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_268; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_269; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_270; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_271; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_272; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_273; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_274; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_275; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_276; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_277; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_278; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_279; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_280; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_281; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_282; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_283; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_284; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_285; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_286; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_287; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_288; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_289; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_290; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_291; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_292; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_293; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_294; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_295; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_296; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_297; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_298; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_299; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_300; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_301; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_302; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_303; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_304; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_305; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_306; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_307; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_308; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_309; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_310; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_311; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_312; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_313; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_314; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_315; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_316; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_317; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_318; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_319; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_320; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_321; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_322; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_323; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_324; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_325; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_326; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_327; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_328; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_329; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_330; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_331; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_332; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_333; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_334; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_335; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_336; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_337; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_338; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_339; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_340; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_341; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_342; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_343; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_344; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_345; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_346; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_347; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_348; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_349; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_350; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_351; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_352; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_353; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_354; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_355; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_356; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_357; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_358; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_359; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_360; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_361; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_362; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_363; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_364; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_365; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_366; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_367; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_368; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_369; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_370; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_371; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_372; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_373; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_374; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_375; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_376; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_377; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_378; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_379; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_380; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_381; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_382; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_383; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_384; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_385; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_386; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_387; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_388; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_389; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_390; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_391; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [9:0] _GEN_392; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [18:0] _GEN_793; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [28:0] _T_667; // @[PalColorCalculator.scala 92:45:@1082.8]
  wire [29:0] _T_669; // @[PalColorCalculator.scala 92:49:@1083.8]
  wire [9:0] _GEN_394; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_395; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_396; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_397; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_398; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_399; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_400; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_401; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_402; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_403; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_404; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_405; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_406; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_407; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_408; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_409; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_410; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_411; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_412; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_413; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_414; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_415; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_416; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_417; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_418; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_419; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_420; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_421; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_422; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_423; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_424; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_425; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_426; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_427; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_428; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_429; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_430; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_431; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_432; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_433; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_434; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_435; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_436; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_437; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_438; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_439; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_440; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_441; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_442; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_443; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_444; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_445; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_446; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_447; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_448; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_449; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_450; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_451; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_452; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_453; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_454; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_455; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_456; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_457; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_458; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_459; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_460; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_461; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_462; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_463; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_464; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_465; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_466; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_467; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_468; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_469; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_470; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_471; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_472; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_473; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_474; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_475; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_476; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_477; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_478; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_479; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_480; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_481; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_482; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_483; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_484; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_485; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_486; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_487; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_488; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_489; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_490; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_491; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_492; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_493; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_494; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_495; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_496; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_497; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_498; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_499; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_500; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_501; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_502; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_503; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_504; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_505; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_506; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_507; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_508; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_509; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_510; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_511; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_512; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_513; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_514; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_515; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_516; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_517; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_518; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_519; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [9:0] _GEN_520; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [19:0] _GEN_794; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [29:0] _T_672; // @[PalColorCalculator.scala 92:86:@1085.8]
  wire [30:0] _T_674; // @[PalColorCalculator.scala 92:90:@1086.8]
  wire [30:0] _GEN_795; // @[PalColorCalculator.scala 92:62:@1087.8]
  wire [31:0] _T_675; // @[PalColorCalculator.scala 92:62:@1087.8]
  wire [30:0] _T_676; // @[PalColorCalculator.scala 92:62:@1088.8]
  wire [30:0] _T_677; // @[PalColorCalculator.scala 92:62:@1089.8]
  wire [30:0] _GEN_796; // @[PalColorCalculator.scala 92:18:@1090.8]
  wire [31:0] _T_678; // @[PalColorCalculator.scala 92:18:@1090.8]
  wire [30:0] _T_679; // @[PalColorCalculator.scala 92:18:@1091.8]
  wire [30:0] _T_680; // @[PalColorCalculator.scala 92:18:@1092.8]
  wire [31:0] _T_692; // @[PalColorCalculator.scala 93:62:@1100.8]
  wire [30:0] _T_693; // @[PalColorCalculator.scala 93:62:@1101.8]
  wire [30:0] _T_694; // @[PalColorCalculator.scala 93:62:@1102.8]
  wire [31:0] _T_695; // @[PalColorCalculator.scala 93:18:@1103.8]
  wire [30:0] _T_696; // @[PalColorCalculator.scala 93:18:@1104.8]
  wire [30:0] _T_697; // @[PalColorCalculator.scala 93:18:@1105.8]
  wire [30:0] _T_698; // @[PalColorCalculator.scala 90:18:@1106.8]
  wire [30:0] _GEN_777; // @[PalColorCalculator.scala 89:26:@1079.6]
  wire  _GEN_778; // @[PalColorCalculator.scala 67:21:@1036.4]
  wire [6:0] _GEN_779; // @[PalColorCalculator.scala 67:21:@1036.4]
  wire [9:0] _GEN_780; // @[PalColorCalculator.scala 67:21:@1036.4]
  wire [9:0] _GEN_781; // @[PalColorCalculator.scala 67:21:@1036.4]
  wire [10:0] _GEN_782; // @[PalColorCalculator.scala 67:21:@1036.4]
  wire [30:0] _GEN_783; // @[PalColorCalculator.scala 67:21:@1036.4]
  wire [8:0] _GEN_801;
  assign _T_40 = 8'h0 * 8'hde; // @[PalColorCalculator.scala 40:27:@724.4]
  assign _GEN_785 = {{2'd0}, io_green}; // @[PalColorCalculator.scala 40:51:@725.4]
  assign _T_42 = _GEN_785 * 10'h2c3; // @[PalColorCalculator.scala 40:51:@725.4]
  assign _GEN_786 = {{2'd0}, _T_40}; // @[PalColorCalculator.scala 40:40:@726.4]
  assign _T_43 = _GEN_786 + _T_42; // @[PalColorCalculator.scala 40:40:@726.4]
  assign _T_44 = _T_43[17:0]; // @[PalColorCalculator.scala 40:40:@727.4]
  assign _T_46 = 8'h0 * 8'h47; // @[PalColorCalculator.scala 40:74:@728.4]
  assign _GEN_787 = {{3'd0}, _T_46}; // @[PalColorCalculator.scala 40:64:@729.4]
  assign _T_47 = _T_44 + _GEN_787; // @[PalColorCalculator.scala 40:64:@729.4]
  assign _T_48 = _T_47[17:0]; // @[PalColorCalculator.scala 40:64:@730.4]
  assign Y = _T_48 / 18'h400; // @[PalColorCalculator.scala 40:87:@731.4]
  assign _T_52 = $signed(9'sh0) * $signed(-9'sh93); // @[PalColorCalculator.scala 43:26:@734.4]
  assign _T_53 = $signed(io_green); // @[PalColorCalculator.scala 43:53:@735.4]
  assign _GEN_788 = {{2{_T_53[7]}},_T_53}; // @[PalColorCalculator.scala 43:60:@736.4]
  assign _T_55 = $signed(_GEN_788) * $signed(-10'sh121); // @[PalColorCalculator.scala 43:60:@736.4]
  assign _GEN_789 = {{1{_T_52[16]}},_T_52}; // @[PalColorCalculator.scala 43:42:@737.4]
  assign _T_56 = $signed(_GEN_789) + $signed(_T_55); // @[PalColorCalculator.scala 43:42:@737.4]
  assign _T_57 = _T_56[17:0]; // @[PalColorCalculator.scala 43:42:@738.4]
  assign _T_58 = $signed(_T_57); // @[PalColorCalculator.scala 43:42:@739.4]
  assign _T_61 = $signed(10'sh0) * $signed(10'sh1b4); // @[PalColorCalculator.scala 43:93:@741.4]
  assign _T_62 = $signed(_T_58) + $signed(_T_61); // @[PalColorCalculator.scala 43:76:@742.4]
  assign _T_63 = _T_62[17:0]; // @[PalColorCalculator.scala 43:76:@743.4]
  assign _T_64 = $signed(_T_63); // @[PalColorCalculator.scala 43:76:@744.4]
  assign U = $signed(_T_64) / $signed(18'sh200); // @[PalColorCalculator.scala 43:110:@745.4]
  assign _T_68 = $signed(11'sh0) * $signed(11'sh267); // @[PalColorCalculator.scala 44:26:@747.4]
  assign _GEN_790 = {{3{_T_53[7]}},_T_53}; // @[PalColorCalculator.scala 44:60:@749.4]
  assign _T_71 = $signed(_GEN_790) * $signed(-11'sh203); // @[PalColorCalculator.scala 44:60:@749.4]
  assign _T_72 = $signed(_T_68) + $signed(_T_71); // @[PalColorCalculator.scala 44:42:@750.4]
  assign _T_73 = _T_72[18:0]; // @[PalColorCalculator.scala 44:42:@751.4]
  assign _T_74 = $signed(_T_73); // @[PalColorCalculator.scala 44:42:@752.4]
  assign _T_77 = $signed(8'sh0) * $signed(-8'sh64); // @[PalColorCalculator.scala 44:93:@754.4]
  assign _GEN_791 = {{3{_T_77[15]}},_T_77}; // @[PalColorCalculator.scala 44:76:@755.4]
  assign _T_78 = $signed(_T_74) + $signed(_GEN_791); // @[PalColorCalculator.scala 44:76:@755.4]
  assign _T_79 = _T_78[18:0]; // @[PalColorCalculator.scala 44:76:@756.4]
  assign _T_80 = $signed(_T_79); // @[PalColorCalculator.scala 44:76:@757.4]
  assign V = $signed(_T_80) / $signed(19'sh200); // @[PalColorCalculator.scala 44:110:@758.4]
  assign _GEN_792 = {{6'd0}, counter}; // @[PalColorCalculator.scala 56:76:@1020.4]
  assign _T_609 = 13'h11bc * _GEN_792; // @[PalColorCalculator.scala 56:76:@1020.4]
  assign _T_611 = _T_609 / 20'h100; // @[PalColorCalculator.scala 56:86:@1021.4]
  assign _GEN_4 = _T_611 % 20'h80; // @[PalColorCalculator.scala 56:129:@1022.4]
  assign tableIndex = _GEN_4[7:0]; // @[PalColorCalculator.scala 56:129:@1022.4]
  assign _T_617 = io_y == 10'h1; // @[PalColorCalculator.scala 61:14:@1025.4]
  assign _T_618 = _T_617 & io_inScanLine; // @[PalColorCalculator.scala 61:27:@1026.4]
  assign _T_622 = counter + 7'h1; // @[PalColorCalculator.scala 65:24:@1032.6]
  assign _T_623 = _T_622[6:0]; // @[PalColorCalculator.scala 65:24:@1033.6]
  assign _GEN_0 = _T_618 ? 1'h0 : phaseFlip; // @[PalColorCalculator.scala 61:45:@1027.4]
  assign _GEN_1 = _T_618 ? 7'h0 : _T_623; // @[PalColorCalculator.scala 61:45:@1027.4]
  assign _T_625 = preburstCounter == 10'h0; // @[PalColorCalculator.scala 68:27:@1037.6]
  assign _T_627 = phaseFlip == 1'h0; // @[PalColorCalculator.scala 69:20:@1039.8]
  assign _GEN_2 = _T_625 ? _T_627 : _GEN_0; // @[PalColorCalculator.scala 68:41:@1038.6]
  assign _GEN_3 = _T_625 ? 7'h0 : _GEN_1; // @[PalColorCalculator.scala 68:41:@1038.6]
  assign _T_630 = preburstCounter < 10'h1c; // @[PalColorCalculator.scala 72:27:@1043.6]
  assign _T_632 = preburstCounter + 10'h1; // @[PalColorCalculator.scala 73:42:@1045.8]
  assign _T_633 = _T_632[9:0]; // @[PalColorCalculator.scala 73:42:@1046.8]
  assign _T_636 = burstCounter < 10'h48; // @[PalColorCalculator.scala 76:26:@1051.8]
  assign _T_638 = tableIndex + 8'h0; // @[PalColorCalculator.scala 78:88:@1053.10]
  assign _T_639 = _T_638[7:0]; // @[PalColorCalculator.scala 78:88:@1054.10]
  assign _GEN_132 = _T_639 % 8'h80; // @[PalColorCalculator.scala 78:118:@1055.10]
  assign _T_641 = _GEN_132[7:0]; // @[PalColorCalculator.scala 78:118:@1055.10]
  assign _T_643 = _T_641[6:0]; // @[:@1056.10]
  assign _T_645 = tableIndex - 8'h0; // @[PalColorCalculator.scala 79:89:@1057.10]
  assign _T_646 = $unsigned(_T_645); // @[PalColorCalculator.scala 79:89:@1058.10]
  assign _T_647 = _T_646[7:0]; // @[PalColorCalculator.scala 79:89:@1059.10]
  assign _GEN_265 = _T_647 % 8'h80; // @[PalColorCalculator.scala 79:119:@1060.10]
  assign _T_649 = _GEN_265[7:0]; // @[PalColorCalculator.scala 79:119:@1060.10]
  assign _T_651 = _T_649[6:0]; // @[:@1061.10]
  assign _GEN_5 = 7'h1 == _T_651 ? $signed(10'shc) : $signed(10'sh0); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_6 = 7'h2 == _T_651 ? $signed(10'sh19) : $signed(_GEN_5); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_7 = 7'h3 == _T_651 ? $signed(10'sh25) : $signed(_GEN_6); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_8 = 7'h4 == _T_651 ? $signed(10'sh31) : $signed(_GEN_7); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_9 = 7'h5 == _T_651 ? $signed(10'sh3e) : $signed(_GEN_8); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_10 = 7'h6 == _T_651 ? $signed(10'sh4a) : $signed(_GEN_9); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_11 = 7'h7 == _T_651 ? $signed(10'sh56) : $signed(_GEN_10); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_12 = 7'h8 == _T_651 ? $signed(10'sh61) : $signed(_GEN_11); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_13 = 7'h9 == _T_651 ? $signed(10'sh6d) : $signed(_GEN_12); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_14 = 7'ha == _T_651 ? $signed(10'sh78) : $signed(_GEN_13); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_15 = 7'hb == _T_651 ? $signed(10'sh83) : $signed(_GEN_14); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_16 = 7'hc == _T_651 ? $signed(10'sh8e) : $signed(_GEN_15); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_17 = 7'hd == _T_651 ? $signed(10'sh98) : $signed(_GEN_16); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_18 = 7'he == _T_651 ? $signed(10'sha2) : $signed(_GEN_17); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_19 = 7'hf == _T_651 ? $signed(10'shab) : $signed(_GEN_18); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_20 = 7'h10 == _T_651 ? $signed(10'shb5) : $signed(_GEN_19); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_21 = 7'h11 == _T_651 ? $signed(10'shbd) : $signed(_GEN_20); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_22 = 7'h12 == _T_651 ? $signed(10'shc5) : $signed(_GEN_21); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_23 = 7'h13 == _T_651 ? $signed(10'shcd) : $signed(_GEN_22); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_24 = 7'h14 == _T_651 ? $signed(10'shd4) : $signed(_GEN_23); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_25 = 7'h15 == _T_651 ? $signed(10'shdb) : $signed(_GEN_24); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_26 = 7'h16 == _T_651 ? $signed(10'she1) : $signed(_GEN_25); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_27 = 7'h17 == _T_651 ? $signed(10'she7) : $signed(_GEN_26); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_28 = 7'h18 == _T_651 ? $signed(10'shec) : $signed(_GEN_27); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_29 = 7'h19 == _T_651 ? $signed(10'shf1) : $signed(_GEN_28); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_30 = 7'h1a == _T_651 ? $signed(10'shf4) : $signed(_GEN_29); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_31 = 7'h1b == _T_651 ? $signed(10'shf8) : $signed(_GEN_30); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_32 = 7'h1c == _T_651 ? $signed(10'shfb) : $signed(_GEN_31); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_33 = 7'h1d == _T_651 ? $signed(10'shfd) : $signed(_GEN_32); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_34 = 7'h1e == _T_651 ? $signed(10'shfe) : $signed(_GEN_33); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_35 = 7'h1f == _T_651 ? $signed(10'shff) : $signed(_GEN_34); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_36 = 7'h20 == _T_651 ? $signed(10'sh100) : $signed(_GEN_35); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_37 = 7'h21 == _T_651 ? $signed(10'shff) : $signed(_GEN_36); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_38 = 7'h22 == _T_651 ? $signed(10'shfe) : $signed(_GEN_37); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_39 = 7'h23 == _T_651 ? $signed(10'shfd) : $signed(_GEN_38); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_40 = 7'h24 == _T_651 ? $signed(10'shfb) : $signed(_GEN_39); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_41 = 7'h25 == _T_651 ? $signed(10'shf8) : $signed(_GEN_40); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_42 = 7'h26 == _T_651 ? $signed(10'shf4) : $signed(_GEN_41); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_43 = 7'h27 == _T_651 ? $signed(10'shf1) : $signed(_GEN_42); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_44 = 7'h28 == _T_651 ? $signed(10'shec) : $signed(_GEN_43); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_45 = 7'h29 == _T_651 ? $signed(10'she7) : $signed(_GEN_44); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_46 = 7'h2a == _T_651 ? $signed(10'she1) : $signed(_GEN_45); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_47 = 7'h2b == _T_651 ? $signed(10'shdb) : $signed(_GEN_46); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_48 = 7'h2c == _T_651 ? $signed(10'shd4) : $signed(_GEN_47); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_49 = 7'h2d == _T_651 ? $signed(10'shcd) : $signed(_GEN_48); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_50 = 7'h2e == _T_651 ? $signed(10'shc5) : $signed(_GEN_49); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_51 = 7'h2f == _T_651 ? $signed(10'shbd) : $signed(_GEN_50); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_52 = 7'h30 == _T_651 ? $signed(10'shb5) : $signed(_GEN_51); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_53 = 7'h31 == _T_651 ? $signed(10'shab) : $signed(_GEN_52); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_54 = 7'h32 == _T_651 ? $signed(10'sha2) : $signed(_GEN_53); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_55 = 7'h33 == _T_651 ? $signed(10'sh98) : $signed(_GEN_54); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_56 = 7'h34 == _T_651 ? $signed(10'sh8e) : $signed(_GEN_55); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_57 = 7'h35 == _T_651 ? $signed(10'sh83) : $signed(_GEN_56); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_58 = 7'h36 == _T_651 ? $signed(10'sh78) : $signed(_GEN_57); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_59 = 7'h37 == _T_651 ? $signed(10'sh6d) : $signed(_GEN_58); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_60 = 7'h38 == _T_651 ? $signed(10'sh61) : $signed(_GEN_59); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_61 = 7'h39 == _T_651 ? $signed(10'sh56) : $signed(_GEN_60); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_62 = 7'h3a == _T_651 ? $signed(10'sh4a) : $signed(_GEN_61); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_63 = 7'h3b == _T_651 ? $signed(10'sh3e) : $signed(_GEN_62); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_64 = 7'h3c == _T_651 ? $signed(10'sh31) : $signed(_GEN_63); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_65 = 7'h3d == _T_651 ? $signed(10'sh25) : $signed(_GEN_64); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_66 = 7'h3e == _T_651 ? $signed(10'sh19) : $signed(_GEN_65); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_67 = 7'h3f == _T_651 ? $signed(10'shc) : $signed(_GEN_66); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_68 = 7'h40 == _T_651 ? $signed(10'sh0) : $signed(_GEN_67); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_69 = 7'h41 == _T_651 ? $signed(-10'shc) : $signed(_GEN_68); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_70 = 7'h42 == _T_651 ? $signed(-10'sh19) : $signed(_GEN_69); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_71 = 7'h43 == _T_651 ? $signed(-10'sh25) : $signed(_GEN_70); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_72 = 7'h44 == _T_651 ? $signed(-10'sh31) : $signed(_GEN_71); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_73 = 7'h45 == _T_651 ? $signed(-10'sh3e) : $signed(_GEN_72); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_74 = 7'h46 == _T_651 ? $signed(-10'sh4a) : $signed(_GEN_73); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_75 = 7'h47 == _T_651 ? $signed(-10'sh56) : $signed(_GEN_74); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_76 = 7'h48 == _T_651 ? $signed(-10'sh61) : $signed(_GEN_75); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_77 = 7'h49 == _T_651 ? $signed(-10'sh6d) : $signed(_GEN_76); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_78 = 7'h4a == _T_651 ? $signed(-10'sh78) : $signed(_GEN_77); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_79 = 7'h4b == _T_651 ? $signed(-10'sh83) : $signed(_GEN_78); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_80 = 7'h4c == _T_651 ? $signed(-10'sh8e) : $signed(_GEN_79); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_81 = 7'h4d == _T_651 ? $signed(-10'sh98) : $signed(_GEN_80); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_82 = 7'h4e == _T_651 ? $signed(-10'sha2) : $signed(_GEN_81); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_83 = 7'h4f == _T_651 ? $signed(-10'shab) : $signed(_GEN_82); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_84 = 7'h50 == _T_651 ? $signed(-10'shb5) : $signed(_GEN_83); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_85 = 7'h51 == _T_651 ? $signed(-10'shbd) : $signed(_GEN_84); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_86 = 7'h52 == _T_651 ? $signed(-10'shc5) : $signed(_GEN_85); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_87 = 7'h53 == _T_651 ? $signed(-10'shcd) : $signed(_GEN_86); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_88 = 7'h54 == _T_651 ? $signed(-10'shd4) : $signed(_GEN_87); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_89 = 7'h55 == _T_651 ? $signed(-10'shdb) : $signed(_GEN_88); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_90 = 7'h56 == _T_651 ? $signed(-10'she1) : $signed(_GEN_89); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_91 = 7'h57 == _T_651 ? $signed(-10'she7) : $signed(_GEN_90); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_92 = 7'h58 == _T_651 ? $signed(-10'shec) : $signed(_GEN_91); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_93 = 7'h59 == _T_651 ? $signed(-10'shf1) : $signed(_GEN_92); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_94 = 7'h5a == _T_651 ? $signed(-10'shf4) : $signed(_GEN_93); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_95 = 7'h5b == _T_651 ? $signed(-10'shf8) : $signed(_GEN_94); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_96 = 7'h5c == _T_651 ? $signed(-10'shfb) : $signed(_GEN_95); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_97 = 7'h5d == _T_651 ? $signed(-10'shfd) : $signed(_GEN_96); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_98 = 7'h5e == _T_651 ? $signed(-10'shfe) : $signed(_GEN_97); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_99 = 7'h5f == _T_651 ? $signed(-10'shff) : $signed(_GEN_98); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_100 = 7'h60 == _T_651 ? $signed(-10'sh100) : $signed(_GEN_99); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_101 = 7'h61 == _T_651 ? $signed(-10'shff) : $signed(_GEN_100); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_102 = 7'h62 == _T_651 ? $signed(-10'shfe) : $signed(_GEN_101); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_103 = 7'h63 == _T_651 ? $signed(-10'shfd) : $signed(_GEN_102); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_104 = 7'h64 == _T_651 ? $signed(-10'shfb) : $signed(_GEN_103); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_105 = 7'h65 == _T_651 ? $signed(-10'shf8) : $signed(_GEN_104); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_106 = 7'h66 == _T_651 ? $signed(-10'shf4) : $signed(_GEN_105); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_107 = 7'h67 == _T_651 ? $signed(-10'shf1) : $signed(_GEN_106); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_108 = 7'h68 == _T_651 ? $signed(-10'shec) : $signed(_GEN_107); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_109 = 7'h69 == _T_651 ? $signed(-10'she7) : $signed(_GEN_108); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_110 = 7'h6a == _T_651 ? $signed(-10'she1) : $signed(_GEN_109); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_111 = 7'h6b == _T_651 ? $signed(-10'shdb) : $signed(_GEN_110); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_112 = 7'h6c == _T_651 ? $signed(-10'shd4) : $signed(_GEN_111); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_113 = 7'h6d == _T_651 ? $signed(-10'shcd) : $signed(_GEN_112); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_114 = 7'h6e == _T_651 ? $signed(-10'shc5) : $signed(_GEN_113); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_115 = 7'h6f == _T_651 ? $signed(-10'shbd) : $signed(_GEN_114); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_116 = 7'h70 == _T_651 ? $signed(-10'shb5) : $signed(_GEN_115); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_117 = 7'h71 == _T_651 ? $signed(-10'shab) : $signed(_GEN_116); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_118 = 7'h72 == _T_651 ? $signed(-10'sha2) : $signed(_GEN_117); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_119 = 7'h73 == _T_651 ? $signed(-10'sh98) : $signed(_GEN_118); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_120 = 7'h74 == _T_651 ? $signed(-10'sh8e) : $signed(_GEN_119); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_121 = 7'h75 == _T_651 ? $signed(-10'sh83) : $signed(_GEN_120); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_122 = 7'h76 == _T_651 ? $signed(-10'sh78) : $signed(_GEN_121); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_123 = 7'h77 == _T_651 ? $signed(-10'sh6d) : $signed(_GEN_122); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_124 = 7'h78 == _T_651 ? $signed(-10'sh61) : $signed(_GEN_123); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_125 = 7'h79 == _T_651 ? $signed(-10'sh56) : $signed(_GEN_124); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_126 = 7'h7a == _T_651 ? $signed(-10'sh4a) : $signed(_GEN_125); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_127 = 7'h7b == _T_651 ? $signed(-10'sh3e) : $signed(_GEN_126); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_128 = 7'h7c == _T_651 ? $signed(-10'sh31) : $signed(_GEN_127); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_129 = 7'h7d == _T_651 ? $signed(-10'sh25) : $signed(_GEN_128); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_130 = 7'h7e == _T_651 ? $signed(-10'sh19) : $signed(_GEN_129); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _GEN_131 = 7'h7f == _T_651 ? $signed(-10'shc) : $signed(_GEN_130); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _T_653 = $signed(10'sh0) - $signed(_GEN_131); // @[PalColorCalculator.scala 79:66:@1062.10]
  assign _T_654 = _T_653[9:0]; // @[PalColorCalculator.scala 79:66:@1063.10]
  assign _T_655 = $signed(_T_654); // @[PalColorCalculator.scala 79:66:@1064.10]
  assign _GEN_133 = 7'h1 == _T_643 ? $signed(10'shc) : $signed(10'sh0); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_134 = 7'h2 == _T_643 ? $signed(10'sh19) : $signed(_GEN_133); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_135 = 7'h3 == _T_643 ? $signed(10'sh25) : $signed(_GEN_134); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_136 = 7'h4 == _T_643 ? $signed(10'sh31) : $signed(_GEN_135); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_137 = 7'h5 == _T_643 ? $signed(10'sh3e) : $signed(_GEN_136); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_138 = 7'h6 == _T_643 ? $signed(10'sh4a) : $signed(_GEN_137); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_139 = 7'h7 == _T_643 ? $signed(10'sh56) : $signed(_GEN_138); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_140 = 7'h8 == _T_643 ? $signed(10'sh61) : $signed(_GEN_139); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_141 = 7'h9 == _T_643 ? $signed(10'sh6d) : $signed(_GEN_140); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_142 = 7'ha == _T_643 ? $signed(10'sh78) : $signed(_GEN_141); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_143 = 7'hb == _T_643 ? $signed(10'sh83) : $signed(_GEN_142); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_144 = 7'hc == _T_643 ? $signed(10'sh8e) : $signed(_GEN_143); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_145 = 7'hd == _T_643 ? $signed(10'sh98) : $signed(_GEN_144); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_146 = 7'he == _T_643 ? $signed(10'sha2) : $signed(_GEN_145); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_147 = 7'hf == _T_643 ? $signed(10'shab) : $signed(_GEN_146); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_148 = 7'h10 == _T_643 ? $signed(10'shb5) : $signed(_GEN_147); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_149 = 7'h11 == _T_643 ? $signed(10'shbd) : $signed(_GEN_148); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_150 = 7'h12 == _T_643 ? $signed(10'shc5) : $signed(_GEN_149); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_151 = 7'h13 == _T_643 ? $signed(10'shcd) : $signed(_GEN_150); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_152 = 7'h14 == _T_643 ? $signed(10'shd4) : $signed(_GEN_151); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_153 = 7'h15 == _T_643 ? $signed(10'shdb) : $signed(_GEN_152); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_154 = 7'h16 == _T_643 ? $signed(10'she1) : $signed(_GEN_153); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_155 = 7'h17 == _T_643 ? $signed(10'she7) : $signed(_GEN_154); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_156 = 7'h18 == _T_643 ? $signed(10'shec) : $signed(_GEN_155); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_157 = 7'h19 == _T_643 ? $signed(10'shf1) : $signed(_GEN_156); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_158 = 7'h1a == _T_643 ? $signed(10'shf4) : $signed(_GEN_157); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_159 = 7'h1b == _T_643 ? $signed(10'shf8) : $signed(_GEN_158); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_160 = 7'h1c == _T_643 ? $signed(10'shfb) : $signed(_GEN_159); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_161 = 7'h1d == _T_643 ? $signed(10'shfd) : $signed(_GEN_160); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_162 = 7'h1e == _T_643 ? $signed(10'shfe) : $signed(_GEN_161); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_163 = 7'h1f == _T_643 ? $signed(10'shff) : $signed(_GEN_162); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_164 = 7'h20 == _T_643 ? $signed(10'sh100) : $signed(_GEN_163); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_165 = 7'h21 == _T_643 ? $signed(10'shff) : $signed(_GEN_164); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_166 = 7'h22 == _T_643 ? $signed(10'shfe) : $signed(_GEN_165); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_167 = 7'h23 == _T_643 ? $signed(10'shfd) : $signed(_GEN_166); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_168 = 7'h24 == _T_643 ? $signed(10'shfb) : $signed(_GEN_167); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_169 = 7'h25 == _T_643 ? $signed(10'shf8) : $signed(_GEN_168); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_170 = 7'h26 == _T_643 ? $signed(10'shf4) : $signed(_GEN_169); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_171 = 7'h27 == _T_643 ? $signed(10'shf1) : $signed(_GEN_170); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_172 = 7'h28 == _T_643 ? $signed(10'shec) : $signed(_GEN_171); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_173 = 7'h29 == _T_643 ? $signed(10'she7) : $signed(_GEN_172); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_174 = 7'h2a == _T_643 ? $signed(10'she1) : $signed(_GEN_173); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_175 = 7'h2b == _T_643 ? $signed(10'shdb) : $signed(_GEN_174); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_176 = 7'h2c == _T_643 ? $signed(10'shd4) : $signed(_GEN_175); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_177 = 7'h2d == _T_643 ? $signed(10'shcd) : $signed(_GEN_176); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_178 = 7'h2e == _T_643 ? $signed(10'shc5) : $signed(_GEN_177); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_179 = 7'h2f == _T_643 ? $signed(10'shbd) : $signed(_GEN_178); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_180 = 7'h30 == _T_643 ? $signed(10'shb5) : $signed(_GEN_179); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_181 = 7'h31 == _T_643 ? $signed(10'shab) : $signed(_GEN_180); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_182 = 7'h32 == _T_643 ? $signed(10'sha2) : $signed(_GEN_181); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_183 = 7'h33 == _T_643 ? $signed(10'sh98) : $signed(_GEN_182); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_184 = 7'h34 == _T_643 ? $signed(10'sh8e) : $signed(_GEN_183); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_185 = 7'h35 == _T_643 ? $signed(10'sh83) : $signed(_GEN_184); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_186 = 7'h36 == _T_643 ? $signed(10'sh78) : $signed(_GEN_185); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_187 = 7'h37 == _T_643 ? $signed(10'sh6d) : $signed(_GEN_186); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_188 = 7'h38 == _T_643 ? $signed(10'sh61) : $signed(_GEN_187); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_189 = 7'h39 == _T_643 ? $signed(10'sh56) : $signed(_GEN_188); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_190 = 7'h3a == _T_643 ? $signed(10'sh4a) : $signed(_GEN_189); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_191 = 7'h3b == _T_643 ? $signed(10'sh3e) : $signed(_GEN_190); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_192 = 7'h3c == _T_643 ? $signed(10'sh31) : $signed(_GEN_191); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_193 = 7'h3d == _T_643 ? $signed(10'sh25) : $signed(_GEN_192); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_194 = 7'h3e == _T_643 ? $signed(10'sh19) : $signed(_GEN_193); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_195 = 7'h3f == _T_643 ? $signed(10'shc) : $signed(_GEN_194); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_196 = 7'h40 == _T_643 ? $signed(10'sh0) : $signed(_GEN_195); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_197 = 7'h41 == _T_643 ? $signed(-10'shc) : $signed(_GEN_196); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_198 = 7'h42 == _T_643 ? $signed(-10'sh19) : $signed(_GEN_197); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_199 = 7'h43 == _T_643 ? $signed(-10'sh25) : $signed(_GEN_198); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_200 = 7'h44 == _T_643 ? $signed(-10'sh31) : $signed(_GEN_199); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_201 = 7'h45 == _T_643 ? $signed(-10'sh3e) : $signed(_GEN_200); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_202 = 7'h46 == _T_643 ? $signed(-10'sh4a) : $signed(_GEN_201); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_203 = 7'h47 == _T_643 ? $signed(-10'sh56) : $signed(_GEN_202); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_204 = 7'h48 == _T_643 ? $signed(-10'sh61) : $signed(_GEN_203); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_205 = 7'h49 == _T_643 ? $signed(-10'sh6d) : $signed(_GEN_204); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_206 = 7'h4a == _T_643 ? $signed(-10'sh78) : $signed(_GEN_205); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_207 = 7'h4b == _T_643 ? $signed(-10'sh83) : $signed(_GEN_206); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_208 = 7'h4c == _T_643 ? $signed(-10'sh8e) : $signed(_GEN_207); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_209 = 7'h4d == _T_643 ? $signed(-10'sh98) : $signed(_GEN_208); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_210 = 7'h4e == _T_643 ? $signed(-10'sha2) : $signed(_GEN_209); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_211 = 7'h4f == _T_643 ? $signed(-10'shab) : $signed(_GEN_210); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_212 = 7'h50 == _T_643 ? $signed(-10'shb5) : $signed(_GEN_211); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_213 = 7'h51 == _T_643 ? $signed(-10'shbd) : $signed(_GEN_212); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_214 = 7'h52 == _T_643 ? $signed(-10'shc5) : $signed(_GEN_213); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_215 = 7'h53 == _T_643 ? $signed(-10'shcd) : $signed(_GEN_214); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_216 = 7'h54 == _T_643 ? $signed(-10'shd4) : $signed(_GEN_215); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_217 = 7'h55 == _T_643 ? $signed(-10'shdb) : $signed(_GEN_216); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_218 = 7'h56 == _T_643 ? $signed(-10'she1) : $signed(_GEN_217); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_219 = 7'h57 == _T_643 ? $signed(-10'she7) : $signed(_GEN_218); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_220 = 7'h58 == _T_643 ? $signed(-10'shec) : $signed(_GEN_219); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_221 = 7'h59 == _T_643 ? $signed(-10'shf1) : $signed(_GEN_220); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_222 = 7'h5a == _T_643 ? $signed(-10'shf4) : $signed(_GEN_221); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_223 = 7'h5b == _T_643 ? $signed(-10'shf8) : $signed(_GEN_222); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_224 = 7'h5c == _T_643 ? $signed(-10'shfb) : $signed(_GEN_223); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_225 = 7'h5d == _T_643 ? $signed(-10'shfd) : $signed(_GEN_224); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_226 = 7'h5e == _T_643 ? $signed(-10'shfe) : $signed(_GEN_225); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_227 = 7'h5f == _T_643 ? $signed(-10'shff) : $signed(_GEN_226); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_228 = 7'h60 == _T_643 ? $signed(-10'sh100) : $signed(_GEN_227); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_229 = 7'h61 == _T_643 ? $signed(-10'shff) : $signed(_GEN_228); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_230 = 7'h62 == _T_643 ? $signed(-10'shfe) : $signed(_GEN_229); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_231 = 7'h63 == _T_643 ? $signed(-10'shfd) : $signed(_GEN_230); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_232 = 7'h64 == _T_643 ? $signed(-10'shfb) : $signed(_GEN_231); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_233 = 7'h65 == _T_643 ? $signed(-10'shf8) : $signed(_GEN_232); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_234 = 7'h66 == _T_643 ? $signed(-10'shf4) : $signed(_GEN_233); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_235 = 7'h67 == _T_643 ? $signed(-10'shf1) : $signed(_GEN_234); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_236 = 7'h68 == _T_643 ? $signed(-10'shec) : $signed(_GEN_235); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_237 = 7'h69 == _T_643 ? $signed(-10'she7) : $signed(_GEN_236); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_238 = 7'h6a == _T_643 ? $signed(-10'she1) : $signed(_GEN_237); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_239 = 7'h6b == _T_643 ? $signed(-10'shdb) : $signed(_GEN_238); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_240 = 7'h6c == _T_643 ? $signed(-10'shd4) : $signed(_GEN_239); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_241 = 7'h6d == _T_643 ? $signed(-10'shcd) : $signed(_GEN_240); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_242 = 7'h6e == _T_643 ? $signed(-10'shc5) : $signed(_GEN_241); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_243 = 7'h6f == _T_643 ? $signed(-10'shbd) : $signed(_GEN_242); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_244 = 7'h70 == _T_643 ? $signed(-10'shb5) : $signed(_GEN_243); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_245 = 7'h71 == _T_643 ? $signed(-10'shab) : $signed(_GEN_244); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_246 = 7'h72 == _T_643 ? $signed(-10'sha2) : $signed(_GEN_245); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_247 = 7'h73 == _T_643 ? $signed(-10'sh98) : $signed(_GEN_246); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_248 = 7'h74 == _T_643 ? $signed(-10'sh8e) : $signed(_GEN_247); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_249 = 7'h75 == _T_643 ? $signed(-10'sh83) : $signed(_GEN_248); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_250 = 7'h76 == _T_643 ? $signed(-10'sh78) : $signed(_GEN_249); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_251 = 7'h77 == _T_643 ? $signed(-10'sh6d) : $signed(_GEN_250); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_252 = 7'h78 == _T_643 ? $signed(-10'sh61) : $signed(_GEN_251); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_253 = 7'h79 == _T_643 ? $signed(-10'sh56) : $signed(_GEN_252); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_254 = 7'h7a == _T_643 ? $signed(-10'sh4a) : $signed(_GEN_253); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_255 = 7'h7b == _T_643 ? $signed(-10'sh3e) : $signed(_GEN_254); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_256 = 7'h7c == _T_643 ? $signed(-10'sh31) : $signed(_GEN_255); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_257 = 7'h7d == _T_643 ? $signed(-10'sh25) : $signed(_GEN_256); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_258 = 7'h7e == _T_643 ? $signed(-10'sh19) : $signed(_GEN_257); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _GEN_259 = 7'h7f == _T_643 ? $signed(-10'shc) : $signed(_GEN_258); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _T_656 = phaseFlip ? $signed(_GEN_259) : $signed(_T_655); // @[PalColorCalculator.scala 77:21:@1065.10]
  assign _T_658 = $signed(_T_656) / $signed(10'sh2); // @[PalColorCalculator.scala 80:11:@1066.10]
  assign _T_660 = burstCounter + 10'h1; // @[PalColorCalculator.scala 81:38:@1068.10]
  assign _T_661 = _T_660[9:0]; // @[PalColorCalculator.scala 81:38:@1069.10]
  assign _GEN_260 = _T_636 ? $signed(_T_658) : $signed(11'sh0); // @[PalColorCalculator.scala 76:97:@1052.8]
  assign _GEN_261 = _T_636 ? _T_661 : burstCounter; // @[PalColorCalculator.scala 76:97:@1052.8]
  assign _GEN_262 = _T_630 ? _T_633 : preburstCounter; // @[PalColorCalculator.scala 72:70:@1044.6]
  assign _GEN_263 = _T_630 ? 10'h0 : _GEN_261; // @[PalColorCalculator.scala 72:70:@1044.6]
  assign _GEN_264 = _T_630 ? $signed(11'sh0) : $signed(_GEN_260); // @[PalColorCalculator.scala 72:70:@1044.6]
  assign _T_664 = $signed(Y); // @[PalColorCalculator.scala 92:11:@1080.8]
  assign _T_666 = tableIndex[6:0]; // @[:@1081.8]
  assign _GEN_266 = 7'h1 == _T_666 ? $signed(10'shff) : $signed(10'sh100); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_267 = 7'h2 == _T_666 ? $signed(10'shfe) : $signed(_GEN_266); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_268 = 7'h3 == _T_666 ? $signed(10'shfd) : $signed(_GEN_267); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_269 = 7'h4 == _T_666 ? $signed(10'shfb) : $signed(_GEN_268); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_270 = 7'h5 == _T_666 ? $signed(10'shf8) : $signed(_GEN_269); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_271 = 7'h6 == _T_666 ? $signed(10'shf4) : $signed(_GEN_270); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_272 = 7'h7 == _T_666 ? $signed(10'shf1) : $signed(_GEN_271); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_273 = 7'h8 == _T_666 ? $signed(10'shec) : $signed(_GEN_272); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_274 = 7'h9 == _T_666 ? $signed(10'she7) : $signed(_GEN_273); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_275 = 7'ha == _T_666 ? $signed(10'she1) : $signed(_GEN_274); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_276 = 7'hb == _T_666 ? $signed(10'shdb) : $signed(_GEN_275); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_277 = 7'hc == _T_666 ? $signed(10'shd4) : $signed(_GEN_276); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_278 = 7'hd == _T_666 ? $signed(10'shcd) : $signed(_GEN_277); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_279 = 7'he == _T_666 ? $signed(10'shc5) : $signed(_GEN_278); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_280 = 7'hf == _T_666 ? $signed(10'shbd) : $signed(_GEN_279); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_281 = 7'h10 == _T_666 ? $signed(10'shb5) : $signed(_GEN_280); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_282 = 7'h11 == _T_666 ? $signed(10'shab) : $signed(_GEN_281); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_283 = 7'h12 == _T_666 ? $signed(10'sha2) : $signed(_GEN_282); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_284 = 7'h13 == _T_666 ? $signed(10'sh98) : $signed(_GEN_283); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_285 = 7'h14 == _T_666 ? $signed(10'sh8e) : $signed(_GEN_284); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_286 = 7'h15 == _T_666 ? $signed(10'sh83) : $signed(_GEN_285); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_287 = 7'h16 == _T_666 ? $signed(10'sh78) : $signed(_GEN_286); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_288 = 7'h17 == _T_666 ? $signed(10'sh6d) : $signed(_GEN_287); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_289 = 7'h18 == _T_666 ? $signed(10'sh61) : $signed(_GEN_288); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_290 = 7'h19 == _T_666 ? $signed(10'sh56) : $signed(_GEN_289); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_291 = 7'h1a == _T_666 ? $signed(10'sh4a) : $signed(_GEN_290); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_292 = 7'h1b == _T_666 ? $signed(10'sh3e) : $signed(_GEN_291); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_293 = 7'h1c == _T_666 ? $signed(10'sh31) : $signed(_GEN_292); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_294 = 7'h1d == _T_666 ? $signed(10'sh25) : $signed(_GEN_293); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_295 = 7'h1e == _T_666 ? $signed(10'sh19) : $signed(_GEN_294); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_296 = 7'h1f == _T_666 ? $signed(10'shc) : $signed(_GEN_295); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_297 = 7'h20 == _T_666 ? $signed(10'sh0) : $signed(_GEN_296); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_298 = 7'h21 == _T_666 ? $signed(-10'shc) : $signed(_GEN_297); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_299 = 7'h22 == _T_666 ? $signed(-10'sh19) : $signed(_GEN_298); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_300 = 7'h23 == _T_666 ? $signed(-10'sh25) : $signed(_GEN_299); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_301 = 7'h24 == _T_666 ? $signed(-10'sh31) : $signed(_GEN_300); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_302 = 7'h25 == _T_666 ? $signed(-10'sh3e) : $signed(_GEN_301); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_303 = 7'h26 == _T_666 ? $signed(-10'sh4a) : $signed(_GEN_302); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_304 = 7'h27 == _T_666 ? $signed(-10'sh56) : $signed(_GEN_303); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_305 = 7'h28 == _T_666 ? $signed(-10'sh61) : $signed(_GEN_304); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_306 = 7'h29 == _T_666 ? $signed(-10'sh6d) : $signed(_GEN_305); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_307 = 7'h2a == _T_666 ? $signed(-10'sh78) : $signed(_GEN_306); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_308 = 7'h2b == _T_666 ? $signed(-10'sh83) : $signed(_GEN_307); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_309 = 7'h2c == _T_666 ? $signed(-10'sh8e) : $signed(_GEN_308); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_310 = 7'h2d == _T_666 ? $signed(-10'sh98) : $signed(_GEN_309); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_311 = 7'h2e == _T_666 ? $signed(-10'sha2) : $signed(_GEN_310); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_312 = 7'h2f == _T_666 ? $signed(-10'shab) : $signed(_GEN_311); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_313 = 7'h30 == _T_666 ? $signed(-10'shb5) : $signed(_GEN_312); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_314 = 7'h31 == _T_666 ? $signed(-10'shbd) : $signed(_GEN_313); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_315 = 7'h32 == _T_666 ? $signed(-10'shc5) : $signed(_GEN_314); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_316 = 7'h33 == _T_666 ? $signed(-10'shcd) : $signed(_GEN_315); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_317 = 7'h34 == _T_666 ? $signed(-10'shd4) : $signed(_GEN_316); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_318 = 7'h35 == _T_666 ? $signed(-10'shdb) : $signed(_GEN_317); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_319 = 7'h36 == _T_666 ? $signed(-10'she1) : $signed(_GEN_318); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_320 = 7'h37 == _T_666 ? $signed(-10'she7) : $signed(_GEN_319); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_321 = 7'h38 == _T_666 ? $signed(-10'shec) : $signed(_GEN_320); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_322 = 7'h39 == _T_666 ? $signed(-10'shf1) : $signed(_GEN_321); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_323 = 7'h3a == _T_666 ? $signed(-10'shf4) : $signed(_GEN_322); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_324 = 7'h3b == _T_666 ? $signed(-10'shf8) : $signed(_GEN_323); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_325 = 7'h3c == _T_666 ? $signed(-10'shfb) : $signed(_GEN_324); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_326 = 7'h3d == _T_666 ? $signed(-10'shfd) : $signed(_GEN_325); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_327 = 7'h3e == _T_666 ? $signed(-10'shfe) : $signed(_GEN_326); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_328 = 7'h3f == _T_666 ? $signed(-10'shff) : $signed(_GEN_327); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_329 = 7'h40 == _T_666 ? $signed(-10'sh100) : $signed(_GEN_328); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_330 = 7'h41 == _T_666 ? $signed(-10'shff) : $signed(_GEN_329); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_331 = 7'h42 == _T_666 ? $signed(-10'shfe) : $signed(_GEN_330); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_332 = 7'h43 == _T_666 ? $signed(-10'shfd) : $signed(_GEN_331); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_333 = 7'h44 == _T_666 ? $signed(-10'shfb) : $signed(_GEN_332); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_334 = 7'h45 == _T_666 ? $signed(-10'shf8) : $signed(_GEN_333); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_335 = 7'h46 == _T_666 ? $signed(-10'shf4) : $signed(_GEN_334); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_336 = 7'h47 == _T_666 ? $signed(-10'shf1) : $signed(_GEN_335); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_337 = 7'h48 == _T_666 ? $signed(-10'shec) : $signed(_GEN_336); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_338 = 7'h49 == _T_666 ? $signed(-10'she7) : $signed(_GEN_337); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_339 = 7'h4a == _T_666 ? $signed(-10'she1) : $signed(_GEN_338); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_340 = 7'h4b == _T_666 ? $signed(-10'shdb) : $signed(_GEN_339); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_341 = 7'h4c == _T_666 ? $signed(-10'shd4) : $signed(_GEN_340); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_342 = 7'h4d == _T_666 ? $signed(-10'shcd) : $signed(_GEN_341); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_343 = 7'h4e == _T_666 ? $signed(-10'shc5) : $signed(_GEN_342); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_344 = 7'h4f == _T_666 ? $signed(-10'shbd) : $signed(_GEN_343); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_345 = 7'h50 == _T_666 ? $signed(-10'shb5) : $signed(_GEN_344); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_346 = 7'h51 == _T_666 ? $signed(-10'shab) : $signed(_GEN_345); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_347 = 7'h52 == _T_666 ? $signed(-10'sha2) : $signed(_GEN_346); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_348 = 7'h53 == _T_666 ? $signed(-10'sh98) : $signed(_GEN_347); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_349 = 7'h54 == _T_666 ? $signed(-10'sh8e) : $signed(_GEN_348); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_350 = 7'h55 == _T_666 ? $signed(-10'sh83) : $signed(_GEN_349); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_351 = 7'h56 == _T_666 ? $signed(-10'sh78) : $signed(_GEN_350); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_352 = 7'h57 == _T_666 ? $signed(-10'sh6d) : $signed(_GEN_351); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_353 = 7'h58 == _T_666 ? $signed(-10'sh61) : $signed(_GEN_352); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_354 = 7'h59 == _T_666 ? $signed(-10'sh56) : $signed(_GEN_353); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_355 = 7'h5a == _T_666 ? $signed(-10'sh4a) : $signed(_GEN_354); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_356 = 7'h5b == _T_666 ? $signed(-10'sh3e) : $signed(_GEN_355); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_357 = 7'h5c == _T_666 ? $signed(-10'sh31) : $signed(_GEN_356); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_358 = 7'h5d == _T_666 ? $signed(-10'sh25) : $signed(_GEN_357); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_359 = 7'h5e == _T_666 ? $signed(-10'sh19) : $signed(_GEN_358); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_360 = 7'h5f == _T_666 ? $signed(-10'shc) : $signed(_GEN_359); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_361 = 7'h60 == _T_666 ? $signed(10'sh0) : $signed(_GEN_360); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_362 = 7'h61 == _T_666 ? $signed(10'shc) : $signed(_GEN_361); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_363 = 7'h62 == _T_666 ? $signed(10'sh19) : $signed(_GEN_362); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_364 = 7'h63 == _T_666 ? $signed(10'sh25) : $signed(_GEN_363); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_365 = 7'h64 == _T_666 ? $signed(10'sh31) : $signed(_GEN_364); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_366 = 7'h65 == _T_666 ? $signed(10'sh3e) : $signed(_GEN_365); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_367 = 7'h66 == _T_666 ? $signed(10'sh4a) : $signed(_GEN_366); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_368 = 7'h67 == _T_666 ? $signed(10'sh56) : $signed(_GEN_367); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_369 = 7'h68 == _T_666 ? $signed(10'sh61) : $signed(_GEN_368); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_370 = 7'h69 == _T_666 ? $signed(10'sh6d) : $signed(_GEN_369); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_371 = 7'h6a == _T_666 ? $signed(10'sh78) : $signed(_GEN_370); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_372 = 7'h6b == _T_666 ? $signed(10'sh83) : $signed(_GEN_371); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_373 = 7'h6c == _T_666 ? $signed(10'sh8e) : $signed(_GEN_372); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_374 = 7'h6d == _T_666 ? $signed(10'sh98) : $signed(_GEN_373); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_375 = 7'h6e == _T_666 ? $signed(10'sha2) : $signed(_GEN_374); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_376 = 7'h6f == _T_666 ? $signed(10'shab) : $signed(_GEN_375); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_377 = 7'h70 == _T_666 ? $signed(10'shb5) : $signed(_GEN_376); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_378 = 7'h71 == _T_666 ? $signed(10'shbd) : $signed(_GEN_377); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_379 = 7'h72 == _T_666 ? $signed(10'shc5) : $signed(_GEN_378); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_380 = 7'h73 == _T_666 ? $signed(10'shcd) : $signed(_GEN_379); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_381 = 7'h74 == _T_666 ? $signed(10'shd4) : $signed(_GEN_380); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_382 = 7'h75 == _T_666 ? $signed(10'shdb) : $signed(_GEN_381); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_383 = 7'h76 == _T_666 ? $signed(10'she1) : $signed(_GEN_382); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_384 = 7'h77 == _T_666 ? $signed(10'she7) : $signed(_GEN_383); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_385 = 7'h78 == _T_666 ? $signed(10'shec) : $signed(_GEN_384); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_386 = 7'h79 == _T_666 ? $signed(10'shf1) : $signed(_GEN_385); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_387 = 7'h7a == _T_666 ? $signed(10'shf4) : $signed(_GEN_386); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_388 = 7'h7b == _T_666 ? $signed(10'shf8) : $signed(_GEN_387); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_389 = 7'h7c == _T_666 ? $signed(10'shfb) : $signed(_GEN_388); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_390 = 7'h7d == _T_666 ? $signed(10'shfd) : $signed(_GEN_389); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_391 = 7'h7e == _T_666 ? $signed(10'shfe) : $signed(_GEN_390); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_392 = 7'h7f == _T_666 ? $signed(10'shff) : $signed(_GEN_391); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _GEN_793 = {{9{_GEN_392[9]}},_GEN_392}; // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _T_667 = $signed(_GEN_793) * $signed(U); // @[PalColorCalculator.scala 92:45:@1082.8]
  assign _T_669 = $signed(_T_667) / $signed(29'sh80); // @[PalColorCalculator.scala 92:49:@1083.8]
  assign _GEN_394 = 7'h1 == _T_666 ? $signed(10'shc) : $signed(10'sh0); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_395 = 7'h2 == _T_666 ? $signed(10'sh19) : $signed(_GEN_394); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_396 = 7'h3 == _T_666 ? $signed(10'sh25) : $signed(_GEN_395); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_397 = 7'h4 == _T_666 ? $signed(10'sh31) : $signed(_GEN_396); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_398 = 7'h5 == _T_666 ? $signed(10'sh3e) : $signed(_GEN_397); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_399 = 7'h6 == _T_666 ? $signed(10'sh4a) : $signed(_GEN_398); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_400 = 7'h7 == _T_666 ? $signed(10'sh56) : $signed(_GEN_399); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_401 = 7'h8 == _T_666 ? $signed(10'sh61) : $signed(_GEN_400); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_402 = 7'h9 == _T_666 ? $signed(10'sh6d) : $signed(_GEN_401); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_403 = 7'ha == _T_666 ? $signed(10'sh78) : $signed(_GEN_402); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_404 = 7'hb == _T_666 ? $signed(10'sh83) : $signed(_GEN_403); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_405 = 7'hc == _T_666 ? $signed(10'sh8e) : $signed(_GEN_404); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_406 = 7'hd == _T_666 ? $signed(10'sh98) : $signed(_GEN_405); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_407 = 7'he == _T_666 ? $signed(10'sha2) : $signed(_GEN_406); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_408 = 7'hf == _T_666 ? $signed(10'shab) : $signed(_GEN_407); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_409 = 7'h10 == _T_666 ? $signed(10'shb5) : $signed(_GEN_408); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_410 = 7'h11 == _T_666 ? $signed(10'shbd) : $signed(_GEN_409); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_411 = 7'h12 == _T_666 ? $signed(10'shc5) : $signed(_GEN_410); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_412 = 7'h13 == _T_666 ? $signed(10'shcd) : $signed(_GEN_411); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_413 = 7'h14 == _T_666 ? $signed(10'shd4) : $signed(_GEN_412); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_414 = 7'h15 == _T_666 ? $signed(10'shdb) : $signed(_GEN_413); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_415 = 7'h16 == _T_666 ? $signed(10'she1) : $signed(_GEN_414); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_416 = 7'h17 == _T_666 ? $signed(10'she7) : $signed(_GEN_415); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_417 = 7'h18 == _T_666 ? $signed(10'shec) : $signed(_GEN_416); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_418 = 7'h19 == _T_666 ? $signed(10'shf1) : $signed(_GEN_417); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_419 = 7'h1a == _T_666 ? $signed(10'shf4) : $signed(_GEN_418); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_420 = 7'h1b == _T_666 ? $signed(10'shf8) : $signed(_GEN_419); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_421 = 7'h1c == _T_666 ? $signed(10'shfb) : $signed(_GEN_420); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_422 = 7'h1d == _T_666 ? $signed(10'shfd) : $signed(_GEN_421); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_423 = 7'h1e == _T_666 ? $signed(10'shfe) : $signed(_GEN_422); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_424 = 7'h1f == _T_666 ? $signed(10'shff) : $signed(_GEN_423); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_425 = 7'h20 == _T_666 ? $signed(10'sh100) : $signed(_GEN_424); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_426 = 7'h21 == _T_666 ? $signed(10'shff) : $signed(_GEN_425); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_427 = 7'h22 == _T_666 ? $signed(10'shfe) : $signed(_GEN_426); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_428 = 7'h23 == _T_666 ? $signed(10'shfd) : $signed(_GEN_427); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_429 = 7'h24 == _T_666 ? $signed(10'shfb) : $signed(_GEN_428); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_430 = 7'h25 == _T_666 ? $signed(10'shf8) : $signed(_GEN_429); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_431 = 7'h26 == _T_666 ? $signed(10'shf4) : $signed(_GEN_430); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_432 = 7'h27 == _T_666 ? $signed(10'shf1) : $signed(_GEN_431); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_433 = 7'h28 == _T_666 ? $signed(10'shec) : $signed(_GEN_432); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_434 = 7'h29 == _T_666 ? $signed(10'she7) : $signed(_GEN_433); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_435 = 7'h2a == _T_666 ? $signed(10'she1) : $signed(_GEN_434); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_436 = 7'h2b == _T_666 ? $signed(10'shdb) : $signed(_GEN_435); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_437 = 7'h2c == _T_666 ? $signed(10'shd4) : $signed(_GEN_436); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_438 = 7'h2d == _T_666 ? $signed(10'shcd) : $signed(_GEN_437); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_439 = 7'h2e == _T_666 ? $signed(10'shc5) : $signed(_GEN_438); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_440 = 7'h2f == _T_666 ? $signed(10'shbd) : $signed(_GEN_439); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_441 = 7'h30 == _T_666 ? $signed(10'shb5) : $signed(_GEN_440); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_442 = 7'h31 == _T_666 ? $signed(10'shab) : $signed(_GEN_441); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_443 = 7'h32 == _T_666 ? $signed(10'sha2) : $signed(_GEN_442); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_444 = 7'h33 == _T_666 ? $signed(10'sh98) : $signed(_GEN_443); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_445 = 7'h34 == _T_666 ? $signed(10'sh8e) : $signed(_GEN_444); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_446 = 7'h35 == _T_666 ? $signed(10'sh83) : $signed(_GEN_445); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_447 = 7'h36 == _T_666 ? $signed(10'sh78) : $signed(_GEN_446); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_448 = 7'h37 == _T_666 ? $signed(10'sh6d) : $signed(_GEN_447); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_449 = 7'h38 == _T_666 ? $signed(10'sh61) : $signed(_GEN_448); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_450 = 7'h39 == _T_666 ? $signed(10'sh56) : $signed(_GEN_449); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_451 = 7'h3a == _T_666 ? $signed(10'sh4a) : $signed(_GEN_450); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_452 = 7'h3b == _T_666 ? $signed(10'sh3e) : $signed(_GEN_451); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_453 = 7'h3c == _T_666 ? $signed(10'sh31) : $signed(_GEN_452); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_454 = 7'h3d == _T_666 ? $signed(10'sh25) : $signed(_GEN_453); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_455 = 7'h3e == _T_666 ? $signed(10'sh19) : $signed(_GEN_454); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_456 = 7'h3f == _T_666 ? $signed(10'shc) : $signed(_GEN_455); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_457 = 7'h40 == _T_666 ? $signed(10'sh0) : $signed(_GEN_456); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_458 = 7'h41 == _T_666 ? $signed(-10'shc) : $signed(_GEN_457); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_459 = 7'h42 == _T_666 ? $signed(-10'sh19) : $signed(_GEN_458); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_460 = 7'h43 == _T_666 ? $signed(-10'sh25) : $signed(_GEN_459); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_461 = 7'h44 == _T_666 ? $signed(-10'sh31) : $signed(_GEN_460); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_462 = 7'h45 == _T_666 ? $signed(-10'sh3e) : $signed(_GEN_461); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_463 = 7'h46 == _T_666 ? $signed(-10'sh4a) : $signed(_GEN_462); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_464 = 7'h47 == _T_666 ? $signed(-10'sh56) : $signed(_GEN_463); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_465 = 7'h48 == _T_666 ? $signed(-10'sh61) : $signed(_GEN_464); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_466 = 7'h49 == _T_666 ? $signed(-10'sh6d) : $signed(_GEN_465); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_467 = 7'h4a == _T_666 ? $signed(-10'sh78) : $signed(_GEN_466); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_468 = 7'h4b == _T_666 ? $signed(-10'sh83) : $signed(_GEN_467); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_469 = 7'h4c == _T_666 ? $signed(-10'sh8e) : $signed(_GEN_468); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_470 = 7'h4d == _T_666 ? $signed(-10'sh98) : $signed(_GEN_469); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_471 = 7'h4e == _T_666 ? $signed(-10'sha2) : $signed(_GEN_470); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_472 = 7'h4f == _T_666 ? $signed(-10'shab) : $signed(_GEN_471); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_473 = 7'h50 == _T_666 ? $signed(-10'shb5) : $signed(_GEN_472); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_474 = 7'h51 == _T_666 ? $signed(-10'shbd) : $signed(_GEN_473); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_475 = 7'h52 == _T_666 ? $signed(-10'shc5) : $signed(_GEN_474); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_476 = 7'h53 == _T_666 ? $signed(-10'shcd) : $signed(_GEN_475); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_477 = 7'h54 == _T_666 ? $signed(-10'shd4) : $signed(_GEN_476); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_478 = 7'h55 == _T_666 ? $signed(-10'shdb) : $signed(_GEN_477); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_479 = 7'h56 == _T_666 ? $signed(-10'she1) : $signed(_GEN_478); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_480 = 7'h57 == _T_666 ? $signed(-10'she7) : $signed(_GEN_479); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_481 = 7'h58 == _T_666 ? $signed(-10'shec) : $signed(_GEN_480); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_482 = 7'h59 == _T_666 ? $signed(-10'shf1) : $signed(_GEN_481); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_483 = 7'h5a == _T_666 ? $signed(-10'shf4) : $signed(_GEN_482); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_484 = 7'h5b == _T_666 ? $signed(-10'shf8) : $signed(_GEN_483); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_485 = 7'h5c == _T_666 ? $signed(-10'shfb) : $signed(_GEN_484); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_486 = 7'h5d == _T_666 ? $signed(-10'shfd) : $signed(_GEN_485); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_487 = 7'h5e == _T_666 ? $signed(-10'shfe) : $signed(_GEN_486); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_488 = 7'h5f == _T_666 ? $signed(-10'shff) : $signed(_GEN_487); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_489 = 7'h60 == _T_666 ? $signed(-10'sh100) : $signed(_GEN_488); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_490 = 7'h61 == _T_666 ? $signed(-10'shff) : $signed(_GEN_489); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_491 = 7'h62 == _T_666 ? $signed(-10'shfe) : $signed(_GEN_490); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_492 = 7'h63 == _T_666 ? $signed(-10'shfd) : $signed(_GEN_491); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_493 = 7'h64 == _T_666 ? $signed(-10'shfb) : $signed(_GEN_492); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_494 = 7'h65 == _T_666 ? $signed(-10'shf8) : $signed(_GEN_493); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_495 = 7'h66 == _T_666 ? $signed(-10'shf4) : $signed(_GEN_494); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_496 = 7'h67 == _T_666 ? $signed(-10'shf1) : $signed(_GEN_495); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_497 = 7'h68 == _T_666 ? $signed(-10'shec) : $signed(_GEN_496); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_498 = 7'h69 == _T_666 ? $signed(-10'she7) : $signed(_GEN_497); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_499 = 7'h6a == _T_666 ? $signed(-10'she1) : $signed(_GEN_498); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_500 = 7'h6b == _T_666 ? $signed(-10'shdb) : $signed(_GEN_499); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_501 = 7'h6c == _T_666 ? $signed(-10'shd4) : $signed(_GEN_500); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_502 = 7'h6d == _T_666 ? $signed(-10'shcd) : $signed(_GEN_501); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_503 = 7'h6e == _T_666 ? $signed(-10'shc5) : $signed(_GEN_502); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_504 = 7'h6f == _T_666 ? $signed(-10'shbd) : $signed(_GEN_503); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_505 = 7'h70 == _T_666 ? $signed(-10'shb5) : $signed(_GEN_504); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_506 = 7'h71 == _T_666 ? $signed(-10'shab) : $signed(_GEN_505); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_507 = 7'h72 == _T_666 ? $signed(-10'sha2) : $signed(_GEN_506); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_508 = 7'h73 == _T_666 ? $signed(-10'sh98) : $signed(_GEN_507); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_509 = 7'h74 == _T_666 ? $signed(-10'sh8e) : $signed(_GEN_508); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_510 = 7'h75 == _T_666 ? $signed(-10'sh83) : $signed(_GEN_509); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_511 = 7'h76 == _T_666 ? $signed(-10'sh78) : $signed(_GEN_510); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_512 = 7'h77 == _T_666 ? $signed(-10'sh6d) : $signed(_GEN_511); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_513 = 7'h78 == _T_666 ? $signed(-10'sh61) : $signed(_GEN_512); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_514 = 7'h79 == _T_666 ? $signed(-10'sh56) : $signed(_GEN_513); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_515 = 7'h7a == _T_666 ? $signed(-10'sh4a) : $signed(_GEN_514); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_516 = 7'h7b == _T_666 ? $signed(-10'sh3e) : $signed(_GEN_515); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_517 = 7'h7c == _T_666 ? $signed(-10'sh31) : $signed(_GEN_516); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_518 = 7'h7d == _T_666 ? $signed(-10'sh25) : $signed(_GEN_517); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_519 = 7'h7e == _T_666 ? $signed(-10'sh19) : $signed(_GEN_518); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_520 = 7'h7f == _T_666 ? $signed(-10'shc) : $signed(_GEN_519); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _GEN_794 = {{10{_GEN_520[9]}},_GEN_520}; // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _T_672 = $signed(_GEN_794) * $signed(V); // @[PalColorCalculator.scala 92:86:@1085.8]
  assign _T_674 = $signed(_T_672) / $signed(30'sh80); // @[PalColorCalculator.scala 92:90:@1086.8]
  assign _GEN_795 = {{1{_T_669[29]}},_T_669}; // @[PalColorCalculator.scala 92:62:@1087.8]
  assign _T_675 = $signed(_GEN_795) + $signed(_T_674); // @[PalColorCalculator.scala 92:62:@1087.8]
  assign _T_676 = _T_675[30:0]; // @[PalColorCalculator.scala 92:62:@1088.8]
  assign _T_677 = $signed(_T_676); // @[PalColorCalculator.scala 92:62:@1089.8]
  assign _GEN_796 = {{13{_T_664[17]}},_T_664}; // @[PalColorCalculator.scala 92:18:@1090.8]
  assign _T_678 = $signed(_GEN_796) + $signed(_T_677); // @[PalColorCalculator.scala 92:18:@1090.8]
  assign _T_679 = _T_678[30:0]; // @[PalColorCalculator.scala 92:18:@1091.8]
  assign _T_680 = $signed(_T_679); // @[PalColorCalculator.scala 92:18:@1092.8]
  assign _T_692 = $signed(_GEN_795) - $signed(_T_674); // @[PalColorCalculator.scala 93:62:@1100.8]
  assign _T_693 = _T_692[30:0]; // @[PalColorCalculator.scala 93:62:@1101.8]
  assign _T_694 = $signed(_T_693); // @[PalColorCalculator.scala 93:62:@1102.8]
  assign _T_695 = $signed(_GEN_796) + $signed(_T_694); // @[PalColorCalculator.scala 93:18:@1103.8]
  assign _T_696 = _T_695[30:0]; // @[PalColorCalculator.scala 93:18:@1104.8]
  assign _T_697 = $signed(_T_696); // @[PalColorCalculator.scala 93:18:@1105.8]
  assign _T_698 = phaseFlip ? $signed(_T_680) : $signed(_T_697); // @[PalColorCalculator.scala 90:18:@1106.8]
  assign _GEN_777 = io_inScanLine ? $signed(_T_698) : $signed({{22{regS[8]}},regS}); // @[PalColorCalculator.scala 89:26:@1079.6]
  assign _GEN_778 = io_inPorch ? _GEN_2 : _GEN_0; // @[PalColorCalculator.scala 67:21:@1036.4]
  assign _GEN_779 = io_inPorch ? _GEN_3 : _GEN_1; // @[PalColorCalculator.scala 67:21:@1036.4]
  assign _GEN_780 = io_inPorch ? _GEN_262 : 10'h0; // @[PalColorCalculator.scala 67:21:@1036.4]
  assign _GEN_781 = io_inPorch ? _GEN_263 : burstCounter; // @[PalColorCalculator.scala 67:21:@1036.4]
  assign _GEN_782 = io_inPorch ? $signed(_GEN_264) : $signed(11'sh0); // @[PalColorCalculator.scala 67:21:@1036.4]
  assign _GEN_783 = io_inPorch ? $signed({{22{regS[8]}},regS}) : $signed(_GEN_777); // @[PalColorCalculator.scala 67:21:@1036.4]
  assign io_S = regS;
  assign io_millivolts = regMv;
  assign _GEN_801 = _GEN_783[8:0];
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  regS = _RAND_0[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  regMv = _RAND_1[10:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  preburstCounter = _RAND_2[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  burstCounter = _RAND_3[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  counter = _RAND_4[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  phaseFlip = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      regS <= 9'sh0;
    end else begin
      regS <= $signed(_GEN_801);
    end
    if (reset) begin
      regMv <= 11'sh0;
    end else begin
      if (io_inPorch) begin
        if (_T_630) begin
          regMv <= 11'sh0;
        end else begin
          if (_T_636) begin
            regMv <= _T_658;
          end else begin
            regMv <= 11'sh0;
          end
        end
      end else begin
        regMv <= 11'sh0;
      end
    end
    if (reset) begin
      preburstCounter <= 10'h0;
    end else begin
      if (io_inPorch) begin
        if (_T_630) begin
          preburstCounter <= _T_633;
        end
      end else begin
        preburstCounter <= 10'h0;
      end
    end
    if (reset) begin
      burstCounter <= 10'h0;
    end else begin
      if (io_inPorch) begin
        if (_T_630) begin
          burstCounter <= 10'h0;
        end else begin
          if (_T_636) begin
            burstCounter <= _T_661;
          end
        end
      end
    end
    if (reset) begin
      counter <= 7'h0;
    end else begin
      if (io_inPorch) begin
        if (_T_625) begin
          counter <= 7'h0;
        end else begin
          if (_T_618) begin
            counter <= 7'h0;
          end else begin
            counter <= _T_623;
          end
        end
      end else begin
        if (_T_618) begin
          counter <= 7'h0;
        end else begin
          counter <= _T_623;
        end
      end
    end
    if (reset) begin
      phaseFlip <= 1'h0;
    end else begin
      if (io_inPorch) begin
        if (_T_625) begin
          phaseFlip <= _T_627;
        end else begin
          if (_T_618) begin
            phaseFlip <= 1'h0;
          end
        end
      end else begin
        if (_T_618) begin
          phaseFlip <= 1'h0;
        end
      end
    end
  end
endmodule
module PalGenerator( // @[:@1112.2]
  input         clock, // @[:@1113.4]
  input         reset, // @[:@1114.4]
  input  [7:0]  io_green, // @[:@1115.4]
  output [9:0]  io_x, // @[:@1115.4]
  output [9:0]  io_y, // @[:@1115.4]
  output [11:0] io_millivolts // @[:@1115.4]
);
  wire  bw_clock; // @[PalGenerator.scala 17:21:@1117.4]
  wire  bw_reset; // @[PalGenerator.scala 17:21:@1117.4]
  wire [8:0] bw_io_L; // @[PalGenerator.scala 17:21:@1117.4]
  wire [9:0] bw_io_x; // @[PalGenerator.scala 17:21:@1117.4]
  wire [9:0] bw_io_y; // @[PalGenerator.scala 17:21:@1117.4]
  wire  bw_io_inScanLine; // @[PalGenerator.scala 17:21:@1117.4]
  wire  bw_io_inPorch; // @[PalGenerator.scala 17:21:@1117.4]
  wire [15:0] bw_io_millivolts; // @[PalGenerator.scala 17:21:@1117.4]
  wire  color_clock; // @[PalGenerator.scala 18:21:@1120.4]
  wire  color_reset; // @[PalGenerator.scala 18:21:@1120.4]
  wire [7:0] color_io_green; // @[PalGenerator.scala 18:21:@1120.4]
  wire  color_io_inPorch; // @[PalGenerator.scala 18:21:@1120.4]
  wire  color_io_inScanLine; // @[PalGenerator.scala 18:21:@1120.4]
  wire [9:0] color_io_y; // @[PalGenerator.scala 18:21:@1120.4]
  wire [8:0] color_io_S; // @[PalGenerator.scala 18:21:@1120.4]
  wire [10:0] color_io_millivolts; // @[PalGenerator.scala 18:21:@1120.4]
  wire [15:0] _GEN_0; // @[PalGenerator.scala 33:38:@1133.4]
  wire [16:0] _T_17; // @[PalGenerator.scala 33:38:@1133.4]
  wire [15:0] _T_18; // @[PalGenerator.scala 33:38:@1134.4]
  wire [15:0] _T_19; // @[PalGenerator.scala 33:38:@1135.4]
  wire [15:0] _T_20; // @[PalGenerator.scala 33:61:@1136.4]
  BWGenerator bw ( // @[PalGenerator.scala 17:21:@1117.4]
    .clock(bw_clock),
    .reset(bw_reset),
    .io_L(bw_io_L),
    .io_x(bw_io_x),
    .io_y(bw_io_y),
    .io_inScanLine(bw_io_inScanLine),
    .io_inPorch(bw_io_inPorch),
    .io_millivolts(bw_io_millivolts)
  );
  PalColorCalculator color ( // @[PalGenerator.scala 18:21:@1120.4]
    .clock(color_clock),
    .reset(color_reset),
    .io_green(color_io_green),
    .io_inPorch(color_io_inPorch),
    .io_inScanLine(color_io_inScanLine),
    .io_y(color_io_y),
    .io_S(color_io_S),
    .io_millivolts(color_io_millivolts)
  );
  assign _GEN_0 = {{5{color_io_millivolts[10]}},color_io_millivolts}; // @[PalGenerator.scala 33:38:@1133.4]
  assign _T_17 = $signed(bw_io_millivolts) + $signed(_GEN_0); // @[PalGenerator.scala 33:38:@1133.4]
  assign _T_18 = _T_17[15:0]; // @[PalGenerator.scala 33:38:@1134.4]
  assign _T_19 = $signed(_T_18); // @[PalGenerator.scala 33:38:@1135.4]
  assign _T_20 = $unsigned(_T_19); // @[PalGenerator.scala 33:61:@1136.4]
  assign io_x = bw_io_x;
  assign io_y = bw_io_y;
  assign io_millivolts = _T_20[11:0];
  assign bw_clock = clock;
  assign bw_reset = reset;
  assign bw_io_L = color_io_S;
  assign color_clock = clock;
  assign color_reset = reset;
  assign color_io_green = io_green;
  assign color_io_inPorch = bw_io_inPorch;
  assign color_io_inScanLine = bw_io_inScanLine;
  assign color_io_y = bw_io_y;
endmodule
module CompositeSignalGenerator( // @[:@1139.2]
  input         clock, // @[:@1140.4]
  input         reset, // @[:@1141.4]
  input  [7:0]  io_signal, // @[:@1142.4]
  input         io_button1, // @[:@1142.4]
  input         io_button2, // @[:@1142.4]
  output [3:0]  io_leds, // @[:@1142.4]
  output [11:0] io_millivolts, // @[:@1142.4]
  output [5:0]  io_bits // @[:@1142.4]
);
  wire  imageGenerator_clock; // @[Codegen.scala 17:32:@1144.4]
  wire  imageGenerator_reset; // @[Codegen.scala 17:32:@1144.4]
  wire [7:0] imageGenerator_io_signal1; // @[Codegen.scala 17:32:@1144.4]
  wire [7:0] imageGenerator_io_signal2; // @[Codegen.scala 17:32:@1144.4]
  wire  imageGenerator_io_button1; // @[Codegen.scala 17:32:@1144.4]
  wire  imageGenerator_io_button2; // @[Codegen.scala 17:32:@1144.4]
  wire [3:0] imageGenerator_io_leds; // @[Codegen.scala 17:32:@1144.4]
  wire [7:0] imageGenerator_io_green; // @[Codegen.scala 17:32:@1144.4]
  wire [9:0] imageGenerator_io_x; // @[Codegen.scala 17:32:@1144.4]
  wire [9:0] imageGenerator_io_y; // @[Codegen.scala 17:32:@1144.4]
  wire  encoder_clock; // @[Codegen.scala 18:25:@1147.4]
  wire  encoder_reset; // @[Codegen.scala 18:25:@1147.4]
  wire [7:0] encoder_io_green; // @[Codegen.scala 18:25:@1147.4]
  wire [9:0] encoder_io_x; // @[Codegen.scala 18:25:@1147.4]
  wire [9:0] encoder_io_y; // @[Codegen.scala 18:25:@1147.4]
  wire [11:0] encoder_io_millivolts; // @[Codegen.scala 18:25:@1147.4]
  wire [7:0] _T_17; // @[Codegen.scala 23:48:@1153.4]
  wire [18:0] _T_19; // @[Codegen.scala 32:30:@1162.4]
  wire [18:0] _T_21; // @[Codegen.scala 32:42:@1163.4]
  TestColorImageGenerator imageGenerator ( // @[Codegen.scala 17:32:@1144.4]
    .clock(imageGenerator_clock),
    .reset(imageGenerator_reset),
    .io_signal1(imageGenerator_io_signal1),
    .io_signal2(imageGenerator_io_signal2),
    .io_button1(imageGenerator_io_button1),
    .io_button2(imageGenerator_io_button2),
    .io_leds(imageGenerator_io_leds),
    .io_green(imageGenerator_io_green),
    .io_x(imageGenerator_io_x),
    .io_y(imageGenerator_io_y)
  );
  PalGenerator encoder ( // @[Codegen.scala 18:25:@1147.4]
    .clock(encoder_clock),
    .reset(encoder_reset),
    .io_green(encoder_io_green),
    .io_x(encoder_io_x),
    .io_y(encoder_io_y),
    .io_millivolts(encoder_io_millivolts)
  );
  assign _T_17 = io_millivolts[9:2]; // @[Codegen.scala 23:48:@1153.4]
  assign _T_19 = io_millivolts * 12'h40; // @[Codegen.scala 32:30:@1162.4]
  assign _T_21 = _T_19 / 19'h2bc; // @[Codegen.scala 32:42:@1163.4]
  assign io_leds = imageGenerator_io_leds;
  assign io_millivolts = encoder_io_millivolts;
  assign io_bits = _T_21[5:0];
  assign imageGenerator_clock = clock;
  assign imageGenerator_reset = reset;
  assign imageGenerator_io_signal1 = io_signal;
  assign imageGenerator_io_signal2 = _T_17;
  assign imageGenerator_io_button1 = io_button1;
  assign imageGenerator_io_button2 = io_button2;
  assign imageGenerator_io_x = encoder_io_x;
  assign imageGenerator_io_y = encoder_io_y;
  assign encoder_clock = clock;
  assign encoder_reset = reset;
  assign encoder_io_green = imageGenerator_io_green;
endmodule
