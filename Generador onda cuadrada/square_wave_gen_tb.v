//-------------------------------------------------------------------
//-- square_wave_gen.v
//-- Testbench
//-------------------------------------------------------------------
//-- Mora, Nicolas; Rufiner, Santiago
//-- GPL license
//-------------------------------------------------------------------

`default_nettype none
`define DUMPSTR(x) `"x.vcd`"
`timescale 1 ns / 1 ps
// timescale <time_unit> / <time_precision>

module square_wave_gen_tb();

//-- Simulation time: 4.41ms (4410000 * 1ns)
parameter DURATION = 4410000;

//-- Clock signal. 12 MHz = 83.33 ns period
reg clk = 0;
always #41.67 clk = ~clk;

//-- Frequencies for testing
reg [15:0] freq;
wire sq_wave;

square_wave_gen UUT (
    .clk(clk),
    .freq(freq),
    .sq_wave(sq_wave)
);

initial begin
    
    //-- File where to store the simulation results
    $dumpfile(`DUMPSTR(`VCD_OUTPUT));
    $dumpvars(0, square_wave_gen_tb);

    //-- Test
    $display("Frecuencia 440 Hz");
    freq = 16'd440;
    #2270000; // 2.27 ms

    $display("Frecuencia 880 Hz");
    freq = 16'd880; 
    #1140000; // 1.14 ms

    $display("Frecuencia 1000 Hz");
    freq = 16'd1000;
    #1000000; // 1 ms

    #(DURATION - 4410000) $display("End of simulation");
    $finish;
end

endmodule
