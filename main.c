#include <stdio.h>

void print_it_out(char *s)
{
	printf("%s\n", s);
}

void echo(void)
{
	char buf[10];
	scanf("%s", buf);
	print_it_out(buf);
}

int main(int argc, char **argv)
{
	while (1)
	{
		echo();
	}
	return 0;
}
