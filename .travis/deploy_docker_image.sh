#!/bin/sh

docker login -u $UN -p $PWD
TAG="latest"

docker build -t $TRAVIS_REPOSLUG:$TAG .
docker push $TRAVIS_REPO_SLUG:$TAG
