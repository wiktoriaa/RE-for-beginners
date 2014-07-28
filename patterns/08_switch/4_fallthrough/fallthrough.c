#define R 1
#define W 2
#define RW 3

void f(int type)
{
	int r=0, w=0;

	switch (type)
	{
	case RW:
		r=1;
	case W:
		w=1;
		break;
	case R:
		r=1;
		break;
	default:
		break;
	};
	printf ("r=%d, w=%d\n", r, w);
};
