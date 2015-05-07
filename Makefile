.SUFFIXES: .m4 .ru .en
.m4.en:
	m4 --define=lang=en $*.m4 >$*.en
.m4.ru:
	m4 --define=lang=ru $*.m4 >$*.ru

M4SOURCES := $(shell find . $(pwd) -name '*.m4')
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
	$(call compile,Reverse_Engineering_for_Beginners-ru)

english: $(EN_LISTINGS)
	$(call compile,Reverse_Engineering_for_Beginners-en)

russian-A5: $(RU_LISTINGS)
	$(call compile,Reverse_Engineering_for_Beginners-ru-A5)

english-A5: $(EN_LISTINGS)
	$(call compile,Reverse_Engineering_for_Beginners-en-A5)

russian-lite: $(RU_LISTINGS)
	$(call compile,Reverse_Engineering_for_Beginners-ru-lite)

english-lite: $(EN_LISTINGS)
	$(call compile,Reverse_Engineering_for_Beginners-en-lite)

russian-A5-lite: $(RU_LISTINGS)
	$(call compile,Reverse_Engineering_for_Beginners-ru-A5-lite)

english-A5-lite: $(EN_LISTINGS)
	$(call compile,Reverse_Engineering_for_Beginners-en-A5-lite)
