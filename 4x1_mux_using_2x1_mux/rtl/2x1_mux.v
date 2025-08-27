module mux_2x1(
	input I0,I1,S0,
	output Y
);
	assign Y=(I1&S0) | (I0&(~S0));
endmodule
