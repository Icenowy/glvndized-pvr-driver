LATEX := lualatex
DOT := dot

main: main.pdf
.PHONY: main

DEPS = mesa_callgraph.pdf pvr_mesa_callgraph.pdf

%.pdf: %.tex $(DEPS)
	$(LATEX) $<
	$(LATEX) $<

%.pdf: %.dot
	$(DOT) $< -o $@ -T pdf
