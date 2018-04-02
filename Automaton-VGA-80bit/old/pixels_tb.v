module pixels_tb();

    reg[9:0] row = 0;
    reg[9:0] col = 0;

	//-- Registro para generar la señal de reloj
	reg clk = 0;
	//-- Generador de reloj. Periodo 2 unidades
	always #1 clk = ~clk;

	wire [2:0] color;

	//-- Instanciar el componente (N=1 aqui, segundos)
	//automaton #(.WIDTH(WIDTH)) myCA ( .clk(clk), .data(data) );
	pixels pixels0 (
		.clk(clk),
		.x(col),
		.y(row),
		//.activevideo( 1'b1 ),
		.color(color)
		);

	//-- Proceso al inicio
	initial begin

		//-- Fichero donde almacenar los resultados
		$dumpfile("pixels_tb.vcd");
		$dumpvars(0, pixels_tb);

		for(row=0; row<20; row=row+2)
		begin
			$display("row: (%d)", row);
			for (col=315; col<=330; col=col+1)
			begin
				#2
				$display("color: %b (%d, %d)", color, row, col);
			end
		end
		# 1 $display("FIN de la simulacion");
		$finish;

	end

endmodule
