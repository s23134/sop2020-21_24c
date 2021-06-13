#!/bin/bash

if [[ $1 =~ ^[[:upper:]][[:lower:]]+$ ]]; then 
    echo 'imię'
elif [[ $1 =~ ^[[:digit:]]{2}-[[:digit:]]{3}$ ]]; then 
    echo 'kod pocztowy'
elif [[ $1 =~ ^[[:lower:]][[:lower:][:digit:]._+-]+@[[:lower:]]+\.[[:lower:]]+$ ]]; then 
    echo 'email'
fi