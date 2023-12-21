#!/usr/bin/bash

if [ ${1,,} = alex ]; then
    echo "Oh, you're the boss here. Welcome!"
elif [ ${1,,} = help ]; then
    echo "Just enter your username, duh"
else
    echo "i don't know who you are . But..."
fi
