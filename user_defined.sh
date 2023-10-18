#! /bin/bash

if [[ $# -ne 7 ]]
then
    echo 'Usage: '$0 ' input.bed treatPreRpmFold preRpmFoldRatio treatAfterRpmFold afterRpmFoldRatio treatStopRatio stopRatioFC'  
    exit 1
fi 

out=$1
treatPreRpmFold=$2
preRpmFoldRatio=$3
treatAfterRpmFold=$4
afterRpmFoldRatio=$5
treatStopRatio=$6
stopRatioFC=$7
outFileName=${out%.bed}

echo "rtsSeeker User-defined mode: rtsSeeker start..."

awk 'FS=OFS="\t" {if($1~/^chr[0-9|a-z|A-Z]*$/ && $10=="T" && $14>10){print $0}}' $out > ${outFileName}_user_defined_filt.bed
# awk 'FS=OFS="\t" {if($1~/^chr[0-9|a-z|A-Z]*$/ && $10=="T" && $14>5){print $0}}' $out > ${outFileName}_user_defined_filt.bed
echo -e "treatPreRpmFold\tpreRpmFoldRatio\ttreatAfterRpmFold\tafterRpmFoldRatio\ttreatStopRatio\tstopRatioFC\n$treatPreRpmFold\t$preRpmFoldRatio\t$treatAfterRpmFold\t$afterRpmFoldRatio\t$treatStopRatio\t$stopRatioFC" >${outFileName}_user_defined_thres_colname.txt
echo -e "$treatPreRpmFold\t$preRpmFoldRatio\t$treatAfterRpmFold\t$afterRpmFoldRatio\t$treatStopRatio\t$stopRatioFC" >${outFileName}_user_defined_thres.txt

cat ${outFileName}_user_defined_filt.bed |awk -v sample=$(basename ${outFileName}) -v treatpre=`(cut -f 1 ${outFileName}_user_defined_thres.txt)` -v preFoldFC=`(cut -f 2 ${outFileName}_user_defined_thres.txt)` -v treataft=`(cut -f 3 ${outFileName}_user_defined_thres.txt)` -v aftFoldFC=`(cut -f 4 ${outFileName}_user_defined_thres.txt)` -v treatstoprate=`(cut -f 5 ${outFileName}_user_defined_thres.txt)` -v stoprateFC=`(cut -f 6 ${outFileName}_user_defined_thres.txt)` 'FS=OFS="\t" {if( $25>=treatpre && $27>=preFoldFC && $28>=treataft && $30>=aftFoldFC && $31>= treatstoprate && $33>=stoprateFC ) {print $0,sample}}' > ${outFileName}_user_defined_psi_prediction.bed
cat ${outFileName}_user_defined_filt.bed |awk -v treatPreRpmFold=`(cut -f 1 ${outFileName}_user_defined_thres.txt)` -v preRpmFoldRatio=`(cut -f 2 ${outFileName}_user_defined_thres.txt)` -v treatAfterRpmFold=`(cut -f 3 ${outFileName}_user_defined_thres.txt)` -v afterRpmFoldRatio=`(cut -f 4 ${outFileName}_user_defined_thres.txt)` -v treatStopRatio=`(cut -f 5 ${outFileName}_user_defined_thres.txt)` -v stopRatioFC=`(cut -f 6 ${outFileName}_user_defined_thres.txt)` 'FS=OFS="\t" {if( $25>=treatPreRpmFold && $27>=preRpmFoldRatio && $28>=treatAfterRpmFold && $30>=afterRpmFoldRatio && $31>= treatStopRatio && $33>=stopRatioFC) {print $0,"1"} else{ print $0,"0"} }' > ${outFileName}_user_defined_prediction_total.bed

bedtools intersect -a ${outFileName}_user_defined_prediction_total.bed -b $(dirname "$0")/hg38_human_chr21_rRNA_known_pseudoU_SingleSites.bed -s >${outFileName}_knowpse.bed
bedtools intersect -a ${outFileName}_user_defined_prediction_total.bed -b $(dirname "$0")/rrna_chr21.bed -s >${outFileName}_rrna.bed

bedtools intersect -a ${outFileName}_rrna.bed -b $(dirname "$0")/hg38_human_chr21_rRNA_known_pseudoU_SingleSites.bed -s -v >${outFileName}_notpse.bed
cat ${outFileName}_knowpse.bed |awk 'FS=OFS="\t" {print $0,"1"}' > ${outFileName}_knowpse.txt
cat ${outFileName}_notpse.bed |awk 'FS=OFS="\t" {print $0,"0"}' > ${outFileName}_notpse.txt

echo "getting roc_plot.txt"
cat ${outFileName}_knowpse.txt ${outFileName}_notpse.txt > ${outFileName}_roc_plot.txt

echo "generate ROC plot..."
echo "user-defined ROC ploting preparating"
nohup Rscript $(dirname "$0")/user_defined_evaluation.r -f ${outFileName}_roc_plot.txt -r $(dirname "$0")/hg38_human_chr21_rRNA_known_pseudoU_SingleSites.bed -s $(dirname "$0")/hg38.psiU.SingleSites.bed -t ${outFileName}_user_defined_prediction_total.bed -o ${outFileName} > ${outFileName}_roc_bestthres.log 2>&1 &
wait

cat ${outFileName}_roc_bestthres.log
mupdf-x11 ${outFileName}_six_variables_rRNA_violinplot.pdf &> /dev/null
mupdf-x11 ${outFileName}_user_defined_evaluation.pdf &> /dev/null

echo "User-defined program is done!"
echo -e "User-defined: User-defined result in $(dirname ${outFileName}_user_defined_psi_prediction.bed)"

