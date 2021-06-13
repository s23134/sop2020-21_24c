#!/bin/bash

zawartosc=$(ls -l | grep -e "^-" | awk '{print $9}')

# utworz tablice
declare -a tablica

count=0
for s in $zawartosc; do 
    tablica[$count]=$s
    (( count++ ))
done

# w normalnej kolejnosci 
for d in ${tablica[@]}; do 
    echo $d
done

# w odwrotnej kolejnosci
echo 
echo "Odwrotna kolejność"
for (( i=(( ${#tablica[@]} -1 )); i>=0; i-- )); do 
    echo ${tablica[$i]}
done
