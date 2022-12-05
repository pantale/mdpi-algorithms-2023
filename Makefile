SOURCE=Article

all:
	pdflatex $(SOURCE).tex
	bibtex $(SOURCE).aux
	pdflatex $(SOURCE).tex
	pdflatex $(SOURCE).tex
	pdflatex $(SOURCE).tex

clean:
	-rm $(SOURCE).aux $(SOURCE).bbl $(SOURCE).blg $(SOURCE).log $(SOURCE).maf $(SOURCE).mtc $(SOURCE).mtc0 $(SOURCE).spl $(SOURCE).out

forceClean:
	rm $(SOURCE).pdf 
