#include <stdio.h>

int main()
{
    setbuf(stdout, NULL);
    
    float resist1, resist2, resist3, main_resist;
    
    printf("Input first  resist1: ");
    scanf("%f", &resist1);
	
    printf("Input first  resist2: ");
    scanf("%f", &resist2);
	
    printf("Input first  resist3: ");
    scanf("%f", &resist3);
    
    main_resist = 1 / (1 / resist1 + 1 / resist2 + 1 / resist3);
    
    printf("\nSumm of resistance = %3.5f\n", main_resist);
    
    return 0;
}