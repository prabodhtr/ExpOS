## Pre-requisite

-  Read and understand the [Kernel Stack Management during Interrupts](https://exposnitc.github.io/os_design-files/stack_interrupt.html)

## Learning Objectives 

- Get introduced to setting up process table entry for a user program.
- Familiarise with the management of kernel stack in hardware interrupt handlers.

## Reference

## Points to note

## Steps

- load init program to disk (7 & 8)
  - load --init <path>
- compile halt program
  - ./spl <path>
- load halt to INT 10 location at disk
  - load --int=10 <path>
- load halt to exception handler location at disk
  - load --exhandler <path>
- compile timer interrupt code
  - ./spl <path>
- load timer interrupt disk (17 & 18)
  - load --int=timer <path> 
- compile os startup code
  - ./spl <path>
- load os startup code to disk (0)
  - load --os <path>
- run xsm with timer
  - ./xsm --timer 2
- R1 register holds cube of numbers upto 5 at each breakpoint

