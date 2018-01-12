#!/bin/bash

gunzip -c BW1-2-Developing-zooids-gastros_S1_L007_R1_001.fastq.gz | head -n 40000000 >> Diphyes_dispar_R1_tmp1.fastq
gunzip -c BW1-2-Medusae_S2_L007_R1_001.fastq.gz | head -n 40000000 >> Diphyes_dispar_R1_tmp2.fastq
gunzip -c BW1-3-Bracts-from-eudoxids_S5_L007_R1_001.fastq.gz | head -n 40000000 >> Diphyes_dispar_R1_tmp3.fastq
gunzip -c BW1-3-Developing-zooids-gastros_S3_L007_R1_001.fastq.gz | head -n 40000000 >> Diphyes_dispar_R1_tmp4.fastq
gunzip -c BW1-3-Medusae_S6_L007_R1_001.fastq.gz | head -n 40000000 >> Diphyes_dispar_R1_tmp5.fastq
gunzip -c BW1-3-Pooled-mature-gastrozooids_S4_L007_R1_001.fastq.gz | head -n 40000000 >> Diphyes_dispar_R1_tmp6.fastq
gunzip -c BW1-5-developing-zooids-from-SGZ_S8_L007_R1_001.fastq.gz | head -n 40000000 >> Diphyes_dispar_R1_tmp7.fastq
gunzip -c BW1-5-Mature-gastrozooids-6_S7_L007_R1_001.fastq.gz | head -n 40000000 >> Diphyes_dispar_R1_tmp8.fastq

cat Diphyes_dispar_R1_tmp1.fastq Diphyes_dispar_R1_tmp2.fastq Diphyes_dispar_R1_tmp3.fastq Diphyes_dispar_R1_tmp4.fastq Diphyes_dispar_R1_tmp5.fastq Diphyes_dispar_R1_tmp6.fastq Diphyes_dispar_R1_tmp7.fastq Diphyes_dispar_R1_tmp8.fastq > Diphyes_dispar_R1.fastq

gzip Diphyes_dispar_R1.fastq

rm Diphyes_dispar_R1_tmp*.fastq

gunzip -c BW1-2-Developing-zooids-gastros_S1_L007_R2_001.fastq.gz | head -n 40000000 >> Diphyes_dispar_R2_tmp1.fastq
gunzip -c BW1-2-Medusae_S2_L007_R2_001.fastq.gz | head -n 40000000 >> Diphyes_dispar_R2_tmp2.fastq
gunzip -c BW1-3-Bracts-from-eudoxids_S5_L007_R2_001.fastq.gz | head -n 40000000 >> Diphyes_dispar_R2_tmp3.fastq
gunzip -c BW1-3-Developing-zooids-gastros_S3_L007_R2_001.fastq.gz | head -n 40000000 >> Diphyes_dispar_R2_tmp4.fastq
gunzip -c BW1-3-Medusae_S6_L007_R2_001.fastq.gz | head -n 40000000 >> Diphyes_dispar_R2_tmp5.fastq
gunzip -c BW1-3-Pooled-mature-gastrozooids_S4_L007_R2_001.fastq.gz | head -n 40000000 >> Diphyes_dispar_R2_tmp6.fastq
gunzip -c BW1-5-developing-zooids-from-SGZ_S8_L007_R2_001.fastq.gz | head -n 40000000 >> Diphyes_dispar_R2_tmp7.fastq
gunzip -c BW1-5-Mature-gastrozooids-6_S7_L007_R2_001.fastq.gz  | head -n 40000000 >> Diphyes_dispar_R2_tmp8.fastq

cat Diphyes_dispar_R2_tmp1.fastq Diphyes_dispar_R2_tmp2.fastq Diphyes_dispar_R2_tmp3.fastq Diphyes_dispar_R2_tmp4.fastq Diphyes_dispar_R2_tmp5.fastq Diphyes_dispar_R2_tmp6.fastq Diphyes_dispar_R2_tmp7.fastq Diphyes_dispar_R2_tmp8.fastq > Diphyes_dispar_R2.fastq

gzip Diphyes_dispar_R2.fastq

rm Diphyes_dispar_R2_tmp*.fastq