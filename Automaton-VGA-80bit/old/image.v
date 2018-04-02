`default_nettype none

module image (
    input clk,
    input wire [6:0] row,
    input wire [6:0] col,
    output reg data
    // Write Ports
    // input clkW,
    // input wire [6:0] rowW,
    // input wire [6:0] colW,
    // input wire we, dataW
     );

  // 60 rows of 80 bits
  reg [79:0] rom [0:59];

  parameter ROMFILE = "image.rom";

  initial begin
    $readmemb(ROMFILE, rom);
  end

  // Read logic
  always @(negedge clk) begin
    data <= rom[row][col];
  end

  // Write logic
  // always @(posedge clkW) begin
  //   if( we )
  //   begin
  //     rom[rowW][colW] <= dataW;
  //   end
  // end

endmodule
