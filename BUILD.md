# Netlist SVG

yosys -p "prep -top automaton -flatten; write_json netlistvg-flatten.json" automaton.v block.v init.v prescaler.v 

yosys -p "prep -top automaton; write_json netlistvg.json" automaton.v block.v init.v prescaler.v 

