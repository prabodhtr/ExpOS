## Pre-requisite


## Learning Objectives 

- Familiarise with the idle process.
- Program the timer interrupt handler to concurrently schedule two processes.e

## Reference

## Points to note

- Implementation plan in this road map is to store the process table entry for the process with ID=0 in the 16 words starting at memory address PROCESS_TABLE, the process table entry for process with PID=1 in 16 words starting at memory address PROCESS_TABLE+16 and so on 
- Similarly, the page table for the process with PID=0 will be stored in 20 words starting at address PAGE_TABLE_BASE, page table for PID=1 will start at PAGE_TABLE_BASE+20 and so on
- One should NOT use alias/registers inside system interrupts before user-context has been backed up!

## Steps

- run batch_compile to generate compile spl and expl files
  - batch-compile.sh <stage number>
- format and load files to disk in bulk
  - load-disk.sh <stage number>
- start xsm
  - start-xsm.sh timer 10
- load even.xsm as idle file
  - load --idle <path to even.xsm>
- start xsm
  - start-xsm.sh timer 0 -> all odd (only init.xsm is run)
  - start-xsm.sh timer 1 -> even + odd (init and idle are run alternately)
  - start-xsm.sh timer 300 -> even + odd (init and idle are run alternately)

