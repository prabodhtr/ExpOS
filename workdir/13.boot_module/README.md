## Pre-requisite


## Learning Objectives 

- Introduction to XSM Module Programming.
- Implementation of Boot Module.

## Reference

## Points to note

- As of now, while scheduling multiple process via timer interrupt, if one process finishes first, the machine halts

## Steps

- run batch_compile to generate compile spl and expl files
  - batch-compile.sh <stage number>
- format and load files to disk in bulk
  - load-disk.sh <stage number>
- start xsm
  - start-xsm.sh timer 10

## Assignment
Write ExpL programs to print even and odd numbers below 100. Modify the boot module code and the timer interrupt handler 
to schedule the two processes along with the idle process concurrently using the Round Robin scheduling algorithm. 

- run batch_compile to generate compile spl and expl files
  - batch-compile.sh <stage number>
- format and load files to disk in bulk (using loader in assignment folder)
  - load-disk.sh <stage number> assignment
- start xsm
  - start-xsm.sh timer 10
