#!/bin/bash

echo " ******************************************* SHELL SCRIPTING *************************************** "

echo " Hello everyone! "
sleep 2
echo " Please enter a name :  "
sleep 2
read name
echo " Hi $name Wishing you a Happy New Year 2026 with the hope that you will have many blessings in the year to come "

echo " *************************************************************** "

echo "

" 
echo "********* Hi $name - Please see the detailed server status below ************* "


echo " ******************************* CURRENT DATE AND TIME ****************************** "
date | awk '{print " Today is: " $3 "st - " $2 " ; Day = " $1 " ; Time: " $4 }'
echo "

"
echo " *************************************** DISK SPACE AVAILABLE ********************************************************************** "

df -H | xargs | awk '{ print " Disk Space Available: " "Free/Used: " $10 "/" $9 " :GB" }'

echo "

"

echo " ***************************** USER UPTIME ****************************************************** "

uptime

echo "

"
echo "******************************* LAST 3 LOGIN DETAILS ********************************************* "
last | head -3
echo "

"

echo "****************************************** CURRENTLY CONNECTED *************************************** "
w

echo " *************************************************** END ************************************************************ "