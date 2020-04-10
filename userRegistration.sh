#!/bin/bash -x
shopt -s extglob

#Pattern for First name
namePattern=^[A-Z]{1}[a-z]{3,}$

#To check Validation for First name
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
