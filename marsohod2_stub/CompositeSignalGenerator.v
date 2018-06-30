module TestColorImageGenerator( // @[:@3.2]
  output [7:0] io_red, // @[:@6.4]
  output [7:0] io_green, // @[:@6.4]
  input  [9:0] io_x, // @[:@6.4]
  input  [9:0] io_y // @[:@6.4]
);
  wire [9:0] _T_16; // @[TestColorImageGenerator.scala 15:25:@8.4]
  wire [9:0] _T_18; // @[TestColorImageGenerator.scala 15:44:@9.4]
  wire [10:0] _T_19; // @[TestColorImageGenerator.scala 15:37:@10.4]
  wire [9:0] _T_20; // @[TestColorImageGenerator.scala 15:37:@11.4]
  wire  _T_21; // @[TestColorImageGenerator.scala 15:56:@12.4]
  wire [7:0] _T_24; // @[TestColorImageGenerator.scala 15:18:@13.4]
  assign _T_16 = io_x / 10'h20; // @[TestColorImageGenerator.scala 15:25:@8.4]
  assign _T_18 = io_y / 10'h20; // @[TestColorImageGenerator.scala 15:44:@9.4]
  assign _T_19 = _T_16 + _T_18; // @[TestColorImageGenerator.scala 15:37:@10.4]
  assign _T_20 = _T_19[9:0]; // @[TestColorImageGenerator.scala 15:37:@11.4]
  assign _T_21 = _T_20[0]; // @[TestColorImageGenerator.scala 15:56:@12.4]
  assign _T_24 = _T_21 ? 8'hc8 : 8'h0; // @[TestColorImageGenerator.scala 15:18:@13.4]
  assign io_red = _T_24;
  assign io_green = _T_24;
endmodule
module OneShotPulseGenerator( // @[:@30.2]
  input   clock, // @[:@31.4]
  input   reset, // @[:@32.4]
  output  io_signal // @[:@33.4]
);
  reg [6:0] nextIndex; // @[OneShotPulseGenerator.scala 15:34:@35.4]
  reg [31:0] _RAND_0;
  reg [10:0] countdown; // @[OneShotPulseGenerator.scala 16:34:@36.4]
  reg [31:0] _RAND_1;
  reg  output$; // @[OneShotPulseGenerator.scala 18:34:@37.4]
  reg [31:0] _RAND_2;
  wire  moveNext; // @[OneShotPulseGenerator.scala 21:36:@108.4]
  wire  finished; // @[OneShotPulseGenerator.scala 22:36:@109.4]
  wire  _T_158; // @[OneShotPulseGenerator.scala 24:9:@110.4]
  wire [10:0] _GEN_1; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_2; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_3; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_4; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_5; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_6; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_7; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_8; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_9; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_10; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_11; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_12; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_13; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_14; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_15; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_16; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_17; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_18; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_19; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_20; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_21; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_22; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_23; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_24; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_25; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_26; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_27; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_28; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_29; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_30; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_31; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_32; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_33; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_34; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_35; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_36; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_37; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_38; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_39; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_40; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_41; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_42; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_43; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_44; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_45; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_46; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_47; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_48; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_49; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_50; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_51; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_52; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_53; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_54; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_55; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_56; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_57; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_58; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_59; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_60; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_61; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_62; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_63; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_64; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_65; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_66; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_67; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [10:0] _GEN_68; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  wire [7:0] _T_161; // @[OneShotPulseGenerator.scala 27:30:@114.8]
  wire [6:0] _T_162; // @[OneShotPulseGenerator.scala 27:30:@115.8]
  wire  _T_164; // @[OneShotPulseGenerator.scala 28:17:@117.8]
  wire [11:0] _T_166; // @[OneShotPulseGenerator.scala 30:30:@121.8]
  wire [11:0] _T_167; // @[OneShotPulseGenerator.scala 30:30:@122.8]
  wire [10:0] _T_168; // @[OneShotPulseGenerator.scala 30:30:@123.8]
  wire [10:0] _GEN_69; // @[OneShotPulseGenerator.scala 25:21:@112.6]
  wire [6:0] _GEN_70; // @[OneShotPulseGenerator.scala 25:21:@112.6]
  wire  _GEN_71; // @[OneShotPulseGenerator.scala 25:21:@112.6]
  wire [10:0] _GEN_72; // @[OneShotPulseGenerator.scala 24:20:@111.4]
  wire [6:0] _GEN_73; // @[OneShotPulseGenerator.scala 24:20:@111.4]
  wire  _GEN_74; // @[OneShotPulseGenerator.scala 24:20:@111.4]
  assign moveNext = countdown == 11'h0; // @[OneShotPulseGenerator.scala 21:36:@108.4]
  assign finished = nextIndex == 7'h45; // @[OneShotPulseGenerator.scala 22:36:@109.4]
  assign _T_158 = finished == 1'h0; // @[OneShotPulseGenerator.scala 24:9:@110.4]
  assign _GEN_1 = 7'h1 == nextIndex ? 11'h3bf : 11'h3f; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_2 = 7'h2 == nextIndex ? 11'h3f : _GEN_1; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_3 = 7'h3 == nextIndex ? 11'h3bf : _GEN_2; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_4 = 7'h4 == nextIndex ? 11'h3f : _GEN_3; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_5 = 7'h5 == nextIndex ? 11'h3bf : _GEN_4; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_6 = 7'h6 == nextIndex ? 11'h3f : _GEN_5; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_7 = 7'h7 == nextIndex ? 11'h3bf : _GEN_6; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_8 = 7'h8 == nextIndex ? 11'h3f : _GEN_7; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_9 = 7'h9 == nextIndex ? 11'h3bf : _GEN_8; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_10 = 7'ha == nextIndex ? 11'h3f : _GEN_9; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_11 = 7'hb == nextIndex ? 11'h3bf : _GEN_10; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_12 = 7'hc == nextIndex ? 11'h3bf : _GEN_11; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_13 = 7'hd == nextIndex ? 11'h3f : _GEN_12; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_14 = 7'he == nextIndex ? 11'h3bf : _GEN_13; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_15 = 7'hf == nextIndex ? 11'h3f : _GEN_14; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_16 = 7'h10 == nextIndex ? 11'h3bf : _GEN_15; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_17 = 7'h11 == nextIndex ? 11'h3f : _GEN_16; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_18 = 7'h12 == nextIndex ? 11'h3bf : _GEN_17; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_19 = 7'h13 == nextIndex ? 11'h3f : _GEN_18; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_20 = 7'h14 == nextIndex ? 11'h3bf : _GEN_19; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_21 = 7'h15 == nextIndex ? 11'h3f : _GEN_20; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_22 = 7'h16 == nextIndex ? 11'h3bf : _GEN_21; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_23 = 7'h17 == nextIndex ? 11'h3f : _GEN_22; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_24 = 7'h18 == nextIndex ? 11'h3f : _GEN_23; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_25 = 7'h19 == nextIndex ? 11'h3bf : _GEN_24; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_26 = 7'h1a == nextIndex ? 11'h3f : _GEN_25; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_27 = 7'h1b == nextIndex ? 11'h3bf : _GEN_26; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_28 = 7'h1c == nextIndex ? 11'h3f : _GEN_27; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_29 = 7'h1d == nextIndex ? 11'h3bf : _GEN_28; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_30 = 7'h1e == nextIndex ? 11'h3f : _GEN_29; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_31 = 7'h1f == nextIndex ? 11'h3bf : _GEN_30; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_32 = 7'h20 == nextIndex ? 11'h7f : _GEN_31; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_33 = 7'h21 == nextIndex ? 11'h77f : _GEN_32; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_34 = 7'h22 == nextIndex ? 11'h7f : _GEN_33; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_35 = 7'h23 == nextIndex ? 11'h77f : _GEN_34; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_36 = 7'h24 == nextIndex ? 11'h7f : _GEN_35; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_37 = 7'h25 == nextIndex ? 11'h77f : _GEN_36; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_38 = 7'h26 == nextIndex ? 11'h7f : _GEN_37; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_39 = 7'h27 == nextIndex ? 11'h77f : _GEN_38; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_40 = 7'h28 == nextIndex ? 11'h7f : _GEN_39; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_41 = 7'h29 == nextIndex ? 11'h77f : _GEN_40; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_42 = 7'h2a == nextIndex ? 11'h7f : _GEN_41; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_43 = 7'h2b == nextIndex ? 11'h77f : _GEN_42; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_44 = 7'h2c == nextIndex ? 11'h7f : _GEN_43; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_45 = 7'h2d == nextIndex ? 11'h77f : _GEN_44; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_46 = 7'h2e == nextIndex ? 11'h7f : _GEN_45; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_47 = 7'h2f == nextIndex ? 11'h77f : _GEN_46; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_48 = 7'h30 == nextIndex ? 11'h7f : _GEN_47; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_49 = 7'h31 == nextIndex ? 11'h77f : _GEN_48; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_50 = 7'h32 == nextIndex ? 11'h7f : _GEN_49; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_51 = 7'h33 == nextIndex ? 11'h77f : _GEN_50; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_52 = 7'h34 == nextIndex ? 11'h7f : _GEN_51; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_53 = 7'h35 == nextIndex ? 11'h77f : _GEN_52; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_54 = 7'h36 == nextIndex ? 11'h7f : _GEN_53; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_55 = 7'h37 == nextIndex ? 11'h77f : _GEN_54; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_56 = 7'h38 == nextIndex ? 11'h7f : _GEN_55; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_57 = 7'h39 == nextIndex ? 11'h77f : _GEN_56; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_58 = 7'h3a == nextIndex ? 11'h7f : _GEN_57; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_59 = 7'h3b == nextIndex ? 11'h77f : _GEN_58; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_60 = 7'h3c == nextIndex ? 11'h7f : _GEN_59; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_61 = 7'h3d == nextIndex ? 11'h77f : _GEN_60; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_62 = 7'h3e == nextIndex ? 11'h7f : _GEN_61; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_63 = 7'h3f == nextIndex ? 11'h77f : _GEN_62; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_64 = 7'h40 == nextIndex ? 11'h7f : _GEN_63; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_65 = 7'h41 == nextIndex ? 11'h77f : _GEN_64; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_66 = 7'h42 == nextIndex ? 11'h7f : _GEN_65; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_67 = 7'h43 == nextIndex ? 11'h77f : _GEN_66; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _GEN_68 = 7'h44 == nextIndex ? 11'h0 : _GEN_67; // @[OneShotPulseGenerator.scala 26:17:@113.8]
  assign _T_161 = nextIndex + 7'h1; // @[OneShotPulseGenerator.scala 27:30:@114.8]
  assign _T_162 = _T_161[6:0]; // @[OneShotPulseGenerator.scala 27:30:@115.8]
  assign _T_164 = output$ == 1'h0; // @[OneShotPulseGenerator.scala 28:17:@117.8]
  assign _T_166 = countdown - 11'h1; // @[OneShotPulseGenerator.scala 30:30:@121.8]
  assign _T_167 = $unsigned(_T_166); // @[OneShotPulseGenerator.scala 30:30:@122.8]
  assign _T_168 = _T_167[10:0]; // @[OneShotPulseGenerator.scala 30:30:@123.8]
  assign _GEN_69 = moveNext ? _GEN_68 : _T_168; // @[OneShotPulseGenerator.scala 25:21:@112.6]
  assign _GEN_70 = moveNext ? _T_162 : nextIndex; // @[OneShotPulseGenerator.scala 25:21:@112.6]
  assign _GEN_71 = moveNext ? _T_164 : output$; // @[OneShotPulseGenerator.scala 25:21:@112.6]
  assign _GEN_72 = _T_158 ? _GEN_69 : countdown; // @[OneShotPulseGenerator.scala 24:20:@111.4]
  assign _GEN_73 = _T_158 ? _GEN_70 : nextIndex; // @[OneShotPulseGenerator.scala 24:20:@111.4]
  assign _GEN_74 = _T_158 ? _GEN_71 : output$; // @[OneShotPulseGenerator.scala 24:20:@111.4]
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
  nextIndex = _RAND_0[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  countdown = _RAND_1[10:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  output$ = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      nextIndex <= 7'h1;
    end else begin
      if (_T_158) begin
        if (moveNext) begin
          nextIndex <= _T_162;
        end
      end
    end
    if (reset) begin
      countdown <= 11'h3f;
    end else begin
      if (_T_158) begin
        if (moveNext) begin
          if (7'h44 == nextIndex) begin
            countdown <= 11'h0;
          end else begin
            if (7'h43 == nextIndex) begin
              countdown <= 11'h77f;
            end else begin
              if (7'h42 == nextIndex) begin
                countdown <= 11'h7f;
              end else begin
                if (7'h41 == nextIndex) begin
                  countdown <= 11'h77f;
                end else begin
                  if (7'h40 == nextIndex) begin
                    countdown <= 11'h7f;
                  end else begin
                    if (7'h3f == nextIndex) begin
                      countdown <= 11'h77f;
                    end else begin
                      if (7'h3e == nextIndex) begin
                        countdown <= 11'h7f;
                      end else begin
                        if (7'h3d == nextIndex) begin
                          countdown <= 11'h77f;
                        end else begin
                          if (7'h3c == nextIndex) begin
                            countdown <= 11'h7f;
                          end else begin
                            if (7'h3b == nextIndex) begin
                              countdown <= 11'h77f;
                            end else begin
                              if (7'h3a == nextIndex) begin
                                countdown <= 11'h7f;
                              end else begin
                                if (7'h39 == nextIndex) begin
                                  countdown <= 11'h77f;
                                end else begin
                                  if (7'h38 == nextIndex) begin
                                    countdown <= 11'h7f;
                                  end else begin
                                    if (7'h37 == nextIndex) begin
                                      countdown <= 11'h77f;
                                    end else begin
                                      if (7'h36 == nextIndex) begin
                                        countdown <= 11'h7f;
                                      end else begin
                                        if (7'h35 == nextIndex) begin
                                          countdown <= 11'h77f;
                                        end else begin
                                          if (7'h34 == nextIndex) begin
                                            countdown <= 11'h7f;
                                          end else begin
                                            if (7'h33 == nextIndex) begin
                                              countdown <= 11'h77f;
                                            end else begin
                                              if (7'h32 == nextIndex) begin
                                                countdown <= 11'h7f;
                                              end else begin
                                                if (7'h31 == nextIndex) begin
                                                  countdown <= 11'h77f;
                                                end else begin
                                                  if (7'h30 == nextIndex) begin
                                                    countdown <= 11'h7f;
                                                  end else begin
                                                    if (7'h2f == nextIndex) begin
                                                      countdown <= 11'h77f;
                                                    end else begin
                                                      if (7'h2e == nextIndex) begin
                                                        countdown <= 11'h7f;
                                                      end else begin
                                                        if (7'h2d == nextIndex) begin
                                                          countdown <= 11'h77f;
                                                        end else begin
                                                          if (7'h2c == nextIndex) begin
                                                            countdown <= 11'h7f;
                                                          end else begin
                                                            if (7'h2b == nextIndex) begin
                                                              countdown <= 11'h77f;
                                                            end else begin
                                                              if (7'h2a == nextIndex) begin
                                                                countdown <= 11'h7f;
                                                              end else begin
                                                                if (7'h29 == nextIndex) begin
                                                                  countdown <= 11'h77f;
                                                                end else begin
                                                                  if (7'h28 == nextIndex) begin
                                                                    countdown <= 11'h7f;
                                                                  end else begin
                                                                    if (7'h27 == nextIndex) begin
                                                                      countdown <= 11'h77f;
                                                                    end else begin
                                                                      if (7'h26 == nextIndex) begin
                                                                        countdown <= 11'h7f;
                                                                      end else begin
                                                                        if (7'h25 == nextIndex) begin
                                                                          countdown <= 11'h77f;
                                                                        end else begin
                                                                          if (7'h24 == nextIndex) begin
                                                                            countdown <= 11'h7f;
                                                                          end else begin
                                                                            if (7'h23 == nextIndex) begin
                                                                              countdown <= 11'h77f;
                                                                            end else begin
                                                                              if (7'h22 == nextIndex) begin
                                                                                countdown <= 11'h7f;
                                                                              end else begin
                                                                                if (7'h21 == nextIndex) begin
                                                                                  countdown <= 11'h77f;
                                                                                end else begin
                                                                                  if (7'h20 == nextIndex) begin
                                                                                    countdown <= 11'h7f;
                                                                                  end else begin
                                                                                    if (7'h1f == nextIndex) begin
                                                                                      countdown <= 11'h3bf;
                                                                                    end else begin
                                                                                      if (7'h1e == nextIndex) begin
                                                                                        countdown <= 11'h3f;
                                                                                      end else begin
                                                                                        if (7'h1d == nextIndex) begin
                                                                                          countdown <= 11'h3bf;
                                                                                        end else begin
                                                                                          if (7'h1c == nextIndex) begin
                                                                                            countdown <= 11'h3f;
                                                                                          end else begin
                                                                                            if (7'h1b == nextIndex) begin
                                                                                              countdown <= 11'h3bf;
                                                                                            end else begin
                                                                                              if (7'h1a == nextIndex) begin
                                                                                                countdown <= 11'h3f;
                                                                                              end else begin
                                                                                                if (7'h19 == nextIndex) begin
                                                                                                  countdown <= 11'h3bf;
                                                                                                end else begin
                                                                                                  if (7'h18 == nextIndex) begin
                                                                                                    countdown <= 11'h3f;
                                                                                                  end else begin
                                                                                                    if (7'h17 == nextIndex) begin
                                                                                                      countdown <= 11'h3f;
                                                                                                    end else begin
                                                                                                      if (7'h16 == nextIndex) begin
                                                                                                        countdown <= 11'h3bf;
                                                                                                      end else begin
                                                                                                        if (7'h15 == nextIndex) begin
                                                                                                          countdown <= 11'h3f;
                                                                                                        end else begin
                                                                                                          if (7'h14 == nextIndex) begin
                                                                                                            countdown <= 11'h3bf;
                                                                                                          end else begin
                                                                                                            if (7'h13 == nextIndex) begin
                                                                                                              countdown <= 11'h3f;
                                                                                                            end else begin
                                                                                                              if (7'h12 == nextIndex) begin
                                                                                                                countdown <= 11'h3bf;
                                                                                                              end else begin
                                                                                                                if (7'h11 == nextIndex) begin
                                                                                                                  countdown <= 11'h3f;
                                                                                                                end else begin
                                                                                                                  if (7'h10 == nextIndex) begin
                                                                                                                    countdown <= 11'h3bf;
                                                                                                                  end else begin
                                                                                                                    if (7'hf == nextIndex) begin
                                                                                                                      countdown <= 11'h3f;
                                                                                                                    end else begin
                                                                                                                      if (7'he == nextIndex) begin
                                                                                                                        countdown <= 11'h3bf;
                                                                                                                      end else begin
                                                                                                                        if (7'hd == nextIndex) begin
                                                                                                                          countdown <= 11'h3f;
                                                                                                                        end else begin
                                                                                                                          if (7'hc == nextIndex) begin
                                                                                                                            countdown <= 11'h3bf;
                                                                                                                          end else begin
                                                                                                                            if (7'hb == nextIndex) begin
                                                                                                                              countdown <= 11'h3bf;
                                                                                                                            end else begin
                                                                                                                              if (7'ha == nextIndex) begin
                                                                                                                                countdown <= 11'h3f;
                                                                                                                              end else begin
                                                                                                                                if (7'h9 == nextIndex) begin
                                                                                                                                  countdown <= 11'h3bf;
                                                                                                                                end else begin
                                                                                                                                  if (7'h8 == nextIndex) begin
                                                                                                                                    countdown <= 11'h3f;
                                                                                                                                  end else begin
                                                                                                                                    if (7'h7 == nextIndex) begin
                                                                                                                                      countdown <= 11'h3bf;
                                                                                                                                    end else begin
                                                                                                                                      if (7'h6 == nextIndex) begin
                                                                                                                                        countdown <= 11'h3f;
                                                                                                                                      end else begin
                                                                                                                                        if (7'h5 == nextIndex) begin
                                                                                                                                          countdown <= 11'h3bf;
                                                                                                                                        end else begin
                                                                                                                                          if (7'h4 == nextIndex) begin
                                                                                                                                            countdown <= 11'h3f;
                                                                                                                                          end else begin
                                                                                                                                            if (7'h3 == nextIndex) begin
                                                                                                                                              countdown <= 11'h3bf;
                                                                                                                                            end else begin
                                                                                                                                              if (7'h2 == nextIndex) begin
                                                                                                                                                countdown <= 11'h3f;
                                                                                                                                              end else begin
                                                                                                                                                if (7'h1 == nextIndex) begin
                                                                                                                                                  countdown <= 11'h3bf;
                                                                                                                                                end else begin
                                                                                                                                                  countdown <= 11'h3f;
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
                end
              end
            end
          end
        end else begin
          countdown <= _T_168;
        end
      end
    end
    if (reset) begin
      output$ <= 1'h0;
    end else begin
      if (_T_158) begin
        if (moveNext) begin
          output$ <= _T_164;
        end
      end
    end
  end
endmodule
module OneShotPulseGenerator_1( // @[:@129.2]
  input   clock, // @[:@130.4]
  input   reset, // @[:@131.4]
  output  io_signal // @[:@132.4]
);
  reg [6:0] nextIndex; // @[OneShotPulseGenerator.scala 15:34:@134.4]
  reg [31:0] _RAND_0;
  reg [10:0] countdown; // @[OneShotPulseGenerator.scala 16:34:@135.4]
  reg [31:0] _RAND_1;
  reg  output$; // @[OneShotPulseGenerator.scala 18:34:@136.4]
  reg [31:0] _RAND_2;
  wire  moveNext; // @[OneShotPulseGenerator.scala 21:36:@203.4]
  wire  finished; // @[OneShotPulseGenerator.scala 22:36:@204.4]
  wire  _T_150; // @[OneShotPulseGenerator.scala 24:9:@205.4]
  wire [10:0] _GEN_1; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_2; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_3; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_4; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_5; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_6; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_7; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_8; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_9; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_10; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_11; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_12; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_13; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_14; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_15; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_16; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_17; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_18; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_19; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_20; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_21; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_22; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_23; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_24; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_25; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_26; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_27; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_28; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_29; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_30; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_31; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_32; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_33; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_34; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_35; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_36; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_37; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_38; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_39; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_40; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_41; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_42; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_43; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_44; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_45; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_46; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_47; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_48; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_49; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_50; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_51; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_52; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_53; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_54; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_55; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_56; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_57; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_58; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_59; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_60; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_61; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_62; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_63; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [10:0] _GEN_64; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  wire [7:0] _T_153; // @[OneShotPulseGenerator.scala 27:30:@209.8]
  wire [6:0] _T_154; // @[OneShotPulseGenerator.scala 27:30:@210.8]
  wire  _T_156; // @[OneShotPulseGenerator.scala 28:17:@212.8]
  wire [11:0] _T_158; // @[OneShotPulseGenerator.scala 30:30:@216.8]
  wire [11:0] _T_159; // @[OneShotPulseGenerator.scala 30:30:@217.8]
  wire [10:0] _T_160; // @[OneShotPulseGenerator.scala 30:30:@218.8]
  wire [10:0] _GEN_65; // @[OneShotPulseGenerator.scala 25:21:@207.6]
  wire [6:0] _GEN_66; // @[OneShotPulseGenerator.scala 25:21:@207.6]
  wire  _GEN_67; // @[OneShotPulseGenerator.scala 25:21:@207.6]
  wire [10:0] _GEN_68; // @[OneShotPulseGenerator.scala 24:20:@206.4]
  wire [6:0] _GEN_69; // @[OneShotPulseGenerator.scala 24:20:@206.4]
  wire  _GEN_70; // @[OneShotPulseGenerator.scala 24:20:@206.4]
  assign moveNext = countdown == 11'h0; // @[OneShotPulseGenerator.scala 21:36:@203.4]
  assign finished = nextIndex == 7'h41; // @[OneShotPulseGenerator.scala 22:36:@204.4]
  assign _T_150 = finished == 1'h0; // @[OneShotPulseGenerator.scala 24:9:@205.4]
  assign _GEN_1 = 7'h1 == nextIndex ? 11'h3bf : 11'h3f; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_2 = 7'h2 == nextIndex ? 11'h3f : _GEN_1; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_3 = 7'h3 == nextIndex ? 11'h3bf : _GEN_2; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_4 = 7'h4 == nextIndex ? 11'h3f : _GEN_3; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_5 = 7'h5 == nextIndex ? 11'h3bf : _GEN_4; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_6 = 7'h6 == nextIndex ? 11'h3f : _GEN_5; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_7 = 7'h7 == nextIndex ? 11'h3bf : _GEN_6; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_8 = 7'h8 == nextIndex ? 11'h3f : _GEN_7; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_9 = 7'h9 == nextIndex ? 11'h3bf : _GEN_8; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_10 = 7'ha == nextIndex ? 11'h3bf : _GEN_9; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_11 = 7'hb == nextIndex ? 11'h3f : _GEN_10; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_12 = 7'hc == nextIndex ? 11'h3bf : _GEN_11; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_13 = 7'hd == nextIndex ? 11'h3f : _GEN_12; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_14 = 7'he == nextIndex ? 11'h3bf : _GEN_13; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_15 = 7'hf == nextIndex ? 11'h3f : _GEN_14; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_16 = 7'h10 == nextIndex ? 11'h3bf : _GEN_15; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_17 = 7'h11 == nextIndex ? 11'h3f : _GEN_16; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_18 = 7'h12 == nextIndex ? 11'h3bf : _GEN_17; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_19 = 7'h13 == nextIndex ? 11'h3f : _GEN_18; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_20 = 7'h14 == nextIndex ? 11'h3f : _GEN_19; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_21 = 7'h15 == nextIndex ? 11'h3bf : _GEN_20; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_22 = 7'h16 == nextIndex ? 11'h3f : _GEN_21; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_23 = 7'h17 == nextIndex ? 11'h3bf : _GEN_22; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_24 = 7'h18 == nextIndex ? 11'h3f : _GEN_23; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_25 = 7'h19 == nextIndex ? 11'h3bf : _GEN_24; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_26 = 7'h1a == nextIndex ? 11'h3f : _GEN_25; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_27 = 7'h1b == nextIndex ? 11'h3bf : _GEN_26; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_28 = 7'h1c == nextIndex ? 11'h7f : _GEN_27; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_29 = 7'h1d == nextIndex ? 11'h77f : _GEN_28; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_30 = 7'h1e == nextIndex ? 11'h7f : _GEN_29; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_31 = 7'h1f == nextIndex ? 11'h77f : _GEN_30; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_32 = 7'h20 == nextIndex ? 11'h7f : _GEN_31; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_33 = 7'h21 == nextIndex ? 11'h77f : _GEN_32; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_34 = 7'h22 == nextIndex ? 11'h7f : _GEN_33; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_35 = 7'h23 == nextIndex ? 11'h77f : _GEN_34; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_36 = 7'h24 == nextIndex ? 11'h7f : _GEN_35; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_37 = 7'h25 == nextIndex ? 11'h77f : _GEN_36; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_38 = 7'h26 == nextIndex ? 11'h7f : _GEN_37; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_39 = 7'h27 == nextIndex ? 11'h77f : _GEN_38; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_40 = 7'h28 == nextIndex ? 11'h7f : _GEN_39; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_41 = 7'h29 == nextIndex ? 11'h77f : _GEN_40; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_42 = 7'h2a == nextIndex ? 11'h7f : _GEN_41; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_43 = 7'h2b == nextIndex ? 11'h77f : _GEN_42; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_44 = 7'h2c == nextIndex ? 11'h7f : _GEN_43; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_45 = 7'h2d == nextIndex ? 11'h77f : _GEN_44; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_46 = 7'h2e == nextIndex ? 11'h7f : _GEN_45; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_47 = 7'h2f == nextIndex ? 11'h77f : _GEN_46; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_48 = 7'h30 == nextIndex ? 11'h7f : _GEN_47; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_49 = 7'h31 == nextIndex ? 11'h77f : _GEN_48; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_50 = 7'h32 == nextIndex ? 11'h7f : _GEN_49; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_51 = 7'h33 == nextIndex ? 11'h77f : _GEN_50; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_52 = 7'h34 == nextIndex ? 11'h7f : _GEN_51; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_53 = 7'h35 == nextIndex ? 11'h77f : _GEN_52; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_54 = 7'h36 == nextIndex ? 11'h7f : _GEN_53; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_55 = 7'h37 == nextIndex ? 11'h77f : _GEN_54; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_56 = 7'h38 == nextIndex ? 11'h7f : _GEN_55; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_57 = 7'h39 == nextIndex ? 11'h77f : _GEN_56; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_58 = 7'h3a == nextIndex ? 11'h7f : _GEN_57; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_59 = 7'h3b == nextIndex ? 11'h77f : _GEN_58; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_60 = 7'h3c == nextIndex ? 11'h7f : _GEN_59; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_61 = 7'h3d == nextIndex ? 11'h77f : _GEN_60; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_62 = 7'h3e == nextIndex ? 11'h7f : _GEN_61; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_63 = 7'h3f == nextIndex ? 11'h77f : _GEN_62; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _GEN_64 = 7'h40 == nextIndex ? 11'h0 : _GEN_63; // @[OneShotPulseGenerator.scala 26:17:@208.8]
  assign _T_153 = nextIndex + 7'h1; // @[OneShotPulseGenerator.scala 27:30:@209.8]
  assign _T_154 = _T_153[6:0]; // @[OneShotPulseGenerator.scala 27:30:@210.8]
  assign _T_156 = output$ == 1'h0; // @[OneShotPulseGenerator.scala 28:17:@212.8]
  assign _T_158 = countdown - 11'h1; // @[OneShotPulseGenerator.scala 30:30:@216.8]
  assign _T_159 = $unsigned(_T_158); // @[OneShotPulseGenerator.scala 30:30:@217.8]
  assign _T_160 = _T_159[10:0]; // @[OneShotPulseGenerator.scala 30:30:@218.8]
  assign _GEN_65 = moveNext ? _GEN_64 : _T_160; // @[OneShotPulseGenerator.scala 25:21:@207.6]
  assign _GEN_66 = moveNext ? _T_154 : nextIndex; // @[OneShotPulseGenerator.scala 25:21:@207.6]
  assign _GEN_67 = moveNext ? _T_156 : output$; // @[OneShotPulseGenerator.scala 25:21:@207.6]
  assign _GEN_68 = _T_150 ? _GEN_65 : countdown; // @[OneShotPulseGenerator.scala 24:20:@206.4]
  assign _GEN_69 = _T_150 ? _GEN_66 : nextIndex; // @[OneShotPulseGenerator.scala 24:20:@206.4]
  assign _GEN_70 = _T_150 ? _GEN_67 : output$; // @[OneShotPulseGenerator.scala 24:20:@206.4]
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
  nextIndex = _RAND_0[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  countdown = _RAND_1[10:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  output$ = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      nextIndex <= 7'h1;
    end else begin
      if (_T_150) begin
        if (moveNext) begin
          nextIndex <= _T_154;
        end
      end
    end
    if (reset) begin
      countdown <= 11'h3f;
    end else begin
      if (_T_150) begin
        if (moveNext) begin
          if (7'h40 == nextIndex) begin
            countdown <= 11'h0;
          end else begin
            if (7'h3f == nextIndex) begin
              countdown <= 11'h77f;
            end else begin
              if (7'h3e == nextIndex) begin
                countdown <= 11'h7f;
              end else begin
                if (7'h3d == nextIndex) begin
                  countdown <= 11'h77f;
                end else begin
                  if (7'h3c == nextIndex) begin
                    countdown <= 11'h7f;
                  end else begin
                    if (7'h3b == nextIndex) begin
                      countdown <= 11'h77f;
                    end else begin
                      if (7'h3a == nextIndex) begin
                        countdown <= 11'h7f;
                      end else begin
                        if (7'h39 == nextIndex) begin
                          countdown <= 11'h77f;
                        end else begin
                          if (7'h38 == nextIndex) begin
                            countdown <= 11'h7f;
                          end else begin
                            if (7'h37 == nextIndex) begin
                              countdown <= 11'h77f;
                            end else begin
                              if (7'h36 == nextIndex) begin
                                countdown <= 11'h7f;
                              end else begin
                                if (7'h35 == nextIndex) begin
                                  countdown <= 11'h77f;
                                end else begin
                                  if (7'h34 == nextIndex) begin
                                    countdown <= 11'h7f;
                                  end else begin
                                    if (7'h33 == nextIndex) begin
                                      countdown <= 11'h77f;
                                    end else begin
                                      if (7'h32 == nextIndex) begin
                                        countdown <= 11'h7f;
                                      end else begin
                                        if (7'h31 == nextIndex) begin
                                          countdown <= 11'h77f;
                                        end else begin
                                          if (7'h30 == nextIndex) begin
                                            countdown <= 11'h7f;
                                          end else begin
                                            if (7'h2f == nextIndex) begin
                                              countdown <= 11'h77f;
                                            end else begin
                                              if (7'h2e == nextIndex) begin
                                                countdown <= 11'h7f;
                                              end else begin
                                                if (7'h2d == nextIndex) begin
                                                  countdown <= 11'h77f;
                                                end else begin
                                                  if (7'h2c == nextIndex) begin
                                                    countdown <= 11'h7f;
                                                  end else begin
                                                    if (7'h2b == nextIndex) begin
                                                      countdown <= 11'h77f;
                                                    end else begin
                                                      if (7'h2a == nextIndex) begin
                                                        countdown <= 11'h7f;
                                                      end else begin
                                                        if (7'h29 == nextIndex) begin
                                                          countdown <= 11'h77f;
                                                        end else begin
                                                          if (7'h28 == nextIndex) begin
                                                            countdown <= 11'h7f;
                                                          end else begin
                                                            if (7'h27 == nextIndex) begin
                                                              countdown <= 11'h77f;
                                                            end else begin
                                                              if (7'h26 == nextIndex) begin
                                                                countdown <= 11'h7f;
                                                              end else begin
                                                                if (7'h25 == nextIndex) begin
                                                                  countdown <= 11'h77f;
                                                                end else begin
                                                                  if (7'h24 == nextIndex) begin
                                                                    countdown <= 11'h7f;
                                                                  end else begin
                                                                    if (7'h23 == nextIndex) begin
                                                                      countdown <= 11'h77f;
                                                                    end else begin
                                                                      if (7'h22 == nextIndex) begin
                                                                        countdown <= 11'h7f;
                                                                      end else begin
                                                                        if (7'h21 == nextIndex) begin
                                                                          countdown <= 11'h77f;
                                                                        end else begin
                                                                          if (7'h20 == nextIndex) begin
                                                                            countdown <= 11'h7f;
                                                                          end else begin
                                                                            if (7'h1f == nextIndex) begin
                                                                              countdown <= 11'h77f;
                                                                            end else begin
                                                                              if (7'h1e == nextIndex) begin
                                                                                countdown <= 11'h7f;
                                                                              end else begin
                                                                                if (7'h1d == nextIndex) begin
                                                                                  countdown <= 11'h77f;
                                                                                end else begin
                                                                                  if (7'h1c == nextIndex) begin
                                                                                    countdown <= 11'h7f;
                                                                                  end else begin
                                                                                    if (7'h1b == nextIndex) begin
                                                                                      countdown <= 11'h3bf;
                                                                                    end else begin
                                                                                      if (7'h1a == nextIndex) begin
                                                                                        countdown <= 11'h3f;
                                                                                      end else begin
                                                                                        if (7'h19 == nextIndex) begin
                                                                                          countdown <= 11'h3bf;
                                                                                        end else begin
                                                                                          if (7'h18 == nextIndex) begin
                                                                                            countdown <= 11'h3f;
                                                                                          end else begin
                                                                                            if (7'h17 == nextIndex) begin
                                                                                              countdown <= 11'h3bf;
                                                                                            end else begin
                                                                                              if (7'h16 == nextIndex) begin
                                                                                                countdown <= 11'h3f;
                                                                                              end else begin
                                                                                                if (7'h15 == nextIndex) begin
                                                                                                  countdown <= 11'h3bf;
                                                                                                end else begin
                                                                                                  if (7'h14 == nextIndex) begin
                                                                                                    countdown <= 11'h3f;
                                                                                                  end else begin
                                                                                                    if (7'h13 == nextIndex) begin
                                                                                                      countdown <= 11'h3f;
                                                                                                    end else begin
                                                                                                      if (7'h12 == nextIndex) begin
                                                                                                        countdown <= 11'h3bf;
                                                                                                      end else begin
                                                                                                        if (7'h11 == nextIndex) begin
                                                                                                          countdown <= 11'h3f;
                                                                                                        end else begin
                                                                                                          if (7'h10 == nextIndex) begin
                                                                                                            countdown <= 11'h3bf;
                                                                                                          end else begin
                                                                                                            if (7'hf == nextIndex) begin
                                                                                                              countdown <= 11'h3f;
                                                                                                            end else begin
                                                                                                              if (7'he == nextIndex) begin
                                                                                                                countdown <= 11'h3bf;
                                                                                                              end else begin
                                                                                                                if (7'hd == nextIndex) begin
                                                                                                                  countdown <= 11'h3f;
                                                                                                                end else begin
                                                                                                                  if (7'hc == nextIndex) begin
                                                                                                                    countdown <= 11'h3bf;
                                                                                                                  end else begin
                                                                                                                    if (7'hb == nextIndex) begin
                                                                                                                      countdown <= 11'h3f;
                                                                                                                    end else begin
                                                                                                                      if (7'ha == nextIndex) begin
                                                                                                                        countdown <= 11'h3bf;
                                                                                                                      end else begin
                                                                                                                        if (7'h9 == nextIndex) begin
                                                                                                                          countdown <= 11'h3bf;
                                                                                                                        end else begin
                                                                                                                          if (7'h8 == nextIndex) begin
                                                                                                                            countdown <= 11'h3f;
                                                                                                                          end else begin
                                                                                                                            if (7'h7 == nextIndex) begin
                                                                                                                              countdown <= 11'h3bf;
                                                                                                                            end else begin
                                                                                                                              if (7'h6 == nextIndex) begin
                                                                                                                                countdown <= 11'h3f;
                                                                                                                              end else begin
                                                                                                                                if (7'h5 == nextIndex) begin
                                                                                                                                  countdown <= 11'h3bf;
                                                                                                                                end else begin
                                                                                                                                  if (7'h4 == nextIndex) begin
                                                                                                                                    countdown <= 11'h3f;
                                                                                                                                  end else begin
                                                                                                                                    if (7'h3 == nextIndex) begin
                                                                                                                                      countdown <= 11'h3bf;
                                                                                                                                    end else begin
                                                                                                                                      if (7'h2 == nextIndex) begin
                                                                                                                                        countdown <= 11'h3f;
                                                                                                                                      end else begin
                                                                                                                                        if (7'h1 == nextIndex) begin
                                                                                                                                          countdown <= 11'h3bf;
                                                                                                                                        end else begin
                                                                                                                                          countdown <= 11'h3f;
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
          countdown <= _T_160;
        end
      end
    end
    if (reset) begin
      output$ <= 1'h0;
    end else begin
      if (_T_150) begin
        if (moveNext) begin
          output$ <= _T_156;
        end
      end
    end
  end
endmodule
module BWGenerator( // @[:@224.2]
  input         clock, // @[:@225.4]
  input         reset, // @[:@226.4]
  input  [7:0]  io_L, // @[:@227.4]
  output [9:0]  io_x, // @[:@227.4]
  output [9:0]  io_y, // @[:@227.4]
  output        io_inScanLine, // @[:@227.4]
  output [11:0] io_millivolts // @[:@227.4]
);
  reg [9:0] scanLineNr; // @[BWGenerator.scala 52:35:@229.4]
  reg [31:0] _RAND_0;
  reg [15:0] inScanLineCounter; // @[BWGenerator.scala 53:42:@230.4]
  reg [31:0] _RAND_1;
  wire  fieldIGenerator_clock; // @[BWGenerator.scala 68:11:@253.4]
  wire  fieldIGenerator_reset; // @[BWGenerator.scala 68:11:@253.4]
  wire  fieldIGenerator_io_signal; // @[BWGenerator.scala 68:11:@253.4]
  wire  fieldIIGenerator_clock; // @[BWGenerator.scala 72:11:@260.4]
  wire  fieldIIGenerator_reset; // @[BWGenerator.scala 72:11:@260.4]
  wire  fieldIIGenerator_io_signal; // @[BWGenerator.scala 72:11:@260.4]
  wire  _T_22; // @[BWGenerator.scala 54:27:@231.4]
  wire  _T_25; // @[BWGenerator.scala 56:21:@234.6]
  wire [10:0] _T_28; // @[BWGenerator.scala 59:32:@239.8]
  wire [9:0] _T_29; // @[BWGenerator.scala 59:32:@240.8]
  wire [9:0] _GEN_0; // @[BWGenerator.scala 56:37:@235.6]
  wire [16:0] _T_31; // @[BWGenerator.scala 62:44:@245.6]
  wire [15:0] _T_32; // @[BWGenerator.scala 62:44:@246.6]
  wire [15:0] _GEN_1; // @[BWGenerator.scala 54:73:@232.4]
  wire [9:0] _GEN_2; // @[BWGenerator.scala 54:73:@232.4]
  wire  _T_34; // @[BWGenerator.scala 66:51:@249.4]
  wire  _T_36; // @[BWGenerator.scala 66:79:@250.4]
  wire  fieldIActive; // @[BWGenerator.scala 66:65:@251.4]
  wire  _T_38; // @[BWGenerator.scala 67:43:@252.4]
  wire  _T_40; // @[BWGenerator.scala 70:51:@256.4]
  wire  _T_42; // @[BWGenerator.scala 70:79:@257.4]
  wire  fieldIIActive; // @[BWGenerator.scala 70:65:@258.4]
  wire  _T_44; // @[BWGenerator.scala 71:44:@259.4]
  wire  _T_46; // @[BWGenerator.scala 76:49:@263.4]
  wire  _T_48; // @[BWGenerator.scala 76:77:@264.4]
  wire  _T_49; // @[BWGenerator.scala 76:63:@265.4]
  wire  _T_51; // @[BWGenerator.scala 77:51:@266.4]
  wire  _T_53; // @[BWGenerator.scala 77:79:@267.4]
  wire  _T_54; // @[BWGenerator.scala 77:65:@268.4]
  wire  _T_55; // @[BWGenerator.scala 78:33:@269.4]
  wire  _T_57; // @[BWGenerator.scala 78:101:@270.4]
  wire  _T_58; // @[BWGenerator.scala 78:50:@271.4]
  wire [16:0] _T_60; // @[BWGenerator.scala 82:23:@273.4]
  wire [16:0] _T_61; // @[BWGenerator.scala 82:23:@274.4]
  wire [15:0] _T_62; // @[BWGenerator.scala 82:23:@275.4]
  wire [15:0] _T_64; // @[BWGenerator.scala 80:14:@276.4]
  wire [15:0] _T_66; // @[BWGenerator.scala 84:5:@277.4]
  wire [10:0] _T_68; // @[BWGenerator.scala 89:20:@279.4]
  wire [10:0] _T_69; // @[BWGenerator.scala 89:20:@280.4]
  wire [9:0] _T_70; // @[BWGenerator.scala 89:20:@281.4]
  wire [10:0] _GEN_7; // @[BWGenerator.scala 89:43:@282.4]
  wire [10:0] _T_71; // @[BWGenerator.scala 89:43:@282.4]
  wire [10:0] _T_73; // @[BWGenerator.scala 90:20:@283.4]
  wire [10:0] _T_74; // @[BWGenerator.scala 90:20:@284.4]
  wire [9:0] _T_75; // @[BWGenerator.scala 90:20:@285.4]
  wire [10:0] _GEN_8; // @[BWGenerator.scala 90:44:@286.4]
  wire [10:0] _T_76; // @[BWGenerator.scala 90:44:@286.4]
  wire [11:0] _T_78; // @[BWGenerator.scala 90:57:@287.4]
  wire [10:0] _T_79; // @[BWGenerator.scala 90:57:@288.4]
  wire [10:0] _T_80; // @[BWGenerator.scala 87:8:@289.4]
  wire [10:0] _T_82; // @[BWGenerator.scala 85:14:@290.4]
  wire [11:0] _T_84; // @[BWGenerator.scala 96:25:@293.6]
  wire [11:0] _T_86; // @[BWGenerator.scala 98:25:@298.8]
  wire  _T_88; // @[BWGenerator.scala 100:29:@302.8]
  wire  _T_91; // @[BWGenerator.scala 102:35:@307.10]
  wire [8:0] _GEN_9; // @[BWGenerator.scala 105:41:@312.12]
  wire [8:0] _T_92; // @[BWGenerator.scala 105:41:@312.12]
  wire [11:0] _GEN_10; // @[BWGenerator.scala 105:33:@313.12]
  wire [12:0] _T_93; // @[BWGenerator.scala 105:33:@313.12]
  wire [11:0] _T_94; // @[BWGenerator.scala 105:33:@314.12]
  wire [12:0] _T_96; // @[BWGenerator.scala 105:54:@315.12]
  wire [11:0] _T_97; // @[BWGenerator.scala 105:54:@316.12]
  wire [11:0] _GEN_3; // @[BWGenerator.scala 102:79:@308.10]
  wire [11:0] _GEN_4; // @[BWGenerator.scala 100:75:@303.8]
  wire [11:0] _GEN_5; // @[BWGenerator.scala 97:30:@297.6]
  wire [11:0] _GEN_6; // @[BWGenerator.scala 95:23:@292.4]
  OneShotPulseGenerator fieldIGenerator ( // @[BWGenerator.scala 68:11:@253.4]
    .clock(fieldIGenerator_clock),
    .reset(fieldIGenerator_reset),
    .io_signal(fieldIGenerator_io_signal)
  );
  OneShotPulseGenerator_1 fieldIIGenerator ( // @[BWGenerator.scala 72:11:@260.4]
    .clock(fieldIIGenerator_clock),
    .reset(fieldIIGenerator_reset),
    .io_signal(fieldIIGenerator_io_signal)
  );
  assign _T_22 = inScanLineCounter == 16'h7ff; // @[BWGenerator.scala 54:27:@231.4]
  assign _T_25 = scanLineNr == 10'h270; // @[BWGenerator.scala 56:21:@234.6]
  assign _T_28 = scanLineNr + 10'h1; // @[BWGenerator.scala 59:32:@239.8]
  assign _T_29 = _T_28[9:0]; // @[BWGenerator.scala 59:32:@240.8]
  assign _GEN_0 = _T_25 ? 10'h0 : _T_29; // @[BWGenerator.scala 56:37:@235.6]
  assign _T_31 = inScanLineCounter + 16'h1; // @[BWGenerator.scala 62:44:@245.6]
  assign _T_32 = _T_31[15:0]; // @[BWGenerator.scala 62:44:@246.6]
  assign _GEN_1 = _T_22 ? 16'h0 : _T_32; // @[BWGenerator.scala 54:73:@232.4]
  assign _GEN_2 = _T_22 ? _GEN_0 : scanLineNr; // @[BWGenerator.scala 54:73:@232.4]
  assign _T_34 = 10'h26f <= scanLineNr; // @[BWGenerator.scala 66:51:@249.4]
  assign _T_36 = scanLineNr < 10'h18; // @[BWGenerator.scala 66:79:@250.4]
  assign fieldIActive = _T_34 | _T_36; // @[BWGenerator.scala 66:65:@251.4]
  assign _T_38 = fieldIActive == 1'h0; // @[BWGenerator.scala 67:43:@252.4]
  assign _T_40 = 10'h137 <= scanLineNr; // @[BWGenerator.scala 70:51:@256.4]
  assign _T_42 = scanLineNr < 10'h150; // @[BWGenerator.scala 70:79:@257.4]
  assign fieldIIActive = _T_40 & _T_42; // @[BWGenerator.scala 70:65:@258.4]
  assign _T_44 = fieldIIActive == 1'h0; // @[BWGenerator.scala 71:44:@259.4]
  assign _T_46 = 10'h18 <= scanLineNr; // @[BWGenerator.scala 76:49:@263.4]
  assign _T_48 = scanLineNr < 10'h137; // @[BWGenerator.scala 76:77:@264.4]
  assign _T_49 = _T_46 & _T_48; // @[BWGenerator.scala 76:63:@265.4]
  assign _T_51 = 10'h150 <= scanLineNr; // @[BWGenerator.scala 77:51:@266.4]
  assign _T_53 = scanLineNr < 10'h26f; // @[BWGenerator.scala 77:79:@267.4]
  assign _T_54 = _T_51 & _T_53; // @[BWGenerator.scala 77:65:@268.4]
  assign _T_55 = _T_49 | _T_54; // @[BWGenerator.scala 78:33:@269.4]
  assign _T_57 = 16'h180 <= inScanLineCounter; // @[BWGenerator.scala 78:101:@270.4]
  assign _T_58 = _T_55 & _T_57; // @[BWGenerator.scala 78:50:@271.4]
  assign _T_60 = inScanLineCounter - 16'h180; // @[BWGenerator.scala 82:23:@273.4]
  assign _T_61 = $unsigned(_T_60); // @[BWGenerator.scala 82:23:@274.4]
  assign _T_62 = _T_61[15:0]; // @[BWGenerator.scala 82:23:@275.4]
  assign _T_64 = io_inScanLine ? _T_62 : 16'h0; // @[BWGenerator.scala 80:14:@276.4]
  assign _T_66 = _T_64 / 16'h4; // @[BWGenerator.scala 84:5:@277.4]
  assign _T_68 = scanLineNr - 10'h18; // @[BWGenerator.scala 89:20:@279.4]
  assign _T_69 = $unsigned(_T_68); // @[BWGenerator.scala 89:20:@280.4]
  assign _T_70 = _T_69[9:0]; // @[BWGenerator.scala 89:20:@281.4]
  assign _GEN_7 = {{1'd0}, _T_70}; // @[BWGenerator.scala 89:43:@282.4]
  assign _T_71 = _GEN_7 << 1; // @[BWGenerator.scala 89:43:@282.4]
  assign _T_73 = scanLineNr - 10'h150; // @[BWGenerator.scala 90:20:@283.4]
  assign _T_74 = $unsigned(_T_73); // @[BWGenerator.scala 90:20:@284.4]
  assign _T_75 = _T_74[9:0]; // @[BWGenerator.scala 90:20:@285.4]
  assign _GEN_8 = {{1'd0}, _T_75}; // @[BWGenerator.scala 90:44:@286.4]
  assign _T_76 = _GEN_8 << 1; // @[BWGenerator.scala 90:44:@286.4]
  assign _T_78 = _T_76 + 11'h1; // @[BWGenerator.scala 90:57:@287.4]
  assign _T_79 = _T_78[10:0]; // @[BWGenerator.scala 90:57:@288.4]
  assign _T_80 = _T_49 ? _T_71 : _T_79; // @[BWGenerator.scala 87:8:@289.4]
  assign _T_82 = io_inScanLine ? _T_80 : 11'h0; // @[BWGenerator.scala 85:14:@290.4]
  assign _T_84 = fieldIGenerator_io_signal ? 12'h12c : 12'h0; // @[BWGenerator.scala 96:25:@293.6]
  assign _T_86 = fieldIIGenerator_io_signal ? 12'h12c : 12'h0; // @[BWGenerator.scala 98:25:@298.8]
  assign _T_88 = inScanLineCounter < 16'h80; // @[BWGenerator.scala 100:29:@302.8]
  assign _T_91 = inScanLineCounter < 16'h180; // @[BWGenerator.scala 102:35:@307.10]
  assign _GEN_9 = {{1'd0}, io_L}; // @[BWGenerator.scala 105:41:@312.12]
  assign _T_92 = _GEN_9 << 1; // @[BWGenerator.scala 105:41:@312.12]
  assign _GEN_10 = {{3'd0}, _T_92}; // @[BWGenerator.scala 105:33:@313.12]
  assign _T_93 = 12'h12c + _GEN_10; // @[BWGenerator.scala 105:33:@313.12]
  assign _T_94 = _T_93[11:0]; // @[BWGenerator.scala 105:33:@314.12]
  assign _T_96 = _T_94 + 12'h1e; // @[BWGenerator.scala 105:54:@315.12]
  assign _T_97 = _T_96[11:0]; // @[BWGenerator.scala 105:54:@316.12]
  assign _GEN_3 = _T_91 ? 12'h12c : _T_97; // @[BWGenerator.scala 102:79:@308.10]
  assign _GEN_4 = _T_88 ? 12'h0 : _GEN_3; // @[BWGenerator.scala 100:75:@303.8]
  assign _GEN_5 = fieldIIActive ? _T_86 : _GEN_4; // @[BWGenerator.scala 97:30:@297.6]
  assign _GEN_6 = fieldIActive ? _T_84 : _GEN_5; // @[BWGenerator.scala 95:23:@292.4]
  assign io_x = _T_66[9:0];
  assign io_y = _T_82[9:0];
  assign io_inScanLine = _T_58;
  assign io_millivolts = _GEN_6;
  assign fieldIGenerator_clock = clock;
  assign fieldIGenerator_reset = _T_38;
  assign fieldIIGenerator_clock = clock;
  assign fieldIIGenerator_reset = _T_44;
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
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      scanLineNr <= 10'h0;
    end else begin
      if (_T_22) begin
        if (_T_25) begin
          scanLineNr <= 10'h0;
        end else begin
          scanLineNr <= _T_29;
        end
      end
    end
    if (reset) begin
      inScanLineCounter <= 16'h0;
    end else begin
      if (_T_22) begin
        inScanLineCounter <= 16'h0;
      end else begin
        inScanLineCounter <= _T_32;
      end
    end
  end
endmodule
module PalColorCalculator( // @[:@321.2]
  input  [7:0] io_red, // @[:@324.4]
  input  [7:0] io_green, // @[:@324.4]
  output [7:0] io_L // @[:@324.4]
);
  wire [9:0] _GEN_0; // @[PalColorCalculator.scala 18:27:@326.4]
  wire [10:0] _T_18; // @[PalColorCalculator.scala 18:27:@326.4]
  wire [9:0] _T_19; // @[PalColorCalculator.scala 18:27:@327.4]
  wire [9:0] _GEN_1; // @[PalColorCalculator.scala 18:36:@328.4]
  wire [10:0] _T_20; // @[PalColorCalculator.scala 18:36:@328.4]
  wire [9:0] _T_21; // @[PalColorCalculator.scala 18:36:@329.4]
  wire [10:0] _T_22; // @[PalColorCalculator.scala 18:47:@330.4]
  wire [9:0] _T_23; // @[PalColorCalculator.scala 18:47:@331.4]
  wire [9:0] _T_25; // @[PalColorCalculator.scala 18:58:@332.4]
  assign _GEN_0 = {{2'd0}, io_red}; // @[PalColorCalculator.scala 18:27:@326.4]
  assign _T_18 = 10'h0 + _GEN_0; // @[PalColorCalculator.scala 18:27:@326.4]
  assign _T_19 = _T_18[9:0]; // @[PalColorCalculator.scala 18:27:@327.4]
  assign _GEN_1 = {{2'd0}, io_green}; // @[PalColorCalculator.scala 18:36:@328.4]
  assign _T_20 = _T_19 + _GEN_1; // @[PalColorCalculator.scala 18:36:@328.4]
  assign _T_21 = _T_20[9:0]; // @[PalColorCalculator.scala 18:36:@329.4]
  assign _T_22 = _T_21 + 10'h0; // @[PalColorCalculator.scala 18:47:@330.4]
  assign _T_23 = _T_22[9:0]; // @[PalColorCalculator.scala 18:47:@331.4]
  assign _T_25 = _T_23 / 10'h4; // @[PalColorCalculator.scala 18:58:@332.4]
  assign io_L = _T_25[7:0];
endmodule
module PalGenerator( // @[:@336.2]
  input         clock, // @[:@337.4]
  input         reset, // @[:@338.4]
  input  [7:0]  io_red, // @[:@339.4]
  input  [7:0]  io_green, // @[:@339.4]
  output [9:0]  io_x, // @[:@339.4]
  output [9:0]  io_y, // @[:@339.4]
  output [11:0] io_millivolts // @[:@339.4]
);
  wire  bw_clock; // @[PalGenerator.scala 17:18:@341.4]
  wire  bw_reset; // @[PalGenerator.scala 17:18:@341.4]
  wire [7:0] bw_io_L; // @[PalGenerator.scala 17:18:@341.4]
  wire [9:0] bw_io_x; // @[PalGenerator.scala 17:18:@341.4]
  wire [9:0] bw_io_y; // @[PalGenerator.scala 17:18:@341.4]
  wire  bw_io_inScanLine; // @[PalGenerator.scala 17:18:@341.4]
  wire [11:0] bw_io_millivolts; // @[PalGenerator.scala 17:18:@341.4]
  wire [7:0] color_io_red; // @[PalGenerator.scala 18:21:@344.4]
  wire [7:0] color_io_green; // @[PalGenerator.scala 18:21:@344.4]
  wire [7:0] color_io_L; // @[PalGenerator.scala 18:21:@344.4]
  wire [12:0] _T_17; // @[PalGenerator.scala 30:37:@354.4]
  wire [11:0] _T_18; // @[PalGenerator.scala 30:37:@355.4]
  BWGenerator bw ( // @[PalGenerator.scala 17:18:@341.4]
    .clock(bw_clock),
    .reset(bw_reset),
    .io_L(bw_io_L),
    .io_x(bw_io_x),
    .io_y(bw_io_y),
    .io_inScanLine(bw_io_inScanLine),
    .io_millivolts(bw_io_millivolts)
  );
  PalColorCalculator color ( // @[PalGenerator.scala 18:21:@344.4]
    .io_red(color_io_red),
    .io_green(color_io_green),
    .io_L(color_io_L)
  );
  assign _T_17 = bw_io_millivolts + 12'h0; // @[PalGenerator.scala 30:37:@354.4]
  assign _T_18 = _T_17[11:0]; // @[PalGenerator.scala 30:37:@355.4]
  assign io_x = bw_io_x;
  assign io_y = bw_io_y;
  assign io_millivolts = _T_18;
  assign bw_clock = clock;
  assign bw_reset = reset;
  assign bw_io_L = color_io_L;
  assign color_io_red = io_red;
  assign color_io_green = io_green;
endmodule
module CompositeSignalGenerator( // @[:@358.2]
  input         clock, // @[:@359.4]
  input         reset, // @[:@360.4]
  output [11:0] io_millivolts // @[:@361.4]
);
  wire [7:0] imageGenerator_io_red; // @[Codegen.scala 11:32:@363.4]
  wire [7:0] imageGenerator_io_green; // @[Codegen.scala 11:32:@363.4]
  wire [9:0] imageGenerator_io_x; // @[Codegen.scala 11:32:@363.4]
  wire [9:0] imageGenerator_io_y; // @[Codegen.scala 11:32:@363.4]
  wire  encoder_clock; // @[Codegen.scala 12:25:@366.4]
  wire  encoder_reset; // @[Codegen.scala 12:25:@366.4]
  wire [7:0] encoder_io_red; // @[Codegen.scala 12:25:@366.4]
  wire [7:0] encoder_io_green; // @[Codegen.scala 12:25:@366.4]
  wire [9:0] encoder_io_x; // @[Codegen.scala 12:25:@366.4]
  wire [9:0] encoder_io_y; // @[Codegen.scala 12:25:@366.4]
  wire [11:0] encoder_io_millivolts; // @[Codegen.scala 12:25:@366.4]
  TestColorImageGenerator imageGenerator ( // @[Codegen.scala 11:32:@363.4]
    .io_red(imageGenerator_io_red),
    .io_green(imageGenerator_io_green),
    .io_x(imageGenerator_io_x),
    .io_y(imageGenerator_io_y)
  );
  PalGenerator encoder ( // @[Codegen.scala 12:25:@366.4]
    .clock(encoder_clock),
    .reset(encoder_reset),
    .io_red(encoder_io_red),
    .io_green(encoder_io_green),
    .io_x(encoder_io_x),
    .io_y(encoder_io_y),
    .io_millivolts(encoder_io_millivolts)
  );
  assign io_millivolts = encoder_io_millivolts;
  assign imageGenerator_io_x = encoder_io_x;
  assign imageGenerator_io_y = encoder_io_y;
  assign encoder_clock = clock;
  assign encoder_reset = reset;
  assign encoder_io_red = imageGenerator_io_red;
  assign encoder_io_green = imageGenerator_io_green;
endmodule
