#include <windows.h>
#include <stdio.h>

void main() 
{
    WORD array[8];
    GetSystemTime (array);

    printf ("%04d-%02d-%02d %02d:%02d:%02d\n",
        array[0], array[1], array[3],
        array[4], array[5], array[6]);

    return;
};
