!/bin/bash
set -e
mkdir -p subsampled
cd subsampled

BARGMANNIA_IDS=(
HWI-ST625-51-C02UNACXX-8-CAGATC
HWI-ST625-51-C02UNACXX-8-CGATGT
HWI-ST625-51-C02UNACXX-8-GCCAAT
HWI-ST625-51-C02UNACXX-8-GGCTAC
HWI-ST625-51-C02UNACXX-8-TAGCTT
)

BARGMANNIA_FRACTIONS=(
0.000 0.124 0.249 0.373 0.497
0.000 0.100 0.201 0.301 0.402
0.000 0.099 0.197 0.296 0.394
0.359 0.270 0.180 0.090 0.000
1.262 0.946 0.631 0.315 0.000
)

for i in {0..4}
do
	id=${BARGMANNIA_IDS[i]}
	for j in {0..4}
	do
		bl-filter-illumina -i ../filtered/${id}_1.fastq -i ../filtered/${id}_2.fastq -o ${id}_N${j}_1.fastq -o ${id}_N${j}_2.fastq -F ${BARGMANNIA_FRACTIONS[5*i+j]} -S 5850687106356126 -q 0
	done
done

for id in HWI-ST625-51-C02UNACXX-6-ATCACG HWI-ST625-51-C02UNACXX-6-CGATGT HWI-ST625-51-C02UNACXX-6-TGACCA
do
	bl-filter-illumina -i ../filtered/${id}_1.fastq -i ../filtered/${id}_2.fastq -o ${id}_1.fastq -o ${id}_2.fastq -F 0.570 -S 7587381619978254 -q 0
done

for id in HWI-ST625-51-C02UNACXX-7-ACTTGA HWI-ST625-51-C02UNACXX-7-TTAGGC SRR871527
for id in SRR871527
do
	bl-filter-illumina -i ../filtered/${id}_1.fastq -i ../filtered/${id}_2.fastq -o ${id}_1.fastq -o ${id}_2.fastq -F 0.280 -S 14785699855795176 -q 0
done

for id in FEG0371 FEG0372
do
	bl-filter-illumina -i ../filtered/${id}_1.fastq -i ../filtered/${id}_2.fastq -o ${id}_1.fastq -o ${id}_2.fastq -F 0.741 -S 5764629216589137 -q 0
done
