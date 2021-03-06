# call with make MODULE=moduleName sim|svg|upload

ifndef $(MODULE)
	MODULE=automaton
endif
ifeq ($(MODULE), automaton)
	DEPS=block.v init.v prescaler.v
endif

ifndef $(MEMORY)
	MEMORY="1k"
endif

all: bin svg sim

bin: $(MODULE).bin
sim: $(MODULE)_tb.vcd
json: $(MODULE).json
svg: assets/$(MODULE).svg

$(MODULE)_tb.vcd: $(MODULE).v $(DEPS) $(MODULE)_tb.v

	iverilog $^ -o $(MODULE)_tb.out
	./$(MODULE)_tb.out
	gtkwave $@ $(MODULE)_tb.gtkw &

$(MODULE).bin: $(MODULE).pcf $(MODULE).v $(DEPS)
	
	yosys -p "synth_ice40 -blif $(MODULE).blif" $(MODULE).v $(DEPS)
	
	arachne-pnr -d $(MEMORY) -p $(MODULE).pcf $(MODULE).blif -o $(MODULE).pnr
	
	icepack $(MODULE).pnr $(MODULE).bin

$(MODULE).json: $(MODULE).v $(DEPS)
	yosys -p "prep -top $(MODULE); write_json $(MODULE).json" $(MODULE).v $(DEPS)

assets/$(MODULE).svg: $(MODULE).json
	netlistsvg $(MODULE).json -o assets/$(MODULE).svg

upload: $(MODULE).bin
	iceprog $(MODULE).bin

clean:
	rm -f *.bin *.pnr *.blif *.out *.vcd *~

.PHONY: all clean json svg sim
