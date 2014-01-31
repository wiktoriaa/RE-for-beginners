#include <stdint.h>

uint64_t f1 (uint64_t a, uint64_t b)
{
	return a+b;
};

void f1_test ()
{
#ifdef __GNUC__
	printf ("%lld\n", f1(12345678901234, 23456789012345));
#else
	printf ("%I64d\n", f1(12345678901234, 23456789012345));
#endif
};

uint64_t f2 (uint64_t a, uint64_t b)
{
	return a-b;
};
