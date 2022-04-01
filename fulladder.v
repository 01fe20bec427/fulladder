module full_adder(sum,carry,a,b,c);
output wire sum,carry;
input wire a,b,c;
assign sum=a^b^c;
assign carry=(a&b)|(b&c)|(c&a);
endmodule

//testbench
module full_adder_tb;
reg a,b,c;
wire sum,carry;

full_adder UUT (.a(a),.b(b),.c(c),.sum(sum),.carry(carry));

initial 
begin
$monitor($time,"a=%b b=%b c=%b sum=%b carry=%b",a,b,c,sum,carry);

a=0;
b=0;
c=0;
#10;

a=0;
b=0;
c=1;
#10;

a=0;
b=1;
c=0;
#10;

a=0;
b=1;
c=1;
#10;

a=1;
b=0;
c=0;
#10;

a=1;
b=0;
c=1;
#10;

a=1;
b=1;
c=0;
#10;

a=1;
b=1;
c=1;
#10;
end 
endmodule
