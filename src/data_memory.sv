// File: src/data_memory.sv
// Module: data_memory
// Purpose: 8-bit dual-port RAM with read and write ports

module data_memory(
    input logic clk,
    input logic reset,
    // Port A: Read port
    input logic [7:0] read_address,
    output logic [7:0] data_out,
    // Port B: Write port
    input logic write,
    input logic [7:0] write_address,
    input logic [7:0] data_in
);
    logic [7:0] memory [0:255];

    data_out = memory[read_address];

    always_ff @(posedge clk) begin
        if (reset) begin
            memory <= '{default: 8'b0};
        end else if (write) begin
            memory[write_address] <= data_in;
        end
    end
endmodule