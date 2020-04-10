#!/bin/bash -x
shopt -s extglob

#Pattern for First name and Last name
namePattern="^[A-Z]{1}[a-z]{3,}$"

#Pattern for Email address
emailPattern="^[A-Za-z]{3,}([.|+|_|-]?[A-Za-z0-9]+)?[@][A-Za-z0-9]+[.][A-Za-z]{2,4}([.][A-Za-z]{2,4}+)?$"

#To check Validation for User entries
function checkValidation() {
	if [[ $1 =~ $2 ]]
	then
		echo "Valid"
	else
		echo "Invalid"
	fi
}

read -p "Enter your First name: " firstName
checkValidation $firstName $namePattern

read -p "Enter your Last name: " lastName
checkValidation $lastName $namePattern

read -p "Enter your Email: " emailAddress
checkValidation $emailAddress $emailPattern

