#!/bin/sh -
docker login https://hub.docker.com/v2/repositories/ralphsmeets -u ralphsmeets -p VFzT0fnzdh
docker buildx create --name mybuilder
docker buildx use mybuilder
docker buildx inspect --bootstrap

docker buildx build \
  --platform linux/amd64,linux/arm/v7,linux/arm64 \
  -t mijn-kia-app:1.0.0 \
  --push \
  .
