# Sigrok Development Environment

This repository provides a complete development environment for working with Sigrok tools. It includes all the necessary tools and configurations required to test and build Sigrok tools.

## Features

- Environment setup for building your own release of Sigrok tools.

## Getting Started

<https://sigrok.org/wiki/Building>
To get started with this development environment, clone the repository and follow the setup instructions.

## Repositories in this environment

- <https://github.com/sigrokproject/libsigrok>
- <https://github.com/sigrokproject/libsigrokdecode.git>
- <https://github.com/sigrokproject/sigrok-cli.git>
- <https://github.com/sigrokproject/sigrok-dumps.git>
- <https://github.com/sigrokproject/sigrok-util.git>

## Run tests

```bash
LD_LIBRARY_PATH=$HOME/sr/lib ./decoder/pdtest -r -v -a
```
