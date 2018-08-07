#!/bin/bash

second=$(date +%s)
echo "Hello World. ${second} seoncds since 1st Jan 1970" > "/data/msg-${second}.log"

#successfully done
exit 0
