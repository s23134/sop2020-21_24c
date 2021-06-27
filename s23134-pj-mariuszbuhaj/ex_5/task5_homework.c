#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

int main() {
  pid_t CEOPid = getpid();
  pid_t newbiePid = fork();

  if (newbiePid == 0) {
    pid_t newNewbiePid = fork();
    if (newNewbiePid > 0) {
      fork();
    }
  }

  if (CEOPid == getpid()) {
    newbiePid = fork();
    if (newbiePid == 0) {
      pid_t newNewbiePid = fork();
      if (newNewbiePid > 0) {
        fork();
      }
    }
  }

  if (CEOPid == getpid()) {
    getchar();
  }

  printf("PID: %d, PPID: %d\n", getpid(), getppid());

  return 0;
}