## Pre-requisite

- Read and understand the 
  - [ExpL Specification](https://exposnitc.github.io/support_tools-files/expl.html) 
  - [ExpL high level library interface](https://exposnitc.github.io/os_spec-files/dynamicmemoryroutines.html) 

## Learning Objectives 

- Familiarise with the use of ExpL for writing application programs
- Familiarise with the ExpL high level library interface

## Reference

## Points to note

- while writing assembly files (.xsm files), make sure to add an extra line at the end as xfs on loading files trims the last line of file

## Steps

- run batch_compile to generate compile spl and expl files
  - batch-compile.sh <stage number>
- format and load files to disk in bulk
  - load-disk.sh <stage number>
- start xsm
  - start-xsm.sh debug timer 10
- load custom library with only write exposcall written
  - load --library <path to custom lib>
- load simple init file with only write expos call
  - load --init <path to simple-init.xsm>
- start xsm
  - start-xsm.sh

