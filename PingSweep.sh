#!/bin/bash                                           
read -p "Enter The subnet : " SUBNET
for ip in $(seq 1 10);                                  
do                                                              
        IPSTATUS=$(ping -c 1 $SUBNET.$ip| grep transmitted, | awk '{print $6}')
        if [ $IPSTATUS = "100%" ];
        then                                                          
            echo " $SUBNET.$ip is not available"
        else
                echo " $SUBNET.$ip is available"
        fi
done
