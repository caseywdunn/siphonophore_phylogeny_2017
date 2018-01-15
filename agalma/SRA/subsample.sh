#!/bin/bash
set -e
mkdir -p subsampled
cd subsampled
for id in HWI-ST625-51-C02UNACXX-8-CAGATC HWI-ST625-51-C02UNACXX-8-CGATGT HWI-ST625-51-C02UNACXX-8-GCCAAT HWI-ST625-51-C02UNACXX-8-GGCTAC HWI-ST625-51-C02UNACXX-8-TAGCTT
do
    bl-filter-illumina -i ../filtered/${id}_1.fastq -i ../filtered/${id}_2.fastq -o ${id}_1.fastq -o ${id}_2.fastq -F 0.242 -S 5850687106356126 -q 0
done
for id in HWI-ST625-51-C02UNACXX-6-ATCACG HWI-ST625-51-C02UNACXX-6-CGATGT HWI-ST625-51-C02UNACXX-6-TGACCA
do
    bl-filter-illumina -i ../filtered/${id}_1.fastq -i ../filtered/${id}_2.fastq -o ${id}_1.fastq -o ${id}_2.fastq -F 0.570 -S 7587381619978254 -q 0
done
for id in HWI-ST625-51-C02UNACXX-7-ACTTGA HWI-ST625-51-C02UNACXX-7-TTAGGC SRR871527
do
    bl-filter-illumina -i ../filtered/${id}_1.fastq -i ../filtered/${id}_2.fastq -o ${id}_1.fastq -o ${id}_2.fastq -F 0.280 -S 14785699855795176 -q 0
done
for id in FEG0371 FEG0372
do
    bl-filter-illumina -i ../filtered/${id}_1.fastq -i ../filtered/${id}_2.fastq -o ${id}_1.fastq -o ${id}_2.fastq -F 0.741 -S 5764629216589137 -q 0
done