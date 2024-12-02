## Pre-requisite

- Read and understand the [XSM tutorial on Interrupts and Exception handling](https://exposnitc.github.io/Tutorials/xsm_interrupts_tutorial.html#disk_and_console_interrupts) before proceeding further.
- Revise the console and disk interrupt part.

## Learning Objectives 

- Familiarize with disk interrupt handling in XSM.
- Modify the Exec system call to handle disk interrupt.

## Reference

![exec_call_workflow.png](https://exposnitc.github.io/img/roadmap/exec2.png)

_sourced from eXpOSNITC for reference_

## Points to note

- There is no Release Disk function to release the disk instead the disk interrupt handler completes the task of the Release Disk function

## Steps

- run batch_compile to generate compile spl and expl files
  - batch-compile.sh 18
  - batch-compile.sh finalOS
- format and load files to disk in bulk
  - load-disk.sh 18
- start xsm with timer
  - start-xsm.sh timer 10

## Assignment

