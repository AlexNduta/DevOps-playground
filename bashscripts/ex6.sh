#!/usr/bin/bash

if [ -f myfile.txt ]
then
    echo "The file exits"
else
    touch myfile.txt
    echo "The file does not exits but I have created it for you"
fi
