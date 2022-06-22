#Extend the program to take a range of number as input and output the Prime
#Numbers in that range

#!/bin/bash
echo  "Enter a first number:"
read number1
echo  "Enter a second number:"
read number2

for (( i=number1; i<number2; i++ ))
do
    result=1
   for (( j=2; j<i; j++ ))
   do
     if [ $(($i%$j))  -eq 0 ]
     then
         result=$(($result+1))
     fi
    done

     if [ $result -eq 1 ]
        then
        echo "Prime numbers between range is :$i"
     fi
done
