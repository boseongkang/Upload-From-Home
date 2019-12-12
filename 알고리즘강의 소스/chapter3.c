#include <stdio.h>

int main() {
	int a = 1, b = 1;

	for (int i = 0; i < 10; i++) {
		a = a + i;
		b = b + a;

	}
	printf("%d", b);
}