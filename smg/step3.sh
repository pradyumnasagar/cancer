#!/bin/bash

source /PROJ/HEALTH/share/health.02pipeline/cancer/parameter/init_human.sh

cd /BJPROJ/GR/HUMAN/sci/WES.sumin.exome/mycall/smg
echo begin at: `date`
outDir=/BJPROJ/GR/HUMAN/sci/WES.sumin.exome/mycall/smg/smg
mkdir -p $outDir

genome music smg \
	--gene-mr-file coverage/gene_mrs \
	--output-file $outDir/smg.out \
	--processors 8

echo end at: `date`
