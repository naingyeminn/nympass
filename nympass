#!/bin/bash

createpass() {
	read -p "Name Pass : " passname
	read -s -p "Enter Passphase : " passphase
	echo ""
	echo $passphase | openssl enc -aes-256-cbc -a -salt -pass pass:`ifconfig en4 | awk '/ether/{print $2}'` | openssl enc -aes-256-cbc -salt -out $passname
}

getpass() {
	openssl enc -aes-256-cbc -d -salt -in $1 | openssl enc -aes-256-cbc -a -d -salt -pass pass:$(ifconfig en4 | awk '/ether/{print $2}') | tr -d '\n' | pbcopy
}

getpass $1
