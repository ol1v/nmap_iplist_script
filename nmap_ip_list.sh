#!/bin/bash

if [ ! -f $1 ] 
then
    echo "Error: Must supply file"
    exit
fi 

while read -r line 
do
    host=`echo $line | cut -d" " -f1`
    port=`echo $line | cut -d" " -f2`
    echo "Scanning $host : $port " 
    nmap -A $host -p $port
done < $1
