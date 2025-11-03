#!/bin/bash

echo "************************************"
echo "                                    "
echo "Welcome to Library Management System"
echo "                                    "
echo "************************************"

#Prompt User for input
echo "Please enter the name of the library: "
read libraryName

#Creates the library
mkdir $libraryName

#Creates the  subdirectories
mkdir $libraryName/books $libraryName/students

#Creates the necessary files
touch $libraryName/books/booklist.txt
touch $libraryName/students/studentlist.txt

echo "Your Library $libraryName has been created!"