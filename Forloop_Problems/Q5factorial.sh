#Write a program that computes a factorial of a number taken as input.

echo "Enter a number"

read num

fact=1

for((i=1;i<=num;i++))
{
  fact=$((fact * i))
}

echo $fact
