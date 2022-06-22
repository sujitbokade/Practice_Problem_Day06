#Write a program that takes a command-line argument n and prints a table of the
#powers of 2 that are less than or equal to 2^n


#!/bin/bash
echo "Enter a base number:"
read base
echo  "Enter a exponential number:"
read exp
power=1
for (( i=$exp; i!=0; i-- ))
do
    power=$(($power*$base))

done
echo $power
