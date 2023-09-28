# Go (golang)

## Projects

### Generic data adapter

[repo link](https://github.com/jcookin/go-generic-data-adapter)

A containerized sidecar application that pre-defines some common interfaces for talking to other applications.

Abstracts kubernetes networking to a single component which handles logging, statistics, and other monitoring.
Goal is for a one-click deploy method that is fast and easy to integrate.

Applications should live alongside this container (i.e. in a pod) and communicate over a simple localhost dns name via some standard message protocols, TCP ports and ZMQ initially most likely.

This project is intended to learn some performant go development, with a focus on various networking capabilities, metrics collection, and simply learning the language semantics and gotchas in a semi-complex project.

Ideally, this could be used to speed up professional development where ultra-low-latency or other extremes are not needed.

From the start of the project, I've become a fan of the go way for handling imports, and the relative simplicity of the development environment when integrated with vscode.
The default language server just works, and is reasonably configured for linting and suggestions.
Seems like a much smaller dev burden from the start rather than custom build/dev tools all over the place.
