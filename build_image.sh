#!/bin/sh

docker run --rm -it -v "$PWD":/input -v "$PWD":/output ghcr.io/raspi-alpine/builder
