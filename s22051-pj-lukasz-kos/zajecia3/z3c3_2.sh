#!/bin/bash

fibonacci() {
    declare wynik;
    if [ $1 -le 1 ]; then
        echo $1
    else
        pierwszy=$(fibonacci $(( $1 - 1 )));
        drugi=$(fibonacci $(( $1 - 2 )));
        wynik=$(( $pierwszy + $drugi ));
        echo $wynik;
    fi
    return $wynik
}

fibonacci 14

echo "Wynik funkcji fibonacciego to $?"
# różnica bierze się stąd, że zakres return to jeden bajt [0-255]. 
# Nastąpiło przekroczenie zakresu