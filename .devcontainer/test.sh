docker build -t sigrok-dev:test .
docker run -it --rm sigrok-dev:test /bin/bash -c 'sigrok-cli --version'
