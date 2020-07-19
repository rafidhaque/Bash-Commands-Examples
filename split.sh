#!/bin/sh

# Author : Rafid Haque
# Institution : IUT

lis1[0]=0
i=0

lis2[0]=0
j=0

for var in "$@"
do
  if [[ $var =~ ^[+-]?[0-9]+$ ]]
  then
    lis1[$i]=$var
    i=$(( i + 1 ))
  else
    lis2[$j]=$var
    j=$(( j + 1 ))
  fi
done

echo List of Integers: [${lis1[*]}]
echo List of Non-Integers: [${lis2[*]}]
