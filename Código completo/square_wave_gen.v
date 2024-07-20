module square_wave_gen (
    input clk,             // Clock de 12 MHz
    input [15:0] freq,     // Frecuencia de entrada (16 bits representan freq de hasta 2^16 = 65.5kHz)
    output wire sq_wave    // Señal cuadrada de salida
);

reg [31:0] cont; // Contador de 32 bits para manejar el umbral de ciclos de reloj calculado
reg state;

initial begin
    cont = 0;
    state = 0;
end

always @(posedge clk) begin
    if (cont >= freq) begin
        cont <= 0;
        state <= ~state;
    end 
    else begin
        cont <= cont + 1;
    end 
end

assign sq_wave = state;

endmodule