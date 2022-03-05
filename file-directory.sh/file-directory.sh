#!/bin/bash
#Author: Cedrick Kalukuta 

#### Check if item is a file or a directory ####
echo  -n "Please enter the file or directory path: "

read F

if

  [ -f ${F} ]

  then

  echo -e "\n $F is a file\n"


  elif

  [ -d $F ]
  then

  echo -e "\n$F is a directory \n"

  else

  echo -e "\n $F doest not exist in the system\n"

  fi