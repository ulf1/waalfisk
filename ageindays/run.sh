#!/bin/bash

#load settings
source config.conf

#create container
docker run -it \
    --name "${containername}" \
    -d "${imagename}:${version}"

#done
echo '*** Container Instantiation Completed ***'
