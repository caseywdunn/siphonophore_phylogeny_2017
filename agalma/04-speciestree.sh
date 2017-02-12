#!/bin/bash
#SBATCH -t 48:00:00
#SBATCH -c 20
#SBATCH --mem=120G
#SBATCH -C intel

set -e

export AGALMA_DB="/gpfs/data/cdunn/analyses/agalma-siphonophora-20170209.sqlite"
export BIOLITE_RESOURCES="threads=${SLURM_CPUS_ON_NODE},memory=${SLURM_MEM_PER_NODE}M"
export BIOLITE_TOOLS="raxml-pthreads=/gpfs/runtime/opt/raxml/8.2.0/avx/bin/raxmlHPC-PTHREADS"

ID=SiphonophoraTree
SEED=87167481239

mkdir -p $ID
cd $ID

agalma speciestree --id $ID --outgroup Nematostella_vectensis --bootstrap 100 --seed $SEED
