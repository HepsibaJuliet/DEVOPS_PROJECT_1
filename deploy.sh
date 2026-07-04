#!/bin/bash

echo "Stopping existing container..."

docker stop devops-app || true
docker rm devops-app || true

echo "Starting new container..."

docker run -d \
  --name devops-app \
  -p 80:80 \
  --restart always \
  devops-build:v1

echo "Deployment Completed"
