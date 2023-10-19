# edu-psi-seq-computation

## computation tools and scripts for edu-psi-seq

## Contents
- [Remove adapter](#Remove-adapter)
- [Reads mapping](#Reads-mapping)
- [Benchmarking](#Benchmarking)
- [Usage](#Usage)
  - [Ψ-site identification](#Ψ-site-identification)
    - [calculate overall reverse transcription stop information](#calculate-overall-reverse-transcription-stop-information)
    - [pre-filt overall reverse transcription stop information](#pre-filt-overall-reverse-transcription-stop-information)
    - [User-defined](#a-User-defined)
  - [Ψ-site annotation](#Ψ-site-annotation)
  - [Ψ-site target prediction](#Ψ-site-target-prediction)

### Remove adapter

```shell
##M1
nohup cutadapt -j 5 -m 5 --fasta -u 4 -u -6 M1.extendedFrags.collapse.fa.gz -o M1.cutadapt.extendedFrags.collapse.cutBarcodes.fa.gz  &> M1.cutadapt.log &
##M2
nohup cutadapt -j 5 -m 5 --fasta -u 4 -u -6 M2.extendedFrags.collapse.fa.gz -o M2.cutadapt.extendedFrags.collapse.cutBarcodes.fa.gz  &> M2.cutadapt.log &
##M3
nohup cutadapt -j 5 -m 5 --fasta -u 4 -u -6 M3.extendedFrags.collapse.fa.gz -o M3.cutadapt.extendedFrags.collapse.cutBarcodes.fa.gz  &> M3.cutadapt.log &
##M4
nohup cutadapt -j 5 -m 5 --fasta -u 4 -u -6 M4.extendedFrags.collapse.fa.gz -o M4.cutadapt.extendedFrags.collapse.cutBarcodes.fa.gz  &> M4.cutadapt.log &
##M5
nohup cutadapt -j 5 -m 5 --fasta -u 4 -u -6 M5.extendedFrags.collapse.fa.gz -o M5.cutadapt.extendedFrags.collapse.cutBarcodes.fa.gz  &> M5.cutadapt.log &
##M6
nohup cutadapt -j 5 -m 5 --fasta -u 4 -u -6 M6.extendedFrags.collapse.fa.gz -o M6.cutadapt.extendedFrags.collapse.cutBarcodes.fa.gz  &> M6.cutadapt.log &
##M7
nohup cutadapt -j 5 -m 5 --fasta -u 4 -u -6 M7.extendedFrags.collapse.fa.gz -o M7.cutadapt.extendedFrags.collapse.cutBarcodes.fa.gz  &> M7.cutadapt.log &
##M8
nohup cutadapt -j 5 -m 5 --fasta -u 4 -u -6 M8.extendedFrags.collapse.fa.gz -o M8.cutadapt.extendedFrags.collapse.cutBarcodes.fa.gz  &> M8.cutadapt.log &
##M9
nohup cutadapt -j 5 -m 5 --fasta -u 4 -u -6 M9.extendedFrags.collapse.fa.gz -o M9.cutadapt.extendedFrags.collapse.cutBarcodes.fa.gz  &> M9.cutadapt.log &
##M10
nohup cutadapt -j 5 -m 5 --fasta -u 4 -u -6 M10.extendedFrags.collapse.fa.gz -o M10.cutadapt.extendedFrags.collapse.cutBarcodes.fa.gz  &> M10.cutadapt.log &
##M11
nohup cutadapt -j 5 -m 5 --fasta -u 4 -u -6 M11.extendedFrags.collapse.fa.gz -o M11.cutadapt.extendedFrags.collapse.cutBarcodes.fa.gz  &> M11.cutadapt.log &
##M12
nohup cutadapt -j 5 -m 5 --fasta -u 4 -u -6 M12.extendedFrags.collapse.fa.gz -o M12.cutadapt.extendedFrags.collapse.cutBarcodes.fa.gz  &> M12.cutadapt.log &
```

### Reads mapping

```shell
##M1
nohup STAR --genomeDir /public/home/chenzr/software/qt_project/psiFinder_dev/psiFinder_v1/build/psiFinder/snakemake/genome/hg38 --readFilesIn ../M1.cutadapt.extendedFrags.collapse.cutBarcodes.fa.gz --runThreadN 8 --genomeLoad NoSharedMemory --alignEndsType EndToEnd --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate --outFileNamePrefix M1.STAR. --outStd Log --limitBAMsortRAM 60000000000 --outFilterType BySJout --outFilterMultimapScoreRange 0 --outFilterMultimapNmax 30 --outFilterMismatchNmax 15 --outFilterMismatchNoverLmax 0.1 --outFilterScoreMin 0 --outFilterScoreMinOverLread 0 --outFilterMatchNmin 15 --outFilterMatchNminOverLread 0.8 --alignIntronMin 20 --alignIntronMax 1000000 --alignMatesGapMax 1000000 --seedSearchStartLmax 15 --seedSearchStartLmaxOverLread 1 --seedSearchLmax 0 --seedMultimapNmax 20000 --seedPerReadNmax 1000 --seedPerWindowNmax 100 --seedNoneLociPerWindow 20 --alignSJoverhangMin 8 --alignSJDBoverhangMin 1 --quantMode TranscriptomeSAM GeneCounts --outSAMmode Full --outSAMattributes All --outSAMunmapped None --outSAMorder Paired --outSAMprimaryFlag AllBestScore --outSAMreadID Standard --outReadsUnmapped Fastx --alignEndsProtrude 150 ConcordantPair --limitOutSJcollapsed 5000000  &> M1.STAR.log &
##M2
nohup STAR --genomeDir /public/home/chenzr/software/qt_project/psiFinder_dev/psiFinder_v1/build/psiFinder/snakemake/genome/hg38 --readFilesIn ../M2.cutadapt.extendedFrags.collapse.cutBarcodes.fa.gz --runThreadN 8 --genomeLoad NoSharedMemory --alignEndsType EndToEnd --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate --outFileNamePrefix M2.STAR. --outStd Log --limitBAMsortRAM 60000000000 --outFilterType BySJout --outFilterMultimapScoreRange 0 --outFilterMultimapNmax 30 --outFilterMismatchNmax 15 --outFilterMismatchNoverLmax 0.1 --outFilterScoreMin 0 --outFilterScoreMinOverLread 0 --outFilterMatchNmin 15 --outFilterMatchNminOverLread 0.8 --alignIntronMin 20 --alignIntronMax 1000000 --alignMatesGapMax 1000000 --seedSearchStartLmax 15 --seedSearchStartLmaxOverLread 1 --seedSearchLmax 0 --seedMultimapNmax 20000 --seedPerReadNmax 1000 --seedPerWindowNmax 100 --seedNoneLociPerWindow 20 --alignSJoverhangMin 8 --alignSJDBoverhangMin 1 --quantMode TranscriptomeSAM GeneCounts --outSAMmode Full --outSAMattributes All --outSAMunmapped None --outSAMorder Paired --outSAMprimaryFlag AllBestScore --outSAMreadID Standard --outReadsUnmapped Fastx --alignEndsProtrude 150 ConcordantPair --limitOutSJcollapsed 5000000  &> M2.STAR.log &
##M3
nohup STAR --genomeDir /public/home/chenzr/software/qt_project/psiFinder_dev/psiFinder_v1/build/psiFinder/snakemake/genome/hg38 --readFilesIn ../M3.cutadapt.extendedFrags.collapse.cutBarcodes.fa.gz --runThreadN 8 --genomeLoad NoSharedMemory --alignEndsType EndToEnd --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate --outFileNamePrefix M3.STAR. --outStd Log --limitBAMsortRAM 60000000000 --outFilterType BySJout --outFilterMultimapScoreRange 0 --outFilterMultimapNmax 30 --outFilterMismatchNmax 15 --outFilterMismatchNoverLmax 0.1 --outFilterScoreMin 0 --outFilterScoreMinOverLread 0 --outFilterMatchNmin 15 --outFilterMatchNminOverLread 0.8 --alignIntronMin 20 --alignIntronMax 1000000 --alignMatesGapMax 1000000 --seedSearchStartLmax 15 --seedSearchStartLmaxOverLread 1 --seedSearchLmax 0 --seedMultimapNmax 20000 --seedPerReadNmax 1000 --seedPerWindowNmax 100 --seedNoneLociPerWindow 20 --alignSJoverhangMin 8 --alignSJDBoverhangMin 1 --quantMode TranscriptomeSAM GeneCounts --outSAMmode Full --outSAMattributes All --outSAMunmapped None --outSAMorder Paired --outSAMprimaryFlag AllBestScore --outSAMreadID Standard --outReadsUnmapped Fastx --alignEndsProtrude 150 ConcordantPair --limitOutSJcollapsed 5000000  &> M3.STAR.log &
##M4
nohup STAR --genomeDir /public/home/chenzr/software/qt_project/psiFinder_dev/psiFinder_v1/build/psiFinder/snakemake/genome/hg38 --readFilesIn ../M4.cutadapt.extendedFrags.collapse.cutBarcodes.fa.gz --runThreadN 8 --genomeLoad NoSharedMemory --alignEndsType EndToEnd --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate --outFileNamePrefix M4.STAR. --outStd Log --limitBAMsortRAM 60000000000 --outFilterType BySJout --outFilterMultimapScoreRange 0 --outFilterMultimapNmax 30 --outFilterMismatchNmax 15 --outFilterMismatchNoverLmax 0.1 --outFilterScoreMin 0 --outFilterScoreMinOverLread 0 --outFilterMatchNmin 15 --outFilterMatchNminOverLread 0.8 --alignIntronMin 20 --alignIntronMax 1000000 --alignMatesGapMax 1000000 --seedSearchStartLmax 15 --seedSearchStartLmaxOverLread 1 --seedSearchLmax 0 --seedMultimapNmax 20000 --seedPerReadNmax 1000 --seedPerWindowNmax 100 --seedNoneLociPerWindow 20 --alignSJoverhangMin 8 --alignSJDBoverhangMin 1 --quantMode TranscriptomeSAM GeneCounts --outSAMmode Full --outSAMattributes All --outSAMunmapped None --outSAMorder Paired --outSAMprimaryFlag AllBestScore --outSAMreadID Standard --outReadsUnmapped Fastx --alignEndsProtrude 150 ConcordantPair --limitOutSJcollapsed 5000000  &> M4.STAR.log &
##M5
nohup STAR --genomeDir /public/home/chenzr/software/qt_project/psiFinder_dev/psiFinder_v1/build/psiFinder/snakemake/genome/hg38 --readFilesIn ../M5.cutadapt.extendedFrags.collapse.cutBarcodes.fa.gz --runThreadN 8 --genomeLoad NoSharedMemory --alignEndsType EndToEnd --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate --outFileNamePrefix M5.STAR. --outStd Log --limitBAMsortRAM 60000000000 --outFilterType BySJout --outFilterMultimapScoreRange 0 --outFilterMultimapNmax 30 --outFilterMismatchNmax 15 --outFilterMismatchNoverLmax 0.1 --outFilterScoreMin 0 --outFilterScoreMinOverLread 0 --outFilterMatchNmin 15 --outFilterMatchNminOverLread 0.8 --alignIntronMin 20 --alignIntronMax 1000000 --alignMatesGapMax 1000000 --seedSearchStartLmax 15 --seedSearchStartLmaxOverLread 1 --seedSearchLmax 0 --seedMultimapNmax 20000 --seedPerReadNmax 1000 --seedPerWindowNmax 100 --seedNoneLociPerWindow 20 --alignSJoverhangMin 8 --alignSJDBoverhangMin 1 --quantMode TranscriptomeSAM GeneCounts --outSAMmode Full --outSAMattributes All --outSAMunmapped None --outSAMorder Paired --outSAMprimaryFlag AllBestScore --outSAMreadID Standard --outReadsUnmapped Fastx --alignEndsProtrude 150 ConcordantPair --limitOutSJcollapsed 5000000  &> M5.STAR.log &
##M6
nohup STAR --genomeDir /public/home/chenzr/software/qt_project/psiFinder_dev/psiFinder_v1/build/psiFinder/snakemake/genome/hg38 --readFilesIn ../M6.cutadapt.extendedFrags.collapse.cutBarcodes.fa.gz --runThreadN 8 --genomeLoad NoSharedMemory --alignEndsType EndToEnd --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate --outFileNamePrefix M6.STAR. --outStd Log --limitBAMsortRAM 60000000000 --outFilterType BySJout --outFilterMultimapScoreRange 0 --outFilterMultimapNmax 30 --outFilterMismatchNmax 15 --outFilterMismatchNoverLmax 0.1 --outFilterScoreMin 0 --outFilterScoreMinOverLread 0 --outFilterMatchNmin 15 --outFilterMatchNminOverLread 0.8 --alignIntronMin 20 --alignIntronMax 1000000 --alignMatesGapMax 1000000 --seedSearchStartLmax 15 --seedSearchStartLmaxOverLread 1 --seedSearchLmax 0 --seedMultimapNmax 20000 --seedPerReadNmax 1000 --seedPerWindowNmax 100 --seedNoneLociPerWindow 20 --alignSJoverhangMin 8 --alignSJDBoverhangMin 1 --quantMode TranscriptomeSAM GeneCounts --outSAMmode Full --outSAMattributes All --outSAMunmapped None --outSAMorder Paired --outSAMprimaryFlag AllBestScore --outSAMreadID Standard --outReadsUnmapped Fastx --alignEndsProtrude 150 ConcordantPair --limitOutSJcollapsed 5000000  &> M6.STAR.log &
##M7
nohup STAR --genomeDir /public/home/chenzr/software/qt_project/psiFinder_dev/psiFinder_v1/build/psiFinder/snakemake/genome/hg38 --readFilesIn ../M7.cutadapt.extendedFrags.collapse.cutBarcodes.fa.gz --runThreadN 8 --genomeLoad NoSharedMemory --alignEndsType EndToEnd --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate --outFileNamePrefix M7.STAR. --outStd Log --limitBAMsortRAM 60000000000 --outFilterType BySJout --outFilterMultimapScoreRange 0 --outFilterMultimapNmax 30 --outFilterMismatchNmax 15 --outFilterMismatchNoverLmax 0.1 --outFilterScoreMin 0 --outFilterScoreMinOverLread 0 --outFilterMatchNmin 15 --outFilterMatchNminOverLread 0.8 --alignIntronMin 20 --alignIntronMax 1000000 --alignMatesGapMax 1000000 --seedSearchStartLmax 15 --seedSearchStartLmaxOverLread 1 --seedSearchLmax 0 --seedMultimapNmax 20000 --seedPerReadNmax 1000 --seedPerWindowNmax 100 --seedNoneLociPerWindow 20 --alignSJoverhangMin 8 --alignSJDBoverhangMin 1 --quantMode TranscriptomeSAM GeneCounts --outSAMmode Full --outSAMattributes All --outSAMunmapped None --outSAMorder Paired --outSAMprimaryFlag AllBestScore --outSAMreadID Standard --outReadsUnmapped Fastx --alignEndsProtrude 150 ConcordantPair --limitOutSJcollapsed 5000000  &> M7.STAR.log &
##M8
nohup STAR --genomeDir /public/home/chenzr/software/qt_project/psiFinder_dev/psiFinder_v1/build/psiFinder/snakemake/genome/hg38 --readFilesIn ../M8.cutadapt.extendedFrags.collapse.cutBarcodes.fa.gz --runThreadN 8 --genomeLoad NoSharedMemory --alignEndsType EndToEnd --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate --outFileNamePrefix M8.STAR. --outStd Log --limitBAMsortRAM 60000000000 --outFilterType BySJout --outFilterMultimapScoreRange 0 --outFilterMultimapNmax 30 --outFilterMismatchNmax 15 --outFilterMismatchNoverLmax 0.1 --outFilterScoreMin 0 --outFilterScoreMinOverLread 0 --outFilterMatchNmin 15 --outFilterMatchNminOverLread 0.8 --alignIntronMin 20 --alignIntronMax 1000000 --alignMatesGapMax 1000000 --seedSearchStartLmax 15 --seedSearchStartLmaxOverLread 1 --seedSearchLmax 0 --seedMultimapNmax 20000 --seedPerReadNmax 1000 --seedPerWindowNmax 100 --seedNoneLociPerWindow 20 --alignSJoverhangMin 8 --alignSJDBoverhangMin 1 --quantMode TranscriptomeSAM GeneCounts --outSAMmode Full --outSAMattributes All --outSAMunmapped None --outSAMorder Paired --outSAMprimaryFlag AllBestScore --outSAMreadID Standard --outReadsUnmapped Fastx --alignEndsProtrude 150 ConcordantPair --limitOutSJcollapsed 5000000  &> M8.STAR.log &
##M9
nohup STAR --genomeDir /public/home/chenzr/software/qt_project/psiFinder_dev/psiFinder_v1/build/psiFinder/snakemake/genome/hg38 --readFilesIn ../M9.cutadapt.extendedFrags.collapse.cutBarcodes.fa.gz --runThreadN 8 --genomeLoad NoSharedMemory --alignEndsType EndToEnd --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate --outFileNamePrefix M9.STAR. --outStd Log --limitBAMsortRAM 60000000000 --outFilterType BySJout --outFilterMultimapScoreRange 0 --outFilterMultimapNmax 30 --outFilterMismatchNmax 15 --outFilterMismatchNoverLmax 0.1 --outFilterScoreMin 0 --outFilterScoreMinOverLread 0 --outFilterMatchNmin 15 --outFilterMatchNminOverLread 0.8 --alignIntronMin 20 --alignIntronMax 1000000 --alignMatesGapMax 1000000 --seedSearchStartLmax 15 --seedSearchStartLmaxOverLread 1 --seedSearchLmax 0 --seedMultimapNmax 20000 --seedPerReadNmax 1000 --seedPerWindowNmax 100 --seedNoneLociPerWindow 20 --alignSJoverhangMin 8 --alignSJDBoverhangMin 1 --quantMode TranscriptomeSAM GeneCounts --outSAMmode Full --outSAMattributes All --outSAMunmapped None --outSAMorder Paired --outSAMprimaryFlag AllBestScore --outSAMreadID Standard --outReadsUnmapped Fastx --alignEndsProtrude 150 ConcordantPair --limitOutSJcollapsed 5000000  &> M9.STAR.log &
##M10
nohup STAR --genomeDir /public/home/chenzr/software/qt_project/psiFinder_dev/psiFinder_v1/build/psiFinder/snakemake/genome/hg38 --readFilesIn ../M10.cutadapt.extendedFrags.collapse.cutBarcodes.fa.gz --runThreadN 8 --genomeLoad NoSharedMemory --alignEndsType EndToEnd --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate --outFileNamePrefix M10.STAR. --outStd Log --limitBAMsortRAM 60000000000 --outFilterType BySJout --outFilterMultimapScoreRange 0 --outFilterMultimapNmax 30 --outFilterMismatchNmax 15 --outFilterMismatchNoverLmax 0.1 --outFilterScoreMin 0 --outFilterScoreMinOverLread 0 --outFilterMatchNmin 15 --outFilterMatchNminOverLread 0.8 --alignIntronMin 20 --alignIntronMax 1000000 --alignMatesGapMax 1000000 --seedSearchStartLmax 15 --seedSearchStartLmaxOverLread 1 --seedSearchLmax 0 --seedMultimapNmax 20000 --seedPerReadNmax 1000 --seedPerWindowNmax 100 --seedNoneLociPerWindow 20 --alignSJoverhangMin 8 --alignSJDBoverhangMin 1 --quantMode TranscriptomeSAM GeneCounts --outSAMmode Full --outSAMattributes All --outSAMunmapped None --outSAMorder Paired --outSAMprimaryFlag AllBestScore --outSAMreadID Standard --outReadsUnmapped Fastx --alignEndsProtrude 150 ConcordantPair --limitOutSJcollapsed 5000000  &> M10.STAR.log &
##M11
nohup STAR --genomeDir /public/home/chenzr/software/qt_project/psiFinder_dev/psiFinder_v1/build/psiFinder/snakemake/genome/hg38 --readFilesIn ../M11.cutadapt.extendedFrags.collapse.cutBarcodes.fa.gz --runThreadN 8 --genomeLoad NoSharedMemory --alignEndsType EndToEnd --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate --outFileNamePrefix M11.STAR. --outStd Log --limitBAMsortRAM 60000000000 --outFilterType BySJout --outFilterMultimapScoreRange 0 --outFilterMultimapNmax 30 --outFilterMismatchNmax 15 --outFilterMismatchNoverLmax 0.1 --outFilterScoreMin 0 --outFilterScoreMinOverLread 0 --outFilterMatchNmin 15 --outFilterMatchNminOverLread 0.8 --alignIntronMin 20 --alignIntronMax 1000000 --alignMatesGapMax 1000000 --seedSearchStartLmax 15 --seedSearchStartLmaxOverLread 1 --seedSearchLmax 0 --seedMultimapNmax 20000 --seedPerReadNmax 1000 --seedPerWindowNmax 100 --seedNoneLociPerWindow 20 --alignSJoverhangMin 8 --alignSJDBoverhangMin 1 --quantMode TranscriptomeSAM GeneCounts --outSAMmode Full --outSAMattributes All --outSAMunmapped None --outSAMorder Paired --outSAMprimaryFlag AllBestScore --outSAMreadID Standard --outReadsUnmapped Fastx --alignEndsProtrude 150 ConcordantPair --limitOutSJcollapsed 5000000  &> M11.STAR.log &
##M12
nohup STAR --genomeDir /public/home/chenzr/software/qt_project/psiFinder_dev/psiFinder_v1/build/psiFinder/snakemake/genome/hg38 --readFilesIn ../M12.cutadapt.extendedFrags.collapse.cutBarcodes.fa.gz --runThreadN 8 --genomeLoad NoSharedMemory --alignEndsType EndToEnd --readFilesCommand zcat --outSAMtype BAM SortedByCoordinate --outFileNamePrefix M12.STAR. --outStd Log --limitBAMsortRAM 60000000000 --outFilterType BySJout --outFilterMultimapScoreRange 0 --outFilterMultimapNmax 30 --outFilterMismatchNmax 15 --outFilterMismatchNoverLmax 0.1 --outFilterScoreMin 0 --outFilterScoreMinOverLread 0 --outFilterMatchNmin 15 --outFilterMatchNminOverLread 0.8 --alignIntronMin 20 --alignIntronMax 1000000 --alignMatesGapMax 1000000 --seedSearchStartLmax 15 --seedSearchStartLmaxOverLread 1 --seedSearchLmax 0 --seedMultimapNmax 20000 --seedPerReadNmax 1000 --seedPerWindowNmax 100 --seedNoneLociPerWindow 20 --alignSJoverhangMin 8 --alignSJDBoverhangMin 1 --quantMode TranscriptomeSAM GeneCounts --outSAMmode Full --outSAMattributes All --outSAMunmapped None --outSAMorder Paired --outSAMprimaryFlag AllBestScore --outSAMreadID Standard --outReadsUnmapped Fastx --alignEndsProtrude 150 ConcordantPair --limitOutSJcollapsed 5000000  &> M12.STAR.log &
```

### Benchmarking

```shell
##hg38_HEK293_PSI_seq_rep1_cmc_M4_VS_M1_EndToEnd
nohup /public/home/chenzr/software/qt_project/psiFinder_dev/psiFinder_v1/build/psiFinder/script/rtsSeeker --fa /public/home/chenzr/software/qt_project/psiFinder_dev/psiFinder_v1/build/psiFinder/snakemake/genome/hg38.fa --fai /public/home/chenzr/software/qt_project/psiFinder_dev/psiFinder_v1/build/psiFinder/snakemake/genome/hg38.fa.fai --treat /public/home/chenzr/eduPsiSeq_v3_totalRNA/allProcessingData/STAR_EndToEnd/M4.STAR.Aligned.sortedByCoord.out.bam --input /public/home/chenzr/eduPsiSeq_v3_totalRNA/allProcessingData/STAR_EndToEnd/M1.STAR.Aligned.sortedByCoord.out.bam -p 1.5 -t 5 -r 0.05 -M 1 --gene /public/home/chenzr/software/qt_project/psiFinder_dev/psiFinder_v1/build/psiFinder/script/hg38.gencode.v30.tRNA.refseqNcRNA.geneAnno.bed12 -f 1 -m 0 -s -n -w 20 -o /public/home/chenzr/eduPsiSeq_v3_totalRNA/allProcessingData/STAR_EndToEnd/hg38_HEK293_PSI_seq_rep1_cmc_M4_VS_M1_EndToEnd/M4_M1_roc_all.bed 2>/public/home/chenzr/eduPsiSeq_v3_totalRNA/allProcessingData/STAR_EndToEnd/hg38_HEK293_PSI_seq_rep1_cmc_M4_VS_M1_EndToEnd/M4_M1_roc_all_rtsSeeker.log
##hg38_HEK293_PSI_seq_rep2_cmc_M5_VS_M2_EndToEnd
nohup /public/home/chenzr/software/qt_project/psiFinder_dev/psiFinder_v1/build/psiFinder/script/rtsSeeker --fa /public/home/chenzr/software/qt_project/psiFinder_dev/psiFinder_v1/build/psiFinder/snakemake/genome/hg38.fa --fai /public/home/chenzr/software/qt_project/psiFinder_dev/psiFinder_v1/build/psiFinder/snakemake/genome/hg38.fa.fai --treat /public/home/chenzr/eduPsiSeq_v3_totalRNA/allProcessingData/STAR_EndToEnd/M5.STAR.Aligned.sortedByCoord.out.bam --input /public/home/chenzr/eduPsiSeq_v3_totalRNA/allProcessingData/STAR_EndToEnd/M2.STAR.Aligned.sortedByCoord.out.bam -p 1.5 -t 5 -r 0.05 -M 1 --gene /public/home/chenzr/software/qt_project/psiFinder_dev/psiFinder_v1/build/psiFinder/script/hg38.gencode.v30.tRNA.refseqNcRNA.geneAnno.bed12 -f 1 -m 0 -s -n -w 20 -o /public/home/chenzr/eduPsiSeq_v3_totalRNA/allProcessingData/STAR_EndToEnd/hg38_HEK293_PSI_seq_rep2_cmc_M5_VS_M2_EndToEnd/M5_M2_roc_all.bed 2>/public/home/chenzr/eduPsiSeq_v3_totalRNA/allProcessingData/STAR_EndToEnd/hg38_HEK293_PSI_seq_rep2_cmc_M5_VS_M2_EndToEnd/M5_M2_roc_all_rtsSeeker.log
##hg38_HEK293_PSI_seq_rep3_cmc_M6_VS_M3_EndToEnd
nohup /public/home/chenzr/software/qt_project/psiFinder_dev/psiFinder_v1/build/psiFinder/script/rtsSeeker --fa /public/home/chenzr/software/qt_project/psiFinder_dev/psiFinder_v1/build/psiFinder/snakemake/genome/hg38.fa --fai /public/home/chenzr/software/qt_project/psiFinder_dev/psiFinder_v1/build/psiFinder/snakemake/genome/hg38.fa.fai --treat /public/home/chenzr/eduPsiSeq_v3_totalRNA/allProcessingData/STAR_EndToEnd/M6.STAR.Aligned.sortedByCoord.out.bam --input /public/home/chenzr/eduPsiSeq_v3_totalRNA/allProcessingData/STAR_EndToEnd/M3.STAR.Aligned.sortedByCoord.out.bam -p 1.5 -t 5 -r 0.05 -M 1 --gene /public/home/chenzr/software/qt_project/psiFinder_dev/psiFinder_v1/build/psiFinder/script/hg38.gencode.v30.tRNA.refseqNcRNA.geneAnno.bed12 -f 1 -m 0 -s -n -w 20 -o /public/home/chenzr/eduPsiSeq_v3_totalRNA/allProcessingData/STAR_EndToEnd/hg38_HEK293_PSI_seq_rep3_cmc_M6_VS_M3_EndToEnd/M6_M3_roc_all.bed 2>/public/home/chenzr/eduPsiSeq_v3_totalRNA/allProcessingData/STAR_EndToEnd/hg38_HEK293_PSI_seq_rep3_cmc_M6_VS_M3_EndToEnd/M6_M3_roc_all_rtsSeeker.log
##hg38_HEK293_EDU_PSI_seq_V1_rep1_cmcAndTer_M7_VS_M1_EndToEnd
nohup /public/home/chenzr/software/qt_project/psiFinder_dev/psiFinder_v1/build/psiFinder/script/rtsSeeker --fa /public/home/chenzr/software/qt_project/psiFinder_dev/psiFinder_v1/build/psiFinder/snakemake/genome/hg38.fa --fai /public/home/chenzr/software/qt_project/psiFinder_dev/psiFinder_v1/build/psiFinder/snakemake/genome/hg38.fa.fai --treat /public/home/chenzr/eduPsiSeq_v3_totalRNA/allProcessingData/STAR_EndToEnd/M7.STAR.Aligned.sortedByCoord.out.bam --input /public/home/chenzr/eduPsiSeq_v3_totalRNA/allProcessingData/STAR_EndToEnd/M1.STAR.Aligned.sortedByCoord.out.bam -p 1.5 -t 5 -r 0.05 -M 1 --gene /public/home/chenzr/software/qt_project/psiFinder_dev/psiFinder_v1/build/psiFinder/script/hg38.gencode.v30.tRNA.refseqNcRNA.geneAnno.bed12 -f 1 -m 0 -s -n -w 20 -o /public/home/chenzr/eduPsiSeq_v3_totalRNA/allProcessingData/STAR_EndToEnd/hg38_HEK293_EDU_PSI_seq_V1_rep1_cmcAndTer_M7_VS_M1_EndToEnd/M7_M1_roc_all.bed 2>/public/home/chenzr/eduPsiSeq_v3_totalRNA/allProcessingData/STAR_EndToEnd/hg38_HEK293_EDU_PSI_seq_V1_rep1_cmcAndTer_M7_VS_M1_EndToEnd/M7_M1_roc_all_rtsSeeker.log
##hg38_HEK293_EDU_PSI_seq_V1_rep2_cmcAndTer_M8_VS_M2_EndToEnd
nohup /public/home/chenzr/software/qt_project/psiFinder_dev/psiFinder_v1/build/psiFinder/script/rtsSeeker --fa /public/home/chenzr/software/qt_project/psiFinder_dev/psiFinder_v1/build/psiFinder/snakemake/genome/hg38.fa --fai /public/home/chenzr/software/qt_project/psiFinder_dev/psiFinder_v1/build/psiFinder/snakemake/genome/hg38.fa.fai --treat /public/home/chenzr/eduPsiSeq_v3_totalRNA/allProcessingData/STAR_EndToEnd/M8.STAR.Aligned.sortedByCoord.out.bam --input /public/home/chenzr/eduPsiSeq_v3_totalRNA/allProcessingData/STAR_EndToEnd/M2.STAR.Aligned.sortedByCoord.out.bam -p 1.5 -t 5 -r 0.05 -M 1 --gene /public/home/chenzr/software/qt_project/psiFinder_dev/psiFinder_v1/build/psiFinder/script/hg38.gencode.v30.tRNA.refseqNcRNA.geneAnno.bed12 -f 1 -m 0 -s -n -w 20 -o /public/home/chenzr/eduPsiSeq_v3_totalRNA/allProcessingData/STAR_EndToEnd/hg38_HEK293_EDU_PSI_seq_V1_rep2_cmcAndTer_M8_VS_M2_EndToEnd/M8_M2_roc_all.bed 2>/public/home/chenzr/eduPsiSeq_v3_totalRNA/allProcessingData/STAR_EndToEnd/hg38_HEK293_EDU_PSI_seq_V1_rep2_cmcAndTer_M8_VS_M2_EndToEnd/M8_M2_roc_all_rtsSeeker.log
```

### Usage

#### Ψ-site identification with User-defined thresholds



