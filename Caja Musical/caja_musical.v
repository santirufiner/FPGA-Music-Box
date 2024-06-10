module caja_musical(
    input wire clk,
    output wire parlante
);

wire [15:0] freq; 
reg [4:0] indice_nota;   
reg [31:0] duracion_nota; 
reg [31:0] cont;     

secuencia_notas sec(
    .i(indice_nota),
    .nota(freq)
);

square_wave_gen sq(
    .clk(clk),
    .freq(freq),
    .sq_wave(parlante)
);

initial begin
    indice_nota = 0;
    duracion_nota = 120000; // 0.01 segundos (1 ms) de duración
    cont = 0;
end

always @(posedge clk) begin
    if (cont >= duracion_nota) begin
        cont <= 0;
        if (indice_nota < 24) begin
            indice_nota <= indice_nota + 1;
        end else begin
            indice_nota <= 0; // Reinicia la secuencia (arranca devuelta el feli cumple)
        end
    end else begin
        cont <= cont + 1;
    end
end

endmodule