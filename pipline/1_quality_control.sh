#! /bin/bash

if [[ $# -ne 2 ]]
then
    echo 'Usage: ./'$0 'threads  fastq'  
    exit 1
fi 

threads=$1
fastq=$2

echo quality control start
fastqc -t $threads $fastq
# fastqc quality control
echo quality control end

