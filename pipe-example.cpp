// This code converts hexadecimal values provided by stdin and turns them into
// integer values 

// Needed for printf
#include <cstdio>
// Needed for strtol
#include <cstdlib>

int main() 
{
    char buf[BUFSIZ];

    while(fgets(buf, sizeof(buf), stdin) != NULL)
    {
        printf("%d\n", strtol(buf, NULL, 0));
    }

    return 0;
}

