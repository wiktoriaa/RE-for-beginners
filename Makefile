.SUFFIXES: .m4 .ru .en
.m4.en:
	m4 --define=lang=en $*.m4 >$*.en
.m4.ru:
	m4 --define=lang=ru $*.m4 >$*.ru

all:    russian english russian-A5 english-A5
#all:    russian english russian-A5 english-A5 \
#	russian-lite english-lite russian-A5-lite english-A5-lite

listings: patterns/01_helloworld/GCC_x64.s.ru patterns/01_helloworld/GCC_x64.s.en \
	patterns/01_helloworld/MIPS/hw_O0.s.ru patterns/01_helloworld/MIPS/hw_O0.s.en\
	patterns/01_helloworld/MIPS/hw_O3.s.ru patterns/01_helloworld/MIPS/hw_O3.s.en\
	patterns/01_helloworld/MIPS/hw_O0_IDA.lst.ru patterns/01_helloworld/MIPS/hw_O0_IDA.lst.en \
	patterns/01_helloworld/MIPS/hw_O3_IDA.lst.ru patterns/01_helloworld/MIPS/hw_O3_IDA.lst.en \
	patterns/obfuscation/1.asm.ru patterns/obfuscation/1.asm.en \
	patterns/obfuscation/2.asm.ru patterns/obfuscation/2.asm.en \
	patterns/obfuscation/3.asm.ru patterns/obfuscation/3.asm.en \
	patterns/05_passing_arguments/MIPS_O3_IDA.lst.ru patterns/05_passing_arguments/MIPS_O3_IDA.lst.en \
	patterns/07_jcc/abs/abs_GCC49_ARM64_O0.s.ru patterns/07_jcc/abs/abs_GCC49_ARM64_O0.s.en \
	patterns/07_jcc/abs/abs_Keil_ARM_O3.s.ru patterns/07_jcc/abs/abs_Keil_ARM_O3.s.en \
	patterns/07_jcc/abs/abs_Keil_thumb_O3.s.ru patterns/07_jcc/abs/abs_Keil_thumb_O3.s.en \
	patterns/07_jcc/abs/abs_MSVC2012_Ox_x64.asm.ru patterns/07_jcc/abs/abs_MSVC2012_Ox_x64.asm.en \
	patterns/07_jcc/abs/MIPS_O3_IDA.lst.ru patterns/07_jcc/abs/MIPS_O3_IDA.lst.en \
	patterns/08_switch/1_few/ARM64_GCC_O0.lst.ru patterns/08_switch/1_few/ARM64_GCC_O0.lst.en \
	patterns/08_switch/1_few/ARM64_GCC_O3.lst.ru patterns/08_switch/1_few/ARM64_GCC_O3.lst.en \
	patterns/08_switch/1_few/MIPS_O3_IDA.lst.ru patterns/08_switch/1_few/MIPS_O3_IDA.lst.en \
	patterns/08_switch/2_lot/lot_msvc.asm.ru patterns/08_switch/2_lot/lot_msvc.asm.en \
	patterns/08_switch/2_lot/MIPS_O3_IDA.lst.ru patterns/08_switch/2_lot/MIPS_O3_IDA.lst.en \
	patterns/08_switch/3_several_cases/ARM64_GCC491_O3.s.ru patterns/08_switch/3_several_cases/ARM64_GCC491_O3.s.en \
	patterns/08_switch/4_fallthrough/fallthrough_ARM64.s.ru patterns/08_switch/4_fallthrough/fallthrough_ARM64.s.en \
	patterns/09_loops/iterators/ARM64_GCC_49_O3.s.ru patterns/09_loops/iterators/ARM64_GCC_49_O3.s.en \
	patterns/09_loops/iterators/GCC491_x64_O3.asm.ru patterns/09_loops/iterators/GCC491_x64_O3.asm.en \
	patterns/09_loops/iterators/iterators.c.ru patterns/09_loops/iterators/iterators.c.en \
	patterns/09_loops/iterators/iterators2.c.ru patterns/09_loops/iterators/iterators2.c.en \
	patterns/09_loops/iterators/iterators3.c.ru patterns/09_loops/iterators/iterators3.c.en \
	patterns/09_loops/iterators/MIPS_O3_IDA.lst.ru patterns/09_loops/iterators/MIPS_O3_IDA.lst.en \
	patterns/09_loops/iterators/MSVC_2013_x64_Ox.asm.ru patterns/09_loops/iterators/MSVC_2013_x64_Ox.asm.en \
	patterns/09_loops/memcpy/memcpy_GCC49_ARM64_Os.s.ru patterns/09_loops/memcpy/memcpy_GCC49_ARM64_Os.s.en \
	patterns/09_loops/memcpy/memcpy_GCC49_x64_Os.s.ru patterns/09_loops/memcpy/memcpy_GCC49_x64_Os.s.en \
	patterns/09_loops/memcpy/memcpy_Keil_ARM_O3.s.ru patterns/09_loops/memcpy/memcpy_Keil_ARM_O3.s.en \
	patterns/09_loops/memcpy/memcpy_Keil_Thumb_O3.s.ru patterns/09_loops/memcpy/memcpy_Keil_Thumb_O3.s.en \
	patterns/09_loops/memcpy/memcpy_MIPS_Os_IDA.lst.ru patterns/09_loops/memcpy/memcpy_MIPS_Os_IDA.lst.en \
	patterns/09_loops/simple/ARM/ARM64_GCC491_O0.s.ru patterns/09_loops/simple/ARM/ARM64_GCC491_O0.s.en \
	patterns/09_loops/simple/ARM/ARM64_GCC491_O3.s.ru patterns/09_loops/simple/ARM/ARM64_GCC491_O3.s.en \
	patterns/09_loops/simple/1_GCC.asm.ru patterns/09_loops/simple/1_GCC.asm.en \
	patterns/09_loops/simple/2_GCC.asm.ru patterns/09_loops/simple/2_GCC.asm.en \
	patterns/09_loops/simple/1_MSVC.asm.ru patterns/09_loops/simple/1_MSVC.asm.en \
	patterns/09_loops/simple/loops_1.c.en patterns/09_loops/simple/loops_1.c.ru \
	patterns/09_loops/simple/loops_3.c.en patterns/09_loops/simple/loops_3.c.ru \
	patterns/09_loops/simple/MIPS_O0_IDA.lst.en patterns/09_loops/simple/MIPS_O0_IDA.lst.ru \
	patterns/09_loops/skeleton_x86_2_9_optimized.lst.en patterns/09_loops/skeleton_x86_2_9_optimized.lst.ru \
	patterns/09_loops/skeleton_x86_2_9.lst.en patterns/09_loops/skeleton_x86_2_9.lst.ru \
	patterns/09_loops/skeleton_x86_2_9_reg.lst.en patterns/09_loops/skeleton_x86_2_9_reg.lst.ru \
	patterns/09_loops/skeleton_x86_2_9_order.lst.en patterns/09_loops/skeleton_x86_2_9_order.lst.ru \
	patterns/09_loops/skeleton_x86_2_9_reorder.lst.en patterns/09_loops/skeleton_x86_2_9_reorder.lst.ru \
	patterns/09_loops/skeleton_x86_loop.lst.en patterns/09_loops/skeleton_x86_loop.lst.ru \
	patterns/09_loops/skeleton_ARM.lst.en patterns/09_loops/skeleton_ARM.lst.ru \
	patterns/10_strings/1_strlen/10_1_msvc.asm.ru patterns/10_strings/1_strlen/10_1_msvc.asm.en \
	patterns/10_strings/1_strlen/10_2.asm.ru patterns/10_strings/1_strlen/10_2.asm.en \
	patterns/10_strings/1_strlen/MIPS_O3_IDA.lst.ru patterns/10_strings/1_strlen/MIPS_O3_IDA.lst.en \
	patterns/10_strings/1_strlen/ARM/xcode_ARM_O0.asm.ru patterns/10_strings/1_strlen/ARM/xcode_ARM_O0.asm.en \
	patterns/10_strings/1_strlen/ARM/ARM64_GCC_O0.lst.ru patterns/10_strings/1_strlen/ARM/ARM64_GCC_O0.lst.en \
	patterns/10_strings/1_strlen/ARM/ARM64_GCC_O3.lst.ru patterns/10_strings/1_strlen/ARM/ARM64_GCC_O3.lst.en \
	patterns/11_arith_optimizations/division_by_9/2.asm.ru patterns/11_arith_optimizations/division_by_9/2.asm.en \
	patterns/12_FPU/1_simple/ARM/ARM64_GCC_O0.s.ru patterns/12_FPU/1_simple/ARM/ARM64_GCC_O0.s.en \
	patterns/12_FPU/1_simple/ARM/ARM64_GCC_O3.s.ru patterns/12_FPU/1_simple/ARM/ARM64_GCC_O3.s.en \
	patterns/12_FPU/1_simple/ARM/Keil_O3_thumb.asm.ru patterns/12_FPU/1_simple/ARM/Keil_O3_thumb.asm.en \
	patterns/12_FPU/1_simple/ARM/Xcode_ARM_O3.asm.ru patterns/12_FPU/1_simple/ARM/Xcode_ARM_O3.asm.en \
	patterns/12_FPU/1_simple/GCC.asm.ru patterns/12_FPU/1_simple/GCC.asm.en \
	patterns/12_FPU/1_simple/MIPS_O3_IDA.lst.ru patterns/12_FPU/1_simple/MIPS_O3_IDA.lst.en \
	patterns/12_FPU/1_simple/MSVC.asm.ru patterns/12_FPU/1_simple/MSVC.asm.en \
	patterns/12_FPU/2_passing_floats/ARM64.s.ru patterns/12_FPU/2_passing_floats/ARM64.s.en \
	patterns/12_FPU/2_passing_floats/MIPS_O3_IDA.lst.ru patterns/12_FPU/2_passing_floats/MIPS_O3_IDA.lst.en \
	patterns/12_FPU/2_passing_floats/MSVC.asm.ru patterns/12_FPU/2_passing_floats/MSVC.asm.en \
	patterns/13_arrays/6_neg_arrays/neg_array.asm.ru patterns/13_arrays/6_neg_arrays/neg_array.asm.en \
	patterns/13_arrays/6_neg_arrays/stack.txt.ru patterns/13_arrays/6_neg_arrays/stack.txt.en \
	patterns/14_bitfields/1_check/check2.asm.ru patterns/14_bitfields/1_check/check2.asm.en \
	patterns/14_bitfields/2_set_reset/MIPS_O3_IDA.lst.ru patterns/14_bitfields/2_set_reset/MIPS_O3_IDA.lst.en \
	patterns/145_LCG/rand.c.ru patterns/145_LCG/rand.c.en \
	patterns/145_LCG/MIPS_O3_IDA.lst.ru patterns/145_LCG/MIPS_O3_IDA.lst.en \
	patterns/145_LCG/rand.s_Keil_ARM_O3.s.ru patterns/145_LCG/rand.s_Keil_ARM_O3.s.en \
	patterns/145_LCG/rand_MSVC_2013_x64_Ox.asm.ru patterns/145_LCG/rand_MSVC_2013_x64_Ox.asm.en \
	patterns/15_structs/4_packing/packing.asm.ru patterns/15_structs/4_packing/packing.asm.en \
	patterns/15_structs/4_packing/packing_msvc_Zp1.asm.ru patterns/15_structs/4_packing/packing_msvc_Zp1.asm.en \
	patterns/15_structs/6_bitfields/float/float.c.ru patterns/15_structs/6_bitfields/float/float.c.en \
	patterns/15_structs/6_bitfields/float/float_gcc_O3.asm.ru patterns/15_structs/6_bitfields/float/float_gcc_O3.asm.en \
	patterns/15_structs/6_bitfields/float/float_msvc.asm.ru patterns/15_structs/6_bitfields/float/float_msvc.asm.en \
	patterns/17_unions/epsilon/double_GCC49_ARM64_O3.s.ru patterns/17_unions/epsilon/double_GCC49_ARM64_O3.s.en \
	patterns/17_unions/epsilon/float_MSVC_2010_Ox.asm.ru patterns/17_unions/epsilon/float_MSVC_2010_Ox.asm.en \
	patterns/17_unions/FPU_PRNG/FPU_PRNG.cpp.ru patterns/17_unions/FPU_PRNG/FPU_PRNG.cpp.en \
	patterns/17_unions/FPU_PRNG/MSVC2010_Ox_Ob0.asm.ru patterns/17_unions/FPU_PRNG/MSVC2010_Ox_Ob0.asm.en \
	patterns/17_unions/FPU_PRNG/raspberry_GCC_O3_IDA.lst.ru patterns/17_unions/FPU_PRNG/raspberry_GCC_O3_IDA.lst.en \
	patterns/17_unions/FPU_PRNG/MIPS_O3_IDA.lst.ru patterns/17_unions/FPU_PRNG/MIPS_O3_IDA.lst.en \
	patterns/185_64bit_in_32_env/passing_add_sub/MIPS_O3_IDA.lst.ru patterns/185_64bit_in_32_env/passing_add_sub/MIPS_O3_IDA.lst.en \
	patterns/205_floating_SIMD/pow_GCC446_x64_O3.s.ru patterns/205_floating_SIMD/pow_GCC446_x64_O3.s.en \
	patterns/205_floating_SIMD/FPU_PRNG/MSVC2012_Ox_Ob0.asm.ru patterns/205_floating_SIMD/FPU_PRNG/MSVC2012_Ox_Ob0.asm.en \
	patterns/207_fahrenheit/f_MSVC_2010_x86_Ox.asm.ru patterns/207_fahrenheit/f_MSVC_2010_x86_Ox.asm.en \
	patterns/207_fahrenheit/f_MSVC_2012_x86_Ox.asm.ru patterns/207_fahrenheit/f_MSVC_2012_x86_Ox.asm.en \
	patterns/207_fahrenheit/i_MSVC_2012_Ox_x86.asm.ru patterns/207_fahrenheit/i_MSVC_2012_Ox_x86.asm.en \
	patterns/24_duff_device/duff.c.ru patterns/24_duff_device/duff.c.en \
	patterns/24_duff_device/duff_MSVC2012_x64_Ox.asm.ru patterns/24_duff_device/duff_MSVC2012_x64_Ox.asm.en \
	patterns/25_variadic_functions/arith.c.ru patterns/25_variadic_functions/arith.c.en \
	patterns/25_variadic_functions/arith_GCC491_x64_O3.s.ru patterns/25_variadic_functions/arith_GCC491_x64_O3.s.en \
	patterns/25_variadic_functions/arith_MSVC_2012_Ox_x64.asm.ru patterns/25_variadic_functions/arith_MSVC_2012_Ox_x64.asm.en \
	patterns/25_variadic_functions/arith_MSVC60_Ox.asm.ru patterns/25_variadic_functions/arith_MSVC60_Ox.asm.en \
	patterns/25_variadic_functions/die_MSVC2010_Ox.asm.ru patterns/25_variadic_functions/die_MSVC2010_Ox.asm.en \
	patterns/25_variadic_functions/die_MSVC2012_x64_Ox.asm.ru patterns/25_variadic_functions/die_MSVC2012_x64_Ox.asm.en \
	patterns/27_abs_branchless/abs_GCC49_ARM64_O3.s.ru patterns/27_abs_branchless/abs_GCC49_ARM64_O3.s.en \
	patterns/27_abs_branchless/abs_GCC491_x64_O3.asm.ru patterns/27_abs_branchless/abs_GCC491_x64_O3.asm.en \
	examples/demos/10print/10print_27.lst.ru examples/demos/10print/10print_27.lst.en \
	examples/demos/10print/10print_42.lst.ru examples/demos/10print/10print_42.lst.en \
	examples/demos/10print/ferrie_10.lst.ru examples/demos/10print/ferrie_10.lst.en \
	examples/demos/10print/herm1t_11.lst.ru examples/demos/10print/herm1t_11.lst.en \
	examples/demos/mandelbrot/algo_cplx.lst.ru examples/demos/mandelbrot/algo_cplx.lst.en \
	examples/demos/mandelbrot/algo_int.lst.ru examples/demos/mandelbrot/algo_int.lst.en \
	examples/demos/mandelbrot/Microbrot_commented.asm.ru examples/demos/mandelbrot/Microbrot_commented.asm.en \
	examples/demos/mandelbrot/my_version.asm.ru examples/demos/mandelbrot/my_version.asm.en

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
