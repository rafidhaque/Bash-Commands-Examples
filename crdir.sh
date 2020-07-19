#!/bin/sh

# Author : Rafid Haque
# Institution : IUT

Help()
{
   # Display Help
   echo "-./crdir.sh creates files in the Documents directory."
   echo "- Syntax : ./crdir.sh <dir> <subdir_1> <subdir_2> ... <subdir_N>"
   echo "-- Parameter 1 <dir> : Name of the parent directory."
   echo "-- Parameter 2 <subdir_1> : Name of the 1st sub-directory."
   echo "--."
   echo "-- Parameter N <subdir_N> : Name of the Nth sub-directory."
}


arguments=$#
arguments=$(( arguments - 1))

i=0
list_arguments=( "$@" )

while getopts ":h" option; do
   case $option in
      h) # display Help
         Help
         exit;;
   esac
done

if [[ $arguments == -1 ]]
then
  echo "Syntax Error!!"
  echo "Syntax : ./crdir.sh <dir> <subdir_1> <subdir_2> ... <subdir_N>"
  echo "For more information type: ./crdir.sh -h"
else
  until [ $i -gt $arguments ]
  do
    mkdir "${list_arguments[i]}"
    cd "${list_arguments[i]}"
    i=$(( i +1 ))
  done
fi
