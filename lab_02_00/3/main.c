#include <stdio.h>
#include <math.h>

// Main function
float f(float arg)
{
    return exp(arg);
}

// Factorial function
int fact(int n)
{
    if (n == 0)
        return 1;

    return n * fact(n - 1);
}

int main(void)
{
    setbuf(stdout, NULL);

    float x, eps;
    float current_value, sum_of_row;
    float absolute_error, relative_error;
    int index;
    float f_by_x;

    index = 0;
    current_value = 1;
    sum_of_row = 0;

    f_by_x = f(x);

    // Input Data
    printf("Input x: ");
    scanf("%f", &x);

    printf("Input Epsilon: ");
    scanf("%f", &eps);

    // Approximate value calculate
    while (current_value >= eps)
    {
        current_value = pow(x, index) / fact(index);
        sum_of_row += current_value;

        index++;
    }

    // Errors calculate
    absolute_error = fabs(f_by_x - sum_of_row);
    relative_error = fabs(absolute_error / f_by_x);

    printf("\ns(x): %0.6f\n", sum_of_row);
    printf("f(x): %0.6f\n", f(x));

    printf("Absolute error: %0.6f\n", absolute_error);
    printf("Relative error: %0.6f\n", relative_error);

    return 0;
}
