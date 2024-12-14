## Pre-requisite

- Read and understand [eXpOS process abstraction](https://exposnitc.github.io/os_spec-files/expos_abstractions.html) and 
  eXpOS process model documentation before proceeding further.

## Learning Objectives 

- Understanding the process creation mechanism in eXpOS.
- Implementation of fork and exit system calls.

## Reference

![fork_call_workflow.png](https://exposnitc.github.io/img/roadmap/fork.png)


_sourced from eXpOSNITC for reference_

## Points to note

## Steps

- run batch_compile to generate compile spl and expl files
  - batch-compile.sh 19
  - batch-compile.sh finalOS
- format and load files to disk in bulk
  - load-disk.sh 19
- start xsm with timer and run forkEx.xsm
  - start-xsm.sh timer 10

## Assignment

Write two ExpL programs even.expl and odd.expl to print the first 100 even and odd numbers respectively. 
Write another ExpL program that first creates a child process using Fork. Then, the parent process shall use the exec system call to execute even.xsm and the child shall execute odd.xsm. Load this program as the init program.

- run batch_compile to generate compile spl and expl files
  - batch-compile.sh 20
- format and load files to disk in bulk (using loader in assignment folder)
  - load-disk.sh 20 assignment
- start xsm
  - start-xsm.sh timer 10 debug
- run forkEx.xsm from console 

Write an ExpL program which creates linked list of the first 100 numbers. 
The program then forks to create a child so that the parent and the child has separate pointers to the head of the shared linked list.
Now, the child prints the 1st, 3rd, 5th, 7th... etc. entries of the list whereas the parent prints the 2nd, 4th, 6th, 8th....etc. entries of the list. 
Eventually all numbers will be printed, but in some arbitrary order 

- run batch_compile to generate compile spl and expl files
  - batch-compile.sh 20
- format and load files to disk in bulk (using loader in assignment folder)
  - load-disk.sh 20 assignment
- start xsm
  - start-xsm.sh timer 10 debug
- run llist.xsm from console 