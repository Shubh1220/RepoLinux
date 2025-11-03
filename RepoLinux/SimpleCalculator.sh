#!/bin/bash
#Simple Calculator

#Enter the first number
echo "Please enter the first number:"
read num1

#Enter the second number
echo "Please enter the second number:"
read num2

#Enter the operation(+,-,*,/)
echo "Please enter the operation (+,-,*,/):"
read op

if [ "$op" == "+" ]
then
        result=$((num1+num2))
elif [ "$op" == "-" ]
then
        result=$((num1-num2))
elif [ "$op" == "*" ]
then
        result=$((num1*num2))
elif [ "$op" == "/" ]
then
        result=$((num1/num2))
fi

#Display the result
echo "Result:$result"