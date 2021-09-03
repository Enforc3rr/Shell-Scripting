#!/bin/bash
case "$1" in
    first)
        echo "first" 
        ;;
    second)
        echo "second" 
        ;;
    *) 
        echo "Default"
esac


EXTENSIONS=("ZIP" "RAR" "EXE" "TAR")

select option in ${EXTENSIONS[@]};
do
    echo "Selected Extension Number is $REPLY"
    echo "Selected Extension is $option"
done

