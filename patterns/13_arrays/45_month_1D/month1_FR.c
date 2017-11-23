#include <stdio.h>

const char* month1[]=
{
	"janvier", "février", "mars", "avril",
	"mai", "juin", "juillet", "août",
	"septembre", "octobre", "novembre", "décembre"
};

// dans l'intervalle 0..11
const char* get_month1 (int month)
{
	return month1[month];
};
