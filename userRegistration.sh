#!/bin/bash -x
shopt -s extglob

#Pattern for First name and Last name
NAME_PATTERN="^[A-Z]{1}[a-z]{2,}$"

#Pattern for Email address
EMAIL_PATTERN="^[a-z0-9]{1,}([.|_|+|-]?[a-z0-9]+)?[@]{1}[a-z0-9]{1,}[.]{1}[a-z]{2,4}([.]{1}[a-z]{2})?$"

#Pattern for Mobile Number
MOBILE_PATTERN="^[0-9]{1,3}[ ]?[0-9]{10}$"

#Pattern for Password Rule 1: Minimum 8 chracters
PASSWORD_PATTERN="^[a-z]{8,}$"

#Pattern for Password Rule 2: Atleast one upper case letter and Rule 1
PASSWORD_PATTERN="^(?=.*[A-Z])[a-zA-Z]{8,}$"

#Pattern for Password Rule 3: Atleast 1 numeric number and Rule 2
PASSWORD_PATTERN="^(?=.*[A-Z])(?=.*[0-9])[A-Za-z0-9]{8,}$"

#Pattern for Password Rule 4: Exact 1 special character and Rule 3
PASSWORD_PATTERN="^(?=[^@|#|$|%|!|&]*[@|#|$|%|!|&][^@|#|$|%|!|&]*$)(?=.*[0-9])(?=.*[A-Z])[A-Za-z0-9@#$%!&]{8,}$"

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
checkValidation $firstName $NAME_PATTERN

read -p "Enter your Last name: " lastName
checkValidation $lastName $NAME_PATTERN

read -p "Enter your Email: " emailAddress
checkValidation $emailAddress $EMAIL_PATTERN

read -p "Enter your Mobile number: " mobileNumber
checkValidation "$mobileNumber" "$MOBILE_PATTERN"

read -p "Enter your Password: " password
checkValidation $password $PASSWORD_PATTERN
