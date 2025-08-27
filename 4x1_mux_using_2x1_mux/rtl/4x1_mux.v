module mux_4x1_using_2x(
	input I0,I1,I2,I3,S1,S0,
	output Y
);
wire w1,w2;

mux_2x1 mux1(.I0(I0),.I1(I1),.S0(S0),.Y(w1));
mux_2x1 mux2(.I0(I2),.I1(I3),.S0(S0),.Y(w2));
mux_2x1 mux3(.I0(w1),.I1(w2),.S0(S1),.Y(Y));
endmodule
