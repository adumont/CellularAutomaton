`default_nettype none

module pixels (
                input wire [9:0]  x,           // X position actual pixel
                input wire [9:0]  y,           // Y position actual pixel
                //input wire        activevideo, // Active video
                input wire        clk,         // Pixel clock
                output wire [2:0]  color        // pixel color
                );

    wire data;

    image image0 (
        .clk( clk ),
        .row( y[9:3] ),
        .col( x[9:3] ),
        .data( data )
    );

    assign color = {data,data,data};
endmodule
