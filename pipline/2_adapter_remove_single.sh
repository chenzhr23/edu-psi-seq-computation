#! /bin/bash

if [[ $# != 8 ]]
then
    echo 'Usage: ./'$0 ' 5_barcode 3_barcode 5_adapter 3_adapter 5_quality 3_quality minimum_length fastq'  
    exit 1
fi 

barcode5=$1
barcode3=$2
adapter5=$3
adapter3=$4
quality5=$5
quality3=$6
minlen=$7
fastq=$8

echo adapter remove start
if [ "$adapter5" != "0" ] && [ "$adapter3" != "0" ]
then
echo cutadapt -u $barcode5 -u -$barcode3 -a $adapter3 -g $adapter5 -q $quality5,$quality3 -m $minlen -o ${fastq%.fastq.gz}.removeadapter.fastq.gz $fastq
cutadapt -u $barcode5 -u -$barcode3 -a $adapter3 -g $adapter5 -q $quality5,$quality3 -m $minlen -o ${fastq%.fastq.gz}.removeadapter.fastq.gz $fastq
fi
if [ "$adapter5" == "0" ] && [ "$adapter3" != "0" ]
then
echo cutadapt -u $barcode5 -u -$barcode3 -a $adapter3 -q $quality5,$quality3 -m $minlen -o ${fastq%.fastq.gz}.removeadapter.fastq.gz $fastq
cutadapt -u $barcode5 -u -$barcode3 -a $adapter3 -q $quality5,$quality3 -m $minlen -o ${fastq%.fastq.gz}.removeadapter.fastq.gz $fastq
fi
if [ "$adapter5" != "0" ] && [ "$adapter3" == "0" ]
then
echo cutadapt -u $barcode5 -u -$barcode3 -g $adapter5 -q $quality5,$quality3 -m $minlen -o ${fastq%.fastq.gz}.removeadapter.fastq.gz $fastq
cutadapt -u $barcode5 -u -$barcode3 -g $adapter5 -q $quality5,$quality3 -m $minlen -o ${fastq%.fastq.gz}.removeadapter.fastq.gz $fastq
fi
if [ "$adapter5" == "0" ] && [ "$adapter3" == "0" ]
then
echo cutadapt -u $barcode5 -u -$barcode3 -q $quality5,$quality3 -m $minlen -o ${fastq%.fastq.gz}.removeadapter.fastq.gz $fastq
cutadapt -u $barcode5 -u -$barcode3 -q $quality5,$quality3 -m $minlen -o ${fastq%.fastq.gz}.removeadapter.fastq.gz $fastq
fi
echo adapter remove end

