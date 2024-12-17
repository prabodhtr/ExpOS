## Pre-requisite

- Read and understand A[ccess control and synchronization](https://exposnitc.github.io/os_spec-files/expos_abstractions.html) and 
  [Process synchronization](https://exposnitc.github.io/os_spec-files/synchronization.html#process_synchronization) documentations before proceeding further

## Learning Objectives 

- Familiarize with process synchronization in eXpOS
- Implementation of Wait and Signal system calls

## Reference

## Points to note

## Steps

- run batch_compile to generate compile spl and expl files
  - batch-compile.sh 21 
  - batch-compile.sh finalOS
- format and load files to disk in bulk
  - load-disk.sh 21
- start xsm with timer with shell.spl as init program and run 'odd.xsm','even.xsm', 'abc', 'shutdown'
  - start-xsm.sh timer 10

## Assignment

    The shell asks you to enter a string (called a command). If the string entered is "Shutdown", the program executes the Shutdown system call to halt the OS.
    Otherwise, the shell program forks and create a child process. The parent process then waits for the child to exit using the Wait system call.
    The child process will try to execute the command (that is, execute the file with name command.)
    If no such file exists, Exec fails and the child prints "BAD COMMAND" and exits. Otherwise, the command file will be executed.
    In either case, upon completion of the child process, the parent process wakes up. The parent then goes on to ask the user for the next command.


1. Load shell program as the INIT program. Test the shell version by giving different ExpL programs written in previous stages

2. Write an ExpL program 'pid.expl' which invokes Getpid system call and prints the pid. Write another ExpL program which invokes Fork system call three times back to back. 
Then, the program shall use Exec system call to execute pid.xsm file. Run this program using the shell.

  - run batch_compile to generate compile spl and expl files
    - batch-compile.sh 21
    - batch-compile.sh finalOS
  - format and load files to disk in bulk
    - load-disk.sh 21 assignment
  - start xsm with timer with shell.spl as init program and run fork.xsm
    - start-xsm.sh timer 10

