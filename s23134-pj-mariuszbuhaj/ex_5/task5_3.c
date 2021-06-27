#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>

int main(int agrc, char *agrv[]) {
    int input;
    pid_t pid;

    pid = fork();
    if(pid > 0){
        printf("Rodzic PID: %d\tPPID: %d\tPGID: %d\n", getpid(), getppid(), getpgrp()); 
        waitpid(0,&input, 0);
        printf("Rodzic zakończył czekać na swoje dziecko\n");
    } else if(pid == 0){
        printf("Dziecko PID: %d\tPPID: %d\tPGID: %d\n", getpid(), getppid(), getpgrp());
    } else {
        printf("Nie udało się utworzyć dziecka\n");
    }
    
    return 0;
}