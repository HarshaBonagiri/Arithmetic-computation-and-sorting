#!/bin/bash -x
declare -A dict

echo "Welcome to Arithmetic Computation and Sorting"

# Taking three inputs
read -p "Enter numbers a, b and c: " a b c

count=0
# Function to store all the Arithmetic computations in a dictionary
function ArithmeticComputations () {
argument=$1
dict[$((count++))]=$argument
}

ArithmeticComputations `expr "scale=2;$a+(($b*$c))" | bc`
ArithmeticComputations `expr "scale=2;(($a*$b))+$c" | bc`
ArithmeticComputations `expr "scale=2;$c+(($a/$b))" | bc`
ArithmeticComputations `expr "scale=2;(($a%$b))+$c" | bc`

for array in ${!dict[@]}
do
	arr[$array]=${dict[$array]}
done
dictionaryValuesInArray=${arr[@]}

function descendingOrder () {
	for value in $@
	do
		echo $value
	done | sort -r
}
descendingOrder $dictionaryValuesInArray


