#!/bin/bash

IMAGE_NAME="bhavidocker/dev-app"
TAG="latest"

docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
docker push $IMAGE_NAME:$TAG

echo "Docker image pushed to Docker Hub: $IMAGE_NAME:$TAG"
