#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>
#include <sys/wait.h>

int main(void)
{

    int status; 
    pid_t fork_return; 

    fork_return = fork(); 

    wait(&status);
    if (WIFEXITED(status)) {
        printf("Child returned: %d\n", WEXITSTATUS(status));
        printf("Now Parent can work\n");
    }

    for (int i = 0; i< 3; i++) {
        printf("Working!!\n");
        sleep(1);
    }
}

