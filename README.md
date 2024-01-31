# Experience Blog

Blog site using [mdbook](https://rust-lang.github.io/mdBook/index.html)

Utilizes a folder-based markdown structure which generates an html book-like reading experience.

## Configuring a server

> Recommended: Docker v24+

1. Copy the `compose.yaml` file to the server
   1. NOTE: for ARM based machines, be sure to point the docker compose file to `Dockerfile.arm`
2. Configure a cronjob to run as often as desired to re-build and re-start the docker-compose items

    ```sh
    crontab -e
    ```

    Add the following line

    ```sh
    0 0 * * * cd /path/to/compose.yaml && docker compose up --build -d
    ```

3. The server can be manually started the first time (also validates the project can build and start)

    ```sh
    docker compose up --build -d
    ```

## Developing

Install [nix-shell](https://nixos.org/manual/nix/stable/installation/installing-binary#multi-user-installation)

Recommended: install Nix Environment Selector Plugin for VSCode
`arrterian.nix-env-selector`

Start a terminal session with the `shell.nix` file

```bash
nix-shell
```
