#!/bin/bash

funkcja() {
    echo -e "\e[$2m$1"
}

funkcja "tekst czarny" 30
funkcja "tekst czerwony" 31
funkcja "tekst zielony" 32
funkcja "tekst brązowy" 33
funkcja "tekst niebieski" 34
funkcja "tekst różowy" 35
funkcja "tekst turkusowy" 36
funkcja "tekst biały" 37
