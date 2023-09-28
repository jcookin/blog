# Docker Building

There are a LOT of gotchas.

## See output of "RUN" instructions

> Docker 24.0.4+ (ARM & AMD)
>
> NOTE: This only works with the `buildkit` backend

Typical docker builds cleverly hide the "mess" of the build stages, such as image pulls, output of `RUN` commands (from the Dockerfile) and more.

To see all of the output, use

```sh
export BUILDKIT_PROGRESS=plain
```
