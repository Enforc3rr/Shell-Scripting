#!/bin/bash
echo "Hello World!"
VAR="This is a variable"
echo "Variable =  $VAR"

# Input Type 1 -
read -p "Enter Your Name : " NAME
echo $NAME

# Input Type 2 -
echo "Enter Your Name And Age :"
read NAME AGE
echo $NAME $AGE

echo "Zeroth Arg $0"
echo "First Arg $1"
echo "Second Arg $2"


