#!/usr/bin/bash

case ${1,,} in
    alex | admin)
        echo "Hello, you are the boss"
        ;;
    help)
        echo "Just enter your username"
        ;;
    *)
        echo "Hello, gerarahia men"
esac
