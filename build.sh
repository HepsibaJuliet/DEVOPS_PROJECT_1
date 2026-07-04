#!/bin/bash

echo "Building Docker Image..."

docker build -t devops-build:v1 .

echo "Build Completed Successfully"
