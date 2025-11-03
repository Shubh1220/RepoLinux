#!/bin/bash
#Purpose: To display the message
#Author: Shubh Rastogi
#Date: 31 October 2025

echo "*********************************** Shell Scripting **************************************"

echo "Hello Guyz! Welcome to Linux Project"
sleep 2
echo "Please enter a name: "
sleep 2
read name

echo "Hi $name Welcome to my Blogger"

echo "******************************************************************************************"
echo "
"

echo "*************** Hi $name - Please see the detailed srevr status below ********************"


echo "*************** Current Date and Time ****************************************************"
date +"Today: %d-%B; Day: %A; Time: %T"
echo "
"

echo "*************** Disk Space Available *****************************************************"
df -h / | awk 'NR==2 {print "Disk Space Available: Free=" $4 " / Used=" $3 " / Total=" $2 " (Mounted on " $6 ")"}'
echo "
"

echo "*************** User Uptime **************************************************************"
uptime
echo "
"

echo "*************** Last 3 Login Details *****************************************************"
last | head -3
echo "
"

echo "*************** Currently Connected ******************************************************"
w

echo "************************************** End ***********************************************"