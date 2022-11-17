#!/bin/sh -
docker login -u ralphsmeets -p VFzT0fnzdh
docker buildx create --name mybuilder
docker buildx use mybuilder
docker buildx inspect --bootstrap

docker buildx build \
  --platform linux/amd64,linux/arm/v7,linux/arm64 \
  -t ralphsmeets/mijn-kia-app:1.17.0 \
  -t ralphsmeets/mijn-kia-app:latest \
  --push \
  docker
