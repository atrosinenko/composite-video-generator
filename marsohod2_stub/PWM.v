module PWM( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input  [11:0] io_numerator, // @[:@6.4]
  input  [11:0] io_denominator, // @[:@6.4]
  output        io_pulse // @[:@6.4]
);
  reg [11:0] _T_13; // @[PWM.scala 12:32:@8.4]
  reg [31:0] _RAND_0;
  wire [12:0] _T_14; // @[PWM.scala 13:35:@9.4]
  wire [11:0] _T_15; // @[PWM.scala 13:35:@10.4]
  wire  _T_16; // @[PWM.scala 14:25:@11.4]
  wire [12:0] _T_17; // @[PWM.scala 15:38:@13.4]
  wire [12:0] _T_18; // @[PWM.scala 15:38:@14.4]
  wire [11:0] _T_19; // @[PWM.scala 15:38:@15.4]
  wire [11:0] _T_20; // @[PWM.scala 15:17:@16.4]
  assign _T_14 = _T_13 + io_numerator; // @[PWM.scala 13:35:@9.4]
  assign _T_15 = _T_14[11:0]; // @[PWM.scala 13:35:@10.4]
  assign _T_16 = _T_15 >= io_denominator; // @[PWM.scala 14:25:@11.4]
  assign _T_17 = _T_15 - io_denominator; // @[PWM.scala 15:38:@13.4]
  assign _T_18 = $unsigned(_T_17); // @[PWM.scala 15:38:@14.4]
  assign _T_19 = _T_18[11:0]; // @[PWM.scala 15:38:@15.4]
  assign _T_20 = io_pulse ? _T_19 : _T_15; // @[PWM.scala 15:17:@16.4]
  assign io_pulse = _T_16;
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
  _T_13 = _RAND_0[11:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      _T_13 <= 12'h0;
    end else begin
      if (io_pulse) begin
        _T_13 <= _T_19;
      end else begin
        _T_13 <= _T_15;
      end
    end
  end
endmodule
