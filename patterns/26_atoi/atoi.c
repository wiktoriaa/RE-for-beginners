#include <stdio.h>

int my_atoi (char *s)
{
	int rt=0;

	while (*s)
	{
		rt=rt*10 + (*s-'0');
		s++;
	};

	return rt;
};
