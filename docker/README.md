# Running Emerald using Docker instances

## One Terminal

If all you need is a single terminal to the Docker image:

```
$ make interact
```

## Many Terminals

If you need a handful (or more?) terminals to the Docker image, you
can launch it in a detached state as follows:

```
$ make start
```

You can launch as many instances as you'd like. The instance IDs
appended, in order, to `.instances`.

### Attach to an instance

To attach the latest started instance:

```
$ make attach
```

Do this from multiple native terminals to achieve the intended
"multiple terminals" effect.

If you would like to attach to an instance initiated at a particular
depth (since `make start` may be run ad nauseum), you can set the `D`
(for depth) variable. For instance,

```
$ make D=2 attach
```

### Stop all instances

```
$ make stop
```

This will also automatically detach all attached terminals.

**OBS!** This deletes `.instances`.
