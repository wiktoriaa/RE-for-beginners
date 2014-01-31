#include <stdint.h>

int64_t f7 (int64_t a, int64_t b, int32_t c)
{
	return a*b+c;
};

int64_t f7_main ()
{
	return f7(12345678901234, 23456789012345, 12345);
};
