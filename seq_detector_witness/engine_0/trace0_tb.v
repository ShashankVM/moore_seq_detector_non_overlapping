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
    // UUT.$auto$async2sync.\cc:171:execute$281  = 1'b0;
    // UUT.$auto$async2sync.\cc:171:execute$283  = 1'b0;
    // UUT.$auto$async2sync.\cc:171:execute$285  = 1'b0;
    // UUT.$auto$async2sync.\cc:171:execute$287  = 1'b0;
    // UUT.$auto$async2sync.\cc:171:execute$289  = 1'b0;
    // UUT.$auto$async2sync.\cc:171:execute$291  = 1'b0;
    // UUT.$auto$async2sync.\cc:171:execute$293  = 1'b0;
    // UUT.$auto$async2sync.\cc:171:execute$295  = 1'b0;
    // UUT.$auto$async2sync.\cc:171:execute$297  = 1'b0;
    // UUT.$auto$async2sync.\cc:171:execute$299  = 1'b0;
    // UUT.$auto$async2sync.\cc:171:execute$301  = 1'b0;
    // UUT.$auto$async2sync.\cc:171:execute$303  = 1'b0;
    // UUT.$auto$async2sync.\cc:171:execute$305  = 1'b0;
    // UUT.$verific$i32$seq_detector.\sv:42$79  = 1'b0;
    UUT._witness_.anyinit_verific_detect_out_reg_seq_detector_sv_30_68 = 1'b0;
    UUT._witness_.anyinit_verific_state_reg_seq_detector_sv_12_55 = 5'b00000;

    // state 0
    PI_reset = 1'b1;
    PI_seq_in = 1'b0;
  end
  always @(posedge clock) begin
    // state 1
    if (cycle == 0) begin
      PI_reset <= 1'b0;
      PI_seq_in <= 1'b1;
    end

    // state 2
    if (cycle == 1) begin
      PI_reset <= 1'b0;
      PI_seq_in <= 1'b0;
    end

    // state 3
    if (cycle == 2) begin
      PI_reset <= 1'b0;
      PI_seq_in <= 1'b1;
    end

    // state 4
    if (cycle == 3) begin
      PI_reset <= 1'b0;
      PI_seq_in <= 1'b1;
    end

    // state 5
    if (cycle == 4) begin
      PI_reset <= 1'b0;
      PI_seq_in <= 1'b0;
    end

    // state 6
    if (cycle == 5) begin
      PI_reset <= 1'b0;
      PI_seq_in <= 1'b0;
    end

    // state 7
    if (cycle == 6) begin
      PI_reset <= 1'b0;
      PI_seq_in <= 1'b0;
    end

    genclock <= cycle < 7;
    cycle <= cycle + 1;
  end
endmodule
