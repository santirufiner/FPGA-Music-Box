module caja_musical (
    input wire clk,
    input wire reset,
    input wire stop,
    output wire parlante
);

reg [4:0] indice_nota;
reg [4:0] nota_maxima;     
reg [31:0] duracion_nota; 
wire [15:0] freq;         
reg [31:0] cont;
reg pausar;
reg pausa_prev;

// Contadores iniciales
initial begin
    cont = 0;
    indice_nota = 0;
    nota_maxima = 29;
    duracion_nota = 6000000; // 0.5 segundos de duración
    pausar = 0; // Inicialmente NO en pausa
    pausa_prev = 0;
end


// Instancias del secuenciador de notas y el generador de onda cuadrada 
secuencia_notas sec(
    .i(indice_nota),
    .nota(freq)
);

square_wave_gen sq(
    .clk(clk),
    .freq(freq),
    .sq_wave(parlante)
);


always @(posedge clk or negedge reset) begin
    if (!reset) begin
        cont <= 0;
        indice_nota <= nota_maxima; // Inicia desde la nota muda
        pausar <= 0; // Salimos de la pausa en un reset
        pausa_prev <= 0;
    end else begin
        if (!stop && pausa_prev) begin
            pausar <= ~pausar;
        end

        // Siempre actualiza el estado anterior de la pausa (esto da 1 ya q el botón sin apretar de stop es = 1)
        pausa_prev <= stop;

        if (pausar) begin
            if (indice_nota != nota_maxima) begin
                indice_nota <= nota_maxima; // Nota muda
                cont <= 0;
            end else begin
                cont <= cont; // Mantengo el contador para no avanzar
            end
        end else if (cont >= duracion_nota) begin
            cont <= 0;
            if (indice_nota < nota_maxima) begin
                indice_nota <= indice_nota + 1;
            end else begin
                indice_nota <= 0; // Se reinicia la secuencia del feliz cumple
            end
        end else begin
            cont <= cont + 1;
        end
    end
end

endmodule