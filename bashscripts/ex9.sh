#/usr/bin/bash

directory=/iudhsjk

if [ -d $directory ]
then
    $?
    echo "The directory $directory exixts"
else
    echo $?
    echo "The directory $directory doesn't exist"
fi


