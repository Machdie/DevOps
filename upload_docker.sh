#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=machdinho/devops

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
export DOCKER_ID_USER="machdinho"
docker login
docker tag machdinho/devops $DOCKER_ID_USER/devops 

# Step 3:

# Push image to a docker repository
docker push $DOCKER_ID_USER/devops 