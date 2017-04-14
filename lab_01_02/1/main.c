#include <stdio.h>
#include <math.h>

#define TRIANGLE_SIDE_CALC(abs1, abs2, ord1, ord2) sqrtf(pow(abs1 - abs2, 2) + pow(ord1 - ord2, 2));

int main()
{    
    setbuf(stdout, NULL);
	
    float side1, side2, side3;
    float x1, y1, x2, y2, x3, y3;  // Coordinates
    float main_perimeter;

    printf("Введите пару координат в виде через пробел: ");
    scanf("%f %f\n", &x1, &y1);
    
    printf("Введите пару координат в виде через пробел: ");
    scanf("%f %f\n", &x2, &y2);
    
    printf("Введите пару координат в виде через пробел: ");
    scanf("%f %f\n", &x3, &y3);
	
    side1 = TRIANGLE_SIDE_CALC(x1, x2, y1, y2);
    side2 = TRIANGLE_SIDE_CALC(x1, x3, y1, y3);
    side3 = TRIANGLE_SIDE_CALC(x2, x3, y2, y3);
	
    main_perimeter = side1 + side2 + side3;
	
    printf("Периметр треугольника равен = %7.5f", main_perimeter);
	
    return 0;		
}