#!/bin/bash

#delete exited containers
docker rm $(docker ps -qa --no-trunc --filter "status=exited")

#remove none images
docker rmi -f $(docker images | grep "^<none>" | awk '{ print $3 }')
