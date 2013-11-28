all: 
	rm -f *.fls
	#rm -f *.gls
	rm -f *.log
	rm -f *.bbl
	rm -f *.aux
	latexmk -c
	latexmk -pdf RE_for_beginners-ru.tex
	makeglossaries RE_for_beginners-ru
	latexmk -pdf RE_for_beginners-ru.tex
	latexmk -c
	latexmk -pdf RE_for_beginners-en.tex
	makeglossaries RE_for_beginners-en
	latexmk -pdf RE_for_beginners-en.tex
