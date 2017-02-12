#!/bin/bash
#SBATCH -t 24:00:00
#SBATCH -N 8
#SBATCH -c 16
#SBATCH --mem=60G
#SBATCH -C intel

set -e

export AGALMA_DB="/gpfs/data/cdunn/analyses/agalma-siphonophora-20170209.sqlite"
export BIOLITE_RESOURCES="threads=${SLURM_CPUS_ON_NODE},memory=${SLURM_MEM_PER_NODE}M"
export BIOLITE_HOSTLIST=$(hostlist -e -s, $SLURM_NODELIST)
export BIOLITE_TOOLS="raxml-pthreads=raxmlHPC-PTHREADS"

ID=SiphonophoraTree

mkdir -p $ID
cd $ID

agalma homologize --id $ID
agalma multalign --id $ID
agalma genetree --id $ID
agalma treeinform --id $ID
