module automaton #(parameter WIDTH = 8) 
  ( input wire clk,           //-- IN: Reloj de la FPGA
    output wire [WIDTH-1:0] data    //-- OUT: Salida del Cellular Automaton --> a los leds
  );

  //-- Bits para el prescaler
  parameter N = 23;
  parameter SEED = 8'b00000001; // 1a linea (semilla) del Cellular Automaton
  parameter RULE = 129;
  
  wire [7:0] rule = RULE;

  //-- Reloj principal (prescalado)
  wire clk_base;

  //-- Instanciar el prescaler
  prescaler #(.N(N)) PRES ( .clk_in(clk), .clk_out(clk_base) );

  //-- Instanciar el Inicializador
  wire sel;
  init INIT ( clk_base, sel );

  // ver Diseño del T13  --> inicializador --> selector (mux2-1)

  //-- Cable salida del cellAutomaton (CA) al registro R
  wire [WIDTH-1:0] rin;

  // mux2-1 (saca SEED si sel=0, sino la salida del registro (detras del Cellular Automaton))
  assign data = (sel == 0) ? SEED : rout;

  cellAutomaton #(.WIDTH(WIDTH)) CA ( .in(data), .rule(rule), .out(rin));

  //-- Registro R de WIDTH bits
  reg [WIDTH-1:0] rout;
  always @(posedge(clk_base))
    rout <= rin; // Pasamos la salida del Cellular Automaton a la salida del registro en cada positive edge

endmodule

module cellAutomaton #(parameter WIDTH = 8) 
  ( input wire [WIDTH-1:0] in,
    input wire [7:0] rule,
    output wire [WIDTH-1:0] out
  );

  //-- Apply the Cellular Automaton rule (compute "next line")
  // block B0( { in[7], in[0], in[1] }, rule, out[0] );
  // block B1( { in[0], in[1], in[2] }, rule, out[1] );
  // block B2( { in[1], in[2], in[3] }, rule, out[2] );
  // block B3( { in[2], in[3], in[4] }, rule, out[3] );
  // block B4( { in[3], in[4], in[5] }, rule, out[4] );
  // block B5( { in[4], in[5], in[6] }, rule, out[5] );
  // block B6( { in[5], in[6], in[7] }, rule, out[6] );
  // block B7( { in[6], in[7], in[0] }, rule, out[7] );

  genvar i;
  generate
    for (i=0; i<WIDTH; i=i+1)
    begin : automaton_cell
      block Bi( { in[ (i==0) ? WIDTH-1 : (i-1) ], in[i], in[ ( i == (WIDTH-1) ) ? 0 : i+1 ] }, rule, out[i] );
      // case (i)
      //   0:  
      //     block B0( { in[WIDTH-1], in[0], in[1] }, rule, out[0] );
      //   WIDTH-1:
      //     block BW( { in[WIDTH-2], in[WIDTH-1], in[0] }, rule, out[WIDTH-1] );
      //   default: 
      //     block Bi( { in[i-1], in[i], in[i+1] }, rule, out[i] );
      // endcase
    end 
  endgenerate

endmodule