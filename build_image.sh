#!/bin/sh

docker run \
       --rm \
       --env-file rcn_os.env \
       -v "$PWD":/input \
       -v "$PWD":/output \
       ghcr.io/raspi-alpine/builder
