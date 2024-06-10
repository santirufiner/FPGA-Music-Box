module square_wave_gen(
    input clk,             // Clock de 12 MHz
    input [15:0] freq,     // Frecuencia de entrada (16 bits representan freq de hasta 2^16 = 65.5kHz)
    output reg sq_wave     // Señal cuadrada de salida
);

    // Frecuencia clock EDU-FPGA 
    localparam CLOCK_FREQUENCY = 12000000;

    reg [31:0] cont;   // Contador de 32 bits para manejar el umbral calculado
    reg state;
    wire [31:0] toggle = CLOCK_FREQUENCY / (2 * freq); // Umbral para alternar la señal (Y si freq =0?)

     initial begin
        cont = 0;
        state = 0;
        sq_wave = 0;
    end

        always @(posedge clk) begin
            if (cont >= toggle) begin
                cont <= 0;
                state <= ~state;
            end 
            else begin
                cont <= cont + 1;
            end
            sq_wave <= state;
            $display("Time: %t | clk: %b | freq: %d | cont: %d | toggle: %d | state: %b | sq_wave: %b", 
                 $time, clk, freq, cont, toggle, state, sq_wave);
        end

endmodule