#! /bin/bash

zawartosc=$(ls)

for s in $zawartosc; do
    if [[ $s =~ \.c$ ]]; then
        $(cc $s -o ${s:: -2})
    fi
done
