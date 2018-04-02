`default_nettype none

// check connections to VGA adapter on https://github.com/Obijuan/MonsterLED/wiki

module top (
            input  wire       clk,       // System clock.

            output wire       hsync,     // Horizontal sync out signal (pin 13 male monitor).
            output wire       vsync,     // Vertical sync out signal (pin 14 male monitor).
            output wire [2:0] rgb,       // Red/Green/Blue VGA signal (pin 1 male monitor).

            input  wire       sw1,       // board switch 1
            input  wire       sw2       // board switch 2
            //output wire [7:0] leds       // board leds
        );

    // wires for current pixel
    wire [9:0] x, y;

    // avoid warning if we don't use led
    //assign leds = 8'b0;

    // Signals from VGA controller.
    wire activevideo;
    wire px_clk;

    // Instanciate 'vga_controller' module.
    vga_sync vga_sync0 (
        // input:
        .clk(clk),              // Input clock: 12MHz.
        // output:
        .hsync(hsync),            // Horizontal sync out
        .vsync(vsync),            // Vertical sync out

        .x_px(x),             // X position for actual pixel
        .y_px(y),             // Y position for actual pixel
        .activevideo(activevideo),      // Video active

        .px_clk(px_clk)            // Pixel clock
    );

    wire pixel_on;

    image image0 (
        // read ports
        .clk( px_clk ),
        .row( y[9:3] ),
        .col( x[9:3] ),
        .data( pixel_on ),
        // write ports
        //.clkW( px_clk ), // NOT NEEDED ANY MORE?
        .rowW( row2 ),
        .dataW( data2 )
    );

    assign rgb = {pixel_on,pixel_on,pixel_on};

    parameter N = 20; // for the prescaler
    parameter SEED = 41'b10000000000000000000000000000000000000000; // seed for first line
    parameter RULE = 126;

    //-- Reloj principal (prescalado)
    wire clk_base;

    //-- Instanciar el prescaler
    prescaler #(.N( N )) PRESCALER ( .clk_in( px_clk ), .clk_out( clk_base ) );

    // wire clk_sw;
    // prescaler #(.N( 20 )) PRESCALER2 ( .clk_in( clk ), .clk_out( clk_sw ) );

    // reg [7:0] reg_rule;

    // always @( posedge clk_sw )
    //   reg_rule <= reg_rule + ( sw1 ? 1 : 0 ) - ( sw2 ? 1 : 0 );

    // assign w_rule = (sel == 0) ? RULE : reg_rule;

    wire [7:0] w_rule;
    assign w_rule = RULE;

    //-- Instanciar el Inicializador
    wire sel;
    init INIT ( clk_base, sel );

    //-- Cable salida del cellAutomaton (CA) al registro R
    wire [79:0] rin;
    wire [79:0] data;

    // mux2-1 (saca SEED si sel=0, sino la salida del registro (detras del Cellular Automaton))
    assign data = (sel == 0) ? SEED : rout;

    automaton #(.WIDTH(80)) AUTOMATON ( .in(data), .rule(w_rule), .out(rin));

    //-- Registro R de WIDTH bits
    reg [79:0] rout;
    reg [6:0] row = 1; // TODO: is the 1 synthesized or ignored?
    
    always @(posedge(clk_base))
    begin
        // TODO: for some reason, if I start at row 1 ( ? 1 : ), image stay stable... Why is that?
        row <= (row == 59) ? 1 : ( row + 1 );
        rout <= rin; // Pasamos la salida del Cellular Automaton a la salida del registro en cada positive edge
    end

    // Double FF to cross clock domain from clk_base (slow) -> px_clk (fast)
    reg [79:0] data1, data2;
    reg [6:0] row1,row2 = 0;

    always @(posedge(px_clk))
    begin
        row1 <= row;
        row2 <= row1;

        data1 <= data;
        data2 <= data1;
    end


endmodule
