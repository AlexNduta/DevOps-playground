#!/usr/bin/env bash

echo "What is youtr favurite Linux distro"

echo "1 - Arc"
echo "2 - CentOs"
echo "3 - Debian"
echo "4 - Mint"
echo "5 - Ubuntu"
echo "6 - S'mn else"

read distro;

case $distro in
    i1) echo "Arch is a rolling release";;
    2) echo "CentOs is  popular on severs";;
    3) echo "Debian a commuint distro";;
    4) echo "Mint is popular on desktops and laptops";;
    *) echo "You didn't enter an appropriet choice"
esac
