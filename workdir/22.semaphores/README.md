## Pre-requisite

- Read and understand [Resource Sharing](https://exposnitc.github.io/os_spec-files/expos_abstractions.html#resource_sharing) and 
  [Access Control](https://exposnitc.github.io/os_spec-files/synchronization.html#access_control) documentations of eXpOS.

## Learning Objectives 

- Understanding how semaphores help to solve the critical section problem.
- Add support for semaphores to eXpOS.

## Reference

![semaphore_call_workflow.png](https://exposnitc.github.io/img/roadmap/sem.png)

_sourced from eXpOSNITC for reference_

## Points to note

- While forking, make sure to update the child process status to CREATED only AFTER all required stack heap and code pages are acquired.
Else, while the parent waits to get a free page for child, the scheduler might invoke the child process since its status was made ready pre maturely
- MAX_MEM_PAGE although defaulted to 128 as per docs, compiles to 512 while expos restricts the pages to 128


## Steps

- run batch_compile to generate compile spl and expl files
  - batch-compile.sh 22 
  - batch-compile.sh finalOS
- format and load files to disk in bulk
  - load-disk.sh 22
- start xsm with timer with shell.spl as init program and run 'odd.xsm','even.xsm', 'abc', 'shutdown'
  - start-xsm.sh timer 10

## Assignment

    The shell asks you to enter a string (called a command). If the string entered is "Shutdown", the program executes the Shutdown system call to halt the OS.
    Otherwise, the shell program forks and create a child process. The parent process then waits for the child to exit using the Wait system call.
    The child process will try to execute the command (that is, execute the file with name command.)
    If no such file exists, Exec fails and the child prints "BAD COMMAND" and exits. Otherwise, the command file will be executed.
    In either case, upon completion of the child process, the parent process wakes up. The parent then goes on to ask the user for the next command.


1.  Write a reader-writer program that has two writers and one reader. The parent process will create two child processes by invoking fork. 
The parent and two child processes share a buffer of one word. At a time only one process can read/write to this buffer. 
To achieve this, these three processes use a shared semaphore. A writer process can write to the buffer if it is empty and the reader process can only read from the buffer if it is full. 
Before the word in the buffer is overwritten the reader process must read it and print the word to the console. 
The parent process is the reader process and its two children are writers. One child process writes even numbers from 1 to 100 and other one writes odd numbers from 1 to 100 to the buffer. 
The parent process reads the numbers and prints them on to the console. Compile the program and execute the program using the shell. 
The program must print all numbers from 1 to 100, but not necessarily in sequential order.

   - run batch_compile to generate compile spl and expl files
       - batch-compile.sh 22
       - batch-compile.sh finalOS
   - format and load files to disk in bulk
       - load-disk.sh 22 assignment
   - start xsm with timer with shell.spl as init program and run 'sem-1.xsm'
       - start-xsm.sh timer 10

2. The ExpL programs given here describes a parent.expl program and a child.expl program. The parent.xsm program will create 8 child processes by invoking Fork 3 times. 
Each of the child processes will print the process ID (PID) and then, invokes the Exec system call to execute the program "child.xsm". 
The child.xsm program stores numbers from PID*100 to PID*100 + 9 onto a linked list and prints them to the console 
(each child process will have a separate heap as the Exec system call allocates a separate heap for each process). 
Compile the programs given in the link above and execute the parent program (parent.xsm) using the shell. The program must print all numbers from 
PID*100 to PID*100+9, where PID = 2 to 9, but not necessarily in sequential order. 
Also, calculate the maximum memory usage, number of disk access and number of context switches (by modifying the OS Kernel code).

   - run batch_compile to generate compile spl and expl files
     - batch-compile.sh 22
     - batch-compile.sh finalOS
   - format and load files to disk in bulk
     - load-disk.sh 22 assignment
   - start xsm with timer with shell.spl as init program and run parent.xsm
     - start-xsm.sh timer 10

3. The two ExpL programs given here perform merge sort in two different ways. The first one is done in a sequential manner 
and the second one, in a concurrent approach. Values from 1 to 64 are stored in decreasing order in a linked list and are sorted 
using a recursive merge sort function. In the concurrent approach, the process is forked and the merge sort function is called 
recursively for the two sub-lists from the two child processes. Compile the programs given in the link above and execute each of them using the shell. 
The program must print values from 1 to 64 in a sorted manner. Also, calculate the maximum memory usage, 
number of contexts switches and the number of switches to KERNEL mode. 

   - run batch_compile to generate compile spl and expl files
       - batch-compile.sh 22
       - batch-compile.sh finalOS
   - format and load files to disk in bulk
       - load-disk.sh 22 assignment
   - start xsm with timer with shell.spl as init program and run mergeSeq.xsm, mergeCon.xsm, fork.xsm and shutdown
       - start-xsm.sh timer 10