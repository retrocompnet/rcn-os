#!/bin/sh

docker run --privileged --rm docker.io/multiarch/qemu-user-static --persistent yes
docker run --rm -it -v "$PWD":/input -v "$PWD":/output ghcr.io/raspi-alpine/builder
