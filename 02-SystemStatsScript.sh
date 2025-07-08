#!/bin/bash
#Purpose : To display the message.
#Author : Rochak Wadhwa
#Date : 
echo "============================================================="
echo " "
echo " "
echo " "
sleep 1
echo "Please enter your name:"
read name
sleep 1
echo "============================================================="
echo " "
echo " "
echo " "
sleep 3

echo "Hi $name - Please see the detailed server status below"
echo " "
echo " "
echo " "
sleep 3

echo "CURRENT DATE AND TIME"
sleep 1
date "+%Y-%m-%d %H:%M:%S"
echo " "
echo " "
echo " "
sleep 3


echo "DISK SPACE STATS"
df -H
echo " "
echo " "
echo " "
sleep 3

echo "USER UPTIME"
awk '{print int($1/3600)" hours, "int(($1%3600)/60)" minutes"}' /proc/uptime
echo " "
echo " "
echo " "
sleep 3



echo "Thank YOu!"