#!/bin/bash

#Set the Password length
password_length=15

#Generate a rendom password
password=$(openssl rand -base64 48 | cut -c1-$password_length)

echo "Generated Password: $password"

