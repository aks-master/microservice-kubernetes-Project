#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=aks1master/cloudndprj4
# Step 2:
# Authenticate & tag
export DOCKER_ID_USER="aks1master"
echo "Docker ID and Image $dockerpath"
docker login
docker tag cloudndprj4 $DOCKER_ID_USER/cloudndprj4


# Step 3:
# Push image to a docker repository
docker push $DOCKER_ID_USER/cloudndprj4