#include <stdio.h>
#include <math.h>

int power(int num, int n)
{
    int res = num;
    for (int i = 1; i < n; i++)
    {
        res *= num;
    }
    return res;
}

int main(void)
{
    setbuf(stdout, NULL);

    int a, n;
    int result;

    printf("Input a: ");
    scanf("%d", &a);

    printf("Input n: ");
    scanf("%d", &n);

    result = power(a, n);

    printf("a power n result: %d", result);

    return 0;
}
