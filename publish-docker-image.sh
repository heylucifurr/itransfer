#!/bin/bash

# Check if DOCKER_HUB_USERNAME is set
if [ -z "$DOCKER_HUB_USERNAME" ]; then
    echo "Error: DOCKER_HUB_USERNAME environment variable is not set"
    echo "Usage: DOCKER_HUB_USERNAME=yourusername ./publish-docker-image.sh [version]"
    exit 1
fi

IMAGE_NAME=${IMAGE_NAME:-itransfer}
VERSION=${1:-latest}

# Ensure buildx is set up correctly
docker buildx create --name mybuilder --driver docker-container --bootstrap 2>/dev/null || true
docker buildx use mybuilder

# Build for multiple platforms using buildx
docker buildx build \
    --platform linux/amd64,linux/arm64 \
    --progress=plain \
    -t $DOCKER_HUB_USERNAME/$IMAGE_NAME:$VERSION \
    -t $DOCKER_HUB_USERNAME/$IMAGE_NAME:latest \
    -f docker/alpine/Dockerfile \
    --build-arg VERSION=$VERSION \
    --push \
    .
