#!/bin/bash
#SBATCH -J BayesianAnalysis_chain1
#SBATCH --nodes=8-8
#SBATCH --ntasks-per-node=8
#SBATCH -t 6-00:00:00
#SBATCH --qos=epscor-condo
#SBATCH --mail-user=catriona_munro@brown.edu
#SBATCH -n 64
#SBATCH --mem=60G
#SBATCH -o chain2-trimmed60.out
#SBATCH -e chain2-trimmed60.out

set -e

module load phylobayes/1.7b-mpi

#change chain number to run any number of chains (I ran 2)

srun pb_mpi -d /gpfs/data/cdunn/cmunro/siphonophore_phylogeny_2017/agalma/SiphonophoraTree_reduced/speciestree-127/alignment.phy -cat -gtr chain2_trimmed60


