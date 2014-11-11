.SUFFIXES: .m4 .ru .en
.m4.en:
	m4 --define=lang=en $*.m4 >$*.en
.m4.ru:
	m4 --define=lang=ru $*.m4 >$*.ru

all:    russian english russian-A5 english-A5
#all:    russian english russian-A5 english-A5 \
#	russian-lite english-lite russian-A5-lite english-A5-lite

listings: patterns/01_helloworld/GCC_x64.s.ru patterns/01_helloworld/GCC_x64.s.en \
	patterns/obfuscation/1.asm.ru patterns/obfuscation/1.asm.en \
	patterns/obfuscation/2.asm.ru patterns/obfuscation/2.asm.en \
	patterns/obfuscation/3.asm.ru patterns/obfuscation/3.asm.en \
	patterns/07_jcc/abs/abs_GCC49_ARM64_O0.s.ru patterns/07_jcc/abs/abs_GCC49_ARM64_O0.s.en \
	patterns/07_jcc/abs/abs_Keil_ARM_O3.s.ru patterns/07_jcc/abs/abs_Keil_ARM_O3.s.en \
	patterns/07_jcc/abs/abs_Keil_thumb_O3.s.ru patterns/07_jcc/abs/abs_Keil_thumb_O3.s.en \
	patterns/07_jcc/abs/abs_MSVC2012_Ox_x64.asm.ru patterns/07_jcc/abs/abs_MSVC2012_Ox_x64.asm.en \
	patterns/13_arrays/6_neg_arrays/neg_array.asm.ru patterns/13_arrays/6_neg_arrays/neg_array.asm.en \
	patterns/13_arrays/6_neg_arrays/stack.txt.ru patterns/13_arrays/6_neg_arrays/stack.txt.en \
	patterns/11_arith_optimizations/division_by_9/2.asm.ru patterns/11_arith_optimizations/division_by_9/2.asm.en \
	patterns/15_structs/4_packing/packing.asm.ru patterns/15_structs/4_packing/packing.asm.en \
	patterns/15_structs/4_packing/packing_msvc_Zp1.asm.ru patterns/15_structs/4_packing/packing_msvc_Zp1.asm.en \
	patterns/15_structs/6_bitfields/float/float.c.ru patterns/15_structs/6_bitfields/float/float.c.en \
	patterns/15_structs/6_bitfields/float/float_gcc_O3.asm.ru patterns/15_structs/6_bitfields/float/float_gcc_O3.asm.en \
	patterns/15_structs/6_bitfields/float/float_msvc.asm.ru patterns/15_structs/6_bitfields/float/float_msvc.asm.en \
	patterns/205_floating_SIMD/pow_GCC446_x64_O3.s.ru patterns/205_floating_SIMD/pow_GCC446_x64_O3.s.en \
	patterns/25_variadic_functions/arith.c.ru patterns/25_variadic_functions/arith.c.en \
	patterns/25_variadic_functions/arith_GCC491_x64_O3.s.ru patterns/25_variadic_functions/arith_GCC491_x64_O3.s.en \
	patterns/25_variadic_functions/arith_MSVC_2012_Ox_x64.asm.ru patterns/25_variadic_functions/arith_MSVC_2012_Ox_x64.asm.en \
	patterns/25_variadic_functions/arith_MSVC60_Ox.asm.ru patterns/25_variadic_functions/arith_MSVC60_Ox.asm.en \
	patterns/25_variadic_functions/die_MSVC2010_Ox.asm.ru patterns/25_variadic_functions/die_MSVC2010_Ox.asm.en \
	patterns/25_variadic_functions/die_MSVC2012_x64_Ox.asm.ru patterns/25_variadic_functions/die_MSVC2012_x64_Ox.asm.en \
	patterns/27_abs_branchless/abs_GCC49_ARM64_O3.s.ru patterns/27_abs_branchless/abs_GCC49_ARM64_O3.s.en \
	patterns/27_abs_branchless/abs_GCC491_x64_O3.asm.ru patterns/27_abs_branchless/abs_GCC491_x64_O3.asm.en
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

russian: listings
	$(call compile,RE_for_beginners-ru)

english: listings
	$(call compile,RE_for_beginners-en)

russian-A5: listings
	$(call compile,RE_for_beginners-ru-A5)

english-A5: listings
	$(call compile,RE_for_beginners-en-A5)

#russian-lite: listings
#	$(call compile,RE_for_beginners-ru-lite)
#
#english-lite: listings
#	$(call compile,RE_for_beginners-en-lite)
#
#russian-A5-lite: listings
#	$(call compile,RE_for_beginners-ru-A5-lite)
#
#english-A5-lite: listings
#	$(call compile,RE_for_beginners-en-A5-lite)
