#!/bin/bash

if [ ${#} -gt 0 ]; then
    echo "$1"
else 
    echo "Nie podano parametrów"
fi