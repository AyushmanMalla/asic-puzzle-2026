module shift_register (
    input  wire       clk,
    input  wire        rst_n,
    input  wire        en,
    input  wire        serial_in,
    output reg  [7:0]  parallel_out
);
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            parallel_out <= 8'b0;
        else if (en)
            parallel_out <= {parallel_out[6:0], serial_in}; // effectively passing MSB first per clock cycle, in 8 cycles, 
                                                            // you have the full 8-bit value valid for exactly one clock cycle,
                                                            // after that the value decays to 0 in subsequent cycles.
    end
endmodule

//cycle 1 -> init = 0000_0000, in = 1, final = 0000_0001 - 0x01
//cycle 2 -> init = 0000_0001, in = 1, final = 0000_0011 - 0x03
//cycle 3 -> init = 0000_0011, in = 1, final = 0000_0111 - 0x07
//cycle 4 -> init = 0000_0111, in = 1, final = 0000_1111 - 0x0f
//cycle 5 -> init = 0000_1111, in = 0, final = 0001_1110 - 0x1e
//cycle 6 -> init = 0001_1110, in = 0, final = 0011_1100 - 0x3c

module adder8 (
    input  wire [7:0] a,
    input  wire [7:0] b,
    output wire [8:0] sum
);
    assign sum = a + b;
endmodule

module comparator496 (
    input  wire [8:0] val,
    output wire       eq
);
    assign eq = (val == 9'd496);
endmodule

module adder_demo (
    input  wire clk,
    input  wire rst_n,
    input  wire A,
    input  wire B,
    output wire S,
    input  wire en
);
    wire [7:0] a_reg, b_reg;
    wire [8:0] sum;

    shift_register sr_a (
        .clk(clk), .rst_n(rst_n), .en(en),
        .serial_in(A), .parallel_out(a_reg)
    );

    shift_register sr_b (
        .clk(clk), .rst_n(rst_n), .en(en),
        .serial_in(B), .parallel_out(b_reg)
    );

    adder8 add0 (
        .a(a_reg), .b(b_reg), .sum(sum)
    );

    comparator496 cmp0 (
        .val(sum), .eq(S)
    );
endmodule
