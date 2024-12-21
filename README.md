# ExpOS

An experimental OS created to learn the working on an operating system. Refer expos [homepage](https://exposnitc.github.io/) 
for more details.

## Understanding the project

- Setup the docker environment to build expos by running `docker/build.sh`

- Directories under `workdir` corresponds to different stages of the expos roadmap (provided in reference section).

  - The roadmap is divided into stages and each stage is to be done in sequential order enabling you to build eXpOS _incrementally_.

## References

- [Setting up the System](https://exposnitc.github.io/expos-docs/roadmap/stage-01/)
- [eXpOS roadmap](https://exposnitc.github.io/Roadmap.html)

## Points to note

- XSM simulator inits the file system (within `xsm/machine.c`) using `../xfs-interface/disk.xfs` as set in `xsm/constants.h`, under the assumption that
  _xfs-interface_ application is always invoked from within the `xfs-interface` directory (and hence the disk.xfs would be created/updated within the same)
  
  Hence, make sure to perform the `fdisk` and `load` operations of xfs-interface from within the `xfs-interace` directory
- While writing assembly files (.xsm files), make sure to add an extra line at the end as `xfs-interface` on loading files, trims the last line
- Implementation plan in this road map is to store the process table entry for the process with ID=0 in the 16 words starting at memory address PROCESS_TABLE, the process table entry for process with PID=1 in 16 words starting at memory address PROCESS_TABLE+16 and so on
- Similarly, the page table for the process with PID=0 will be stored in 20 words starting at address PAGE_TABLE_BASE, page table for PID=1 will start at PAGE_TABLE_BASE+20 and so on
- One should NOT use alias/registers(R0-R15) inside interrupt programs before user-context has been backed up!

- _console, timer and disk_ interrupts are the hardware interrupts while interrupts 4-18 like exec, read, write, create are software interrupts
- XSM machine disables interrupts when executing in the kernel mode. Hence, the hardware can raise an interrupt only when the machine is executing in the user mode. 
  Hence, the OS has to schedule "some process" even if all processes are waiting for disk/terminal interrupt - for otherwise, the device concerned will never be able to interrupt the processor. 
  The IDLE process is precisely designed to take care of this and other similar situations. 
- MAX_MEM_PAGE although defaulted to 128 as per docs, compiles to 512 while expos restricts the pages to 128