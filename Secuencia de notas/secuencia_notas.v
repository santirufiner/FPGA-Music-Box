module secuencia_notas(
input wire [4:0] i,
output reg [15:0] nota 
);

always @(*)begin
 case (i) 
  0: nota = 16'd261;
  1: nota = 16'd261;
  2: nota = 16'd293;
  3: nota = 16'd261;
  4: nota = 16'd349;
  5: nota = 16'd329;
  6: nota = 16'd261;
  7: nota = 16'd261;
  8: nota = 16'd293;
  9: nota = 16'd261;
  10: nota = 16'd392;
  11: nota = 16'd349;
  12: nota = 16'd261;
  13: nota = 16'd261;
  14: nota = 16'd523;
  15: nota = 16'd440;
  16: nota = 16'd349;
  17: nota = 16'd329;
  18: nota = 16'd293;
  19: nota = 16'd466;
  20: nota = 16'd466;
  21: nota = 16'd440;
  22: nota = 16'd349;
  23: nota = 16'd392;
  24: nota = 16'd349;
 endcase
end

endmodule