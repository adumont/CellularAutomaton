module automaton_tb();

	parameter WIDTH = 80;

    reg[7:0] count = 0;

	//-- Registro para generar la señal de reloj
	reg clk = 0;

	//-- Datos de salida del componente
	wire [WIDTH-1:0] data;

	//-- Instanciar el componente (N=1 aqui, segundos)
	automaton #(.WIDTH(WIDTH)) myCA ( .clk(clk), .data(data) );
	defparam myCA.N=1;
	defparam myCA.RULE=126; // http://mathworld.wolfram.com/Rule126.html
	defparam myCA.SEED = 2**(WIDTH/2);

	//-- Generador de reloj. Periodo 2 unidades
	always #1 clk = ~clk;

	integer file;

	//-- Proceso al inicio
	initial begin

		//-- Fichero donde almacenar los resultados
		$dumpfile("automaton_tb.vcd");
		$dumpvars(0, automaton_tb);

		#1 $display("data: %b (%d)", data, count);

		file = $fopen("data.out", "wb");
		$fwrite(file, "%b\n", data);

        for (count=1; count<=59; count=count+1)
        begin
            #4
            $display("data: %b (%d)", data, count);
			$fwrite(file, "%b\n", data);
        end

		$fclose(file);
		# 1 $display("FIN de la simulacion");
		$finish;

	end

endmodule

