.SUFFIXES: .m4 .ru .en
.m4.en:
	m4 --define=lang=en $*.m4 >$*.en
.m4.ru:
	m4 --define=lang=ru $*.m4 >$*.ru

M4SOURCES := $(shell find $(pwd) -name '*.m4')
RU_LISTINGS := $(M4SOURCES:%.m4=%.ru)
EN_LISTINGS := $(M4SOURCES:%.m4=%.en)

all:    russian english russian-A5 english-A5 \
	russian-lite english-lite russian-A5-lite english-A5-lite

define compile
	rm -f *.fls
	rm -f *.bbl
	rm -f *.aux
	xelatex $1
	biber $1
	makeindex $1
	makeglossaries $1
	xelatex $1
endef

russian: $(RU_LISTINGS)
	$(call compile,RE_for_beginners-ru)

english: $(EN_LISTINGS)
	$(call compile,RE_for_beginners-en)

russian-A5: $(RU_LISTINGS)
	$(call compile,RE_for_beginners-ru-A5)

english-A5: $(EN_LISTINGS)
	$(call compile,RE_for_beginners-en-A5)

russian-lite: 
	$(call compile,RE_for_beginners-ru-lite)

english-lite: 
	$(call compile,RE_for_beginners-en-lite)

russian-A5-lite: 
	$(call compile,RE_for_beginners-ru-A5-lite)

english-A5-lite: 
	$(call compile,RE_for_beginners-en-A5-lite)
