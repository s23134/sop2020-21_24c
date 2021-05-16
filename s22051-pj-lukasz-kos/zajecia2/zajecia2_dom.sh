#!/bin/bash

REPL=$(echo -e "\\e[31mŁukasz\\e[0m")
sed s/Łukasz/${REPL}/g $1
