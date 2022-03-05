# !/bin/bash
#Author : Cedrick Kalukuta 
#Date : 3/5/2022

#check groups

echo -n "Please enter the group name : "
read GROUP_NAME

grep ${GROUP_NAME} /etc/passwd > /dev/null 2>&1

if

  [ $? -eq 0 ]

  then
  echo "group ${GROUP_NAME} exists on this system"
  echo
  else
  echo " group ${GROUP_NAME} does not exist"
  echo
  fi
