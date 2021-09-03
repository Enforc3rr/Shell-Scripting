#!/bin/bash

function functionName(){
    if [ -e readme.md ];
    then
        echo "Yes Readme Exists"
        functionName2
    else
        echo "Does Not Exist"
    fi
}

function functionName2(){
    if [ -e readme.md ];
    then
        echo "Yes Readme Exists"
    else
        echo "Does Not Exist"
    fi
}

function func(){
    echo $0
    echo $1
}

functionName

func Hello


VAR=$(ping www.google.com -n 1 | grep Reply | awk '{print $6}')

echo $VAR
