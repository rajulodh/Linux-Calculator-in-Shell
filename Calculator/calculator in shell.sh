#!/bin/bash

# Prompt for the first number and validate the input
echo -n "Enter first number (1-100): "
read num1
while ! [[ "$num1" =~ ^[0-9]+$ ]] || [ "$num1" -lt 1 ] || [ "$num1" -gt 100 ]; do
    echo "Invalid input. Please enter a number between 1 and 100: "
    read num1
done

# Prompt for the operator and validate
echo -n "Enter operator (a for addition, s for subtraction, m for multiplication, d for division): "
read op
while [[ "$op" != "a" && "$op" != "s" && "$op" != "m" && "$op" != "d" ]]; do
    echo "Invalid operator. Please enter 'a', 's', 'm', or 'd': "
    read op
done

# Prompt for the second number and validate the input
echo -n "Enter second number (1-100): "
read num2
while ! [[ "$num2" =~ ^[0-9]+$ ]] || [ "$num2" -lt 1 ] || [ "$num2" -gt 100 ]; do
    echo "Invalid input. Please enter a number between 1 and 100: "
    read num2
done

# Perform the calculation based on the chosen operator
case $op in
    'a') ans=$(( num1 + num2 )) ;; # Addition
    's') ans=$(( num1 - num2 )) ;; # Subtraction
    'm') ans=$(( num1 * num2 )) ;; # Multiplication
    'd') 
        if [ "$num2" -eq 0 ]; then # Check for division by zero
            echo "Error: Division by zero is not allowed."
            exit 1
        else
            ans=$(( num1 / num2 ))
        fi
    ;;
esac

# Output the result
echo "Result: $ans"
