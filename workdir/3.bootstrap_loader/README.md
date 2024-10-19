## Pre-requisite

1. [XSM privileged mode execution](https://exposnitc.github.io/Tutorials/xsm-instruction-cycle.html)

## Learning Objectives 

- Use the XSM Instruction set to write a small OS startup code.
- Load your OS startup code into the boot block of the disk and get this code executed on bootstrap.

## Reference

- [Bootstrap Loader](https://exposnitc.github.io/expos-docs/roadmap/stage-03/)

## Points to note:

XSM simulator inits the file system (within `xsm/machine.c`) using `../xfs-interface/disk.xfs` as set in `xsm/constants.h`, under the assumption that
_xfs-interface_ application is always invoked from within the `xfs-interface` directory (and hence the disk.xfs would be created/updated within the same)

Hence, make sure to perform the `fdisk` and `load` operations of xfs-interface from within the `xfs-interace` directory