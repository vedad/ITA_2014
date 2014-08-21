DOCUMENT ?= numerics_intro
LATEX = latex
DVIPS = dvips
%.dvi: %.tex
	$(LATEX) $<
	$(LATEX) $<
%.ps: %.dvi
	$(DVIPS) -o $@ $<
%.pdf: %.ps
	ps2pdf -dMaxSubsetPct=100 -dCompatibilityLevel=1.2 -dSubsetFonts=true -dEmbedAllFonts=true $<
SOURCES=$(shell ls *.tex)

default:	$(SOURCES)

$(DOCUMENT).pdf:	$(DOCUMENT).ps
	ps2pdf -dMaxSubsetPct=100 -dCompatibilityLevel=1.2 -dSubsetFonts=true -dEmbedAllFonts=true $<
	@echo "**** Sources: $(SOURCES)"
#        ps2pdf -dMaxSubsetPct=100 -dCompatibilityLevel=1.2 -dSubsetFonts=true -dEmbedAllFonts=true $<

clean:
	rm -f *~ *.aux *.log *.dvi *.idx *.ilg *.ind *.toc *.glo *.bbl *.blg 
