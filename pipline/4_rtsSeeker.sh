#! /bin/bash

if [[ $# -ne 7 ]]
then
    echo 'Usage: ./'$0 ' genome fai treatbam inputbam outFileName min_read FC'  
    exit 1
fi 

genome=$1
fai=$2
treatbam=$3
inputbam=$4
outFileName=$5
min_read=$6
FC=$7

echo rtsSeeker start
if [ $fai == 0 ]
then
samtools faidx $genome
rtsSeeker --fa $genome --fai ${genome}.fai --treat treatbam --input inputbam -p 1.5 -t $min_read -r 0.05 -M 1 --gene hg38.gencode.v30.tRNA.refseqNcRNA.geneAnno.bed12 -f 1 -m $FC -s -n -w 20 -o outFileName
else
rtsSeeker --fa $genome --fai ${genome}.fai --treat treatbam --input inputbam -p 1.5 -t $min_read -r 0.05 -M 1 --gene hg38.gencode.v30.tRNA.refseqNcRNA.geneAnno.bed12 -f 1 -m $FC -s -n -w 20 -o outFileName
fi
echo rtsSeeker end

