#! /bin/bash

if [[ $# -ne 1 ]]
then
    echo 'Usage: ./'$0 ' software'  
    exit 1
fi 

software=$1

if [ -z  `which $software` ]
then
echo "$software is not installed, or not in environment variables."
else
echo "$software is installed."
fi
