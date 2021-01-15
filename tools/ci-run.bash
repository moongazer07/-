#!/usr/bin/env bash

set -euo pipefail

echo "${DOCKER_PASSWORD}" | sudo -E docker login --username "${DOCKER_USERNAME}" --password-stdin

make system
make publish Z=1 CI=1
