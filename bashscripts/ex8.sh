#!/usr/bin/bash

package=hjg
code=$?

sudo apt install $package >> package_install.log #rediret output to a file

if [ $code -eq 0 ]
then
    echo "the installation of the package was successful "
    echo "The new commmand is available here"
    which $package
else
    echo "package failed to install "
fi
