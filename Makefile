
all: paper.pdf

paper.pdf: paper.tex intro.tex \
		language.tex \
		hld.tex related_work.tex \
		refs.bib lld.tex \
		abstract.tex \
		conclusions.tex \
		calculus.tex \
		macros.tex \
		appendix/lld.tex \
		appendix/hld.tex \
		appendix/fragment.tex \
		hld/derivation.tex
	pdflatex paper.tex
	pdflatex paper.tex
	bibtex paper
	pdflatex paper.tex

clean:
	rm -f paper.pdf *.aux *.blg *.bbl *.out *.brf *.log *.toc
