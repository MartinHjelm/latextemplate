FILE = main

pdf: *.tex
	pdflatex -shell-escape $(FILE)
bib:
	bibtex $(FILE)
clean: 
	-rm ./*.aux ./*.dvi ./*.blg ./*.log ./*.out ./*.toc ./*.spl ./*.tpt ./*.bbl ./$(FILE).pdf ./*~
pandoc:
	pandoc text.md -f markdown -t latex -o text.tex
	pdflatex -shell-escape $(FILE)