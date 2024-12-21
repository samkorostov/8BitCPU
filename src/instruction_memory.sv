// File: src/instruction_memory.sv
// Module: instruction_memory
// Purpose: 8-bit RAM with read port

// TODO: Could possibly use the same module as data_memory?

module instruction_memory (
    input logic clk,
    input logic reset,
    input logic [7:0] read_address,
    output logic [7:0] data_out
);
    logic [7:0] memory [0:255];
    // TODO: Implement loading of instruction memory.
    always_ff @(posedge clk) begin
        if (reset) begin
            memory <= '{default: 8'b0};
        end else begin
            data_out <= memory[read_address];
        end
    end

endmodule