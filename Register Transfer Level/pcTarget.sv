module pcTarget #(
    parameter DATA_WIDTH = 32
)(
    input logic [DATA_WIDTH-1:0]        pc,
    input logic [DATA_WIDTH-1:0]        ImmExtend,
    output logic [DATA_WIDTH-1:0]       pcTargeted
);

assign pcTargeted = pc +ImmExtend;

endmodule
