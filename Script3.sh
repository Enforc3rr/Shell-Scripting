#!/bin/bash
if [ -e readme.md ];
then
    echo "Readme Exists"
else
    echo "Readme does not exist"
fi


read -p "Enter A Number : " NUM 

while [ $NUM -lt 10 ];
do
    echo $NUM
    NUM=$((NUM + 1))
done


ARR=("THIS" "IS" "A" "LIST");
for ITEM in ${ARR[@]};
do 
    echo $ITEM
done

echo "Printing Numbers from One TO 10"
for NUMBER in $(seq 1 10);
do
    echo $NUMBER
done