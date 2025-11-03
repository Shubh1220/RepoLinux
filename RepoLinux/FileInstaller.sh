#!/bin/bash
#File Installer

echo "Welcome to File Installer"
sleep 1

#Enter your project name
echo "Please enter your project name"
sleep 2
read projectname

#Check if the root folder created or not
mkdir $projectname
echo "Root folder created..."
cp index.html $projectname/index.html
cp main.css $projectname/main.css
echo "File has been copied..."

#Check if the file inside or not
cd $projectname
mkdir file1
mkdir file2
mkdir file3