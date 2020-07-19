#!/bin/sh

# Author : Rafid Haque
# Institution : IUT

echo "Enter a number: "
read number

temp=1
i=1

until [ $i -gt $number ]
do
  temp=$(( temp * i ))
  i=$(( i +1 ))
done

echo Factorial of $number is: $temp
