## Pre-requisite

- Read and understand the tutorial on [XSM Unprivileged Mode Execution](https://exposnitc.github.io/Tutorials/xsm_unprivileged_tutorial.html)

## Learning Objectives 

- Learn how to set up the address space for an application
- Run an init program in user mode from the OS startup code

## Reference

## Points to note:

- load init program to disk
  - load --init <path>
- compile halt program
  - ./spl <path>
- load halt to INT 10 location at disk
  - load --int=10 <path>
- load halt to exception handler location at disk
  - load --exhandler <path>
- compile os startup code
  - ./spl <path>
- load os startup code to disk
  - load --os <path>
- run xsm in debug mode
  - ./xsm -debug --timer 0
- R1 register holds square of numbers upto 5 at each breakpoint

