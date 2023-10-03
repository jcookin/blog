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

## docker compose build at deploy time

Docker compose utilizes `compose.yaml` or `docker-compose.yaml` files to start 1+ containers in a simple way.

### git repo as build ontext

> Docker 24.0.4+ (does not work on at least docker 20)
>
> Docker compose v2.22.0

This blog is run with a docker compose setup which points to the public github repo for the build `context`.
Of course the `compose.yaml` can just point to any local directory, but this way the entirety of the repo, building, running, networking and anything else can be contained by a single `docker compose up --build -d` command.

The `compose.yaml` file looks something like this, which builds an image called `blog:latest` and starts a container called `blog`

```yaml
version: "3.8"

services:
  blog:
    build:
      context: https://github.com/jcookin/blog.git
    image: blog:latest
    container_name: blog
```

For local builds

```yaml
version: "3.8"

services:
  blog:
    build:
      context: .
    image: blog:latest
    container_name: blog
```

For ARM servers, there is also an included dockerfile, approparitely called `Dockerfile.arm` which can be specified

```yaml
version: "3.8"

services:
  blog:
    build:
      context: https://github.com/jcookin/blog.git
      dockerfile: Dockerfile.arm
    image: blog:latest
    container_name: blog
```
