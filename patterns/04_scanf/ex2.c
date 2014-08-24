#include <stdio.h>

// make x as global variable
int x;

int main() 
{
	printf ("Enter X:\n");

	scanf ("%d", &x);

	printf ("You entered %d...\n", x);

	return 0;
};
