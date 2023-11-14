#!/bin/sh
if [ -z "$DOCKER_ACCOUNT" ]; then
    DOCKER_ACCOUNT=group19
fi;
kubectl create deployment apache --image=docker.io/$DOCKER_ACCOUNT/apache:latest --port=80
kubectl expose deployment apache --type="LoadBalancer" --port 80
kubectl create deployment catalog --image=docker.io/$DOCKER_ACCOUNT/catalog:latest --port=8080
kubectl expose deployment catalog --type="LoadBalancer" --port 8080
kubectl create deployment customer --image=docker.io/$DOCKER_ACCOUNT/customer:latest --port=8080
kubectl expose deployment customer --type="LoadBalancer" --port 8080
kubectl create deployment order --image=docker.io/$DOCKER_ACCOUNT/order:latest --port=8080
kubectl expose deployment order --type="LoadBalancer" --port 8080
