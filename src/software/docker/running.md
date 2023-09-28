# Running Docker Containers

## Configure daemon to rotate logs automatically

> Docker 24.0.4+
> 
> This is useful for server-side docker containers, esp `docker compose` setups

Reference: [dockerd on linux](https://docs.docker.com/engine/reference/commandline/dockerd/#on-linux)

The log configurations for docker can be set in `/etc/docker/daemon.json`.

There are a lot of potential configs that can be used beyond this (see reference).

Add the following to that file (or create if it doesn't exist there):

### daemon.json

```json
{
  "log-opts": {
    "max-file": "5",
    "max-size": "10m"
  }
}
```
