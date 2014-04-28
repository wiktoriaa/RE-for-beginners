all:    russian english russian-A5 english-A5

russian:
	rm -f *.fls
	rm -f *.bbl
	rm -f *.aux
	latexmk -c
	latexmk -pdf RE_for_beginners-ru.tex
	makeglossaries RE_for_beginners-ru
	latexmk -pdf RE_for_beginners-ru.tex

english:
	rm -f *.fls
	rm -f *.bbl
	rm -f *.aux
	latexmk -c
	latexmk -pdf RE_for_beginners-en.tex
	makeglossaries RE_for_beginners-en
	latexmk -pdf RE_for_beginners-en.tex

russian-A5:
	rm -f *.fls
	rm -f *.bbl
	rm -f *.aux
	latexmk -c
	latexmk -pdf RE_for_beginners-ru-A5.tex
	makeglossaries RE_for_beginners-ru-A5
	latexmk -pdf RE_for_beginners-ru-A5.tex

english-A5:
	rm -f *.fls
	rm -f *.bbl
	rm -f *.aux
	latexmk -c
	latexmk -pdf RE_for_beginners-en-A5.tex
	makeglossaries RE_for_beginners-en-A5
	latexmk -pdf RE_for_beginners-en-A5.tex
