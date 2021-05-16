#!/bin/bash

#Napisz skrypt który będzie pobierał jeden argument z linii komend i wypisywał informację o tym, czy jest to imie, kod pocztowy, czy też email. Na przykład

#./coto Janusz
#imię
#./coto 68-221
#kod pocztowy
#./coto 'muniek+spam@gmail.com'
#email

s=$1
if [[ $s =~ ^[A-Z][a-ząćęłńóśźż] ]]; then
       echo "imię"
elif [[ $s =~ ^[0-9]....[0-9]$ ]]; then
       echo "kod pocztowy"
elif [[ $s =~ .*[@].*[.].* ]]; then
	echo "mail"
fi

