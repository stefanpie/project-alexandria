.PHONY: vis
.PHONY: sim
.PHONY: clean

nothing:

vis:
	yosys -p "tcl graph.tcl $(d)"
	dot -Tpng $(d)_vis.dot > $(d)_vis.png


sim: 
	iverilog -c iverilog_cmd_file.txt -o $(tb).vvp ./sim/$(tb).v
	vvp $(tb).vvp
	gtkwave $(tb).vcd


clean:
	del *.vvp
	del *.vcd
	del *_vis.dot
	del *_vis.png
