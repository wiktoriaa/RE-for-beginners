.SUFFIXES: .m4 .ru .en
.m4.en:
	m4 --define=lang=en $*.m4 >$*.en
.m4.ru:
	m4 --define=lang=ru $*.m4 >$*.ru

all:    russian english russian-A5 english-A5

listings: patterns/01_helloworld/GCC_x64.s.ru patterns/01_helloworld/GCC_x64.s.en \
	patterns/obfuscation/1.asm.ru patterns/obfuscation/1.asm.en \
	patterns/obfuscation/2.asm.ru patterns/obfuscation/2.asm.en \
	patterns/obfuscation/3.asm.ru patterns/obfuscation/3.asm.en \

russian: listings
	rm -f *.fls
	rm -f *.bbl
	rm -f *.aux
	latexmk -c
	latexmk -pdf RE_for_beginners-ru.tex
	makeglossaries RE_for_beginners-ru
	latexmk -pdf RE_for_beginners-ru.tex

english: listings
	rm -f *.fls
	rm -f *.bbl
	rm -f *.aux
	latexmk -c
	latexmk -pdf RE_for_beginners-en.tex
	makeglossaries RE_for_beginners-en
	latexmk -pdf RE_for_beginners-en.tex

russian-A5: listings
	rm -f *.fls
	rm -f *.bbl
	rm -f *.aux
	latexmk -c
	latexmk -pdf RE_for_beginners-ru-A5.tex
	makeglossaries RE_for_beginners-ru-A5
	latexmk -pdf RE_for_beginners-ru-A5.tex

english-A5: listings
	rm -f *.fls
	rm -f *.bbl
	rm -f *.aux
	latexmk -c
	latexmk -pdf RE_for_beginners-en-A5.tex
	makeglossaries RE_for_beginners-en-A5
	latexmk -pdf RE_for_beginners-en-A5.tex

