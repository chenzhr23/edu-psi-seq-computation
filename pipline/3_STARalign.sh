#! /bin/bash

if [[ $# -ne 4 ]]
then
    echo 'Usage: ./'$0 ' threads STARindex fastq1 (fastq2)'  
    exit 1
fi 

threads=$1
starIndex=$2
fastq1=$3
fastq2=$4

echo align start
if [ $fastq2 == 0 ]
then
	STAR \
	--genomeDir $starIndex \
	--readFilesIn $fastq1 \
	--runThreadN $threads \
	--genomeLoad NoSharedMemory \
	--alignEndsType EndToEnd \
	--readFilesCommand zcat \
	--outSAMtype BAM SortedByCoordinate \
	--outFileNamePrefix ${fastq1%.fastq.gz} \
	--outStd Log \
	--limitBAMsortRAM 60000000000 \
	--outFilterType BySJout \
	--outFilterMultimapScoreRange 0 \
	--outFilterMultimapNmax 30 \
	--outFilterMismatchNmax 15 \
	--outFilterMismatchNoverLmax 0.1 \
	--outFilterScoreMin 0 \
	--outFilterScoreMinOverLread 0 \
	--outFilterMatchNmin 15 \
	--outFilterMatchNminOverLread 0.8 \
	--alignIntronMin 20 \
	--alignIntronMax 1000000 \
	--alignMatesGapMax 1000000 \
	--seedSearchStartLmax 15 \
	--seedSearchStartLmaxOverLread 1 \
	--seedSearchLmax 0 \
	--seedMultimapNmax 20000 \
	--seedPerReadNmax 1000 \
	--seedPerWindowNmax 100 \
	--seedNoneLociPerWindow 20 \
	--alignSJoverhangMin 8 \
	--alignSJDBoverhangMin 1 \
	--quantMode TranscriptomeSAM GeneCounts \
	--outSAMmode Full \
	--outSAMattributes All \
	--outSAMunmapped None \
	--outSAMorder Paired \
	--outSAMprimaryFlag AllBestScore \
	--outSAMreadID Standard \
	--outReadsUnmapped Fastx \
	--alignEndsProtrude 150 ConcordantPair \
	--limitOutSJcollapsed 5000000
else
	STAR \
	--genomeDir $starIndex \
	--readFilesIn $fastq1 $fastq2 \
	--runThreadN $threads \
	--genomeLoad NoSharedMemory \
	--alignEndsType EndToEnd \
	--readFilesCommand zcat \
	--outSAMtype BAM SortedByCoordinate \
	--outFileNamePrefix ${fastq1%.fastq.gz} \
	--outStd Log \
	--limitBAMsortRAM 60000000000 \
	--outFilterType BySJout \
	--outFilterMultimapScoreRange 0 \
	--outFilterMultimapNmax 30 \
	--outFilterMismatchNmax 15 \
	--outFilterMismatchNoverLmax 0.1 \
	--outFilterScoreMin 0 \
	--outFilterScoreMinOverLread 0 \
	--outFilterMatchNmin 15 \
	--outFilterMatchNminOverLread 0.8 \
	--alignIntronMin 20 \
	--alignIntronMax 1000000 \
	--alignMatesGapMax 1000000 \
	--seedSearchStartLmax 15 \
	--seedSearchStartLmaxOverLread 1 \
	--seedSearchLmax 0 \
	--seedMultimapNmax 20000 \
	--seedPerReadNmax 1000 \
	--seedPerWindowNmax 100 \
	--seedNoneLociPerWindow 20 \
	--alignSJoverhangMin 8 \
	--alignSJDBoverhangMin 1 \
	--quantMode TranscriptomeSAM GeneCounts \
	--outSAMmode Full \
	--outSAMattributes All \
	--outSAMunmapped None \
	--outSAMorder Paired \
	--outSAMprimaryFlag AllBestScore \
	--outSAMreadID Standard \
	--outReadsUnmapped Fastx \
	--alignEndsProtrude 150 ConcordantPair \
	--limitOutSJcollapsed 5000000
fi
echo align end

