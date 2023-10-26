#! /bin/bash

if [[ $# -ne 4 ]]
then
    echo 'Usage: ./'$0 ' threads genome gtf outputpath'  
    exit 1
fi 

threads=$1
genome=$2
gtf=$3
outputpath=$4

echo indexing start
	STAR \
	--runThreadN $threads \
	--runMode genomeGenerate \
	--genomeDir $outputpath\
	--genomeFastaFiles $genome \
	--sjdbGTFfile $gtf \
	--sjdbOverhang 99
echo indexing end
