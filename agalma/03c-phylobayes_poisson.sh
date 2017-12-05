#!/bin/bash
#SBATCH -J BayesianAnalysis_chain
#SBATCH --nodes=8-8
#SBATCH --ntasks-per-node=8
#SBATCH -t 12-00:00:00
#SBATCH --qos=epscor-condo
#SBATCH --mail-user=catriona_munro@brown.edu
#SBATCH -n 64
#SBATCH --mem=60G
#SBATCH -o chain4-trimmed_poisson.out
#SBATCH -e chain4-trimmed_poisson.out

set -e

module load phylobayes/1.7b-mpi

#change chain number to run any number of chains (I ran 4)

srun pb_mpi -d /gpfs/data/cdunn/cmunro/siphonophore_phylogeny_2017/agalma/Outfiles/alignment.phy -cat -poisson chain4_trimmed60_poisson


