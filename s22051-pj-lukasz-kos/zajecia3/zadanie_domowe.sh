#!/bin/bash

# polskie imiona
echo 'Polskie imiona'
grep -e "^[[:upper:]][[:lower:]]\{1,\}[[:space:]]" "tekst.txt"
echo

# kod pocztowy
echo 'Kod pocztowy' 
grep -e "^[[:digit:]]\{2\}-[[:digit:]]\{3\}[[:space:]]" "tekst.txt"
echo

# email
echo 'email'
grep -e "^[[:lower:]][[:lower:][:digit:]._+-]\{1,\}@[[:lower:]]\{1,\}\.[[:lower:]]\{1,\}[[:space:]]" "tekst.txt"

