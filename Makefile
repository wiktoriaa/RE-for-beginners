all:    russian english russian-A5 english-A5

define compile
	rm -f *.fls
	rm -f *.bbl
	rm -f *.aux
	latexmk -c
	latexmk -pdf $1.tex
	makeglossaries $1
	latexmk -pdf $1.tex
endef

russian:
	$(call compile,RE_for_beginners-ru)

english:
	$(call compile,RE_for_beginners-en)

russian-A5:
	$(call compile,RE_for_beginners-ru-A5)

english-A5:
	$(call compile,RE_for_beginners-en-A5)
