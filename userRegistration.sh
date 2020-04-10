#!/bin/bash -x
shopt -s extglob

#Pattern for First name and Last name
namePattern="^[A-Z]{1}[a-z]{3,}$"

#Pattern for Email address
emailPattern="^[A-Za-z]{3,}([.|+|_|-]?[A-Za-z0-9]+)?[@][A-Za-z0-9]+[.][A-Za-z]{2,4}([.][A-Za-z]{2,4}+)?$"

#Pattern for Mobile Number
mobilePattern="^[0-9]{1,3}[ ][0-9]{10}$"

#Pattern for Password Rule 1: Minimum 8 chracters
passwordPattern="^[a-zA-Z]{8,}$"

#Pattern for Password Rule 2: Atleast one upper case letter and Rule 1
passwordPattern="^(?=.*[A-Z]).[a-zA-Z]{7,}$"

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

read -p "Enter your Mobile number: " mobileNumber
checkValidation "$mobileNumber" "$mobilePattern"

read -p "Enter your Password: " password
checkValidation $password $passwordPattern
