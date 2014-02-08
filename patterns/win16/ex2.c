#include <windows.h>

int PASCAL WinMain( HINSTANCE hInstance,
                    HINSTANCE hPrevInstance,
                    LPSTR lpCmdLine,
                    int nCmdShow )
{
	// http://msdn.microsoft.com/en-us/library/aa926303.aspx
	MessageBox (NULL, "hello, world", "caption", MB_YESNOCANCEL);
	return 0;
};
