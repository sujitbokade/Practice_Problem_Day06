#Write a program that takes a input and determines if the number is a prime.

#!/bin/bash
echo "Enter a number"
read number
result=1

for ((  i=2; i<$number; i++ ))
do
    if  [  $(($number%$i))  -eq 0 ]
    then
        result=$(($result+1))
    fi
done
if [  $result -eq 1 ]
then
  echo "its a prime number"
else
  echo "its not a prime number"
fi
