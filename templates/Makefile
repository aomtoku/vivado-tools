
SRC := src/fib.c
TOP_FUNC := fib

all: export

export:
	vivado_hls -i -f scripts/export_verilog.tcl -tclargs "$(SRC)" "$(TOP_FUNC)"

.PHONY: clean
clean:
	@rm -rf app
	@rm -f vivado_hls.log
