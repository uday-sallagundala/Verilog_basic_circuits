module ripple_carry_adder_4bit(
	input [3:0] a,
	input [3:0] b,
	input cin,
	output [3:0] sum,
	output cout
);
wire[2:0] carry;

//first full adder
full_adder fa0(.a(a[0]),
		.b(b[0]),
		.cin(cin),
		.sum(sum[0]),
		.cout(carry[0]));
full_adder fa1(.a(a[1]),
		.b(b[1]),
		.cin(carry[0]),
		.sum(sum[1]),
		.cout(carry[1]));
full_adder fa2(.a(a[2]),
		.b(b[2]),
		.cin(carry[1]),
		.sum(sum[2]),
		.cout(carry[2]));
full_adder fa3(.a(a[3]),
		.b(b[3]),
		.cin(carry[2]),
		.sum(sum[3]),
		.cout(cout));
endmodule

module full_adder(
	input a,b,cin,
	output sum,cout
);
	assign sum=a^b^cin;
	assign cout=(a&b) | (b&cin) | (a&cin);
endmodule
