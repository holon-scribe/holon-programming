SHELL = /bin/bash

# quiet flags: full output is in the .log
Holon_Programming__A_Survey.pdf: holon_programming.tex holon.bib
	pdflatex -interaction=batchmode -halt-on-error holon_programming
	biber --quiet holon_programming
	pdflatex -interaction=batchmode -halt-on-error holon_programming
	pdflatex -interaction=batchmode -halt-on-error holon_programming
	mv holon_programming.pdf $@

clean:
	rm -f holon_programming.{aux,bbl,bcf,blg,lof}
	rm -f holon_programming.{log,out,run.xml,toc}
	rm -f Holon_Programming__A_Survey.pdf
