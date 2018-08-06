#!/bin/bash

#load settings
source config.conf

#remove image and container
docker rm ${containername}
docker rmi ${imagename}:${version}