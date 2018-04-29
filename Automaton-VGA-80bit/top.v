`default_nettype none

// check connections to VGA adapter on https://github.com/Obijuan/MonsterLED/wiki

module top (
            input  wire       clk,       // System clock.

            output wire       hsync,     // Horizontal sync out signal (pin 13 male monitor).
            output wire       vsync,     // Vertical sync out signal (pin 14 male monitor).
            output wire [2:0] rgb,       // Red/Green/Blue VGA signal (pin 1 male monitor).

            input  wire       sw1,       // board switch 1
            input  wire       sw2,       // board switch 2
            output wire [7:0] leds       // board leds
        );

    // wires for current pixel
    wire [9:0] x, y;

    // avoid warning if we don't use led
    assign leds = 8'b 0000_0000;

    // Signals from VGA controller.
    wire activevideo;
    wire px_clk;

    // Instanciate 'vga_controller' module.
    vga_sync vga_sync0 (
        // input:
        .clk(clk),                  // Input clock: 12MHz

        // output:
        .hsync(hsync1),              // Horizontal sync out
        .vsync(vsync1),              // Vertical sync out

        .x_px(x),                   // X position for actual pixel
        .y_px(y),                   // Y position for actual pixel
        .activevideo(activevideo),  // Video active
        .px_clk(px_clk)             // Pixel clock
    );

    wire hsync1, vsync1;
    wire hsync2, vsync2;

    // buffer hsync/vsync for 1 clock cycle
    register #(.W(2)) reg1(
        .clk( px_clk ),
        .in(  {hsync1,vsync1} ),
        .out( {hsync2,vsync2} )
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
        .rowW( row ),
        .dataW( data )
    );

    wire [2:0] rgb2;
    assign rgb2 = activevideo ? {pixel_on, pixel_on, pixel_on} : 3'b000;

    // sync hsync/vsync with rgb signal on px_clock posedge
    register #(.W(5)) reg2(
        .clk( px_clk ),
        .in(  {hsync2, vsync2, rgb2} ),
        .out( {hsync , vsync , rgb } )
    );

    parameter N = 19; // for the prescaler
    parameter SEED = 41'b10000000000000000000000000000000000000000; // seed for first line
    parameter RULE = 30;

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
    reg [6:0] row = 0;
    
    always @(posedge(clk_base))
    begin
        row <= (row == 59) ? 0 : ( row + 1 );
        rout <= rin; // Pasamos la salida del Cellular Automaton a la salida del registro en cada positive edge
    end

endmodule
