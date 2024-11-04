
echo -n "Enter first number: "
read num1
while [ $num1 -lt 1 -o $num1 -gt 100 ]
do
	echo "Number not in range. Please enter again: "
	read num1
done

echo -n "Enter operator (a,s,m,d): "
read op
while [ $op != 'a' -a $op != 's' -a $op != 'm' -a $op != 'd' ]
do
	echo "Operator not valid. Please enter again: "
	read op
done

echo -n "Enter second number: "
read num2
while [ $num2 -lt 1 -o $num2 -gt 100 ]
do
	echo "Number not in range. Please enter again: "
	read num2
done

case $op in
	'a') ans=$(( $num1+$num2 ))
	;;
	's') ans=$(( $num1-$num2 ))
	;;
	'm') ans=$(( $num1*$num2 ))
	;;
	'd') ans=$(( $num1/$num2 ))
	;;
esac
echo "Result: $ans"
