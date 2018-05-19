#!/bin/bash

set -ex
IMAGE_NAME="jincort/backend-redis"
TAG="${1}"
docker build -t ${IMAGE_NAME}:${TAG} .
docker push ${IMAGE_NAME}

