#!/bin/bash

module load agalma/1.0.0

set -e

export AGALMA_DB="/gpfs/data/cdunn/analyses/agalma-siphonophora-20170501.sqlite"

agalma catalog insert -p /gpfs/data/cdunn/sequences/sra/siphonophora/concatenated/Agalma_R1.fastq /gpfs/data/cdunn/sequences/sra/siphonophora/concatenated/Agalma_R2.fastq -s 'Agalma elegans' -n '316166' -d '51383' -e 'FEG0371|FEG0372' -l 'FEG0371|FEG0372' -c 'Brown Genomics Core' -t 'NGZ and SGZ' -q 'Illumina HiSeq 2000' --note '' -b 'transcriptome' --sample_prep 'Trizol | Illumina TruSeq RNA Sample Prep Kit RNA Purification Beads ; 2 rounds | Illumina TruSeq RNA Sample Prep Kit' --id 'HWI-ST625-73-C0JUVACXX-7-AGALMA2' -v 'BW02-agalma-1'
agalma catalog insert -p /gpfs/data/cdunn/sequences/sra/siphonophora/concatenated/Bargmannia_R1.fastq /gpfs/data/cdunn/sequences/sra/siphonophora/concatenated/Bargmannia_R2.fastq -s 'Bargmannia elongata' -n '316231' -d '51386' -e 'FEG311|FEG312|FEG292|FEG295|FEG296' -l 'FEG311|FEG312|FEG292|FEG295|FEG296' -c 'Brown Genomics Core' -t 'mix' -q 'Illumina HiSeq 2000' --note '' -b 'transcriptome' --sample_prep 'mix, see individual sample numbers | Illumina TruSeq RNA Sample Prep Kit' --id 'HWI-ST625-51-C02UNACXX-8-BARGMANNIA'
agalma catalog insert -p /gpfs/data/cdunn/sequences/sra/siphonophora/concatenated/Frillagalma_R1.fastq /gpfs/data/cdunn/sequences/sra/siphonophora/concatenated/Frillagalma_R2.fastq -s 'Frillagalma vityazi' -d '719183' -e 'FEG291|FEG286|FEG309' -l 'FEG291|FEG286|FEG309' -c 'Brown Genomics Core' -t 'mix' -q 'Illumina HiSeq 2000' --note '' -b 'transcriptome' --sample_prep 'mix, see individual sample numbers | Illumina TruSeq RNA Sample Prep Kit' --id 'HWI-ST625-51-C02UNACXX-6-FRILLAGALMA'
agalma catalog insert -p /gpfs/data/cdunn/sequences/sra/siphonophora/concatenated/Nanomia_R1.fastq /gpfs/data/cdunn/sequences/sra/siphonophora/concatenated/Nanomia_R2.fastq -s 'Nanomia bijuga' -n '168759' -d '51389' -e 'FEG298|FEG284|FEG283' -l 'FEG298|FEG284|FEG283' -c 'Brown Genomics Core' -t 'mix' -q 'Illumina HiSeq 2000' --note '' -b 'transcriptome' --sample_prep 'mix, see individual sample numbers | Illumina TruSeq RNA Sample Prep Kit' --id 'HWI-ST625-51-C02UNACXX-7-NANOMIA'
agalma catalog insert -p /gpfs/home/cdunn/data/illumina/Project_Freya_Goetz_lane57_120302_SN625_0073_AC0JUVACXX/FEG0369_TTAGGC_L007_R1_001.fastq.gz /gpfs/home/cdunn/data/illumina/Project_Freya_Goetz_lane57_120302_SN625_0073_AC0JUVACXX/FEG0369_TTAGGC_L007_R2_001.fastq.gz -s 'Physalia physalis' -n '168775' -d '719181' -e 'FEG0369' -l 'FEG0369' -c 'Brown Genomics Core' -t 'whole animal w/o most of float' -q 'Illumina HiSeq 2000' --note '' -b 'transcriptome' --sample_prep 'Trizol | Illumina TruSeq RNA Sample Prep Kit RNA Purification Beads ; 2 rounds | Illumina TruSeq RNA Sample Prep Kit'
agalma catalog insert -p /gpfs/data/cdunn/sequences/illumina/111012_SN625_0054_BC026EACXX-Freya-Goetz-filtered-new/FEG-339_ATCACG_L006_R1_001.fastq.gz /gpfs/data/cdunn/sequences/illumina/111012_SN625_0054_BC026EACXX-Freya-Goetz-filtered-new/FEG-339_ATCACG_L006_R2_001.fastq.gz -s 'Abylopsis tetragona' -n '316209' -d '51370' -e 'FEG339' -l 'FEG339' -c 'Brown Genomics Core' -q 'Illumina HiSeq 2000' -b 'transcriptome' --sample_prep 'Invitrogen Dynabeads mRNA DIRECT kit ; 1 round | Illumina TruSeq RNA Sample Prep Kit' --id 'HWI-ST625-54-C026EACXX-6-ATCACG'
agalma catalog insert -p /gpfs/data/cdunn/sequences/illumina/111012_SN625_0054_BC026EACXX-Freya-Goetz-filtered-new/Acit_TATC_L003_R1_001.fastq.gz /gpfs/data/cdunn/sequences/illumina/111012_SN625_0054_BC026EACXX-Freya-Goetz-filtered-new/Acit_TATC_L003_R2_001.fastq.gz -s 'Aegina citrea' -n '168710' -d '51148' -e 'Acit' -l 'Acit' -c 'Brown Genomics Core' -t 'whole animal' -q 'Illumina HiSeq 2000' --note '' -b 'transcriptome' --sample_prep 'from Haddock lab | NuGEN Encore' --id 'HWI-ST625-54-C026EACXX-3-TATC'
agalma catalog insert --id "SRX231866" --paths /gpfs/data/cdunn/sequences/public/SRA/Aiptasia_pallida/SRX231866_1.fastq.gz /gpfs/data/cdunn/sequences/public/SRA/Aiptasia_pallida/SRX231866_2.fastq.gz --species "Aiptasia pallida" --ncbi_id "12923" --itis_id "52770" --library_type "transcriptome" --sequencer "Illumina PE" --note "Downloaded 3 runs from SRA, Accession SRX231866" --sample_prep " | "
agalma catalog insert -p /gpfs/data/cdunn/sequences/collaborators/cnidaria_paulyn/Alatina/Alatina_R1.fq.gz /gpfs/data/cdunn/sequences/collaborators/cnidaria_paulyn/Alatina/Alatina_R2.fq.gz -s 'Alatina alata' -n '1193083' -d '51451' -e '' -l '' -c '' -t '' -q 'Illumina HiSeq' --note 'ITIS ID for family Carybdeidae. This is a combination of 3 libraries: R3 (mature adult pedalium and tentacle); R54 (blastulae); and R56 (planulae)' -b 'transcriptome' --sample_prep ' | ' --id 'HISEQ-168-C3DEYACXX-8-ALATINA'
agalma catalog insert --id "HWI-ST625-54-C026EACXX-6-TTAGGC" --paths /gpfs/data/cdunn/sequences/sra/siphonophora/filtered/HWI-ST625-54-C026EACXX-6-TTAGGC_1.fastq /gpfs/data/cdunn/sequences/sra/siphonophora/filtered/HWI-ST625-54-C026EACXX-6-TTAGGC_2.fastq --species "Apolemia rubriversa" --itis_id "51421" --extraction_id "FEG355" --library_id "FEG355" --library_type "transcriptome" --sequencer "Illumina HiSeq 2000" --seq_center "Brown Genomics Core" --sample_prep "Invitrogen Dynabeads mRNA DIRECT kit ; 1 round & Trizol | Invitrogen Dynabeads mRNA Purification Kit ; 2 rounds | Illumina TruSeq RNA Sample Prep Kit"
agalma catalog insert --id "HWI-ST625-61-C02G3ACxx-6-GGCTAC" --paths /gpfs/data/cdunn/sequences/processed/Atolla_12May2012/Atolla.pairs.1.fastq.gz /gpfs/data/cdunn/sequences/processed/Atolla_12May2012/Atolla.pairs.2.fastq.gz --species "Atolla vanhoeffeni" --ncbi_id "86043" --itis_id "51562" --extraction_id "Atolla" --library_id "Atolla" --library_type "transcriptome" --sequencer "Illumina HiSeq 2000" --seq_center "Brown Genomics Core" --note "readPairs with 454 adapters removed with trimReads" --sample_prep "from Nathan Shaner | Shaner 454 | NEB Fragmentase | Illumina TruSeq RNA Sample Prep Kit (from end repair on)"
agalma catalog insert --id "HWI-ST625-54-C026EACXX-6-ACAGTG" --paths /gpfs/data/cdunn/sequences/sra/siphonophora/filtered/HWI-ST625-54-C026EACXX-6-ACAGTG_1.fastq /gpfs/data/cdunn/sequences/sra/siphonophora/filtered/HWI-ST625-54-C026EACXX-6-ACAGTG_2.fastq --species "Chelophyes appendiculata" --ncbi_id "316211" --itis_id "51272" --extraction_id "FEG351" --library_id "FEG351" --library_type "transcriptome" --sequencer "Illumina HiSeq 2000" --seq_center "Brown Genomics Core" --sample_prep "Trizol | Invitrogen Dynabeads mRNA Purification Kit ; 1 rounds | Illumina TruSeq RNA Sample Prep Kit"
agalma catalog insert --id "HWI-ST625-54-C026EACXX-6-GCCAAT" --paths /gpfs/data/cdunn/sequences/sra/siphonophora/filtered/HWI-ST625-54-C026EACXX-6-GCCAAT_1.fastq /gpfs/data/cdunn/sequences/sra/siphonophora/filtered/HWI-ST625-54-C026EACXX-6-GCCAAT_2.fastq --species "Chuniphyes multidentata" --ncbi_id "316200" --itis_id "51304" --extraction_id "FEG325" --library_id "FEG325" --library_type "transcriptome" --sequencer "Illumina HiSeq 2000" --seq_center "Brown Genomics Core" --sample_prep "Invitrogen Dynabeads mRNA DIRECT kit ; 1 round | Illumina TruSeq RNA Sample Prep Kit"
agalma catalog insert -p /gpfs/data/cdunn/sequences/public/dbEST/Clytia_hemisphaerica/postcluster/processed.nc.fasta -s 'Clytia hemisphaerica' -n '252671' -d '49583' -e '' -l '' -c '' -t '' -q '' --note 'Assembled EST from Cnidaria Tree of Life' -b 'transcriptome' --sample_prep ' | ' --id 'dbEST_CLYHEM'
agalma catalog insert --id "HWI-ST625-54-C026EACXX-6-CAGATC" --paths /gpfs/data/cdunn/sequences/sra/siphonophora/filtered/HWI-ST625-54-C026EACXX-6-CAGATC_1.fastq /gpfs/data/cdunn/sequences/sra/siphonophora/filtered/HWI-ST625-54-C026EACXX-6-CAGATC_2.fastq --species "Cordagalma sp" --itis_id "51393" --extraction_id "FEG328" --library_id "FEG328" --library_type "transcriptome" --sequencer "Illumina HiSeq 2000" --seq_center "Brown Genomics Core" --sample_prep "Invitrogen Dynabeads mRNA DIRECT kit ; 1 round | Illumina TruSeq RNA Sample Prep Kit"
agalma catalog insert --paths /gpfs/data/cdunn/sequences/collaborators/cnidaria_paulyn/Ectopleura_larynx/Ectopleura_R1.chast.fastq.gz /gpfs/data/cdunn/sequences/collaborators/cnidaria_paulyn/Ectopleura_larynx/Ectopleura_R2.chast.fastq.gz -s 'Ectopleura larynx' -n '264052' -d '719103' -e '' -l '' -c '' --id 'HWI-ST420-69-D0F2NACXX-3-ECTOPLEURA' -t '' -q 'Illumina HiSeq' --note 'Data generated in the lab of Paulyn Cartwright (Kansas)' -b 'transcriptome' --sample_prep ' | '
agalma catalog insert --id "HWI-ST625-54-C026EACXX-7-TAGCTT" --paths /gpfs/data/cdunn/sequences/sra/siphonophora/filtered/HWI-ST625-54-C026EACXX-7-TAGCTT_1.fastq /gpfs/data/cdunn/sequences/sra/siphonophora/filtered/HWI-ST625-54-C026EACXX-7-TAGCTT_2.fastq --species "Erenna richardi" --itis_id "51396" --extraction_id "FEG356" --library_id "FEG356" --library_type "transcriptome" --sequencer "Illumina HiSeq 2000" --seq_center "Brown Genomics Core" --sample_prep "Invitrogen Dynabeads mRNA DIRECT kit ; 1 round | Illumina TruSeq RNA Sample Prep Kit"
agalma catalog insert --id "HWI-ST625-54-C026EACXX-7-GGCTAC" --paths /gpfs/data/cdunn/sequences/sra/siphonophora/filtered/HWI-ST625-54-C026EACXX-7-GGCTAC_1.fastq /gpfs/data/cdunn/sequences/sra/siphonophora/filtered/HWI-ST625-54-C026EACXX-7-GGCTAC_2.fastq --species "Forskalia asymmetrica" --ncbi_id "316178" --itis_id "51417" --extraction_id "FEG357" --library_id "FEG357" --library_type "transcriptome" --sequencer "Illumina HiSeq 2000" --seq_center "Brown Genomics Core" --sample_prep "Invitrogen Dynabeads mRNA DIRECT kit ; 1 round | Illumina TruSeq RNA Sample Prep Kit"
agalma catalog insert --id "HWI-ST625-54-C026EACXX-8-ATCACG" --paths /gpfs/data/cdunn/sequences/sra/siphonophora/filtered/HWI-ST625-54-C026EACXX-8-ATCACG_1.fastq /gpfs/data/cdunn/sequences/sra/siphonophora/filtered/HWI-ST625-54-C026EACXX-8-ATCACG_2.fastq --species "Hippopodius hippopus" --ncbi_id "168745" --itis_id "51331" --extraction_id "FEG337" --library_id "FEG337" --library_type "transcriptome" --sequencer "Illumina HiSeq 2000" --seq_center "Brown Genomics Core" --sample_prep "Invitrogen Dynabeads mRNA DIRECT kit ; 1 round | Illumina TruSeq RNA Sample Prep Kit"
agalma catalog insert -p /gpfs/data/cdunn/sequences/public/ncbi/Hydra_magnipapillata/rna.fa -s 'Hydra magnipapillata' -n '6085' -d '50845' -e '' -l '' -c '' -t '' -q '' --note 'Gene predictions from genome sequencing' -b 'genome' --sample_prep ' | ' --id 'NCBI_HYDMAG'
agalma catalog insert -p /gpfs/data/cdunn/sequences/collaborators/cnidaria_paulyn/Hydractinia_symbiolongicarpus/Hydractinia_R1.fq.gz /gpfs/data/cdunn/sequences/collaborators/cnidaria_paulyn/Hydractinia_symbiolongicarpus/Hydractinia_R2.fq.gz -s 'Hydractinia symbiolongicarpus' -n '13093' -d '719085' -e '' -l '' -c '' -t '' -q 'Illumina HiSeq' --note 'Data generated in the lab of Paulyn Cartwright (Kansas)' -b 'transcriptome' --sample_prep ' | ' --id 'HISEQ-129-C25BFACXX-8-HYDRACTINIA'
agalma catalog insert --id "HWI-ST625-73-C0JUVACXX-7-ATCACG" --paths /gpfs/data/cdunn/sequences/sra/siphonophora/filtered/HWI-ST625-73-C0JUVACXX-7-ATCACG_1.fastq /gpfs/data/cdunn/sequences/sra/siphonophora/filtered/HWI-ST625-73-C0JUVACXX-7-ATCACG_2.fastq --species "Kephyes ovata" --ncbi_id "645392" --itis_id "718958" --extraction_id "FEG0367" --library_id "FEG0367" --library_type "transcriptome" --treatment "siphosome" --sequencer "Illumina HiSeq 2000" --seq_center "Brown Genomics Core" --sample_prep "Trizol | Illumina TruSeq RNA Sample Prep Kit RNA Purification Beads ; 2 rounds | Illumina TruSeq RNA Sample Prep Kit"
agalma catalog insert --id "HWI-ST625-54-C026EACXX-7-CGATGT" --paths /gpfs/data/cdunn/sequences/sra/siphonophora/filtered/HWI-ST625-54-C026EACXX-7-CGATGT_1.fastq /gpfs/data/cdunn/sequences/sra/siphonophora/filtered/HWI-ST625-54-C026EACXX-7-CGATGT_2.fastq --species "Lilyopsis fluoracantha" --ncbi_id "326734" --itis_id "51350" --extraction_id "FEG344" --library_id "FEG344" --library_type "transcriptome" --sequencer "Illumina HiSeq 2000" --seq_center "Brown Genomics Core" --sample_prep "Trizol | Invitrogen Dynabeads mRNA Purification Kit ; 1 rounds | Illumina TruSeq RNA Sample Prep Kit"
agalma catalog insert --id "HWI-ST625-54-C026EACXX-8-TTAGGC" --paths /gpfs/data/cdunn/sequences/sra/siphonophora/filtered/HWI-ST625-54-C026EACXX-8-TTAGGC_1.fastq /gpfs/data/cdunn/sequences/sra/siphonophora/filtered/HWI-ST625-54-C026EACXX-8-TTAGGC_2.fastq --species "Lychnagalma utricularia" --ncbi_id "338248" --itis_id "719187" --extraction_id "FEG358" --library_id "FEG358" --library_type "transcriptome" --sequencer "Illumina HiSeq 2000" --seq_center "Brown Genomics Core" --sample_prep "Invitrogen Dynabeads mRNA DIRECT kit ; 1 round & Trizol | Invitrogen Dynabeads mRNA Purification Kit ; 1 round | Illumina TruSeq RNA Sample Prep Kit"
agalma catalog insert --id "HWI-ST625-54-C026EACXX-7-TGACCA" --paths /gpfs/data/cdunn/sequences/sra/siphonophora/filtered/HWI-ST625-54-C026EACXX-7-TGACCA_1.fastq /gpfs/data/cdunn/sequences/sra/siphonophora/filtered/HWI-ST625-54-C026EACXX-7-TGACCA_2.fastq --species "Marrus claudanielis" --ncbi_id "338246" --itis_id "51390" --extraction_id "FEG359" --library_id "FEG359" --library_type "transcriptome" --sequencer "Illumina HiSeq 2000" --seq_center "Brown Genomics Core" --sample_prep "Trizol | Invitrogen Dynabeads mRNA Purification Kit ; 2 rounds | Illumina TruSeq RNA Sample Prep Kit"
agalma catalog insert -p /gpfs/data/cdunn/sequences/public/JGI_August2012/Nematostella_vectensis/Nemve_No_ribosomes_FilteredModels_NO_TABS.fas -s 'Nematostella vectensis' -n '45351' -d '52498' -e '' -l '' -c '' -t '' -q '' --note 'Filtered transcript predictions from JGI used in Nematostella paper (Rebecca et al).  See paper for details' -b 'genome' --sample_prep ' | ' --id 'JGI_NEMVEC'
agalma catalog insert --id "HWI-ST625-54-C026EACXX-8-ACAGTG" --paths /gpfs/data/cdunn/sequences/sra/siphonophora/filtered/HWI-ST625-54-C026EACXX-8-ACAGTG_1.fastq /gpfs/data/cdunn/sequences/sra/siphonophora/filtered/HWI-ST625-54-C026EACXX-8-ACAGTG_2.fastq --species "Physonect sp " --itis_id "718936" --extraction_id "FEG348" --library_id "FEG348" --library_type "transcriptome" --sequencer "Illumina HiSeq 2000" --seq_center "Brown Genomics Core" --sample_prep "Trizol | Invitrogen Dynabeads mRNA Purification Kit ; 1 rounds | Illumina TruSeq RNA Sample Prep Kit"
agalma catalog insert --id "HISEQ-134-C27MTACXX-2-PODOCORYNA" --paths /gpfs/data/cdunn/sequences/collaborators/cnidaria_paulyn/Podocoryna/Podocoryna_R1.fq.gz /gpfs/data/cdunn/sequences/collaborators/cnidaria_paulyn/Podocoryna/Podocoryna_R2.fq.gz -s 'Podocoryna carnea' -n '6096' -d '719298' -e '' -l '' -c '' -t '' -q 'Illumina HiSeq' --note "Combined Med1 and RP135 libraries from Paulyn's lab.  Med1 is medusa and RP135 is polyp with medusae buds at some developmental stage." -b 'transcriptome' --sample_prep ' | '
agalma catalog insert --id "HWI-ST625-54-C026EACXX-7-GATCAG" --paths /gpfs/data/cdunn/sequences/sra/siphonophora/filtered/HWI-ST625-54-C026EACXX-7-GATCAG_1.fastq /gpfs/data/cdunn/sequences/sra/siphonophora/filtered/HWI-ST625-54-C026EACXX-7-GATCAG_2.fastq --species "Prayidae D27SS7" --itis_id "51332" --extraction_id "FEG329" --library_id "FEG329" --library_type "transcriptome" --sequencer "Illumina HiSeq 2000" --seq_center "Brown Genomics Core" --note "undescribed species" --sample_prep "Invitrogen Dynabeads mRNA DIRECT kit ; 1 round | Illumina TruSeq RNA Sample Prep Kit"
agalma catalog insert -p /gpfs/data/cdunn/sequences/illumina/111012_SN625_0054_BC026EACXX-Freya-Goetz-filtered-new/FEG-354_CTTGTA_L007_R1_001.fastq.gz /gpfs/data/cdunn/sequences/illumina/111012_SN625_0054_BC026EACXX-Freya-Goetz-filtered-new/FEG-354_CTTGTA_L007_R2_001.fastq.gz -s 'Prayidae D27D2' -d '51332' -e 'FEG354' -l 'FEG354' -c 'Brown Genomics Core' -t '' -q 'Illumina HiSeq 2000' --note 'Original ID was Rosacea, but photos look like Craseoa' -b 'transcriptome' --sample_prep 'Invitrogen Dynabeads mRNA DIRECT kit ; 1 round | Illumina TruSeq RNA Sample Prep Kit' --id 'HWI-ST625-54-C026EACXX-7-CTTGTA'
agalma catalog insert --id "HWI-ST625-54-C026EACXX-8-GCCAAT" --paths /gpfs/data/cdunn/sequences/sra/siphonophora/filtered/HWI-ST625-54-C026EACXX-8-GCCAAT_1.fastq /gpfs/data/cdunn/sequences/sra/siphonophora/filtered/HWI-ST625-54-C026EACXX-8-GCCAAT_2.fastq --species "Resomia ornicephala" --ncbi_id "557396" --itis_id "718936" --extraction_id "FEG341" --library_id "FEG341" --library_type "transcriptome" --sequencer "Illumina HiSeq 2000" --seq_center "Brown Genomics Core" --sample_prep "Invitrogen Dynabeads mRNA DIRECT kit ; 1 round | Illumina TruSeq RNA Sample Prep Kit"
agalma catalog insert --id "HWI-ST625-54-C026EACXX-8-CAGATC" --paths /gpfs/data/cdunn/sequences/sra/siphonophora/filtered/HWI-ST625-54-C026EACXX-8-CAGATC_1.fastq /gpfs/data/cdunn/sequences/sra/siphonophora/filtered/HWI-ST625-54-C026EACXX-8-CAGATC_2.fastq --species "Rhizophysa filiformis" --ncbi_id "316187" --itis_id "51433" --extraction_id "FEG322" --library_id "FEG322" --library_type "transcriptome" --sequencer "Illumina HiSeq 2000" --seq_center "Brown Genomics Core" --sample_prep "Invitrogen Dynabeads mRNA DIRECT kit ; 1 round | Illumina TruSeq RNA Sample Prep Kit"
agalma catalog insert --id "HWI-ST625-54-C026EACXX-8-ACTTGA" --paths /gpfs/data/cdunn/sequences/sra/siphonophora/filtered/HWI-ST625-54-C026EACXX-8-ACTTGA_1.fastq /gpfs/data/cdunn/sequences/sra/siphonophora/filtered/HWI-ST625-54-C026EACXX-8-ACTTGA_2.fastq --species "Stephalia dilata" --ncbi_id "316222" --itis_id "51414" --extraction_id "FEG350" --library_id "FEG350" --library_type "transcriptome" --sequencer "Illumina HiSeq 2000" --seq_center "Brown Genomics Core" --sample_prep "Trizol | Invitrogen Dynabeads mRNA Purification Kit ; 2 rounds | Illumina TruSeq RNA Sample Prep Kit"
agalma catalog insert -p /gpfs/data/cdunn/illumina/CMN0027_CMN0038_Cat_Munro/CMN0036_CCGTCC_L005_R1_001.fastq.gz /gpfs/data/cdunn/illumina/CMN0027_CMN0038_Cat_Munro/CMN0036_CCGTCC_L005_R2_001.fastq.gz -s 'Apolemia lanosa' -n '1390099' -e 'CMN0036' -l 'CMN0036' -c 'Brown' -t 'NGZ, SGZ, post SGZ' -q 'Illumina HiSeq 2500' --note 'Extraction ID: CM43' -b 'transcriptome' --sample_prep 'Trizol | Illumina TruSeq Stranded'
agalma catalog insert -p /gpfs/data/cdunn/illumina/CMN0027_CMN0038_Cat_Munro/CMN0034_AGTTCC_L005_R1_001.fastq.gz /gpfs/data/cdunn/illumina/CMN0027_CMN0038_Cat_Munro/CMN0034_AGTTCC_L005_R2_001.fastq.gz -s 'Apolemia sp'  -d '51421' -e 'CMN0034' -l 'CMN0034' -c 'Brown' -t 'stem' -q 'Illumina HiSeq 2500' --note 'Extraction ID: CM41' -b 'transcriptome' --sample_prep 'Trizol | Illumina TruSeq Stranded'
agalma catalog insert -p /gpfs/data/cdunn/illumina/CMN0027_CMN0038_Cat_Munro/CMN0037_GTCCGC_L005_R1_001.fastq.gz /gpfs/data/cdunn/illumina/CMN0027_CMN0038_Cat_Munro/CMN0037_GTCCGC_L005_R2_001.fastq.gz -s 'Bargmannia amoena' -n '316197' -d '719188' -e 'CMN0037' -l 'CMN0037' -c 'Brown' -t 'SGZ and stem' -q 'Illumina HiSeq 2500' --note 'Extraction ID: CM44' -b 'transcriptome' --sample_prep 'Trizol | Illumina TruSeq Stranded'
agalma catalog insert -p /gpfs/data/cdunn/illumina/CMN0027_CMN0038_Cat_Munro/CMN0028_TGACCA_L005_R1_001.fastq.gz /gpfs/data/cdunn/illumina/CMN0027_CMN0038_Cat_Munro/CMN0028_TGACCA_L005_R2_001.fastq.gz -s 'Bargmannia lata' -d '719189' -e 'CMN0028' -l 'CMN0028' -c 'Brown' -t 'Mature gastrozooid with stem, and NGZ' -q 'Illumina HiSeq 2500' --note 'Extraction ID: CM28' -b 'transcriptome' --sample_prep 'Trizol | Illumina TruSeq Stranded'
agalma catalog insert -p /gpfs/data/cdunn/illumina/CNM0081_CNM0093_Cat_Munro/CNM0089_ATCACG_L002_R1_001.fastq.gz /gpfs/data/cdunn/illumina/CNM0081_CNM0093_Cat_Munro/CNM0089_ATCACG_L002_R2_001.fastq.gz -s 'Rudjakovia sp' -e 'CMN0089' -l 'CMN0089' -c 'Brown Genomics Core' -t 'piece of stem' -q 'Ilumina HiSeq' --note 'D494-D8 Rudjakovia #19, original ID CM91' -b 'transcriptome' --sample_prep 'Trizol | Illumina TruSeq Stranded mRNA'
agalma catalog insert -p /gpfs/data/cdunn/illumina/CNM0081_CNM0093_Cat_Munro/CNM0090_ACTTGA_L002_R1_001.fastq.gz /gpfs/data/cdunn/illumina/CNM0081_CNM0093_Cat_Munro/CNM0090_ACTTGA_L002_R2_001.fastq.gz -s 'Thermopalia sp' -e 'CMN0090' -l 'CMN0090' -c 'Brown Genomics Core' -t 'siphosome' -q 'Ilumina HiSeq' --note 'extraction ID CM92' -b 'transcriptome' --sample_prep 'Trizol | Illumina TruSeq Stranded mRNA'
agalma catalog insert -p /gpfs/data/cdunn/illumina/CNM0081_CNM0093_Cat_Munro/CNM0091_TAGCTT_L002_R1_001.fastq.gz /gpfs/data/cdunn/illumina/CNM0081_CNM0093_Cat_Munro/CNM0091_TAGCTT_L002_R2_001.fastq.gz -s 'Physophora gilmeri' -e 'CMN0091' -l 'CMN0091' -c 'Brown Genomics Core' -t 'nectosomal and siphosomal growth zone' -q 'Ilumina HiSeq' --note 'extraction ID CM93' -b 'transcriptome' --sample_prep 'Trizol | Illumina TruSeq Stranded mRNA'
agalma catalog insert -p /gpfs/data/cdunn/illumina/CNM0081_CNM0093_Cat_Munro/CNM0092_GGCTAC_L002_R1_001.fastq.gz /gpfs/data/cdunn/illumina/CNM0081_CNM0093_Cat_Munro/CNM0092_GGCTAC_L002_R2_001.fastq.gz -s 'Halistemma rubrum' -n '316183' -d '51400' -e 'CMN0092' -l 'CMN0092' -c 'Brown Genomics Core' -t 'nectosomal and siphosomal growth zone' -q 'Ilumina HiSeq' --note 'extraction ID CM94' -b 'transcriptome' --sample_prep 'Trizol | Illumina TruSeq Stranded mRNA'
agalma catalog insert -p /gpfs/data/cdunn/illumina/CNM0081_CNM0093_Cat_Munro/CNM0093_CTTGTA_L002_R1_001.fastq.gz /gpfs/data/cdunn/illumina/CNM0081_CNM0093_Cat_Munro/CNM0093_CTTGTA_L002_R2_001.fastq.gz -s 'Athorybia rosacea' -n '316173' -d '51428' -e 'CMN0093' -l 'CMN0093' -c 'Brown Genomics Core' -t 'whole' -q 'Ilumina HiSeq' --note 'extraction ID CM97' -b 'transcriptome' --sample_prep 'Trizol | Illumina TruSeq Stranded mRNA'
