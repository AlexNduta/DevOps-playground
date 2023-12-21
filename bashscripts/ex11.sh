#!/usr/bin/bash

directory=/etc

if [ -d $directory ]
then
    echo "the directory exits"
    exit 0
else
    echo "The $directory does not exsts"
    exit 1
fi

echo "The exit code for thid script run is: $?"

