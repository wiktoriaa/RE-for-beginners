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
	patterns/03_printf/ARM/ARM3_O0.lst.ru patterns/03_printf/ARM/ARM3_O0.lst.en \
	patterns/03_printf/ARM/ARM8_O0.lst.ru patterns/03_printf/ARM/ARM8_O0.lst.en \
	patterns/03_printf/MIPS/printf3.O0.s.ru patterns/03_printf/MIPS/printf3.O0.s.en \
	patterns/03_printf/MIPS/printf3.O0.IDA.lst.ru patterns/03_printf/MIPS/printf3.O0.IDA.lst.en \
	patterns/03_printf/MIPS/printf3.O3.s.ru patterns/03_printf/MIPS/printf3.O3.s.en \
	patterns/03_printf/MIPS/printf3.O3.IDA.lst.ru patterns/03_printf/MIPS/printf3.O3.IDA.lst.en \
	patterns/03_printf/MIPS/printf8.O0.s.ru patterns/03_printf/MIPS/printf8.O0.s.en \
	patterns/03_printf/MIPS/printf8.O0.IDA.lst.ru patterns/03_printf/MIPS/printf8.O0.IDA.lst.en \
	patterns/03_printf/MIPS/printf8.O3.s.ru patterns/03_printf/MIPS/printf8.O3.s.en \
	patterns/03_printf/MIPS/printf8.O3.IDA.lst.ru patterns/03_printf/MIPS/printf8.O3.IDA.lst.en \
	patterns/03_printf/x86/2_MSVC_x64.asm.ru patterns/03_printf/x86/2_MSVC_x64.asm.en \
	patterns/03_printf/skel1.lst.ru patterns/03_printf/skel1.lst.en \
	patterns/03_printf/skel2.lst.ru patterns/03_printf/skel2.lst.en \
	patterns/03_printf/skel3.lst.ru patterns/03_printf/skel3.lst.en \
	patterns/03_printf/skel4.lst.ru patterns/03_printf/skel4.lst.en \
	patterns/03_printf/skel5.lst.ru patterns/03_printf/skel5.lst.en \
	patterns/03_printf/skel_MIPS.lst.ru patterns/03_printf/skel_MIPS.lst.en \
	patterns/03_printf/x86/2_GCC_x64.s.ru patterns/03_printf/x86/2_GCC_x64.s.en \
	patterns/04_scanf/1_simple/MIPS/ex1.O3.s.ru patterns/04_scanf/1_simple/MIPS/ex1.O3.s.en \
	patterns/04_scanf/1_simple/MIPS/ex1.O3.IDA.lst.ru patterns/04_scanf/1_simple/MIPS/ex1.O3.IDA.lst.en \
	patterns/04_scanf/1_simple/ARM64_GCC491_O0.s.ru patterns/04_scanf/1_simple/ARM64_GCC491_O0.s.en \
	patterns/04_scanf/1_simple/ex1_GCC_x64.s.ru patterns/04_scanf/1_simple/ex1_GCC_x64.s.en \
	patterns/04_scanf/1_simple/ex1_MSVC.asm.ru patterns/04_scanf/1_simple/ex1_MSVC.asm.en \
	patterns/04_scanf/1_simple/ex1_MSVC_x64.asm.ru patterns/04_scanf/1_simple/ex1_MSVC_x64.asm.en \
	patterns/04_scanf/2_global/default_value.c.ru patterns/04_scanf/2_global/default_value.c.en \
	patterns/04_scanf/2_global/ARM64_GCC491_O0.s.ru patterns/04_scanf/2_global/ARM64_GCC491_O0.s.en \
	patterns/04_scanf/2_global/ex2.c.ru patterns/04_scanf/2_global/ex2.c.en \
	patterns/04_scanf/2_global/ex2_MSVC_x64.asm.ru patterns/04_scanf/2_global/ex2_MSVC_x64.asm.en \
	patterns/04_scanf/2_global/MIPS/O3_IDA.lst.ru patterns/04_scanf/2_global/MIPS/O3_IDA.lst.en \
	patterns/04_scanf/2_global/MIPS/O3_IDA_init.lst.ru patterns/04_scanf/2_global/MIPS/O3_IDA_init.lst.en \
	patterns/04_scanf/2_global/MIPS/O3_objdump.txt.ru patterns/04_scanf/2_global/MIPS/O3_objdump.txt.en \
	patterns/04_scanf/2_global/MIPS/O3_objdump_init.txt.ru patterns/04_scanf/2_global/MIPS/O3_objdump_init.txt.en \
	patterns/04_scanf/3_checking_retval/ARM64_GCC491_O0.s.ru patterns/04_scanf/3_checking_retval/ARM64_GCC491_O0.s.en \
	patterns/04_scanf/3_checking_retval/ex3_MSVC_x64.asm.ru patterns/04_scanf/3_checking_retval/ex3_MSVC_x64.asm.en \
	patterns/obfuscation/1.asm.ru patterns/obfuscation/1.asm.en \
	patterns/obfuscation/2.asm.ru patterns/obfuscation/2.asm.en \
	patterns/obfuscation/3.asm.ru patterns/obfuscation/3.asm.en \
	patterns/05_passing_arguments/MIPS_O3_IDA.lst.ru patterns/05_passing_arguments/MIPS_O3_IDA.lst.en \
	patterns/07_jcc/abs/abs_GCC49_ARM64_O0.s.ru patterns/07_jcc/abs/abs_GCC49_ARM64_O0.s.en \
	patterns/07_jcc/abs/abs_Keil_ARM_O3.s.ru patterns/07_jcc/abs/abs_Keil_ARM_O3.s.en \
	patterns/07_jcc/abs/abs_Keil_thumb_O3.s.ru patterns/07_jcc/abs/abs_Keil_thumb_O3.s.en \
	patterns/07_jcc/abs/abs_MSVC2012_Ox_x64.asm.ru patterns/07_jcc/abs/abs_MSVC2012_Ox_x64.asm.en \
	patterns/07_jcc/abs/MIPS_O3_IDA.lst.ru patterns/07_jcc/abs/MIPS_O3_IDA.lst.en \
	patterns/07_jcc/cond_operator/ARM64_GCC_O3.s.ru patterns/07_jcc/cond_operator/ARM64_GCC_O3.s.en \
	patterns/07_jcc/cond_operator/cond2_GCC_O3.s.ru patterns/07_jcc/cond_operator/cond2_GCC_O3.s.en \
	patterns/07_jcc/cond_operator/Keil_ARM_O3.s.ru patterns/07_jcc/cond_operator/Keil_ARM_O3.s.en \
	patterns/07_jcc/cond_operator/Keil_thumb_O3.s.ru patterns/07_jcc/cond_operator/Keil_thumb_O3.s.en \
	patterns/07_jcc/cond_operator/MIPS_O3.s.ru patterns/07_jcc/cond_operator/MIPS_O3.s.en \
	patterns/07_jcc/cond_operator/MSVC2008.asm.ru patterns/07_jcc/cond_operator/MSVC2008.asm.en \
	patterns/07_jcc/cond_operator/MSVC2008_Ox.asm.ru patterns/07_jcc/cond_operator/MSVC2008_Ox.asm.en \
	patterns/07_jcc/cond_operator/MSVC2012_Ox_x64.asm.ru patterns/07_jcc/cond_operator/MSVC2012_Ox_x64.asm.en \
	patterns/07_jcc/simple/GCC_O3_unsigned.asm.ru patterns/07_jcc/simple/GCC_O3_unsigned.asm.en \
	patterns/07_jcc/simple/O0_MIPS_signed_IDA.lst.ru patterns/07_jcc/simple/O0_MIPS_signed_IDA.lst.en \
	patterns/07_jcc/simple/ARM/ARM64_GCC_O3_signed.lst.ru patterns/07_jcc/simple/ARM/ARM64_GCC_O3_signed.lst.en \
	patterns/07_jcc/simple/ARM/ARM64_GCC_O3_unsigned.lst.ru patterns/07_jcc/simple/ARM/ARM64_GCC_O3_unsigned.lst.en \
	patterns/07_jcc/minmax/minmax_GCC481_O3.s.ru patterns/07_jcc/minmax/minmax_GCC481_O3.s.en \
	patterns/07_jcc/minmax/minmax_Keil_ARM_O3.s.ru patterns/07_jcc/minmax/minmax_Keil_ARM_O3.s.en \
	patterns/07_jcc/minmax/minmax_Keil_Thumb_O3.s.ru patterns/07_jcc/minmax/minmax_Keil_Thumb_O3.s.en \
	patterns/07_jcc/minmax/minmax_MIPS_O3_IDA.lst.ru patterns/07_jcc/minmax/minmax_MIPS_O3_IDA.lst.en \
	patterns/07_jcc/minmax/minmax_MSVC_2013.asm.ru patterns/07_jcc/minmax/minmax_MSVC_2013.asm.en \
	patterns/07_jcc/minmax/minmax64_GCC_49_ARM64_O3.s.ru patterns/07_jcc/minmax/minmax64_GCC_49_ARM64_O3.s.en \
	patterns/07_jcc/minmax/minmax64_GCC_49_x64_O3.s.ru patterns/07_jcc/minmax/minmax64_GCC_49_x64_O3.s.en \
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
	patterns/12_FPU/3_comparison/MIPS_O3_IDA.lst.ru patterns/12_FPU/3_comparison/MIPS_O3_IDA.lst.en \
	patterns/12_FPU/3_comparison/ARM/Xcode_ARM.lst.ru patterns/12_FPU/3_comparison/ARM/Xcode_ARM.lst.en \
	patterns/12_FPU/3_comparison/ARM/ARM64_GCC.lst.ru patterns/12_FPU/3_comparison/ARM/ARM64_GCC.lst.en \
	patterns/12_FPU/3_comparison/ARM/ARM64_GCC_O3.lst.ru patterns/12_FPU/3_comparison/ARM/ARM64_GCC_O3.lst.en \
	patterns/12_FPU/3_comparison/ARM/ARM64_GCC_O3_float.lst.ru patterns/12_FPU/3_comparison/ARM/ARM64_GCC_O3_float.lst.en \
	patterns/12_FPU/3_comparison/x86/MSVC/MSVC.asm.ru patterns/12_FPU/3_comparison/x86/MSVC/MSVC.asm.en \
	patterns/12_FPU/3_comparison/x86/MSVC_Ox/MSVC.asm.ru patterns/12_FPU/3_comparison/x86/MSVC_Ox/MSVC.asm.en \
	patterns/12_FPU/3_comparison/x86/GCC481_O3.s.ru patterns/12_FPU/3_comparison/x86/GCC481_O3.s.en \
	patterns/12_FPU/3_comparison/x86/GCC.asm.ru patterns/12_FPU/3_comparison/x86/GCC.asm.en \
	patterns/12_FPU/3_comparison/x86/GCC_O3.asm.ru patterns/12_FPU/3_comparison/x86/GCC_O3.asm.en \
	patterns/13_arrays/1_simple/ARM64_GCC491_O0.s.ru patterns/13_arrays/1_simple/ARM64_GCC491_O0.s.en \
	patterns/13_arrays/1_simple/MIPS_O3_IDA.lst.ru patterns/13_arrays/1_simple/MIPS_O3_IDA.lst.en \
	patterns/13_arrays/1_simple/simple_Keil_ARM_O0.asm.ru patterns/13_arrays/1_simple/simple_Keil_ARM_O0.asm.en \
	patterns/13_arrays/1_simple/simple_Keil_thumb_O3.asm.ru patterns/13_arrays/1_simple/simple_Keil_thumb_O3.asm.en \
	patterns/13_arrays/2_BO/w.asm.ru patterns/13_arrays/2_BO/w.asm.en \
	patterns/13_arrays/3_BO_protection/gcc_canary.asm.ru patterns/13_arrays/3_BO_protection/gcc_canary.asm.en \
	patterns/13_arrays/3_BO_protection/simple_Xcode_thumb_O3.asm.ru patterns/13_arrays/3_BO_protection/simple_Xcode_thumb_O3.asm.en \
	patterns/13_arrays/45_month_1D/month1.c.ru patterns/13_arrays/45_month_1D/month1.c.en \
	patterns/13_arrays/45_month_1D/MIPS_O3_IDA.lst.ru patterns/13_arrays/45_month_1D/MIPS_O3_IDA.lst.en \
	patterns/13_arrays/5_multidimensional/2D_as_1D.c.ru patterns/13_arrays/5_multidimensional/2D_as_1D.c.en \
	patterns/13_arrays/5_multidimensional/2D_as_1D_GCC49_x64_O3.s.ru patterns/13_arrays/5_multidimensional/2D_as_1D_GCC49_x64_O3.s.en \
	patterns/13_arrays/5_multidimensional/2D_as_1D_MSVC_2013_Ox_x64.asm.ru patterns/13_arrays/5_multidimensional/2D_as_1D_MSVC_2013_Ox_x64.asm.en \
	patterns/13_arrays/5_multidimensional/multi_gcc.asm.ru patterns/13_arrays/5_multidimensional/multi_gcc.asm.en \
	patterns/13_arrays/5_multidimensional/multi_MIPS_O3_IDA.lst.ru patterns/13_arrays/5_multidimensional/multi_MIPS_O3_IDA.lst.en \
	patterns/13_arrays/5_multidimensional/multi_msvc.asm.ru patterns/13_arrays/5_multidimensional/multi_msvc.asm.en \
	patterns/13_arrays/5_multidimensional/multi_Xcode_thumb_O0.asm.ru patterns/13_arrays/5_multidimensional/multi_Xcode_thumb_O0.asm.en \
	patterns/13_arrays/5_multidimensional/multi_Xcode_thumb_O3.asm.ru patterns/13_arrays/5_multidimensional/multi_Xcode_thumb_O3.asm.en \
	patterns/13_arrays/5_multidimensional/two1.c.ru patterns/13_arrays/5_multidimensional/two1.c.en \
	patterns/13_arrays/5_multidimensional/two2.c.ru patterns/13_arrays/5_multidimensional/two2.c.en \
	patterns/13_arrays/55_month_2D/x64_GCC49_O0.asm.ru patterns/13_arrays/55_month_2D/x64_GCC49_O0.asm.en \
	patterns/13_arrays/55_month_2D/Keil_O3_thumb.asm.ru patterns/13_arrays/55_month_2D/Keil_O3_thumb.asm.en \
	patterns/13_arrays/55_month_2D/Keil_O3_ARM.asm.ru patterns/13_arrays/55_month_2D/Keil_O3_ARM.asm.en \
	patterns/13_arrays/55_month_2D/GCC49_ARM64.asm.ru patterns/13_arrays/55_month_2D/GCC49_ARM64.asm.en \
	patterns/13_arrays/55_month_2D/MIPS_O3_IDA.lst.ru patterns/13_arrays/55_month_2D/MIPS_O3_IDA.lst.en \
	patterns/13_arrays/55_month_2D/month2.c.ru patterns/13_arrays/55_month_2D/month2.c.en \
	patterns/13_arrays/55_month_2D/MSVC2013_x64.asm.ru patterns/13_arrays/55_month_2D/MSVC2013_x64.asm.en \
	patterns/13_arrays/55_month_2D/MSVC2013_x64_Ox.asm.ru patterns/13_arrays/55_month_2D/MSVC2013_x64_Ox.asm.en \
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
	patterns/28_string_trim/GCC49_ARM64_O0.s.ru patterns/28_string_trim/GCC49_ARM64_O0.s.en \
	patterns/28_string_trim/GCC49_ARM64_O3.s.ru patterns/28_string_trim/GCC49_ARM64_O3.s.en \
	patterns/28_string_trim/GCC491_x64_O0.asm.ru patterns/28_string_trim/GCC491_x64_O0.asm.en \
	patterns/28_string_trim/GCC491_x64_O3.asm.ru patterns/28_string_trim/GCC491_x64_O3.asm.en \
	patterns/28_string_trim/Keil_ARM_O3.s.ru patterns/28_string_trim/Keil_ARM_O3.s.en \
	patterns/28_string_trim/Keil_thumb_O3.s.ru patterns/28_string_trim/Keil_thumb_O3.s.en \
	patterns/28_string_trim/MIPS_O3_IDA.lst.ru patterns/28_string_trim/MIPS_O3_IDA.lst.en \
	patterns/28_string_trim/MSVC2013_x64_Ox.asm.ru patterns/28_string_trim/MSVC2013_x64_Ox.asm.en \
	patterns/28_string_trim/my_strlen.asm.ru patterns/28_string_trim/my_strlen.asm.en \
	patterns/28_string_trim/strlen_MSVC.asm.ru patterns/28_string_trim/strlen_MSVC.asm.en \
	patterns/28_string_trim/strtrim.c.ru patterns/28_string_trim/strtrim.c.en \
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
