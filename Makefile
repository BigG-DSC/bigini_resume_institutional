# Makefile for bigini_resume_institutional
# Builds main.tex -> bigini_resume.pdf, then stages changes

MAIN = main
OUTPUT = bigini_resume_institutional
LATEX = pdflatex
LATEXFLAGS = -interaction=nonstopmode -file-line-error -jobname=$(OUTPUT)

.PHONY: all pdf stage clean view

all: pdf stage

pdf: $(OUTPUT).pdf

$(OUTPUT).pdf: $(MAIN).tex first_page.tex second_page.tex resume.cls images/profile.jpg
	$(LATEX) $(LATEXFLAGS) $(MAIN).tex
	$(LATEX) $(LATEXFLAGS) $(MAIN).tex

stage: $(OUTPUT).pdf
	git add $(OUTPUT).pdf $(MAIN).tex first_page.tex second_page.tex resume.cls Makefile images/

clean:
	rm -f $(OUTPUT).aux $(OUTPUT).log $(OUTPUT).out $(OUTPUT).bbl $(OUTPUT).blg
	rm -f $(OUTPUT).toc $(OUTPUT).fls $(OUTPUT).fdb_latexmk $(OUTPUT).synctex.gz

view: pdf
	open $(OUTPUT).pdf
