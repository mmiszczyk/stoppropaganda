#!/bin/bash

# Before using this script, perform "docker login" :)

VERSION=0.0.3
PLATFORM=linux/amd64,linux/arm64,linux/ppc64le,linux/386,linux/arm/v7,linux/arm/v6

docker buildx create --use --name multiarch --platform ${PLATFORM} || true
docker buildx build --push --platform ${PLATFORM} --tag erikmnkl/stoppropaganda:${VERSION} --tag erikmnkl/stoppropaganda:latest .
