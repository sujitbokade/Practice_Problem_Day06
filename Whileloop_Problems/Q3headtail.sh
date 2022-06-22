#Extend the Flip Coin problem till either Heads or Tails wins 11 times.

#!/bin/bash
number=1
while [ $number -le 11 ]
do
    echo  "Tail"
    ((number++))

done
