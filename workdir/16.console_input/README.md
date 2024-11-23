## Pre-requisite

- Read and understand the [XSM tutorial on Interrupts and Exception handling](https://exposnitc.github.io/Tutorials/xsm_interrupts_tutorial.html#disk_and_console_interrupts) before proceeding further. 
  _(Read only the console and disk interrupt part)_

## Learning Objectives 

- Familiarise with the Console Interrupt handling in XSM.
- Implementation of console input using the read system call.
- Introduction to input buffer.

## Reference

![terminal_read_workflow.png](https://exposnitc.github.io/img/roadmap/read.png)

_sourced from eXpOSNITC for reference_

## Points to note

## Steps

- run batch_compile to generate compile spl and expl files
  - batch-compile.sh 16
  - batch-compile.sh finalOS
- format and load files to disk in bulk
  - load-disk.sh 16
- start xsm with timer
  - start-xsm.sh timer 1000

## Assignment

