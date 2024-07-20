module secuencia_notas (
input wire [4:0] i,
output reg [15:0] nota 
);

localparam [15:0] nota1 = 16'd523,
                nota2 = 16'd261,
                nota3 = 16'd293,
                nota4 = 16'd329,
                nota5 = 16'd349,
                nota6 = 16'd392,
                nota7 = 16'd440,
                nota8 = 16'd493,
                nota9 = 16'd466,    
                nota_muda = 16'd0;

//Frecuencia clock EDU-FPGA 
parameter CLOCK_FREQUENCY = 12000000;

always @(*)begin
 case (i) 
  0: nota = CLOCK_FREQUENCY / (nota2 * 2);
  1: nota = CLOCK_FREQUENCY / (nota2 * 2);
  2: nota = CLOCK_FREQUENCY / (nota3 * 2);
  3: nota = CLOCK_FREQUENCY / (nota2 * 2);
  4: nota = CLOCK_FREQUENCY / (nota5 * 2);
  5: nota = CLOCK_FREQUENCY / (nota4 * 2);
  6: nota = CLOCK_FREQUENCY / (nota4 * 2);

  7: nota = CLOCK_FREQUENCY / (nota2 * 2);
  8: nota = CLOCK_FREQUENCY / (nota2 * 2);
  9: nota = CLOCK_FREQUENCY / (nota3 * 2);
  10: nota = CLOCK_FREQUENCY / (nota2 * 2);
  11: nota = CLOCK_FREQUENCY / (nota6 * 2);
  12: nota = CLOCK_FREQUENCY / (nota5 * 2);
  13: nota = CLOCK_FREQUENCY / (nota5 * 2);

  14: nota = CLOCK_FREQUENCY / (nota2 * 2);
  15: nota = CLOCK_FREQUENCY / (nota2 * 2);
  16: nota = CLOCK_FREQUENCY / (nota1 * 2);
  17: nota = CLOCK_FREQUENCY / (nota7 * 2);
  18: nota = CLOCK_FREQUENCY / (nota5 * 2);
  19: nota = CLOCK_FREQUENCY / (nota4 * 2);
  20: nota = CLOCK_FREQUENCY / (nota3 * 2);
  21: nota = CLOCK_FREQUENCY / (nota3 * 2);

  22: nota = CLOCK_FREQUENCY / (nota9 * 2);
  23: nota = CLOCK_FREQUENCY / (nota9 * 2);
  24: nota = CLOCK_FREQUENCY / (nota7 * 2);
  25: nota = CLOCK_FREQUENCY / (nota5 * 2);
  26: nota = CLOCK_FREQUENCY / (nota6 * 2);
  27: nota = CLOCK_FREQUENCY / (nota5 * 2);
  28: nota = CLOCK_FREQUENCY / (nota5 * 2);

  29: nota = nota_muda;
  default nota = nota_muda;
 endcase
end

endmodule