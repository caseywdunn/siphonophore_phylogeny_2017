#!/bin/bash
#SBATCH -t 24:00:00
set -e
cd unfiltered
for f in *.fastq
do
	fastq_illumina_filter -v -N -o ../filtered/$f $f
done
