// File: src/register.sv
// Module: register
// Purpose: 8-bit register with synchronous reset and write

module register (
    input logic clk,
    input logic reset,
    input logic write,
    input logic [7:0] data_in,
    output logic [7:0] data_out
);
    
    always_ff @(posedge clk) begin
        if (reset) begin
            data_out <= 8'b0;
        end else if (write) begin
            data_out <= data_in;
        end
    end
endmodule