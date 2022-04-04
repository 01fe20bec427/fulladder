module full_adder(sum,carry,a,b,c);
output wire sum,carry;
input wire a,b,c;
assign sum=a^b^c;
assign carry=(a&b)|(b&c)|(c&a);
endmodule
