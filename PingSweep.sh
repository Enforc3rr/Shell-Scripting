#!/bin/bash
read -p "Enter Your Subnet : " SUBNET 

for IP in $(seq 1 10);
do 
    ping "$SUBNET.$IP" -n 1 
done