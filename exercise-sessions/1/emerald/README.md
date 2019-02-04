# Sample Programs from Lecture 2

The names of the sample programs begin with a zero-padded double-digit
sequence number. This is to ensure that a directory listing will list
the sample programs in a particular order.

Use the provided [Makefile](Makefile) to compile and run the sample
programs. It has just one (phony) target:

```
$ make interact
```

This will use the [sibling Makefile in the docker
directory](../../../docker/Makefile) to spin up a docker instance with
this directory mounted in the working directory, and drop you into a
Bash shell. From there you can compile and run the Emerald code in
this directory:

```
docker@...$ ec file.m
docker@...$ emx file.x
```

The [Makefile](Makefile) also has a target for compiling running all
the programs (in `*`-globbing-order!). It only works from within the
docker instance, or if you have a local installation of Emerald:

```
docker@...$ make runall
```
