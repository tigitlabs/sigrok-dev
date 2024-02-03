echo "(*) Building test image..."
docker build -t sigrok-dev:test .
# Run actual test
echo "(*) Running test..."
docker run  -v $(pwd):/home/vscode/test --rm sigrok-dev:test /bin/bash -c 'cd /home/vscode/test/ && ./test.sh'
