## Pre-requisite

- Read and Understand the eXpOS Virtual Address Space Model and XEXE Executable File Format from [eXpOS ABI Documentation](https://exposnitc.github.io/abi.html#xexe)

## Learning Objectives 

- Familiarise with the Application Binary Interface(ABI) of eXpOS.
- Modify the INIT program to comply with the eXpOS ABI.

## Reference

## Points to note:

- load library to disk (13 & 14)
  - load --library /home/expos/myexpos/expl/library.lib
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
  - ./xsm --debug --timer 0
- R1 register holds cube of numbers upto 5 at each breakpoint

