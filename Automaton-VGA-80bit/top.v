`default_nettype none

// check connections to VGA adapter on https://github.com/Obijuan/MonsterLED/wiki

module top (
        input  wire       clk,    // System clock.

        output wire       hsync,  // Horizontal sync out signal
        output wire       vsync,  // Vertical sync out signal
        output wire [2:0] rgb,    // Red/Green/Blue VGA signal

        input  wire       sw1,    // board button 1
        input  wire       sw2,    // board button 2
        output wire [7:0] leds    // board leds
    );

    // avoid warning if we don't use led
    assign leds = 8'b 0000_0000;

    // Signals from VGA sync
    wire px_clk;
    wire [9:0] x, y;
    wire hsync1, vsync1, activevideo1;

    // Instanciate 'vga_controller' module.
    vga_sync vga_sync0 (
        // input:
        .clk(clk),                  // Input clock: 12MHz

        // output:
        .hsync(hsync1),              // Horizontal sync out
        .vsync(vsync1),              // Vertical sync out

        .x_px(x),                   // X position for actual pixel
        .y_px(y),                   // Y position for actual pixel
        .activevideo(activevideo1),  // Video active
        .px_clk(px_clk)             // Pixel clock
    );

    // Stage 1
    // - we get 'pixel_on' from BRAM (is pixel on?)
    // - we buffer hsync/vsync though a register

    // buffer hsync/vsync for 1 clock cycle
    wire hsync2, vsync2, activevideo2;
    register #(.W(3)) reg1(
        .clk( px_clk ),
        .in(  {hsync1, vsync1, activevideo1} ),
        .out( {hsync2, vsync2, activevideo2} )
    );

    reg [6:0] row = 0;
    wire [79:0] data;

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
    assign rgb2 = activevideo2 ? {pixel_on, pixel_on, pixel_on} : 3'b000;

    // Stage 2
    // - we buffer hsync/vsync and rgb signal though a register to keep them synchronized on px_clk posedge

    // sync hsync/vsync with rgb signal on px_clock posedge
    register #(.W(5)) reg2(
        .clk( px_clk ),
        .in(  {hsync2, vsync2, rgb2} ),
        .out( {hsync , vsync , rgb } )
    );

    ///////////////////////////////////////////////////
    // Automaton's part of the circuit                 //
    ///////////////////////////////////////////////////
    // - clock is prescaled from px_clk --> clk_base
    // - updates BRAM

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

    // mux2-1 (saca SEED si sel=0, sino la salida del registro (detras del Cellular Automaton))
    assign data = (sel == 0) ? SEED : rout;

    automaton #(.WIDTH(80)) AUTOMATON ( .in(data), .rule(w_rule), .out(rin));

    //-- Registro R de WIDTH bits
    reg [79:0] rout;
    
    always @(posedge(clk_base))
    begin
        row <= (row == 59) ? 0 : ( row + 1 );
        rout <= rin; // Pasamos la salida del Cellular Automaton a la salida del registro en cada positive edge
    end

endmodule
