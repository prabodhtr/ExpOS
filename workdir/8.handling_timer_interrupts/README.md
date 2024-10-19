## Pre-requisite

- Read and understand the XSM tutorial on [Interrupts and Exception handling](https://exposnitc.github.io/Tutorials/xsm_interrupts_tutorial.html)(Read only the Timer Interrupt part)

## Learning Objectives 

- Run the XSM machine with Timer enabled.
- Familiarise with timer interrupt handling.

## Reference

## Points to note

## Steps

- load library to disk (13 & 14)
  - load --library /home/expos/myexpos/expl/library.lib
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
  - ./xsm --debug --timer 2
- R1 register holds cube of numbers upto 5 at each breakpoint

