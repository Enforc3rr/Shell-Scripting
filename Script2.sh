#!/bin/bash
NAME="Prateek"
read -p "Enter Your Name : " ENTEREDNAME
if [ $ENTEREDNAME = $NAME ];
then 
    echo "Hello $NAME"
fi

if [ $ENTEREDNAME = $NAME ];
then 
    read -p "Enter your password : " PASSWORD
    if [ $PASSWORD = "password" ]
    then
        echo "Welcome back $NAME"
    else
        echo "Incorrect password"
    fi
fi

