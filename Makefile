LATEXMK ?= latexmk

all: Kollaborative_KI-gestützte_Softwareentwicklung_in_der_Lehre.pdf

Kollaborative_KI-gestützte_Softwareentwicklung_in_der_Lehre.pdf: Kollaborative_KI-gestützte_Softwareentwicklung_in_der_Lehre.tex private.def.tex fh-ooe.def.tex style/fh-ooe.cls
	TEXINPUTS=.:style:$(TEXINPUTS) $(LATEXMK) -pdf -interaction=nonstopmode -halt-on-error Kollaborative_KI-gestützte_Softwareentwicklung_in_der_Lehre.tex

clean:
	$(LATEXMK) -C Kollaborative_KI-gestützte_Softwareentwicklung_in_der_Lehre.tex
