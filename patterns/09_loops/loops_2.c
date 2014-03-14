#include <stdio.h>

void f(int i)
{
	printf ("f(%d)\n", i);
};

int main()
{
	int i;

	for (i=2; i<10; i++)
		f(i);

	return 0;
};
