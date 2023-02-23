`ifndef VERILATOR
module testbench;
  reg [4095:0] vcdfile;
  reg clock;
`else
module testbench(input clock, output reg genclock);
  initial genclock = 1;
`endif
  reg genclock = 1;
  reg [31:0] cycle = 0;
  wire [0:0] PI_clk = clock;
  reg [0:0] PI_reset;
  reg [0:0] PI_seq_in;
  seq_detector UUT (
    .clk(PI_clk),
    .reset(PI_reset),
    .seq_in(PI_seq_in)
  );
`ifndef VERILATOR
  initial begin
    if ($value$plusargs("vcd=%s", vcdfile)) begin
      $dumpfile(vcdfile);
      $dumpvars(0, testbench);
    end
    #5 clock = 0;
    while (genclock) begin
      #5 clock = 0;
      #5 clock = 1;
    end
  end
`endif
  initial begin
`ifndef VERILATOR
    #1;
`endif
    // UUT.$auto$async2sync.\cc:171:execute$250  = 1'b0;
    // UUT.$auto$async2sync.\cc:171:execute$252  = 1'b0;
    // UUT.$auto$async2sync.\cc:171:execute$254  = 1'b0;
    // UUT.$auto$async2sync.\cc:171:execute$256  = 1'b0;
    // UUT.$auto$async2sync.\cc:171:execute$258  = 1'b0;
    // UUT.$auto$async2sync.\cc:171:execute$262  = 1'b0;
    // UUT.$auto$async2sync.\cc:171:execute$264  = 1'b0;
    // UUT.$auto$async2sync.\cc:171:execute$268  = 1'b0;
    // UUT.$auto$async2sync.\cc:171:execute$270  = 1'b0;
    UUT._witness_.anyinit_verific_detect_out_reg_seq_detector_sv_30_62 = 1'b0;
    UUT._witness_.anyinit_verific_state_reg_seq_detector_sv_12_49 = 5'b00000;

    // state 0
    PI_reset = 1'b0;
    PI_seq_in = 1'b0;
  end
  always @(posedge clock) begin
    // state 1
    if (cycle == 0) begin
      PI_reset <= 1'b0;
      PI_seq_in <= 1'b0;
    end

    genclock <= cycle < 1;
    cycle <= cycle + 1;
  end
endmodule
