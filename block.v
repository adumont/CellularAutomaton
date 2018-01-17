module block(in, rule, out);
    input wire[2:0] in;
    input wire[7:0] rule;

    output wire out;

    assign out = rule[in];
endmodule

