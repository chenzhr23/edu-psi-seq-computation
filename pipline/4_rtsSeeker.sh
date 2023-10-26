#! /bin/bash

if [[ $# -ne 7 ]]
then
    echo 'Usage: ./'$0 ' genome fai treatfastq inputfastq outFileName min_read FC'  
    exit 1
fi 

genome=$1
fai=$2
treatfastq=$3
inputfastq=$4
outFileName=$5
min_read=$6
FC=$7

echo rtsSeeker start
if [ $fai == 0 ]
then
samtools faidx $genome
rtsSeeker --fa $genome --fai ${genome}.fai --treat ${treatfastq%.fastq.gz}Aligned.sortedByCoord.out.bam --input ${inputfastq%.fastq.gz}Aligned.sortedByCoord.out.bam -p 1.5 -t $min_read -r 0.05 -M 1 --gene hg38.gencode.v30.tRNA.refseqNcRNA.geneAnno.bed12 -f 1 -m $FC -s -n -w 20 -o ${output}.bed
else
rtsSeeker --fa $genome --fai ${genome}.fai --treat ${treatfastq%.fastq.gz}Aligned.sortedByCoord.out.bam --input ${inputfastq%.fastq.gz}Aligned.sortedByCoord.out.bam -p 1.5 -t $min_read -r 0.05 -M 1 --gene hg38.gencode.v30.tRNA.refseqNcRNA.geneAnno.bed12 -f 1 -m $FC -s -n -w 20 -o ${output}.bed
fi
echo rtsSeeker end

