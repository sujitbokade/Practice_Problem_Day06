#Take a number from user and check if the number is a Prime then show
# that its palindrome is also prime
#    a. Write function check if number is Prime
#*********************************************************************
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
