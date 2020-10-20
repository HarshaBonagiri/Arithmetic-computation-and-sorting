#!/bin/bash -x
echo "Welcome to Arithmetic Computation and Sorting"

read -p "Enter number a: " a
read -p "Enter number b: " b
read -p "Enter number c: " c

Operation1=`expr "scale=2;$a+(($b*$c))" | bc'
Operation2=`expr "scale=2;(($a*$b))+$c" | bc`

