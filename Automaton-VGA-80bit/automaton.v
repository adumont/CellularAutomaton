`default_nettype none

module automaton #(parameter WIDTH = 8)
  ( input wire [WIDTH-1:0] in,
    input wire [7:0] rule,
    output wire [WIDTH-1:0] out
  );

  genvar i;
  generate
    for (i=0; i<WIDTH; i=i+1)
    begin : automaton_cell
      automaton_cell acell ( { in[ (i==0) ? WIDTH-1 : (i-1) ], in[i], in[ ( i == (WIDTH-1) ) ? 0 : i+1 ] }, rule, out[i] );
    end
  endgenerate

endmodule

module automaton_cell(in, rule, out);
    input wire[2:0] in;
    input wire[7:0] rule;

    output wire out;

    assign out = rule[in];
endmodule
