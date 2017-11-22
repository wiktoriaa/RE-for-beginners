#include <stdio.h>

const char* month[]=
{
	"janvier", "février", "mars", "avril",
	"mai", "juin", "juillet", "août",
	"septembre", "octobre", "novembre", "décembre"
};

int main()
{
	// 4ème mois, 5ème caractère:
	printf ("%c\n", month[3][4]);
};

