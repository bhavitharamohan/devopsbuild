#!/bin/bash

# Set image name and tag
IMAGE_NAME="bhavidocker/dev-app"
TAG="latest"

# Build Docker image
docker build -t $IMAGE_NAME:$TAG .

echo "Docker image built: $IMAGE_NAME:$TAG"
