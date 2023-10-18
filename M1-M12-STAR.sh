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
