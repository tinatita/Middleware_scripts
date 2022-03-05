#!/bin/bash
#Author: Cedrick kalukuta 
#Date : 3/5/2022

## This code will determine what operating system we are using 

OS=`cat /etc/os-release | grep ^ID= | awk -F'"' '{print$2}'`

if [ ${OS} == centos ]

then

echo -e "\n This system is centos \n"

elif

 [${OS} == ubuntu ]

then

echo -e "\n This is an ubuntu system\n"
elif
[${OS} == debian ]
then
echo -e "\n This system is debian  \n"

else

 echo -e "\n system OS is unknown\n"

fi