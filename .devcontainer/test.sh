source ./test-utils.sh

#docker run --rm sigrok-dev:test /bin/bash -c 'sigrok-cli --version'
check "git" git --version
check "doxygen" doxygen --version
checkPythonExtension
check "sigrok-cli" sigrok-cli --version
# Report result
reportResults
