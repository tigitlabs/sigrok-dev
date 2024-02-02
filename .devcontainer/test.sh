docker build -t sigrok-dev:test .
docker run --rm sigrok-dev:test /bin/bash -c 'sigrok-cli --version'

