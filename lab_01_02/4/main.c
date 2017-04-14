#include <stdio.h>

#define SECONDS_IN_MINUTE 60
#define SECONDS_IN_HOUR SECONDS_IN_MINUTE * SECONDS_IN_MINUTE

int main()
{
    setbuf(stdout, NULL);
	
    int main_seconds, hour, min, sec;
    
    printf("Enter seconds: ");
    scanf("%d", &main_seconds);
	
    hour = main_seconds / SECONDS_IN_HOUR;
    min  = main_seconds / SECONDS_IN_MINUTE % SECONDS_IN_MINUTE;
    sec  = main_seconds % SECONDS_IN_MINUTE;
	
    printf("Result: %d hours %d minuts %d seconds\n", hour, min, sec);
 
    return 0;
}