module decoder_2to4 (
    input wire [1:0] select,   // 2-bit select input
    output reg [3:0] decoded   // 4-bit decoded output
);

    always @(*) begin
        case(select)
            2'b00: decoded = 4'b0001;  
            2'b01: decoded = 4'b0010;  
            2'b10: decoded = 4'b0100;  // select 10 -> line 2 active
            2'b11: decoded = 4'b1000;  // select 11 -> line 3 active
            default: decoded = 4'b0000; // Default (should not occur)
        endcase
    end

endmodule
