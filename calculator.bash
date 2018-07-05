#!/bin/bash

clear
sum=0
i="y"

echo " Enter one number"
read n1
echo "Enter second number"
read n2

while [ $i = "y" ]
do
  echo "1.Addition"
  echo "2.Subtraction"
  echo "3.Multiplication"
  echo "4.Division"
  echo "Enter your choice"
  read ch
  case $ch in
    1)op='+' ;
    ans=$(echo "$n1 $op $n2" | bc -l)
    printf "%s %s %s = %s\n\n" "$n1" "$op" "$n2" "$ans";;
    2)op='-' ;
    ans=$(echo "$n1 $op $n2" | bc -l)
    printf "%s %s %s = %s\n\n" "$n1" "$op" "$n2" "$ans";;
    3)op='*' ;
    ans=$(echo "$n1 $op $n2" | bc -l)
    printf "%s %s %s = %s\n\n" "$n1" "$op" "$n2" "$ans";;
    4)op='/' ;
    ans=$(echo "$n1 $op $n2" | bc -l)
    printf "%s %s %s = %s\n\n" "$n1" "$op" "$n2" "$ans";;
    *)echo "Invalid choice";;
  esac
  echo "Press 'y' If you want to continue. Press any other key to quit."
  read i

  if [ $i != "y" ]
  then
    exit 0;



  else
    n2=$(echo "$ans" | bc -l)
    echo " Enter one number"
    read n1

  fi
done
