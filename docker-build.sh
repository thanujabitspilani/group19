#!/bin/sh
if [ -z "$DOCKER_ACCOUNT" ]; then
    DOCKER_ACCOUNT=group19
fi;
docker build --tag=apache apache
docker tag apache $DOCKER_ACCOUNT/apache:latest
docker push $DOCKER_ACCOUNT/apache

docker build --tag=catalog catalog
docker tag catalog $DOCKER_ACCOUNT/catalog:latest
docker push $DOCKER_ACCOUNT/catalog

docker build --tag=customer customer
docker tag customer $DOCKER_ACCOUNT/customer:latest
docker push $DOCKER_ACCOUNT/customer

docker build --tag=order order
docker tag order $DOCKER_ACCOUNT/order:latest
docker push $DOCKER_ACCOUNT/order