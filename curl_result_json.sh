#!/bin/zsh

echo '\033[40;36;1m \n-----------------------------------request--------------------------------------\n \033[0m'

pbpaste

tmpCurl="`pbpaste`"

echo '\033[40;36;1m \n----------------------------------response--------------------------------------\n \033[0m'

echo $tmpCurl | pbcopy

curl2httpie.py

httpieStr=`pbpaste`

echo $httpieStr

eval $httpieStr
