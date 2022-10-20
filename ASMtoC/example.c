//gcc say_hi2.o example.c -m32 -no-pie
/* example.c */
#include <stdio.h>

extern void say_hi();

int main(int argc, char *argv[]) {
	say_hi();

	return 1;
}