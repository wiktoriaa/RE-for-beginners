#include <stdio.h>

int my_atoi (char *s)
{
	int negative=0;
	int rt=0;

	if (*s=='-')
	{
		negative=1;
		s++;
	};

	while (*s)
	{
		if (*s<'0' || *s>'9')
		{
			printf ("Error! Unexpected char: '%c'\n", *s);
			exit(0);
		};
		rt=rt*10 + (*s-'0');
		s++;
	};

	if (negative)
		return -rt;
	return rt;
};
