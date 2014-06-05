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
	patterns/15_structs/4_packing/packing.asm.ru patterns/15_structs/4_packing/packing.asm.en \
	patterns/15_structs/4_packing/packing_msvc_Zp1.asm.ru patterns/15_structs/4_packing/packing_msvc_Zp1.asm.en \
	patterns/15_structs/6_bitfields/float/float_en.c.ru patterns/15_structs/6_bitfields/float/float_en.c.en

define compile
	rm -f *.fls
	rm -f *.bbl
	rm -f *.aux
	latexmk -c
	latexmk -pdf $1.tex
	makeglossaries $1
	latexmk -pdf $1.tex
endef

russian: listings
	$(call compile,RE_for_beginners-ru)

english: listings
	$(call compile,RE_for_beginners-en)

russian-A5: listings
	$(call compile,RE_for_beginners-ru-A5)

english-A5: listings
	$(call compile,RE_for_beginners-en-A5)
