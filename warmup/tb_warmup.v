// Testbench for warmup adder_demo
// Shifts in A=240, B=256 → A+B=496 → success should go high
`timescale 1ns/1ps

module tb_warmup;
    reg  clk, rst_n, en, A, B;
    wire S;

    adder_demo dut (
        .clk(clk), .rst_n(rst_n), .A(A), .B(B), .S(S), .en(en)
    );

    // Clock: 10ns period
    initial clk = 0;
    always #5 clk = ~clk;

    // Shift in 8 bits MSB-first for a given value
    task shift_byte(input [7:0] val_a, input [7:0] val_b);
        integer i;
        begin
            for (i = 7; i >= 0; i = i - 1) begin
                A  = val_a[i];
                B  = val_b[i];
                en = 1;
                @(posedge clk);
            end
            en = 0;
        end
    endtask

    // VCD dump
    initial begin
        $dumpfile("warmup_sim.vcd");
        $dumpvars(0, tb_warmup);
    end

    initial begin
        // Reset
        rst_n = 0; en = 0; A = 0; B = 0;
        @(posedge clk);
        @(posedge clk);
        rst_n = 1;
        @(posedge clk);

        // Test 1: A=240 (0xF0), B=256 → but B is 8-bit, max 255
        // 240 + 256 = 496, but shift registers are 8-bit, so B wraps to 0
        // Let's use: A=241, B=255 → 241+255=496 ✓
        shift_byte(8'd241, 8'd255);

        // Wait a few cycles for output to settle
        repeat(4) @(posedge clk);

        if (S === 1'b1)
            $display("PASS: success=1 (A+B == 496)");
        else
            $display("FAIL: success=%b (expected 1)", S);

        // Test 2: A=100, B=100 → 200 ≠ 496, success should be 0
        rst_n = 0;
        @(posedge clk);
        rst_n = 1;
        @(posedge clk);

        shift_byte(8'd100, 8'd100);
        repeat(4) @(posedge clk);

        if (S === 1'b0)
            $display("PASS: success=0 (A+B != 496)");
        else
            $display("FAIL: success=%b (expected 0)", S);

        repeat(2) @(posedge clk);
        $finish;
    end
endmodule
