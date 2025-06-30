#!/bin/bash

#Password Generator

echo "Welcome to Password Generator"

sleep 3

echo "Please enter the required length of password:"
read PASSWORD_LENGTH

for p in $(Seq 1);
do
	openssl rand -base64 48 | cut -c1-$PASSWORD_LENGTH
done