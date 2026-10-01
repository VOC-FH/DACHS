LATEXMK ?= latexmk
DECKS := Kollaborative_KI-gestützte_Softwareentwicklung_in_der_Lehre Collaborative_AI_Assisted_Software_Development_in_Teaching
all: $(DECKS:=.pdf)

$(DECKS:=.pdf): %.pdf: %.tex private.def.tex fh-ooe.def.tex style/fh-ooe.cls
	TEXINPUTS=.:style:$(TEXINPUTS) $(LATEXMK) -pdf -interaction=nonstopmode -halt-on-error $<

clean:
	$(LATEXMK) -C $(DECKS:=.tex)
