#!/bin/bash

# Build docker image for drawbot from jetbot/jetbot:jupyter-0.4.3-32.5.0 it is the last published version
# See https://hub.docker.com/r/jetbot/jetbot/tags?page=1&name=jupyter
echo "Building docker image for drawbot from jetbot/jetbot:jupyter-0.4.3-32.5.0"

sudo docker build \
    --build-arg BASE_IMAGE=jetbot/jetbot:jupyter-0.4.3-32.5.0" \
    -t drawbot:32.5.0 \
    -f Dockerfile \
    ../.. #project root as context