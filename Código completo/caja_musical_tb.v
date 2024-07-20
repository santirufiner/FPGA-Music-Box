//-------------------------------------------------------------------
//-- caja_musical.v
//-- Testbench
//-------------------------------------------------------------------
//-- Mora, Nicolas; Rufiner, Santiago
//-- GPL license
//-------------------------------------------------------------------

`default_nettype none
`define DUMPSTR(x) `"x.vcd`"
`timescale 1 ns / 1 ps

module caja_musical_tb();

reg clk;       
wire parlante;
wire [4:0] indice_nota;
wire [15:0] freq;

caja_musical uut (
    .clk(clk),
    .parlante(parlante)
);

//-- Clock signal. 12 MHz = 83.33 ns period
initial begin
    clk = 0;
    forever #41.67 clk = ~clk;
end

initial begin

    //-- File where to store the simulation results
    $dumpfile(`DUMPSTR(`VCD_OUTPUT));
    $dumpvars(0, caja_musical_tb);

     //-- Test
    $display("Time\t\tParlante\t\tIndice Nota\t\tFrecuencia");

    #250000000;

    $finish;
end

endmodule