#!/bin/bash

A=$1

if [ ${A: -1} = 'a' ]; then
	echo "$A ma kota, a kot ma ${A::-1}ę"
else
	echo "$A ma kota, a kot ma ${A}a"
fi

echo "Pierwszy znak: ${A::1}"
echo "Ostatni znak: ${A: -1}"
echo -e "${A/SOP/\\e[32mSOP\\e[0m}"
