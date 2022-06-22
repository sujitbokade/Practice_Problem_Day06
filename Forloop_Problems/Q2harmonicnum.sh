#!/bin/bash -x
read -p "enter the number" num
Hn=0
for((i=1;i<=num;i++))
do
temp=$(echo "$i" | awk '{ print " ",(1/$i) }')
echo "$temp"
Hn=$(echo $Hn $temp | awk '{print $Hn+$temp}')
echo "$Hn"
done
echo "harmonic number is $Hn"

