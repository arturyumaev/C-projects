#include <stdio.h>
#include <math.h>

float power(float arg, float n)
{	
    if (n == 0)
    {
        return 1;
    }
    
    else
        return exp(arg * log(n));
}

void input_coordinates(float x, float y, int serial_number)
{
    printf("Введите %d-ю пару координат\n", serial_number);

    printf("x%d: ", serial_number);
    if (scanf("%f", &x) != 1)
    {
        printf("Некорректный ввод");
    }
    
    printf("y%d: ", serial_number);
    if (scanf("%f", &y) != 1)
    {
        printf("Некорректный ввод");
    }
}

int main()
{
    setbuf(stdout, NULL);

    float x1, y1, x2, y2, x3, y3;
    float a, b, c;
	
    x1 = x2 = x3 = y1 = y2 = y3 = 0;

    input_coordinates(x1, y1, 1);
    input_coordinates(x2, y2, 2);
    input_coordinates(x3, y3, 3);
	
    a = sqrt(power(x2 - x1, 2) + power(y2 - y1, 2));
    b = sqrt(power(x3 - x1, 2) + power(y3 - y1, 2));
    c = sqrt(power(x3 - x2, 2) + power(y3 - y2, 2));

    // Проверка на вырожденность
    if ((a >= b + c) || (b >= a + c) || (c >= b + a))
    {
        printf("Не треугольник\n");
    }

    if ((round(a * a) == b * b + c * c) ||
        (round(b * b) == a * a + c * c) ||
        (round(c * c) == b * b + a * a))
    {
        printf("Прямоугольный треугольник\n");
    }

    else
        if ((a * a > b * b + c * c) ||
            (b * b > a * a + c * c) ||
            (c * c > b * b + a * a))
        {
            printf("Тупоугольный треугольник\n");
        }
        else
        {
            printf("Остроугольный треугольник\n");
        }

    return 0;
}
