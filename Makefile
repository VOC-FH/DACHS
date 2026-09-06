LATEXMK ?= latexmk

all: main.pdf

main.pdf: main.tex private.def.tex fh-ooe.def.tex style/fh-ooe.cls
	TEXINPUTS=.:style:$(TEXINPUTS) $(LATEXMK) -pdf -interaction=nonstopmode -halt-on-error main.tex

clean:
	$(LATEXMK) -C main.tex
