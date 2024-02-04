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
- <https://github.com/sigrokproject/sigrok-test.git>

## Developing Decoders

<https://sigrok.org/wiki/Protocol_decoder_API>
<https://sigrok.org/wiki/Protocol_decoder_HOWTO>

```bash
# Run all tests
pdtest -r -v -a
# Run uart tests
pdtest -r -v uart
# List tests
pdtest -l
# To run tests in a specific directory
SIGROKDECODE_DIR=/path/to/libsigrokdecode/decoders/ \
sigrok-cli … -P <decodername>

# Load a uart file
sigrok-cli -i ~/sigrok-dumps/uart/hello_world/8n1/hello_world_8n1_9600.sr
sigrok-cli -i ~/sigrok-dumps/uart/hello_world/8n1/hello_world_8n1_9600.sr -P uart:baudrate=9600

# Load a modbus file
sigrok-cli -i ~/sigrok-dumps/modbus/rtu/modbus_rtu_9600_8n1.sr -P modbus:baudrate=9600
```

Get test data

```bash
wget https://michael.stapelberg.ch/2020-09-27-rohdaten-klingel-rev2.zip -O /tmp/klingel.zip && \
unzip /tmp/klingel.zip -d .
```
