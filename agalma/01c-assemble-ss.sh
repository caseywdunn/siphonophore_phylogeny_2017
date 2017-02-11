#!/bin/bash
#SBATCH -t 24:00:00
#SBATCH -c 20
#SBATCH --mem=120G
#SBATCH -C intel
#SBATCH --array=1-5

set -e

module load trinity/2.2.0

export AGALMA_DB="/gpfs/data/cdunn/analyses/agalma-siphonophora-20170209.sqlite"
export BIOLITE_RESOURCES="threads=${SLURM_CPUS_ON_NODE},memory=${SLURM_MEM_PER_NODE}M"

IDS=(
	HWI-ST625-159-C4MVCACXX-5-CGATGT
	HWI-ST625-159-C4MVCACXX-5-CCGTCC
	HWI-ST625-159-C4MVCACXX-5-AGTTCC
	HWI-ST625-159-C4MVCACXX-5-GTCCGC
	HWI-ST625-159-C4MVCACXX-5-TGACCA
)

ID=${IDS[$SLURM_ARRAY_TASK_ID-1]}
echo $ID

mkdir -p $ID
cd $ID

agalma insert_size --id $ID --ss RF
agalma rrna --id $ID --ss RF
agalma assemble --id $ID --ss RF
agalma translate --id $ID
