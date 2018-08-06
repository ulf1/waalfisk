#!/bin/bash

#load variables
source config.conf

#attach container
docker start -a ${containername}
