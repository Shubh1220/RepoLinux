#!/bin/bash

echo "************************************"
echo "                                    "
echo "Welcome to Sign Up Page Using linux."
echo "                                    "
echo "************************************"

#Enter your name
echo "Please enter your name:"
read name

#Enter your email address
echo "Please enter your email address:"
read email

#Enter your password
echo "Please enter your password"
read password

#Enter your confirm password
echo "Please enter your confirm password"
read confirm

#Check if the password is equal to confirm or not
if [ "$password" == "$confirm" ]; then
        echo "Your signup is successful!"
        echo "Name: $name"
        echo "Email: $email"
else
        echo "Password do not match! Please try again."
fi