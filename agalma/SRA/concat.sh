!/bin/bash
set -e
mkdir -p concatenated
cd subsampled

for i in {0..4}
do
	cat HWI-ST625-51-C02UNACXX-8-CAGATC_N${i}_1.fastq HWI-ST625-51-C02UNACXX-8-CGATGT_N${i}_1.fastq HWI-ST625-51-C02UNACXX-8-GCCAAT_N${i}_1.fastq HWI-ST625-51-C02UNACXX-8-GGCTAC_N${i}_1.fastq HWI-ST625-51-C02UNACXX-8-TAGCTT_N${i}_1.fastq > ../concatenated/Bargmannia_N${i}_R1.fastq
	cat HWI-ST625-51-C02UNACXX-8-CAGATC_N${i}_2.fastq HWI-ST625-51-C02UNACXX-8-CGATGT_N${i}_2.fastq HWI-ST625-51-C02UNACXX-8-GCCAAT_N${i}_2.fastq HWI-ST625-51-C02UNACXX-8-GGCTAC_N${i}_2.fastq HWI-ST625-51-C02UNACXX-8-TAGCTT_N${i}_2.fastq > ../concatenated/Bargmannia_N${i}_R2.fastq
done

cat HWI-ST625-51-C02UNACXX-6-ATCACG_1.fastq HWI-ST625-51-C02UNACXX-6-CGATGT_1.fastq HWI-ST625-51-C02UNACXX-6-TGACCA_1.fastq > ../concatenated/Frillagalma_R1.fastq
cat HWI-ST625-51-C02UNACXX-6-ATCACG_2.fastq HWI-ST625-51-C02UNACXX-6-CGATGT_2.fastq HWI-ST625-51-C02UNACXX-6-TGACCA_2.fastq > ../concatenated/Frillagalma_R2.fastq

cat HWI-ST625-51-C02UNACXX-7-ACTTGA_1.fastq HWI-ST625-51-C02UNACXX-7-TTAGGC_1.fastq SRR871527_1.fastq > ../concatenated/Nanomia_R1.fastq
cat HWI-ST625-51-C02UNACXX-7-ACTTGA_2.fastq HWI-ST625-51-C02UNACXX-7-TTAGGC_2.fastq SRR871527_2.fastq > ../concatenated/Nanomia_R2.fastq

cat FEG0371_1.fastq FEG0372_1.fastq > ../concatenated/Agalma_R1.fastq
cat FEG0371_2.fastq FEG0372_2.fastq > ../concatenated/Agalma_R2.fastq
