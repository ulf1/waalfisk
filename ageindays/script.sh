#!/bin/bash

#change your birtday here
birthday=$(date +%s -d '1981-08-29 12:00:00'); 

#compute the elapsed days since birth
today=$(date +%s); 
echo "you are $(( ($today - $birthday) / 86400 )) days old";

#done
exit 0