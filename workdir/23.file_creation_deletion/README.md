## Pre-requisite

- It is absolutely necessary to read and understand [eXpOS FILE SYSTEM and Implementation Tutorial](https://exposnitc.github.io/Tutorials/filesystem_implementation.html) documentation.
- Description of data structures - Inode Table, Root file, File(inode) status table and buffer table.

## Learning Objectives 

- Familiarize with eXpOS file system and implementation.
- Add support for file creation and deletion to the OS by implementing Create and Delete system calls

## Reference

![create_delete_workflow.png](https://exposnitc.github.io/img/roadmap/create_delete.png)

_sourced from eXpOSNITC for reference_

## Points to note

## Steps

- run batch_compile to generate compile spl and expl files
  - batch-compile.sh 23 
  - batch-compile.sh finalOS
- format and load files to disk in bulk
  - load-disk.sh 23
- start xsm with timer with shell.spl as init program and run 'odd.xsm','even.xsm', 'abc', 'shutdown'
  - start-xsm.sh timer 10

## Assignment

    The shell asks you to enter a string (called a command). If the string entered is "Shutdown", the program executes the Shutdown system call to halt the OS.
    Otherwise, the shell program forks and create a child process. The parent process then waits for the child to exit using the Wait system call.
    The child process will try to execute the command (that is, execute the file with name command.)
    If no such file exists, Exec fails and the child prints "BAD COMMAND" and exits. Otherwise, the command file will be executed.
    In either case, upon completion of the child process, the parent process wakes up. The parent then goes on to ask the user for the next command.

1. Write an ExpL program to take file name(string) and permission(integer) as input from the console and create a file with the provided input. 
(It is recommended to have .dat as extension for data files.) Run this program using shell. 
Using XFS-interface check if the entry for the file is created in inode table and root file. 

   - run batch_compile to generate compile spl and expl files
     - batch-compile.sh 23
     - batch-compile.sh finalOS
   - format and load files to disk in bulk
     - load-disk.sh 23 assignment
   - start xsm with timer with shell.spl as init program and run 'create.xsm', 'shutdown'
     - start-xsm.sh timer 10
     

2. Write an ExpL program to take file name(string) as input from the console and delete a file with provided input. 
Run the program using shell. Using XFS-interface check if the entry for the file is deleted from inode table and root file. 
Check the program for different files - like files created using Create system call, files not present in disk and files loaded using XFS-interface having some data

   - run batch_compile to generate compile spl and expl files
     - batch-compile.sh 23
     - batch-compile.sh finalOS
   - format and load files to disk in bulk
     - load-disk.sh 23 assignment
   - start xsm with timer with shell.spl as init program and run 'delete.xsm' to delete sample.dat and then 'shutdown'
     - start-xsm.sh timer 10
   - run xfs-interface, take dump of inode and root file to confirm that the file has been deleted
     - ./xfs-interface
     - dump --inodeusertable
     - dump --rootfile