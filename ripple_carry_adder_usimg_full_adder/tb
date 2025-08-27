module ripple_carry_adder_4bit_tb();
	reg [3:0] a;
	reg [3:0] b;
	reg cin;
	wire [3:0] sum;
	wire cout;
	integer i,j;
ripple_carry_adder_4bit DUT(a,b,cin,sum,cout);

initial begin
	//test case01 - 5+3+0
	a=4'b0101;
	b=4'b0011;
	cin=1'b0;
	#10;
	$display("Input a=%b,b=%b,cin=%b, Output sum=%B,cout=%B",a,b,cin,sum,cout);
	
	//test case-02 - 15+1+1
	a=4'b1111;
	b=4'b0001;
	cin=1'b1;
	#10;
	$display("Input a=%b,b=%b,cin=%b, Output sum=%B,cout=%B",a,b,cin,sum,cout);
	
	$finish;
	end
endmodule
