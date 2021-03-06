#!/bin/bash

source /PROJ/HEALTH/share/health.02pipeline/cancer/parameter/init_human.sh

cd /BJPROJ/GR/HUMAN/sci/WES.sumin.exome/mycall/smg

echo begin at: `date`
genome music bmr calc-bmr \
	--bam-list /BJPROJ/GR/HUMAN/sci/WES.sumin.exome/mycall/smg/bam.S12.Fei.list \
	--reference-sequence $REF \
	--roi-file /BJPROJ/GR/HUMAN/sci/WES.sumin.exome/mycall/smg/roi.00.txt \
	--output-dir /BJPROJ/GR/HUMAN/sci/WES.sumin.exome/mycall/smg/coverage.Fei \
	--bmr-groups 2 \
	--maf-file /BJPROJ/GR/HUMAN/sci/WES.sumin.exome/mycall/strelka/somatic_mutation.Fei.S12.maf \
	--bmr-output mr.Fei/bmr.txt \
	--gene-mr-file mr.Fei/gene-mr.txt 

echo end at: `date`
