## Pre-requisite

-  Read and understand the [Kernel Stack Management](https://exposnitc.github.io/os_design-files/stack_smcall.html) during system calls  

## Learning Objectives 

- Familiarise with the [low level system call interface](https://exposnitc.github.io/abi.html) in eXpOS
- Familiarise with the console output mechanism in eXpOS

## Reference

## Points to note

## Steps

- run batch_compile to generate compile spl files
  - batch-compile.sh <stage number>
- format and load files to disk in bulk
  - load-disk.sh <stage number>
- start xsm
  - start-xsm.sh debug timer 10

