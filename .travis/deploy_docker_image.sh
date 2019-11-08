#!/bin/sh

docker login -u oscarwarner123 -p Alfie123
TAG="latest"

docker build -t $TRAVIS_REPO_SLUG:$TAG .
docker push $TRAVIS_REPO_SLUG:$TAG
