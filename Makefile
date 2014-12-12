.PHONY : clean

pdf:
	export PATH=$PATH:/usr/texbin:/usr/local/bin
	Rscript -e "library(knitr); knit('seriation-combinatorics.Rnw')"
	latexmk -pv -pdf seriation-combinatorics

clean:
	latexmk -CA
	rm -rf *.log *.bbl *.blg *.out *.md *.pdf *.docx *.tex *.epub
