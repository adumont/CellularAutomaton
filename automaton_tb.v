module automaton_tb();

	parameter WIDTH = 128;

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

	//-- Proceso al inicio
	initial begin

		//-- Fichero donde almacenar los resultados
		$dumpfile("automaton_tb.vcd");
		$dumpvars(0, automaton_tb);

		#1 $display("data: %b", data);

        for (count=0; count<=250; count=count+1)
        begin
            #4
            $display("data: %b", data);
        end

		# 1 $display("FIN de la simulacion");
		$finish;

	end

endmodule

