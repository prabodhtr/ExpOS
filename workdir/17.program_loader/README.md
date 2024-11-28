## Pre-requisite

- Before proceeding further review the XEXE file format and the address space model of a process from the eXpOS [ABI documentation](https://exposnitc.github.io/abi.html)
- Make sure to be thorough with the [SPL module calling conventions](https://exposnitc.github.io/support_tools-files/spl.html)

## Learning Objectives 

- Familiarize with Process manager and Memory Manager modules.
- Enable the OS to load and execute application programs from the disk (exec system call).

## Reference

![exec_call_workflow.png](https://exposnitc.github.io/img/roadmap/exec1.png)

_sourced from eXpOSNITC for reference_

## Points to note

## Steps

- run batch_compile to generate compile spl and expl files
  - batch-compile.sh 17
  - batch-compile.sh finalOS
- format and load files to disk in bulk
  - load-disk.sh 17
- start xsm with timer
  - start-xsm.sh timer 10

## Assignment

