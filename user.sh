# !/bin/bash
# Author : Cedrick kalukuta 
#Date : 03/05/2022
#Check if user exist 

echo -n "Please enter the username: "
read U 

id ${U} > /dev/null 2>&1

if

  [ $? -eq 0 ]

  then
  echo "User ${U} exists on this system"

  else
  echo " User ${U} does not exist"
  echo
  fi

