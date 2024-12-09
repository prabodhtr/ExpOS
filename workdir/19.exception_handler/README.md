## Pre-requisite

- It is absolutely necessary to have clear understanding about [Exception handling in XSM](https://exposnitc.github.io/Tutorials/xsm_interrupts_tutorial.html#exception_handling_in_XSM) before proceeding further.

## Learning Objectives 

- Familiarize with page fault exception in XSM.
- Implementation of Exception handler.
- Modify the exec system call to load code pages of a process on demand.

## Reference

![exec_call_workflow.png](https://exposnitc.github.io/img/roadmap/exec3.png)

![exception_handler.png](https://exposnitc.github.io/img/roadmap/exception.png)

_sourced from eXpOSNITC for reference_

## Points to note

- An OS can implement **Demand Paging**, as we will be doing here, only if the underlying machine hardware supports re-execution of the instruction that caused a page fault.
  i.e., After completing the actions of the exception handler, the OS must place this address on the top of the application program's stack before returning control back to user mode

## Steps

- run batch_compile to generate compile spl and expl files
  - batch-compile.sh 18
  - batch-compile.sh finalOS
- format and load files to disk in bulk
  - load-disk.sh 18
- start xsm with timer
  - start-xsm.sh timer 10

## Assignment

Write an ExpL program to implement a linked list. Your program should first read an integer N, then read N integers from console 
and store them in the linked list and print the linked list to the console. Run this program using shell version-I of stage 17.

- run batch_compile to generate compile spl and expl files
  - batch-compile.sh 19
- format and load files to disk in bulk (using loader in assignment folder)
  - load-disk.sh 19 assignment
- start xsm
  - start-xsm.sh timer 10 debug
- print page table disk map table and registers before and after loading code page in exception handler 

