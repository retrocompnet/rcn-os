#!/bin/sh

docker run --rm -v "$PWD":/input -v "$PWD":/output ghcr.io/raspi-alpine/builder
