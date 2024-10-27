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