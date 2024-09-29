## Pre-requisite

1. [XSM privileged mode execution](https://exposnitc.github.io/Tutorials/xsm-instruction-cycle.html)

## Concepts in action: 

You will write a small assembly program to print `HELLO_WORLD` using XSM Instruction set and load it into block 0 of the
disk using XFS-Interface as the OS Startup Code. This OS Startup Code is loaded from disk block 0 to memory page 1 by the
ROM Code on machine startup and is then executed.

## Reference

- [Bootstrap Loader](https://exposnitc.github.io/expos-docs/roadmap/stage-03/)
 