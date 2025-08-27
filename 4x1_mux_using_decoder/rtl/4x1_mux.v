module mux_4to1_using_decoder (
    input wire [3:0] data_in, 
    input wire [1:0] select,   
    output wire out           
);
    wire [3:0] decoded;  

        decoder_2to4 decoder (
        .select(select),
        .decoded(decoded)
    );

    // Tri-state buffers
    assign out = (decoded[0]) ? data_in[0] :
                (decoded[1]) ? data_in[1] :
                (decoded[2]) ? data_in[2] :
                (decoded[3]) ? data_in[3] : 1'bz;  

endmodule
