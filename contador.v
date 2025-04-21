module Contador (
    input  wire clk,
    input  wire rst_n,

    input  wire acrescer,
    input  wire decrecer,

    output reg [7:0] saida
);

    // Insira seu código aqui
    always @(posedge clk or negedge rst_n) begin
      if(rst_n === 0) begin
        saida = 16'h6A;
      end
      else begin
        if(acrescer !== decrecer) begin
            if(acrescer === 1) begin
                saida = saida + 1;
            end
            else begin
                saida = saida - 1;
            end
        end
        else begin
            saida = saida;
        end
      end
    end

endmodule
