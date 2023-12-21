#!/usr/bin/bash

myvar=1

while [ -f textfile.txt ]
do
    sleep 5
    echo "As of $(date) :the file exists" >> filecheck.log
done
echo "$(date)The file does not exist" >> filecheck.log

