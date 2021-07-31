#include <stdio.h>

void echo(void)
{
	char buf[1000];
	scanf("%s", buf);
	printf("%s\n", buf);
}

int main(int argc, char **argv)
{
	while (1)
	{
		echo();
	}
	return 0;
}
