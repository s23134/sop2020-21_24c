#!/bin/bash

if [ $(ls -l | grep -e "^-" | wc -l) -gt 5 ]; then
	echo "tutaj jest więcej niż 5 plików"
else 
	echo "tutaj jest mniej niż 5 plików"
fi
