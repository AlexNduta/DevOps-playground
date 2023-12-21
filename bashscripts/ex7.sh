#!/usr/bin/bash

read =comand
if command -v $command
then
    echo "the command exists"
    htop
else
    echo"comand is not available"
    sudo apt update && sudo apt install -y $command && $command
fi

